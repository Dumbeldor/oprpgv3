<?php
class Users_model extends CI_Model {
  public function __construct() {
    $this->load->database();
  }
  
  public function updateSession() {	
	$query = $this->db->query("SELECT ban, is_kick, lvl, id_objects, id_users_types, users_types.name AS rank,
							  crews.name AS crewName, crews.id AS crewId, crews_grades.name as crewRank
							  FROM users
							  JOIN users_types ON users_types.id = id_users_types
							  LEFT JOIN crews_users ON users.id = crews_users.id_users
							  LEFT JOIN crews ON crews_users.id = crews.id
							  LEFT JOIN crews_grades ON crews_users.id_crews_grades = crews_grades.id
							  WHERE users.id = ?", array($this->user->getId()));
    $user = $query->result_array();
	
	if(!$user[0]['ban'] && !$user[0]['is_kick']){
	  $this->user->hydrate($user[0]);
	  $this->user->setAuthenticated(true);
	}
	else{ //If player is ban or kick
	  $this->user->logout();
	  redirect('home/accueil');
	}
  }
  
  
  /*public function get_users($id = 0) {
    if($id === 0) {
      $query = $this->db->get('users');
      return $query->result_array();
    }
    $query = $this->db->get_where('users', array('id' => $id));
    return $query->row_array();
  } */
  
    /* Returns information on the member */
	/* $id is the id of the selected member */
  public function view_user($id = 0) {
        //Selection of all useful information to display on the member's profile
    $query = $this->db->query("SELECT users.pseudo, users.messNumber, users_types.name AS rank, lvl,
    							crews.name AS crewName, crews_grades.name AS crewGrade, crews.id AS crewId, registration, last_connection
                                FROM users
                                JOIN users_types ON users_types.id = users.id_users_types
    							LEFT JOIN crews_users ON crews_users.id_users = users.id
    							LEFT JOIN crews ON crews.id = crews_users.id
    							LEFT JOIN crews_grades ON crews_grades.id = crews_users.id_crews_grades
                                WHERE users.id = ?", array($id));
    //Returns array with member information
    return $query->row_array();
  }
  
  public function annuaire($nb = 5, $debut = 0) {
	$query = $this->db->limit($nb, $debut)
			->select('users.id, pseudo, registration, is_kick, users_types.name AS rank')
      ->join('users_types', 'users.id_users_types = users_types.id')
      ->order_by('users.id')
			->get('users');
        return $query->result_array();
  }
  
  public function staff() {
	$query = $this->db->select('users.id, pseudo, users_types.name, users_types.id AS idRanks')
			  ->from('users')
			  ->join('users_types', 'users.id_users_types = users_types.id')
			  ->where('users.id_users_types >', 15)
			  ->order_by('users.id_users_types DESC')
			  ->get();
	return $query->result_array();
  }
  
  public function set_user() {
  	$nbUser = $this->db->where('pseudo', $this->input->post('pseudo'))
            	->count_all_results('users');
    $nbEmail = $this->db->where('email', $this->input->post('email'))
            	->count_all_results('users');
    if($nbUser > 0)
    	return 0;
    if($nbEmail > 0)
    	return -1;
    $password_hash = password_hash($this->input->post('password'), PASSWORD_BCRYPT);
    $data = array(
        'pseudo' => $this->input->post('pseudo'),
        'lvl' => 1,
        'password' => $password_hash,
        'registration' => time(),
        'email' => $this->input->post('email'),
        'id_objects' => 1,
        'id_users_types' => 1,
    );
     $this->db->insert('users', $data);
	 return $this->db->insert_id();
  }
  
    /**
     * 
     * Know if username is passed as a parameter
     * Returns true if the username exists
     * ----------------------------------------------------------------------- */
  public function exist($pseudo) {
      $query = $this->db->query("SELECT id FROM users WHERE pseudo = ?", array($pseudo));
      return $query->num_rows();
  }
  
  public function validate_connexion($pseudo, $password) {
	//If the player is inactive for 10 mn
	$this->db->query("DELETE ci_sessions FROM ci_sessions
			JOIN users ON ci_sessions.idUser = users.id
			WHERE timestamp < ".time()."-600
			AND pseudo = ?", array($pseudo));

					  
	$nbCo = $this->db->join('users', 'ci_sessions.idUser = users.id')
						  ->where('pseudo', $pseudo)
						  ->count_all_results('ci_sessions');	
	if($nbCo > 0) {
	  $userAlreadyCo = true;
	  return -1;
	}
	
	$query = $this->db->query("SELECT * FROM users WHERE pseudo = ?", array($pseudo));
					  
    if($query->num_rows() == 1) {
	  $res = $query->result_array();
	  if(password_verify($password, $res[0]['password']))
		return 1;
	  else
		return 0;
    }
    else {
      return 0;
    }
  }
  
    /**
     * 
     * Allows for the id of the nickname as a parameter.
     * Returns id
     * ----------------------------------------------------------------------- */
  public function idPseudo($pseudo) {
      $query = $this->db->query("SELECT id FROM users WHERE pseudo = ?", array($pseudo));
      $id = $query->row_array();
      return $id['id'];
  }
  
  public function pseudoFromId($id) {
      $query = $this->db->query("SELECT pseudo FROM users WHERE id = ?", array($id));
      $pseudo = $query->row_array();
      return $pseudo['pseudo'];
  }
  
  public function setup_connexion($pseudo) {
      $query = $this->db->query("SELECT users.id, ban, pseudo, email, birthday, sexe, is_kick,
							  lvl, id_objects, id_users_types, users_types.name AS rank
							  FROM users
							  JOIN users_types ON users_types.id = id_users_types
							  WHERE pseudo = ?", array($pseudo));
      $user = $query->result_array();
	     $query = $this->db->query("SELECT crews.name AS crewName, crews.id AS crewId, crews_grades.name as crewRank
							  FROM crews_users
							  JOIN users ON crews_users.id_users = users.id
							  JOIN crews ON crews_users.id = crews.id
							  JOIN crews_grades ON crews_users.id_crews_grades = crews_grades.id
							  WHERE users.id = ?", array($user[0]['id']));
	   $crew = $query->result_array();
	   if(!$user[0]['ban'] && !$user[0]['is_kick']){
	     $this->user->hydrate($user[0]);
	     $this->user->hydrate($crew[0]);
	     //$this->user->hydrate($user[1]);
	     $this->user->setAuthenticated(true);
	   }

      $data = array(
        'last_connection' => time()
      );
      $this->db->where('pseudo', $pseudo)
         ->update('users', $data);
  }

  /*
  * Count The number of private messages
  */
  public function amountMP($id) {
    return (int) $this->db->where('id_user', $id)
    					  ->where('is_read', 0)
            ->count_all_results('privates_messages_appartenance');
  }
  
  /*
   * Returns a list of connected players
   */
  public function listCo() {
  	//If the player is inactive for one hour
  	$this->db->delete('ci_sessions', array('timestamp <' => time() - 3600));
  	
  	return $this->db->select('ci_sessions.idUser, users.id, users.pseudo, lvl, timestamp, users_types.name')
  	->from('ci_sessions')
  	->join('users', 'ci_sessions.idUser = users.id')
	->join('users_types', 'users.id_users_types = users_types.id')
  	->order_by('timestamp', 'desc')
  	->get()
  	->result();
  }
  
  public function countUsers() {
	$query = $this->db->query('SELECT COUNT(*) AS nb
				FROM users');
		return $query->result_array()[0]['nb'];
  }
  
  public function avatarRegistration($sex) {
	if($sex == "men") {
	  return $this->db->select('eyes.id AS eyes, nose.id AS nose, body.id AS body, hair.id AS hair, mouths.id AS mouth')
				  ->from('eyes, nose, body, hair, mouths')
				  ->get()
				  ->result();
	} else {
	  return $this->db->select('eyes.id AS eyes, nose.id AS nose, body.id AS body, hair.id AS hair, mouths.id AS mouth')
				  ->from('eyes, nose, body, hair, mouths')
				  ->get()
				  ->result();
	}
  }
  
  public function create_avatar($id) {
	$sexe = $this->input->post('sexe');
	$body = $this->input->post('body');
	$hair = $this->input->post('hair');
	$eyes = $this->input->post('eyes');
	$mouth = $this->input->post('mouth');
	
	if($sexe=='Homme') {
		$this->merge_images('assets/img/avatars/man/body/' . $body . '.png', 'assets/img/avatars/man/hair/' . $hair . '.png',
		'assets/img/avatars/eyes/' . $eyes . '.png', 'assets/img/avatars/mouths/' . $mouth . '.png', 
		'assets/img/avatarsJoueurs/' . $id . '.png');
	} else {
		$this->merge_images('assets/img/avatars/woman/body/' . $body . '.png', 'assets/img/avatars/woman/hair/' . $hair . '.png',
		'assets/img/avatars/eyes/' . $eyes . '.png', 'assets/img/avatars/mouths/' . $mouth . '.png', 
		'assets/img/avatarsJoueurs/' . $id . '.png');
	}
  }
  
  function merge_images($filename_a, $filename_b, $filename_c, $filename_d, $filename_result) {
	// Get dimensions for specified images

	 list($width, $height) = getimagesize($filename_a);

	 // Create new image with desired dimensions

	 $image = imagecreatetruecolor($width, $height);
	 $white = imagecolorallocate($image, 255, 255, 255);
	 imagefill($image, 0, 0, $white);
	 
	 // Load images and then copy to destination image
	 $image_a = imagecreatefrompng($filename_a);
	 $image_b = imagecreatefrompng($filename_b);
	 $image_c = imagecreatefrompng($filename_c);
	 $image_d = imagecreatefrompng($filename_d);

	 imagecopy($image, $image_a, 0, 0, 0, 0, $width, $height);
	 imagecopy($image, $image_b, 0, 0, 0, 0, $width, $height);
	 imagecopy($image, $image_c, 0, 0, 0, 0, $width, $height);
	 imagecopy($image, $image_d, 0, 0, 0, 0, $width, $height);

	 // Save the resulting image to disk (as PNG)

	 imagepng($image, $filename_result);

	 // Clean up

	 imagedestroy($image);
	 imagedestroy($image_a);
	 imagedestroy($image_b);
	 imagedestroy($image_c);
	 imagedestroy($image_d);
  }

  public function emailExist() {
  	 $nbEmail = $this->db->where('email', $this->input->post('email'))
            	->count_all_results('users');
     if($nbEmail == 1)
     	return true;
     return false;
  }

  //Send url for reset mdp
  public function sendTookenLostPass() {
  	//bin2hex(random_bytes(150));
  	
  }

}