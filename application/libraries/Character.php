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


class Character
{
    protected $id,
              $life,
              $energies,
              $inIsland,
              $inFight,
              $idIsland,
              $lvl,
              $berry,
              $avatar,
              $vitality,
              $strength,
              $speed,
              $endurance,
              $agility,
              $energy,
              $intelligence,
              $resistance,
              $weapon,
			  $armor,
              $x,
              $y,
              $xMapsIsland,
              $yMapsIsland,
              $moveCase = 1, //Prévu pour plus tard ;)
			  $vision = 5;

              
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
	
	public function getXMin() {
        if($this->inIsland)
            return $this->xMapsIsland - $this->vision;
		return $this->x - $this->vision;
	}
	public function getXMax() {
        if($this->inIsland)
            return $this->xMapsIsland + $this->vision;
		return $this->x + $this->vision;
	}
	public function getYMin() {
        if($this->inIsland)
            return $this->yMapsIsland - $this->vision;
		return $this->y - $this->vision;
	}
	public function getYMax(){
        if($this->inIsland)
            return $this->yMapsIsland + $this->vision;
		return $this->y + $this->vision;
	}
    public function getStat(){
        return ($this->lvl * 4);
    }
    public function getStatRemaining(){
        return $this->getStat() - ($this->vitality + $this->strength + $this->speed + $this->endurance + $this->agility + $this->energy + $this->intelligence + $this->resistance);
    }

    public function getMaxLife(){
        return ($this->vitality * 5) + 10;
    }
    public function getMaxEnergy() {
        return ($this->energy * 5) + 10;
    }
    public function getAttack() {
        $this->CI->load->library('weapon');
        $this->CI->load->library('armor');
        return round(($this->CI->weapon->getAttack() + $this->CI->armor->getAttack()) * ($this->strength + 3)/4);
    }
    public function getDefense(){
        $this->CI->load->library('armor');
        $this->CI->load->library('weapon');
        return round(($this->CI->armor->getDefense() + $this->CI->weapon->getDefense()) * ($this->resistance + 3)/4);
    }
    public function getAttackMag(){
        $this->CI->load->library('armor');
        $this->CI->load->library('weapon');
        return round(($this->CI->armor->getAttackMag() + $this->CI->weapon->getAttackMag()) * ($this->intelligence + 3)/4);
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
    public function getLife()
    {
        return $this->life;
    }
    public function getEnergies() {
        return $this->energies;
    }
    public function getPositionCity() {
        return $this->positionCity;
    }
    public function inIsland() {
        return $this->inIsland;
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
    public function getVitality() {
        return $this->vitality;
    }
    public function getStrength(){
        return $this->strength;
    }
    public function getSpeed() {
        return $this->speed;
    }
    public function getEndurance() {
        return $this->endurance;
    }
    public function getWeapon() {
        return $this->weapon;
    }
	public function getArmor() {
		return $this->armor;
	}
    public function getX() {
        if($this->inIsland)
            return $this->xMapsIsland;
        return $this->x;
    }
    public function getY(){
        if($this->inIsland)
            return $this->yMapsIsland;
        return $this->y;
    }
    public function getXMapsIsland() {
        return $this->xMapsIsland;
    }
    public function getYMapsIsland() {
        return $this->yMapsIsland;
    }
    public function getMoveCase(){
        return $this->moveCase;
    }
	public function getVision() {
        return $this->vision;
    }
    public function getIdIsland() {
        return $this->idIsland;
    }
    public function getInFight()
    {
        return $this->inFight;
    }
    public function getAgility()
    {
        return $this->agility;
    }
    public function getEnergy()
    {
        return $this->energy;
    }
    public function getIntelligence()
    {
        return $this->intelligence;
    }
    public function getResistance()
    {
        return $this->resistance;
    }
    
    
    public function setId($id){
		$this->CI->session->set_userdata('characterId', $id);
	}
    public function setLife($life) {
        if($life >= $this->getMaxLife())
            $this->life = $this->getMaxLife();
        else if($life <= 0)
            $this->life = 0;
        else
            $this->life = $life;
    }
    public function setEnergies($energie) {
        if($energie >= $this->getMaxEnergy())
            $this->energies = $this->getMaxEnergy();
        else if($energie <= 0)
            $this->energies = 0;
        else
            $this->energies = $energie;
    }
    public function setPositionCity($position){
        $this->positionCity = $position;
    }
    public function setInIsland($inIsland){
        $this->inIsland = $inIsland;
    }
    public function setIdIsland($id) {
        $this->idIsland = $id;
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
    public function setVitality($vitality) {
        $this->vitality = $vitality;
    }
    public function setStrength($strength) {
        $this->strength = $strength;
    }
    public function setSpeed($speed) {
        $this->speed = $speed;
    }
    public function setEndurance($endurance) {
        $this->endurance = $endurance;
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
    public function setXMapsIsland($xMapsIsland){
        $this->xMapsIsland = $xMapsIsland;
    }
    public function setYMapsIsland($yMapsIsland){
        $this->yMapsIsland = $yMapsIsland;
    }
    public function setInFight($inFight)
    {
        $this->inFight = $inFight;
    }
    public function setAgility($agility)
    {
        $this->agility = $agility;
    }
    public function setEnergy($energy)
    {
        $this->energy = $energy;
    }
    public function setIntelligence($intelligence)
    {
        $this->intelligence = $intelligence;
    }
    public function setResistance($resistance)
    {
        $this->resistance = $resistance;
    }
}