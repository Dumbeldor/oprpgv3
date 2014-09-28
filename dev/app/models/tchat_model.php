<?php
class Tchat_model extends CI_Model {
  public function __construct() {
    $this->load->database();
  }
  
  public function get_messages() {
    $date_oldest_msg = time() - 3600*24*3;
    $query = $this->db->query("SELECT t.message, t.date, u.pseudo FROM tchat t, users u WHERE t.date > ? AND t.id_proprio = u.id ORDER BY date DESC LIMIT 40", array($date_oldest_msg));
    return $query->result();
  }
  
  public function save_msg($user_id, $msg) {
    $data = array(
        'id_proprio' => $user_id,
        'message' => $msg,
        'date' => time(),
    );
    return $this->db->insert('tchat', $data);
  }
}