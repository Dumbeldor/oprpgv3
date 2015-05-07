<h2>Inscription</h2>
<?php echo form_open('users/create'); ?>
  <div class="form-group">
    <label for="pseudo" class="col-sm-2 control-label">Pseudo</label>
    <?php echo form_error('pseudo'); ?>
    <div class="col-sm-10"> 
      <input type="input" name="pseudo" value="<?php echo set_value('pseudo'); ?>"/>
    </div>
  </div>
  <div class="form-group">
    <label for="password" class="col-sm-2 control-label">Password</label>
    <?php echo form_error('password'); ?>
    <div class="col-sm-10">  
      <input type="password" name="password" />
    </div>
  </div>
  <div class="form-group">
    <label for="email" class="col-sm-2 control-label">E-mail</label>
    <?php echo form_error('email'); ?>
    <div class="col-sm-10"> 
      <input type="input" name="email" value="<?php echo set_value('email'); ?>" />
    </div>
  </div>
  <select name="perso">
    <?php foreach($persos as $perso): ?>
      <option value="<?php echo $perso['id']; ?>"><?php echo $perso['name']; ?></option>
    <?php endforeach; ?>
  </select>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" name="submit" class="btn btn-default" value="S'inscire !" />
    </div>
  </div>
<?php echo form_close(); ?>