<?php

  class MY_Controller extends CI_Controller{
    // Default Constructor
    public function __construct() {
      parent::__construct();
      setlocale (LC_TIME, 'fr_FR.utf8','fra');
	  date_default_timezone_set('Europe/Paris');
      $this->load->model('users_model');
      $this->load->library('user');
	   $this->load->driver('session');
	  $this->load->library('crew');
      $this->load->helper('url');
	  if($this->user->isAuthenticated())
		$this->users_model->updateSession();
    }
    
    /*
    * Permet de construire une page avec header, navbar, etc...
    */
    public function construct_page($page, $data = array()) {
      if($this->user->isAuthenticated()) 
      {
        $data['connecte'] = TRUE;
        $data['amountMP'] = $this->users_model->amountMP($this->user->getId());
		
  
		if($this->crew->isCapitaine()) {
			$data['capitaineCrew'] = true;
			$data['adminCrew'] = true;
			$data['modoCrew'] = true;
		}
		else if($this->crew->isAdmin()){
			$data['adminCrew'] = true;
			$data['modoCrew'] = true;
		}
		else if($this->crew->isModo()){
			$data['modoCrew'] = true;
		}
		else {
			$data['capitaineCrew'] = false;
			$data['adminCrew'] = false;
			$data['modoCrew'] = false;
		}		
		
        
		if($this->user->isBan() || $this->user->isKick())
		  $this->user->logout();
		else if($this->user->isAdmin()) {
          $data['admin'] = TRUE;
		  $data['moderator'] = TRUE;
		}
        else if($this->user->isModo())
          $data['moderator'] = TRUE;
		else {
          $data['moderator'] = FALSE;
          $data['admin'] = FALSE;
		}
      }else{
      	$data['connecte'] = FALSE;
      }
      $this->load->view('templates/header', $data);
      $this->load->view('templates/navbar', $data);
      $this->load->view('templates/sidebar');
      $this->load->view($page, $data);
      $this->load->view('templates/footer');

    }
  }
