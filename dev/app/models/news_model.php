<?php  

if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class News_model extends CI_Model
{
	protected $table = 'news';

	/*
		Ajouter des news, les paramètres requis sont :
			- L'id de l'auteur
			- Le titre de la news
			- Le contenu de la news
	*/
	public function add($author, $title, $contents)
	{
		$this->db->set('user_id', $author);
		$this->db->set('new_titre', $title);
		$this->db->set('new_message', $contents);		

		setlocale (LC_TIME, 'fr_FR.utf8','fra'); 
		$this->db->set('new_date', strftime("%A %d %B à %HH%M"));

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
			$this->db->set('title', $titre);
		if($contents != null)
			$this->db->set('contenu', $contenu);

		//Si la news est bien trouvé ! ;)
		$this->db->where('new_id', (int) $id);
		//Alors on fait l'update
		return $this->db->update($this->table);
	}
	
	/*
		Supprimer des news, les paramètres requis sont :
			- L'id de la news
	*/
	public function delete($id)
	{
		return $this->db->where('new_id', (int) $id)
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
		return $this->db->select('new_id, new_date, new_titre, new_message, new_block, user_pseudo')
			->from($this->table)
			->join('users', 'news.user_id = users.user_id')
			->limit($nb, $debut)
			->order_by('new_id', 'desc')
			->get()
			->result();
	}
}