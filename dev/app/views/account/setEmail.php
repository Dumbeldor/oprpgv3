<h2>Connexion</h2>
<?php if(isset($error)) echo $error; ?>
<?php echo form_open('account/setEmail'); ?> 
  <div class="form-group">
  <?php echo form_error('email'); ?>
    <label for="email" class="col-sm-2 control-label">Nouveau email</label>
    <div class="col-sm-10">  
      <input type="email" name="email" />
    </div>
  </div>
  <div class="form-group">
  <?php echo form_error('email2'); ?>
    <label for="email" class="col-sm-2 control-label">Confirmation nouveau email</label>
    <div class="col-sm-10">  
      <input type="email" name="email2" />
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" name="submit" class="btn btn-default" value="Let's Go !" />
    </div>
  </div>
<?php echo form_close(); ?>