<?php 
echo $messages[0]['topic_name'];
foreach($messages as $message):
?>
	<p>
		<b><?php echo $message['user_pseudo']; ?></b> le <?php echo $message['message_date']; ?> | <a href="delete_message/<?php echo $message['message_id']; ?>">Supprimer</a><br>
		<?php echo nl2br(htmlspecialchars($message['message'])); ?>
	</p>
<?php endforeach; ?>
<?php if($connecte):
	echo form_open('forum/answer');
?>
		<input type="hidden" name="id_topic" value="<?php echo $id_topic; ?>">
		<input type="submit" value="Répondre">
	</form>
<?php echo form_open('forum/create_topic'); ?>
		<input type="hidden" name="id_categorie" value="<?php echo $id_categorie[0]['cate_id']; ?>">
		<input type="submit" value="Nouveau Topic">
	</form>
<?php endif; ?>