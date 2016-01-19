<?php
class Users_model extends CI_Model {
  public function __construct() {
    $this->load->database();
  }
  
  public function updateSession() {	
	$query = $this->db->query("SELECT ban, is_kick, lvl, id_users_types, users_types.name AS rank
							  FROM users
							  JOIN users_types ON users_types.id = id_users_types
							  JOIN charactere ON users.id_charactere = charactere.id
							  WHERE users.id = ?", array($this->user->getId()));
    $user = $query->result_array();
	
	$this->user->hydrate($user[0]);
	$this->user->setAuthenticated(true);
	
	$query = $this->db->query("SELECT position_city AS positionCity, in_city AS inCity, lvl, berry, id_objects AS weapon, x, y, id_objects_1 AS armor
							  FROM charactere
							  JOIN users ON users.id_charactere = charactere.id
							  WHERE users.id = ?", array($this->user->getId()));
	$character = $query->result_array()[0];
	$this->character->hydrate($character);
	
	//Update last action
	$this->db->where('id', $this->user->getId())
				  ->set('last_action', time())
				  ->update('users');
  }
  
  public function getEmail() {
	$query = $this->db->query("SELECT email FROM users WHERE id = ?", array($this->user->getId()));
	return $query->result_array()[0]['email'];
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
    $query = $this->db->query("SELECT users.pseudo, users.ban, users.messNumber, users_types.name AS rank, lvl,
    							crews.name AS crewName, crews_grades.name AS crewGrade, crews.id AS crewId, registration, last_action, faction.name AS facName
                                FROM users
                                JOIN users_types ON users_types.id = users.id_users_types
    							LEFT JOIN crews_users ON crews_users.id_users = users.id
    							LEFT JOIN crews ON crews.id = crews_users.id
    							LEFT JOIN crews_grades ON crews_grades.id = crews_users.id_crews_grades
								JOIN faction ON users.id_faction = faction.id
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
			  ->where('users.id_users_types >', 9)
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
    else if($nbEmail > 0)
    	return -1;
	  
	$berry = 100;
	$faction = $this->input->post('faction');
	if($this->input->post('faction') == "aleatoire") {
	  $berry += 1000;
	  //marine
	  $faction = 2;
	}
	
	$data = array(
	  'position_city' => 1,
	  'in_city' => 1,
	  'lvl' => 1,
	  'berry' => $berry,
	  'id_objects' => NULL,
	  'x' => 1,
	  'y' => 1,
	  'id_objects_1' => NULL
	);
	$this->db->insert('charactere', $data);
	
	$idCharactere = $this->db->insert_id();
	
	//$data = array(
	  
	//)
	
    $password_hash = password_hash($this->input->post('password'), PASSWORD_BCRYPT);
    $data = array(
        'pseudo' => $this->input->post('pseudo'),
        'password' => $password_hash,
        'registration' => time(),
        'email' => $this->input->post('email'),
        'id_users_types' => 1,
		'id_charactere' => $idCharactere,
		'id_faction' => $faction
    );
     $this->db->insert('users', $data);
	 return $idCharactere;
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
	//if player ban
	$isBan = $this->db->where('pseudo', $pseudo)
				  ->where('ban', 1)
				  ->count_all_results('users');
	if($isBan == 1)
	  return -2;	

	
	$query = $this->db->query("SELECT password FROM users WHERE pseudo = ?", array($pseudo));
					  
    if($query->num_rows() == 1) {
	  $res = $query->result_array();
	  if(password_verify($password, $res[0]['password']))
	  {
		$this->db->where('pseudo', $pseudo)
				  ->set('ip', $_SERVER["REMOTE_ADDR"])
				  ->update('users');
		return 1;
	  }
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
      $query = $this->db->query("SELECT users.id, ban, pseudo, email, sexe, is_kick AS isKick,
							  lvl, id_objects, id_users_types AS idUsersTypes, users_types.name AS rank, id_faction AS faction, faction.name AS factionName
							  FROM users
							  JOIN charactere ON users.id_charactere = charactere.id
							  JOIN users_types ON users_types.id = id_users_types
							  JOIN faction ON users.id_faction = faction.id
							  WHERE pseudo = ?", array($pseudo));
      $user = $query->result_array();
	     $query = $this->db->query("SELECT crews.name AS name, crews.id AS id, crews_grades.name as rank
							  FROM crews_users
							  JOIN users ON crews_users.id_users = users.id
							  JOIN crews ON crews_users.id = crews.id
							  JOIN crews_grades ON crews_users.id_crews_grades = crews_grades.id
							  WHERE users.id = ?", array($user[0]['id']));
	   $crew = $query->result_array();
	   if(!$user[0]['ban'] && !$user[0]['isKick']){
	     $this->user->hydrate($user[0]);
	     $this->crew->hydrate($crew[0]);
	     //$this->user->hydrate($user[1]);
	     $this->user->setAuthenticated(true);
	   }
	   
	   $query = $this->db->query("SELECT charactere.id, position_city AS positionCity, in_city AS inCity, lvl, berry,avatar, id_objects AS weapon, x, y, id_objects_1 AS armor
							  FROM charactere
							  JOIN users ON users.id_charactere = charactere.id
							  WHERE users.id = ?", array($this->user->getId()));
	  $character = $query->result_array()[0];
	  $this->character->hydrate($character);

      $data = array(
        'last_action' => time()
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
  	
  	return $this->db->select('users.id, pseudo, lvl, last_action, users_types.name')
  	->from('users')
	->join('users_types', 'users.id_users_types = users_types.id')
	->where('last_action >', time() - 3600)
  	->order_by('last_action', 'desc')
  	->get()
  	->result();
  }

  public function listVisitor() {
  	return $this->db->where('idUser', 0)
            ->count_all_results('ci_sessions');
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
	
//	$blabla = array('hair' => 'blabla.png');
  //  $json = json_encode($blabla)
	$sexe = $this->input->post('sexe');
	$body = $this->input->post('body');
	$hair = $this->input->post('hair');
	$eyes = $this->input->post('eyes');
	$mouth = $this->input->post('mouth');
	$couleur = $this->input->post('couleur');
	$pseudo = $this->input->post('pseudo');
	
	if($couleur == "0")
	  $couleur = "noir";
	
	if($sexe=='Homme') {
	  $urlBody = 'assets/img/avatars/man/body/' . $body . '.png';
	  $urlEyes = 'assets/img/avatars/man/eyes/' . $eyes . '.png';
	  $urlMouths = 'assets/img/avatars/mouths/' . $mouth . '.png';
	  $urlHair = 'assets/img/avatars/man/hair/'.$couleur.'/'. $hair . '.png';
		
	} else {
	  
		$urlBody = 'assets/img/avatars/woman/body/' . $body . '.png';
		$urlEyes = 'assets/img/avatars/woman/eyes/' . $eyes . '.png';
		$urlMouths = 'assets/img/avatars/mouths/' . $mouth . '.png';
		$urlHair = 'assets/img/avatars/woman/hair/'.$couleur.'/'. $hair . '.png';
	}
	
	$avatar = array('sexe' => $sexe,
					'body' => $urlBody,
					'eyes' => $urlEyes,
					'mouths' => $urlMouths,
					'hair' => $urlHair
					);	
	$serializeAvatar = serialize($avatar);
	$data = array('avatar'=>$serializeAvatar);
	$this->db->where('id', $id)
			  ->update('charactere', $data);
			  
	
	switch($couleur) {
		case 'blanc':
			$cheveux_bugs = array(5, 7, 19, 28, 30, 36);
			break;
				
		case 'bleu':
			$cheveux_bugs = array(10, 14, 25, 26, 32, 34);
			break;
					
		case 'jaune':
			$cheveux_bugs = array(1, 8, 12, 21, 29, 36);
			break;
				
		case 'marron':
			$cheveux_bugs = array(12, 15, 23, 25, 34, 36);
			break;
					
		case 'noir':
			$cheveux_bugs = array(6, 7, 8, 21, 34, 35);
			break;
					
		case 'orange':
			$cheveux_bugs = array(6, 14, 19, 21, 29);
			break;
					
		case 'rose':
			$cheveux_bugs = array(1, 6, 14, 22, 25, 34);
			break;
					
		case 'rouge':
			$cheveux_bugs = array(11, 18, 19, 24, 27);
			break;
					
		case 'vert':
			$cheveux_bugs = array(5, 8, 15 ,19, 30, 31);
			break;
					
		default:
			$cheveux_bugs = array(6, 7, 8, 21, 34, 35);
			break;
	}
	
	$methode = 1;
	if(in_array($hair, $cheveux_bugs)) {
		$methode = 2;
	}
			  
	$this->merge_images($urlBody, $urlEyes, $urlMouths, $urlHair, 'assets/img/avatarsJoueurs/' . $id . '.png', $methode);
	
  }
  
  function merge_images($filename_a, $filename_b, $filename_c, $filename_d, $filename_result, $methode) {
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
	 
	 if($methode == 1) {
		imagecopy($image, $image_d, 0, 0, 0, 0, $width, $height);
	 } else if($methode == 2) {
		imagecopymerge($image, $image_d, 0, 0, 0, 0, $width, $height, 100);
	 }
	 
	 
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
  	bin2hex(random_bytes(150));
  	
  }
  
 public function ban($id=0)
 {
	if($id == 0 || !$this->user->isModo())
	  return false;
  
	$this->db->where('id', $id)
		->set('ban', 1)
		->set('id_users_types', 0)
		->update('users');
	
	return true;
 }
 public function unban($id=0)
 {
	if($id == 0 || !$this->user->isModo())
	  return false;
  
	$this->db->where('id', $id)
		->set('ban', 0)
		->set('id_users_types', 1)
		->update('users');
	
	return true;
 }
 
	//Search for users that verify pattern
	public function search_user($pattern) {
		$query = $this->db->select('users.id, users.pseudo, users.registration, users_types.name AS rank')
			  ->from('users')
			  ->join('users_types', 'users.id_users_types = users_types.id')
			  ->where('users.pseudo REGEXP', '^'.$pattern)
			  ->order_by('users.id ASC')
			  ->get();
		return $query->result_array();
	}

}