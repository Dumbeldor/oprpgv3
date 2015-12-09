<?php
/**
 ******************************************************************************
 * Description : 
 * This page contains the users
 * @todo Finish this description
 * @author Dumbeldor & Mawloc
 * @version 1.0.0
 ******************************************************************************
 */
class Users extends MY_Controller {
  public function __construct() {
    parent::__construct();
    $this->load->model('users_model');
    $this->load->model('personnages_model');
	$this->load->library('crew');
  }
    
  /**
   * See the list of users
   * ----------------------------------------------------------------------- */
  public function index($page=0) {
  	if(!$this->user->isAuthenticated())
  		redirect(base_url('/home/accueil'));
	$data['users'] = $this->users_model->annuaire(20, 10);
    $data['title'] = 'Annuaire';
	$data['scripts'][] = base_url('assets/js/users/index.js');
    
    $this->load->library('pagination');
	
	//pagination
		$nbUsers = $this->users_model->countUsers();
		$config['base_url'] = base_url('/users/annuaire/');
		$config['total_rows'] = $nbUsers;
		
		$config['use_page_numbers'] = TRUE;
		$config['per_page'] = 20;
		$config['last_link'] = 'Dernière';
		$config['first_link'] = 'Première';
		
		$this->pagination->initialize($config);
		$page = $page*10;
		
		if($page > 0)
		{
			if($page <= $nbUsers)
				$page = intval($page);
			else
				$page = 0;
		}
		else
			$page = 0;		
		$data['pagination'] = $this->pagination->create_links();
		$data['nbUsers'] = $nbUsers;
		$data['users'] = $this->users_model->annuaire(20, $page);
		$this->construct_page('users/index', $data);	
  }
  
  public function annuaire($page=0){
	if(!$this->user->isAuthenticated())
  		redirect(base_url('/home/accueil'));
	$this->index($page);
  }
  
  public function staff() {
	if(!$this->user->isAuthenticated())
  		redirect(base_url('/home/accueil'));
	  $data['users'] = $this->users_model->staff();
	  $data['title'] = 'Liste Staff';
	  $this->construct_page('users/staff', $data);
  }
  
  /**
   * View the profile of a user
   * ----------------------------------------------------------------------- */
  public function view($id=1) {
  	if(!$this->user->isAuthenticated())
  		redirect(base_url('/home/accueil'));
	$data['users'] = $this->users_model->view_user($id);
    $data['title'] = "Profil de ".$data['users']['pseudo'];
	$data['id'] = $id;
    
    $this->construct_page('users/view', $data);
  }
  
  /*
   * Returns a list of connected players
   * -------------------------------------------------------------------- */
  public function liste() {
  	if(!$this->user->isAuthenticated())
  		redirect(base_url('/home/accueil'));
  	$data['title'] = 'Liste des connectés';
  	$data['list'] = $this->users_model->listCo();
    //$data['listVisitor'] = $this->users_model->listVisitor();
    $data['total'] = count($data['list']) + 0;
  	$this->construct_page('users/list', $data);
  }
  
  
  /**
   * Treaty the post of the registration form
   * ----------------------------------------------------------------------- */
  public function create() {
    if($this->user->isAuthenticated())
      redirect(base_url('/home/accueil'));
    $this->load->helper('form');
	$this->load->helper('captcha2');
    $this->load->library('form_validation');
    
    $data['title'] = 'Inscription';
    
    $this->form_validation->set_rules('pseudo', 'Pseudonyme', 'required|min_length[3]|max_length[50]',
                                      array('required' => 'Vous devez choisir un pseudo',
                                            'min_length' => 'Votre pseudo doit contenir au moiins 3 caractères',
                                            'max_lenght' => 'Votre pseudo ne peut pas contenir plus de 50 caractères !'));
	$this->form_validation->set_rules('password', 'Mot de passe', 'required|min_length[6]|max_length[249]|matches[passconf]',
                                      array('required' => 'Vous devez saisir un mot de passe !',
                                            'min_length' => 'Votre mot de passe doit contenir au minimum 6 caractères !',
                                            'max_lenght' => 'Votre mot de passe doit contenir au maximum 249 caractères',
                                            'matches' => 'Votre mot de passe doit être le même que celui de confirmation'));
	$this->form_validation->set_rules('passconf', 'Mot de passe de confirmation', 'required',
                                    array('required' => 'Vous devez saisir un mot de passe de confirmation'));
	$this->form_validation->set_rules('email', 'Email', 'required|min_length[3]|max_length[249]|valid_email',
                                    array('required' => 'Vous devez saisir un email',
                                          'min_length' => 'Votre email doit faire minimum 3 caractères...',
                                          'max_lenght' => 'Votre email doit faire maximum 249 caractères',
                                          'valid_email' => 'Votre email doit être valide'));
	$this->form_validation->set_rules('sexe', 'sexe', 'required',
                                    array('required' => 'Vous devez choisir un sexe'));
	$this->form_validation->set_rules('faction', 'faction', 'required',
                                    array('required' => 'Vous devez choisir une faction'));
	$this->form_validation->set_rules('captcha', 'captcha', 'required|callback_valid_captcha',
                                    array('required' => 'Vous devez saisir le code secret de sécurité'));
	

  $url = 'assets/img/avatars';
  $urlManHair = $url.'/man/hair';
  $urlWomanHair = $url.'/woman/hair';
  $urlBodyMan = $url.'/man/body';
  $urlBodyWoman = $url.'/woman/body';
  $urlEyeMan = $url.'/man/eyes';
  $urlEyeWoman = $url.'/woman/eyes';
  $urlMouth = $url.'/mouths';

  $data['nb_cheveux_homme_noir']=count(scandir($urlManHair.'/noir'))-2;
  $data['nb_cheveux_homme_marron']=count(scandir($urlManHair.'/marron'))-2;
  $data['nb_cheveux_homme_rouge']=count(scandir($urlManHair.'/rouge'))-2;
  $data['nb_cheveux_homme_orange']=count(scandir($urlManHair.'/orange'))-2;
  $data['nb_cheveux_homme_jaune']=count(scandir($urlManHair.'/jaune'))-2;
  $data['nb_cheveux_homme_vert']=count(scandir($urlManHair.'/vert'))-2;
  $data['nb_cheveux_homme_bleu']=count(scandir($urlManHair.'/bleu'))-2;
  $data['nb_cheveux_homme_blanc']=count(scandir($urlManHair.'/blanc'))-2;
  $data['nb_cheveux_homme_rose']=count(scandir($urlManHair.'/rose'))-2;
  
  $data['nb_cheveux_femme']=count(scandir($urlWomanHair.'/noir'))-2;
  
  $data['nb_cheveux_femme_noir']=count(scandir($urlWomanHair.'/noir'))-2;
  $data['nb_cheveux_femme_marron']=count(scandir($urlWomanHair.'/marron'))-2;
  $data['nb_cheveux_femme_rouge']=count(scandir($urlWomanHair.'/rouge'))-2;
  $data['nb_cheveux_femme_orange']=count(scandir($urlWomanHair.'/orange'))-2;
  $data['nb_cheveux_femme_jaune']=count(scandir($urlWomanHair.'/jaune'))-2;
  $data['nb_cheveux_femme_vert']=count(scandir($urlWomanHair.'/vert'))-2;
  $data['nb_cheveux_femme_bleu']=count(scandir($urlWomanHair.'/bleu'))-2;
  $data['nb_cheveux_femme_blanc']=count(scandir($urlWomanHair.'/blanc'))-2;
  $data['nb_cheveux_femme_rose']=count(scandir($urlWomanHair.'/rose'))-2;
  
  $data['nb_corps_homme']=count(scandir($urlBodyMan))-2;
  $data['nb_corps_femme']=count(scandir($urlBodyWoman))-2;
  $data['nb_yeux_homme']=count(scandir($urlEyeMan))-2;
  $data['nb_yeux_femme']=count(scandir($urlEyeWoman))-2;
  $data['nb_bouches']=count(scandir($urlMouth))-2;
	
	//Create captcha
	$font_path = 'assets/fonts/orangejuice.ttf';
	$img_path = 'assets/img/captcha/';
	$img_url = base_url('assets/img/captcha/');
	$values = array(
		'img_path' => $img_path,
		'img_url' => $img_url,
		'img_width' => 270,
		'img_height' => 60,
		'font_path' => $font_path,
		'font_size' => 30
	);
	
	//Create captcha
	$captcha = create_captcha();
	
	//Delete old captchas
	$time = time();
	$this->db->query("DELETE FROM captcha WHERE time + 600 < ?", array($time));
	
	//Write captcha code in database
	$session_id = session_id();
	$insert_data = array(
		'code' => $captcha['code'],
		'session_id' => $session_id,
		'time' => time()
	);
	$query = $this->db->insert_string('captcha', $insert_data);
	$this->db->query($query);
	
	$data['captcha'] = $captcha['image'];
	
	if ($this->form_validation->run() === FALSE) {	  
	     $data['scripts'][] = base_url('assets/js/users/create_avatar.js');
		 $data['scripts'][] = base_url('assets/js/users/create.js');
       $this->construct_page('users/create', $data);
    }
	else if($body = $this->input->post('body') == "0" ||
			$body = $this->input->post('hair') == "0" ||
			$body = $this->input->post('eyes') == "0" ||
			$body = $this->input->post('mouth') == "0") {
	  $data['error'] = "Vous devez choisir votre avatar";
	  $data['scripts'][] = base_url('assets/js/users/create_avatar.js');
	  $data['scripts'][] = base_url('assets/js/users/create.js');
       $this->construct_page('users/create', $data);
	}
    else {
      $id = $this->users_model->set_user();
      if($id == 0) {
          $data['scripts'][] = base_url('assets/js/users/create_avatar.js');
		  $data['scripts'][] = base_url('assets/js/users/create.js');
          $data['error'] = "Pseudo déjà utilisé !";
          $this->construct_page('users/create', $data);
      } else if($id == -1) {
          $data['scripts'][] = base_url('assets/js/users/create_avatar.js');
		  $data['scripts'][] = base_url('assets/js/users/create.js');
          $data['error'] = "Email déjà utilisé !";
          $this->construct_page('users/create', $data);
      }

      else {
  	    $this->users_model->create_avatar($id);
        $this->construct_page('users/success', $data);
      }
    }
  }
  
  /**
   * Treaty post the login form
   * ----------------------------------------------------------------------- */
  public function connect() {
    if($this->user->isAuthenticated())
      redirect(base_url('/home/accueil'));
    $this->load->helper('form');
    $this->load->library('form_validation');
    
    $data['title'] = 'Connexion';
    $pseudo = $this->input->post('pseudo');
    $password = $this->input->post('password');
	$userAlreadyCo = false;
    if ($pseudo == null XOR $password == null) {
      $data['error'] = 'Veuillez fournir toutes les informations requises.';
      $this->construct_page('users/connect', $data);
    }
    else if($pseudo == null && $password == null) {
      $this->construct_page('users/connect', $data);
    }
    else {
      $valid_connexion = $this->users_model->validate_connexion($pseudo, $password);
      if($valid_connexion == 1) {
        $data['title'] = 'Home';
        $this->users_model->setup_connexion($pseudo);
        redirect('');
      }
      else {
		if($valid_connexion == -1)
		  $data['error'] = "Un joueur est déjà connecté sur ce compte.";
		else if($valid_connexion == -2)
		  $data['error'] = "<strong>Votre compte est banni !</strong>";
		else
		  $data['error'] = "La combinaison pseudo/mot de passe n'est pas bonne.";
        $this->construct_page('users/connect', $data);
      }
    }
  }

  /*
  * Lost password
  * ------------------------------------------------------------------------- */
  public function lostPass(){
    if($this->user->isAuthenticated())
      redirect(base_url('/home/accueil'));
    $this->load->helper('form');
    $this->load->library('form_validation');

    $data['title'] = 'Mot de passe oublié';
    $this->form_validation->set_rules('email', 'Email', 'required|min_length[3]|max_length[249]|valid_email');
    if ($this->form_validation->run() === FALSE) {
      $this->construct_page('users/lostPass', $data);
    }
    else {
      if(!$this->users_model->emailExist()) {
        $data['error'] = "L'email n'existe pas !";
        $this->construct_page('users/lostPass', $data);
      }
      else {
        $this->users_model->sendTookenLostPass();
        $this->construct_page('users/lostPassSendEmail');
      }
    }

  }
  
    /*
   * deconnection
   */
  public function disconnect() {
  	if(!$this->user->isAuthenticated())
  		redirect(base_url('/home/accueil'));
  	$this->session->sess_destroy();
  	$this->user->logout();
    $data['title'] = 'Home';
    redirect('');
  }
  
  public function ban($id=0) {
	if(!$this->user->isModo() || $id == 0)
	  redirect('/users');
	
	$success = $this->users_model->ban($id);
	if($success)
	  redirect('/users/view/'.$id);
	else
	  redirect('/users');
  }
  
  public function unban($id=0) {
	if(!$this->user->isModo() || $id == 0)
	  redirect('/users');
	
	$success = $this->users_model->unban($id);
	if($success)
	  redirect('/users/view/'.$id);
	else
	  redirect('/users');
  }


	public function valid_captcha() {
		$captcha = $this->input->post('captcha');
		$session_id = session_id();
		$query = $this->db->query("SELECT id FROM captcha WHERE code = ? AND session_id = ?", array($captcha, $session_id));
		
		if($query->num_rows() > 0) {
			$this->db->query("DELETE FROM captcha WHERE session_id=?", array($session_id));
			return TRUE;
		} else {
			$this->form_validation->set_message('valid_captcha', 'Mauvais code secret');
			return FALSE;
		}
	}
	
	// Return results of search in users list
	public function search() {
		$search = $this->input->post('search_input');
		$result = $this->users_model->search_user($search);
		echo json_encode($result);
	}
}