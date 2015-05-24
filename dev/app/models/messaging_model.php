<?php
/**
 ******************************************************************************
 * Description : 
 * This page contains the messaging handling
 * @todo Coding
 * @author Dumbeldor
 * @version 1.0.0
 ******************************************************************************
 */
class Messaging_model extends CI_Model
{
    protected $table = 'privates_messages';
    
    /**
   * List of private message for user
     * returns $nb number of private message starting with the $begin
   * ----------------------------------------------------------------------- */
    public function lists($nb = 5, $begin = 0)
    {
        $query = $this->db->query("SELECT privates_messages.id AS id, date_time, is_read, is_trash, id_users, SUBSTRING(content, 1, 50) AS content, pseudo FROM privates_messages JOIN users ON id_users = users.id WHERE privates_messages.id_users_1 = ?", array($this->session->userdata('user_data')['id']));
        return $query->result_array();
          
    }
}
