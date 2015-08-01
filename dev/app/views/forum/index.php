<?php 
foreach($categorie as $categories):
if($categories['id'] != 1 || ($moderator || $admin)):
?>
	<a href="<?php echo base_url('forum/c/'.$categories['id']); ?>"> <?php echo $categories['name'];?></a><br>
	<i><?php echo $categories['descr'];?></i><br/>
	----------------------------------------------------------------------------------------------------<br />
<?php
endif; 
endforeach; ?>