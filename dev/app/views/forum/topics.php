<?php 
foreach($messages as $message):
?>
	<p>
		<b><?php echo $message['pseudo']; ?></b> le <?php echo date('d/m/Y à H\hi',$message['date']); ?> | <a href="delete_message/<?php echo $message['id']; ?>">Supprimer</a><br>
		<?php echo nl2br(htmlspecialchars($message['message'])); ?>
		<br />-----------------------------------------------------------------------------------------<br />
	</p>
<?php endforeach; ?>
<?php if($connecte):
	echo form_open('forum/answer');
?>
		<input type="hidden" name="id_topic" value="<?php echo $id_topic; ?>">
		<input type="submit" value="Répondre">
	</form>
<?php echo form_open('forum/create_topic'); ?>
		<input type="hidden" name="id_categorie" value="<?php echo $id_categorie; ?>">
		<input type="submit" value="Nouveau Topic">
	</form>
<?php endif; ?>