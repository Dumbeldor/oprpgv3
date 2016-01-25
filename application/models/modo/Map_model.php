<?php
class Map_model extends CI_Model {
    public function __construct() {
        $this->load->database();
    }
    
    public function listObjects(){
        $query = $this->db->query("SELECT id, name
                                  FROM objects
                                  WHERE is_block = 0");
	
        return $query->result_array();
    }
    
    public function listMonsters() {
        $query = $this->db->query("SELECT id, name, lvl
                                  FROM monster
                                  WHERE is_block = 0");
        return $query->result_array();
    }
	
	public function addType($name, $lvl, $objects, $monsters) {
		$this->db->insert('maps_types', array(
			'name' => $name,
			'lvl' => $lvl
		));
		
		$id = $this->db->insert_id();
		
		if(!empty($objects)){
			foreach($objects AS $object) {
				echo $object.'<br>';
				$this->db->insert('maps_types_objects', array(
					'id' => $id,
					'id_objects' => $object
				));
			}
		}
		if(!empty($monsters)) {
			foreach($monsters AS $monster) {
				$this->db->insert('maps_types_monster', array(
					'id' => $monster,
					'id_maps_types' => $id
				));
			}
		}
		
	}
	
	public function getLastId(){
		$query = $this->db->query("SELECT MAX(id) AS nb FROM maps_types");
		return $query->result_array()[0]['nb'];
	}

	public function getTypes(){
		$query = $this->db->query("SELECT id, name FROM maps_types");
		return $query->result_array();
	}

	public function getMaps($x, $y) {
		$query = $this->db->query("SELECT mt.id, mt.name, mt.lvl, m.x, m.y
                                      FROM maps m
                                      JOIN maps_types mt ON m.id = mt.id
                                      WHERE x BETWEEN ? AND ?
                                      AND y BETWEEN ? AND ? ORDER BY y, x",
			array($x-5, $x+5, $y-5, $y+5));
		return $query->result_array();
	}

	public function addMap($x, $y, $type) {
		$this->db->insert('maps', array(
			'x' => $x,
			'y' => $y,
			'id' => $type
		));
	}

	public function exist($x, $y) {
		$nb = $this->db->where('x', $x)
			->where('y', $y)
			->count_all_results('maps');
		if($nb > 0)
			return true;
		return false;
	}
}