<div class="row pageNormale">
    <h2>Ajouter Map</h2><br><br>
    <?php
    echo validation_errors()."<br>";
    if(empty($id))
        $id = '';
    echo form_open(base_url('modo/map/modify/'.$id));
    echo '<strong>X :</strong>'.form_input(array('type'=>'number', 'value' => 1, 'name' => 'x')).'<br>';
    echo '<strong>Y :</strong>'.form_input(array('type'=>'number', 'value' => 1, 'name' => 'y')).'<br>';
    echo '<strong>Id type map:</strong>
            <select name="type">';
              foreach($types AS $type){
                echo '<option value="'.$type['id'].'">'.$type['name'].'</option>';
              }
    echo '</select>';


?>
    <input id="send_button" type="submit" name="submit" class="btn btn-default" value="Ajouter" />
</div>