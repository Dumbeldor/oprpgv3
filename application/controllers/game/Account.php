<?php
/**
 * Created by PhpStorm.
 * User: vincent
 * Date: 09/02/16
 * Time: 17:44
 */
class Account extends MY_Game{
    public function __construct() {
        parent::__construct();
        //If not connected member
        if(!$this->user->isAuthenticated())
            redirect(base_url('/home/accueil'));
        $this->load->model('game/account_model');
    }

    public function index() {
        $this->load->library('weapon');
        $this->load->library('armor');
        $data['title'] = "Votre personnage";

        $this->construct_page('game/account/index.php', $data);
     }
}