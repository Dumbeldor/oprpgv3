<?php
class Account extends MY_Controller {
  public function __construct() {
    parent::__construct();
    if(!$this->users_model->is_connected())
      redirect('index');
  }

/*
  * Le compte du joueur
  */
  public function index()
  {
    $data['title'] = 'Mon compte';
    $this->construct_page('account/index', $data);
  }

  /*
  * Information privé
  */
  public function infoPrivate()
  {
    $this->load->helper('form');
    $this->load->library('form_validation');
    $this->load->helper('url');

    $data['title'] = "Mon compte"; 
    $data['user'] = $this->session->userdata('user_data');
    $this->construct_page('account/infoPrivate', $data);
  }

  /*
  * Changer password
  */
  public function setPassword()
  {
    $this->load->helper('form');
    $this->load->library('form_validation');
    $this->load->helper('url');
    $this->load->model('account_model');

    $data['title'] = "Modifier mot de passe";

    $this->form_validation->set_rules('password', 'Nouveau mot de passe', 'trim|required|matches[password2]');
    $this->form_validation->set_rules('password2', 'Confirmer nouveau mot de passe', 'trim|required');
    $this->form_validation->set_rules('passwordConfirm', 'password', 'required|min_length[6]');
    
    if ($this->form_validation->run() === FALSE) {
      $this->construct_page('account/setPassword', $data);
    }
    else {
      if($this->account_model->checkPassword())
      {
        $this->account_model->setPassword();
        redirect('account/');
      }
      else
      {
        $data['error'] = "L'ancien mot de passe est incorrecte";
        $this->construct_page('account/setPassword', $data);
      }
    }   
  }

  /*
  * Changer Email
  */
  public function setEmail()
  {
    $this->load->helper('form');
    $this->load->library('form_validation');
    $this->load->helper('url');
    $this->load->model('account_model');

    $data['title'] = "Modifier email";

    $this->form_validation->set_rules('email', 'email', 'trim|required|matches[email2]|is_unique[users.user_email]|valid_email');
    $this->form_validation->set_rules('email2', 'Confirmation nouveau email', 'trim|required');
    
    if ($this->form_validation->run() === FALSE) {
      $this->construct_page('account/setEmail', $data);
    }
    else {
      $this->account_model->setEmail();
      redirect('account/');
    }
  }
}