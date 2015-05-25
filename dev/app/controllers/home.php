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
		$this->load->library('pagination');
		$this->load->model('news_model');
		$this->load->helper('url');
		$data = array();
		$data['title'] = 'Accueil';
		$data['nbnews'] = $this->news_model->count();

		if($news_get > 0)
		{
			if($news_get <= $data['nbnews'])
				$news_get = intval($news_get);
			else
				$news_get = 0;
		}
		else
			$news_get = 0;
		$this->pagination->initialize(array('base_url' => base_url('/news/'),
					    'total_rows' => $data['nbnews'],
					    'per_page' => 1)); 

		$data['pagination'] = $this->pagination->create_links();
		$data['news'] = $this->news_model->lists(1, $news_get);

		var_dump($this->session->all_userdata());
		 $this->construct_page('pages/home', $data);
	}
}
