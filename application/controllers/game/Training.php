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
        $this->load->model('game/training_model');
    }

    public function index(){
        $data['title'] = "Centre d'entrainement";
        $this->construct_page('game/training/index.php', $data);
    }

    public function add($attribut="", $nb=1){
        if($attribut == "" || ($this->character->getStatRemaining() - $nb) < 0){
            echo $attribut;
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
}