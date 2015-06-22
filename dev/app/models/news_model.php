<?php  

if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class News_model extends CI_Model
{
	protected $table = 'news';
	
	public function __construct() {
		$this->load->library('user');
	}

	/*
		Ajouter des news, les paramètres requis sont :
			- L'id de l'auteur
			- Le titre de la news
			- Le contenu de la news
	*/
	public function add($author, $title, $contents)
	{
		$this->db->set('title', $title);
		$this->db->set('message', $contents);		

		setlocale (LC_TIME, 'fr_FR.utf8','fra');
		$this->db->set('date_time', strftime("%A %d %B"));
		$this->db->set('is_block', 0);	
		$this->db->set('id_users', $this->user->getId());

		return $this->db->insert($this->table);
	}

	/*
		Modifier des news, les paramètres requis sont :
			- L'id de la news
			- Le titre si on veut modifier
			- Le contenu si on veut modifier
	*/
	public function set($id, $title, $contents)
	{
		if($title == null AND $contents == null)
			return false;
		if($title != null)
			$this->db->set('title', $title);
		if($contents != null)
			$this->db->set('message', $contents);

		//Si la news est bien trouvé ! ;)
		$this->db->where('id', (int) $id);
		//Alors on fait l'update
		return $this->db->update($this->table);
	}
	
	/*
		Supprimer des news, les paramètres requis sont :
			- L'id de la news
	*/
	public function delete($id)
	{
		return $this->db->where('id', (int) $id)
			->delete($this->table);
	}
	/*
		Compte le nombre de news avec un parametre de recherche si besoins
	*/
	public function count($where = array())
	{
		return (int) $this->db->where($where)
			      ->count_all_results($this->table);
	}
	/*
		Reenvoie nb news commencant a l'id debut
	*/
	public function lists($nb = 5, $debut = 0)
	{
		return $this->db->select('news.id, date_time, title, message, is_block, pseudo')
			->from($this->table)
			->join('users', 'news.id_users = users.id')
			->limit($nb, $debut)
			->order_by('news.id', 'desc')
			->get()
			->result();
	}
}