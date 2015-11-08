<div id="tchat_body" class="row">
  <?php if($connecte): ?>
	<form id="form_tchat" method="POST">
	  <textarea id="msg" name="message"></textarea>
	  <input type="hidden" name="id_tchat" value="<?php echo $id_tchat; ?>">
	  <input type="submit" id="send_button" value="Poster">  
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
			<div class="columns medium-2 small-3">
				<div>
					<strong><a href="<?php echo base_url('users/view/'.$message->userId);?>" class="<?= $message->ranks; ?>"><?php echo $message->pseudo; ?></a></strong>
				</div>
				<div class="message_tchat_milieu">
					<img class="avatarTchat avatarTchat<?= $message->ranks;?>" src="<?php echo base_url('assets/img/avatarsJoueurs/'.$message->userId.'.png');?>"></img>
				</div>
			</div>
		    <div class="panel columns medium-10 small-9 messageTchat" id="<?= $message->ranks;?>">
		        <div class="message_tchat_haut" id="<?= $message->ranks;?>">
					Posté le <?php echo $message->date_time; ?>
					<?php if($moderator) { ?>
					 |<a href="<?= base_url('tchat/delete_message/'.$message->id); ?>">Supprimer</a>
					<?php } ?>
				</div>
				<div class="message_tchat_milieu">
					<?php echo $message->message; ?>
				</div>
				<div class="message_tchat_bas">
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