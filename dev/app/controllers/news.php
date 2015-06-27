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
	public function comment($id)
	{
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
	public function addComments($id)
	{
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