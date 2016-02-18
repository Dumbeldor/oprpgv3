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
        $this->load->library('character');
        $this->load->model('game/account_model');
    }

    public function index() {
        $this->load->library('weapon');
        $this->load->library('armor');
        $this->load->model('game/tech_model');

        $data['scripts'][] = base_url('assets/js/game/account/account.js');
        $data['title'] = "Votre personnage";
        $data['techs'] = $this->tech_model->getTechs($this->character->getId());

        $this->construct_page('game/account/index.php', $data);
     }
}