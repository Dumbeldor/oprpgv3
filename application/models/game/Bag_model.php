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

    $query = $this->db->query("SELECT bo.id, o.id AS idO, o.name, o.description, o.file, o.price, o.attack, o.speed, o.defense, o.attackMag, o.addLife, o.addEnergy, o.rarity, ot.name AS type
							  FROM bags_objects bo
							  JOIN objects o ON bo.id_objects = o.id
							  JOIN objects_types ot ON o.id_objects_types = ot.id
                              WHERE bo.id_bags = ? AND ot.is_block = 0 AND o.is_block = 0", array($id));
	return $query->result_array();
  }

    public function getAllInventory(){
        $query = $this->db->query("SELECT o.id, ob.id AS idBagObject, o.name, o.description, o.file, o.price, o.attack, o.speed, o.defense, o.attackMag, o.addLife, o.addEnergy, o.rarity, o.id_objects_types AS type
							  FROM objects o
							  INNER JOIN bags_objects ob ON ob.id_objects = o.id
							  INNER JOIN bags b ON ob.id_bags = b.id
							  INNER JOIN charactere_bags cb ON cb.id_bags = b.id
							  WHERE cb.id_charactere = ?", array($this->character->getId()));
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

    public function removeObject($id) {
        $query = $this->db->query("SELECT o.id FROM bags_objects bo INNER JOIN objects o ON bo.id_objects = o.id WHERE bo.id = ?", array($id));
        $object = $query->result_array();

        if(!empty($object))
            $idO = $object[0]['id'];
        else
            return 0;

        $this->db->where('id', $id)
                ->delete('bags_objects');
        return $idO;
    }
}