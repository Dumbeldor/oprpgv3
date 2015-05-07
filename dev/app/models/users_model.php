<?php
class Users_model extends CI_Model {
  public function __construct() {
    $this->load->database();
  }
  
  public function get_users($id = 0) {
    if($id === 0) {
      $query = $this->db->get('users');
      return $query->result_array();
    }
    echo $id;
    $query = $this->db->get_where('users', array('id' => $id));
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
        'id_users_ranks' => 1,
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
    $query = $this->db->query("SELECT * FROM users JOIN users_ranks ON id_users_ranks = users_ranks.id WHERE pseudo = ?", array($pseudo));
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
      if($session['user_data']['rang'] == 3)
        return TRUE;
    }
    return FALSE;
  }

  public function is_admin() {
    $session = $this->session->all_userdata();
    if(isset($session['user_data']) && $session['user_data']) {
      if($session['user_data']['rang'] == 5)
        return TRUE;
    }
    return FALSE;
  }
}