<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

Class Monster {


    public function __construct(){
        $this->CI =& get_instance();
    }

    public function hydrate(array $donnees)
    {
        foreach($donnees as $key => $value)
        {
            $method = 'set'.ucfirst($key);
            if(method_exists($this, $method))
            {
                $this->$method($value);
            }
        }
    }


    public function getWaiting(){
        return round(8 - (($this->getSpeed() + 3)/4));
    }
    public function isReadyAction() {
        if(time() - $this->getLastAction() >= $this->getWaiting())
            return true;
        return false;
    }
    public function damage(){
        return round((($this->getAttack())/2) + rand(0, 5));
    }
    public function receiveDamage($damage){
        $damage = ($damage - ($this->getDefense() / 4));
        if($damage <= 0){
            $damage = 0;
        }
        $this->setLife($this->getLife() - $damage);
        return $damage;
    }

    public function getId(){
        return $this->CI->session->userdata('idMonster');
    }
    public function getLife(){
        return $this->CI->session->userdata('lifeMonster');
    }
    public function getLvl(){
        return $this->CI->session->userdata('lvlMonster');
    }
    public function getXp(){
        return $this->CI->session->userdata('xpMonster');
    }
    public function getAttack(){
        return $this->CI->session->userdata('attackMonster');
    }
    public function getDefense(){
        return $this->CI->session->userdata('defenseMonster');
    }
    public function getSpeed(){
        return $this->CI->session->userdata('speedMonster');
    }
    public function getEscape(){
        return $this->CI->session->userdata('escapeMonster');
    }
    public function getLastAction(){
        return $this->CI->session->userdata('lastActionMonster');
    }

    public function setId($id){
        $this->CI->session->set_userdata('idMonster', $id);
    }
    public function setLife($id){
        $this->CI->session->set_userdata('lifeMonster', $id);
    }
    public function setLvl($id){
        $this->CI->session->set_userdata('lvlMonster', $id);
    }
    public function setXp($id){
        $this->CI->session->set_userdata('xpMonster', $id);
    }
    public function setAttack($id){
        $this->CI->session->set_userdata('attackMonster', $id);
    }
    public function setDefense($id){
        $this->CI->session->set_userdata('defenseMonster', $id);
    }
    public function setSpeed($id){
        $this->CI->session->set_userdata('speedMonster', $id);
    }
    public function setEscape($id){
        $this->CI->session->set_userdata('escapeMonster', $id);
    }
    public function setLastAction($id){
        $this->CI->session->set_userdata('lastActionMonster', $id);
    }
}