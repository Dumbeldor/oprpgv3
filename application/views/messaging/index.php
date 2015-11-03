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
<div id="messagingIndex" class="row pageNormale">
	<br />
	<div class="row">
		<div id="messagingChoice">
			<a href="<?php echo base_url("/messaging/write"); ?>"><div id="send_button">Ecrire un message</div></a>
		</div>
	</div>
	<?php if(count($conversations) == 0){ ?>
		<h3>Aucune conversation active...</h3>
	<?php } else {?>
		<span id="myConv">Mes conversations</span>
		 <?php echo form_open(base_url('messaging/form'));?>
		<input id="send_button" type="submit" name="delete" class="suppButton" value="Supprimer" />
		<br />
		<br />
		<input onclick="CocheTout(this, 'mess[]');" type="checkbox"> Tout cocher<br/>
		<br />
		
		<?php foreach ($conversations as $pseudo_autre => $conversation) {
			?>
			<div class="row panel conversationPanel" id="<?php echo $conversation[1]['rank_author']; ?>">
				<div class="row conversationPanelHeader" id="conversationHeader_<?php echo $conversation[1]['id_author']; ?>">
					<div class="columns small-1">
						<input type="checkbox" name="mess[]" value="<?php echo $conversation[0]; ?>">
					</div>
					<div class="columns small-2">
						<strong><?php echo $pseudo_autre; ?></strong>
					</div>
					<div class="columns small-5">
						<?php  if($conversation[1]['is_read'] == 0) {//If private message not read
							echo '<strong>Nouveau message le '. date('d/m/Y à H\hi',$conversation[1]['date_time']).'</strong>';
						}
						else {
							echo '<strong>Dernier message le '. date('d/m/Y à H\hi',$conversation[1]['date_time']).'</strong>';
						}?>
					</div>
					<div class="columns small-4">
						<div class="row">
							<a class="messagingButton" href="<?php echo base_url("/messaging/read/".$conversation[0]); ?>"><div id="send_button"><center>Afficher</center></div></a>
							<a class="messagingButton" href="<?php echo base_url("/messaging/write/".$conversation[0]); ?>"><div id="send_button"><center>Répondre</center></div></a>
							<a class="messagingButton" href="<?php echo base_url("/messaging/delete/".$conversation[0]); ?>"><div id="send_button"><center>Supprimer</center></div></a>
						</div>
					</div>
				</div>
				<div class="row conversationPanelContent <?php echo $conversation[1]['rank_author']; ?>" id="conversationContent_<?php echo $conversation[1]['id_author']; ?>">
					<div id="panel<?= $conversation[0]?>" class="content">
						<?php 
							//Displays the last two messages of the conversation
							$limit = min(2, count($conversation)-1);
							for($i=$limit; $i>=1; $i--) {
								$msg = $conversation[$i]['content'];
								$cssClass = ($conversation[$i]['id_dest'] == $conversation[0]) ? 'meAuthor' : 'otherAuthor';
								?>
								<div class="row">
									<div class="panel panel-mp-msg <?php echo $cssClass; ?>">
										<div class="mp-haut"><?php echo $msg; ?></div>
										<div class="mp-bas">Envoyé le <?php echo date('d/m/Y à H\hi',$conversation[1]['date_time']);?></div>
									</div>
								</div>
								<?php
							}
						?>
					</div>
				</div>
			</div>
			<?php
		}
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


  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
