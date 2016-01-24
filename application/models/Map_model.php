<?php
class Map_model extends CI_Model {
    public function __construct() {
        $this->load->database();
    }
    
    public function getMap(){
        $query = $this->db->query("SELECT mt.name
                                  FROM maps m
                                  JOIN maps_types mt ON m.id = mt.id
                                  WHERE x = ? AND y = ?", array($this->character->getX(), $this->character->getY()));
        $name = $query->result_array()[0];

        if($name == "city") {
            //$query = $this->db->query("")
        }
        else if($name == "island") {
            //
        }
        else {
            $query = $this->db->query("SELECT mt.id, mt.name, mt.image, mt.lvl
                                      FROM maps m
                                      JOIN maps_types mt ON m.id = mt.id
                                      WHERE m.x = ? AND m.y = ?", array($this->character->getX(), $this->character->getY()));

            return $query->result_array()[0];
        }
    }
    
    public function getMaps($x=null, $y=null){
        if($x == null OR $y == null) {
            $query = $this->db->query("SELECT mt.id, mt.name, mt.lvl, m.x, m.y
                                      FROM maps m
                                      JOIN maps_types mt ON m.id = mt.id
                                      WHERE x BETWEEN ? AND ?
                                      AND y BETWEEN ? AND ? ORDER BY y, x",
                array($this->character->getXMin(), $this->character->getXMax(), $this->character->getYMin(), $this->character->getYMax()));
            return $query->result_array();
        }
        else{
            $query = $this->db->query("SELECT mt.id, mt.name, mt.lvl, m.x, m.y
                                      FROM maps m
                                      JOIN maps_types mt ON m.id = mt.id
                                      WHERE x BETWEEN ? AND ?
                                      AND y BETWEEN ? AND ? ORDER BY y, x",
                array($x-100, $x+100, $y-100, $y+100));
            return $query->result_array();
        }
    }
    
    
    public function search(){
        //$query = $this->db->query("SELECT ")
    }

    public function deplace($x, $y){
        $this->db->where('id', $this->character->getId())
            ->set('x', $x)
            ->set('y', $y)
            ->update('charactere');
    }
}
