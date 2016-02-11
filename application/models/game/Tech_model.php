<?php
class Tech_model extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }

    public function getTechs($id = 0) {
        if($id == 0) {
            $query = $this->db->query('SELECT t.id, tt.id AS type, t.name, descr, lvl, price, energy, adding FROM tech t
                                  JOIN tech_types tt ON t.id_tech_types = tt.id
                                  WHERE t.is_block = 0 ORDER BY lvl');
        } else {
            $query = $this->db->query('SELECT t.id, tt.id AS type, t.name, descr, lvl, price, energy, adding FROM tech t
                                  JOIN tech_types tt ON t.id_tech_types = tt.id
                                  JOIN character_tech ct ON ct.id_tech = t.id
                                  WHERE ct.id = ? AND t.is_block = 0 ORDER BY lvl', array($id));
        }
        return $query->result_array();
    }

    public function getTechPriceLvlName($id) {
        $query = $this->db->query('SELECT price, lvl, name FROM tech WHERE id = ?', array($id));
        return $query->result_array()[0];
    }

    public function isLearned($id) {
        $nb = $this->db->where('id_tech', $id)
                ->count_all_results('character_tech');
        if($nb > 0)
            return true;
        return false;
    }

    public function learn($id) {
        $data = array('id' => $this->character->getId(),
                      'id_tech' => $id);
        $this->db->insert('character_tech', $data);
    }

}