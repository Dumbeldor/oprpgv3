<h2>Inscription</h2>
<?php echo form_open(base_url('users/create')); ?>
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
    <label for="passconf" class="col-sm-2 control-label">Password de confirmation</label>
    <?php echo form_error('passconf'); ?>
    <div class="col-sm-10">  
      <input type="password" name="passconf" />
    </div>
  </div>
  <div class="form-group">
    <label for="email" class="col-sm-2 control-label">E-mail</label>
    <?php echo form_error('email'); ?>
    <div class="col-sm-10"> 
      <input type="input" name="email" value="<?php echo set_value('email'); ?>" />
    </div>
  </div>
  
  <br>
       <label for="sexe">Sexe</label>
       <select name="sexe" id="sexe" onChange="changementType()">
           <option value="man" onclick="changementType()" >Homme</option>
           <option value="woman">Femme</option>
       </select>
   
  <div id="man" style="display:block">
    test man
  </div>
  <div id="woman" style="display:none">
    test woman
  </div>

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" name="submit" class="btn btn-default" value="S'inscire !" />
    </div>
  </div>
<?php echo form_close(); ?>

<script type="text/javascript">
function changementType() { 
  var type = document.getElementById('sexe').value;
  document.getElementById(type).style.display = "block";
  if (type == "man") {
    document.getElementById("woman").style.display = "none";
  } else {
    document.getElementById("man").style.display = "none";
  }
  
}
</script>
