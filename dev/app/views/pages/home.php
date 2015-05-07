<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron">
  <div class="container">

    <h1>Les news</h1>
    <?php if($nbnews <= 0) { ?>
    	<p>Il y a aucune news</br>
    	<a href="<?php echo site_url('news/add/'); ?>">Ajouter une news</a></p>
    <?php } else { ?>
    <?php foreach($news as $new): ?>
    <h2><?php echo $new->title; ?></h2>
    <p>Ecrit par <?php echo $new->pseudo; ?> le <?php echo $new->date_date; 
    //Si administrateur
    if($connecte && $admin) { ?>
    	<a href="<?php echo site_url(array('news', 'delete', $new->id)); ?>">Supprimer la news</a> 
    <?php } ?></p>
    </br>
    <p><?php echo $new->message; ?></p>
    <br />
    <br />
    <?php endforeach; ?>
    <?php } ?>
  </div>
</div>

