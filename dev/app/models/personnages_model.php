<?php
class Personnages_model extends CI_Model {
  public function __construct() {
    $this->load->database();
  }
  
  public function is_personnage_deblocable($perso_id) {
    $query_perso = $this->db->query('SELECT * FROM personnages WHERE perso_id = ?', array($perso_id));
    if($query_perso->num_rows() == 1) {
      $perso = $query_perso->row_array();
      if($perso['perso_block'] == 1) {
        return TRUE;
      }
    }
    return FALSE;
  }
}

