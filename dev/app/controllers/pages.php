<?php
  
  /* 
   * 
   */
  class Pages extends MY_Controller {

    // Default constructor for all pages
    public function __construct() {
      parent::__construct();
      $this->load->model('users_model');
    }

    // Generate page
    public function view($page = 'home') {
      if (!file_exists(APPPATH.'/views/pages/'.$page.'.php'))
      {
        // Whoops, we don't have a page for that!
        show_404();
      }

      // What is this thing ??
      $data['title'] = ucfirst($page);
      $this->construct_page('pages/' . $page, $data);
    }

    // Construction pages
    public function construct_page($page, $data = array()) {
      if($this->users_model->is_connected()) {
        $data_nav['connecte'] = TRUE;
      }
      else {
        $data_nav['connecte'] = FALSE;
      }

      // Generate page with template form
      $this->load->view('templates/header', $data);
      $this->load->view('templates/navbar', $data_nav);
      $this->load->view('templates/sidebar');
      $this->load->view($page, $data);
      $this->load->view('templates/footer');
    }
    
  }