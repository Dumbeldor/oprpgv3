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
<div class="row">
<p>
    Lecture du message privé :</p>
<ul class="small-block-grid-1">
<?php foreach ($private_message as $message) {?>
    <li>
		<div class="panel">
          De : <?php echo $message['pseudo'];?>
         <br />

          <?php 
    //Displays the beginning of the message and displays a link if the member wants to read the entire message
          echo $message['content']; ?> 
           <br /><br />
          <a href="<?php echo base_url("/messaging/"); ?>">Retour</a>
          <?php if($message['catcher'] == $this->user->getId()) {?>
          <a href="<?php echo base_url("/messaging/write/".$message['id']); ?>">Répondre</a>
          <a href="<?php echo base_url("/messaging/delete/".$message['id']); ?>">Supprimer message</a>
          <?php }?>
    </li>
        </div>
        <?php
      }
?></div>