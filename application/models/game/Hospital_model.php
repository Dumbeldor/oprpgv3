<?php
class Hospital_model extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }

    public function heal($price) {
        $this->db->where('id', $this->character->getId())
                 ->set('life', $this->character->getMaxLife())
                 ->set('berry', "berry-$price", false)
                 ->update('charactere');
    }
}