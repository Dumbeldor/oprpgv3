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
    $query = $this->db->get_where('users', array('user_id' => $id));
    return $query->row_array();
  }
  
  public function set_user() {
    $password_hash = hash('sha512', SALT . $this->input->post('password'));
    $data = array(
        'user_pseudo' => $this->input->post('pseudo'),
        'user_password' => $password_hash,
        'user_email' => $this->input->post('email'),
        'perso_id' => $this->input->post('perso'),
        'lev_id' => 1,
        'usert_id' => 1,
        'obj_id' => 1,
    );
    return $this->db->insert('users', $data);
  }
  
  public function validate_connexion($pseudo, $password) {
    $password_hash = hash('sha512', SALT . $password);
    $query = $this->db->query("SELECT * FROM users WHERE user_pseudo = ? AND user_password = ?", array($pseudo, $password_hash));
    
    if($query->num_rows() == 1) {
      return TRUE;
    }
    else {
      return FALSE;
    }
  }
  
  public function setup_connexion($pseudo) {
    $query = $this->db->query("SELECT * FROM users WHERE user_pseudo = ?", array($pseudo));
    $user = $query->result_array();
    $this->session->set_userdata('user_data', $user[0]);
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
      if($session['user_data']['user_rang'] == 3)
        return TRUE;
    }
    return FALSE;
  }

  public function is_admin() {
    $session = $this->session->all_userdata();
    if(isset($session['user_data']) && $session['user_data']) {
      if($session['user_data']['user_rang'] == 5)
        return TRUE;
    }
    return FALSE;
  }
}