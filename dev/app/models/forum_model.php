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
	public function get_categories() {
		$query = $this->db->query('SELECT ftm.date_time AS date, ftm.id AS messId,
				fc.id AS id, fc.name AS name,
				fc.descr AS descr, fc.types, ft.name AS topicName,
				ft.id AS topicId,
				users.pseudo AS pseudo, users.id AS userId FROM forums_categories fc
				LEFT JOIN forums_topics ft ON ft.id_forums_categories = fc.id
				LEFT JOIN forums_topics_messages ftm ON ftm.id_forums_topics = ft.id
				LEFT JOIN users ON ftm.id_users = users.id
				WHERE ftm.date_time = 
				(
					SELECT MAX(ftm2.date_time) FROM forums_topics_messages ftm2
					JOIN forums_topics ft2 ON ftm2.id_forums_topics = ft2.id
					WHERE ft2.id_forums_categories = fc.id GROUP BY fc.id
				) 
				OR ftm.date_time is NULL				
				ORDER BY fc.id');

		return $query->result_array();
	}
	
	/* Return each topics from a specific categories */
	/* $id_cate is the chosen cate's id */
	public function get_topics($id_cate, $nb=15, $begin=0) {
		$query = $this->db->query('SELECT ftm.date_time AS date, u.pseudo AS pseudo, ft.name AS name,
				u.id AS userId,	ft.id AS id 
				FROM forums_topics_messages ftm
				JOIN users u ON u.id = ftm.id_users
				JOIN forums_topics ft ON ft.id = ftm.id_forums_topics
				WHERE id_forums_categories = ? AND
				ftm.date_time = 
				(
					SELECT MAX(ftm2.date_time) FROM forums_topics_messages ftm2
					JOIN forums_topics ft2 ON ftm2.id_forums_topics = ft2.id
					WHERE ft2.id = ft.id
				)
				ORDER BY ftm.date_time DESC
				LIMIT '.$begin.', '.$nb.'
  				', array($id_cate));
		return $query->result_array();
	}
	
	/* Return each messages from a specific topic */
	/* $id_topic is the chosen topic's id */
	public function get_messages($id_topic, $nb=15, $begin=0) {		
		$query = $this->db->query('SELECT u.pseudo AS pseudo, u.id AS userId,
				users_types.name AS ranks, f.message AS message, 
				f.date_time AS date,
				f.id AS id
				FROM forums_topics_messages f 
				JOIN users u ON f.id_users = u.id
				JOIN users_types ON u.id_users_types = users_types.id
				WHERE f.id_forums_topics = ? 
				ORDER BY f.id
				LIMIT '.$begin.', '.$nb.'', array($id_topic));
		return $query->result_array();
	}
	
	
	/* Return fil aria */
	/* $id_topic is the chosen topic's id */
	public function get_aria_categorie($id_categories) {
		$query = $this->db->query('SELECT id, name
				FROM forums_categories
				WHERE id= ?',
				array($id_categories));
		return $query->result_array();
	}
	
	
	/* Return fil aria */
	/* $id_topic is the chosen topic's id */
	public function get_aria_topic($id_topic) {
		$query = $this->db->query('SELECT ft.id AS topicId, ft.name AS topicName, fc.id AS categorieId, fc.name AS categorieName
				FROM forums_topics ft 
				JOIN forums_categories fc ON ft.id_forums_categories = fc.id
				WHERE ft.id= ?',
				array($id_topic));
		return $query->result_array();
	}
	
	public function countMess($id_topic) {
		return (int) $this->db->where('id_forums_topics', $id_topic)
		->count_all_results('forums_topics_messages');
	}
	
	public function countCategories($id_categorie) {
		return (int) $this->db->where('id_forums_categories', $id_categorie)
		->count_all_results('forums_topics');
	}
	
	/* Send a message */
	/* 
		$id_topic is the topic's id where the message will be sent
		$message is the message that will be sent
		$date_message is the date when the message is sent
		$user_id is the user's id who send the message
	*/
	public function send_message($id_topic,$message,$date_message,$user_id) {
		$this->db->insert('forums_topics_messages', array('message'=>$message,'date_time'=>$date_message,'id_forums_topics'=>$id_topic,'id_users'=>$user_id));
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
		$query = $this->db->query("SELECT id_forums_categories FROM forums_topics WHERE id = ?", array($id_topic));
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
		$this->db->insert('forums_topics', array('name'=>$topic_name,'id_forums_categories'=>$id_categorie, 'id_forums_topics_types' => 1));
		return $this->db->insert_id(); 
	}
}