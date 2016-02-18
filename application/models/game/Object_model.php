<?php
class Object_model extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }

    public function equip($id){
        $this->load->model('game/bag_model');

        $query = $this->db->query("SELECT o.id, o.name AS name, ot.name AS type
                                    FROM bags_objects bo
                                    JOIN objects o ON bo.id_objects = o.id
                                    JOIN objects_types ot ON o.id_objects_types = ot.id
                                    WHERE bo.id = ?", array($id));
        $object = $query->result_array()[0];

        $name = $object['name'];
        $type = $object['type'];
        $idObject = $object['id'];
        if($type == "weapon") {
            $this->load->library('weapon');
            $this->db->delete('bags_objects', array('id'=>$id));

            $this->bag_model->addObject($this->weapon->getId());

            $this->db->where('id', $this->character->getId())
                ->set('id_objects', $idObject)
                ->update('charactere');
        }
        else if($type == "armor") {
            $this->load->library('armor');
            $this->db->delete('bags_objects', array('id'=>$id));

            $this->bag_model->addObject($this->armor->getId());

            $this->db->where('id', $this->character->getId())
                ->set('id_objects_1', $idObject)
                ->update('charactere');
        }
        else {
            return false;
        }
        return $name;
    }

    public function unequip($id) {
        $this->load->model('game/bag_model');

        $query = $this->db->query("SELECT o.name AS name, ot.name AS type
                                    FROM objects o
                                    JOIN objects_types ot ON o.id_objects_types = ot.id
                                    WHERE o.id = ?", array($id));
        $object = $query->result_array()[0];

        $name = $object['name'];
        $type = $object['type'];
        if($type == "weapon") {
            $this->load->library('weapon');
            if(!$this->bag_model->addObject($this->weapon->getId()))
                return false;

            $this->db->where('id', $this->character->getId())
                    ->set('id_objects', null)
                    ->update('charactere');
        }
        else if($type == "armor") {
            $this->load->library('armor');

            if(!$this->bag_model->addObject($this->armor->getId()))
                return false;

            $this->db->delete('charactere', array('id_objects_1'=>$id));
        }
        else {
            return false;
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