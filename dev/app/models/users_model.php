<?php
class Users_model extends CI_Model {
  public function __construct() {
    $this->load->database();
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
    if($id == 0) {
        $query = $this->db->get('users');
        return $query->result_array();
    }
        //Selection of all useful information to display on the member's profile
    $query = $this->db->query("SELECT users.pseudo, users_types.name AS rank, levels.number AS lvl, COUNT(news.id) AS nb_news, COUNT(forums_topics_messages.id) AS nb_mess_forum
                                FROM users JOIN news ON news.id_users = users.id
                                JOIN levels ON levels.id = users.id_levels 
                                JOIN users_types ON users_types.id = users.id_users_types
                                JOIN forums_topics_messages ON forums_topics_messages.id_users = users.id
                                WHERE users.id = ?", array($id));
    //Returns array with member information
    return $query->row_array();
  }
  
  public function set_user() {
    $password_hash = hash('sha512', SALT . $this->input->post('password'));
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
      $query = $this->db->query("SELECT * FROM users WHERE pseudo = ?", array($pseudo));
      return $query->num_rows();
  }
  
  public function validate_connexion($pseudo, $password) {
    $password_hash = hash('sha512', SALT . $password);
    $query = $this->db->query("SELECT * FROM users WHERE pseudo = ? AND password = ?", array($pseudo, $password_hash));
    
    if($query->num_rows() == 1) {
      return TRUE;
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
    $query = $this->db->query("SELECT users.id, ban, pseudo, email, birthday, sexe, password, is_kick, id_personnages, id_levels, id_objects, id_users_types, users_types.name AS rank FROM users JOIN users_types ON users_types.id = id_users_types WHERE pseudo = ?", array($pseudo));
    $user = $query->result_array();
    $this->session->set_userdata('user_data', $user[0]);
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
  
  public function is_connected() {
    $session = $this->session->all_userdata();
    if(isset($session['user_data']) && $session['user_data']) {
      return TRUE;
    }
    return FALSE;
  }

  public function is_moderator() {
    $session = $this->session->all_userdata();
    if(isset($session['user_data']) && $session['user_data']) {
      if($session['user_data']['rank'] == "Mod�rateur")
        return TRUE;
    }
    return FALSE;
  }

  public function is_admin() {
    $session = $this->session->all_userdata();
    if(isset($session['user_data']) && $session['user_data']) {
        if($session['user_data']['rank'] == "Administrateur")
        return TRUE;
    }
    return FALSE;
  }
}