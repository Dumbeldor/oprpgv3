<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="row">
    <h1>Les commentaires</h1>
    <br />
    <a href="<?php echo base_url('/home');?>">Retour</a>
    <?php if($nbComments <= 0) { ?>
    	<p>Il y a aucun commentaire sur cette news<br />
    <?php } 
    if ($connecte) { ?>
        		<a href="<?php echo base_url('news/addComments/'.$id); ?>">Ajouter un commentaire</a> <br /><br />
    <?php }
	?><ul class="small-block-grid-1"><?php
    	foreach($comments as $comment): ?>
		<li>
		  <div class="panel">
			<strong>Ecrit par <?php echo $comment->pseudo; ?></strong>
			<p>Le : <?php echo date('d/m/Y à H\hi', $comment->date_time);?></p>
			<p><?php echo $comment->message;?></p>
		  </div>
		</li>    	
    	<?php endforeach;?>
	</ul>
</div>
