<br>
<div class="row">
	<ul class="small-block-grid-1">
	<?php foreach($tchats as $tchat) { ?>
		<li>
			<div class="panel">
				<a href="<?php echo base_url('tchat/salle/'.$tchat['id']) ?>"><?= $tchat['name']?></a>
				<br>
				<?= $tchat['descr']; ?>
			</div>
		</li>
	<?php } ?>
	</ul>
</div>
