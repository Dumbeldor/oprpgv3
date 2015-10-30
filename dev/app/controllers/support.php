<?php

/**
 ******************************************************************************
 * Description : 
 * This page contains support
 * @todo Finish this description
 * @author Dumbeldor
 * @version 1.0.0
 ******************************************************************************
 */

class Support extends MY_Controller {

	// ========================================================================
	// CREATE PAGE
	// ========================================================================

	/**
	 * Default Constructor
	 * ----------------------------------------------------------------------- */
	public function __construct() {
		parent::__construct();
		if(!$this->user->isAuthenticated())
			redirect(base_url('/home/accueil'));
		// Loading models
		$this->load->model('support_model');
		$this->load->model('users_model');
	}

	/**
	 * Default Page or Display each type of support
	 * ----------------------------------------------------------------------- */
	public function index() {
		// Set title and loading support's type
		$data['title'] = 'Support';
		$data['ticket'] = $this->support_model->getTicket();

		// Construct this page
		$this->construct_page('support/index', $data);
	}

	public function read($id) {
		if(empty($id) || !$this->verify_user($id))
			redirect(base_url('support/'));
		$this->load->helper('form');
		$data['title'] = 'Support';
		$data['messages'] = $this->support_model->getTicketMessages($id);
		$data['id'] = $id;
		$this->construct_page('support/read', $data);
	}
	
	public function create() {
		$this->load->helper('form');
		$this->load->library('form_validation');
		
		$this->form_validation->set_rules('sujet', 'sujet', 'required');
		$this->form_validation->set_rules('message', 'message', 'required');
		
		$data['title'] = 'Support';
		if(!$this->form_validation->run()) {
			$this->construct_page('support/create', $data);
		} else {
			$this->support_model->addTicket();
			$this->construct_page('support/ticket_success', $data);
		}
	}
	
	public function addMessage($id) {
		if($this->verify_user($id)) {
			$this->support_model->addMessage($id);
			$data['id'] = $id;
			$data['title'] = 'Support';
			$this->construct_page('support/message_success', $data);
		} else {
			redirect(base_url('support/read/' . $id));
		}
	}
	
	function verify_user($idTicket) {
		// On récupère le user à qui appartient le ticket
		$ticketUserId = $this->support_model->getTicketUser($idTicket);
		if($ticketUserId == $this->user->getId() || $this->user->isModo() || $this->user->isAdmin()) {
			return true;
		}
		return false;
	}
}
