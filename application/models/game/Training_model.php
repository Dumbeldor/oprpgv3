<?php
class Training_model extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }

    public function add($attribut, $nb){
        if($attribut == "vitality" || $attribut == "strength" || $attribut == "speed" || $attribut == "endurance" || $attribut == "agility" || $attribut == "energy" || $attribut == "intelligence"
        || $attribut == "resistance" || $attribut == "energy") {
            $this->db->where('id', $this->character->getId())
                ->set($attribut, "$attribut+$nb", false)
                ->update('charactere');
            return true;
        }
        return false;
    }

    public function addJson($tab) {
        $this->db->where('id', $this->character->getId())
                ->update('charactere', $tab);
    }

    public function reset() {
        $prime = $this->character->getStat()*5;
        $this->db->where('id', $this->character->getId())
                ->set('berry', "berry-($prime*5)", false)
                ->set('vitality', 0)
            ->set('strength', 0)
            ->set('speed', 0)
            ->set('endurance', 0)
            ->set('agility', 0)
            ->set('energy', 0)
            ->set('intelligence', 0)
            ->set('resistance', 0)
            ->update('charactere');
    }
}