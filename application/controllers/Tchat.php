<?php
/**
 ******************************************************************************
 * Description : 
 * This page is obsolet
 * @todo DELETE THIS PAGE ! :D
 * @author Mawloc
 * @version 1.0.0
 ******************************************************************************
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
	$this->construct_page('tchat/index', $data);
  }
  
  public function salle($id_tchat) {
	$this->load->helper('form');
  
    $data['title'] = 'T\'chat';
    $data['messages'] = $this->tchat_model->get_messages($id_tchat);
	$data['id_tchat'] = $id_tchat;
    $data['scripts'][] = base_url('assets/js/tchat/tchat.js');
    $this->construct_page('tchat/salle', $data);
  }

  public function post() {
    $session = $this->session->all_userdata();
    $user_id = $session['id'];
    $message = $this->input->post('message');
	$id_tchat = $this->input->post('id_tchat');
    $this->tchat_model->save_msg($user_id, parse_smileys($message, base_url('assets/smileys/')), $id_tchat);
	
	$this->salle($id_tchat);
  }

  public function getMessages($idTchat) {
	$messages = $this->tchat_model->get_messages($idTchat);
    echo json_encode($messages);
  }
  
  public function delete_message($id_message) {
	$id_tchat = $this->tchat_model->get_id_tchat($id_message);
	$this->tchat_model->delete_message($id_message);
	$this->index($id_tchat[0]['tchat_id']);
  }

}
