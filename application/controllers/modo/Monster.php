<?php
/**
 ******************************************************************************
 * Description :
 * This page contains monster modo
 * @author Dumbeldor
 ******************************************************************************
 */
class Monster extends MY_Controller
{
    // ========================================================================
    // CREATE PAGE
    // ========================================================================

    /**
     * Default Constructor
     * ----------------------------------------------------------------------- */
    public function __construct()
    {
        parent::__construct();
        if (!$this->user->isAuthenticated() OR !$this->user->isModo())
            redirect(base_url('/home/accueil'));
        // Loading models
        $this->load->model('modo/monster_model');
    }

    public function index()
    {
        $data['title'] = "Modo gestion des Monstres";

        $this->construct_page('modo/monster/index', $data);
    }

    public function add(){
        $this->load->helper('form');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('name', 'Nom du monstre', 'required|max_length[100]|is_unique[monster.name]');
        $this->form_validation->set_rules('description', 'La description du monstre', 'required');
        $this->form_validation->set_rules('life', 'La vie du monstre', 'required');
        $this->form_validation->set_rules('lvl', 'Lvl du monstre', 'required');
        $this->form_validation->set_rules('xp', 'Xp loot par le monstre', 'required');
        $this->form_validation->set_rules('attack', 'Attaque du monstre', 'required');
        $this->form_validation->set_rules('defense', 'Défense du monstre', 'required');
        $this->form_validation->set_rules('speed', 'Vitesse du mpnstre', 'required');
        $this->form_validation->set_rules('escape', 'Fuite du monstre', 'required');

        if($this->form_validation->run() == FALSE) {
            $this->load->model('modo/object_model');
            $this->load->model('modo/map_model');
            $this->load->model('modo/tech_model');

            $data['title'] = "Ajout d'un monstre";
            $data['objects'] = $this->object_model->getObjects();
            $data['techs'] = $this->monster_model->getTechs();
            $data['mapsTypes'] = $this->tech_model->getTypes();
            $this->construct_page('modo/monster/add', $data);
        }
        else {
            $config['upload_path'] = './assets/img/monsters/';
            $config['allowed_types'] = 'png';
            $config['max_size']	= '2000';
            $config['max_width']  = '4000';
            $config['max_height']  = '2260';
            $id = $this->monster_model->getLastId();
            $id++;
            $config['file_name'] = $id.'.png';
            $this->load->library('upload', $config);
            if(!$this->upload->do_upload()){
                $data['error'] = $this->upload->display_errors();
                $this->construct_page('modo/monster/add', $data);
            } else {
                $name = $this->input->post('name');
                $description = $this->input->post('description');
                $life = $this->input->post('life');
                $lvl = $this->input->post('lvl');
                $xp = $this->input->post('xp');
                $attack = $this->input->post('attack');
                $defense = $this->input->post('defense');
                $speed = $this->input->post('speed');
                $escape = $this->input->post('escape');
                $maps = $this->input->post('maps');
                $objects = $this->input->post('objects');
                $techs = $this->input->post('techs');

                $this->monster_model->addMonster($name, $description, $life, $lvl, $xp, $attack, $defense, $speed, $escape, $maps, $objects, $techs);

                $data['title'] = "Enregistrement réussis du monstre $name";
                $data['sauv'] = " du monstre $name";
                $this->construct_page('modo/monster/reussis', $data);
            }
        }
    }

    public function modify($id=0){
        if($id == 0) {
            $data['title'] = 'Choisir monstre à modifier';
            $data['monsters'] = $this->monster_model->getMonsters();
            $this->construct_page('modo/monster/list', $data);
        }
        else {
            $this->load->helper('form');
            $this->load->library('form_validation');

            $this->form_validation->set_rules('name', 'Nom du monstre', 'required|max_length[100]');
            $this->form_validation->set_rules('description', 'La description du monstre', 'required');
            $this->form_validation->set_rules('life', 'La vie du monstre', 'required');
            $this->form_validation->set_rules('lvl', 'Lvl du monstre', 'required');
            $this->form_validation->set_rules('xp', 'Xp loot par le monstre', 'required');
            $this->form_validation->set_rules('attack', 'Attaque du monstre', 'required');
            $this->form_validation->set_rules('defense', 'Défense du monstre', 'required');
            $this->form_validation->set_rules('speed', 'Vitesse du mpnstre', 'required');
            $this->form_validation->set_rules('escape', 'Fuite du monstre', 'required');

            if($this->form_validation->run() == FALSE) {
                $this->load->model('modo/object_model');
                $this->load->model('modo/map_model');
                $this->load->model('modo/tech_model');

                $data['title'] = "Ajout d'un monstre";
                $data['objects'] = $this->object_model->getObjects();
                $data['techs'] = $this->monster_model->getTechs();
                $data['mapsTypes'] = $this->tech_model->getTypes();
                $data['monster'] = $this->monster_model->getMonster($id);
                $this->construct_page('modo/monster/modify', $data);
            }
            else {
                $config['upload_path'] = './assets/img/monsters/';
                $config['allowed_types'] = 'png';
                $config['max_size']	= '2000';
                $config['max_width']  = '4000';
                $config['max_height']  = '2260';
                $config['overwrite'] = true;
                $config['file_name'] = $id.'.png';
                $this->load->library('upload', $config);
                $this->upload->do_upload();

                $name = $this->input->post('name');
                $description = $this->input->post('description');
                $life = $this->input->post('life');
                $lvl = $this->input->post('lvl');
                $xp = $this->input->post('xp');
                $attack = $this->input->post('attack');
                $defense = $this->input->post('defense');
                $speed = $this->input->post('speed');
                $escape = $this->input->post('escape');
                $maps = $this->input->post('maps');
                $objects = $this->input->post('objects');
                $techs = $this->input->post('techs');

                $this->monster_model->modifyMonster($id, $name, $description, $life, $lvl, $xp, $attack, $defense, $speed, $escape, $maps, $objects, $techs);

                $data['title'] = "Modification réussis du monstre $name";
                $data['sauv'] = " du monstre $name";
                $this->construct_page('modo/monster/reussis', $data);
            }
        }
    }
}