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
       $data['moderator'] = 0;
       $data['admin'] = 0;
       $data['redactor'] = 0;
       $data['VIP'] = 0;
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
			$data['capitaineCrew'] = 0;
			$data['adminCrew'] = 0;
			$data['modoCrew'] = 0;
		}		        
		if($this->user->isBan() || $this->user->isKick())
		  	$this->user->logout();
		else if($this->user->isAdmin()) {
          	$data['admin'] = TRUE;
		  	$data['moderator'] = TRUE;
		}
        else if($this->user->isModo()) {
		  	$data['admin'] = 0;
          	$data['moderator'] = TRUE;
		} 
		else if($this->user->isRedactor()) {
			$data['redactor'] = TRUE;
		}
		else {
			$data[$this->user->getRank()] = TRUE;
		}
      }else{
      	$data['connecte'] = 0;
      }
      $this->load->view('templates/header', $data);
      $this->load->view('templates/navbar', $data);
      $this->load->view('templates/sidebar');
      $this->load->view($page, $data);
      $this->load->view('templates/footer');

    }
  }
