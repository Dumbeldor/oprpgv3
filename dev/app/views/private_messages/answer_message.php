<?php if($connecte):
?>
	<div id="old_message"><?php echo $content ?></div>
	<?php echo form_open('private_messages/send_message'); ?>
		<textarea id="msg" name="content"></textarea>
		<input type="hidden" name="id_receiver" value="<?php echo $id_receiver; ?>">
		<input type="hidden" name="old_content" value="<?php echo $content; ?>">
		<input type="submit" value="Envoyer">
	</form>
<?php
endif;
?>