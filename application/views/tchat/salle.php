<?php if($connecte): ?>
  <form id="form_tchat" method="POST">
	<textarea id="msg" name="message"></textarea>
	<input type="hidden" name="id_tchat" value="<?php echo $id_tchat; ?>">
    <input type="submit" value="Poster">  
  </form>  
<?php endif; ?>
<div id="tchat_container">
  <?php if(count($messages) == 0): ?>
    <em>Aucun message recent</em>
  <?php else: ?>
    <?php foreach($messages as $message): ?>
      <div class="tchat_message">  
        <strong><?php echo $message->pseudo; ?></strong> le <?php echo $message->date_time; ?> | <a href="delete_message/<?php echo $message->id; ?>.php">Supprimer</a></br>
        <?php echo nl2br(htmlspecialchars($message->message)); ?></br>
      </div>
    <?php endforeach; ?>
  <?php endif; ?>
</div>