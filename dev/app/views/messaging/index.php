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
<a href="<?php echo base_url("/messaging/write"); ?>">Ecrire un message</a>
<p>
    Voici vos messages privés :</p>

<?php foreach ($private_message as $message) {
          if($message['is_read'] == 0) {//If private message not read
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
