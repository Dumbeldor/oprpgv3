<?php if($connecte):
?>
<<<<<<< HEAD
	<div id="old_message"><?php echo nl2br(htmlspecialchars($content)); ?></div>
=======
	<div id="old_message"><?php echo $content ?></div>
>>>>>>> 7e8e45a0a7721a61b1a874c743dae5aea6e08724
	<?php echo form_open('private_messages/send_message'); ?>
		<textarea id="msg" name="content"></textarea>
		<input type="hidden" name="id_receiver" value="<?php echo $id_receiver; ?>">
		<input type="hidden" name="old_content" value="<?php echo $content; ?>">
		<input type="submit" value="Envoyer">
	</form>
<?php
endif;
?>