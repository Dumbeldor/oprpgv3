<a href="<?php echo base_url('forum/c/'.$id_categorie);?>">Retour</a><br /> <br />
<?php echo $pagination; ?>
<br /> <br />
	<a href="<?php echo base_url('forum');?>"><i>Les forums</i></a>-><a href="<?php echo base_url('forum/c/'.$aria['categorieId']); ?>"><i><?php echo $aria['categorieName'];?></i></a>-><a href="<?php echo base_url('forum/t/'.$aria['topicId']); ?>"><strong><?php echo $aria['topicName'];?></strong></a><br /><br />
<?php echo form_open('forum/answer');
?>
		<input type="hidden" name="id_topic" value="<?php echo $id_topic; ?>">
		<input type="submit" value="Répondre">
	</form><br />
<?php echo form_open('forum/create_topic'); ?>
		<input type="hidden" name="id_categorie" value="<?php echo $id_categorie; ?>">
		<input type="submit" value="Nouveau Topic dans cette catégorie">
	</form>
	<br />
	<br />
	
	<?php 
foreach($messages as $message):
?>

<div id="<?php echo $message->id;?>">
<table>
		<tr>
		<th>
		<b><a href="<?php echo base_url('users/view/'.$message->userId);?>"><?php echo $message->pseudo; ?></a>
		</th><th></b> le <?php echo date('d/m/Y à H\hi',$message->date); ?> | <?php
		if($message->userId == $this->user->getId() || $moderator || ($id_categorie == $this->user->getAttribute('crewId') && ($modoCrew || $adminCrew || $capitaineCrew))) {
			?><a href="<?php echo base_url('forum/delete_message/'.$message->id); ?>">Supprimer</a>
			|
			<a href="<?php echo base_url('forum/edit/'.$message->id); ?>">Éditer</a>
		<?php } ?>
			|
		<a href="<?php echo base_url('forum/quote/'.$id_topic.'/'.$message->id);?>">Citer</a>
		</th>
		</tr>
		<tr>
			<th>
		<img src="<?php echo base_url('assets/img/avatarDefault.png');?>"></img><br>
		<strong><i><?php echo $message->ranks;?></i></strong><br />
		<i><?php echo $message->messNumber; ?> messages</i>
			</th>
			<th id="forumMessage">		
		<?php echo $message->message; ?>
			</th>
		</tr>
</table>
</div>

<?php endforeach; ?>
<?php if($connecte):
	echo form_open('forum/answer');
?>
		<input type="hidden" name="id_topic" value="<?php echo $id_topic; ?>">
		<input type="submit" value="Répondre">
	</form><br />
<?php echo form_open('forum/create_topic'); ?>
		<input type="hidden" name="id_categorie" value="<?php echo $id_categorie; ?>">
		<input type="submit" value="Nouveau Topic dans cette catégorie">
	</form>
<?php endif; ?>
<br /><br />
<?php echo $pagination; ?>