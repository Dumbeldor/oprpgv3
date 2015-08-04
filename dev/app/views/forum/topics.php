<a href="<?php echo base_url('forum/c/'.$id_categorie);?>">Retour</a><br /> <br />
<?php 
foreach($messages as $message):
?>
	<p>
		<b><a href="<?php echo base_url('users/view/'.$message['userId']);?>"><?php echo $message['pseudo']; ?></a></b> le <?php echo date('d/m/Y à H\hi',$message['date']); ?> | <a href="delete_message/<?php echo $message['id']; ?>"></a><br>
		<strong><i><?php echo $message['ranks'];?></i></strong><br />
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