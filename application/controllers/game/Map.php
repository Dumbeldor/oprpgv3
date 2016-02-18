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
        $this->load->library('character');
		$this->load->model('game/map_model');
	}
    
    public function index() {
        $data['title'] = 'Map';
        $data['map'] = $this->map_model->getMap();
		$data['maps'] = $this->map_model->getMaps();
        $data['uX'] = $this->character->getX();
        $data['uY'] = $this->character->getY();

        $data['scripts'][] = base_url('assets/js/game/fight.js');
        $data['scripts'][] = base_url('assets/js/map/move.js');
        $data['scripts'][] = base_url('assets/js/map/fouille.js');
        
        $this->construct_page('game/map/index.php', $data);
    }
    
    public function search(){
        $this->load->model('game/bag_model');
        $data['title'] = 'Fouille';
        $object = $this->map_model->search();
        $reussis = true;

        //If request AJAX
        if(isset($_SERVER['HTTP_X_REQUESTED_WITH']) AND $_SERVER['HTTP_X_REQUESTED_WITH'] == "XMLHttpRequest"){
            if($object != "rien") {
                $reussis = $this->bag_model->addObject($object['id']);
                if($reussis)
                    echo $object['name'];
                else {
                    header('500 Internal Server Error', true, 500);
                    die("Votre sac est plein... Vous êtes obliger de jeter ".$object['name']);
                }

            }
            else {
                header('500 Internal Server Error', true, 500);
                die("Aucun objet trouvé...");
            }

        }
        else {
            $data['object'] = $object;
            if ($data['object'] != "rien")
                $reussis = $this->bag_model->addObject($data['object']['id']);
            else
                $data['error'] = 'Rien trouvé';
            if (!$reussis)
                $data['error'] = 'Votre sac est plein';


            $this->construct_page('game/map/search.php', $data);
        }
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

        //Mob attack
        $r = rand(0, 100);
        if($r > 75) {
            $this->load->helper('monster');
            $monster = getMonster(true);

            if($monster)
                echo json_encode($monster);
        }

        if(empty($monster) OR !$monster) {
            //Mob not attack
            $data = array('attack' => false, 'map' => $map, 'maps' => $maps, 'uX' => $uX, 'uY' => $uY);
            $json = json_encode($data);
            echo $json;
        }
    }

    public function enterCity(){
        $map = $this->map_model->getMap();
        if(empty($map['id_island']) OR $this->character->inIsland())
            redirect('game/map');

        $this->map_model->enterCity($map['id_island']);
        redirect('game/map');
    }
}