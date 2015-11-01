<?php
class Users_model extends CI_Model {
  public function __construct() {
    $this->load->database();
  }
  
  public function updateSession() {	
	$query = $this->db->query("SELECT ban, is_kick, id_levels, id_objects, id_users_types, users_types.name AS rank,
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
    $query = $this->db->query("SELECT users.pseudo, users.messNumber, users_types.name AS rank, levels.number AS lvl,
    							crews.name AS crewName, crews_grades.name AS crewGrade, crews.id AS crewId
                                FROM users
                                JOIN levels ON levels.id = users.id_levels 
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
			->select('users.id, pseudo, is_kick, id_levels')
			->get('users');
        return $query->result_array();
  }
  
  public function staff() {
	$query = $this->db->select('users.id, pseudo, users_types.name, users_types.id AS idRanks')
			  ->from('users')
			  ->join('users_types', 'users.id_users_types = users_types.id')
			  ->where('users.id_users_types >', 1)
			  ->order_by('users.id_users_types DESC')
			  ->get();
	return $query->result_array();
  }
  
  public function set_user() {
    $password_hash = password_hash($this->input->post('password'), PASSWORD_BCRYPT);
    $data = array(
        'pseudo' => $this->input->post('pseudo'),
        'password' => $password_hash,
        'email' => $this->input->post('email'),
        'id_personnages' => $this->input->post('perso'),
        'id_levels' => 1,
        'id_objects' => 1,
        'id_users_types' => 1,
    );
     $this->db->insert('users', $data);
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
    $query = $this->db->query("SELECT * FROM users WHERE pseudo = ?", array($pseudo));
    
    if($query->num_rows() == 1) {
	  $res = $query->result_array();
	  if(password_verify($password, $res[0]['password']))
		return TRUE;
	  else
		return FALSE;
    }
    else {
      return FALSE;
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
  
  public function setup_connexion($pseudo) {
    $query = $this->db->query("SELECT users.id, ban, pseudo, email, birthday, sexe, is_kick, id_personnages,
							  id_levels, id_objects, id_users_types, users_types.name AS rank
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
  }

  /*
  * Count The number of private messages
  */
  public function amountMP($id) {
    return (int) $this->db->where('id_users_1', $id)
    					  ->where('is_read', 0)
    					  ->where('is_trash', 0)
            ->count_all_results('privates_messages');
    return $nb_resultat;
  }
  
  /*
   * Returns a list of connected players
   */
  public function listCo() {
  	//If the player is inactive for one hour
  	$this->db->delete('sessions', array('last_activity <' => time() - 7200)); 	
  	
  	return $this->db->select('sessions.id_user, users.id, users.pseudo, levels.number AS lvl, last_activity')
  	->from('sessions')
  	->join('users', 'sessions.id_user = users.id')
  	->join('levels', 'levels.id = users.id_levels')
  	->order_by('last_activity', 'desc')
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

}