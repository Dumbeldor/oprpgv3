<div class="row pageNormale">
<h2>Écrire message privé</h2>
<div class="backToMessagingIndex">
	<div class="row">
		<div class="columns small-1">
			<a class="messagingButton" href="<?php echo base_url("/messaging/"); ?>">
				<div id="send_button"><center>Retour</center></div>
			</a>
		</div>
	</div>
</div>
<?php if(isset($error)) echo $error; ?>
<?php echo form_open(base_url('messaging/write')); ?> 
  <div class="form-group">
    <label for="pseudo" class="col-sm-2 control-label" value="<?php echo $receptor; ?>">Pseudo</label>
    <div class="col-sm-10"> 
      <input type="input" name="pseudo" value="<?php echo $receptor ?>"/>
    </div>
  </div>
  <div class="form-group">
  <textarea rows="20" name="content" cols="30"></textarea>
  </div>
  <div id="messaging_send_button" class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" name="submit" id="send_button" value="Poster" />
    </div>
  </div>
  <script>
            CKEDITOR.replace( 'content' );
        </script>
<?php echo form_close(); ?>
</div>