<?php
class Island_model extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }
    public function getIslandsIdName()
    {
        $query = $this->db->query("SELECT id, name FROM island ORDER BY lvl");
        return $query->result_array();
    }

    public function getMaps($id, $x, $y) {
        $query = $this->db->query("SELECT mt.id, mt.name, mt.lvl, mi.x, mi.y
                                      FROM maps_island mi
                                      JOIN maps_types mt ON mi.id_maps_types = mt.id
                                      WHERE mi.id = ? AND x BETWEEN ? AND ?
                                      AND y BETWEEN ? AND ? ORDER BY y, x",
            array($id, $x-5, $x+5, $y-5, $y+5));
        return $query->result_array();
    }

    public function getTypes() {
        $query = $this->db->query("SELECT id, name FROM maps_types WHERE type != 1 AND type != 3");
        return $query->result_array();
    }

}