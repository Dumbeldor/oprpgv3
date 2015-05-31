<?php 
foreach($topics as $topic):
?>
	<a href="../messages/<?php echo $topic['topic_id']; ?>"> <?php echo $topic['topic_name'];?></a><br>
<?php endforeach; ?>
<?php echo form_open('forum/create_topic'); ?>
		<input type="hidden" name="id_categorie" value="<?php echo $id_categorie; ?>">
		<input type="submit" value="Nouveau Topic">
	</form>
