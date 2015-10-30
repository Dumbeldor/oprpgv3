<?php
class Support_model extends CI_Model {
	
	//Constructor
	public function __construct() {
		$this->load->database();
	}
	
	public function addTicket() {
		// On insère le sujet dans la table des sujets et on récupère l'id
		$data_tickets_sujets = array(
			'sujet' => $this->input->post('sujet'),
			'statut' => 0
		);
		$this->db->insert('tickets_sujets', $data_tickets_sujets);
		$ticket_id = $this->db->insert_id();
		
		// On insère le message en tant que message du sujet inséré avant
		$data_tickets_message = array(
			'message' => $this->input->post('message'),
			'date_time' => time(),
			'id_users' => $this->user->getId(),
			'id_tickets_sujets' => $ticket_id
		);
		$this->db->insert('tickets_messages', $data_tickets_message);
	}
	
	public function addMessage($idTicket) {
		$data = array(
			'message' => $this->input->post('message'),
			'date_time' => time(),
			'id_users' => $this->user->getId(),
			'id_tickets_sujets' => $idTicket
		);
		$this->db->insert('tickets_messages', $data);
	}
	
	public function getTicketUser($idTicket) {
		$query = $this->db->select('id_users')
		->from('tickets_messages')
		->where('id_tickets_sujets', $idTicket, '=')
		->get();
		
		$res = $query->result_array();
		if(count($res) > 0) {
			return $res[0]['id_users'];
		} else {
			return 0;
		}
	}
	
	public function getTicket() {
		$query = $this->db->query('SELECT tickets_sujets.id AS id,  message, date_time AS date,
			sujet, pseudo	
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
	
	public function getTicketMessages($id) {
		$query = $this->db->query('SELECT ts.id AS id, message, date_time AS date,
					   sujet, pseudo
					   FROM tickets_messages tm
					   JOIN tickets_sujets ts ON tm.id_tickets_sujets = ts.id
					   JOIN users ON tm.id_users = users.id
					   WHERE ts.id = ?
					   ORDER BY tm.date_time DESC',
					   array($id));
		
		return $query->result_array();
	}
}	
