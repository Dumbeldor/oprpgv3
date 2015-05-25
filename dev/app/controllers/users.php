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
  public function index() {
	$data['users'] = $this->users_model->view_user();
    $data['title'] = 'Annuaire';
    
    $this->construct_page('users/index', $data);
  }
  
  /**
   * View the profile of a user
   * ----------------------------------------------------------------------- */
  public function view($id) {
	$data['users'] = $this->users_model->view_user($id);
    $data['title'] = "Profil de ".$data['users']['pseudo'];
    
    $this->construct_page('users/view', $data);
  }
  
  /**
   * Treaty the post of the registration form
   * ----------------------------------------------------------------------- */
  public function create() {
    $this->load->helper('form');
    $this->load->library('form_validation');
    
    $data['title'] = 'Inscription';
    
    $this->form_validation->set_rules('pseudo', 'Pseudonyme', 'required|min_length[3]|max_length[15]|is_unique[users.pseudo]');
    $this->form_validation->set_rules('password', 'password', 'required|min_length[6]');
    $this->form_validation->set_rules('email', 'email', 'required|valid_email|is_unique[users.email]');
    $this->form_validation->set_rules('perso', 'perso', 'callback_is_perso_deblocable');
    
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
        redirect('index');
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
    $this->session->sess_destroy();
    $data['title'] = 'Home';
    redirect('index');
  }
}