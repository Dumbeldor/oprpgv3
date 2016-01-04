<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<audio id="notif">
  <source src="<?php echo base_url('assets/sound/tchat/notif.mp3');?>" type="audio/mp3">
</audio>
<div id="tchat_body" class="row">
  <?php if($connecte): ?>

	  <textarea id="msg" name="message"></textarea>
	  <input type="hidden" name="id_tchat" value="<?php echo $id_tchat; ?>">
	  <button id="send_button" value="Poster">Poster</button>  
	
  <?php endif; ?>
  <div id="tchat_container">
	<?php if(count($messages) == 0): ?>
	  <em>Aucun message recent</em>
	<?php else: ?>
	  <?php foreach($messages as $message): ?>
		<div class="tchat_message" id="msgT">
		  <div class="columns small-12">
		  <div class="row">
			<div class="columns medium-2 small-3">
				<div>
					<strong><a href="<?php echo base_url('users/view/'.$message->userId);?>" class="<?= $message->ranks; ?>"><?php echo $message->pseudo; ?></a></strong>
				</div>
				<div class="message_tchat_milieu">
					<img data-pseudo="<?php echo $message->pseudo; ?>" class="avatarTchat avatarTchat<?= $message->ranks;?>" src="<?php echo base_url('assets/img/avatarsJoueurs/'.$message->userId.'.png');?>"></img>
				</div>
			</div>
			<?php
			$class = '';
			if(preg_match("#" . preg_quote($pseudo) . "#", $message->message)) {
				$class = 'messageTchatMoi';
			}
			?>
		    <div class="panel columns medium-10 small-9 messageTchat <?php echo $class; ?>" id="<?= $message->ranks;?>">
		        <div class="message_tchat_haut" id="<?= $message->ranks;?>">
					Posté le <?php echo date('d/m/Y à H\hi',$message->date_time); ?>
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
<?php $user_color = '007AF'; ?>
<script>
var d = new Date();
var userId = <?= $userId?>;
var modo = <?php echo $moderator; ?>;
var ranks = '<?= $rank;?>';
var salle = <?= $id_tchat?>;
var url_user = '<?= base_url('users/view'); ?>';
var base_url = '<?php echo base_url('tchat/delete_message'); ?>';
var img_url = '<?= base_url('assets/img/'); ?>';
var myname = '<?php echo $pseudo; ?>';

$('#send_button').click(function(){ //use clicks message send button
		var mymessage = $('#msg').val(); //get message text
		
		if(myname == ""){ //empty name?
			alert("Vous n'êtes pas connecté...");
			return;
		}
		if(mymessage == ""){ //emtpy message?
			alert("Entrer un message !");
			return;
		}

		//prepare json data
		var msg = {
		type: 2,
		message: mymessage,
		name: '<?php echo $pseudo; ?>',
		rank : '<?= $rank;?>',
		userId : <?= $userId?>,
		salle: <?= $id_tchat?>,
		};

		$('#msg').val(''); //reset text
		//convert and send data to server
		websocket.send(JSON.stringify(msg));
	});
</script>