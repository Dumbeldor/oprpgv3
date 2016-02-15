<?php

class Fight extends MY_Game
{
    /**
     * Default Constructor
     * ----------------------------------------------------------------------- */
    public function __construct()
    {
        parent::__construct();
        //If not connected member
        if (!$this->user->isAuthenticated())
            redirect(base_url('/home/accueil'));
        $this->load->library('character');
    }

    public function initFight()
    {
        if (isset($_SERVER['HTTP_X_REQUESTED_WITH']) AND $_SERVER['HTTP_X_REQUESTED_WITH'] == "XMLHttpRequest") {
            $this->load->model('game/monster_model');
            $monster = $this->monster_model->getMonster()[0];
            if (!isset($monster)) {
                header('500 Internal Server Error', true, 500);
                die("Aucun monstre trouvé");
            }
            $_SESSION['idMonster'] = $monster['id'];
            $_SESSION['lifeMonster'] = $monster['life'];
            $_SESSION['lvlMonster'] = $monster['lvl'];
            $_SESSION['xpMonster'] = $monster['xp'];
            $_SESSION['attackMonster'] = $monster['attack'];
            $_SESSION['defenseMonster'] = $monster['defense'];
            $_SESSION['speedMonster'] = $monster['speed'];
            $_SESSION['escapeMonster'] = $monster['escape'];
            echo json_encode($monster);
        }
    }

    public function infoCharacter()
    {
        $this->character->setLastAction(time());
        //var_dump($this->table->generate($this->character));
        if (isset($_SERVER['HTTP_X_REQUESTED_WITH']) AND $_SERVER['HTTP_X_REQUESTED_WITH'] == "XMLHttpRequest") {
            $data = array('pseudo' => $this->user->getPseudo(), 'life' => $this->character->getLife(), 'lifeMax' => $this->character->getMaxLife(),
                        'energies' => $this->character->getEnergies(), 'energiesMax' => $this->character->getMaxEnergy(),
                        'lvl' => $this->character->getlvl(),'attack' => $this->character->getAttack(),
                        'attackMag' => $this->character->getAttackMag(), 'defense' => $this->character->getDefense(),
                        'waiting' => $this->character->getWaiting());
            echo json_encode($data);
        }
    }

    public function attack()
    {
       // if (isset($_SERVER['HTTP_X_REQUESTED_WITH']) AND $_SERVER['HTTP_X_REQUESTED_WITH'] == "XMLHttpRequest") {
            if(!$this->character->isReadyAction()){
                header('500 Internal Server Error', true, 500);
                $data = array('type'=> 1, 'msg' => 'Vous n\'êtes pas encore prêt...',
                    'waiting' => abs((time() - ($this->character->getLastAction())) - $this->character->getWaiting()));
                die(json_encode($data));
            }
            $this->load->model('game/monster_model');
            //Taper le monstre :D
            //$this->monster_model->attack();
            $_SESSION['lifeMonster'] -= $this->character->degat();
            if($_SESSION['lifeMonster'] <= 0) {
                header('500 Internal Server Error', true, 500);
                $data = array('type'=>2, 'msg' => 'Le monstre est mort');
                die(json_encode($data));
            }

            $this->character->setLastAction(time());
            $data = array('waiting' => $this->character->getWaiting(), 'lifeMonster' => $_SESSION['lifeMonster']);
            echo json_encode($data);
        //}
    }
}