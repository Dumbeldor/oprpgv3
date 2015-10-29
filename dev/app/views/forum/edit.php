<br /> <br /><?php if($connecte): 
	echo form_open('forum/send_edit');
?>
		<textarea id="forum_message" name="message"><?php echo $message; ?></textarea>
		<input type="hidden" name="id_message" value="<?php echo $id_message; ?>">
		<input type="submit" value="Envoyer">
		<script>
            CKEDITOR.replace( 'forum_message' );
        </script>
	</form>
<?php endif; ?>