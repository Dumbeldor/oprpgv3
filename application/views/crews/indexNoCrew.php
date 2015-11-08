<div class="row pageNormale">
	<h1>Équipage</h1>
	<br>
	2 choix s'offrent à vous, soit rejoindre un équipage : <br>
		<a href="<?php echo base_url('crews/liste') ?>">Liste des équipages pouvant vous prendre</a> <br>
		<?php
		echo form_open('crews/recherche');
		?>
			<br>
			Nom de l'équipage rechercher : <input type="input" id="crewName" name="crewName" value="<?php echo set_value('crewName'); ?>"></input> <br>
			<input type="submit" value="Rechercher">
		</form>
		<br> <br>
	Ou alors en créant votre propre équipage ! <br> <br>
	<?php
		echo form_open('crews/create');
	?>
			<br>
			Nom de votre Équipage : <input type="input" id="crewName" name="crewName" value="<?php echo set_value('crewName'); ?>"></input> <br>
			<input type="submit" value="Envoyer">
		</form>
</div>
