<?php
/**
 ******************************************************************************
 * Description : 
 * This page contains the messaging handling
 * @todo Coding
 * @author Dumbeldor
 * @version 0.1.0
 ******************************************************************************
 */
class Messaging extends MY_Controller {
  
  // ========================================================================
  // CREATE PAGE
  // ========================================================================

  /**
   * Default Constructor
   * ----------------------------------------------------------------------- */
  public function __construct() {
    parent::__construct();
    $this->load->model('messaging_model');
    if(!$this->user->isAuthenticated())
      redirect(base_url('/home/accueil'));
  }

  // ========================================================================
  // METHODS
  // ========================================================================

  /**
   * Of the messaging index page, list private message
   * ----------------------------------------------------------------------- */
  public function index() {

    $this->load->helper('form');

    $data['title'] = 'Messagerie';
    $data['scripts'][] = base_url('assets/js/messaging/index.js');
    $data['conversations'] = $this->messaging_model->lists();

    $this->messaging_model->markRead();
    $this->construct_page('messaging/index', $data);

  } //-- end function index()

  /**
   * Read a private conversation particulary
   * @param $id Descript
   * ----------------------------------------------------------------------- */
  public function read($id) {

    $data['title'] = 'Messagerie';
    $data['conversations'] = $this->messaging_model->lists($id);
    $data['id_autre'] = $id;

    //redirection if id does not exist private message
    if(empty($data['conversations'])) {
      redirect('messaging/index');
    }

    $this->messaging_model->markRead($id);
    $this->construct_page('messaging/read', $data);

  } //-- end function read($id)

  /**
   * 
   * Delete private message
   * private message deletes the $id
   * ----------------------------------------------------------------------- */
  public function delete($id=0) {

    $this->messaging_model->delete($id);
    redirect('messaging/index');

  } //-- end function delete($id=0)

  /**
   * Write private message
   * @param $receptor Descript
   * ----------------------------------------------------------------------- */
  public function write($receptor = "") {

    $this->load->helper('form');
    $this->load->library('form_validation');
    $data['title'] = "MP";
    $data['receptor'] = $receptor;

    if(!empty($receptor) && $receptor > 0) {
      $data['receptor'] = $this->users_model->pseudoFromId($receptor);
    }

    $this->form_validation->set_rules('pseudo', 'Pseudonyme', 'required');
    $this->form_validation->set_rules('content', 'texte', 'required');

    if ($this->form_validation->run() === FALSE) {
      $this->construct_page('messaging/write', $data);
    }

    else {

      $pseudo = $this->input->post('pseudo');
      $content = $this->input->post('content');

      //If the username exists and not sender
      if($this->users_model->exist($pseudo) 
        && $this->user->getPseudo() != $pseudo) {

        $this->messaging_model->send($pseudo, $content);
        redirect('messaging/index');

      }

      else if ($this->user->getPseudo() == $pseudo) {
        $data['error'] = "Vous ne pouvez pas vous envoyer un message à vous même !";
        $this->construct_page('messaging/write', $data);
      }

      else {
        $data['error'] = "Le joueur ".$pseudo." n'existe pas";
        $this->construct_page('messaging/write', $data);
      }

    }

  } //-- end function write($receptor = "")

  /**
   * Displays the message sent by the user
   * ----------------------------------------------------------------------- */
  public function sending() {

    $this->load->helper('form');
    $data['title'] = 'Messagerie Boite d\'envois';
    $data['private_message'] = $this->messaging_model->listsSending(5, 0);
    $this->construct_page('messaging/sending', $data);

  } //-- end function sending()


  /**
   * used to mark multiple messages as read or delete
   * ----------------------------------------------------------------------- */
  public function form() {

    $convs = $this->input->post('mess');
    $delete = $this->input->post('delete');

    if(!empty($convs) && isset($delete)) {
      foreach($convs as $valeur) {
        $this->messaging_model->delete($valeur);
      }
    }

    redirect('/messaging/');

  } //-- end function form()

} //-- end class Messaging extends MY_Controller

