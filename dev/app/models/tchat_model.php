<?php
class Tchat_model extends CI_Model {
	public function __construct() {
		$this->load->database();
	}
  
	public function get_messages($id_tchat) {
		$query = $this->db->query("SELECT t.message, t.message_id, t.message_date, u.user_pseudo FROM tchats_messages t, users u WHERE t.tchat_id = ? AND t.user_id = u.user_id ORDER BY message_id DESC LIMIT 40", array($id_tchat));
		return $query->result();
	}
  
	public function save_msg($user_id, $msg, $id_tchat) {
		$data = array(
			'user_id' => $user_id,
			'message' => $msg,
			'tchat_id' => $id_tchat,
			'message_date' => date('Y-m-d', time()),
		);
		return $this->db->insert('tchats_messages', $data);
	}
	
	public function get_id_tchat($id_message) {
		$query = $this->db->query("SELECT tchat_id FROM tchats_messages WHERE message_id = ?", array($id_message));
		return $query->result_array();
	}
	
	public function delete_message($id_message) {
		$this->db->delete('tchats_messages', array('message_id'=>$id_message));
	}
  
}