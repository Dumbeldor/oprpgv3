<?php

/*
 *
 */

class Tchat extends MY_Controller {

  // Default Constructor
  public function __construct() {
    parent::__construct();
    $this->load->model('tchat_model');
    $this->load->model('users_model');
    $this->load->helper('smiley');
  }
  
  public function index() {
    $data['title'] = 'T\'chat';
    $data['messages'] = $this->tchat_model->get_messages();
    $data['scripts'][] = base_url('assets/js/tchat/tchat.js');
    $this->construct_page('tchat/index', $data);
  }

  public function post() {
    $session = $this->session->all_userdata();
    $user_id = $session['user_data']['id'];
    $message = $this->input->post('message');
    $this->tchat_model->save_msg($user_id, parse_smileys($message, base_url('assets/smileys/')));
  }

  public function get() {
    $messages = $this->tchat_model->get_messages();
    echo json_encode($messages);
  }

}