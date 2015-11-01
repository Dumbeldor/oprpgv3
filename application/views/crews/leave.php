<div class="row pageNormale">
<?php if($leave) {
    ?>Vous êtes bien partit de votre équipage !<br>
    <a href="<?php echo base_url('crews/index');?>">Retour à l'index des équipages</a>
    <?php
} else {
    ?>Vous devez donner le lead avant de quitter l'équipage !<br>
     <a href="<?php echo base_url('crews/index');?>">Retour à l'index des équipages</a>
     <?php
} ?>
<div class="row pageNormale">