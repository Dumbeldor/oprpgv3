<?php
/**
 ******************************************************************************
 * Description : 
 * This page Displays the message sent by the user
 * @todo Coding
 * @author Dumbeldor
 * @version 0.1.0
 ******************************************************************************
 */
?>
<div class="row pageNormale">
<br />
<a href="<?php echo base_url("/messaging/"); ?>">Reçus</a> / 
<a href="<?php echo base_url("/messaging/sending"); ?>">Envois</a>
<br />
<br />
<a href="<?php echo base_url("/messaging/write"); ?>">Ecrire un message</a>
<?php if($private_message == NULL){ ?>
	<h3>Vous n'avez encore envoyé aucun message...</h3>
<?php } else {?>
<p>
    Voici les messages que vous avez envoyé :</p>
 <?php echo form_open(base_url('messaging/form'));?>
<input type="submit" name="delete" class="btn btn-default" value="Supprimer" />
<input type="submit" name="markRead" class="btn btn-default" value="Marquer comme lu" />
<br />
<br />
<input onclick="CocheTout(this, 'mess[]');" type="checkbox"> Tout cocher<br/>
		<br />

   
<ul class="accordion" data-accordion>
		<?php foreach ($private_message as $message) {
			?>
			<li class="accordion-navigation">
				<input type="checkbox" name="mess[]" value="<?php echo $message['id']; ?>">
				<a href="#panel<?= $message['id']?>" class="<?= $message['rank']?>">
					<?php  if($message['is_read'] == 0) {//If private message not read
						?><strong>Message non lu</strong> <?php
					}
					?>À : <?php echo $message['pseudo'] .' le '. date('d/m/Y à H\hi',$message['date_time']); ?>
				</a>
				<div id="panel<?= $message['id']?>" class="content">
					<?php 
					//Displays the beginning of the message and displays a link if the member wants to read the entire message
					echo $message['content']; ?>
					<br />
					<?php if($message['catcher'] == $this->user->getId()) {?>
          <a href="<?php echo base_url("/messaging/write/".$message['id']); ?>">Répondre</a>
          <a href="<?php echo base_url("/messaging/delete/".$message['id']); ?>">Supprimer message</a>
          <?php }?>
				</div>
			</li>
			<?php
		}
		?>
			</ul>
		
		<?php
	}
      echo form_close();
?>
</div>
<script>
	function CocheTout(ref, name) {
	var form = ref;
 
	while (form.parentNode && form.nodeName.toLowerCase() != 'form'){ 
		form = form.parentNode; 
	}
 
	var elements = form.getElementsByTagName('input');
 
	for (var i = 0; i < elements.length; i++) {
		if (elements[i].type == 'checkbox' && elements[i].name == name) {
			elements[i].checked = ref.checked;
		}
	}
}
</script>
