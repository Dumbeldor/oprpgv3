Identifiant : <?php echo $user['id']; ?> <br />
Pseudo : <?php echo $user['pseudo']; ?> <br />
Mot de passe : *********  <a href="<?php echo base_url('/account/setPassword') ?>">Modifier</a><br />
Mail : <?php echo $user['email']; ?> <a href="<?php echo base_url('/account/setEmail') ?>">Modifier</a> <br />
Dashboard : <br />
	- Premier lien :  Forum <a href="">Modifier</a><br />
	- Deuxième lien :  Combat <a href="">Modifier</a><br />
	- Troisième lien :  Tchat <a href="">Modifier</a><br />