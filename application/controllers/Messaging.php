<?php
/**
 ******************************************************************************
 * Description : 
 * This page contains the messaging handling
 * @todo Coding
 * @author Dumbeldor
 * @version 0.1.0
 ******************************************************************************
 */
class Messaging extends MY_Controller {
	// ========================================================================
	// CREATE PAGE
	// ========================================================================

	/**
	 * Default Constructor
	 * ----------------------------------------------------------------------- */
	public function __construct() {
		parent::__construct();
		$this->load->model('messaging_model');
		if(!$this->user->isAuthenticated())
			redirect(base_url('/home/accueil'));
	}
	/**
	 * Of the messaging index page, list private message
	 * ----------------------------------------------------------------------- */
	public function index()
	{
		$this->load->helper('form');
		$data['title'] = 'Messagerie';
		$data['conversations'] = $this->messaging_model->lists();
		$this->construct_page('messaging/index', $data);
	}
	/**
	 * Read a private conversation particulary
	 * ----------------------------------------------------------------------- */
	public function read($id)
	{
		$data['title'] = 'Messagerie';
		$data['conversations'] = $this->messaging_model->lists($id);
		$data['id_autre'] = $id;
		if(empty($data['conversations'])) //redirection if id does not exist private message
			redirect('messaging/index');
		$this->construct_page('messaging/read', $data);
	}

	/**
	 * 
	 * Delete private message
	 * private message deletes the $id
	 * ----------------------------------------------------------------------- */
	public function delete($id=0)
	{
		$this->messaging_model->delete($id);
		redirect('messaging/index');
	}

	/**
	 * 
	 * write private message
	 * ----------------------------------------------------------------------- */
	public function write($receptor = "")
	{

		$this->load->helper('form');
		$this->load->library('form_validation');
		$data['title'] = "MP";
		$data['receptor'] = $receptor;
		if(!empty($receptor) && $receptor > 0)
		{
			$follow = $this->messaging_model->getFollow($receptor);
			$data['receptor'] = $follow[0]['pseudo'];
		}
		$this->form_validation->set_rules('pseudo', 'Pseudonyme', 'required');
		$this->form_validation->set_rules('content', 'texte', 'required');
		if ($this->form_validation->run() === FALSE) 
		{
			$this->construct_page('messaging/write', $data);
		}
		else {
			$pseudo = $this->input->post('pseudo');
			$content = $this->input->post('content');
			if($this->users_model->exist($pseudo)) //If the username exists
			{
				$this->messaging_model->send($pseudo, $content);
				redirect('messaging/index');
			}
			else{
				$data['error'] = "Le joueur ".$pseudo." n'existe pas";
				$this->construct_page('messaging/write', $data);
			}
		}
	}

	/**
	 * Displays the message sent by the user
	 * ----------------------------------------------------------------------- */
	public function sending()
	{
		$this->load->helper('form');
		$data['title'] = 'Messagerie Boite d\'envois';
		$data['private_message'] = $this->messaging_model->listsSending(5, 0);
		$this->construct_page('messaging/sending', $data);
	}


	/**
	 * used to mark multiple messages as read or delete
	 * @param form
	 *  ------------------------------------------------------------------------ */
	public function form()
	{
		if(!empty($_POST['mess']))
		{
			foreach($_POST['mess'] as $valeur)
			{
				if(isset($_POST['delete']))
					$this->messaging_model->delete($valeur);
				if(isset($_POST['markRead']))
					$this->messaging_model->markRead($valeur);
			}
		}
		redirect('/messaging/');
	}
}

