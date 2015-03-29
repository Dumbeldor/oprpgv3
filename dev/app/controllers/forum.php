<?php
class Forum extends MY_Controller {

	/* Constructeur */
	public function __construct() {
		parent::__construct();
		$this->load->model('forum_model'); //Chargement du modèle MP
		$this->load->model('users_model'); //Chargement du modèle users
		$this->load->helper('smiley'); //Chargement des smileys
	}
	
	/* Voir les différents types de forum */
	public function index() {
		$data['title'] = 'Forum';
	    $data['types'] = $this->forum_model->get_types(); //Chargement des types de forum
	    $this->construct_page('forum/index', $data);
	}
	
	/* Voir les différentes catégories d'un type de forum */
	public function categories($id_type) {
		$data['title'] = 'Forum';
	    $data['categories'] = $this->forum_model->get_categories($id_type); //Chargement des catégories
	    $this->construct_page('forum/categories', $data);
	}
	
	/* Voir les différents topics d'une des catégories */
	public function topics($id_cate) {
		$this->load->helper('form');
		
		$data['title'] = 'Forum';
		$data['topics'] = $this->forum_model->get_topics($id_cate); // Chargement des différents topics
		/* RAJOUTER UN get_topic_name !!!! */
		$data['id_categorie'] = $id_cate;
		$this->construct_page('forum/topics', $data);
	}
	
	/* Voir les différents messages d'un topic */
	public function messages($id_topic) {
		$this->load->helper('form'); /* On charge l'helper afin de créer le formulaire pour aller sur la page de réponse */
		
		$data['title'] = 'Forum';
		$data['messages'] = $this->forum_model->get_messages($id_topic); //Chargement des différents messages
		$data['id_topic'] = $id_topic;
		
		$data['id_categorie'] = $this->forum_model->get_id_categorie($id_topic); //On récupère l'id de la catégorie pour que l'utilisateur puisse créer un topic dans cette catégorie
		
		$this->construct_page('forum/messages', $data);
	}
	
	/* Ecrire le message de réponse */
	public function answer() {
		$this->load->helper('form');
		
		$data['title'] = 'Forum';
		$data['id_topic'] = $this->input->post('id_topic');
		
		$this->construct_page('forum/answer', $data);
		
	}
	
	/* Envoyer un message */
	public function send_message($message='',$date_message='',$id_topic='',$id_user='') {
				
		if((!isset($message)) AND (!isset($date_message)) AND (!isset($id_topic)) AND (!isset($id_user))):
			/* On prépare les variables pour l'envoi */
			$id_topic = $this->input->post('id_topic');
			$message = $this->input->post('message');
			$date_message = date('Y-m-d', time()); //Date au format AAAA-MM-JJ
			$session = $this->session->all_userdata();
			$id_user = $session['user_data']['user_id'];
		endif;
		
		$this->forum_model->send_message($id_topic,$message,$date_message,$id_user);
		
		$this->messages($id_topic);
	}
	
	/* Supprimer un message */
	public function delete_message($id_message) {
		$id_topic = $this->forum_model->get_id_topic($id_message); //On récupère l'id du topic pour rediriger l'utilisateur vers le topic après la suppression du message
		$this->forum_model->delete_message($id_message);
				
		$this->messages($id_topic[0]['topic_id']);
	}
	
	/* Créer un nouveau topic */
	public function create_topic() {
		$this->load->helper('form');
		
		$data['title'] = 'Forum';
		$data['id_categorie'] = $this->input->post('id_categorie');
		
		$this->construct_page('forum/create_topic', $data);
	}
	
	/* Envoi du nouveau topic */
	public function send_topic() {
		
		$id_categorie = $this->input->post('id_categorie');
		$topic_name = $this->input->post('topic_name');
		
		$id_topic = $this->forum_model->send_topic($id_categorie,$topic_name); //On récupère l'id du topic créé tout en l'envoyant
		
		$session = $this->session->all_userdata();
		$message = $this->input->post('message');
		$date_message = date('Y-m-d', time()); //Date au format AAAA-MM-JJ
		
		$this->send_message($message,$date_message,$id_topic[0]['topic_id'],$session['user_data']['user_id']);
		
	}
}
	
?>