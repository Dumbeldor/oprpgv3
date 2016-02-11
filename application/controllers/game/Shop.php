<?php

class Shop extends MY_Game
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
        $this->load->model('game/shop_model');
    }

    public function index()
    {
        $this->load->model('game/map_model');
        $type = $this->map_model->getType();
        if($type != 6)
            redirect('game/map');
        $data['title'] = "Magasin général";
        $this->construct_page('game/shop/index', $data);
    }

    public function weapon()
    {
        $this->load->model('game/map_model');
        $type = $this->map_model->getType();
        if($type != 6 AND $type != 7)
            redirect('game/map');

        $data['weapons'] = $this->shop_model->getWeapons();
        $data['title'] = 'Boutique des armes';
        $this->construct_page('game/shop/weapon', $data);
    }

    public function armor()
    {
        $this->load->model('game/map_model');
        $type = $this->map_model->getType();
        if($type != 6 AND $type != 8)
            redirect('game/map');

        $data['armors'] = $this->shop_model->getArmors();
        $data['title'] = 'Boutique des armures';
        $this->construct_page('game/shop/armor', $data);
    }

    public function object()
    {
        $this->load->model('game/map_model');
        $type = $this->map_model->getType();
        if($type != 6 AND $type != 9)
            redirect('game/map');

        $data['objects'] = $this->shop_model->getObjects();
        $data['title'] = 'Boutique des objets divers';
        $this->construct_page('game/shop/object', $data);
    }

    public function buy($id=0)
    {
        $this->load->model('game/object_model');
        $this->load->model('game/map_model');

        $type = $this->map_model->getType();
        $object = $this->object_model->getTypeBerryName($id);
        $typeObject = $object['type'];
        if(($typeObject == 1 && $type != 6 AND $type != 7) || ($typeObject == 2 && $type != 6 AND $type != 8) || ($type != 6 AND $typeObject != 1 AND $typeObject != 2))
            redirect('game/shop/');

        $data['title'] = "Boutique";

        if(($this->character->getBerry()-$object['price']) < 0) {
            $data['error'] = "Vous n'avez pas assez d'argent pour acheter cet objet...";
            $this->construct_page('game/shop/error', $data);
        }
        else {
            $this->load->model('game/bag_model');
            $error = $this->bag_model->addObject($id);
            if (!$error) {
                $data['error'] = "Vous n'avez plus assez de place dans vos sacs";
                $this->construct_page('game/shop/error', $data);
            }
            else {
                $this->load->model('game/character_model');
                $data['name'] = $object['name'];
                $data['price'] = $object['price'];
                $this->character->setBerry($this->character->getBerry() - $object['price']);
                $this->character_model->setBerry($this->character->getBerry() - $object['price']);
                $this->construct_page('game/shop/reussis', $data);
            }
        }
    }
}