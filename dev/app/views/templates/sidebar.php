<!-- sidebar -->
<?php if(isset($largeur) && $largeur === 'small') { ?>
  <div class="col-lg-4 col-md-3 col-xs-0"></div>
<?php } else { ?>
  <div class="col-lg-3 col-md-2 col-xs-0"></div>
<?php } ?>
<!-- fin sidebar -->

<!-- On prepare le contenu de la page -->
<?php if(isset($largeur) && $largeur === 'small') { ?>
  <div class="container-oprpg col-lg-4 col-md-6 col-xs-12">
<?php } else { ?>
  <div class="container-oprpg col-lg-6 col-md-8 col-xs-12">
<?php }
