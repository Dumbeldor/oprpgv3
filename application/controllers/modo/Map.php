<?php
/**
 ******************************************************************************
 * Description :
 * This page contains modo map
 * @author Dumbeldor
 ******************************************************************************
 */
class Map extends MY_Controller {
    // ========================================================================
    // CREATE PAGE
    // ========================================================================

    /**
     * Default Constructor
     * ----------------------------------------------------------------------- */
    public function __construct() {
        parent::__construct();
        if(!$this->user->isAuthenticated() OR !$this->user->isModo())
            redirect(base_url('/home/accueil'));
        // Loading models
        $this->load->model('modo/map_model');
    }

    public function index() {
        $data['title'] = 'Modo: Map';
        //$data['map'] = $this->map_model->getMap();
        $this->construct_page('modo/map/index.php', $data);
    }

    public function createType() {
        $data['title'] = 'Modo: Création type de map';

        $this->load->helper('form');
        $this->load->library('form_validation');
        $this->load->library('upload');

        $this->form_validation->set_rules('name', 'Nom du type de la map', 'required|max_length[100]|is_unique[maps_types.name]');
        $this->form_validation->set_rules('lvl', 'Lvl du type de la map', 'required');

        if($this->form_validation->run() == FALSE) {
            $this->load->model('modo/object_model');
            $this->load->model('modo/monster_model');
            $this->load->model('modo/island_model');
            $data['objects'] = $this->object_model->getObjectsIdName();
            $data['monsters'] = $this->monster_model->getMonstersIdNameLvl();
            $data['islands'] = $this->island_model->getIslandsIdName();
            $data['types'] = $this->map_model->getTypeIdName();
            $this->construct_page('modo/map/createType.php', $data);
        }
        else {
            //IMAGE1
            $config['upload_path'] = './assets/img/maps/';
            $config['allowed_types'] = 'png';
            $config['max_size']	= '2000';
            $config['max_width']  = '4000';
            $config['max_height']  = '2260';
            $id = $this->map_model->getLastId();
            $id++;
            $config['file_name'] = $id.'.png';
            $image1 = array('userfile' => $_FILES['userfile']);
            $image2 = array('userfile' => $_FILES['image2']);
            $_FILES = $image1;
            print_r($_FILES);
            $this->upload->initialize($config);
            $this->upload->do_upload();

            //IMAGE2
            $_FILES = $image2;
            $config['upload_path'] = './assets/img/maps/mini/';
            $config['file_name'] = $id.'.png';
            $this->upload->initialize($config);
            $this->upload->do_upload();


            $name = $this->input->post('name');
            $lvl = $this->input->post('lvl');
            $objects = $this->input->post('objects');
            $monsters = $this->input->post('monsters');
            $type = $this->input->post('island');
            $idIsland = $this->input->post('idIsland');
            if($idIsland == 0)
                $idIsland = null;

            if(empty($inIsland))
               $inIsland = 0;

            $this->map_model->addType($name, $lvl, $objects, $monsters, $type, $idIsland);
            $data['title'] = 'Ajout map type réussis';
            $this->construct_page('modo/map/reussis.php', $data);
        }
    }

    public function map(){
        $data['title'] = "Choix map";
        $this->construct_page('modo/map/choice.php', $data);
    }

    public function ocean($x=0, $y=0){
        $data['title'] = "Modo: Affichage map";
        $data['maps'] = $this->map_model->getMaps($x, $y);
        $data['x'] = $x;
        $data['y'] = $y;

        //print_r($data['maps']);

        $this->construct_page('modo/map/map.php', $data);
    }
    public function modify($id=null){
        $data['title'] = 'Modo: Ajouter map';

        $this->load->helper('form');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('x', 'X', 'required');
        $this->form_validation->set_rules('y', 'Y', 'required');
        $this->form_validation->set_rules('type', 'type', 'required');

        $x = $this->input->post('x');
        $y = $this->input->post('y');
        $type = $this->input->post('type');

        if($this->form_validation->run() == FALSE OR $this->map_model->exist($x, $y, $id)) {
            echo $x, $y;
            $data['id'] = $id;
            if(empty($id))
                $data['types'] = $this->map_model->getTypesOcean();
            else {
                $this->load->model('modo/island_model');
                $data['types'] = $this->island_model->getTypes();
            }
            $this->construct_page('modo/map/modify.php', $data);
        }
        else {
            $this->map_model->addMap($x, $y, $type, $id);
            $this->construct_page('modo/map/reussis.php', $data);
        }
    }
}