<?php
class Character_model extends CI_Model {
    public function __construct() {
        $this->load->database();
    }

    public function setBerry($berry){
        $this->db->where('id', $this->character->getId())
            ->set('berry', $berry)
            ->update('charactere');
    }

}