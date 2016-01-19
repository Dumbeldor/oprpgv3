<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');


/**
 ******************************************************************************
 * Description : 
 * Class for charactere
 * @todo Begin dev
 * @author Dumbeldor (Vincent Glize)
 * @version Voir sur git
 ******************************************************************************
 */


class Character extends User
{
    protected $id,
              $positionCity,
              $inCity,
              $lvl,
              $berry,
              $avatar,
              $weapon,
			  $armor,
              $x,
              $y;
              
    public function __construct(){
		$this->CI =& get_instance();
		$this->id = $this->getId(); // Update id (Id in session)
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
	
	/*
	 *Getter
	 */

	public function getAttribute($attr)
	{
		return $this->$attr;
	}
    public function getId()
	{
		return $this->CI->session->userdata('characterId');
	}
    public function getPositionCity() {
        return $this->positionCity;
    }
    public function inCity() {
        return $this->inCity;
    }
    public function getLvl() {
        return $this->lvl;
    }
    public function getBerry() {
        return $this->berry;
    }
    public function getAvatar() {
        return $this->avatar;
    }
    public function getWeapon() {
        return $this->weapon;
    }
	public function getArmor() {
		return $this->armor;
	}
    public function getX() {
        return $x;
    }
    public function getY(){
        return $y;
    }
    
    
    public function setId($id){
		$this->CI->session->set_userdata('characterId', $id);
	}
    public function setPositionCity($position){
        $this->positionCity = $position;
    }
    public function setInCity($inCity){
        $this->inCity = $inCity;
    }
    public function setLvl($lvl){
        $this->lvl = $lvl;
    }
    public function setBerry($berry){
        $this->berry = $berry;
    }
    public function setAvatar($avatar){
        $this->avatar = $avatar;
    }
    public function setWeapon($id){
        $this->weapon = $id;
    }
	public function setArmor($armor){
		$this->armor = $armor;
	}
    public function setX($x){
        $this->x = $x;
    }
    public function setY($y){
        $this->y = $y;
    }
    
    
}