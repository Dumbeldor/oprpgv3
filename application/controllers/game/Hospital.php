<?php

class Hospital extends MY_Game
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
        if(!$this->character->inIsland() || $this->map_model->getType() != 10)
            redirect('game/map');
        $this->load->model('game/hospital_model');
    }

    public function index($msg="")
    {
        $data['title'] = 'Hopital';
        $data['msg'] = $msg;
        $this->construct_page("game/hospital/index", $data);
    }

    public function heal()
    {
        $price = 10;
        $berry = $this->character->getBerry() - $price;
        if($berry < 0)
            $msg = "Vous n'avez pas assez d'argent pour vous soignez.";
        else if($this->character->getLife() == $this->character->getMaxLife())
            $msg = "Vous avez déjà toute votre vie !";
        else {
            $this->hospital_model->heal($price);
            $msg = "Voilà vous avez maintenant " . $this->character->getMaxLife() . " vie, il vous reste $berry berry.";
        }
        $this->index($msg);
    }

}