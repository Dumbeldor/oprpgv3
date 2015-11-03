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
	 * List of conversations for user
	 * returns conversations as array of array of private messages
	 * ----------------------------------------------------------------------- */
	public function lists($id = 0)
	{		
		if($id == 0) {
			$query = $this->db->query("SELECT privates_messages.id AS id,
				date_time, pma.is_read, is_trash,
				id_author, content, u1.pseudo as pseudo_author, u2.pseudo as pseudo_dest,
				users_types.name as rank_author, ut2.name as rank_dest, privates_messages.id_dest
				FROM privates_messages 
				JOIN users u1 ON id_author = u1.id
				JOIN users u2 ON id_dest = u2.id
				JOIN users_types ON users_types.id = u1.id_users_types
				JOIN users_types ut2 ON ut2.id = u2.id_users_types
				JOIN privates_messages_appartenance pma ON pma.id_user = ?
				WHERE (privates_messages.id_author = pma.id_user OR privates_messages.id_dest = pma.id_user)
					AND privates_messages.id=pma.id_msg
				ORDER BY privates_messages.id DESC", array($this->user->getId()));
		}
		else {
			$query = $this->db->query("SELECT privates_messages.id AS id,
				date_time, pma.is_read, is_trash,
				id_author, content, u1.pseudo as pseudo_author, u2.pseudo as pseudo_dest,
				users_types.name as rank_author, ut2.name as rank_dest, privates_messages.id_dest
				FROM privates_messages 
				JOIN users u1 ON id_author = u1.id
				JOIN users u2 ON id_dest = u2.id
				JOIN users_types ON users_types.id = u1.id_users_types
				JOIN users_types ut2 ON ut2.id = u2.id_users_types
				JOIN privates_messages_appartenance pma ON pma.id_user = ?
				WHERE (privates_messages.id_author = pma.id_user OR privates_messages.id_dest = pma.id_user)
					AND (privates_messages.id_author = ? OR privates_messages.id_dest = ?)
					AND privates_messages.id=pma.id_msg
				ORDER BY privates_messages.id DESC", array($this->user->getId(), $id, $id));
		}
		$messages = $query->result_array();
		
		$resultat = array();
		//modify array structure to group messages by conversation
		foreach($messages as $message) {
			// Si le message est à nous on regarde le destinataire
			if($message['id_author'] == $this->user->getId()) {
				$id_autre = $message['id_dest'];
				$autre = $message['pseudo_dest'];
			}
			// Le message nous est destiné donc on regarde l'auteur
			else {
				$id_autre = $message['id_author'];
				$autre = $message['pseudo_author'];
			}
			
			if(!array_key_exists($autre, $resultat)) {
				$resultat[$autre] = array();
				$resultat[$autre][] = $id_autre;
			}
			$resultat[$autre][] = $message;
		}
		
		return $resultat;
	}

	/**
	 * List of message sent by the user
	 * returns $nb number of private message starting with the $begin
	 * ----------------------------------------------------------------------- */
	/*public function listsSending($nb = 5, $begin = 0)
	{
		$query = $this->db->query("SELECT privates_messages.id AS id,
			date_time, is_read, is_trash,
			id_author, content, pseudo, users_types.name as rank,
			privates_messages.id_dest AS catcher 
			FROM privates_messages 
			JOIN users ON id_dest = users.id
			JOIN users_types ON users_types.id = users.id_users_types
			WHERE privates_messages.id_author = ? AND privates_messages.is_trash = 0
			ORDER BY privates_messages.id DESC", array($this->user->getId()));
		return $resultat = $query->result_array();


	}*/

	/**
	 * 
	 *read private message particularly
	 * Returns the private message corresponding to the id $id and if the message is hers
	 * ----------------------------------------------------------------------- */
	/*public function read($id)
	{
		//initialize private message as not belonging to the man who read it right now
		$catcher = false;
		$query = $this->db->query("SELECT privates_messages.id AS id,
			date_time, is_trash,
			id_author, content, pseudo,
			privates_messages.id_dest AS catcher 
			FROM privates_messages 
			JOIN users ON id_users = users.id 
			WHERE privates_messages.id_dest = ? 
			AND privates_messages.id = ? 
			OR privates_messages.id_author = ? 
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
	}*/

	/**
	 * 
	 * Delete private message
	 * private message deletes the $id
	 * ----------------------------------------------------------------------- */
	public function delete($id)
	{
		$this->db->query("DELETE FROM privates_messages_appartenance
			WHERE id_user = ?
			AND id_msg IN (
				SELECT id 
				FROM privates_messages
				WHERE id_author = ? OR id_dest = ?
			)", array($this->user->getId(), $id, $id));
	}

	/**
	 * 
	 * send private message
	 * send message deletes to $pseudo contents $contents
	 * ----------------------------------------------------------------------- */
	public function send($pseudo, $content)
	{
		setlocale (LC_TIME, 'fr_FR.utf8','fra'); 
		$id_dest = $this->users_model->idPseudo($pseudo);
		$data = array(
			'content' => $content,
			'date_time' => time(),
			'is_trash' => 0,
			'id_author' => $this->user->getId(),
			'id_dest' => $id_dest,        
		);
		$this->db->insert('privates_messages', $data);
		$msg_id = $this->db->insert_id();
		
		$data = array(
			'id_msg' => $msg_id,
			'id_user' => $this->user->getId(),
			'is_read' => 1
		);
		$this->db->insert('privates_messages_appartenance', $data);
		
		$data = array(
			'id_msg' => $msg_id,
			'id_user' => $id_dest,
			'is_read' => 0
		);
		$this->db->insert('privates_messages_appartenance', $data);
	}

	/**
	 * get follow message
	 * @param id of old message
	* --------------------------------------------------------------------- */
	public function getFollow($id)
	{
		$query = $this->db->query("SELECT privates_messages.content, users.pseudo 
			FROM privates_messages JOIN users ON id_author = users.id 
			WHERE privates_messages.id = ? ", array($id));
		return $query->result_array();
	}

	/**
	 * Use to mark conversations as read
	 * @param id user_id of the other person in the conversation
	 * ----------------------------------------------------------------------- */
	public function markRead($id=0)
	{
		if($id==0) {
			$this->db->where('id_user', $this->user->getId())
			->where('is_read', 0)
			->update('privates_messages_appartenance', array('is_read' => 1));
		} else {
			$this->db->query("UPDATE privates_messages_appartenance
				SET is_read=1
				WHERE id_user = ?
				AND id_msg IN (
					SELECT id 
					FROM privates_messages
					WHERE id_author = ? OR id_dest = ?
				)
				AND is_read=0", array($this->user->getId(), $id, $id));
		}
	}
}
