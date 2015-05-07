<?php
class Messagerie extends MY_Controller {
  public function __construct() {
    parent::__construct();
    if(!$this->users_model->is_connected())
      redirect('index');
  }

  public function index()
  {
    $data['title'] = 'Messagerie';

    $this->construct_page('messagerie/index', $data);
  }
  /*
  * Messagerie
  */
  public function read()
  {
    $data['title'] = 'Messagerie';
    
    
    $this->construct_page('messagerie/messagerie', $data);
  }
}