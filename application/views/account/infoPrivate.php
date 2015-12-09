<div class="row pageNormale">
    Identifiant : <?php echo $this->user->getId(); ?> <br />
    Pseudo : <?php echo $this->user->getPseudo(); ?> <br />
    Mot de passe : *********  <a href="<?php echo base_url('/account/setPassword') ?>">Modifier</a><br />
    Mail : <?php echo $this->user->getEmail(); ?> <a href="<?php echo base_url('/account/setEmail') ?>">Modifier</a> <br />
</div>