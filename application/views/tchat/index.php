<br>
<div class="row">
	<ul class="small-block-grid-1">
	<?php if ($this->crew->inCrew()) { ?>
		<li>
			<div class="panel">
				<a href="<?= base_url('tchat/salle/'.$this->crew->getId())?>">Tchat <?= $this->crew->getName()?></a>
				<br>
				Tchat privé des <?= $this->crew->getName()?> vous pouvez discuter de vos stratégies à l'abris des regards !
			</div>
		</li>		
	<?php } ?>
	
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
