<?php
class Map_model extends CI_Model {
    public function __construct() {
        $this->load->database();
    }
    
    public function getMap(){
       /* $query = $this->db->query("SELECT mt.in_island
                                  FROM maps m
                                  JOIN maps_types mt ON m.id = mt.id
                                  WHERE x = ? AND y = ?", array($this->character->getX(), $this->character->getY()));
        $island = $query->result_array()[0]['in_island'];


        if($island == 1) {
            //$query = $this->db->query("")
        }
        else if($island == 2) { //Si sur map océan sur case ILE
            //
            echo "OOO";
        }
        else {*/
            $query = $this->db->query("SELECT mt.id, mt.name, mt.image, mt.lvl, mt.in_island
                                      FROM maps m
                                      JOIN maps_types mt ON m.id = mt.id
                                      WHERE m.x = ? AND m.y = ?", array($this->character->getX(), $this->character->getY()));

            return $query->result_array()[0];
        //}
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
        $rand = mt_rand(0, 100);
        if($rand > 15) {
            $query = $this->db->query("SELECT RAND()*rarity as rate, id, name, description, file FROM objects WHERE is_block = 0
                                       ORDER BY rate ASC LIMIT 1");
            return $query->result_array()[0];
        }
        return null;
    }

    public function deplace($x, $y){
        $this->db->where('id', $this->character->getId())
            ->set('x', $x)
            ->set('y', $y)
            ->update('charactere');
    }
}
