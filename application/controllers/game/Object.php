<?php

class Object extends MY_Game
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
        $this->load->model('game/object_model');
    }

    public function equip($id=0){
        if($id == 0)
            redirect('bag/');

        $name = $this->object_model->equip($id);
        if(!$name)
            redirect('bag/');
        $data['title'] = "Équipement de $name";
        $data['name'] = $name;
        $this->construct_page('game/object/equip', $data);
    }
}