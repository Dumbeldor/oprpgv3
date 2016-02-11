<?php
class Object_model extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }

    public function equip($id){
        $query = $this->db->query("SELECT o.name AS name, ot.name AS type
                                    FROM objects o
                                    JOIN objects_types ot ON o.id_objects_types = ot.id
                                    WHERE o.id = ?", array($id));
        $object = $query->result_array()[0];
        $name = $object['name'];
        $type = $object['type'];
        if($type == "weapon") {
            $this->db->where('id', $this->character->getId())
                ->set('id_objects', $id)
                ->update('charactere');
        }
        else if($type == "armor") {
            $this->db->where('id', $this->character->getId())
                ->set('id_objects_1', $id)
                ->update('charactere');
        }
        else {
            $name = false;
        }
        return $name;
    }

    public function getInventory() {

    }

    public function getTypeBerryName($id) {
        $query = $this->db->query("SELECT name, price, id_objects_types AS type FROM objects WHERE id = ?", array($id));
        return $query->result_array()[0];
    }

    public function getPrice($id) {
        $query = $this->db->query('SELECT price FROM objects WHERE id = ?', array($id));
        return $query->result_array()[0]['price'];
    }
}