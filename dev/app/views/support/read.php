Lecture du sujet <strong><?php echo $messages[0]['sujet']; ?></strong>
<br />
<?php foreach($messages as $message):?>
	<?php echo htmlspecialchars($message['message']) . '<br \>'; ?>
<?php endforeach; ?>

<?php echo form_open(base_url('support/addMessage/' . $id)); ?>
  <div class="form-group">
	<label for="message" class="col-sm-2 control-label">Message</label>
    <?php echo form_error('message'); ?>
	<textarea name="message"></textarea>
	</div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" name="submit" class="btn btn-default" value="Envoyer" />
    </div>
  </div>
