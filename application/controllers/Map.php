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
        $reussis = false;
        if(isset($data['object']))
            $reussis = $this->bag_model->addObject($data['object']['id']);
        else
            $data['error'] = 'Rien trouvé';
        if(!$reussis)
            $data['error'] = 'Votre sac est plein';

        
        $this->construct_page('game/map/search.php', $data);    
    }

    public function deplace($x, $y){
        $uX = $this->character->getX();
        $uY = $this->character->getY();
        $moveCase = $this->character->getMoveCase();
        $diffX = abs($x - $uX);
        $diffY = abs($y - $uY);

        if($diffX+$diffY > $moveCase)
            redirect('map/');

        $this->map_model->deplace($x, $y);
        redirect('map/');
    }

    public function enterCity(){
        $map = $this->map_model->getMap();
        if(empty($map['id_island']) OR $this->character->inIsland())
            redirect('map');

        $this->map_model->enterCity($map['id_island']);
        redirect('map');
    }
}