<?php
class Weapon_model extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }

    public function hydrate(){
        $query = $this->db->query("SELECT o.id, name, attack, o.speed, defense, attackMag
                                    FROM objects o INNER JOIN charactere c ON c.id_objects = o.id
                                    WHERE c.id = ?", array($this->character->getId()));
        return $query->result_array()[0];
    }
}