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
        $this->load->library('character');
        if(!$this->character->inIsland() || $this->map_model->getType() != 5)
            redirect('game/map');
        $this->load->model('game/training_model');
    }

    public function index(){
        $data['title'] = "Centre d'entrainement";
        $this->construct_page('game/training/index.php', $data);
    }

    public function addJson() {
        if(isset($_SERVER['HTTP_X_REQUESTED_WITH']) AND $_SERVER['HTTP_X_REQUESTED_WITH'] == "XMLHttpRequest"){
            $result = json_decode($_POST['test'], true);
            $total = 0;
            foreach($result as $r){
                $total += $r;
            }
            if($total > $this->character->getStat()){
                $this->training_model->reset();
                die("Script anti triche, reset de vos stats...");
            }
            $reussis = $this->training_model->addJson($result);
            if($reussis)
                echo "Problème lors de l'ajout de vos stats, rechargez la page...<br>";
            else
                echo "Stat bien enregistré !<br>";
        }
        else {
            redirect('game/training/add');
        }
    }

    public function add($attribut="", $nb=1){
        $data['scripts'][] = base_url('assets/js/game/training/add.js');
        if($attribut == "" || ($this->character->getStatRemaining() - $nb) < 0){
            $data['title'] = "Ajout de point dans les stats";
            $this->construct_page('game/training/add', $data);
        } else {
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