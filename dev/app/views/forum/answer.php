<?php if($connecte): 
	echo form_open('forum/send_message');
?>
		<textarea id="forum_message" name="message"></textarea>
		<input type="hidden" name="id_topic" value="<?php echo $id_topic; ?>">
		<input type="submit" value="Envoyer">
	</form>
<?php endif; ?>