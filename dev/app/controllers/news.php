<?php
/**
 ******************************************************************************
 * Description : 
 * This page contains the news
 * @todo Finish this description
 * @author Dumbeldor
 * @version 1.0.0
 ******************************************************************************
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class news extends MY_Controller 
{
	public function __construct() {
      	parent::__construct();
      	if(!$this->user->isAuthenticated())
      		redirect(base_url('home/accueil'));
    }
    
    /**
     * used to view older news
     * @param $news_get number of the new
     * ----------------------------------------------------------------------- */
    public function page($news_get = 0)
    {
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
   * Add a news
   * ----------------------------------------------------------------------- */
	public function add() 
	{
		//If the member is not Admin or Moderator then redirected to the index.
		if(!($this->user->isAdmin() || $this->user->isModo()))
			redirect('index');
		$this->load->helper('form');
    	$this->load->library('form_validation');
    	$this->load->model('news_model');
    
    	$data['title'] = 'Ajouter News';
    	$data['add'] = false;
    	$author = $this->user->getId();
    	$title = $this->input->post('title');
    	$contents = $this->input->post('contents');
    	if ($title == null XOR $contents == null) {
      	$data['error'] = 'Veuillez fournir toutes les informations requises.';
      	$this->construct_page('news/add', $data);
    	}
    	else if($title == null && $contents == null) {
      	$this->construct_page('news/add', $data);
    	}
    	else {
    		$this->news_model->add($author, $title, $contents);
        	$data['title'] = 'Home';
        	$data['add'] = true;
        	$this->construct_page('news/add', $data);
      	}
	}

  /**
   * Delete a news
   * @param $id id of the news
   * ----------------------------------------------------------------------- */
	public function delete($id)
	{
		//If the member is not Admin or Moderator then redirected to the index.
		if(!($this->user->isAdmin() || $this->user->isModo()))
			redirect('index');
		$this->load->model('news_model');
		$this->news_model->delete($id);
		redirect('/index');
	}
	
	/**
	 * List comments to news
	 * @param $id id of the news
	 * -------------------------------------------------------------------- */
	public function comment($id=0)
	{
		if($id < 0)
			redirect('index');
		$this->load->model('news_model');
		$data['title'] = "Les commentaires";
		$data['nbComments'] = $this->news_model->countComments($id);
		$data['comments'] = $this->news_model->listComments($id);
		$data['id'] = $id;
		$this->construct_page('pages/comments', $data);		
	}
	
	/**
	 * Add comments to news
	 * @param $id id of the news
	 * -------------------------------------------------------------------- */
	public function addComments($id=0)
	{
		if(!$this->user->isAuthenticated())
			redirect('news/comment/'.$id);
		$this->load->helper('form');
    	$this->load->library('form_validation');
    	$this->load->model('news_model');
    
    	$data['title'] = 'Ajouter commentaire';
    	$data['add'] = false;
    	$data['id'] = $id;
    	$author = $this->user->getId();
    	$contents = $this->input->post('contents');
    	if ($contents == null) {
      	$data['error'] = 'Veuillez fournir toutes les informations requises.';
      	$this->construct_page('news/addComments', $data);
    	}
    	else {
    		$this->news_model->addComments($contents, $id);
        	redirect('/news/comment/'.$id);
      	}
		
		
	}
}