<?php if($connecte): ?>
<form id="form_tchat" method="POST" action="tchat/post"> 
    <textarea id="msg" name="message"></textarea>
    <input type="submit" value="Poster">  
  </form>  
<?php endif; ?>
<div id="tchat_container">
  <?php if(count($messages) == 0): ?>
    <em>Aucun message recent</em>
  <?php else: ?>
    <?php foreach($messages as $message): ?>
      <div class="tchat_message">  
        <strong><?php echo $message->pseudo; ?></strong> le <?php echo $message->date; ?></br>
        <?php echo $message->message ?></br>
      </div>
    <?php endforeach; ?>
  <?php endif; ?>
</div>