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
      	//If the member is not Admin or Moderator then redirected to the index.
  		if(!($this->user->isAdmin() || $this->user->isModo()))
  			redirect('/index');
    }

  /**
   * Add a news
   * ----------------------------------------------------------------------- */
	public function add() 
	{
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
		$this->load->model('news_model');
		$this->news_model->delete($id);
		redirect('/index');
	}
}