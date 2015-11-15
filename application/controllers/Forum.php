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
		
		$this->load->helper('form');
		$this->load->library('pagination');
		
		//pagination
		$nbMess = $this->forum_model->countCategories($id_categorie);
		$config['base_url'] = base_url('/forum/c/'.$id_categorie.'/');
		$config['total_rows'] = $nbMess;
		$config['use_page_numbers'] = TRUE;
		$config['uri_segment'] = 4;
		$config['per_page'] = 20;
		$config['last_link'] = 'Dernière';
		$config['first_link'] = 'Première';
		
		$this->pagination->initialize($config);
		$page = $page * 10;
		
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
	    $data['topic'] = $this->forum_model->get_topics($id_categorie, 10, $page);
		if(empty($data['topic']) && $id_categorie != $this->user->getAttribute('crewId'))
		   redirect('forum/');
		
	
		
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
		// Verifiy user is not accessing secret topic
		$data['id_categorie'] = $this->forum_model->get_id_categorie($id_topic)[0]['id_forums_categories'];
		if($data['id_categorie'] == 1 && !($this->user->isModo() || $this->user->isAdmin()))
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
		$config['use_page_numbers'] = TRUE;
		$config['per_page'] = 1;
		//$config['num_links'] = 10;
		
		$config['last_tag_open'] = '<li class="arrow">';
		$config['last_tag_close'] = '</li>';
    	$config['last_link'] = '&raquo;';
    	
		$config['first_tag_open'] = '<li class="arrow">';
		$config['first_tag_close'] = '</li>';
		$config['first_link'] = '&laquo;';		
		//Courant
		$config['cur_tag_open'] = '<li class="current">';
		$config['cur_tag_close'] = '</li>';		
		
		$config['num_tag_open'] = '<li>';
		$config['num_tag_close'] = '</li>';
		

		$config['next_tag_open'] = ' <li class="arrow">';
		 $config['next_tag_close'] = '</li>';
		
		

		$config['prev_tag_open'] = '<li class="arrow">';
		$config['prev_tag_close'] = '</liv>';
		
		$this->pagination->initialize($config);
		$page = $page*15;
		
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
		
		// Get all topic's messages
		$data['messages'] = $this->forum_model->get_messages($id_topic, 30, $page);
		if(empty($data['messages']))
			redirect('/forum');
		
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
		if(!$this->user->isAuthenticated())
			redirect(base_url('/users/connect'));
		// Loading helper form, set title and id
		$this->load->helper('form');
		$data['title'] = 'Forum';
		$data['idTopic'] = $this->input->post('id_topic');
		$data['aria'] = $this->forum_model->get_aria_topic($data['idTopic'])[0];
		
		// Construct this page
		$this->construct_page('forum/answer', $data);
		
	}
	
	public function quote($idTopic = 0, $idCitation = 0) {
		if(!$this->user->isAuthenticated())
			redirect(base_url('/users/connect'));
		if($idTopic == 0 || $idCitation == 0)
			redirect('forum/');
		
		// Verifiy user is not accessing secret topic
		$id_cat = $this->forum_model->get_id_categorie($idTopic)[0]['id_forums_categories'];
		if($id_cat == 1 && !($this->user->isModo() || $this->user->isAdmin())) {
			redirect('forum/');
		}
		
		$this->load->helper('form');
		$citation = $this->forum_model->getQuote($idTopic, $idCitation);
		if(empty($citation))
			redirect('forum/t/'.$idTopic);
		$citation = $citation[0];
		if(!empty($citation)) {
			$data['message_citation'] = '<blockquote><p><u><strong><em>Citation de '.$citation['pseudo'].'</em></strong></u></p><p>'.$citation['message'].'</blockquote></p>';
		}
		$data['idTopic'] = $idTopic;
		// Construct this page
		$data['title'] = 'Forum';
		$this->construct_page('forum/answer', $data);
	}

	/**
	 * Create new topic
	 * ----------------------------------------------------------------------- */
	public function create_topic() {
		if(!$this->user->isAuthenticated())
			redirect(base_url('/users/connect'));
		// Loading helper form, set title and category id
		$this->load->helper('form');
		$data['title'] = 'Forum';
		$data['id_categorie'] = $this->input->post('id_categorie');
		$data['aria'] = $this->forum_model->get_aria_categorie($data['id_categorie'])[0];
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
		if(!$this->user->isAuthenticated())
			redirect(base_url('/users/connect'));

		$this->load->library('form_validation');
		$this->form_validation->set_rules('topic_name', 'nom du topic', 'required|min_length[3]|max_length[50]', 
											array('required' => 'Vous devez mettre un nom de topic',
												  'min_length' => 'Vous devez mettre un nom de topic d\'au moins 3 caractères !',
												  'max_lenght' => 'Vous ne pouvez pas mettre un nom de topic plus grand que 50 caractères !'));
		$this->form_validation->set_rules('message', 'message', 'required|min_length[3]',
											array('required' => 'Vous devez ajouter du contenu',
												  'min_lenght' => 'Vous devez ajouter minimum 3 caractères à votre message de topic...'));
		if ($this->form_validation->run() == FALSE) {
			$data['title'] = 'Forum';
			$data['id_categorie'] = $this->input->post('id_categorie');
			$data['aria'] = $this->forum_model->get_aria_categorie($data['id_categorie'])[0];
			$this->construct_page('forum/create_topic', $data);
			return false;
		}
		
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
		
		echo $this->input->post('id_categorie');
		// Topic's id is get in a way to redirect the user to this topic
		$id_topic = $this->forum_model->send_topic($id_categorie,$topic_name, $etat);
		if(!$id_topic)
			redirect('forum/');
		// Call send_message function to complete the process
		$this->send_message($message, $date_message,$id_topic,$id_user);
	}

	/**
	 * Send a new message
	 * @param $message Text message
	 * @param $date_message Timestamp when the message is sent
	 * @param $id_topic Topic's id
	 * @param $id_user Sender's (user) id
	 * ----------------------------------------------------------------------- */
	public function send_message($message='', $date_message='', $id_topic='', $id_user='') {
		if(!$this->user->isAuthenticated())
			redirect(base_url('/users/connect'));
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
		
		// Verify user is not sending messages on unauthorized topics (secret category of other crew's category)
		$id_cat = $this->forum_model->get_id_categorie($id_topic)[0]['id_forums_categories'];
		if(($id_cat == 1 && !($this->user->isModo() || $this->user->isAdmin()))) {
			redirect('forum/');
		}
		
		// Redirect to forum's model for action function
		if(!$this->forum_model->send_message($id_topic, $id_cat, $message,$date_message,$id_user))
			redirect('forum/');
		
		// Loading previous topic after success
		redirect('forum/t/'.$id_topic);
	}
	
	/**
	 * Delete a message
	 * @param $id_essage message's id
	 * ----------------------------------------------------------------------- */
	public function delete_message($id_message) {
		if(!$this->user->isAuthenticated())
			redirect(base_url('/users/connect'));
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
	public function delete_topic($id_topic = 0) {
		if(!$this->user->isAuthenticated())
			redirect(base_url('/users/connect'));
		if($id_topic == 0)
			redirect('/forum');
		$success = false;
		$categorie = $this->forum_model->get_id_categorie($id_topic)[0]['id_forums_categories'];
		if($this->user->isAdmin() || $this->user->isModo() ||
			($this->user->getAttribute('crewId') == $categorie && ($this->crew->isCapitaine() || $this->crew->isAdmin() || $this->crew->isModo()) )){
			$success = $this->forum_model->delete_topic($id_topic, $categorie);
		}
		if($success)
			redirect('/forum/c/'.$categorie);
		else
			redirect('/forum');
	}
	
	public function edit($id = 0) {
		if(!$this->user->isAuthenticated())
			redirect(base_url('/users/connect'));
		if($id == 0)
			redirect('/forum');
			// Loading helper form, set title and id
		$this->load->helper('form');
		$data['title'] = 'Forum : Edit message';
		$topicId = $this->forum_model->get_id_topic($id)[0]['id_forums_topics'];
		$categorieId = $this->forum_model->get_id_categorie($topicId)[0]['id_forums_categories'];
		$data['message'] = $this->forum_model->getMess($id, $categorieId)[0]['message'];
		$data['id_message'] = $id;
		
		// Construct this page
		if(!empty($data['message']))
			$this->construct_page('forum/edit', $data);
		else
			redirect('/forum');
	}
	
	public function send_edit() {
		if(!$this->user->isAuthenticated())
			redirect(base_url('/users/connect'));
		if($this->input->post('id_message') == 0)
			redirect('/forum');
		$message = $this->input->post('message').'<p></p><em><span style="font-size:8px">Édité par '.$this->user->getPseudo().' le '.date('d/m/Y à H\hi'). '</span></em></p>';
		$topicId = $this->forum_model->get_id_topic($this->input->post('id_message'))[0]['id_forums_topics'];
		$categorieId = $this->forum_model->get_id_categorie($topicId)[0]['id_forums_categories'];
		$success = $this->forum_model->edit($this->input->post('id_message'), $message, $categorieId);
		if($success) {
			redirect('/forum/t/'.$topicId);
		} else {
			redirect('/forum');
		}
	}
	
}
	
?>
