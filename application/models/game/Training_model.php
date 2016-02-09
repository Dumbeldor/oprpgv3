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
}