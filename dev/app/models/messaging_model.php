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
    
    /**
     * 
     *read private message particularly
     * Returns the private message corresponding to the id $id
     * ----------------------------------------------------------------------- */
    public function read($id)
    {
        $query = $this->db->query("SELECT privates_messages.id AS id, date_time, is_read, is_trash, id_users, content, pseudo FROM privates_messages JOIN users ON id_users = users.id WHERE privates_messages.id_users_1 = ? AND privates_messages.id = ?", array($this->session->userdata('user_data')['id'], $id));
        $resultat = $query->result_array();
        //If the user can see the selected private message, then put it as "seen"
        if(!empty($resultat))
        {
            $this->db->where('id', $id);
            $this->db->update($this->table, array('is_read' => 1));
        }
        return $resultat;
    }
    
    /**
     * 
     * Delete private message
     * private message deletes the $id
     * ----------------------------------------------------------------------- */
    public function delete($id)
    {
        $this->db->delete($this->table, array('id' => $id, 'privates_messages.id_users_1' => $this->session->userdata('user_data')['id']));
    }
}
