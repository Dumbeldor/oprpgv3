<?php
/**
 ******************************************************************************
 * Description :
 * This page contains modo map
 * @author Dumbeldor
 ******************************************************************************
 */
class Island extends MY_Controller {
    /**
     * Default Constructor
     * ----------------------------------------------------------------------- */
    public function __construct() {
        parent::__construct();
        if(!$this->user->isAuthenticated() OR !$this->user->isModo())
            redirect(base_url('/home/accueil'));
        // Loading models
        $this->load->model('modo/island_model');
    }

    public function index() {
        $data['title'] = "Modo: Affichage map d'une ile";
        $data['islands'] = $this->island_model->getIslandsIdName();
        $this->construct_page('modo/island/list.php', $data);
    }

    public function map($id = 0, $x = 0, $y = 0) {
        if($id == 0)
            redirect('modo/');

        $data['maps'] = $this->island_model->getMaps($id, $x, $y);
        $data['title'] = "Modo: Affichage map ile n°".$id;
        $data['x'] = $x;
        $data['y'] = $y;
        $data['id'] = $id;

        //print_r($data['maps']);

        $this->construct_page('modo/map/map.php', $data);
    }
}