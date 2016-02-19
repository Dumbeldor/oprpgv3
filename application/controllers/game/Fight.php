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

    public function initFight($inMove = false)
    {
        if (isset($_SERVER['HTTP_X_REQUESTED_WITH']) AND $_SERVER['HTTP_X_REQUESTED_WITH'] == "XMLHttpRequest") {
            $this->load->helper('monster');
            $monster = getMonster();
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
        $data['fight'] = true;
       // if (isset($_SERVER['HTTP_X_REQUESTED_WITH']) AND $_SERVER['HTTP_X_REQUESTED_WITH'] == "XMLHttpRequest") {
            $this->load->model('game/monster_model');
            $this->load->library('monster');
            //Taper le monstre :D
            $monster = array();
            $degat = 0;
            $actionMonster = false;
            //Pour rattraper au cas ou le monstre n'a pas tapé depuis longtemps...
            while($this->monster->isReadyAction()){
                $actionMonster = true;
                $damage = $this->monster->damage();
                $damage = $this->character->receiveDamage($damage);
                $monster[] += $damage;
                $this->monster->setLastAction($this->monster->getLastAction() + $this->monster->getWaiting());
            }
            if($actionMonster)
                $this->monster->setLastAction(time());

            /*
             * Player DEAD
             */
            if($this->character->getLife() <= 0){
                $this->character->setInFight(false);
                header('500 Internal Server Error', true, 500);
                $this->character_model->setLife($this->character->getLife());
                $data = array('type' => 3);
                die(json_encode($data));
            }

            /*
             * Player not ready
             */
            if(!$this->character->isReadyAction()){
                header('500 Internal Server Error', true, 500);
                $data = array('type'=> 1, 'msg' => 'Vous n\'êtes pas encore prêt...', 'life' => $this->character->getLife(),
                    'waiting' => abs((time() - ($this->character->getLastAction())) - $this->character->getWaiting()));
                die(json_encode($data));
            }
            $damage = $this->monster->receiveDamage($this->character->degat());

            /*
             * MONSTER DEAD
             */
            if($_SESSION['lifeMonster'] <= 0) {
                $this->character->setInFight(false);
                header('500 Internal Server Error', true, 500);
                $this->character->addXp($this->monster->getXp());
                //LOOT
                $object = $this->monster_model->loot($this->monster->getId());
                if($object != "rien") {
                    $this->load->model('game/bag_model');
                    $reussis = $this->bag_model->addObject($object['id']);
                    if (!$reussis)
                        $object = "votre sac est plein...";
                } else {
                    $object = "Vous n'avez rien trouvé...";
                }

                $data = array('type'=>2, 'msg' => 'Le monstre est mort', 'xp' => $this->monster->getXp(),
                            'object' => $object);
                die(json_encode($data));
            }

            $this->character->setLastAction(time());

            $data = array('waiting' => $this->character->getWaiting(), 'life' => $this->character->getLife(),
                        'lifeMonster' => $_SESSION['lifeMonster'],
                        'damage'=> $damage, 'damageByMonster' => $monster);
            echo json_encode($data);

            //Sauv life
            $this->character_model->setLife($this->character->getLife());
        //}
    }
}