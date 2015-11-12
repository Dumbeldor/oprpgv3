<?php 

function create_captcha() {
	$expiration = 10;
	
	$image = imagecreatefrompng('assets/img/captcha/fond_captcha.png');
	$colors = array(imagecolorallocate($image, 31, 54, 50),
	imagecolorallocate($image, 89, 86, 50),
	imagecolorallocate($image, 55, 90, 50),
	imagecolorallocate($image, 55, 28, 50),
	imagecolorallocate($image, 131, 154, 50),
	imagecolorallocate($image, 189, 186, 50),
	imagecolorallocate($image, 155, 190, 50),
	imagecolorallocate($image, 155, 128, 50),
	imagecolorallocate($image, 55, 23, 50));

	$fonts = glob('assets/fonts/orangejuice.ttf');
	$char = '2345689abcdefghjkmnprsuvwyzABCDEFGHIJKLMNPQRSTUVWXYZ';
	$code = '';
	for($i=0; $i<7; $i++) {
		$lettre = $char[rand()%strlen($char)];
		$code .= $lettre;
		imagettftext($image, rand(25, 35), rand(-25, 25), 20 + 28 * $i, 40, $colors[array_rand($colors)], $fonts[0], $lettre);
	}
	$now = microtime(TRUE);
	$randimg =  $now . '.png';
									
	if (!is_dir('assets/img/captcha/')) {
		mkdir('assets/img/captcha/');
	}
	
	//Remove old images
	$current_dir = @opendir('assets/img/captcha/');
	while ($filename = @readdir($current_dir)) {
		if (substr($filename, -4) === '.png' && (str_replace('.png', '', $filename) + $expiration) < $now && $filename != 'fond_captcha.png') {
			@unlink('assets/img/captcha/'.$filename);
		}
	}
	@closedir($current_dir);
	
	imagepng($image, 'assets/img/captcha/' . $randimg);
	imagedestroy($image);
	
	$ret = array(
		'image' => '<img src="' . base_url('assets/img/captcha/' . $randimg) . '" >',
		'code' => $code
	);
	
	return $ret;
}