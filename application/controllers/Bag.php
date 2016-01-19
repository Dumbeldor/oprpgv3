<?php
class Bag extends MY_Controller {
     /**
   * Default Constructor
   * ----------------------------------------------------------------------- */
  public function __construct() {
    parent::__construct();
    //If not connected member
    if(!$this->user->isAuthenticated())
      redirect(base_url('/home/accueil'));
  }

  /**
   * Of the account index page
   * ----------------------------------------------------------------------- */
  public function index()
  {
    $data['title'] = 'Mon sac';
    $this->load->model('bag_model');
    $data['bags'] = $this->bag_model->getBags();
    $this->construct_page('game/bag/index.php', $data);
  }
  public function bag($id=0)
  {
    $data['title'] = 'Mes sacs';
    $this->load->model('bag_model');
    $data['bags'] = $this->bag_model->getObjects($id);
    $this->construct_page('game/bag/index.php', $data);
  }
}