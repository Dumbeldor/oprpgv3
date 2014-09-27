<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

	/**
	* Cette classe permet de renvoyer un pseudo obtenu dans 
	* la base de donnees
	*/
	class News extends CI_Controller{

		public function index()
		{
			echo "News";
		}
		
		public function infos(){

			// Connexion a la base de donnees
			$this->load->database();

			// Requete a la base de donnees
			$query = $this->db->query('SELECT cpt_pseudo, cpt_email FROM comptes WHERE cpt_id=3 LIMIT 1');

			// Enregistrement des resultats dans un tableau
			$data = $query->row_array();

			// Envoi des donnees dans la view
			$this->load->view('news', $data);
		}


	}