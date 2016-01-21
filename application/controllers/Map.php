<?php
/**
 ******************************************************************************
 * Description : 
 * This page contains map
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
		if(!$this->user->isAuthenticated())
			redirect(base_url('/home/accueil'));
		// Loading models
		$this->load->model('map_model');
	}
    
    public function index() {
        $data['title'] = 'Map';
        $data['map'] = $this->map_model->getMap();
		$data['maps'] = $this->map_model->getMaps();
        $data['x'] = $this->character->getX();
        $data['y'] = $this->character->getY();
        
        $this->construct_page('game/map/index.php', $data);
    }
    
    public function fight($x, $y){
        if($x==0 OR $y==0)
            redirect('map/');
            
        /*
         *FIGHT
         */
    }
    
    public function search(){
        
            
        $data['title'] = 'Fouille';
        $data['result'] = $this->map_model->search();
        
        $this->construct_page('game/map/search.php', $data);    
    }
}