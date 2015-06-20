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

	/*
	 * Setter
	 */

	public function getAttribute($attr)
	{
		return isset($this->CI->session->userdata('user_data')[$attr]) ? $this->CI->session->userdata('user_data')[$attr] : null;
	}
	
	public function getArray()
	{
		return $this->CI->session->userdata('user_data');
	}
	
	public function getFlash()
	{		 
		return $this->CI->session->flashdata('flash');
	}
	
	public function hasFlash()
	{
		return ($this->CI->session->flashdata('flash') == '' ? false : true) ;
	}
	

	public function isAuthenticated()
	{
		return isset($_SESSION['auth']) && $_SESSION['auth'] === true;
	}
	 
	public function isAdmin()
	{
		return $this->CI->session->userdata('user_data')['rank'] == "Administrateur" ? true : false;
	}
	
	public function getPseudo()
	{
		return $this->CI->session->userdata('user_data')['pseudo'];
	}

	 
	public function getId()
	{
		return $this->CI->session->userdata('user_data')['id'];
	}
	
	
	// Setters
	public function setAttribute($attr, $value)
	{
		$this->CI->session->userdata('user_data')[$attr] = $value;
	}
	 
	public function setAuthenticated($authenticated = true)
	{
		if(!is_bool($authenticated))
		{
			throw new \InvalidArgumentException('La valeur spécifiée à la mathode User::setAuthenticated() doit être un boolean');
		}
		 
		$_SESSION['auth'] = $authenticated;
	}
	 
	public function setAdmin($admin = true)
	{
		if(!is_bool($admin))
		{
			throw new \InvalidArgumentException('La valeur spécifiée à la mathode User::setAdmin() doit être un boolean');
		}
		 
		$_SESSION['admin'] = $admin;
	}
	 
	public function setFlash($value)
	{
		$_SESSION['flash'] = $value;
	}
	 
	public function setPseudo($pseudo)
	{
		$_SESSION['pseudo'] = $pseudo;
	}
	 
	public function setPrivs($privs)
	{
		$_SESSION['privs'] = $privs;
	}
	 
	public function setUserId($userId)
	{
		$_SESSION['userId'] = (int)$userId;
	}

	 
}