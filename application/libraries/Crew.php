<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 ******************************************************************************
 * Description : 
 * Class for Crew
 * @todo Finish this description
 * @author Dumbeldor
 * @version 1.0.0
 ******************************************************************************
 */


class Crew
{
	protected $id,
			  $name,
			  $rank;
	
	public function __construct(){
		$this->CI =& get_instance();
		$this->id = $this->getId();
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
	 
	
	public function inCrew()
	{
		return ($this->id) ? true : false;
	}
	
	public function getId()
	{
		return $this->CI->session->userdata('crewId');
	}
	public function getName()
	{
		return $this->name;
	}
	public function getRank()
	{
		return $this->rank;
	}
	
	 
     
	/*
	 * Setter
	 */
	
	public function setId($Id)
	{
		$this->CI->session->set_userdata('crewId', $Id);
	}
	public function setName($name){
		$this->name = $name;
	}
	public function setRank($rank){
		$this->rank = $rank;
	}
	
	
	public function isCapitaine()
	{
		return ($this->rank == "Capitaine") ? true : false;
	}
    public function isAdmin()
	{
		return ($this->rank == "Capitaine") ? true : false;
	}
	
	public function isModo()
	{
		return $this->rank == "Bras droit" ? true : false;
	}

	 
}