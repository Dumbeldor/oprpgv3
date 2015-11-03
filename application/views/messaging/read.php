<?php
/**
 ******************************************************************************
 * Description : 
 * This page contains the messaging handling
 * @todo Coding
 * @author Dumbeldor
 * @version 0.1.0
 ******************************************************************************
 */
?>
<div id="messaging" class="row">
    <div class="pageNormale"><?php
		if(count($conversations) > 0) {
			$pseudo_autre = key($conversations);
			$conversation = $conversations[$pseudo_autre];
			for($i=1; $i<count($conversation); $i++) {
				$msg = $conversation[$i]['content'];
				$cssClass = ($conversation[$i]['id_dest'] == $conversation[0]) ? 'meAuthor' : '';
				?>
				<div class="row"><div class="panel panel-mp-msg <?php echo $cssClass; ?>"><?php echo $msg; ?></div></div>
				<?php
			}
			?>
			<div class="messagingOptions">
				<div class="row">
					<a class="messagingButton" href="<?php echo base_url("/messaging/"); ?>"><div id="send_button">Retour</div></a>
					<a class="messagingButton" href="<?php echo base_url("/messaging/write/".$id_autre); ?>"><div id="send_button">Répondre</div></a>
					<a class="messagingButton" href="<?php echo base_url("/messaging/delete/".$id_autre); ?>"><div id="send_button">Supprimer</div></a>
				</div>
			</div>
		<?php } else {
			?><h1>Aucune discussion</h1><?php
		}?>
    </div>
</div>