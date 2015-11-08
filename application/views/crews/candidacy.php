<div class="row pageNormale">
<?php
	echo form_open('crews/candidacy/'.$id);
?>
		<label for="title" class="col-sm-2 control-label">Titre de votre candidature :</label>
		<?php if (!empty(form_error('title'))) { ?>
		 <small class="error"><?=form_error('title')?></small>;
		 <?php } ?>
		<input type="text" name="title"><br>
	    <label for="content" class="col-sm-2 control-label">Message :</label>
	    <?php if (!empty(form_error('content'))) { ?>
	    <small class="error"><?=form_error('content')?></small>;
	    <?php } ?>
		<textarea id="content" name="content" ></textarea><br>
		<input type="submit" value="Envoyer">

   
	</form>
</div>