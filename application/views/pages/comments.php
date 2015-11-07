<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="row">
<br>
    <ul class="small-block-grid-1"> 
        <div class="panel">
             <h1><?= $new['title']?></h1>
             <br>
             <strong>News écrite par <a href="<?= base_url('users/view/'.$new['idUser'])?>" class="<?= $new['rank']?>"><?= $new['pseudo']?></a></strong><br>
             Le : <?= date('d/m/Y à H\hi', $new['date_time']) ?><br><br>

            <?= $new['message']; ?>

            <?php if($nbComments <= 0) { ?>
                 <p>Il y a aucun commentaire sur cette news<br />
             <?php } 
            if ($connecte) { ?>
                    <a href="<?php echo base_url('news/addComments/'.$id); ?>">Ajouter un commentaire</a> <br /><br />
                 <?php } ?>
        </div>
    </ul>
   <ul class="small-block-grid-1"><?php
    	foreach($comments as $comment): ?>
		<li>
		  <div class="panel">
			<strong>Ecrit par <a href="<?= base_url('users/view/'.$comment->idUser)?>" class="<?= $comment->rank?>"><?php echo $comment->pseudo; ?></a></strong>
			<p>Le : <?php echo date('d/m/Y à H\hi', $comment->date_time);?></p>
			<p><?php echo $comment->message;?></p>
		  </div>
		</li>    	
    	<?php endforeach;?>
	</ul>
</div>
