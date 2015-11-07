<div class="row pageNormale">

  <!-- ========== HEAD ========== -->

  <h2>Inscription</h2><br>
  <?php 
    if(isset($error)) {
      echo "<br><br><strong>".$error."</strong><br>";
    }
  ?>

  <!-- ========== FORM ========== -->

  <?php echo form_open(base_url('users/create')); ?>

    <!-- :::::::::: USER INFORMATIONS :::::::::: -->

    <div class="row collapse">
      <div class="small-3 large-2 columns">
        <span class="prefix">Pseudo</span>
      </div>
      <div class="small-9 large-10 columns">
        <input type="text" placeholder="Votre pseudo" name="pseudo" 
          value="<?php echo set_value('pseudo'); ?>">
        <?php 
          if (!empty(form_error('pseudo'))) {
            echo '<small class="error">'.form_error('pseudo').'</small>';
          }
        ?>
      </div>
    </div>

    <div class="row collapse">
      <div class="small-3 large-2 columns">
        <span class="prefix">Password</span>
      </div>
      <div class="small-9 large-10 columns">
        <input type="password" name="password" placeholder="*****">
        <?php 
          if (!empty(form_error('password'))) {
            echo '<small class="error">'.form_error('password').'</small>';
          }
        ?>
      </div>
    </div>

    <div class="row collapse">
      <div class="small-3 large-2 columns">
        <span class="prefix">Confirmation</span>
      </div>
      <div class="small-9 large-10 columns">
        <input type="password" name="passconf" placeholder="*****">
        <?php 
          if (!empty(form_error('passconf'))) {
            echo '<small class="error">'.form_error('passconf').'</small>';
          }
        ?>
      </div>
    </div>

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

    <!-- :::::::::: CHARACTER INFORMATIONS :::::::::: -->

    <div class="row collapse">
      <div class="small-9 large-9 columns">
        <?php echo form_error('sexe'); ?>
        <ul class="button-group radius toggle" data-toggle="buttons-radio">
          <li>
            <input type="radio" id="sexeHomme" value="Homme" name="sexe" data-toggle="button" checked>
            <label class="button small secondary" for="sexeHomme">Homme</label>
          </li>
          <li>
            <input type="radio" id="sexeFemme" value="Femme" name="sexe" data-toggle="button">
            <label class="button small secondary" for="sexeFemme">Femme</label>
          </li>
        </ul>
      </div>
    </div> <br> <!-- /<div class="row collapse"> sexe-->

    <div class="row collapse">

      <div class="small-2 large-4 columns panel">
        <div id="show_avatar" class="columns small-3">
          <div id="currentAvatarPanel">
            <img class="currentAvatar" src="<?php echo base_url('assets/img/corps.png'); ?>">
          </div>
        </div>
      </div>

      <div class="small-2 large-4 columns panel">
        <div id="etapes_avatars" class="columns small-3">
          <div id="etapesPanel" >
            <a id="etape_corps">1- Corps</a><br>
            <a id="etape_cheveux">2- Cheveux</a><br>
            <a id="etape_yeux">3- Yeux</a><br>
            <a id="etape_bouche">4- Bouche</a>
          </div>
        </div>
      </div>

      <div class="small-2 large-4 columns panel">
        <div id="options_avatars" class="columns small-6">
          <div id="optionsPanel">
            <div id="options">
            </div>
          </div>
        </div>
      </div>

    </div> <!-- /<div class="row collapse"> character-->

    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <input type="submit" name="submit" class="btn btn-default" value="S'inscire !" />
      </div>
    </div>

    <input id="input_body" type="hidden" name="body" value="0">
    <input id="input_hair" type="hidden" name="hair" value="0">
    <input id="input_eyes" type="hidden" name="eyes" value="0">
    <input id="input_mouth" type="hidden" name="mouth" value="0">

  <?php echo form_close(); ?>

  <!-- ========== SCRIPT ========== -->
  <script>
    var avat_dir = "<?php echo base_url('assets/img/avatars'); ?>";
    var nb_cheveux_homme=<?php echo $nb_cheveux_homme; ?>;
    var nb_cheveux_femme=<?php echo $nb_cheveux_femme; ?>;
    var nb_corps_homme=<?php echo $nb_corps_homme; ?>;
    var nb_corps_femme=<?php echo $nb_corps_femme; ?>;
    var nb_yeux=<?php echo $nb_yeux; ?>;
    var nb_bouches=<?php echo $nb_bouches; ?>;
  </script>

</div>
