<?php
/**
 ******************************************************************************
 * Description : 
 * This page contains the site index
 * @todo Finish this description
 * @author Dumbeldor & Mawloc
 * @version 1.0.0
 ******************************************************************************
 */
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends MY_Controller {

  // ========================================================================
  // METHODS
  // ========================================================================

  /**
   * site index with display of news.
   * @param $news_get number of the new
   * ----------------------------------------------------------------------- */
  public function index($news_get = 0) {

    if(!$this->user->isAuthenticated()) {
      $this->accueil();
    } 

    else {

      $this->load->library('pagination');
      $this->load->model('news_model');
      $this->load->helper('url');
  
      $data = array();
      $data['title'] = 'Accueil';
      $data['nbnews'] = $this->news_model->count();
      
      $config['base_url'] = base_url('/news/page/');
      $config['use_page_numbers'] = TRUE;
      $config['total_rows'] = $data['nbnews'];
      $config['per_page'] = 4;      
      $config['num_links'] = 10;
      
      $config['last_tag_open'] = '<li class="arrow">';
      $config['last_tag_close'] = '</li>';
      $config['last_link'] = '&raquo;';
      
      $config['first_tag_open'] = '<li class="arrow">';
      $config['first_tag_close'] = '</li>';
      $config['first_link'] = '&laquo;';

      //Courant
      $config['cur_tag_open'] = '<li class="current">';
      $config['cur_tag_close'] = '</li>';   
      
      $config['num_tag_open'] = '<li>';
      $config['num_tag_close'] = '</li>';
      
      $config['next_tag_open'] = ' <li class="arrow">';
      $config['next_tag_close'] = '</li>';    
    
      $config['prev_tag_open'] = '<li class="arrow">';
      $config['prev_tag_close'] = '</liv>';

      $news_get = $news_get * 2;
      
      $this->pagination->initialize($config);
  
      if($news_get > 0) {

        if($news_get <= $data['nbnews']){
          $news_get = intval($news_get);
        } else {
          $news_get = 0;
        }

      } else {
        $news_get = 0;
      }
  
      $data['pagination'] = $this->pagination->create_links();
      $data['news'] = $this->news_model->lists(4, $news_get);
      $data['nbComments'] = $this->news_model->countComments($data['news'][0]->id);
  
      $data['audata'] = $this->session->all_userdata();
      $this->construct_page('pages/home', $data);
      
    }

  } //-- end function index($news_get = 0)
  
  /**
   * Site index for user not connect
   * ----------------------------------------------------------------------- */
  public function accueil() {
    $data['title'] = 'Bienvenue sur Onepiece-rpg !';
    $this->construct_page('pages/accueil', $data);
  } //-- end function accueil()

  /**
   * Redirection to comin soon page
   * ----------------------------------------------------------------------- */
  public function coming_soon() {
    $data['title'] = 'Coming Soon !';
    $this->construct_page('pages/coming_soon', $data);
  } //-- end function coming_soon()

} //-- end class Home extends MY_Controller
