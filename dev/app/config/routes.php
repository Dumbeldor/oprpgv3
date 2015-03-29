<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There area two reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router what URI segments to use if those provided
| in the URL cannot be matched to a valid route.
|
*/

/* Tchat */
$route['tchat/delete_message/(:num)'] = 'tchat/delete_message/$1';
$route['tchat/get'] = 'tchat/get';
$route['tchat/post'] = 'tchat/post';
$route['tchat/(:num)'] = 'tchat/index/$1';

/* Users */
$route['users/disconnect'] = 'users/disconnect';
$route['users/create'] = 'users/create';
$route['users/connect'] = 'users/connect';
$route['users/(:any)'] = 'users/view/$1';
$route['users'] = 'users';

/* Private_messages */
$route['private_messages'] = 'private_messages';
$route['private_messages/new_message/(:num)'] = 'private_messages/new_message/$1';
$route['private_messages/send_message'] = 'private_messages/send_message';
$route['private_messages/answer_message'] = 'private_messages/answer_message';
$route['private_messages/delete_message/(:num)'] = 'private_messages/delete_message/$1';

/* Forum */
$route['forum'] = 'forum/index';
$route['forum/categories/(:num)'] = 'forum/categories/$1';
$route['forum/topics/(:num)'] = 'forum/topics/$1';
$route['forum/messages/(:num)'] = 'forum/messages/$1';
$route['forum/answer'] = 'forum/answer';
$route['forum/send_message'] = 'forum/send_message';
$route['forum/delete_message/(:num)'] = 'forum/delete_message/$1';
$route['forum/(:any)/delete_message/(:num)'] = 'forum/delete_message/$2';
$route['forum/create_topic'] = 'forum/create_topic';
$route['forum/send_topic'] = 'forum/send_topic';


$route['default_controller'] = "pages/view";
$route['(:any)'] = 'pages/view/$1';
$route['404_override'] = '';


/* End of file routes.php */
/* Location: ./application/config/routes.php */