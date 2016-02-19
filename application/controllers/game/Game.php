<?php

class Game extends MY_Game
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

    public function dead(){
        $data['dead'] = true;
        $data['title'] = "Vous êtes mort";
        $this->construct_page('game/game/dead', $data);
    }

    public function resurrected(){
        $this->character_model->resurrected();
        redirect('game/map');
    }
}