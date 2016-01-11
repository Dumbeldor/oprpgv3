<?php
class Bag_model extends CI_Model {
    public function __construct() {
    $this->load->database();
    $this->load->library('user');
  }
  
  public function getBags() {
    $query = $this->db->query("SELECT objects.name, description, file, attack, defense, addLike, addHaki, rarity, objects_types.name AS type FROM users_bag
                              JOIN bags ON users_bag.id = bags.id
                              JOIN bags_objects ON bags.id = bags_objects.id
                              JOIN objects ON bags_objects.id = objects.id
                              JOIN objects_types ON objects.id_objects_types = objects_types.id
                              WHERE id_character = ? AND objects.is_block = 0", array($this->user->getId()));	
	return $query->result_array();
  }
}