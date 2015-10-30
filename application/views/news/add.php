<h2><?php echo $title; ?></h2>
<?php if($add)
        echo "News posté !"; ?>
<?php echo form_open('news/add'); ?>
  <div class="form-group">
    <label for="title" class="col-sm-2 control-label">Titre</label>
    <div class="col-sm-10"> 
      <input type="input" name="title" value="<?php echo set_value('title'); ?>"/>
    </div>
  </div>
  <div class="form-group">
    <label for="text" class="col-sm-2 control-label">Contenu</label>
    <div class="col-sm-10">  
      <textarea name="contents" value="<?php echo set_value('contents'); ?>"></textarea>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" name="submit" class="btn btn-default" value="Poster la news !" />
    </div>
  </div>
  <script>
            CKEDITOR.replace( 'contents' );
        </script>
<?php echo form_close(); ?>
