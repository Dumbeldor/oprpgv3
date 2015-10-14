<?php
/**
 ******************************************************************************
 * Description : 
 * This page contains crews (Team)
 * @todo Finish this description
 * @author Dumbeldor
 * @version 0.1.0
 ******************************************************************************
 */
class Crews extends MY_Controller {
    // ========================================================================
	// CREATE PAGE
	// ========================================================================

	/**
	 * Default Constructor
	 * ----------------------------------------------------------------------- */
	public function __construct() {
		parent::__construct();
		if(!$this->user->isAuthenticated())
			redirect(base_url('/home/accueil'));
		// Loading models
		$this->load->model('crews_model');
		$this->load->library('crew');
		$this->load->model('users_model');
	}
    
    public function index() {
		// Set title and loading forum's type
		$data['title'] = 'Équipage';
		if($this->crew->inCrew()) {
			$this->construct_page('crews/index', $data);
		}
		else {
			$this->load->helper('form');
			// Construct this page
			$this->construct_page('crews/indexNoCrew', $data);
		}
    }
	
	public function create() {
		if($this->crew->inCrew()) {
			redirect(base_url('/crews/index'));
		}
		$data['title'] = 'Création de votre équipage';
		$this->load->library('form_validation');
		$this->load->helper('form');
		$this->form_validation->set_rules('crewName', 'Nom équipage', 'required|min_length[3]|max_length[15]|is_unique[crews.name]');
		  if ($this->form_validation->run() === FALSE) {
			$this->construct_page('crews/create', $data);
		}
		else {
			$this->crews_model->createCrew();
			$this->construct_page('crews/success', $data);
		}	
	}
	
	public function liste($page = 0) {		
		$this->load->library('pagination');
		
		//pagination
		$nbCrews = $this->crews_model->countCrews();
		$config['base_url'] = base_url('/crews/liste/');
		$config['total_rows'] = $nbCrews;
		$config['per_page'] = 20;
		$config['last_link'] = 'Dernière';
		$config['first_link'] = 'Première';
		
		$this->pagination->initialize($config);
		
		if($page > 0)
		{
			if($page <= $nbCrews)
				$page = intval($page);
			else
				$page = 0;
		}
		else
			$page = 0;
		
		
		$data['pagination'] = $this->pagination->create_links();
		
		
		
		// Set title and loading categories
		$data['title'] = "Liste des équipes";
		$data['listes'] = $this->crews_model->listeCrews(20, $page);
	    
		$this->construct_page('crews/listeCrews', $data);		
	}
	
	public function view($id=0) {
		if($id == 0)
			redirect(base_url('/crews/index'));
		$data['crew'] = $this->crews_model->viewCrews($id)[0];
		$data['users'] = $this->crews_model->listUsers($id);
		if(!isset($data['crew'])){
			redirect(base_url('/crews/index'));
		}
		$data['title'] = "Équipage ".$data['crew']['name'];
		$this->construct_page('crews/viewCrew', $data);
	}
	
	public function candidacy($id=0) {
		if($id == 0 || $this->crew->inCrew())
			redirect(base_url('/crews/index'));
		
		$data['title'] = 'Candidature équipage';
		$data['id'] = $id;
		$this->load->library('form_validation');
		$this->load->helper('form');
		$this->form_validation->set_rules('title', 'Titre candidature', 'required|min_length[3]|max_length[254]');
		$this->form_validation->set_rules('content', 'Contenu candidature', 'required|min_length[10]');
		  if ($this->form_validation->run() === FALSE) {
			$this->construct_page('crews/candidacy', $data);
		}
		else {
			$this->crews_model->createCandidacy($id);
			$this->construct_page('crews/candidacySuccess', $data);
		}	
					
	}
    
    //the list of candidates to enter the crew
    public function candidates() {
		if(!$this->crew->inCrew() || !($this->crew->isAdmin() || $this->crew->isModo())) {
			redirect(base_url('/crews/index'));
		}
        // Set title
        $data['title'] = 'Équipe: Liste des candidatures';
		$data['candidates'] = $this->crews_model->listCandidates();
        
        // Construct this page
        $this->construct_page('crews/listeCandidate', $data);
    }
}