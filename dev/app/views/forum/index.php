<?php 
foreach($types as $type):
?>
	<a href="categories/<?php echo $type['forum_id']; ?>"> <?php echo $type['forum_name'];?></a><br>
<?php endforeach; ?>