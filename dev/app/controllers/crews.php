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
		$this->load->model('users_model');
	}
    
    public function index() {
		// Set title and loading forum's type
		$data['title'] = 'Équipage';
		if($this->crew->inCrew()) {
			$data['crew'] = $this->crews_model->viewMyCrew()[0];
			$data['users'] = $this->crews_model->listUsers($this->user->getAttribute('crewId'));
			$data['capitaine'] = $this->crew->isCapitaine();
			$data['adminCrew'] = $this->crew->isAdmin();
			$data['modoCrew'] = $this->crew->isModo();
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
		if(!$this->crew->inCrew())
			$data['request'] = $this->crews_model->pendingRequest($id);
		$data['title'] = "Équipage ".$data['crew']['name'];
		$this->construct_page('crews/viewCrew', $data);
	}
	
	public function candidacy($id=0) {
		if($id == 0 || $this->crew->inCrew() || $this->crews_model->pendingRequest($id))
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
		if(!$this->crew->inCrew() || !($this->crew->isCapitaine() || $this->crew->isAdmin() || $this->crew->isModo())) {
			redirect(base_url('/crews/index'));
		}
        // Set title
        $data['title'] = 'Équipe: Liste des candidatures';
		$data['candidates'] = $this->crews_model->listCandidates();
        
        // Construct this page
        $this->construct_page('crews/listeCandidate', $data);
    }
	
	public function accept($idUser=0) {
		if(!$this->crew->inCrew() || !($this->crew->isCapitaine() || $this->crew->isAdmin() || $this->crew->isModo()) || $idUser==0) {
			redirect(base_url('/crews/index'));
		}
		//set title
		$data['title'] = 'Équipe: ajout membre';
		$data['success'] = $this->crews_model->accept($idUser);
		
		$this->construct_page('crews/candiAccept', $data);
	}
	
	public function refuse($idUser=0) {
		if(!$this->crew->inCrew() || !($this->crew->isCapitaine() || $this->crew->isAdmin() || $this->crew->isModo()) || $idUser==0) {
			redirect(base_url('/crews/index'));
		}
		//set title
		$data['title'] = 'Équipe: refuser membre';
		$this->crews_model->refuse($idUser);
		redirect(base_url('/crews/candidates'));
	}
	
	//change text crew
	public function texte() {
		if(!$this->crew->inCrew() || !($this->crew->isCapitaine() || $this->crew->isAdmin() || $this->crew->isModo())) {
			redirect(base_url('/crews/index'));
		}
		$data['title'] = 'Équipe: Modifier texte';
		$this->load->library('form_validation');
		$this->load->helper('form');
		$this->form_validation->set_rules('content', 'Contenu du texte de l\'équipage', 'required|min_length[10]');
		  if ($this->form_validation->run() === FALSE) {
			$data['error'] = 'Veuillez saisir au moins un texte de 10 caractères';
			$data['contents'] = $this->crews_model->getText()[0]['page'];
			$this->construct_page('crews/texte', $data);
		}
		else {
			$this->crews_model->changeTexte();
			redirect('crews/index');
		}	
	}
	
	public function recherche() {
		$data['title'] = 'Recherche d\'équipage !';
		$this->load->library('form_validation');
		$this->load->helper('form');
		$this->form_validation->set_rules('crewName', 'Recherche équipage', 'required|min_length[3]');
		  if ($this->form_validation->run() === FALSE) {
			$data['toSmall'] = true;
			$this->construct_page('crews/recherche', $data);
		}
		else {
			$data['toSmall'] = false;
			$data['listes'] = $this->crews_model->recherche();
			$this->construct_page('crews/recherche', $data);
		}	
	}
	
	public function letlead($id=0) {
		if(!$this->crew->inCrew() || !$this->crew->isCapitaine()) {
			redirect(base_url('/crews/index'));
		}
		$data['title'] = 'Donner le lead';
		if($id==0) {
			$data['users'] = $this->crews_model->listUsers($this->user->getAttribute('crewId'));
			$this->construct_page('crews/letlead', $data);
		} else {
			$data['success'] = $this->crews_model->letLead($id);
			$this->construct_page('crews/letLeadSuccess', $data);
		}
		
	}
	public function changeRanks($id=0) {
		if(!$this->crew->inCrew() || $id == 0 || $this->input->post('userGrade') == 5 || !$this->crew->isCapitaine())
			redirect(base_url('/crews/index'));

		$this->load->library('form_validation');
		$this->form_validation->set_rules('userGrade', 'rang membre équipage', 'required');
		if($this->form_validation->run() == FALSE) {
			redirect('crews/manageUser');
		}
		else {
			$data['success'] = $this->crews_model->changeRanks($id);
			$this->construct_page('crews/changeRanks', $data);
		}
	}
	
	public function manageUser() {
		if(!$this->crew->inCrew() || !$this->crew->isCapitaine())
			redirect(base_url('/crews/index'));
		$this->load->helper('form');
		$data['title'] = 'Gérer membre équipage';
		$data['users'] = $this->crews_model->listUsers($this->user->getAttribute('crewId'));
		$data['grades'] = $this->crews_model->listGrade();
		$data['error'] = 'Erreur lors de la gestion du joueur';
		$this->construct_page('crews/manageUser', $data);
	}
	
	public function kick($id = 0) {
		if(!$this->crew->inCrew() || $id == 0 || !$this->crew->isCapitaine() || $id == $this->user->getId())
			redirect(base_url('/crews/index'));
		$data['title'] = 'Virer joueur d\'équipage';
		$data['success'] = $this->crews_model->kick($id);
		$this->construct_page('crews/kick', $data);	
	}
	
	public function leave() {
		if(!$this->crew->inCrew()){
			redirect(base_url('/crews/index'));
		}
		if($this->crew->isCapitaine())
			$data['leave'] = false;
		else{
			$this->crews_model->leave();
			$data['leave'] = true;
		}
		$data['title'] = "Quitter équipage";
		$this->construct_page('crews/leave', $data);
	}
	
	public function dissolve() {
		if(!$this->crew->inCrew() || !$this->crew->isCapitaine())
			redirect(base_url('/crews/index'));
		$data['title'] = "Équipage dissou";
		$this->crews_model->dissolve($this->user->getAttribute('crewId'));
		$this->construct_page('crews/dissolve', $data);
	}
}