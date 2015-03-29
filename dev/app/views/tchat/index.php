<?php if($connecte):
	echo form_open('tchat/post');
?>
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
        <strong><?php echo $message->user_pseudo; ?></strong> le <?php echo $message->message_date; ?> | <a href="delete_message/<?php echo $message->message_id; ?>.php">Supprimer</a></br>
        <?php echo nl2br(htmlspecialchars($message->message)); ?></br>
      </div>
    <?php endforeach; ?>
  <?php endif; ?>
</div>