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
        $data['uX'] = $this->character->getX();
        $data['uY'] = $this->character->getY();
        
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
        $this->load->model('bag_model');
        $data['title'] = 'Fouille';
        $data['object'] = $this->map_model->search();
        $this->bag_model->addObject($data['object']['id']);

        
        $this->construct_page('game/map/search.php', $data);    
    }

    public function deplace($x, $y){
        $uX = $this->character->getX();
        $uY = $this->character->getY();
        $moveCase = $this->character->getMoveCase();
        $diffX = abs($x - $uX);
        $diffY = abs($y - $uY);

        if($diffX+$diffY > $moveCase OR $this->character->inCity())
            redirect('map/');

        $this->map_model->deplace($x, $y);
        redirect('map/');
    }
}