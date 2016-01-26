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
							  FROM charactere_bags cb
							  JOIN bags b ON cb.id = b.id
							  JOIN bags_objects bo ON bo.id = b.id
							  JOIN objects o ON bo.id_objects = o.id
							  JOIN objects_types ot ON o.id_objects_types = ot.id                              
                              WHERE id_charactere = ? AND b.id = ? AND ot.is_block = 0 AND o.is_block = 0", array($this->character->getId(), $id));	
	return $query->result_array();
  }

    public function addObject($id){

        $this->db->insert('bags_objects', array('id' => 1,
                                                'id_objects' => $id));
    }
  
}