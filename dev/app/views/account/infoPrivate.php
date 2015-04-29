Identifiant : <?php echo $user['user_id']; ?> <br />
Pseudo : <?php echo $user['user_pseudo']; ?> <br />
Mot de passe : *********  <a href="<?php echo base_url('/account/setPassword') ?>">Modifier</a><br />
Mail : <?php echo $user['user_email']; ?> <a href="<?php echo base_url('/account/setEmail') ?>">Modifier</a> <br />
Menu personnalisé : ..... <a href="">Modifier</a><br />