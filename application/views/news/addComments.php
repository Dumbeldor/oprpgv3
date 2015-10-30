<h2><?php echo $title; ?></h2>

<?php echo form_open('news/addComments/'.$id); ?>
 
  <div class="form-group">
    <label for="text" class="col-sm-2 control-label">Contenu</label>
    <div class="col-sm-10">  
      <textarea name="contents" value="<?php echo set_value('contents'); ?>"></textarea>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" name="submit" class="btn btn-default" value="Poster le commentaire !" />
    </div>
  </div>
  <script>
            CKEDITOR.replace( 'contents' );
        </script>
<?php echo form_close(); ?>
