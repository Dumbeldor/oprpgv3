<?php

class TrainingCenter extends MY_Game
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
        if(!$this->character->inIsland() || $this->map_model->getType() != 11)
            redirect('game/map');
        $this->load->library('character');
        $this->load->model('game/trainingCenter_model');
    }

    public function index(){
        $data['title'] = "Centre de perfectionnement";
        $this->construct_page('game/trainingCenter/index.php', $data);
    }

    public function tech($msg="") {
        $this->load->model('game/tech_model');
        $data['title'] = "Liste des techniques";
        $data['techs'] = $this->tech_model->getTechs();
        $data['msg'] = $msg;
        $this->construct_page('game/trainingCenter/tech', $data);
    }

    public function learnTech($id=0) {
        if($id==0)
            redirect('game/trainingCenter/techn');

        $this->load->model('game/tech_model');
        $tech = $this->tech_model->getTechPriceLvlName($id);
        $already = $this->tech_model->isLearned($id);
        $price = $tech['price'];
        $lvl = $tech['lvl'];
        $name = $tech['name'];
        $berry = $this->character->getBerry() - $price;
        $energy = $this->character->getEnergies() - ($this->character->getLvl() * 3);
        if($already)
            $msg = "Vous maitrisez déjà $name";
        else if($berry < 0)
            $msg = "Vous n'avez pas assez d'argent pour apprendre $name";
        else if($lvl > $this->character->getLvl())
            $msg = "Vous devez être lvl $lvl pour apprendre $name";
        else if($energy < 0)
            $msg = "Vous avez trop peu d'energie pour apprendre $name, allez vous reposer !";
        else{
            $this->load->model('game/character_model');
            $this->tech_model->learn($id);
            $this->character->setBerry($berry);
            $this->character->setEnergies($energy);
            $this->character_model->setBerryEnergies($berry, $energy);
            $msg = "Après 6 heures d'effort vous finissez par maitrisez $name, bravo !";
        }
        $this->tech($msg);
    }

}