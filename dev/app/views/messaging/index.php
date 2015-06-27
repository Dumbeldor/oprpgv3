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
<br />
<a href="<?php echo base_url("/messaging/"); ?>">Reçus</a> / 
<a href="<?php echo base_url("/messaging/sending"); ?>">Envois</a>
<br />
<br />
<a href="<?php echo base_url("/messaging/write"); ?>">Ecrire un message</a>
<p>
    Voici vos messages privés :</p>
 <?php echo form_open(base_url('messaging/delete')); ?>
<input type="submit" name="submit" class="btn btn-default" value="Supprimer" />
<br />
<br />

<?php foreach ($private_message as $message) {
	
	?><input type="checkbox" name="mess[]" value="<?php echo $message['id']; ?>"> nom 1<br>
        <?php  if($message['is_read'] == 0) {//If private message not read
            ?><strong>Message non lu</strong> <?php
          }
          ?>De : <?php echo $message['pseudo']; ?>
         <br />

          <?php 
    //Displays the beginning of the message and displays a link if the member wants to read the entire message
          echo $message['content']; ?> 
           <br />
          <a href="<?php echo base_url("/messaging/read/".$message['id']); ?>">Lire la suite</a>
          <br /> <br />
        <?php
      }
      echo form_close();
?>
