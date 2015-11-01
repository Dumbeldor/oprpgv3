<div class="row pageNormale">
Liste de vos tickets :
<?php if(empty($ticket)):?>
Vous n'avez pas encore posté de ticket !
<a href="<?php echo base_url('support/create');?>">Poster un ticket sur le support</a><br />
<?php else:
foreach($ticket AS $tickets):
?>	<a href="<?php echo base_url('support/read/'.$tickets['id']);?>"><?php echo $tickets['sujet'];?></a>
dernière réponse de : <?php echo $tickets['pseudo']; ?> le <?php echo date('d/m/Y à H\hi', $tickets['date']);?> 

<?php endforeach;
endif; ?>
</div>
