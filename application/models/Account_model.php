<?php
class Account_model extends CI_Model {
  public function __construct() {
    $this->load->database();
    $this->load->library('user');
  }
  
  public function checkPassword()
  {
    $password_hash = hash('sha512', SALT . $this->input->post('passwordConfirm'));
    $query = $this->db->query("SELECT * FROM users WHERE id = ? AND password = ?", array($this->user->getId(), $password_hash));
    
    if($query->num_rows() == 1) {
      return TRUE;
    }
    else {
      return FALSE;
    }
  }

  public function setPassword()
  {
    $this->db->where('id', $this->user->getId());
    $this->db->update('users', array('password' => hash('sha512', SALT . $this->input->post('password'))));
  }
  public function setEmail()
  {
    $this->db->where('id', $this->user->getId());
    $this->db->update('users', array('email' => $this->input->post('email')));
  }
  
}