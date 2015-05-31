<?php
class Private_messages_model extends CI_Model {
	//Constructeur
	public function __construct() {
		$this->load->database();
	}
	
	//Selection des MP
	public function get_messages($id_user) {
		$query = $this->db->query("SELECT u.user_id, u.user_pseudo, u.perso_id, u.usert_id, p.user_id, p.user_id_users, p.pmess_id, p.pmess_content, p.pmess_date, p.pmess_read, p.pmess_delete FROM privates_messages p, users u WHERE p.user_id = ? AND p.user_id_users = u.user_id ORDER BY pmess_date DESC", array($id_user)); //On sélectionne tous les MP par ordre du plus récent au plus ancien
		return $query->result_array();
	}
	
	public function get_messages_sent($id_user) {
		$query = $this->db->query("SELECT u.user_id, u.user_pseudo, u.perso_id, u.usert_id, p.user_id, p.user_id_users, p.pmess_id, p.pmess_content, p.pmess_date, p.pmess_read, p.pmess_delete FROM privates_messages p, users u WHERE p.user_id_users = ? AND p.user_id = u.user_id ORDER BY pmess_date DESC", array($id_user));
		return $query->result_array();
	}
	
	//Envoi d'un MP
	public function send_message($id_sender,$id_receiver,$content,$pm_date) {
		return $this->db->insert('privates_messages', array('pmess_content'=>$content,'pmess_date'=>$pm_date,'pmess_read'=>false,'pmess_delete'=>false,'user_id'=>$id_sender,'user_id_users'=>$id_receiver));
	}
	
	//Suppression d'un MP
	public function delete_message($id_pm) {
		return $this->db->delete('privates_messages', array('pmess_id'=>$id_pm));
	}
}
?>