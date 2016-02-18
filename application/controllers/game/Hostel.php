<?php

class Hostel extends MY_Game
{
    /**
     * Default Constructor
     * ----------------------------------------------------------------------- */
    public function __construct()
    {
        parent::__construct();
        //If not connected member
        if (!$this->user->isAuthenticated())
            redirect(base_url('/home/accueil'));
        $this->load->model('game/map_model');
        $this->load->library('character');
        if (!$this->character->inIsland() || $this->map_model->getType() != 12)
            redirect('game/map');
        $this->load->model('game/hostel_model');
    }

    public function index() {
        $data['title'] = "Auberge";
        $data['scripts'][] = base_url('assets/js/game/hostel/hostel.js');
        $this->construct_page('game/hostel/index', $data);
    }

    public function sleep() {
        $price = 5;
        $berry = $this->character->getBerry() - $price;
        if($berry < 0) {
            header('500 Internal Server Error', true, 500);
            die("Vous n'avez pas assez d'argent !");
        }
        $energy = $this->character->getEnergies();
        $energyMax = $this->character->getMaxEnergy();
        $nbSleep = ($energyMax - $energy) + 2;
        $energy = $energyMax;
        echo "Vous avez dormis $nbSleep heures d'affilé ! Vous avez maintenant $energy/$energyMax energie. Il vous reste <strong>$berry berry</strong>";
        $this->hostel_model->sleep($berry);
    }

    public function eat() {

    }
}