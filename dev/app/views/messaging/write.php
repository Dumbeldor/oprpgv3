<h2>Écrire message privé</h2>
<?php if(isset($error)) echo $error; ?>
<?php echo form_open(base_url('messaging/write')); ?> 
  <div class="form-group">
    <label for="pseudo" class="col-sm-2 control-label">Pseudo</label>
    <div class="col-sm-10"> 
      <input type="input" name="pseudo" value="<?php echo $receptor ?>"/>
    </div>
  </div>
  <div class="form-group">
  <textarea rows="20" name="content" cols="30"><?php echo set_value('content'); if(!empty($contents)){echo $contents;} ?></textarea>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" name="submit" class="btn btn-default" value="Let's Go !" />
    </div>
  </div>
  <script>
            CKEDITOR.replace( 'content' );
        </script>
<?php echo form_close(); ?>
