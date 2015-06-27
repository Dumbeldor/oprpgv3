<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron">
  <div class="container">

    <h1>Les commentaires</h1>
    <?php if($nbComments <= 0) { ?>
    	<p>Il y a aucun commentaire sur cette news<br />
    <?php } 
    if ($connecte) { ?>
        		<a href="<?php echo base_url('news/addComments/'.$id); ?>">Ajouter un commentaire</a> <br /><br />
    <?php }    
    	foreach($comments as $comment): ?>
    	<strong>Ecrit par <?php echo $comment->pseudo; ?></strong>
    	<p>Le : <?php echo strftime('%d/%m/%Y', $comment->date_time);?></p>
    	<p><?php echo $comment->message;?></p>
    	---------------------------------------------------------------------
    	<br />
    	<br />
    	
    	<?php endforeach;?>
  </div>
</div>

