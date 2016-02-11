<?php
class Tech_model extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }

    public function getTypes() {
        $query = $this->db->query("SELECT id, name, lvl, energy, adding, id_tech_types AS type FROM tech WHERE is_block = 0");
        return $query->result_array();
    }

    public function getTechsIdNameLvl() {
        $query = $this->db->query("SELECT id, name, lvl, is_block FROM tech ORDER BY lvl");
        return $query->result_array();
    }

    public function getTech($id)
    {
        $query = $this->db->query("SELECT * FROM tech WHERE id = ?", array($id));
        return $query->result_array()[0];
    }

    public function getTechsTypes() {
        $query = $this->db->query("SELECT id, name FROM tech_types");
        return $query->result_array();
    }

    public function addTech($name, $descr, $lvl, $price, $energy, $adding, $type) {
        $this->db->insert('tech', array('name' => $name, 'descr' => $descr, 'lvl' => $lvl,
                                        'price' => $price, 'energy' => $energy, 'adding' => $adding, 'id_tech_types' => $type));
    }

    public function modifyTech($id, $name, $descr, $lvl, $price, $energy, $adding, $type) {
        $data = array('name' => $name, 'descr' => $descr, 'lvl' => $lvl, 'price' => $price, 'energy' => $energy, 'adding' => $adding,
                        'id_tech_types' => $type);
        $this->db->where('id', $id)
                ->update('tech', $data);
    }

}