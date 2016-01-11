<?php
class Crews_model extends CI_Model {
	
	//Constructor
	public function __construct() {
		$this->load->database();
	}
    
	public function hydrate(){
		 $query = $this->db->query("SELECT crews.name AS name, crews.id AS id, crews_grades.name as rank
							  FROM crews_users
							  JOIN users ON crews_users.id_users = users.id
							  JOIN crews ON crews_users.id = crews.id
							  JOIN crews_grades ON crews_users.id_crews_grades = crews_grades.id
							  WHERE users.id = ?", $this->user->getId());
	   $crew = $query->result_array();
	   if($crew == NULL) {
			$this->crew->setId(NULL);
	   } else {
		$this->crew->hydrate($crew[0]);
	   }
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
		    'id_crews_banks' => $this->db->insert_id(),
			'id_faction' => $this->user->getFaction()
		);	
		$this->db->insert('crews', $data);
		
		$this->crew->setId($this->db->insert_id());
		$this->crew->setName($this->input->post('crewName'));
		$this->crew->setRank("Capitaine");
		
		$data = array(
			'id' => $this->db->insert_id(),
			'id_users' => $this->user->getId(),
			'id_crews_grades' => 5
		);
		$this->db->insert('crews_users', $data);
		
		$data = array(
			'id' => $this->db->insert_id(),
			'name' => $this->input->post('crewName'),
			'descr' => 'Forum privé de l\'équipage '.$this->input->post('crewName'),
			'sequence' => 50,
			'is_crew' => 1
		);
		$this->db->insert('forums_categories', $data);
		
		$data = array(
			'name' => 'Bienvenue sur votre forum',
			'id_forums_categories' => $this->db->insert_id(),
			'id_forums_topics_types' => 1
		);
		$this->db->insert('forums_topics', $data);
		
		$data = array(
			'message' => 'Votre forum privé vien d\'être mis en ligne.
					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l\'index de l\'équipage !
						  Bon jeu.',
			'date_time' => time(),
			'id_forums_topics' => $this->db->insert_id(),
			'id_users' => 13
		);
		$this->db->insert('forums_topics_messages', $data);
		
		$this->user->setAttribute('crew', $this->input->post('crewName'));
}

	public function changeCrew($idCrew) {
		$this->db->where('id_users', $this->user->getId())
				->where('id_faction', $this->user->getFaction())
				->update('crews_users', array('id' => $idCrew));
	}

	public function countCrews(){
		return (int) $this->db
			->where('is_block', 0)
			->where('id_faction', $this->user->getFaction())
			->count_all_results('crews');
	}

	public function listeCrews($nb, $begin=0){
		$query = $this->db->query('SELECT id, name, money,
					page, date_time AS dateCrew
					FROM crews
					WHERE is_block = 0 AND id_faction = ?
					ORDER BY id
					LIMIT '.$begin.', '.$nb.'
					', array($this->user->getFaction()));
		return $query->result_array();
	}
	
	public function viewCrews($id) {
		$query = $this->db->query('SELECT id, name,
					money, file, date_time as dateCrew
					FROM crews
					WHERE is_block = 0 AND id = ?
					', array($id));
		return $query->result_array();
	}
	public function viewMyCrew() {
		$query = $this->db->query('SELECT id, name,
					money, page, file, date_time as dateCrew
					FROM crews
					WHERE is_block = 0 AND id = ?
					', array($this->crew->getId()));
		return $query->result_array();
	}
	
	public function listUsers($id) {
		$query = $this->db->query('SELECT users.id, users.pseudo, crews_grades.name AS grade, crews_grades.id AS gradeId,
								  users_types.name AS rank
					FROM crews_users
					JOIN users ON id_users = users.id
					JOIN crews_grades ON id_crews_grades = crews_grades.id
					JOIN users_types ON users.id_users_types = users_types.id
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
								  u.pseudo, users_types.name AS rank
								  FROM crews_candidacy cc
								  JOIN users u ON cc.id_users = u.id
								  JOIN users_types ON u.id_users_types = users_types.id
								  WHERE cc.id_crews = ?', array($this->crew->getId()));
		return $query->result_array();
	}
	
	public function accept($id){
		$this->db->delete('crews_candidacy', array('id_users' => $id));
		//If it is already in a crew to remove it
		if($this->db->affected_rows() == 0)
			return false;
		$this->db->delete('crews_users', array('id_users' => $id));
		$data = array(
			'id' => $this->crew->getId(),
		    'id_users' => $id,
			'id_crews_grades' => 2
		);
		$this->db->insert('crews_users', $data);


		$data = array(
			'content' => 'Bienvenue dans l\'équipe '.$this->crew->getName().'
						  Vous avez été accepté par '.$this->user->getPseudo().' qui est '.$this->crew->getRank(). '
						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !',
			'date_time' => time(),
			'id_author' => 13,
			'id_dest' => $id,        
		);
		$this->db->insert('privates_messages', $data);
		$msg_id = $this->db->insert_id();
		
		$data = array(
			'id_msg' => $msg_id,
			'id_user' => 13,
			'is_read' => 1
		);
		$this->db->insert('privates_messages_appartenance', $data);
		
		$data = array(
			'id_msg' => $msg_id,
			'id_user' => $id,
			'is_read' => 0
		);
		$this->db->insert('privates_messages_appartenance', $data);

		return true;
	}
	
	public function refuse($id){
		$this->db->delete('crews_candidacy', array('id_users' => $id, 'id_crews' => $this->crew->getId()));

		$data = array(
			'content' => 'Bonjour, l\'équipe '.$this->crew->getName().' ne vous a pas accepté.'.'
						  Candidature traité par '.$this->user->getPseudo().' qui est '.$this->crew->getRank(). '
						  Vous pouvez dès à présent dès à présent chercher un autre équipage !..
						  Bonne chance !',
			'date_time' => time(),
			'id_author' => 13,
			'id_dest' => $id,        
		);
		$this->db->insert('privates_messages', $data);
		$msg_id = $this->db->insert_id();
		
		$data = array(
			'id_msg' => $msg_id,
			'id_user' => 13,
			'is_read' => 1
		);
		$this->db->insert('privates_messages_appartenance', $data);
		
		$data = array(
			'id_msg' => $msg_id,
			'id_user' => $id,
			'is_read' => 0
		);
		$this->db->insert('privates_messages_appartenance', $data);
	}
	
	public function changeTexte(){
		$data = array(
			'page' => $this->input->post('content')
		);
		$this->db->where('id', $this->crew->getId());
		$this->db->update('crews', $data);
	}
	
	public function recherche() {
		$this->db->select('id, name, date_time AS date');
		$this->db->from('crews');
		$this->db->like('name', $this->input->post('crewName'));
		$this->db->where('is_block', 0);
		$this->db->where('id_faction', $this->user->getFaction());
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
		$this->db->where('id_users', $id, 'id', $this->crew->getId());
		$this->db->update('crews_users', array('id_crews_grades' => 5));
		
		//if user not in crew
		if($this->db->affected_rows() == 0)
			return false;
		
		$this->db->where('id_users', $this->user->getId());
		$this->db->update('crews_users', array('id_crews_grades' => 4));
		
		return true;
	}
	
	public function kick($id) {
		$this->db->delete('crews_users', array('id_users' => $id, 'id' => $this->crew->getId()));
		if($this->db->affected_rows() == 0)
			return false;
		return true;
	}
	
	public function listGrade() {
		$query = $this->db->query('SELECT id, name
					FROM crews_grades');
		return $query->result_array();
	}
	
	public function changeRanks($id) {
		$data = array(
			'id_crews_grades' => $this->input->post('userGrade')
		);
		$this->db->where(array('id_users' => $id, 'id' => $this->crew->getId()));
		$this->db->update('crews_users', $data);
		if($this->db->affected_rows() == 0)
			return false;
		return true;
	}
	
	public function getText() {
		$query = $this->db->query('SELECT page
					FROM crews
					WHERE id = ?', array($this->crew->getId()));
		return $query->result_array();
	}
	
	public function leave() {
		$this->db->delete('crews_users', array('id_users' => $this->user->getId(), 'id' => $this->crew->getId()));
	}
	
	public function dissolve($idCrew) {
		$this->db->delete('crews_users', array('id' => $idCrew));	
		$this->db->delete('crews', array('id' => $idCrew));
	}
	
	public function inFaction($id) {
		$nb = $this->db->where('id', $id)
    					  ->where('id_faction', $this->user->getFaction())
						  ->where('is_block', 0)
            ->count_all_results('crews');
		return($nb == 0) ? true : false;
	}
	
}