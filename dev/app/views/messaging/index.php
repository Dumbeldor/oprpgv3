<p>
    Voici vos messages privés :</p>

<?php foreach ($private_message as $message) {
          ?>De : <?php echo $message['pseudo']; ?>
         <br />

          <?php 
    //Displays the beginning of the message and displays a link if the member wants to read the entire message
          echo $message['content']; ?> 
           <br />
          <a href="<?php echo base_url("/messaging/read/".$message['id']); ?>">Modifier ses informations</a>
          <br /> <br />
        <?php
      }
