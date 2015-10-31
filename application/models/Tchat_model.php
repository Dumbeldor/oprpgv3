<?php
class Tchat_model extends CI_Model {
	public function __construct() {
		$this->load->database();
	}
	
	public function listTchat() {
		$query = $this->db->query("SELECT t.id, t.name, tt.descr FROM tchats t, tchats_types tt WHERE t.is_block = 0 and t.id_tchats_types = tt.id");
		return $query->result_array();
	}
  
	public function get_messages($id_tchat) {
		$query = $this->db->query("SELECT t.message, t.id, t.date_time, u.pseudo, ut.id as idRanks FROM tchats_messages t
								  JOIN users u ON t.id_users = u.id
								  JOIN users_types ut ON u.id_users_types = ut.id
								  WHERE t.id_tchats = ? ORDER BY id DESC LIMIT 40
								  ", array($id_tchat));
		return $query->result();
	}
  
	public function save_msg($user_id, $msg, $id_tchat) {
		$query = $this->db->query("SELECT COUNT(*) AS nbMess FROM tchats_messages WHERE id_tchats = ?", array($id_tchat));
		$nbMess = $query->result_array()[0]['nbMess'];
		if($nbMess > 30){				
			$this->db->order_by('id');
			$this->db->limit(1);
			$this->db->delete('tchats_messages', array('id_tchats' => $id_tchat));
		}
		$data = array(
			'id_users' => $user_id,
			'message' => $msg,
			'id_tchats' => $id_tchat,
			'date_time' => date('Y-m-d H:i:s', time()),
		);
		$this->db->insert('tchats_messages', $data);
	}
	
	public function get_id_tchat($id_message) {
		$query = $this->db->query("SELECT id_tchats FROM tchats_messages WHERE id = ?", array($id_message));
		return $query->result_array();
	}
	
	public function delete_message($id_message) {
		$this->db->delete('tchats_messages', array('id'=>$id_message));
	}
  
}