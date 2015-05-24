<?php
/**
 ******************************************************************************
 * Description : 
 * This page contains the messaging handling
 * @todo Coding
 * @author Dumbeldor
 * @version 0.1.0
 ******************************************************************************
 */
class Messaging extends MY_Controller {
    // ========================================================================
    // CREATE PAGE
    // ========================================================================

    /**
     * Default Constructor
     * ----------------------------------------------------------------------- */
  public function __construct() {
    parent::__construct();
    $this->load->model('messaging_model');
    if(!$this->users_model->is_connected())
      redirect('index');
  }
    /**
     * Of the messaging index page, list private message
     * ----------------------------------------------------------------------- */
  public function index()
  {
    $data['title'] = 'Messagerie';
    $data['private_message'] = $this->messaging_model->lists(5, 0);
    $this->construct_page('messaging/index', $data);
  }
  /*
  * Read a private message
  */
  public function read()
  {
    $data['title'] = 'Messagerie';
    
    
    $this->construct_page('messagerie/messagerie', $data);
  }
}