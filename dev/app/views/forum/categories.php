<a href="<?php echo base_url('forum/');?>">Retour</a><br /> <br />
<?php 
echo $pagination;?>
<br /> <br />
<a href="<?php echo base_url('forum');?>"><i>Les forums</i></a>-><a href="<?php echo base_url('forum/c/'.$aria['id']); ?>"><i><strong><?php echo $aria['name'];?></strong></i></a>
<br /><br />
<?php echo form_open('forum/create_topic'); ?>
		<input type="hidden" name="id_categorie" value="<?php echo $id_categorie; ?>">
		<input type="submit" value="Nouveau Topic">
	</form>
	<br />
<br />
<?php if(!empty($topic)):
foreach($topic as $topics):

?>
	<a href="<?php echo base_url('forum/t/'.$topics['id']); ?>"> <?php echo $topics['name'];?></a><br>
	<i>Dernier message de <a href="<?php echo base_url('users/view/'.$topics['userId']);?>"><?php echo $topics['pseudo'];?></a> le <?php echo date('d/m/Y à H\hi', $topics['date']);?></i><br />
	-----------------------------------------------------------------------------------------------------<br />
<?php endforeach;
else: ?>
Il n'y a pas encore de topic dans cette catégorie !<br />

<?php endif;?>
<?php if($connecte):
echo form_open('forum/create_topic'); ?>
		<input type="hidden" name="id_categorie" value="<?php echo $id_categorie; ?>">
		<input type="submit" value="Nouveau Topic">
	</form>
<?php endif; ?>