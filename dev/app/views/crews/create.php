<h1>Création d'équipage</h1>
<br>
Bienvenue jeune noob, ici tu peux créer ton équipage ! C'est facile !

<?php
	if(isset($error))
		echo $error;
	echo form_open('crews/create');
?>
        <br>
		Nom de votre Équipage : <input type="input" id="crewName" name="crewName" value="<?php echo set_value('crewName'); ?>"></input> <br>
		<input type="submit" value="Envoyer">
	</form>
