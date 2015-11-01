<div class="row pageNormale">
<br /> <br /><?php if($connecte): 
	echo form_open('forum/send_message');
?>
		<textarea id="forum_message" name="message">
			<?php if(!empty($message_citation)) {
				echo $message_citation;
			} ?>
		</textarea>
		<input type="hidden" name="id_topic" value="<?php echo $idTopic; ?>">
		<input type="submit" value="Envoyer">
		<script>
            CKEDITOR.replace( 'forum_message' );
        </script>
	</form>
<?php endif; ?>
</div>