<div class="row pageNormale">
<a href="<?php echo base_url('forum');?>"><i>Les forums</i></a>-><a href="<?php echo base_url('forum/c/'.$aria['id']); ?>"><i><strong><?php echo $aria['name'];?></strong></i></a>
  <br>
  <br>

<?php 
	echo form_open('forum/send_topic')
?>
		<?php 
          if (!empty(form_error('topic_name'))) {
            echo '<small class="error">'.form_error('topic_name').'</small>';
          }
        ?>
		<label for="topic_name" class="col-sm-2 control-label">Titre du topic :</label>
		<input type="text" name="topic_name"><br>
		<?php 
          if (!empty(form_error('message'))) {
            echo '<small class="error">'.form_error('message').'</small>';
          }
        ?>
	    <label for="forum_message" class="col-sm-2 control-label">Message :</label>
		<textarea id="forum_message" name="message" ></textarea><br>
		<input type="hidden" name="id_categorie" value="<?php echo $id_categorie; ?>">
		<input type="submit" value="Envoyer">
	   <?php if($admin || $moderator || ($id_categorie == $this->user->getAttribute('crewId') && ($modoCrew || $adminCrew || $capitaineCrew))) { ?>
		<label for="topic_type" class="col-sm-2 control-label">Post-it</label>
       			<input type="checkbox" name="post-it" id="post-it" /> <label for="post-it">post-it</label><br />
	<?php } ?>
	
	<script>
            CKEDITOR.replace('forum_message');
        </script>
   
	</form>
</div>