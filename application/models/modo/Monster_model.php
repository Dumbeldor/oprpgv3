<?php
class Monster_model extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }
    public function getMonstersIdNameLvl()
    {
        $query = $this->db->query("SELECT id, name, lvl
                                  FROM monster
                                  WHERE is_block = 0");
        return $query->result_array();
    }

    public function getMonsters() {
        $query = $this->db->query("SELECT id, name, lvl, is_block
                                    FROM monster ORDER BY lvl");
        return $query->result_array();
    }

    public function getMonster($id) {
        $query = $this->db->query("SELECT * FROM monster WHERE id = ?", array($id));
        return $query->result_array()[0];
    }


    public function addMonster($name, $description, $life, $lvl, $xp, $attack, $defense, $speed, $escape, $maps, $objects, $techs){
        $this->db->insert('monster', array(
            'name' => $name, 'description' => $description,
            'life' => $life, 'lvl' => $lvl, 'xp' => $xp,
            'attack' => $attack, 'defense' => $defense, 'speed' => $speed,
            'escape' => $escape
        ));

        $id = $this->db->insert_id();

        if(!empty($maps)){
            foreach($maps as $map) {
                $this->db->insert('maps_types_monster', array('id' => $id, 'id_maps_types' => $map));
            }
        }
        if(!empty($objects)){
            foreach($objects as $object) {
                $this->db->insert('monster_objects', array('id' => $id, 'id_objects' => $object));
            }
        }
        if(!empty($techs)){
            foreach($techs as $tech) {
                $this->db->insert('monster_tech', array('id' => $tech, 'id_monster' => $id));
            }
        }
    }

    public function modifyMonster($id, $name, $description, $life, $lvl, $xp, $attack, $defense, $speed, $escape, $maps, $objects, $techs) {
        $this->db->where('id', $id)
            ->update('monster', array(
                'name' => $name, 'description' => $description,
                'life' => $life, 'lvl' => $lvl, 'xp' => $xp,
                'attack' => $attack, 'defense' => $defense, 'speed' => $speed,
                'escape' => $escape));

        $this->db->delete('maps_types_monster', array('id' => $id));
        $this->db->delete('monster_objects', array('id' => $id));
        $this->db->delete('monster_tech', array('id_monster' => $id));

        if(!empty($maps)){
            foreach($maps as $map) {
                $this->db->insert('maps_types_monster', array('id' => $id, 'id_maps_types' => $map));
            }
        }
        if(!empty($objects)){
            foreach($objects as $object) {
                $this->db->insert('monster_objects', array('id' => $id, 'id_objects' => $object));
            }
        }
        if(!empty($techs)){
            foreach($techs as $tech) {
                $this->db->insert('monster_tech', array('id' => $tech, 'id_monster' => $id));
            }
        }
    }

    public function getLastId(){
        $query = $this->db->query("SELECT MAX(id) AS nb FROM monster");
        return $query->result_array()[0]['nb'];
    }
}