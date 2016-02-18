<?php
class Hostel_model extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }
    public function sleep($berry) {
        $this->db->where('id', $this->character->getId())
                ->set('energies', $this->character->getMaxEnergy())
                ->set('berry', $berry)
                ->update('charactere');
    }
}