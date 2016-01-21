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
		
		$config['upload_path'] = './assets/img/maps/';
		$config['allowed_types'] = 'png';
		$config['max_size']	= '2000';
		$config['max_width']  = '4000';
		$config['max_height']  = '2260';
		//IMAGE
		$id = $this->map_model->getLastId();
		$id++;
		$config['file_name'] = $id.'.png';
		
        $this->load->library('upload', $config);
		
        $this->form_validation->set_rules('name', 'Nom du type de la map', 'required|max_length[100]|is_unique[maps_types.name]');
        $this->form_validation->set_rules('lvl', 'Lvl du type de la map', 'required');
        
        if($this->form_validation->run() == FALSE OR !$this->upload->do_upload()) {
			if(!$this->upload->do_upload())
				$data['error'] = $this->upload->display_errors();
            $data['objects'] = $this->map_model->listObjects();
            $data['monsters'] = $this->map_model->listMonsters();
            $this->construct_page('modo/map/createType.php', $data);
        }
        else {
			
			$name = $this->input->post('name');
			$lvl = $this->input->post('lvl');
			$objects = $this->input->post('objects');
			$monsters = $this->input->post('monsters');
			
            //$this->map_model->addType($name, $lvl, $objects, $monsters);
			$data['title'] = 'Ajout map type réussis';
			$this->construct_page('modo/map/reussis.php', $data);
        }
    }
}