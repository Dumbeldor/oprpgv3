<?php

	/**
	* Cette classe permet de decrire depuis CodeIgniter
	* La facon dont est structuré une page web.
	*/
	class Forum extends CI_Controller
	{
		// Accessible a : http://localhost/oprpg/dev/index.php/forum/accueil
		public function accueil(){
			echo "Hello World - Forum";
		}

		public function index()
		{
			$this->accueil();
		}
	}