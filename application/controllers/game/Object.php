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
        $this->load->library('character');
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

    public function unequip($id=0) {
        //if(isset($_SERVER['HTTP_X_REQUESTED_WITH']) AND $_SERVER['HTTP_X_REQUESTED_WITH'] == "XMLHttpRequest") {
            if ($id == 0) {
                header('500 Internal Server Error', true, 500);
                die("");
            }
            $this->object_model->unequip($id);
            echo "Vous vous êtes bien déséquiper du stuff.";
        //}
    }
}