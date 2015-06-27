<?php

  class MY_Controller extends CI_Controller{
    // Default Constructor
    public function __construct() {
      parent::__construct();
      setlocale (LC_TIME, 'fr_FR.utf8','fra');
      $this->load->model('users_model');
      $this->load->library('user');
    }

    /*
    * Permet de construire une page avec header, navbar, etc...
    */
    public function construct_page($page, $data = array()) {
      if($this->user->isAuthenticated()) 
      {
        $data['connecte'] = TRUE;
        $data['amountMP'] = $this->users_model->amountMP($this->user->getId());
        
        if($this->user->isModo())
          $data['moderator'] = TRUE;
        else
          $data['moderator'] = FALSE;
        if($this->user->isAdmin())
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
