<?php
/**
 ******************************************************************************
 * Description : 
 * This page contains the private messages
 * @todo I have to redo everything because right now it is the code of Sumo
 * @author Sumo & Dumbeldor
 * @version 0.1.0
 ******************************************************************************
 */

class Private_messages extends MY_Controller {
	
	/* Constructeur */
	public function __construct() {
		parent::__construct();
		$this->load->model('private_messages_model'); //Chargement du modèle MP
		$this->load->model('users_model'); //Chargement du modèle user
		$this->load->helper('smiley'); //Chargement des smileys
	}
	
	/* Vue Globale des MP */
	public function index() {
		$this->load->helper('form');
		
		$session = $this->session->all_userdata();
		$data['title'] = 'MP';
	    $data['messages'] = $this->private_messages_model->get_messages($session['user_data']['user_id']); //Chargement des messages et des infos sur l'envoyeur
		$data['messages_sent'] = $this->private_messages_model->get_messages_sent($session['user_data']['user_id']); // Chargement des messages envoyés
		$this->construct_page('private_messages/index', $data);
	    $this->construct_page('private_messages/index', $data);
	}
	
	/* Nouveau MP */
	public function new_message($id_receiver) {
		$this->load->helper('form');
		
		$data['title'] = 'MP';
		
		$data['id_receiver'] = $id_receiver;
		$this->construct_page('private_messages/new_message', $data);
	}
	
	/* Répondre à un MP */
	public function answer_message() {
		$this->load->helper('form');
		
		$data['title'] = 'MP';
		$data['id_receiver'] = $this->input->post('id_receiver');
		$data['content'] = $this->input->post('content'); //On récupère l'ancien message

		$data['content'] = $this->input->post('content');
		$this->construct_page('private_messages/answer_message', $data);
	}
	
	/* Envoi d'un MP */
	public function send_message() {
		$content = $this->input->post('content');
		$id_receiver = $this->input->post('id_receiver');
		
		/* On vérifie si l'utilisateur créé un nouveau message ou répond à un message */
		if($this->input->post('old_content') != null):
			$content = $content.'
			--------------Message Précédent------------ 
			'.$this->input->post('old_content'); //Si l'utilisateur créé un message, on rajoute l'ancien message au précédent
			$content = $content.'<br>--------------Message Précédent------------<br>'.$this->input->post('old_content'); //Si l'utilisateur créé un message, on rajoute l'ancien message au précédent
		endif;
		
		$session=$this->session->all_userdata();
		$pm_date = date('Y-m-d', time());
		$this->private_messages_model->send_message($session['user_data']['user_id'],$id_receiver,parse_smileys($content, base_url('assets/smileys/')),$pm_date); //Envoi du message
		$this->private_messages_model->send_message($session['user_data']['user_id'],$id_receiver,parse_smileys(nl2br($content), base_url('assets/smileys/')),$pm_date); //Envoi du message
		
		$data['title'] = 'MP';
		$this->construct_page('private_messages/success', $data);
	}
	
	/* Suppression d'un MP */
	public function delete_message($id_pm) {
		$this->private_messages_model->delete_message($id_pm);
		
		$data['title'] = 'MP';
		$this->construct_page('private_messages/success_deleting', $data);
	}
	
}