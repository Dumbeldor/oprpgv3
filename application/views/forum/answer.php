<div class="row pageNormale">
<a href="<?php echo base_url('forum');?>"><i>Les forums</i></a>-><a href="<?php echo base_url('forum/c/'.$aria['categorieId']); ?>"><i><?php echo $aria['categorieName'];?></i></a>-><a href="<?php echo base_url('forum/t/'.$aria['topicId']); ?>"><strong><?php echo htmlspecialchars($aria['topicName']);?></strong></a><br /><br />

<br /> <br /><?php
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
</div>