<h2>Modifier mot de passe</h2>
<?php if(isset($error)) echo $error; ?>
<?php echo form_open('account/setPassword'); ?> 
  <div class="form-group">
  <?php echo form_error('password'); ?>
    <label for="password" class="col-sm-2 control-label">Nouveau mot de passe</label>
    <div class="col-sm-10">  
      <input type="password" name="password" />
    </div>
  </div>
  <div class="form-group">
  <?php echo form_error('password2'); ?>
    <label for="password" class="col-sm-2 control-label">Confirmer nouveau mot de passe</label>
    <div class="col-sm-10">  
      <input type="password" name="password2" />
    </div>
  </div>
  <div class="form-group">
  <?php echo form_error('passwordConfirm'); ?>
    <label for="password" class="col-sm-2 control-label">Ancien mot de passe</label>
    <div class="col-sm-10">  
      <input type="password" name="passwordConfirm" />
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" name="submit" class="btn btn-default" value="Let's Go !" />
    </div>
  </div>
<?php echo form_close(); ?>