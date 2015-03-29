<?php if($connecte):
	if(count($messages) == 0): 
?>
		<p>Aucun message privé</p>
	<?php
	else:
?>
		<div class="pm_messages">Messages reçus<br>
<?php
		foreach($messages as $message):
	?>
			
				<?php echo $message['user_pseudo']; ?> le <?php echo $message['pmess_date']; ?> | <a href="delete_message/<?php echo $message['pmess_id']; ?>">Supprimer</a><br>
				<p><?php echo nl2br(htmlspecialchars($message['pmess_content'])); ?></p>
				<?php echo form_open('private_messages/answer_message'); ?>
					<input type="hidden" name="id_receiver" value="<?php echo $message['user_id_users'] ?>">
					<input type="hidden" name="content" value="<?php echo $message['pmess_content']; ?>">
					<input type="submit" value="Répondre">
				</form>
			</p>
	<?php
		endforeach;
?>
		</div>
		<div class="pm_messages">Messages envoyés<br>
<?php
		foreach($messages_sent as $message_sent):
?>
				<?php echo $message['user_pseudo']; ?> le <?php echo $message['pmess_date']; ?>
				<p><?php echo nl2br(htmlspecialchars($message_sent['pmess_content'])); ?></p>
			</p>
<?php
		endforeach;
	endif;
endif;
?>