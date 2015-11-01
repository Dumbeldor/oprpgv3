<div class="row pageNormale">
<h2>Connexion</h2>
<?php if(isset($error)) echo $error; ?>
<?php echo form_open(base_url('users/connect')); ?> 
  <div class="form-group">
    <label for="pseudo" class="col-sm-2 control-label">Pseudo</label>
    <div class="col-sm-10"> 
      <input type="input" name="pseudo" value="<?php echo set_value('pseudo'); ?>"/>
    </div>
  </div>
  <div class="form-group">
    <label for="password" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">  
      <input type="password" name="password" />
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" name="submit" class="btn btn-default" value="Let's Go !" />
    </div>
  </div>
<?php echo form_close(); ?>
</div>