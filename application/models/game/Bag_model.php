<?php
class Bag_model extends CI_Model {
    public function __construct() {
    $this->load->database();
  }
  
  
  public function getBags() {
   $query = $this->db->query("SELECT b.id AS id, bt.id AS idType, name, size, file
                              FROM charactere_bags cb
                              JOIN bags b ON cb.id_bags = b.id
                              JOIN bags_types bt ON b.id_bags_types = bt.id
                              WHERE cb.id_charactere = ?", array($this->character->getId()));

	return $query->result_array();
  }
  
  public function inventory($id) {
      $nb = $this->db->where('id_bags', $id)
                        ->where('id_charactere', $this->character->getId())
                        ->count_all_results('charactere_bags');
    if($nb == 0)
        return false;

    $query = $this->db->query("SELECT o.id, o.name, o.description, o.file, o.price, o.attack, o.speed, o.defense, o.attackMag, o.addLife, o.addEnergy, o.rarity, ot.name AS type
							  FROM bags_objects bo
							  JOIN objects o ON bo.id_objects = o.id
							  JOIN objects_types ot ON o.id_objects_types = ot.id
                              WHERE bo.id_bags = ? AND ot.is_block = 0 AND o.is_block = 0", array($id));
	return $query->result_array();
  }

    public function addObject($id){
        if(!isset($id))
            return false;

        $query = $this->db->query("SELECT b.id
                                   FROM bags b
                                   JOIN bags_types bt ON b.id_bags_types = bt.id
                                   JOIN charactere_bags cb ON cb.id_bags = b.id
                                   WHERE cb.id_charactere = ? AND bt.size > (SELECT COUNT(*) FROM bags_objects bo WHERE bo.id_bags = b.id)
                                   LIMIT 1", array($this->character->getId()));
        $query = $query->result_array();
        if(!isset($query[0]))
            return false;

        $idBag = $query[0]['id'];

        $this->db->insert('bags_objects', array('id_bags' => $idBag,
                                                'id_objects' => $id));
        return true;
    }
  
}