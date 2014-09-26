<?php

	/**
	* Cette classe permet de decrire depuis CodeIgniter
	* La facon dont est structuré une page web.
	*/
	class Forum extends CI_Controller
	{
		// Accessible a : http://localhost/oprpg/dev/index.php/forum/accueil
		public function accueil(){
			echo "<h1>Forum - Accueil</h1>";
		}

		public function index()
		{
			$this->accueil();
		}

		public function quelquepart()
		{
			$this->load->view('quelquepart');
		}

		public function sampleTest()
		{
			$this->load->view('sample');
		}
	}