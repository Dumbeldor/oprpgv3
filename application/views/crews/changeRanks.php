<div class="row pageNormale">
    <h1>Changer de rang</h1>
    <?php if($success){
        ?>Le joueur a bien été changé de rang !
        <a href="<?php echo base_url('crews/index');?>">Retour à l'index</a>
        <?php
    } else {
        ?>Vous ne pouvez pas changer de rang ce joueur...
         <a href="<?php echo base_url('crews/index');?>">Retour à l'index</a>
        <?php
    } ?>
</div>