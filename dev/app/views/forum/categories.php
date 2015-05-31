<?php 
foreach($categories as $categorie):
?>
	<a href="../topics/<?php echo $categorie['cate_id']; ?>"> <?php echo $categorie['cate_nom'];?></a><br>
<?php endforeach; ?>