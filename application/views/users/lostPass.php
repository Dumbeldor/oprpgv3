<div class="row pageNormale">

  <!-- ========== HEAD ========== -->

  <h2>Mot de passe oublié</h2><br>
  Un lien pour redéfinir votre mot de passe vous sera envoyé. <br>
  Attendez quelques minutes et n'oubliez pas de regarder dans votre courier indésirable avant de reenvoyer un email.
  <?php 
    if(isset($error)) {
      echo "<br><br><strong>".$error."</strong><br>";
    }
  ?>

  <!-- ========== FORM ========== -->

  <?= form_open(base_url('users/lostPass')); ?>
   <div class="row collapse">
      <div class="small-3 large-2 columns">
        <span class="prefix">E-mail</span>
      </div>
      <div class="small-9 large-10 columns">
        <input type="email" placeholder="Votre email..." name="email" value="<?php echo set_value('email'); ?>">
        <?php 
          if (!empty(form_error('email'))) {
            echo '<small class="error">'.form_error('email').'</small>';
          }
        ?>
      </div>
    </div>
     <div class="row collapse">
      <div class="col-sm-offset-2 col-sm-10">
        <input type="submit" name="submit" class="button small" value="Let's Go !" />
      </div>
    </div>

   <?= form_close(); ?>

</div>