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
	$this->crew->hydrateCrew();
	$data['title'] = 'T\'chat';
	$data['tchats'] = $this->tchat_model->listTchat();
	$this->construct_page('tchat/index', $data);
  }
  
  public function salle($id_tchat=1) {
	$this->crew->hydrateCrew();
	if($id_tchat == 1 OR $id_tchat == 2 OR $id_tchat == 3 OR $id_tchat == $this->crew->getId() OR $this->user->isAdmin())
	{
	  $this->load->helper('form');
	  $data['scripts'][] = base_url('assets/js/tchat/tchat.js');
  
	  $data['messages'] = $this->tchat_model->get_messages($id_tchat);
	  
	  $data['title'] = 'T\'chat';	
	  $data['id_tchat'] = $id_tchat;
	  $data['pseudo'] = $this->user->getPseudo();
	  $data['rank'] = $this->user->getRank();
	  $data['userId'] = $this->user->getId();
	  $this->tchat_model->deleteOldMess($id_tchat);
	  $this->construct_page('tchat/salle', $data);
	} else {
	  redirect('tchat/');
	}
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

  public function getMessages($idTchat=1) {
	//$messages = $this->tchat_model->get_messages($idTchat);
    //echo json_encode($messages);
  }
  
  public function delete_message($id_message = 0) {
	if($id_message == 0 || !($this->user->isModo() || $this->user->isAdmin()))
	  redirect('/tchat/');
	$id_tchat = $this->tchat_model->get_id_tchat($id_message);
	$this->tchat_model->delete_message($id_message);
	redirect('tchat/salle/'.$id_tchat[0]['id_tchats']);
  }

}
