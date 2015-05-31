<?php
class Forum_model extends CI_Model {
	
	//Constructor
	public function __construct() {
		$this->load->database();
	}
	
	/* Return each type of forums */
	public function get_types() {
		$query = $this->db->query('SELECT * FROM forums_types');
		return $query->result_array();
	}
	
	/* Return each categories from a specific forum */
	/* $id_type is the chosen forum's id */
	public function get_categories($id_type) {
		$query = $this->db->query('SELECT * FROM forums_categories WHERE forum_id = ?', array($id_type));
		return $query->result_array();
	}
	
	/* Return each topics from a specific categories */
	/* $id_cate is the chosen cate's id */
	public function get_topics($id_cate) {
		$query = $this->db->query('SELECT * FROM forums_topics WHERE cate_id = ?', array($id_cate));
		return $query->result_array();
	}
	
	/* Return each messages from a specific topic */
	/* $id_topic is the chosen topic's id */
	public function get_messages($id_topic) {
		$query = $this->db->query('SELECT u.user_pseudo, f.message, f.topic_id, f.message_date, f.message_id FROM forums_topics_messages f, users u WHERE f.topic_id = ? AND f.user_id = u.user_id ORDER BY message_id LIMIT 25', array($id_topic));
		return $query->result_array();
	}
	
	/* Send a message */
	/* 
		$id_topic is the topic's id where the message will be sent
		$message is the message that will be sent
		$date_message is the date when the message is sent
		$user_id is the user's id who send the message
	*/
	public function send_message($id_topic,$message,$date_message,$user_id) {
		$this->db->insert('forums_topics_messages', array('message'=>$message,'message_date'=>$date_message,'topic_id'=>$id_topic,'user_id'=>$user_id));
	}
	
	/* Return the id of a topic, in a way to load this topic when the user send a message */
	/* $id_message is the message's id wich will be used in order to return topic's id */
	public function get_id_topic($id_message) {
		$query = $this->db->query("SELECT topic_id FROM forums_topics_messages WHERE message_id = ?", array($id_message));
		return $query->result_array();
	}
	
	/* Return the id of a categorie to load the categorie if the user just created a topic in the message's page */
	/* $id_topic is the topic's id which will be used in a way to return categorie's id */
	public function get_id_categorie($id_topic) {
		$query = $this->db->query("SELECT cate_id FROM forums_topics WHERE topic_id = ?", array($id_topic));
		return $query->result_array();
	}
	
	/* Delete a message (does'nt really delete it, just stops displaying it, in order to keep it in the database) */
	/* $id_message is the message's id of the message that will be deleted */
	public function delete_message($id_message) {
		$this->db->query('UPDATE forums_topics_messages SET message_block=true WHERE message_id=?', array($id_message));
	}
	
	/* Creation of a new topic */
	/* 
		$id_categorie is the categorie's id of the categorie where the topic will be send
		$topic_name is the name of the topic
	*/
	public function send_topic($id_categorie,$topic_name) {
		$this->db->insert('forums_topics', array('topic_name'=>$topic_name,'cate_id'=>$id_categorie));
		$query = $this->db->query(
			"SELECT topic_id 
			FROM forums_topics 
			WHERE topic_name = ? AND cate_id = ? 
			ORDER BY topic_id DESC LIMIT 1", 
			array($topic_name,$id_categorie));
		return $query->result_array();
	}
}