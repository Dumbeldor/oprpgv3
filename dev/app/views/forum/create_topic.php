<?php if($connecte):
	echo form_open('forum/send_topic')
?>
		<label for="topic_name" class="col-sm-2 control-label">Titre du topic :</label>
		<input type="text" name="topic_name"><br>
	    <label for="forum_message" class="col-sm-2 control-label">Message :</label>
		<textarea id="forum_message" name="message" ></textarea><br>
		<input type="hidden" name="id_categorie" value="<?php echo $id_categorie; ?>">
		<input type="submit" value="Envoyer">
	</form>
<?php
endif;
?>