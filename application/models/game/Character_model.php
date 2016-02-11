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
    public function setBerryEnergies($berry, $energies) {
        $this->db->where('id', $this->character->getId())
            ->set('berry', $berry)
            ->set('energies', $energies)
            ->update('charactere');
    }

}