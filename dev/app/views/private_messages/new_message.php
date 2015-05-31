<?php if($connecte):
	echo form_open('private_messages/send_message');
?>

		<textarea id="msg" name="content"></textarea>
		<input type="hidden" name="id_receiver" value="<?php echo $id_receiver; ?>">
		<input type="submit" value="Envoyer">
	</form>
<?php
endif;
?>