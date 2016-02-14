<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 ******************************************************************************
 * Description : 
 * Class for user
 * @todo Finish this description
 * @author Dumbeldor
 * @version 1.0.0
 ******************************************************************************
 */


class User
{
	protected $id,
			  $pseudo,
			  $ban,
			  $isKick,
			  $email,
			  $sexe,
			  $idUsersTypes,
			  $rank,
			  $faction,
			  $factionName;
	
	public function __construct(){
		$this->CI =& get_instance();
		$this->id = $this->getId(); // Update id (Id in session)
		$this->setAuthenticated(true);
		$this->CI->load->model('users_model');
		if($this->isAuthenticated())
			$this->hydrate($this->CI->users_model->hydrate($this->id));
	}
	 
	public function logout()
	{
		$this->CI->session->sess_destroy();
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
	
	public function getArray()
	{
		return $this->CI->session->all_userdata();
	}
	
	public function getFlash()
	{		 
		return $this->CI->session->flashdata('flash');
	}
	
	public function hasFlash()
	{
		return ($this->CI->session->flashdata('flash') == '' ? false : true) ;
	}
	
	public function isBan()
	{
		return $this->ban;
	}
	public function isKick()
	{
		return $this->isKick;
	}

	public function isAuthenticated()
	{
		return !empty($this->id);
	}
	
	public function isVIP()
	{
		return ($this->rank == "VIP" || $this->rank == "Animateur" || $this->rank == "Animatrice") ? true : false; 
	}
	
	public function isRedactor()
	{
		return ($this->rank == "Rédacteur" || $this->rank == "Rédactrice") ? true : false;
	}
	 
	public function isAdmin()
	{
		return ($this->rank == "Administrateur" OR
				$this->rank == "Administratrice" OR
				$this->rank == "Co-Administrateur" OR
				$this->rank == "Co-Administratrice")  ? true : false;
	}
	
	public function isModo()
	{
		return ($this->rank == "Modérateur" OR $this->rank == "Modératrice" OR $this->isAdmin()) ? true : false;
	}

	public function getPseudo()
	{
		return $this->CI->session->userdata('pseudo');
	}
	public function getEmail()
	{
		return $this->CI->users_model->getEmail();
	}

	public function getRank()
	{
		return $this->rank;
	}
	 
	public function getId()
	{
		return $this->CI->session->userdata('id');
	}
	
	public function getFaction()
	{
		return $this->CI->session->userdata('faction');
	}
	
	public function getFactionName() {
		return $this->CI->session->userdata('factionName');
	}

	
	// Setters
	public function setAttribute($attr, $value)
	{
		$this->$attr = $value;
	}
	
	public function setId($id){
		$this->CI->session->set_userdata('id', $id);
	}
	public function setAuthenticated($authenticated = true)
	{
		if(!is_bool($authenticated))
		{
			throw new \InvalidArgumentException('La valeur spécifiée à la mathode User::setAuthenticated() doit être un boolean');
		} 
		$this->CI->session->set_userdata('auth', $authenticated);
	}
	 
	public function setAdmin($admin = true)
	{
		if(!is_bool($admin))
		{
			throw new \InvalidArgumentException('La valeur spécifiée à la mathode User::setAdmin() doit être un boolean');
		}
		$this->CI->session->set_userdata('admin', $admin);
	}
	 
	public function setFlash($flash)
	{
		$this->CI->session->set_flashdata('flash', $flash);
	}
	 
	public function setPseudo($pseudo)
	{
		$this->CI->session->set_userdata('pseudo', $pseudo);
		$this->pseudo = $pseudo;
	}
	public function setBan($ban) {
		$this->ban = $ban;
	}
	public function setIsKick($isKick){
		$this->isKick = $isKick;
	}
	public function setEmail($email){
		$this->email = $email;
	}
	public function setSexe($sexe){
		$this->sexe = $sexe;
	}
	public function setLvl($lvl){
		//Lvl max
		if($lvl < 200)
			$this->lvl = $lvl;
	}
	public function setIdUsersTypes($idTypes){
		$this->idUsersTypes = $idTypes;
	}
	public function setRank($rank){
		$this->rank = $rank;
	}
	public function setFactionName($fac){
		$this->CI->session->set_userdata('factionName', $fac);
		$this->factionName = $fac;
	}
	public function setFaction($fac){
		$this->CI->session->set_userdata('faction', $fac);
		$this->faction = $fac;
	}
	public function setIdObjects($idObjects){
		$this->idObjects = $idObjects;
	}
	
	public function setPrivs($privs)
	{
		$_SESSION['privs'] = $privs;
	}
	 
	public function setUserId($userId)
	{
		$this->CI->session->set_userdata('userId', $userId);
	}	 
}