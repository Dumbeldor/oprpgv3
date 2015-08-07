<?php 
foreach($categorie as $categories):
if($categories['id'] != 1 || ($moderator || $admin)):
?>
	<a href="<?php echo base_url('forum/c/'.$categories['id']); ?>"> <?php echo $categories['name'];?></a><br>
	<i><?php echo $categories['descr'];?></i><br/>
	<?php if (!empty($categories['topicId'])):?>
		<strong>Dernier message</strong><br />
		<i>De <a href="<?php echo base_url('users/view/'.$categories['userId']);?>"></i><?php echo $categories['pseudo'];?><i></a> dans <a href="<?php echo base_url('forum/t/'. $categories['topicId']);?>"><?php echo $categories['topicName'];?></a></i>
		le  <?php echo date('d/m/Y à H\hi', $categories['date']);?><br />
	<?php else:?>
		<i>Aucun topic d'écrit pour le moment !</i><br />
		<?php endif;?>
	----------------------------------------------------------------------------------------------------<br />
<?php
endif; 
endforeach; ?>