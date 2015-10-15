<?php
class Crews_model extends CI_Model {
	
	//Constructor
	public function __construct() {
		$this->load->database();
	}
    
    /* Return true if user in crew */
    public function inCrew() {
        $query = $this->db->query("SELECT users.id FROM crews_users
                                  JOIN users ON crews_users.id_users = users.id
                                  JOIN crews ON crews_users.id = crews.id
                                  WHERE users.id = ? AND id_crews_grades != 1", array($this->user->getId()));    
        if($query->num_rows() == 1) {
            return TRUE;
        }
        else {
            return FALSE;
        }
    }
    
	public function createCrew() {
		$data = array(
		    'id' => ''
		);
		$this->db->insert('crews_banks', $data);
		$data = array(
		    'name' => $this->input->post('crewName'),
		    'money' => 0,
		    'date_time' => time(),
		    'id_crews_types' => 1,
		    'id_crews_banks' => $this->db->insert_id()
		);
	
		$this->db->insert('crews', $data);
		$data = array(
			'id' => $this->db->insert_id(),
			'id_users' => $this->user->getId(),
			'id_crews_grades' => 5
		);
		$this->db->insert('crews_users', $data);
		$this->user->setAttribute('crew', $this->input->post('crewName'));
}

	public function changeCrew($idCrew) {
		$this->db->where('id_users', $this->user->getId());
		$this->db->update('crews_users', array('id' => $idCrew));
	}

	public function countCrews(){
		return (int) $this->db
			->count_all_results('crews');
	}

	public function listeCrews($nb, $begin=0){
		$query = $this->db->query('SELECT id, name, money,
					page, date_time AS dateCrew
					FROM crews
					ORDER BY id
					LIMIT '.$begin.', '.$nb.'
					');
		return $query->result_array();
	}
	
	public function viewCrews($id) {
		$query = $this->db->query('SELECT id, name,
					money, file, date_time as dateCrew
					FROM crews
					WHERE id = ?
					', array($id));
		return $query->result_array();
	}
	public function viewMyCrew() {
		$query = $this->db->query('SELECT id, name,
					money, page, file, date_time as dateCrew
					FROM crews
					WHERE id = ?
					', array($this->user->getAttribute('crewId')));
		return $query->result_array();
	}
	
	public function listUsers($id) {
		$query = $this->db->query('SELECT users.id, users.pseudo, crews_grades.name AS grade
					FROM crews_users
					JOIN users ON id_users = users.id
					JOIN crews_grades ON id_crews_grades = crews_grades.id
					WHERE crews_users.id = ?', array($id));
		return $query->result_array();
	}
	
	public function createCandidacy($id){
		$data = array(
		    'title' => $this->input->post('title'),
		    'texte' => $this->input->post('content'),
		    'date_time' => time(),
		    'id_users' => $this->user->getId(),
		    'id_crews' => $id
		);
	
		$this->db->insert('crews_candidacy', $data);
	}
	
	public function listCandidates(){
		$query = $this->db->query('SELECT cc.id, title, texte,
								  cc.date_time dateCandi, u.id AS idUser,
								  u.pseudo
								  FROM crews_candidacy cc
								  JOIN users u ON cc.id_users = u.id
								  WHERE cc.id_crews = ?', array($this->user->getAttribute('crewId')));
		return $query->result_array();
	}
	
	public function accept($id){
		$this->db->delete('crews_candidacy', array('id_users' => $id));
		//If it is already in a crew to remove it
		if($this->db->affected_rows() == 0)
			return false;
		$this->db->delete('crews_users', array('id_users' => $id));
		$data = array(
			'id' => $this->user->getAttribute('crewId'),
		    'id_users' => $id,
			'id_crews_grades' => 2
		);
		$this->db->insert('crews_users', $data);
		$data = array(
			'content' => 'Bienvenue dans l\'équipe '.$this->user->getAttribute('crewName').'
						  Vous avez été accepté par '.$this->user->getPseudo().' qui est '.$this->user->getAttribute('crewRank'). '
						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !',
			'date_time' => time(),
			'id_users' => 13,
			'id_users_1' => $id
		);
		$this->db->insert('privates_messages', $data);
		return true;
	}
	
	public function refuse($id){
		$this->db->delete('crews_candidacy', array('id_users' => $id, 'id_crews' => $this->user->getAttribute('crewId')));
		$data = array(
			'content' => 'Bonjour, l\'équipe '.$this->user->getAttribute('crewName').' ne vous a pas accepté.'.'
						  Candidature traité par '.$this->user->getPseudo().' qui est '.$this->user->getAttribute('crewRank'). '
						  Vous pouvez dès à présent dès à présent chercher un autre équipage !..
						  Bonne chance !',
			'date_time' => time(),
			'id_users' => 13,
			'id_users_1' => $id
		);
		$this->db->insert('privates_messages', $data);
	}
	
	public function changeTexte(){
		$data = array(
			'page' => $this->input->post('content')
		);
		$this->db->where('id', $this->user->getAttribute('crewId'));
		$this->db->update('crews', $data);
	}
	
	public function recherche() {
		$this->db->select('id, name, date_time AS date');
		$this->db->from('crews');
		$this->db->like('name', $this->input->post('crewName'));
		$query = $this->db->get();
		return $query->result_array();
	}
	
	public function pendingRequest($id) {
		$query = $this->db->query("SELECT id FROM crews_candidacy WHERE id_crews = ?", array($id));    
        if($query->num_rows() == 1) {
            return TRUE;
        }
        else {
            return FALSE;
        }
	}
	
	public function letLead($id) {
		$this->db->where('id_users', $id, 'id', $this->user->getAttribute('crewId'));
		$this->db->update('crews_users', array('id_crews_grades' => 5));
		
		//if user not in crew
		if($this->db->affected_rows() == 0)
			return false;
		
		$this->db->where('id_users', $this->user->getId());
		$this->db->update('crews_users', array('id_crews_grades' => 4));
		
		return true;
	}
	
	public function leave() {
		$this->db->delete('crews_users', array('id_users' => $this->user->getId(), 'id' => $this->user->getAttribute('crewId')));
	}
	
}