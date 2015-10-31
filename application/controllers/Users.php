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
  public function __construct() {
    parent::__construct();
    $this->load->model('users_model');
    $this->load->model('personnages_model');
  }
    
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
    $this->load->helper('form');
    $this->load->library('form_validation');
    
    $data['title'] = 'Inscription';
    
    $this->form_validation->set_rules('pseudo', 'Pseudonyme', 'required|min_length[3]|max_length[50]');
	$this->form_validation->set_rules('password', 'Mot de passe', 'required|min_length[3]|max_length[249]|matches[passconf]');
	$this->form_validation->set_rules('passconf', 'Mot de passe de confirmation', 'required');
	$this->form_validation->set_rules('email', 'Email', 'required|min_length[3]|max_length[249]|valid_email');

    
    if ($this->form_validation->run() === FALSE) {
      $query_persos_jouables = $this->db->query('SELECT * FROM personnages');
      $data['persos'] = $query_persos_jouables->result_array();
      $this->construct_page('users/create', $data);
    }
    else {
      $this->users_model->set_user();
      $this->construct_page('users/success', $data);
    }
  }
  
  /**
   * Treaty post the login form
   * ----------------------------------------------------------------------- */
  public function connect() {
    $this->load->helper('form');
    $this->load->library('form_validation');
    $this->load->helper('url');
    
    $data['title'] = 'Connexion';
    $pseudo = $this->input->post('pseudo');
    $password = $this->input->post('password');
    if ($pseudo == null XOR $password == null) {
      $data['error'] = 'Veuillez fournir toutes les informations requises.';
      $this->construct_page('users/connect', $data);
    }
    else if($pseudo == null && $password == null) {
      $this->construct_page('users/connect', $data);
    }
    else {
      $valid_connexion = $this->users_model->validate_connexion($pseudo, $password);
      if($valid_connexion) {
        $data['title'] = 'Home';
        $this->users_model->setup_connexion($pseudo);
        redirect('');
      }
      else {
        $data['error'] = "La combinaison pseudo/mot de passe n'est pas bonne.";
        $this->construct_page('users/connect', $data);
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