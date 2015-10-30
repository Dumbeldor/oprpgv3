<?php
class Tchat_model extends CI_Model {
	public function __construct() {
		$this->load->database();
	}
  
	public function get_messages($id_tchat) {
		$query = $this->db->query("SELECT t.message, t.id, t.date_time, u.pseudo FROM tchats_messages t, users u WHERE t.id_tchats = ? AND t.id_users = u.id ORDER BY id DESC LIMIT 40", array($id_tchat));
		return $query->result();
	}
  
	public function save_msg($user_id, $msg, $id_tchat) {
		$data = array(
			'id_users' => $user_id,
			'message' => $msg,
			'id_tchats' => $id_tchat,
			'date_time' => date('Y-m-d H:i:s', time()),
		);
		return $this->db->insert('tchats_messages', $data);
	}
	
	public function get_id_tchat($id_message) {
		$query = $this->db->query("SELECT id_tchats FROM tchats_messages WHERE id = ?", array($id_message));
		return $query->result_array();
	}
	
	public function delete_message($id_message) {
		$this->db->delete('tchats_messages', array('id'=>$id_message));
	}
  
}