<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
 * | -------------------------------------------------------------------------
 * | URI ROUTING
 * | -------------------------------------------------------------------------
 * | This file lets you re-map URI requests to specific controller functions.
 * |
 * | Typically there is a one-to-one relationship between a URL string
 * | and its corresponding controller class/method. The segments in a
 * | URL normally follow this pattern:
 * |
 * |	example.com/class/method/id/
 * |
 * | In some instances, however, you may want to remap this relationship
 * | so that a different class/function is called than the one
 * | corresponding to the URL.
 * |
 * | Please see the user guide for complete details:
 * |
 * |	http://codeigniter.com/user_guide/general/routing.html
 * |
 * | -------------------------------------------------------------------------
 * | RESERVED ROUTES
 * | -------------------------------------------------------------------------
 * |
 * | There area two reserved routes:
 * |
 * |	$route['default_controller'] = 'welcome';
 * |
 * | This route indicates which controller class should be loaded if the
 * | URI contains no data. In the above example, the "welcome" class
 * | would be loaded.
 * |
 * |	$route['404_override'] = 'errors/page_missing';
 * |
 * | This route will tell the Router what URI segments to use if those provided
 * | in the URL cannot be matched to a valid route.
 * |
 * */

/* Coming soon */
$route['pages/coming_soon'] = 'home/coming_soon';
 
/* Tchat */
$route['tchat/salle/getMessages/(:num)'] = 'tchat/getMessages/$1';
$route['tchat/salle/postMessage'] = 'tchat/post';
$route['tchat/delete_message/(:num)'] = 'tchat/delete_message/$1';
 
/* News */
$route['news/(:num)'] = 'home/index/$1';

/* Crew */
$route['crews/liste/(:num)'] = 'crews/liste/$1';
$route['crews/view/(:num)'] = 'crews/view/$1';
$route['crews/c/(:num)'] = 'crews/candidacy/$1';
$route['crews/a/(:num)'] = 'crews/accept/$1';
$route['crews/r/(:num)'] = 'crews/refuse/$1';
$route['crews/ll/(:num)'] = 'crews/letlead/$1';
$route['crews/ll'] = 'crews/letlead';
$route['crews/kick/(:num)'] = 'crews/kick/$1';
$route['crews/changeRanks/(:num)'] = 'crews/changeRanks/$1';

/* Forum */
$route['forum/c/(:num)'] = 'forum/categories/$1';
$route['forum/c/(:num)/(:num)'] = 'forum/categories/$1/$2';
$route['forum/t/(:num)'] = 'forum/topics/$1';
$route['forum/t/(:num)/(:num)'] = 'forum/topics/$1/$2';
$route['forum/messages/(:num)'] = 'forum/messages/$1';
$route['forum/answer'] = 'forum/answer';
$route['forum/send_message'] = 'forum/send_message';
$route['forum/delete_message/(:num)'] = 'forum/delete_message/$1';
$route['forum/(:any)/delete_message/(:num)'] = 'forum/delete_message/$2';
$route['forum/create_topic'] = 'forum/create_topic';
$route['forum/send_topic'] = 'forum/send_topic';
$route['forum/delete_topic/(:num)'] = 'forum/delete_topic/$1';
$route['forum/edit/(:num)'] = 'forum/edit/$1';
$route['forum/quote/(:num)/(:num)'] = 'forum/quote/$1/$2';

/* Messagerie */
$route['private_messages/answer_message'] = '$1/$2';
$route['private_messages/delete_message/(:num)'] = 'private_messages/delete_message/$1';

/* Annuaire */
$route['users/annuaire/(:num)'] = 'users/annuaire/$1';
$route['users/search'] = 'users/search';

/* Action modération */
$route['users/ban/(:num)'] = 'users/ban/$1';
$route['users/unban/(:num)'] = 'users/unban/$1';


$route['default_controller'] = "home/index";
//$route['(:any)'] = 'pages/view/$1';
$route['404_override'] = 'home';
//
//
///* End of file routes.php */
///* Location: ./application/config/routes.php */
