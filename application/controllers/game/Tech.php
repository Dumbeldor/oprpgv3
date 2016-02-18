<?php

class Tech extends MY_Game
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
        $this->load->model('game/tech_model');
    }

    public function utilise($id=0){
        if($id==0)
            redirect('game/account');

        $tech = $this->tech_model->getTech($id);
        if(!$tech)
            redirect('game/account');

        if($tech['type'] == 3) { // Heal
            if($this->character->getEnergies() >= $tech['energy']) {
                $this->character->addLife($tech['adding']);
                $this->character->removeEnergies($tech['energy']);
                $this->tech_model->heal();
                $data = array('name' => $tech['name'], 'addLife'=>$tech['adding'], 'life' => $this->character->getLife(), 'maxLife' => $this->character->getMaxLife(),
                            'energies' => $this->character->getEnergies(), 'maxEnergies' => $this->character->getMaxEnergy());
                echo json_encode($data);
            }
            else {
                echo "Vous n'avez pas assez d'énergie pour executer " . $tech['name'] . " allez vous reposer !";
            }
        }
    }
}