<?php

/*
 * 
INUTILE...
Le 404 s'affiche quand la route est pas config :)

Dumbeldor.
 */

class Pages extends MY_Controller {

  // Default constructor for all pages
  public function __construct() {
    parent::__construct();
    $this->load->model('users_model');
  }

  // Generate page
  public function view($page = 'home') {
    if(!file_exists(APPPATH . '/views/pages/' . $page . '.php')) {
      // Whoops, we don't have a page for that!
      show_404();
    }

    // What is this thing ??
    $data['title'] = ucfirst($page);
    $this->construct_page('pages/' . $page, $data);
  }
}
