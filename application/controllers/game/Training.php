<?php

class Training extends MY_Game
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
        if(!$this->character->inIsland() || $this->map_model->getType() != 5)
            redirect('game/map');
        $this->load->library('character');
        $this->load->model('game/training_model');
    }

    public function index(){
        $data['title'] = "Centre d'entrainement";
        $this->construct_page('game/training/index.php', $data);
    }

    public function add($attribut="", $nb=1){
        if($attribut == "" || ($this->character->getStatRemaining() - $nb) < 0){
            $data['title'] = "Ajout de point dans les stats";
            $this->construct_page('game/training/add', $data);
        } else {
            echo "fdsfds";
            $reussis = $this->training_model->add($attribut, $nb);
            if($reussis)
                redirect('game/training/add');
            $this->add();
        }
    }

    public function init($error="") {
        if($error!="")
            $data['error'] = $error;
        $data['title'] = "Reset de vos stats";
        $this->construct_page('game/training/reset', $data);
    }

    public function reset() {
        if($this->character->getStat()*5 > $this->character->getBerry())
            redirect('game/training/init/error');
        $this->training_model->reset();
        redirect('game/training/add');
    }
}