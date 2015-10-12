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
			'id_crews_grades' => 4
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
					money, page, file, date_time as dateCrew
					FROM crews
					WHERE id = ?
					', array($id));
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
	
}