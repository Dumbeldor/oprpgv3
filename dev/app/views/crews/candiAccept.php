<?php if($success) {
    ?>Vous venez d'accepter un membre dans votre équipage, bravo !<br>
    <a href="<?php echo base_url('crews/index');?>">Revenir à l'accueil de l'équipage</a>
    <?php
} else {
    ?>Le joueur fait déjà partit d'un équipage.<br>
    <a href="<?php echo base_url('crews/index');?>">Revenir à l'accueil de l'équipage</a>
    <?php
}