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

		$this->db->set('date_time', time());
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
		$this->db->where('id_news', (int) $id)
				->delete('news_comments');
		$this->db->where('id', (int) $id)
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
		return $this->db->select('news.id, date_time, title, message, news.is_block, pseudo, users.id AS idUser, users_types.name AS rank,
			(SELECT COUNT(*) FROM news_comments WHERE id_news = news.id LIMIT '.$debut.', '.$nb.') as nbComments')
			->from($this->table)
			->join('users', 'news.id_users = users.id')
			->join('users_types', 'users.id_users_types = users_types.id')
			->limit($nb, $debut)
			->order_by('news.id', 'desc')
			->get()
			->result();
	}

	public function getNew($id)
	{
		return $this->db->select('date_time, title, message, pseudo, users.id AS idUser, users_types.name AS rank')
			->from($this->table)
			->join('users', 'news.id_users = users.id')
			->join('users_types', 'users.id_users_types = users_types.id')
			->where('news.id', $id)
			->get()
			->result_array()[0];
	}
	
	/**
	 * Returns list comments for the news
	 * @param $id of the news
	 */
	public function listComments($id)
	{
		return $this->db->select('news_comments.id, news_comments.date_time, news_comments.message, news_comments.is_block, users.pseudo, users.id AS idUser, users_types.name AS rank')
		->from('news_comments')
		->join('users', 'news_comments.id_users = users.id')
		->join('news', 'news_comments.id_news = news.id')
		->join('users_types', 'users.id_users_types = users_types.id')
		->order_by('news_comments.id', 'desc')
		->where('id_news', $id)
		->get()
		->result();
	}
	
	/**
	 * return number comments for the news
	 * @param $id of the news
	 * @return number comments for the news
	 */
	public function countComments($id)
	{
		return (int) $this->db->where('id_news', $id)
		->count_all_results('news_comments');
	}
	
	/**
	 * Add comments of the news
	 * @param contents of the comments $contents
	 * @param id of the newss to comments $id
	 */
	public function addComments($contents, $id)
	{
		$this->db->set('message', $contents);		

		$this->db->set('date_time', time());
		$this->db->set('is_block', 0);	
		$this->db->set('id_users', $this->user->getId());
		$this->db->set('id_news', $id);

		return $this->db->insert('news_comments');
	}

	public function getEdit($id)
	{
		return $this->db->select('title, message')
						->from('news')
						->where('id', $id)
						->get()
						->result();
	}

	public function edit($id)
	{
		$data = array(
			'title' => $this->input->post('title'),
			'message' => $this->input->post('content')
			);
		$this->db->where('id', $id)
				 ->update('news', $data);
	}
}