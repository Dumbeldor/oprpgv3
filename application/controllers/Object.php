<?php
class Object extends MY_Controller {
     /**
   * Default Constructor
   * ----------------------------------------------------------------------- */
  public function __construct() {
    parent::__construct();
    //If not connected member
    if(!$this->user->isAuthenticated())
      redirect(base_url('/home/accueil'));
    $this->load->model('object_model');
  }

  /**
   * Of the account index page
   * ----------------------------------------------------------------------- */
  public function index()
  {}
  
  public function equip($idBag, $idItem=0){
    if($idItem == 0)
        redirect('/bag/');
    
  }
}