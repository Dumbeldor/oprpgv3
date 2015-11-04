<?php
class Tchat extends MY_Controller {

  // Default Constructor
  public function __construct() {
    parent::__construct();
	if(!$this->user->isAuthenticated())
  		redirect(base_url('/'));
    $this->load->model('tchat_model');
    $this->load->model('users_model');
    $this->load->helper('smiley');
  }
  
  public function index() {
	$data['title'] = 'T\'chat';
	$data['tchats'] = $this->tchat_model->listTchat();
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
    $user_id = $this->user->getId();
	if(isset($user_id) && $user_id > 0) {
		$message = $this->input->post('message');
		$id_tchat = $this->input->post('id_tchat');
		$this->tchat_model->save_msg($user_id, parse_smileys(nl2br(htmlspecialchars($message)), base_url('assets/smileys/')), $id_tchat);
	}
	$this->salle($id_tchat);
  }

  public function getMessages($idTchat) {
	$messages = $this->tchat_model->get_messages($idTchat);
    echo json_encode($messages);
  }
  
  public function delete_message($id_message = 0) {
	if($id_message == 0 || !($this->user->isModo() || $this->user->isAdmin()))
	  redirect('/tchat/');
	$id_tchat = $this->tchat_model->get_id_tchat($id_message);
	$this->tchat_model->delete_message($id_message);
	redirect('tchat/salle/'.$id_tchat[0]['id_tchats']);
  }

}
