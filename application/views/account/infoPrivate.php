<div class="row pageNormale">
    Identifiant : <?php echo $user['id']; ?> <br />
    Pseudo : <?php echo $user['pseudo']; ?> <br />
    Mot de passe : *********  <a href="<?php echo base_url('/account/setPassword') ?>">Modifier</a><br />
    Mail : <?php echo $user['email']; ?> <a href="<?php echo base_url('/account/setEmail') ?>">Modifier</a> <br />
</div>