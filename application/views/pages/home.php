<div class="row">
    <h1>Les news</h1>
    <?php if($nbnews <= 0) { ?>
			Il y a aucune news<br />
			<a href="<?php echo base_url('/news/add/'); ?>">Ajouter une news</a>
    <?php } else {
	  ?>
		<?php
		if ($connecte &&$admin) { ?>
		  <a href="<?php echo base_url('/news/add/'); ?>">Ajouter une news</a> <br /><?php } ?>
		<?php echo $pagination; ?>
		<ul class="large-block-grid-2 small-block-grid-1">
		<?php foreach($news as $new): ?>
		  <li>
		    <div class="panel">
		      <h2><?php echo $new->title; ?></h2>
			  <p>Ecrit par <?php echo $new->pseudo; ?> le <?php echo date('d/m/Y à H\hi', $new->date_time); 
			  //Si administrateur
			  if($connecte && $admin) { ?>
					<a href="<?php echo base_url(array('news', 'delete', $new->id)); ?>">Supprimer la news</a> 
			  <?php } ?></p>
			  <a href="<?php echo base_url('/news/comment/'.$new->id);?>">Commentaire(<?php echo $nbComments;?>)</a>
			  </br>
			  <p><?php echo $new->message; ?></p>
			</div>
	    </li>
      <?php endforeach; ?>
		</ul>
		<?php echo $pagination; ?>
		</div>
     
    <?php } ?>

