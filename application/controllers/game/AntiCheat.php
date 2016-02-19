<?php

class AntiCheat extends MY_Game
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
        $this->load->library('character');
    }
    public function leaveFight(){
        $this->character->setInFight(false);
        $data['title'] = "Script anti triche: Vous avez quitté un combat...";

        $this->character_model->dead();

        $this->construct_page('game/anticheat/leaveFight', $data);
    }

    public function dead(){
        if($this->character->getLife() > 0)
            redirect('/game/map');

        $data['title'] = "Vous êtes mort";
        $this->construct_page('game/anticheat/dead', $data);
    }
}