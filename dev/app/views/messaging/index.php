<p>
    Voici vos messages priv�s :</p>

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
