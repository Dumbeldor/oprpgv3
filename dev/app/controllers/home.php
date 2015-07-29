<?php
/**
 ******************************************************************************
 * Description : 
 * This page contains the site index
 * @todo Finish this description
 * @author Dumbeldor & Mawloc
 * @version 1.0.0
 ******************************************************************************
 */
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends MY_Controller {

	/**
	 * site index with display of news.
	 * @param $news_get number of the new
	 * ----------------------------------------------------------------------- */
	public function index($news_get = 0)
	{
		if(!$data['connecte'])
		{
			redirect('home/accueil');
		}
		$this->load->library('pagination');
		$this->load->model('news_model');
		$this->load->helper('url');

		$data = array();
		$data['title'] = 'Accueil';
		$data['nbnews'] = $this->news_model->count();
		
		$config['base_url'] = base_url('/news/page/');
		$config['total_rows'] = $data['nbnews'];
		$config['per_page'] = 1;
		$config['last_link'] = 'Dernière';
		$config['first_link'] = 'Première';
		
		$this->pagination->initialize($config);

		if($news_get > 0)
		{
			if($news_get <= $data['nbnews'])
				$news_get = intval($news_get);
			else
				$news_get = 0;
		}
		else
			$news_get = 0;


		$data['pagination'] = $this->pagination->create_links();
		$data['news'] = $this->news_model->lists(1, $news_get);
		$data['nbComments'] = $this->news_model->countComments($data['news'][0]->id);

		$data['$audata'] = $this->session->all_userdata();
		 $this->construct_page('pages/home', $data);
	}
	
	/**
	 * Site index for user not connect
	 */
	public function accueil()
	{
		$data['title'] = 'Bienvenue sur Onepiece-rpg !';
		$this->construct_page('pages/accueil', $data);
	}
}
