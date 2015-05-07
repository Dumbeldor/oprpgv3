<?php
class Forum_model extends CI_Model {
	
	//Constructeur
	public function __construct() {
		$this->load->database();
	}
	
	/* Retourne les différents types de forums */
	public function get_types() {
		$query = $this->db->query('SELECT * FROM forums_types');
		return $query->result_array();
	}
	
	/* Retourne les différentes catégories */
	public function get_categories($id_type) {
		$query = $this->db->query('SELECT * FROM forums_categories WHERE forum_id = ?', array($id_type));
		return $query->result_array();
	}
	
	/* Retourne les différents topics */
	public function get_topics($id_cate) {
		$query = $this->db->query('SELECT * FROM forums_topics WHERE cate_id = ?', array($id_cate));
		return $query->result_array();
	}
	
	/* Retourne les différents messages */
	public function get_messages($id_topic) {
		$query = $this->db->query('SELECT u.user_pseudo, f.message, f.topic_id, f.message_date, f.message_id FROM forums_topics_messages f, users u WHERE f.topic_id = ? AND f.user_id = u.user_id ORDER BY message_id LIMIT 25', array($id_topic));
		return $query->result_array();
	}
	
	/* Envoi un message */
	public function send_message($id_topic,$message,$date_message,$user_id) {
		$this->db->insert('forums_topics_messages', array('message'=>$message,'message_date'=>$date_message,'topic_id'=>$id_topic,'user_id'=>$user_id));
	}
	
	/* Retourne l'id du topic d'un message afin de pouvoir rediriger l'utilisateur vers le topic quand il poste un message (par exemple) */
	public function get_id_topic($id_message) {
		$query = $this->db->query("SELECT topic_id FROM forums_topics_messages WHERE message_id = ?", array($id_message));
		return $query->result_array();
	}
	
	/* Retourne l'id de la catégorie pour envoyer le topic dans la bonne catégorie si l'utilisateur créé un topic sur la page des messages */
	public function get_id_categorie($id_topic) {
		$query = $this->db->query("SELECT cate_id FROM forums_topics WHERE topic_id = ?", array($id_topic));
		return $query->result_array();
	}
	
	/* Supprime un message */
	public function delete_message($id_message) {
		$this->db->delete('forums_topics_messages', array('message_id'=>$id_message));
	}
	
	/* Création du nouveau topic et retourne l'id du topic */
	public function send_topic($id_categorie,$topic_name) {
		//$this->db->insert('forums_topics', array('topic_name'=>$topic_name,'cate_id'=>$id_categorie));
		$query = $this->db->query("SELECT topic_id FROM forums_topics WHERE topic_name = ? AND cate_id = ? ORDER BY topic_id DESC LIMIT 1", array($topic_name,$id_categorie));
		return $query->result_array();
	}
}