<?php
class Forum extends MY_Controller {

	/* Consttructor */
	public function __construct() {
		parent::__construct();
		$this->load->model('forum_model'); //Loading of the forum's model 
		$this->load->model('users_model'); //Loading of the users's model
		$this->load->helper('smiley'); //Loading of the helper for the smileys
	}
	
	/* Display each type of forum */
	public function index() {
		$data['title'] = 'Forum';
	    $data['types'] = $this->forum_model->get_types(); //Loading of each forum's type
	    $this->construct_page('forum/index', $data);
	}
	
	/* Display each categorie of a chosen forum */
	/* $id_type is the chosen forum's id */
	public function categories($id_type) {
		$data['title'] = 'Forum';
	    $data['categories'] = $this->forum_model->get_categories($id_type); //Loading of each categories
	    $this->construct_page('forum/categories', $data);
	}
	
	/* Display each topic of a chosen categorie */
	/* $id_cate is the chosen categorie's id */
	public function topics($id_cate) {
		$this->load->helper('form');
		
		$data['title'] = 'Forum';
		$data['topics'] = $this->forum_model->get_topics($id_cate); // Loading of each topic (and all the information about the topic, these information will be stored in this array)
		$data['id_categorie'] = $id_cate;
		$this->construct_page('forum/topics', $data);
	}
	
	/* Display every message in a chosen topic */
	/* $id_topic is the chosen topic's id */
	public function messages($id_topic) {
		$this->load->helper('form'); /* Loading of the form's helper */
		
		$data['title'] = 'Forum';
		$data['messages'] = $this->forum_model->get_messages($id_topic); //Loading of every message
		$data['id_topic'] = $id_topic;
		
		$data['id_categorie'] = $this->forum_model->get_id_categorie($id_topic); //Categorie's id is get in a way to enable the user to create a topic in the message's page
		
		$this->construct_page('forum/messages', $data);
	}
	
	/* Display the form to write an answer for a topic */
	public function answer() {
		$this->load->helper('form');
		
		$data['title'] = 'Forum';
		$data['id_topic'] = $this->input->post('id_topic');
		
		$this->construct_page('forum/answer', $data);
		
	}
	
	/* Send a message */
	/*
		$message is the text of the message
		$date_message is the date (at that time, the timestamp) when the message is sent
		$id_topic is the topic's id of the sent message
		$id_user is the sender's id
	*/
	public function send_message($message='',$date_message='',$id_topic='',$id_user='') {
				
		if((!isset($message)) AND (!isset($date_message)) AND (!isset($id_topic)) AND (!isset($id_user))):

			$id_topic = $this->input->post('id_topic');
			$message = $this->input->post('message');
			$date_message = date('Y-m-d', time()); //Date in YYYY-MM-DD format
			$session = $this->session->all_userdata();
			$id_user = $session['user_data']['user_id'];
		endif;
		
		$this->forum_model->send_message($id_topic,$message,$date_message,$id_user);
		
		$this->messages($id_topic);
	}
	
	/* Delete a message */
	/* $id_message is the message's id that will be deleted */
	public function delete_message($id_message) {
		$id_topic = $this->forum_model->get_id_topic($id_message); //Topic's id is get in order to redirect the user to this topic 
		$this->forum_model->delete_message($id_message);
				
		$this->messages($id_topic[0]['topic_id']);
	}
	
	/* Create a new topic */
	public function create_topic() {
		$this->load->helper('form');
		
		$data['title'] = 'Forum';
		$data['id_categorie'] = $this->input->post('id_categorie');
		
		$this->construct_page('forum/create_topic', $data);
	}
	
	/* Send a new topic */
	public function send_topic() {
		
		$id_categorie = $this->input->post('id_categorie');
		$topic_name = $this->input->post('topic_name');
		
		$id_topic = $this->forum_model->send_topic($id_categorie,$topic_name); //Topic's id is get in a way to redirect the user to this topic
		
		$session = $this->session->all_userdata();
		$message = $this->input->post('message');
		$date_message = date('Y-m-d', time()); //Date in YYYY-MM-DD format
		
		$this->send_message($message,$date_message,$id_topic[0]['topic_id'],$session['user_data']['user_id']);
		
	}
}
	
?>