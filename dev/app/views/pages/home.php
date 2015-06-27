<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron">
  <div class="container">

    <h1>Les news</h1>
    <?php if($nbnews <= 0) { ?>
    	<p>Il y a aucune news<br />
    	<a href="<?php echo base_url('/news/add/'); ?>">Ajouter une news</a></p>
    <?php } else { 
    	if ($connecte &&$admin) { ?>
    		<a href="<?php echo base_url('/news/add/'); ?>">Ajouter une news</a> <br /><?php } ?>
    	<?php echo $pagination; ?>
    	<?php foreach($news as $new): ?>
    	<h2><?php echo $new->title; ?></h2>
    	<p>Ecrit par <?php echo $new->pseudo; ?> le <?php echo strftime('%d/%m/%Y', $new->date_time); 
    	//Si administrateur
    	if($connecte && $admin) { ?>
    			<a href="<?php echo base_url(array('news', 'delete', $new->id)); ?>">Supprimer la news</a> 
    	<?php } ?></p>
    	<a href="<?php echo site_url('/news/comment/'.$new->id);?>">Commentaire</a>
    	</br>
    	<p><?php echo $new->message; ?></p>
    	<br />
    	<br />
    	<?php endforeach; ?>

    	<?php echo $pagination; ?>
    <?php } ?>
  </div>
</div>

