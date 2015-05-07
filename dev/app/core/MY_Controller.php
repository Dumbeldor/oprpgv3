<?php

  class MY_Controller extends CI_Controller{
    // Default Constructor
    public function __construct() {
      parent::__construct();
      $this->load->model('users_model');
    }

    /*
    * Permet de construire une page avec header, navbar, etc...
    */
    public function construct_page($page, $data = array()) {
      if($this->users_model->is_connected()) 
      {
        $data['connecte'] = TRUE;
        $data['amountMP'] = $this->users_model->amountMP($this->session->userdata('user_data')['id']);
        
        if($this->users_model->is_moderator())
          $data['moderator'] = TRUE;
        else
          $data['moderator'] = FALSE;
        if($this->users_model->is_admin())
          $data['admin'] = TRUE;
        else
          $data['admin'] = FALSE;
      }else {
        $data['connecte'] = FALSE;
      }
      $this->load->view('templates/header', $data);
      $this->load->view('templates/navbar', $data);
      $this->load->view('templates/sidebar');
      $this->load->view($page, $data);
      $this->load->view('templates/footer');
    }
  }
