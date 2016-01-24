<?php



class Modo extends MY_Controller {
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
		//$this->load->model('modo/modo');
	}
	
	/**
	 * Default Page
	 * ----------------------------------------------------------------------- */
	public function index() {
		// Set title and loading forum's type
		$data['title'] = 'Panel de modération';

	    // Construct this page
		$this->construct_page('modo/index.php', $data);
	}
}