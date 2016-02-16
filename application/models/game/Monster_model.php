<?php
class Monster_model extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }

    public function getMonster() {
        $query = $this->db->query('SELECT m.id, m.name, m.description, life, m.lvl, xp, attack, defense, speed, m.escape
                                  FROM monster m
                                  JOIN maps_types_monster mtm ON mtm.id = m.id
                                  WHERE mtm.id_maps_types =
                                  (SELECT mi.id_maps_types FROM maps_island mi WHERE mi.id = ? AND mi.x = ? AND mi.y = ?)
                                  ORDER BY RAND() LIMIT 1',
                                  array($this->character->getIdIsland(), $this->character->getXMapsIsland(), $this->character->getYMapsIsland()));
        return $query->result_array();
    }

    public function loot($idMonster) {
        $rand = mt_rand(0, 100);
        if($rand > 15) {
            $query = $this->db->query("SELECT RAND()*rarity as rate, o.id, name, description, file FROM objects o
                                        JOIN monster_objects mo ON mo.id_objects = o.id
                                        WHERE mo.id = ? AND is_block = 0
                                       ORDER BY rate ASC LIMIT 1", array($idMonster));
            return $query->result_array()[0];
        }
        return "rien";
    }

}