<!DOCTYPE html>
<html lang="fr">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>OPrpg - Connexion</title>
	<meta name="description" content="Inscription au site OnePiece-Rpg" />
	<meta name="author" content="OPrpg" />
	<link rel="stylesheet" type="text/css" href="<?php echo css_url('style'); ?>">
	<script type="text/javascript" src="<?php echo js_url('script'); ?>"></script>
</head>

<body>

	<div class="preview">
		
		<div class="preview-logo">
			<h1>OnePiece-Rrpg</h1>
			<h1><small>Sous-titre sympa</small></h1>
			<img src="./img/preview/logo_preview.png">
		</div><!-- preview-logo -->

		<div class="information [color]"> <!-- [color] = blue/orange/red/green -->
			<p>&#187; <strong>Attention ! </strong>Mauvais mot de passe/pseudo.</p>
		</div>

		<div class="preview-connexion">
			<form>
				<p>
					<label for="connex_pseudo">Pseudo</label> : <input type="text" name="connex_pseudo" id="connex_pseudo" placeholder="Votre Pseudo" />
					<label for="connex_password">Pseudo</label> : <input type="password" name="connex_password" id="connex_password" />
				</p>
				<p>
					<input type="submit" value="Valider" class="button [size] [color]" />
				</p>
				<p><small><a href="#">Vous avez oublié votre mot de passe ?</a></small></p>
			</form>
		</div><!-- preview-choice -->

	</div> <!-- /preview -->

</body>

</html>