<div class="row pageNormale">
<?php
	if(isset($error)) echo $error;
	echo form_open('crews/texte');
?>
	    <label for="content" class="col-sm-2 control-label">Message :</label>
		<textarea id="content" name="content" ><?php echo $contents; ?></textarea><br>
		<input type="submit" value="Envoyer">
		<script>
            CKEDITOR.replace( 'content' );
        </script>
   
	</form>
</div>