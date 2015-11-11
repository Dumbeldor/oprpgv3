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
	
	public function __construct(){
		$this->CI =& get_instance();
	}
	 
	public function logout()
	{
		$this->CI->session->sess_destroy();
	}
	
	public function hydrate(array $donnees)
	{
		$this->CI->session->set_userdata($donnees);
	}
	

	/*
	 * Setter
	 */

	public function getAttribute($attr)
	{
		return $this->CI->session->userdata($attr) ? $this->CI->session->userdata($attr) : null;
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
		return $this->CI->session->userdata('ban');
	}
	public function isKick()
	{
		return $this->CI->session->userdata('is_kick');
	}

	public function isAuthenticated()
	{
		return ($this->CI->session->userdata('auth')) ? true : false;
	}

	public function isRedactor()
	{
		return ($this->CI->session->userdata('rank') == "Rédacteur" || $this->CI->session->userdata('rank') == "Rédactrice") ? true : false;
	}
	 
	public function isAdmin()
	{
		return ($this->CI->session->userdata('rank') == "Administrateur" OR
				$this->CI->session->userdata('rank') == "Administratrice" OR
				$this->CI->session->userdata('rank') == "Co-Administrateur" OR
				$this->CI->session->userdata('rank') == "Co-Administratrice")  ? true : false;
	}
	
	public function isModo()
	{
		return ($this->CI->session->userdata('rank') == "Modérateur" OR $this->CI->session->userdata('rank') == "Modératrice") ? true : false;
	}
	
	public function inCrew()
	{
		return ($this->CI->session->userdata('crew')) ? true : false;
	}
	
	public function getPseudo()
	{
		return $this->CI->session->userdata('pseudo');
	}

	public function getRank()
	{
		return $this->CI->session->userdata('rank');
	}
	 
	public function getId()
	{
		return $this->CI->session->userdata('id');
	}
	
	public function getFaction()
	{
		return $this->CI->session->userdata('faction');
	}
	
	
	// Setters
	public function setAttribute($attr, $value)
	{
		$this->CI->session->set_userdata($attr, $value);
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
	 
	public function setFlash($value)
	{
		$this->CI->session->set_flashdata('flash', $flash);
	}
	 
	public function setPseudo($pseudo)
	{
		$this->CI->session->set_userdata('pseudo', $pseudo);
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