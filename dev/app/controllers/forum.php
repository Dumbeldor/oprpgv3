<?php

/**
 ******************************************************************************
 * Description : 
 * This page contains blabla
 * @todo Finish this description
 * @author Dumbeldor & Mawloc
 * @version 1.0.0
 ******************************************************************************
 */

class Forum extends MY_Controller {

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
		$this->load->model('forum_model');
		$this->load->model('users_model');
		$this->load->library('crew');

		// Loading helper for smiley
		$this->load->helper('smiley');
	}
	
	/**
	 * Default Page or Display each type of forum
	 * ----------------------------------------------------------------------- */
	public function index() {
		// Set title and loading forum's type
		$data['title'] = 'Forum';
	    $data['categorie'] = $this->forum_model->get_categories();
	    
	    // Construct this page
	    $this->construct_page('forum/index', $data);
	}
	
	/**
	 * Display each topic of a chosen categorie 
	 * @param $id_cate categorie's id
	 * ----------------------------------------------------------------------- */
	public function categories($id_categorie, $page = 0) {
		
		if($id_categorie == 1 && !($this->user->isModo() || $this->user->isAdmin()))
			redirect('forum/');
			
		if(!$this->forum_model->iscrew_forum_categorie($id_categorie))
			redirect('forum/');
		
		$this->load->helper('form');
		$this->load->library('pagination');
		
		//pagination
		$nbMess = $this->forum_model->countCategories($id_categorie);
		$config['base_url'] = base_url('/forum/c/'.$id_categorie.'/');
		$config['total_rows'] = $nbMess;
		$config['uri_segment'] = 4;
		$config['per_page'] = 15;
		$config['last_link'] = 'Dernière';
		$config['first_link'] = 'Première';
		
		$this->pagination->initialize($config);
		
		if($page > 0)
		{
			if($page <= $nbMess)
				$page = intval($page);
			else
				$page = 0;
		}
		else
			$page = 0;
		
		
		$data['pagination'] = $this->pagination->create_links();
		
		
		
		// Set title and loading categories
		$data['title'] = 'Forum';
	    $data['topic'] = $this->forum_model->get_topics($id_categorie, 15, $page);
		
	
		
	    $data['aria'] = $this->forum_model->get_aria_categorie($id_categorie)[0];
	    $data['id_categorie'] = $id_categorie;
		
	    // Construct this page
	    $this->construct_page('forum/categories', $data);
	}
	
	/**
	 * Displays the topic posts
	 * @param $id_topic topic's id
	 * ----------------------------------------------------------------------- */
	public function topics($id_topic, $page=0) {
		
		if(!$this->forum_model->iscrew_forum_topic($id_topic))
			redirect('forum/');
		
		// Loading helper form and set title
		$this->load->helper('form');
		$this->load->helper('url');
		$this->load->library('pagination');
		$this->load->library('crew');
		$data['title'] = 'Forum';
		
		//If topic close
		if($this->forum_model->is_close($id_topic)[0]['is_block'])
			redirect('/forum/');
		
		//pagination
		$nbMess = $this->forum_model->countMess($id_topic);
		$config['base_url'] = base_url('/forum/t/'.$id_topic.'/');
		$config['total_rows'] = $nbMess;
		$config['uri_segment'] = 4;
		$config['per_page'] = 30;
		$config['last_link'] = 'Dernière';
		$config['first_link'] = 'Première';
		
		$this->pagination->initialize($config);
		
		if($page > 0)
		{
			if($page <= $nbMess)
				$page = intval($page);
			else
				$page = 0;
		}
		else
			$page = 0;
		
		
		$data['pagination'] = $this->pagination->create_links();
		

		// Loading of each topic (and all the information about the topic, 
		// these information will be stored in this array)
		$data['aria'] = $this->forum_model->get_aria_topic($id_topic)[0];
		$data['id_topic'] = $id_topic;
		$data['id_categorie'] = $this->forum_model->get_id_categorie($id_topic)[0]['id_forums_categories'];
		if($data['id_categorie'] == 1 && !($this->user->isModo() || $this->user->isAdmin()))
			redirect('forum/');
		// Get all topic's messages
		$data['messages'] = $this->forum_model->get_messages($id_topic, 30, $page);
		
		if($data['id_categorie'] == $this->user->getAttribute('crewId') AND $this->crew->isCapitaine())
			$data['capitaineCrew'] = true;
		else if ($data['id_categorie'] == $this->user->getAttribute('crewId') AND $this->crew->isAdmin())
			$data['adminCrew'] = true;
		else if ($data['id_categorie'] == $this->user->getAttribute('crewId') AND $this->crew->isModo())
			$data['modoCrew'] = true;

		// Construct this page
		$this->construct_page('forum/topics', $data);
	}

	/**
	 * Display the form to write an answer for a topic
	 * ----------------------------------------------------------------------- */
	public function answer() {

		// Loading helper form, set title and id
		$this->load->helper('form');
		$data['title'] = 'Forum';
		$data['id_topic'] = $this->input->post('id_topic');
		
		// Construct this page
		$this->construct_page('forum/answer', $data);
		
	}

	/**
	 * Create new topic
	 * ----------------------------------------------------------------------- */
	public function create_topic() {
		// Loading helper form, set title and category id
		$this->load->helper('form');
		$data['title'] = 'Forum';
		$data['id_categorie'] = $this->input->post('id_categorie');
		if($data['id_categorie'] == 1 && !($this->user->isModo() || $this->user->isAdmin()))
			redirect('forum/');
		
		// Construct this page
		$this->construct_page('forum/create_topic', $data);
	}

	// ========================================================================
	// ACTION FUNCTION
	// ========================================================================

	/**
	 * Send a new topic
	 * ----------------------------------------------------------------------- */
	public function send_topic() {
		
		// Set informations into variables - Format them
		$id_categorie = $this->input->post('id_categorie');
		$postit = $this->input->post('post-it');
		//If postit is true
		if($postit)
			$etat = 4;
		else
			$etat = 1;
		if($id_categorie== 1 && !($this->user->isModo() || $this->user->isAdmin()))
			redirect('forum/');
		$topic_name = $this->input->post('topic_name');
		$message = $this->input->post('message');
		$id_user = $this->user->getId();
		$date_message = time();
		
		// Topic's id is get in a way to redirect the user to this topic
		$id_topic = $this->forum_model->send_topic($id_categorie,$topic_name, $etat);
		
		// Call send_message function to complete the process
		$this->send_message($message,$date_message,$id_topic,$id_user);
	}

	/**
	 * Send a new message
	 * @param $message Text message
	 * @param $date_message Timestamp when the message is sent
	 * @param $id_topic Topic's id
	 * @param $id_user Sender's (user) id
	 * ----------------------------------------------------------------------- */
	public function send_message($message='', $date_message='', $id_topic, $id_user='') {
		// Verifying params
		if(empty($message) && empty($date_message) && empty($id_topic) && empty($id_user)){
			// Set information into varibles - Format them
			$id_topic = $this->input->post('id_topic');
			$message = $this->input->post('message');
			$date_message = time();
			$id_user = $this->user->getId();
		}
		//If topic close
		if($this->forum_model->is_close($id_topic)[0]['is_block'])
			redirect('/forum/');
			
		// Redirect to forum's model for action function
		$this->forum_model->send_message($id_topic,$message,$date_message,$id_user);
		
		// Loading previous topic after success
		redirect('forum/t/'.$id_topic);
	}
	
	/**
	 * Delete a message
	 * @param $id_essage message's id
	 * ----------------------------------------------------------------------- */
	public function delete_message($id_message) {
		// Topic's id is get in order to redirect the user to this topic 
		$id_topic = $this->forum_model->get_id_topic($id_message)[0]['id_forums_topics'];

		// Redirect to forum's model for action function
		$success = $this->forum_model->delete_message($id_message, $id_topic);
		
		// redirect
		if($success)
			redirect('/forum/t/'.$id_topic);
		else
			redirect('/forum');
	}
	
	/**
	 *	Delete a topic
	 *	@param $id_topic id topic
	 * ----------------------------------------------------------------- */
	public function delete_topic($id_topic) {
		$success = false;
		$categorie = $this->forum_model->get_id_categorie($id_topic)[0]['id_forums_categories'];
		if($this->user->isAdmin() || $this->user->isModo() ||
			($this->user->getAttribute('crewId') == $categorie && ($this->crew->isCapitaine() || $this->crew->isAdmin() || $this->crew->isModo()) )){
			$success = $this->forum_model->delete_topic($id_topic);
		}
		if($success)
			redirect('/forum/c/'.$categorie);
		else
			redirect('/forum');
	}
	
}
	
?>
