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

	public function __construct() {
		$this->load->library('user');
	}
	/**
	 * List of private message for user
	 * returns $nb number of private message starting with the $begin
	 * ----------------------------------------------------------------------- */
	public function lists($nb = 5, $begin = 0)
	{
		$query = $this->db->query("SELECT privates_messages.id AS id, 
			date_time, is_read, is_trash, id_users, 
			SUBSTRING(content, 1, 50) AS content, pseudo 
			FROM privates_messages JOIN users ON id_users = users.id 
			WHERE privates_messages.id_users_1 = ? AND privates_messages.is_trash = ? 
			ORDER BY privates_messages.id DESC", array($this->user->getId(), 0));
		return $query->result_array();

	}

	/**
	 * List of message sent by the user
	 * returns $nb number of private message starting with the $begin
	 * ----------------------------------------------------------------------- */
	public function listsSending($nb = 5, $begin = 0)
	{
		$query = $this->db->query("SELECT privates_messages.id AS id, 
			date_time, is_read, is_trash, id_users, SUBSTRING(content, 1, 50) AS content, pseudo 
			FROM privates_messages JOIN users ON id_users_1 = users.id 
			WHERE privates_messages.id_users = ? AND privates_messages.is_trash = ? 
			ORDER BY privates_messages.id DESC", array($this->user->getId(), 0));
		return $query->result_array();

	}

	/**
	 * 
	 *read private message particularly
	 * Returns the private message corresponding to the id $id and if the message is hers
	 * ----------------------------------------------------------------------- */
	public function read($id)
	{
		//initialize private message as not belonging to the man who read it right now
		$catcher = false;
		$query = $this->db->query("SELECT privates_messages.id AS id,
			date_time, is_read, is_trash,
			id_users, content, pseudo,
			privates_messages.id_users_1 AS catcher 
			FROM privates_messages 
			JOIN users ON id_users = users.id 
			WHERE privates_messages.id_users_1 = ? 
			AND privates_messages.id = ? 
			OR privates_messages.id_users = ? 
			AND privates_messages.id = ?", array($this->user->getId(), $id, $this->user->getId(), $id));
		$resultat = $query->result_array();
		//If the user can see the selected private message, then put it as "seen"
		if(!empty($resultat))
		{
			if($resultat[0]['catcher'] == $this->user->getId())
			{
				$this->db->where('id', $id);
				$this->db->update($this->table, array('is_read' => 1));
				$catcher = true;
			}
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
		$this->db->where('id', $id)
			->where('id_users_1', $this->user->getId())
			->update($this->table, array('is_trash' => 1));
	}

	/**
	 * 
	 * send private message
	 * send message deletes to $pseudo contents $contents
	 * ----------------------------------------------------------------------- */
	public function send($pseudo, $content)
	{
		setlocale (LC_TIME, 'fr_FR.utf8','fra'); 
		$data = array(
			'content' => $content,
			'date_time' => time(),
			'is_read' => 0,
			'is_trash' => 0,
			'id_users' => $this->user->getId(),
			'id_users_1' => $this->users_model->idPseudo($pseudo),        
		);
		$this->db->insert('privates_messages', $data);
	}

	/**
	 * get follow message
	 * @param id of old message
	* --------------------------------------------------------------------- */
	public function getFollow($id)
	{
		$query = $this->db->query("SELECT privates_messages.content, users.pseudo 
			FROM privates_messages JOIN users ON id_users = users.id 
			WHERE privates_messages.id = ? ", array($id));
		return $query->result_array();
	}

	/**
	 * Use to mark messages as read
	 * @param id messassing
	 * ----------------------------------------------------------------------- */
	public function markRead($id)
	{
		$this->db->where('id', $id)
			->where('id_users_1', $this->user->getId())
			->update($this->table, array('is_read' => 1));
	}
}
