<?php
	echo form_open('crews/candidacy/'.$id);
?>
		<label for="title" class="col-sm-2 control-label">Titre de votre candidature :</label>
		<input type="text" name="title"><br>
	    <label for="content" class="col-sm-2 control-label">Message :</label>
		<textarea id="content" name="content" ></textarea><br>
		<input type="submit" value="Envoyer">

   
	</form>