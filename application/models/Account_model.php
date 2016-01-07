<?php
class Account_model extends CI_Model {
  public function __construct() {
    $this->load->database();
    $this->load->library('user');
  }
  
  public function checkPassword()
  {
    $password_hash = password_hash($this->input->post('passwordConfirm'), PASSWORD_BCRYPT);
    $query = $this->db->query("SELECT password FROM users WHERE id = ?", array($this->user->getId()));
    $res = $query->result_array();
	  if(password_verify($this->input->post('passwordConfirm'), $res[0]['password']))
        return true;
      
      return false;
    
  }

  public function setPassword()
  {
    $password_hash = password_hash($this->input->post('password'), PASSWORD_BCRYPT);
    $this->db->where('id', $this->user->getId());
    $this->db->update('users', array('password' => $password_hash));
  }
  public function setEmail()
  {
    $this->db->where('id', $this->user->getId());
    $this->db->update('users', array('email' => $this->input->post('email')));
  }
  
}