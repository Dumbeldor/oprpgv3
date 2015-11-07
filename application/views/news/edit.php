<div class="row pageNormale">
<h2><?php echo $title; ?></h2>
<?php echo form_open('news/edit/'.$id); ?>
  <div class="form-group">
    <label for="title" class="col-sm-2 control-label">Titre</label>
    <div class="col-sm-10"> 
      <input type="input" name="title" value="<?= $new->title; ?>"/>
    </div>
  </div>
  <div class="form-group">
    <label for="text" class="col-sm-2 control-label">Contenu</label>
    <div class="col-sm-10">  
      <textarea name="content" value="<?php echo set_value('content'); ?>"><?= $new->message; ?></textarea>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" name="submit" class="btn btn-default" value="Poster la news !" />
    </div>
  </div>
  <script>
            CKEDITOR.replace( 'content' );
        </script>
<?php echo form_close(); ?>
</div>