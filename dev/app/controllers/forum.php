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
	public function categories($id_categorie) {

		// Set title and loading categories
		$this->load->helper('form');
		$data['title'] = 'Forum';
	    $data['topic'] = $this->forum_model->get_topics($id_categorie);
	    $data['id_categorie'] = $id_categorie;
	    // Construct this page
	    $this->construct_page('forum/categories', $data);
	}
	
	/**
	 * Displays the topic posts
	 * @param $id_topic topic's id
	 * ----------------------------------------------------------------------- */
	public function topics($id_topic) {

		// Loading helper form and set title
		$this->load->helper('form');
		$data['title'] = 'Forum';

		// Loading of each topic (and all the information about the topic, 
		// these information will be stored in this array)
		$data['topics'] = $this->forum_model->get_topics($id_topic);
		$data['id_topic'] = $id_topic;
		$data['id_categorie'] = $this->forum_model->get_id_categorie($id_topic)[0]['id_forums_categories'];
		// Get all topic's messages
		$data['messages'] = $this->forum_model->get_messages($id_topic);

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
		$topic_name = $this->input->post('topic_name');
		$message = $this->input->post('message');
		$id_user = $this->user->getId();
		$date_message = time();
		
		// Topic's id is get in a way to redirect the user to this topic
		$id_topic = $this->forum_model->send_topic($id_categorie,$topic_name);
		
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
		$id_topic = $this->forum_model->get_id_topic($id_message);

		// Redirect to forum's model for action function
		$this->forum_model->delete_message($id_message);
		
		// Loading messages' page
		$this->messages($id_topic[0]['topic_id']);
	}
	
}
	
?>