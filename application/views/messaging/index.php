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
			<a href="<?php echo base_url("/messaging/"); ?>"><div id="send_button">Reçus</div></a>
			<a href="<?php echo base_url("/messaging/sending"); ?>"><div id="send_button">Envois</div></a>
		</div>
	</div>
	<div id="messagingSend" class="row">
		<a href="<?php echo base_url("/messaging/write"); ?>"><div id="send_button">Ecrire un message</div></a>
	</div>
	<?php if(count($conversations) == 0){ ?>
		<h3>Vous n'avez aucune conversation active...</h3>
	<?php } else {?>
		<p>
	    Vos conversations :</p>
		 <?php echo form_open(base_url('messaging/form'));?>
		<input type="submit" name="delete" class="btn btn-default" value="Supprimer" />
		<br />
		<br />
		<input onclick="CocheTout(this, 'mess[]');" type="checkbox"> Tout cocher<br/>
		<br />
		
			<ul class="accordion" data-accordion>
		<?php foreach ($conversations as $pseudo_autre => $conversation) {
			?>
			<a href="<?php echo base_url('messaging/read/'.$conversation[0]) ; ?>">Afficher toute la conversation</a>
			<li class="accordion-navigation">
				<div class="columns small-1">
				<input type="checkbox" name="mess[]" value="<?php echo $conversation[0]; ?>">
				</div>
				
				
				<a href="#panel<?= $conversation[0]?>" class="<?= $conversation[1]['rank_author']?>">
					<?php  if($conversation[1]['is_read'] == 0) {//If private message not read
						?><strong>Nouveau message</strong> <?php
					}
					?>De : <?php echo $pseudo_autre .' le '. date('d/m/Y à H\hi',$conversation[1]['date_time']); ?>
				</a>
				<div id="panel<?= $conversation[0]?>" class="content">
					<?php 
						//Displays the last two messages of the conversation
						$limit = min(2, count($conversation)-1);
						for($i=1; $i<=$limit; $i++) {
							$msg = $conversation[$i]['content'];
							$cssClass = ($conversation[$i]['id_dest'] == $conversation[0]) ? 'meAuthor' : '';
							?>
							<div class="row"><div class="panel panel-mp-msg <?php echo $cssClass; ?>"><?php echo $msg; ?></div></div>
							<?php
						}
					?>
					<br />
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


  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
