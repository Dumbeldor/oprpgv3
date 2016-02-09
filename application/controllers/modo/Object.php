<?php
/**
 ******************************************************************************
 * Description :
 * This page contains object modo
 * @author Dumbeldor
 ******************************************************************************
 */
class Object extends MY_Controller {
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
        $this->load->model('modo/object_model');
    }

    public function index() {
        $data['title'] = "Modo gestion des Objets";

        $this->construct_page('modo/object/index', $data);
    }
    public function type(){
        $this->load->helper('form');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('name', 'Nom du type de l\'objet', 'required|max_length[100]|is_unique[objects_types.name]');

        if($this->form_validation->run() == FALSE) {
            $data['title'] = "Ajout de type d'objet";
            $data['types'] = $this->object_model->getTypes();
            $this->construct_page('modo/object/type', $data);
        }
        else {
            $data['title'] = "Enregistrement réussis";
            $data['sauv'] = " du type d'objet : ".$this->input->post('name');
            $this->object_model->addType($this->input->post('name'));
            $this->construct_page('modo/object/reussis', $data);
        }
    }
    public function add(){
        $this->load->helper('form');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('name', 'Nom de l\'objet', 'required|max_length[100]|is_unique[objects.name]');
        $this->form_validation->set_rules('description', 'Description de l\'objet', 'required|max_length[255]');
        $this->form_validation->set_rules('price', 'Nom de l\'objet', 'required');
        $this->form_validation->set_rules('rarity', 'Nom de l\'objet', 'required');
        $this->form_validation->set_rules('type', 'Nom de l\'objet', 'required');

        $data['title'] = 'Ajout d\un objet';
        $data['types'] = $this->object_model->getTypes();

        if($this->form_validation->run() == FALSE) {
            $this->construct_page('modo/object/add', $data);
        }
        else {
            $config['upload_path'] = './assets/img/objects/';
            $config['allowed_types'] = 'png';
            $config['max_size']	= '2000';
            $config['max_width']  = '4000';
            $config['max_height']  = '2260';
            $id = $this->object_model->getLastId();
            $id++;
            $config['file_name'] = $id.'.png';
            $this->load->library('upload', $config);
            if(!$this->upload->do_upload()){
                $data['error'] = $this->upload->display_errors();
                $this->construct_page('modo/object/add', $data);
            } else {
                $name = $this->input->post('name');
                $description = $this->input->post('description');
                $price = $this->input->post('price');
                $attack = $this->input->post('attack');
                $speed = $this->input->post('speed');
                $defense = $this->input->post('defense');
                $attackMag = $this->input->post('attackMag');
                $addLife = $this->input->post('addLife');
                $addHaki = $this->input->post('addHaki');
                $rarity = $this->input->post('rarity');
                $type = $this->input->post('type');

                $this->object_model->addObject($name, $description, $price, $attack, $speed, $defense, $attackMag, $addLife, $addHaki, $rarity, $type);

                $data['title'] = "Enregistrement réussis";
                $data['sauv'] = " de l'objet : $name";
                $this->construct_page('modo/object/reussis', $data);
            }
        }

    }

    public function modify($id=0){
        if($id == 0){
            $data['title'] = "Choisir objet à modifier";
            $data['objects'] = $this->object_model->getObjects();
            $this->construct_page('modo/object/list', $data);
        }
        else {
            $this->load->helper('form');
            $this->load->library('form_validation');

            $this->form_validation->set_rules('name', 'Nom de l\'objet', 'required|max_length[100]');
            $this->form_validation->set_rules('description', 'Description de l\'objet', 'required|max_length[255]');
            $this->form_validation->set_rules('price', 'Nom de l\'objet', 'required');
            $this->form_validation->set_rules('rarity', 'Nom de l\'objet', 'required');
            $this->form_validation->set_rules('type', 'Nom de l\'objet', 'required');

            if($this->form_validation->run() == FALSE) {
                $data['types'] = $this->object_model->getTypes();
                $data['object'] = $this->object_model->getObject($id);
                $data['title'] = "Modification de l'objet " . $data['object']['name'];
                $this->construct_page('modo/object/modify', $data);
            }
            else {

                $config['upload_path'] = './assets/img/objects/';
                $config['allowed_types'] = 'png';
                $config['max_size']	= '2000';
                $config['max_width']  = '4000';
                $config['max_height']  = '2260';
                $config['file_name'] = $id.'.png';
                $this->load->library('upload', $config);

                $this->upload->do_upload();
                $name = $this->input->post('name');
                $description = $this->input->post('description');
                $price = $this->input->post('price');
                $attack = $this->input->post('attack');
                $speed = $this->input->post('speed');
                $defense = $this->input->post('defense');
                $attackMag = $this->input->post('attackMag');
                $addLife = $this->input->post('addLife');
                $addHaki = $this->input->post('addHaki');
                $rarity = $this->input->post('rarity');
                $type = $this->input->post('type');
                $is_block = $this->input->post('is_block');

                $this->object_model->modifyObject($id, $name, $description, $price, $attack, $speed, $defense, $attackMag, $addLife, $addHaki, $rarity, $type, $is_block);

                $data['title'] = "Enregistrement réussis";
                $data['sauv'] = " de l'objet : $name";
                $this->construct_page('modo/object/reussis', $data);
            }
        }
    }
}