<!DOCTYPE html>
<html lang="fr">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>OPrpg - Inscription</title>
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

		<div class="preview-inscription">
			<form>
				<p>Pour vous inscrire, veuillez remplir les champs suivants :</p>
				<p>
					<label for="inscr_pseudo">Pseudo</label> : <input type="text" name="inscr_pseudo" id="inscr_pseudo" placeholder="Votre Pseudo" />
					<label for="inscr_email1">E-mail</label> : <input type="email" name="inscr_email1" id="inscr_email1" placeholder="example@onepiece.fr" />
					<label for="inscr_email2">Confirmation de l'email</label> : <input type="email" name="inscr_email2" id="inscr_email2" placeholder="example@onepiece.fr" />
					<label for="inscr_password1">Mot de passe</label> : <input type="password" name="inscr_password1" id="inscr_password1" />
					<label for="inscr_password1">Confirmation du mot de passe</label> : <input type="password" name="inscr_password2" id="inscr_password2" />
				</p>
				<p>
					<label for="inscr_datenaissance">Date de naissance</label> : <input type="date" name="inscr_datenaissance" id="inscr_datenaissance">
					<label for="inscr_sexe">Affiliation</label> : 
						<select name="inscr_sexe">
							<option>Choisir ---</option>
							<option>Homme</option>
							<option>Femme</option>
						</select>
				</p>
				<p>
					<label for="inscr_perso">Personnage</label> : 
						<select name="inscr_perso">
							<option>Choisir ---</option>
							<option>luffy</option>
							<option>zorro</option>
							<option>nami</option>
						</select>
					<label for="inscr_affiliation">Affiliation</label> : 
						<select name="inscr_affiliation">
							<option>Choisir ---</option>
							<option>Pirate</option>
							<option>Marine</option>
							<option>Revolutionnaire</option>
						</select>
				</p>
				<p>
					<input type="submit" value="Valider" class="button [size] [color]" />
				</p>
			</form>
		</div><!-- preview-inscription -->

	</div> <!-- /preview -->

</body>

</html>