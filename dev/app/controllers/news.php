<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class news extends MY_Controller 
{
	public function __construct() {
      	parent::__construct();
      	//Si le membre n'est pas Admin ou Moderateur alors on le redirige vers l'index ;)
  		if(!($this->users_model->is_admin() || $this->users_model->is_moderator()))
  			redirect('/index');
    }
	public function add() 
	{
		$this->load->helper('form');
    	$this->load->library('form_validation');
    	$this->load->model('news_model');
    
    	$data['title'] = 'Ajouter News';
    	$data['add'] = false;
    	$author = $this->session->userdata('user_data')['user_id'];
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

	public function delete($id)
	{
		echo $id;
		$this->load->model('news_model');
		$this->news_model->delete($id);
		redirect('/index');
	}
}