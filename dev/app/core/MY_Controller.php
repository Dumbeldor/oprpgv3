<?php

  class MY_Controller extends CI_Controller{
    // Default Constructor
    public function __construct() {
      parent::__construct();
    }

    /*
    * Permet de construire une page avec header, navbar, etc...
    */
    public function construct_page($page, $data = array()) {
      if($this->users_model->is_connected()) {
        $data['connecte'] = TRUE;
      }else {
        $data['connecte'] = FALSE;
      }
      $this->load->view('templates/header', $data);
      $this->load->view('templates/navbar', $data);
      $this->load->view('templates/sidebar', $data);
      $this->load->view($page, $data);
      $this->load->view('templates/footer');
    }
  }
