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
  
  public function view_user($id = 0) {
    if($id == 0) {
        $query = $this->db->get('users');
        return $query->result_array();
    }
    $query = $this->db->query("SELECT users.pseudo, users_types.name AS ranks, levels.number AS lvl, personnages.name AS perso_name, personnages.firstname AS perso_firstname, COUNT(news.id) AS nb_news, COUNT(forums_topics_messages.id) AS nb_mess_forum
                                FROM users JOIN news ON news.id_users = users.id
                                JOIN personnages ON personnages.id = users.id_personnages 
                                JOIN levels ON levels.id = users.id_levels 
                                JOIN users_types ON users_types.id = users.id_users_types
                                JOIN forums_topics_messages ON forums_topics_messages.id_users = users.id
                                WHERE users.id = ?", array($id));
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
    return $this->db->insert('users', $data);
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
  
  public function setup_connexion($pseudo) {
    $query = $this->db->query("SELECT users.id, ban, pseudo, email, birthday, sexe, password, is_kick, id_personnages, id_levels, id_objects, id_users_types, users_types.name AS rank FROM users JOIN users_types ON users_types.id = id_users_types WHERE pseudo = ?", array($pseudo));
    $user = $query->result_array();
    $this->session->set_userdata('user_data', $user[0]);
  }

  /*
  * Compter le nombre de MP
  */
  public function amountMP($id) {
    /*$query = $this->db->query("SELECT COUNT(pmess_id) as nb FROM privates_messages WHERE id = ?", array($id));
    $amount = $query->result_array();
    $nb_resultat = $query->num_rows();*/

   // $query->free_result();


    return (int) $this->db->where('id', $id)
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
      if($session['user_data']['rank'] == "Modérateur")
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