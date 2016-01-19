<?php
class Bag_model extends CI_Model {
    public function __construct() {
    $this->load->database();
    $this->load->library('user');
  }
  
  
  public function getBags() {
	$query = $this->db->query("SELECT ub.id AS id, b.id AS idBag, bt.name, bt.size, bt.file
							  FROM users_bag ub
							  JOIN character c ON ub.id_character = c.id
							  JOIN bags b ON ub.id = b.id
							  JOIN bags_types bt ON b.id_bags_types = bt.id");
	
	return $query->result_array();
  }
  
  public function getObjects($id) {
    $query = $this->db->query("SELECT objects.name AS name, description, file, attack, defense, addLike, addHaki, rarity, objects_types.name AS type FROM users_bag
                              JOIN bags ON users_bag.id = bags.id
                              JOIN bags_objects ON bags.id = bags_objects.id
                              JOIN objects ON bags_objects.id = objects.id
                              JOIN objects_types ON objects.id_objects_types = objects_types.id
                              WHERE id_character = ? AND bags.id = ? AND objects.is_block = 0", array($this->user->getId(), $id));	
	return $query->result_array();
  }
  
}