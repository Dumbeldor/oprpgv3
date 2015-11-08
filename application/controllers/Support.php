<?php

/**
 ******************************************************************************
 * Description : 
 * This page contains support
 * @todo Finish this description
 * @author Dumbeldor
 * @version 1.0.0
 ******************************************************************************
 */

class Support extends MY_Controller {

  // ========================================================================
  // CREATE PAGE
  // ========================================================================

  /**
   * Default Constructor
   * ----------------------------------------------------------------------- */
  public function __construct() {
    parent::__construct();
    if(!$this->user->isAuthenticated())
      redirect(base_url('/home/accueil'));
    // Loading models
    $this->load->model('support_model');
    $this->load->model('users_model');
  }

  // ========================================================================
  // METHODS
  // ========================================================================

  /**
   * Default Page or Display each type of support
   * ----------------------------------------------------------------------- */
  public function index() {

    // Set title and loading support's type
    $data['title'] = 'Support';
    $data['ticket'] = $this->support_model->getTicket();

    // Construct this page
    $this->construct_page('ticket/index', $data);

  } //-- end function index()

  /**
   * @todo Descript
   * ----------------------------------------------------------------------- */
  public function read($id) {

    if(empty($id)) {
      redirect('support/');
    }

    $data['title'] = 'Support lecture ticket';
    $data['ticket'] = $this->support_model->getTicket($id)[0];

    $this->construct_page('ticket/read', $data);

  } //-- end function read($id)

} //-- end class Support extends MY_Controller
