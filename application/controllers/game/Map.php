<?php
/**
 ******************************************************************************
 * Description : 
 * This page contains map
 * @author Dumbeldor
 ******************************************************************************
 */
class Map extends MY_Game {
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
		$this->load->model('game/map_model');
	}
    
    public function index() {
        $data['title'] = 'Map';
        $data['map'] = $this->map_model->getMap();
		$data['maps'] = $this->map_model->getMaps();
        $data['uX'] = $this->character->getX();
        $data['uY'] = $this->character->getY();

        $data['scripts'][] = base_url('assets/js/map/move.js');
        
        $this->construct_page('game/map/index.php', $data);
    }
    
    public function fight($x, $y){
        if($x==0 OR $y==0)
            redirect('game/map/');
            
        /*
         *FIGHT
         */
    }
    
    public function search(){
        $this->load->model('game/bag_model');
        $data['title'] = 'Fouille';
        $data['object'] = $this->map_model->search();
        $reussis = true;
        if($data['object'] != "rien")
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
            redirect('game/map/');

        $this->map_model->deplace($x, $y);
        redirect('game/map/');
    }

    public function deplaceJSON($x, $y) {
        $uX = $this->character->getX();
        $uY = $this->character->getY();
        $moveCase = $this->character->getMoveCase();
        $diffX = abs($x - $uX);
        $diffY = abs($y - $uY);

        if($diffX+$diffY > $moveCase)
            redirect('game/map/');

        $this->map_model->deplace($x, $y);

        $map = $this->map_model->getMap();
        $maps = $this->map_model->getMaps();
        $uX =  $x;
        $uY = $y;
        $data = array('map' => $map, 'maps' => $maps, 'uX' => $uX, 'uY' => $uY);
        $json = json_encode($data);

        echo $json;
    }

    public function enterCity(){
        $map = $this->map_model->getMap();
        if(empty($map['id_island']) OR $this->character->inIsland())
            redirect('game/map');

        $this->map_model->enterCity($map['id_island']);
        redirect('game/map');
    }
}