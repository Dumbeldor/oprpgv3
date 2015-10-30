<?php
class Support_model extends CI_Model {
	
	//Constructor
	public function __construct() {
		$this->load->database();
	}
	
	public function getTicket($id=0) {
		if($id==0)
		{
			$query = $this->db->query('SELECT tickets_sujets.id AS id,  message, date_time AS date, sujet,
		       		pseudo	
				FROM tickets_messages
				JOIN tickets_sujets ON id_tickets_sujets = tickets_sujets.id
				JOIN users ON tickets_messages.id_users = users.id
				WHERE id_users = ?
				AND date_time = 
				(
					SELECT MAX(date_time) 
					FROM tickets_messages tm2
					WHERE tm2.id_tickets_sujets = tickets_sujets.id
				)
				',
				array($this->user->getId()));

			return $query->result_array();
		}
		else{
			$query = $this->db->query('SELECT ts.id AS id, message, date_time AS date,
						   sujet, pseudo
						   FROM tickets_messages tm
						   JOIN tickets_sujets ts ON tm.id_tickets_sujets = ts.id
						   JOIN users ON tm.id_users = users.id
						   WHERE ts.id = ?',
						   array($id));
			return $query->result_array();
		}
	}

}	
