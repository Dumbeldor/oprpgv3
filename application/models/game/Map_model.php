<?php
class Map_model extends CI_Model {
    public function __construct() {
        $this->load->database();
    }

    public function getType(){
        $query = $this->db->query("SELECT type FROM maps_island mi
                                  JOIN maps_types mt ON mi.id_maps_types = mt.id
                                  WHERE mi.id = ? AND x = ? AND y = ?",
                                  array($this->character->getIdIsland(), $this->character->getXMapsIsland(), $this->character->getYMapsIsland()));
        return $query->result_array()[0]['type'];
    }
    
    public function getMap(){
        if(!$this->character->inIsland()) {
            $query = $this->db->query("SELECT mt.id, mt.name, mt.image, mt.lvl, mt.type, mt.id_island
                                        FROM maps m
                                        JOIN maps_types mt ON m.id = mt.id
                                        WHERE m.x = ? AND m.y = ?", array($this->character->getX(), $this->character->getY()));

            return $query->result_array()[0];
        }
        else {
            $query = $this->db->query("SELECT mt.id, mt.name, mt.image, mt.lvl, mt.type, mt.id_island
                                        FROM maps_island mi
                                        JOIN maps_types mt ON mi.id_maps_types = mt.id
                                        WHERE mi.id = ? AND mi.x = ? AND mi.y = ?", array($this->character->getIdIsland(), $this->character->getXMapsIsland(), $this->character->getYMapsIsland()));

            return $query->result_array()[0];
        }
    }

    public function getIdIsland($x, $y){
        $query = $this->db->query("SELECT mt.id_island");
    }
    
    public function getMaps($x=null, $y=null){
        if(!$this->character->inIsland()) {
            $query = $this->db->query("SELECT mt.id, mt.name, mt.lvl, m.x, m.y
                                      FROM maps m
                                      JOIN maps_types mt ON m.id = mt.id
                                      WHERE x BETWEEN ? AND ?
                                      AND y BETWEEN ? AND ? ORDER BY y, x",
                array($this->character->getXMin(), $this->character->getXMax(), $this->character->getYMin(), $this->character->getYMax()));
            return $query->result_array();
        }
        else{
            $query = $this->db->query("SELECT mt.id, mt.name, mt.lvl, mi.x, mi.y
                                      FROM maps_island mi
                                      JOIN maps_types mt ON mi.id_maps_types = mt.id
                                      WHERE mi.id = ? AND x BETWEEN ? AND ?
                                      AND y BETWEEN ? AND ? ORDER BY y, x",
                array($this->character->getIdIsland(), $this->character->getXMin(), $this->character->getXMax(), $this->character->getYMin(), $this->character->getYMax()));
            return $query->result_array();
        }
    }
    
    
    public function search(){
        $rand = mt_rand(0, 100);
        if($rand > 15) {
            $query = $this->db->query("SELECT RAND()*rarity as rate, o.id, name, description, file
                                       FROM objects o
                                       JOIN maps_types_objects mto ON mto.id_objects = o.id
                                       WHERE mto.id =
                                       (SELECT mi.id_maps_types FROM maps_island mi WHERE mi.id = ? AND mi.x = ? AND mi.y = ?)
                                       AND is_block = 0
                                       ORDER BY rate ASC LIMIT 1",
                                        array($this->character->getIdIsland(), $this->character->getXMapsIsland(), $this->character->getYMapsIsland()));
            $result = $query->result_array();
            if(empty($result))
                return "rien";
            return $result[0];
        }
        return "rien";
    }

    public function deplace($x, $y){
        if($this->character->inIsland()){
            $this->db->where('id', $this->character->getId())
                ->set('x_maps_island', $x)
                ->set('y_maps_island', $y)
                ->update('charactere');
            $this->character->setXMapsIsland($x);
            $this->character->setYMapsIsland($y);
        }
        else {
            $this->db->where('id', $this->character->getId())
                ->set('x', $x)
                ->set('y', $y)
                ->update('charactere');
        }
    }

    public function enterCity($id){
        $this->db->where('id', $this->character->getId())
            ->set('x_maps_island', 0)
            ->set('y_maps_island', 0)
            ->set('id_maps_island', $id)
            ->set('in_island', 1)
            ->update('charactere');
    }
}
