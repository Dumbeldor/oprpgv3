<div class="form-connexion-header">
  
</div>

<div class="form-connexion">  
  <div class="center_form_connexion">
  <?php echo form_open('users/connect'); ?> 
    <div class="form-connexion-haut">
      <div class="form-group form_pseudo">
        <input type="input" name="pseudo" value="<?php echo set_value('pseudo'); ?>" placeholder="Pseudo" />
      </div>
      <div class="form-group form_password">
        <input type="password" name="password" placeholder="Mot de passe" />
      </div>
      <?php if(isset($error)) echo $error; ?>
    </div>
    <div class="form-connexion-bas">
      <div class="form-group form_submit">
        <a class="connexion-reset-password" href="<?php echo site_url("users/reset-password"); ?>">Mot de passe oublié ?</a>
        <input type="submit" name="submit" class="btn btn-connexion" value="Connexion" />
      </div>
    </div>
  <?php echo form_close(); ?>
  </div>
  <div class="center_redirection_inscription">
    <span class="texte_redirection_inscription">Pas encore inscrit ? </span><a class="lien_redirection_inscription" href="<?php echo site_url("users/create"); ?>">S'inscrire</a>
  </div>
</div>
