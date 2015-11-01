<div class="row">
  </br>
  <?php if($connecte): ?>
	<form id="form_tchat" method="POST">
	  <textarea id="msg" name="message"></textarea>
	  <input type="hidden" name="id_tchat" value="<?php echo $id_tchat; ?>">
	  <input type="submit" value="Poster">  
	</form>
  <?php endif; ?>
  <div id="tchat_container">
	<?php if(count($messages) == 0): ?>
	  <em>Aucun message recent</em>
	<?php else: ?>
	  <?php foreach($messages as $message): ?>
		<div class="tchat_message">
		  <div class="columns small-12">
			<div class="row">
			  <div class="columns small-3">
				<strong><a href="<?php echo base_url('users/view/'.$message->userId);?>" class="<?= $message->ranks; ?>"><?php echo $message->pseudo; ?></a></strong><br>
				<img src="<?php echo base_url('assets/img/avatarDefault.png');?>"></img><br>
			  </div>
			  <div class="columns small-9">
				<div class="panel" id="<?= $message->ranks;?>">
				le <?php echo $message->date_time; ?>
				<?php if($moderator) { ?>
				 |<a href="<?= base_url('tchat/delete_message/'.$message->id); ?>">Supprimer</a>
				<?php } ?>
				</br>
				<?php echo $message->message; ?></br>
				</div>
			  </div>
			</div>
		  </div>
		</div>
	  <?php endforeach; ?>
	<?php endif; ?>
  </div>
</div>

<script>
var modo = <?php echo $moderator; ?>;
var url_user = '<?= base_url('users/view'); ?>'
var base_url = '<?php echo base_url('tchat/delete_message'); ?>'
var img_url = '<?= base_url('assets/img/'); ?>'
</script>