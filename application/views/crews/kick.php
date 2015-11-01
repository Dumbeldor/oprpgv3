<div class="row pageNormale">
<?php if($success) {
    ?>Le joueur a bien était supprimé !
    <a href="<?php echo base_url('crews/index');?>">Retour à l'index de l'équipage</a>
    <?php
} else {
    ?>Le joueur n'appartient pas à votre équipage...
    <?php
}?>
</div>