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

/* News */
$route['news/(:num)'] = 'home/index/$1';



/* Forum */

$route['forum/c/(:num)'] = 'forum/categories/$1';
$route['forum/t/(:num)'] = 'forum/topics/$1';
$route['forum/messages/(:num)'] = 'forum/messages/$1';
$route['forum/answer'] = 'forum/answer';
$route['forum/send_message'] = 'forum/send_message';
$route['forum/delete_message/(:num)'] = 'forum/delete_message/$1';
$route['forum/(:any)/delete_message/(:num)'] = 'forum/delete_message/$2';
$route['forum/create_topic'] = 'forum/create_topic';
$route['forum/send_topic'] = 'forum/send_topic';


$route['private_messages/answer_message'] = '$1/$2';
$route['private_messages/delete_message/(:num)'] = 'private_messages/delete_message/$1';

$route['forum'] = 'forum';


$route['default_controller'] = "home/index";
//$route['(:any)'] = 'pages/view/$1';
$route['404_override'] = '';


/* End of file routes.php */
/* Location: ./application/config/routes.php */