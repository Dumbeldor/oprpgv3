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
				fc.id AS id, fc.name AS name, ut.name AS rank,
				fc.descr AS descr, fc.types, ft.name AS topicName,
				ft.id AS topicId, (SELECT COUNT(*) FROM forums_topics_messages WHERE is_block = 0 AND id_forums_topics = ft.id) AS countMsg,
				users.pseudo AS pseudo, users.id AS userId FROM forums_categories fc
				LEFT JOIN forums_topics ft ON ft.id_forums_categories = fc.id
				LEFT JOIN forums_topics_messages ftm ON ftm.id_forums_topics = ft.id
				LEFT JOIN users ON ftm.id_users = users.id
				LEFT JOIN users_types ut ON users.id_users_types = ut.id
				WHERE ftm.date_time = 
				(
					SELECT MAX(ftm2.date_time) FROM forums_topics_messages ftm2
					JOIN forums_topics ft2 ON ftm2.id_forums_topics = ft2.id
					WHERE ft2.id_forums_categories = fc.id AND ftm2.is_block = 0 AND ft2.is_block = 0
					GROUP BY fc.id
				)
				AND (ftm.is_block = 0 AND ft.is_block = 0 AND fc.is_block = 0 AND (fc.is_crew = 0 OR (fc.is_crew = 1 AND fc.id = ?)))				

				GROUP BY fc.id
				ORDER BY fc.sequence', array($this->user->getAttribute('crewId')));

		return $query->result_array();
	}
	
	/* Return each topics from a specific categories */
	/* $id_cate is the chosen cate's id */
	public function get_topics($id_cate, $nb=15, $begin=0) {
		$query = $this->db->query('SELECT ftm.date_time AS date, u.pseudo AS pseudo, ft.name AS name,
				u.id AS userId,	ft.id AS id, ftt.name AS type, ftm.id AS msgId, ut.name AS rank,
				(SELECT COUNT(*) FROM forums_topics_messages WHERE is_block = 0 AND id_forums_topics = ft.id) AS countMsg
				FROM forums_topics_messages ftm
				JOIN users u ON u.id = ftm.id_users
				JOIN users_types ut ON u.id_users_types = ut.id
				JOIN forums_topics ft ON ft.id = ftm.id_forums_topics
				JOIN forums_topics_types ftt ON ft.id_forums_topics_types = ftt.id
				JOIN forums_categories fc ON ft.id_forums_categories = fc.id
				WHERE id_forums_categories = ? AND
				ftm.date_time = 
				(
					SELECT MAX(ftm2.date_time) FROM forums_topics_messages ftm2
					JOIN forums_topics ft2 ON ftm2.id_forums_topics = ft2.id
					WHERE ft2.id = ft.id AND ftm2.is_block = 0 AND ft2.is_block = 0
				)
				AND ftm.is_block = 0 AND ft.is_block = 0 AND fc.is_block = 0 AND (fc.is_crew = 0
				OR (fc.is_crew = 1 AND fc.id = ?))
				ORDER BY ftt.id DESC, ftm.date_time DESC
				LIMIT '.$begin.', '.$nb.'
  				', array($id_cate, $this->user->getAttribute('crewId')));
		return $query->result_array();
	}
	
	/* Return each messages from a specific topic */
	/* $id_topic is the chosen topic's id */
	public function get_messages($id_topic, $nb=15, $begin=0) {
		
		return $this->db->select('u.pseudo AS pseudo, u.id AS userId,
				u.messNumber AS messNumber,
				users_types.name AS ranks, u.id_users_types AS ranksId, f.message AS message, 
				f.date_time AS date,
				f.id AS id')
			->from('forums_topics_messages f')
			->join('users u', 'f.id_users = u.id')
			->join('users_types', 'u.id_users_types = users_types.id')
			->where('f.id_forums_topics', $id_topic)
			->where('f.is_block', 0)
			->limit($nb, $begin)
			->order_by('f.id')
			->get()
			->result();
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
	
	/* Return boolean */
	/* if user in crew or not */
	public function iscrew_forum_categorie($id_categories) {
		$query = $this->db->query("SELECT id
								  FROM forums_categories
								  WHERE id = ? AND (is_crew = 0 OR
								  (is_crew = 1 AND id = ?))								  
								  ", array($id_categories, $this->user->getAttribute('crewId')));    
        if($query->num_rows() == 1) {
            return TRUE;
        }
        else {
            return FALSE;
        }
	}
	
	public function iscrew_forum_topic($id_topic) {
		$query = $this->db->query("SELECT ft.id
								  FROM forums_topics ft
								  JOIN forums_categories fc ON ft.id_forums_categories = fc.id
								  WHERE ft.id = ? AND (fc.is_crew = 0 OR (fc.is_crew = 1 AND fc.id = ?))
								  ", array($id_topic, $this->user->getAttribute('crewId')));    
        if($query->num_rows() == 1) {
            return TRUE;
        }
        else {
            return FALSE;
        }
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
		->where('is_block', 0)
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
	public function send_message($id_topic, $id_cat, $message,$date_message,$user_id) {
		$this->db->insert('forums_topics_messages', array('message'=>$message,'date_time'=>$date_message,'id_forums_topics'=>$id_topic,'id_users'=>$user_id));
		//if post in forum crew not incremente message !
		if($id_cat != $this->user->getAttribute('crewId')) {
			$this->db->where('id', $user_id);
			$this->db->set('messNumber', 'messNumber+1', FALSE);
			$this->db->update('users');
		}
	}
	
	/* Return the id of a topic, in a way to load this topic when the user send a message */
	/* $id_message is the message's id wich will be used in order to return topic's id */
	public function get_id_topic($id_message) {
		$query = $this->db->query("SELECT id_forums_topics FROM forums_topics_messages WHERE id = ?", array($id_message));
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
	public function delete_message($id_message, $id_topic) {
		$query = $this->db->query('SELECT fc.id FROM forums_topics ft
						 JOIN forums_categories fc ON ft.id_forums_categories = fc.id
						 WHERE ft.id = ?', array($id_topic));
		$idCategories = $query->result_array()[0]['id'];
		if($this->user->isAdmin() || $this->user->isModo() ||
			($this->user->getAttribute('crewId') == $idCategories && ($this->crew->isCapitaine() || $this->crew->isAdmin() || $this->crew->isModo()) )){
			if($idCategories != $this->user->getAttribute('crewId')) {
				$this->db->where('id', 'SELECT id_users FROM forums_topics_messages WHERE id = ?', array($id_message));
				$this->db->set('messNumber', 'messNumber-1', FALSE);
				$this->db->update('users');	
			}	
			$this->db->query('UPDATE forums_topics_messages ftm
							JOIN users u ON ftm.id_users = u.id SET ftm.is_block=1, u.messNumber=messNumber-1 WHERE ftm.id=?', array($id_message));
		}
		else{
			$this->db->query('UPDATE forums_topics_messages ftm
							  SET ftm.is_block=1 WHERE ftm.id=? AND ftm.id_users=?', array($id_message, $this->user->getId()));
			if($this->db->affected_rows() == 0)
				return false;
			if($idCategories != $this->user->getAttribute('crewId')) {
				$this->db->where('id', $this->user->getId());
				$this->db->set('messNumber', 'messNumber-1', FALSE);
				$this->db->update('users');	
			}
		}
		$query = $this->db->query("SELECT ftm.id_forums_topics FROM forums_topics_messages ftm
									WHERE ftm.id_forums_topics = (SELECT ftm2.id_forums_topics FROM forums_topics_messages ftm2
									WHERE ftm2.id = ?) AND ftm.is_block = 0", array($id_message));
		$resultat = $query->result_array();
        if(count($resultat) == 0) {
            $this->db->where('id', $id_topic);
			$this->db->set('is_block', 1);
			$this->db->update('forums_topics');
			return false;
        }
		return true;
	}
	
	/* Creation of a new topic */
	/* 
		$id_categorie is the categorie's id of the categorie where the topic will be send
		$topic_name is the name of the topic
	*/
	public function send_topic($id_categorie,$topic_name, $type=1) {
		$this->db->insert('forums_topics', array('name'=>$topic_name,'id_forums_categories'=>$id_categorie, 'id_forums_topics_types' => $type));
		return $this->db->insert_id(); 
	}
	
	/*
	 *Return true or false for topic open or close
	 */
	public function is_close($id) {
		$query = $this->db->query('SELECT is_block
				FROM forums_topics
				WHERE id= ?',
				array($id));
		return $query->result_array();
	}
	
	/*
	 * Close topic
	 */
	public function close_topic($id_topic) {
		$this->db->where('id', $resultat[0]['id_forums_topics']);
		$this->db->set('is_block', 1);
		$this->db->update('forums_topics');	
	}
	/*
	 * Delete topic
	 */
	public function delete_topic($id_topic) {
		$this->db->where('id_forums_topics', $id_topic);
		$this->db->set('is_block', 1);
		$this->db->update('forums_topics_messages');
		
		$query = $this->db->query('SELECT id_users FROM forums_topics_messages
						 WHERE id_forums_topics = ?', array($id_topic));
		$idUsers = $query->result_array();
		foreach($idUsers AS $idUser) {
			$this->db->where('id', $idUser['id_users']);
			$this->db->set('messNumber', 'messNumber-1', FALSE);
			$this->db->update('users');
		}		
		
		$this->db->where('id', $id_topic);
		$this->db->set('is_block', 1);
		$this->db->update('forums_topics');
		return true;
	}
	
	public function getQuote($idTopic, $idCitation) {
		$query = $this->db->query('SELECT message, pseudo
								  FROM forums_topics_messages
								  JOIN users ON forums_topics_messages.id_users = users.id
								  WHERE forums_topics_messages.id_forums_topics = ? AND forums_topics_messages.id = ? AND is_block = 0',
					array($idTopic, $idCitation));
		return $query->result_array();
	}
	
	public function getMess($id, $categorieId) {
		if($this->user->isAdmin() || $this->user->isModo() ||
			($this->user->getAttribute('crewId') == $categorieId && ($this->crew->isCapitaine() || $this->crew->isAdmin() || $this->crew->isModo()) )){
			$query = $this->db->query('SELECT message
								  FROM forums_topics_messages
								  WHERE id = ?',
					array($id));
		}
		else {
			$query = $this->db->query('SELECT message
								  FROM forums_topics_messages
								  WHERE id_users = ? AND id = ?',
					array($this->user->getId(), $id));
		}
		return $query->result_array();
	}
	
	public function edit($id, $message, $categorieId) {
		if($this->user->isAdmin() || $this->user->isModo() ||
			($this->user->getAttribute('crewId') == $categorieId && ($this->crew->isCapitaine() || $this->crew->isAdmin() || $this->crew->isModo()) )){
			$this->db->query('UPDATE forums_topics_messages
						SET message = ? WHERE id = ?', array($message, $id));
		}
		else {
			$this->db->query('UPDATE forums_topics_messages
						SET message = ? WHERE id = ? AND id_users = ?', array($message, $id, $this->user->getId()));
		}
		if($this->db->affected_rows() == 0)
			return false;
		return true;
	}
	
	
}
