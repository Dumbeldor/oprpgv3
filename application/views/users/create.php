<div class="row pageNormale">
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
    <label>Sexe</label>
     <?php echo form_error('sexe'); ?>
    <input type="radio" name="sexe" value="Homme" id="sexeHomme"><label for="sexeHomme">Homme</label>
    <input type="radio" name="sexe" value="Femme" id="sexeFemme"><label for="sexeFemme">Femme</label>
   
  <div class="form-group">
	<div class="columns small-12">
		<div class="row">
			<div id="show_avatar" class="columns small-3">
				<div id="currentAvatarPanel" class="panel">
					<img class="currentAvatar" src="<?php echo base_url('assets/img/corps.png'); ?>">
				</div>
			</div>
			<div id="etapes_avatars" class="columns small-3">
				<div id="etapesPanel" class="panel">
					<a id="etape_corps">1- Corps</a><br>
					<a id="etape_cheveux">2- Cheveux</a><br>
					<a id="etape_yeux">3- Yeux</a><br>
					<a id="etape_bouche">4- Bouche</a>
				</div>
			</div>
			<div id="options_avatars" class="columns small-6">
				<div id="optionsPanel" class="panel">
					<div id="options">
					</div>
				</div>
			</div>
		</div>
	</div>
  </div>

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
