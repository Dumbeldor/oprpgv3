<?php
class Bag_model extends CI_Model {
    public function __construct() {
    $this->load->database();
    $this->load->library('user');
  }
  
  
  public function getBags() {
	$query = $this->db->query("SELECT cb.id AS id, bt.id AS idBag, name, size, file
							  FROM charactere_bags cb							  
							  JOIN charactere c ON cb.id_charactere = c.id
							  JOIN bags b ON cb.id = b.id
							  JOIN bags_types bt ON b.id_bags_types = bt.id");
	
	return $query->result_array();
  }
  
  public function inventory($id) {
    $query = $this->db->query("SELECT o.id, o.name, o.description, o.file, o.price, o.attack, o.speed, o.defense, o.addLife, o.addHaki, o.rarity, ot.name AS type
							  FROM bags_objects bo
							  JOIN objects o ON bo.id_objects = o.id
							  JOIN objects_types ot ON o.id_objects_types = ot.id
							  INNER JOIN charactere_bags cb ON cb.id_charactere = ?
                              WHERE bo.id_bags = ? AND ot.is_block = 0 AND o.is_block = 0", array($this->character->getId(), $id));
	return $query->result_array();
  }

    public function addObject($id){
        if(!isset($id))
            return false;

        $query = $this->db->query("SELECT b.id
                                   FROM charactere_bags cb
                                   JOIN bags b ON cb.id = b.id_bags_types
                                   JOIN bags_types bt ON b.id_bags_types = bt.id
                                   WHERE bt.size >  (SELECT count(*) FROM bags_objects bo2 WHERE bo2.id_bags = b.id)
                                   LIMIT 1");
        $query = $query->result_array();
        if(!isset($query[0]))
            return false;

        $idBag = $query[0]['id'];

        $this->db->insert('bags_objects', array('id_bags' => $idBag,
                                                'id_objects' => $id));
        return true;
    }
  
}