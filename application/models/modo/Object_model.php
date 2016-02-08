<?php
class Object_model extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }

    public function getTypes() {
        $query = $this->db->query("SELECT id, name FROM objects_types WHERE is_block = 0");
        return $query->result_array();
    }

    public function getObjectsIdName(){
        $query = $this->db->query("SELECT id, name
                                  FROM objects
                                  WHERE is_block = 0");

        return $query->result_array();
    }

    public function getObjects(){
        $query = $this->db->query("SELECT o.id, o.name, o.is_block, ot.name AS type FROM objects o
                                  JOIN objects_types ot ON o.id_objects_types = ot.id
                                  ORDER BY rarity, o.id");
        return $query->result_array();
    }

    public function getObject($id){
        $query = $this->db->query("SELECT * FROM objects WHERE id = ?", array($id));
        return $query->result_array()[0];
    }

    public function addType($name) {
        $this->db->insert('objects_types', array('name' => $name));
    }
    public function addObject($name, $description, $price, $attack, $speed, $defense, $addLife, $addHaki, $rarity, $type){
        $this->db->insert('objects', array('name' => $name, 'description' => $description,
                                            'price' => $price, 'attack' => $attack,
                                            'speed' => $speed, 'defense' => $defense,
                                            'addLife' => $addLife, 'addHaki' => $addHaki,
                                            'rarity' => $rarity, 'id_objects_types' => $type));
    }

    public function modifyObject($id, $name, $description, $price, $attack, $speed, $defense, $addLife, $addHaki, $rarity, $type, $is_block) {
        $this->db->where('id', $id)
        ->update('objects', array('name' => $name, 'description' => $description,
            'price' => $price, 'attack' => $attack,
            'speed' => $speed, 'defense' => $defense,
            'addLife' => $addLife, 'addHaki' => $addHaki,
            'rarity' => $rarity, 'id_objects_types' => $type, 'is_block' => $is_block));
    }

    public function getLastId(){
        $query = $this->db->query("SELECT MAX(id) AS nb FROM objects");
        return $query->result_array()[0]['nb'];
    }
}