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
	
	public function __construct(){
		$this->CI =& get_instance();
	}
	 

    public function isAdmin()
	{
		return ($this->CI->session->userdata('crewRank') == "Capitaine") ? true : false;
	}
	
	public function isModo()
	{
		return $this->CI->session->userdata('crewRank') == "Bras droit" ? true : false;
	}
     
	/*
	 * Setter
	 */

	public function inCrew()
	{
		return ($this->CI->session->userdata('crewId')) ? true : false;
	}
	
	public function getId()
	{
		return $this->CI->session->userdata('idCrew');
	}
	
	
	// Setters
	public function setId($Id)
	{
		$this->CI->session->set_userdata('idCrew', $Id);
	}

	 
}