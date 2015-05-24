<p>
    Lecture du message privé :</p>

<?php foreach ($private_message as $message) {
          ?>De : <?php echo $message['pseudo']; ?>
         <br />

          <?php 
    //Displays the beginning of the message and displays a link if the member wants to read the entire message
          echo $message['content']; ?> 
           <br /><br />
          <a href="<?php echo base_url("/messaging/"); ?>">Retour</a>
          <a href="<?php echo base_url("/messaging/delete/".$message['id']); ?>">Supprimer message</a>
          <br /> <br />
        <?php
      }