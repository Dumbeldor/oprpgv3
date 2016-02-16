<?php
class Character_model extends CI_Model {
    public function __construct() {
        $this->load->database();
    }

    public function hydrate($id) {
        $query = $this->db->query("SELECT in_island AS inIsland, in_fight AS inFight, lvl, xp, berry, id_objects AS weapon, x, y, id_objects_1 AS armor,
									  x_maps_island AS xMapsIsland, y_maps_island AS yMapsIsland, id_maps_island AS idIsland, vitality, strength, speed, endurance,
									  agility, energy, intelligence, resistance, life, energies
							  FROM charactere
							  WHERE id = ?", array($id));
        return $query->result_array()[0];
    }

    public function setBerry($berry){
        $this->db->where('id', $this->character->getId())
            ->set('berry', $berry)
            ->update('charactere');
    }
    public function setBerryEnergies($berry, $energies) {
        $this->db->where('id', $this->character->getId())
            ->set('berry', $berry)
            ->set('energies', $energies)
            ->update('charactere');
    }

    public function setLife($life) {
        $this->db->where('id', $this->character->getId())
            ->set('life', $life, false)
            ->update('charactere');
    }

    public function addXp() {
        $this->db->where('id', $this->character->getId())
                ->set('xp', $this->character->getXp())
                ->update('charactere');
    }
    public function lvlUp() {
        $this->db->where('id', $this->character->getId())
                ->set('xp', $this->character->getXp())
                ->set('lvl', $this->character->getLvl())
                ->update('charactere');
    }

}