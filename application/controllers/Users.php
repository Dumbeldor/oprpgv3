<?php
/**
 ******************************************************************************
 * Description : 
 * This page contains the users
 * @todo Finish this description
 * @author Dumbeldor & Mawloc
 * @version 1.0.0
 ******************************************************************************
 */
class Users extends MY_Controller {

  // ========================================================================
  // CREATE PAGE
  // ========================================================================

  public function __construct() {
    parent::__construct();
    $this->load->model('users_model');
    $this->load->model('personnages_model');
  }

  // ========================================================================
  // METHODS
  // ========================================================================
    
  /**
   * See the list of users
   * ----------------------------------------------------------------------- */
  public function index($page=0) {
  	if(!$this->user->isAuthenticated())
  		redirect(base_url('/home/accueil'));
	$data['users'] = $this->users_model->annuaire(20, 10);
    $data['title'] = 'Annuaire';
    
    $this->load->library('pagination');
	
	//pagination
		$nbUsers = $this->users_model->countUsers();
		$config['base_url'] = base_url('/users/annuaire/');
		$config['total_rows'] = $nbUsers;
		
		$config['use_page_numbers'] = TRUE;
		$config['per_page'] = 20;
		$config['last_link'] = 'Dernière';
		$config['first_link'] = 'Première';
		
		$this->pagination->initialize($config);
		$page = $page*10;
		
		if($page > 0)
		{
			if($page <= $nbUsers)
				$page = intval($page);
			else
				$page = 0;
		}
		else
			$page = 0;		
		$data['pagination'] = $this->pagination->create_links();
		$data['nbUsers'] = $nbUsers;
		$data['users'] = $this->users_model->annuaire(20, $page);
		$this->construct_page('users/index', $data);	
  }
  
  public function annuaire($page=0){
	if(!$this->user->isAuthenticated())
  		redirect(base_url('/home/accueil'));
	$this->index($page);
  }
  
  public function staff() {
	if(!$this->user->isAuthenticated())
  		redirect(base_url('/home/accueil'));
	  $data['users'] = $this->users_model->staff();
	  $data['title'] = 'Liste Staff';
	  $this->construct_page('users/staff', $data);
  }
  
  /**
   * View the profile of a user
   * ----------------------------------------------------------------------- */
  public function view($id) {
  	if(!$this->user->isAuthenticated())
  		redirect(base_url('/home/accueil'));
	$data['users'] = $this->users_model->view_user($id);
    $data['title'] = "Profil de ".$data['users']['pseudo'];
	$data['id'] = $id;
    
    $this->construct_page('users/view', $data);
  }
  
  /*
   * Returns a list of connected players
   * -------------------------------------------------------------------- */
  public function liste() {
  	if(!$this->user->isAuthenticated())
  		redirect(base_url('/home/accueil'));
  	$data['title'] = 'Liste des connectés';
  	$data['list'] = $this->users_model->listCo();
  	$this->construct_page('users/list', $data);
  }
  
  
  /**
   * Treaty the post of the registration form
   * ----------------------------------------------------------------------- */
  public function create() {
    if($this->user->isAuthenticated())
      redirect(base_url('/home/accueil'));
    $this->load->helper('form');
    $this->load->library('form_validation');
    
    $data['title'] = 'Inscription';
    
    $this->form_validation->set_rules('pseudo', 'Pseudonyme', 'required|min_length[3]|max_length[50]');
	$this->form_validation->set_rules('password', 'Mot de passe', 'required|min_length[6]|max_length[249]|matches[passconf]');
	$this->form_validation->set_rules('passconf', 'Mot de passe de confirmation', 'required');
	$this->form_validation->set_rules('email', 'Email', 'required|min_length[3]|max_length[249]|valid_email');
	$this->form_validation->set_rules('sexe', 'sexe', 'required');

  $data['nb_cheveux_homme']=9;
  $data['nb_cheveux_femme']=9;
  $data['nb_corps_homme']=3;
  $data['nb_corps_femme']=3;
  $data['nb_yeux']=4;
  $data['nb_bouches']=6;
	
	if ($this->form_validation->run() === FALSE) {	  
	     $data['scripts'][] = base_url('assets/js/users/create_avatar.js');
       $this->construct_page('users/create', $data);
    }
    else {
      $id = $this->users_model->set_user();
      if($id == 0) {
          $data['scripts'][] = base_url('assets/js/users/create_avatar.js');
          $data['error'] = "Pseudo déjà utilisé !";
          $this->construct_page('users/create', $data);
      } else if($id == -1) {
          $data['scripts'][] = base_url('assets/js/users/create_avatar.js');
          $data['error'] = "Email déjà utilisé !";
          $this->construct_page('users/create', $data);
      }

      else {
  	    $this->users_model->create_avatar($id);
        $this->construct_page('users/success', $data);
      }
    }
  }
  
  /**
   * Treaty post the login form
   * ----------------------------------------------------------------------- */
  public function connect() {
    if($this->user->isAuthenticated())
      redirect(base_url('/home/accueil'));
    $this->load->helper('form');
    $this->load->library('form_validation');
    
    $data['title'] = 'Connexion';
    $pseudo = $this->input->post('pseudo');
    $password = $this->input->post('password');
	$userAlreadyCo = false;
    if ($pseudo == null XOR $password == null) {
      $data['error'] = 'Veuillez fournir toutes les informations requises.';
      $this->construct_page('users/connect', $data);
    }
    else if($pseudo == null && $password == null) {
      $this->construct_page('users/connect', $data);
    }
    else {
      $valid_connexion = $this->users_model->validate_connexion($pseudo, $password);
      if($valid_connexion == 1) {
        $data['title'] = 'Home';
        $this->users_model->setup_connexion($pseudo);
        redirect('');
      }
      else {
		if($valid_connexion == -1)
		  $data['error'] = "Un joueur est déjà connecté sur ce compte.";
		else
		  $data['error'] = "La combinaison pseudo/mot de passe n'est pas bonne.";
        $this->construct_page('users/connect', $data);
      }
    }
  }

  /*
  * Lost password
  * ------------------------------------------------------------------------- */
  public function lostPass(){
    if($this->user->isAuthenticated())
      redirect(base_url('/home/accueil'));
    $this->load->helper('form');
    $this->load->library('form_validation');

    $data['title'] = 'Mot de passe oublié';
    $this->form_validation->set_rules('email', 'Email', 'required|min_length[3]|max_length[249]|valid_email');
    if ($this->form_validation->run() === FALSE) {
      $this->construct_page('users/lostPass', $data);
    }
    else {
      if(!$this->users_model->emailExist()) {
        $data['error'] = "L'email n'existe pas !";
        $this->construct_page('users/lostPass', $data);
      }
      else {
        $this->users_model->sendTookenLostPass();
        $this->construct_page('users/lostPassSendEmail');
      }
    }

  }
  
    /*
   * deconnection
   */
  public function disconnect() {
  	if(!$this->user->isAuthenticated())
  		redirect(base_url('/home/accueil'));
  	$this->session->sess_destroy();
  	$this->user->logout();
    $data['title'] = 'Home';
    redirect('');
  }
}