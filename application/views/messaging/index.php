<?php
/**
 ******************************************************************************
 * Description : 
 * This page contains the messaging handling
 * @todo Coding
 * @author Dumbeldor
 * @version 0.1.0
 ******************************************************************************
 */
?>
<div class="row">
	<br />
	<a href="<?php echo base_url("/messaging/"); ?>">Reçus</a> / 
	<a href="<?php echo base_url("/messaging/sending"); ?>">Envois</a>
	<br />
	<br />
	<a href="<?php echo base_url("/messaging/write"); ?>">Ecrire un message</a>
	<?php if($private_message == NULL){ ?>
		<h3>Vous n'avez encore aucun message...</h3>
	<?php } else {?>
		<p>
	    Voici vos messages privés :</p>
		 <?php echo form_open(base_url('messaging/form'));?>
		<input type="submit" name="delete" class="btn btn-default" value="Supprimer" />
		<input type="submit" name="markRead" class="btn btn-default" value="Marquer comme lu" />
		<br />
		<br />
		<ul class="large-block-grid-2 small-block-grid-1">
		<?php foreach ($private_message as $message) {
			?><li>
				<div class="panel">
				<input type="checkbox" name="mess[]" value="<?php echo $message['id']; ?>">
				<?php  if($message['is_read'] == 0) {//If private message not read
				       ?><strong>Message non lu</strong> <?php
				}
				?>De : <?php echo htmlentities($message['pseudo']) .' le '. date('d/m/Y à H\hi',$message['date_time']); ?>
				<br />
			
				<?php 
				//Displays the beginning of the message and displays a link if the member wants to read the entire message
				echo $message['content']; ?></em></strong></blockquote></u> 
				<br />
				<a href="<?php echo base_url("/messaging/read/".$message['id']); ?>">Lire la suite</a>
				</div>
			</li>
			<?php
		}	
	}
      echo form_close();
?>
</div>
