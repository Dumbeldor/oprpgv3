<?php

	/**
	* Cette classe permet de decrire depuis CodeIgniter
	* La facon dont est structuré une page web.
	*/
	class Forum extends CI_Controller
	{

		public function __construct()
		{
			parent::__construct();

			//	Décommenter cette ligne pour charger le helper url
			//$this->load->helper('url');
		}

		// Accessible a : http://localhost/oprpg/dev/forum/
		public function index()
		{
			$this->accueil();
		}

		// Accessible a : http://localhost/oprpg/dev/forum/accueil
		public function accueil()
		{
			echo "<h1>Forum - Accueil</h1>";
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