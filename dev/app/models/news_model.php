<?php  

if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class News_model extends CI_Model
{
	protected $table = 'news';

	//Add news
	public function add_news($author, $title, $contents)
	{
		$this->db->set('user_id', $author);
		$this->db->set('new_titre', $title);
		$this->db->set('new_message', $contents);		

		$this->db->set('new_date', 'NOW()', false);

		return $this->db->insert($this->table);
	}

	public function set_news($id, $title, $contents)
	{
		if($title == null AND $contents == null)
			return false;
		if($title != null)
			$this->db->set('title', $titre);
		if($contents != null)
			$this->db->set('contenu', $contenu);

		//Si la news est bien trouvé ! ;)
		$this->db->where('id', (int) $id);
		//Alors on fait l'update
		return $this->db->update($this->table);
	}
	
	public function delete_news($id)
	{
		return $this->db->where('id', (int) $id)
			->delete($this->table);
	}
	
	public function count($where = array())
	{
		return (int) $this->db->where($where)
			      ->count_all_results($this->table);
	}
	
	public function list_news()
	{
		return $this->db->select('*')
			->from($this->table)
			->limit($nb, $debut)
			->order_by('id', 'desc')
			->get()
			->result();
	}
}