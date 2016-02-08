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
    $this->load->model('bag_model');
  }

  /**
   * Of the account index page
   * ----------------------------------------------------------------------- */
  public function index()
  {
    $data['title'] = 'Mon sac';
    $data['bags'] = $this->bag_model->getBags();
    $this->construct_page('game/bag/index.php', $data);
  }
  public function inventory($id=0)
  {
    if($id == 0)
      redirect('bag');
    
    $this->load->helper('objects');
    
    $data['title'] = 'Inventaire';
    $data['items'] = $this->bag_model->inventory($id);
    $this->construct_page('game/bag/inventory.php', $data);
  }
}