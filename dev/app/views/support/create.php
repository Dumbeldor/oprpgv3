<h2>Créer un ticket de support</h2>
<?php echo form_open(base_url('support/create')); ?>
  <div class="form-group">
    <label for="sujet" class="col-sm-2 control-label">Sujet</label>
    <?php echo form_error('sujet'); ?>
    <div class="col-sm-10"> 
      <input type="input" name="sujet" value="<?php echo set_value('sujet'); ?>"/>
    </div>
  </div>
  <div class="form-group">
    <label for="message" class="col-sm-2 control-label">Message</label>
    <?php echo form_error('message'); ?>
    <div class="col-sm-10">  
      <textarea type="password" name="message"></textarea>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" name="submit" class="btn btn-default" value="Envoyer" />
    </div>
  </div>
<?php echo form_close(); ?>