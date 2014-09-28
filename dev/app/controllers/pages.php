<?php
class Pages extends CI_Controller {
  public function __construct() {
	parent::__construct();
	$this->load->model('users_model');
  }
  
  public function view($page = 'home') {
    if (!file_exists(APPPATH.'/views/pages/'.$page.'.php'))
	{
      // Whoops, we don't have a page for that!
      show_404();
	}
    $data['title'] = ucfirst($page);
    $this->construct_page('pages/' . $page, $data);
  }
  
  public function construct_page($page, $data = array()) {
    if($this->users_model->is_connected()) {
      $data_nav['connecte'] = TRUE;
    }
    else {
      $data_nav['connecte'] = FALSE;
    }
    
    $this->load->view('templates/header', $data);
    $this->load->view('templates/navbar', $data_nav);
    $this->load->view('templates/sidebar');
    $this->load->view($page, $data);
    $this->load->view('templates/footer');
  }
}