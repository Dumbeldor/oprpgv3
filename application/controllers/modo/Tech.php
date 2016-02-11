<?php
class Tech extends MY_Controller
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
        $this->load->model('modo/tech_model');
    }

    public function index()
    {
        $data['title'] = 'Modo : Technique';
        $this->construct_page('modo/tech/index', $data);
    }

    public function add(){
        $this->load->helper('form');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('name', 'Nom de la technique', 'required|max_length[100]|is_unique[tech.name]');
        $this->form_validation->set_rules('descr', 'Description la technique', 'required');
        $this->form_validation->set_rules('lvl', 'Le lvl requis de la technique', 'required');
        $this->form_validation->set_rules('price', 'Le prix de la technique', 'required');
        $this->form_validation->set_rules('energy', 'L\'energie utilisé pour utilisé la technique', 'required');
        $this->form_validation->set_rules('adding', 'L\'ajout de la technique', 'required');

        if($this->form_validation->run() == FALSE) {
            $data['title'] = "Ajout d'une technique";
            $data['types'] = $this->tech_model->getTechsTypes();
            $this->construct_page('modo/tech/add', $data);
        }
        else {
            $name = $this->input->post('name');
            $descr = $this->input->post('descr');
            $lvl = $this->input->post('lvl');
            $price = $this->input->post('price');
            $energy = $this->input->post('energy');
            $adding = $this->input->post('adding');
            $type = $this->input->post('type');

            $this->tech_model->addTech($name, $descr, $lvl, $price, $energy, $adding, $type);

            $data['title'] = "Enregistrement réussis de la technique $name";
            $data['sauv'] = "Vous venez de rajouter la technique $name dans le jeu ! <br> MERCI ! et HAVE FUN.";
            $this->construct_page('modo/tech/reussis', $data);

        }
    }

    public function modify($id=0){
        if($id == 0){
            $data['title'] = "Choisir une technique à modifier";
            $data['techs'] = $this->tech_model->getTechsIdNameLvl();
            $this->construct_page('modo/tech/list', $data);
        }
        else {
            $this->load->helper('form');
            $this->load->library('form_validation');

            $this->form_validation->set_rules('name', 'Nom de la technique', 'required|max_length[100]|is_unique[tech.name]');
            $this->form_validation->set_rules('descr', 'Description la technique', 'required');
            $this->form_validation->set_rules('lvl', 'Le lvl requis de la technique', 'required');
            $this->form_validation->set_rules('price', 'Le prix de la technique', 'required');
            $this->form_validation->set_rules('energy', 'L\'energie utilisé pour utilisé la technique', 'required');
            $this->form_validation->set_rules('adding', 'L\'ajout de la technique', 'required');

            if($this->form_validation->run() == FALSE) {
                $data['title'] = "Modification d'une technique";
                $data['types'] = $this->tech_model->getTechsTypes();
                $data['tech'] = $this->tech_model->getTech($id);
                $this->construct_page('modo/tech/modify', $data);
            }
            else {
                $name = $this->input->post('name');
                $descr = $this->input->post('descr');
                $lvl = $this->input->post('lvl');
                $price = $this->input->post('price');
                $energy = $this->input->post('energy');
                $adding = $this->input->post('adding');
                $type = $this->input->post('type');

                $this->tech_model->modifyTech($id, $name, $descr, $lvl, $price, $energy, $adding, $type);
                $data['title'] = "Modification réussis de la technique $name";
                $data['sauv'] = "Vous venez de modifier la technique $name dans le jeu ! <br> MERCI ! et HAVE FUN.";
                $this->construct_page('modo/tech/reussis', $data);
            }
        }
    }
}