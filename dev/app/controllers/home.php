<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends MY_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */


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
		$this->pagination->initialize(array('base_url' => base_url() . '/news/',
					    'total_rows' => $data['nbnews'],
					    'per_page' => 1)); 

		$data['pagination'] = $this->pagination->create_links();
		$data['news'] = $this->news_model->lists(1, $news_get);

		var_dump($this->session->all_userdata());
		 $this->construct_page('pages/home', $data);
	}
}
