<?php
class Shop_model extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }

    public function getWeapons(){
        $query = $this->db->query("SELECT mto.id, o.id, o.name, description, price, attack, speed, defense, attackMag, rarity
                                    FROM maps_types_objects mto
                                    JOIN objects o ON mto.id_objects = o.id
                                    JOIN objects_types ot ON o.id_objects_types = ot.id
                                    WHERE ot.id = 1 AND mto.id = (SELECT mt.id FROM maps_island mi JOIN maps_types mt ON mi.id_maps_types = mt.id WHERE mi.id = ? AND mi.x = ? AND mi.y = ? LIMIT 1)
                                    AND ot.is_block = 0 AND o.is_block = 0", array($this->character->getIdIsland(), $this->character->getXMapsIsland(), $this->character->getYMapsIsland()));
        return $query->result_array();
    }
    public function getArmors()
    {
        $query = $this->db->query("SELECT mto.id, o.id, o.name, description, price, attack, speed, defense, attackMag, rarity
                                    FROM maps_types_objects mto
                                    JOIN objects o ON mto.id_objects = o.id
                                    JOIN objects_types ot ON o.id_objects_types = ot.id
                                    WHERE ot.id = 2 AND mto.id = (SELECT mt.id FROM maps_island mi JOIN maps_types mt ON mi.id_maps_types = mt.id WHERE mi.id = ? AND mi.x = ? AND mi.y = ? LIMIT 1)
                                    AND ot.is_block = 0 AND o.is_block = 0", array($this->character->getIdIsland(), $this->character->getXMapsIsland(), $this->character->getYMapsIsland()));
        return $query->result_array();
    }

    public function getObjects()
    {
        $query = $this->db->query("SELECT mto.id, o.id, o.name, description, price, addLife, addEnergy, rarity, o.id_objects_types AS type
                                    FROM maps_types_objects mto
                                    JOIN objects o ON mto.id_objects = o.id
                                    JOIN objects_types ot ON o.id_objects_types = ot.id
                                    WHERE ot.id != 2 AND ot.id != 1
                                    AND mto.id = (SELECT mt.id FROM maps_island mi JOIN maps_types mt ON mi.id_maps_types = mt.id WHERE mi.id = ? AND mi.x = ? AND mi.y = ? LIMIT 1)
                                    AND ot.is_block = 0 AND o.is_block = 0", array($this->character->getIdIsland(), $this->character->getXMapsIsland(), $this->character->getYMapsIsland()));
        return $query->result_array();
    }

    public function buy($id)
    {

    }

}