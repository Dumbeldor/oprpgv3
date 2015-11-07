<div class="row pageNormale">

  <!-- ========== HEAD ========== -->
  
  <h2>Connexion</h2>
  <?php if(isset($error)) echo $error; ?>

  <!-- ========== FORM ========== -->

  <?php echo form_open(base_url('users/connect')); ?> 
  
    <div class="row collapse">
      <div class="small-3 large-2 columns">
        <span class="prefix">Pseudo</span>
      </div>
      <div class="small-9 large-10 columns">
        <input type="text" placeholder="Votre pseudo" name="pseudo" value="<?php echo set_value('pseudo'); ?>">
      </div>
    </div>

    <div class="row collapse">
      <div class="small-3 large-2 columns">
        <span class="prefix">Password</span>
      </div>
      <div class="small-9 large-10 columns">
        <input type="password" name="password" placeholder="*****">
      </div>
    </div>

    <div class="row collapse">
      <div class="col-sm-offset-2 col-sm-10">
        <input type="submit" name="submit" class="button small" value="Let's Go !" />
      </div>
    </div>

    <div class="row collapse">
      <div class="col-sm-offset-2 col-sm-10">
        <a href="<?= base_url('users/lostPass')?>">J'ai oublié mon mot de passe...</a>
      </div>
    </div>

  <?php echo form_close(); ?>

</div> <!-- /<div class="row pageNormale"> -->