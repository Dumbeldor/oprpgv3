<?php
class Account_model extends CI_Model {
  public function __construct() {
    $this->load->database();
  }
  
  public function checkPassword()
  {
    $password_hash = hash('sha512', SALT . $this->input->post('passwordConfirm'));
    $query = $this->db->query("SELECT * FROM users WHERE user_id = ? AND user_password = ?", array($this->session->userdata('user_data')['user_id'], $password_hash));
    
    if($query->num_rows() == 1) {
      return TRUE;
    }
    else {
      return FALSE;
    }
  }

  public function setPassword()
  {
    $pass = array('user_password' => hash('sha512', SALT . $this->input->post('password')));
    $this->db->where('user_id', $this->session->userdata('user_data')['user_id']);
    $this->db->update('users', $pass);
  }
  
}