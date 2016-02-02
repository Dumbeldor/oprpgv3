<?php
class Island_model extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }
    public function getIslandsIdName()
    {
        $query = $this->db->query("SELECT id, name FROM island ORDER BY lvl");
        return $query->result_array();
    }
}