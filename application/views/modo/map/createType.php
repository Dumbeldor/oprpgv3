<div class="row pageNormale">
    <h2>Création type de map</h2><br><br>
    <?php if(!empty($error))
        echo $error;
    echo validation_errors()."<br>";
    echo form_open_multipart(base_url('modo/map/createType'));
    echo '<strong>Nom du type de map:</strong>'.form_input('name').'<br>';
    echo '<strong>Lvl :</strong>'.form_input(array('type'=>'number', 'value' => 1, 'name' => 'lvl')).'<br>';
    echo '<strong>Image (.PNG):</strong><br> <input type="file" name="userfile" size="20" /><br>';
    echo '<strong>Image map title (.PNG):</strong><br> <input type="file" name="image2" size="20" /><br>';

    echo "<strong>Objets lootable (Fouille):</strong> <br>";
    foreach($objects AS $object){
        echo $object['name']." ".form_checkbox(array('name' => 'objects[]', 'value' => $object['id']))."<br>";
    }

    echo "<strong>Monstres associé :</strong> <br>";
    foreach($monsters AS $monster){
        echo $monster['name'].' lvl '.$monster['lvl'].' '.form_checkbox(array('name' => 'objects[]', 'value' => $monster['id']))."<br>";
    }

    echo "<strong>Type de map (Va modifier le comportement de la case)</strong><br>";
    echo '<select name="island">';
        foreach($types AS $type) {
            echo '<option value="'.$type['id'].'">'.$type['name'].'</option>';
        }
    echo '</select>';

    echo "<strong>Si c'est une ile choisir l'ile :</strong><br>";
    echo '<select name="idIsland">
             <option value="0">Laisser cette option si aucune ile</option>';
    foreach($islands AS $island){
        echo '<option value="'.$island['id'].'">'.$island['name'].'</option>';
    }
    ?>
    <br>
    <input id="send_button" type="submit" name="submit" class="btn btn-default" value="Ajouter" />
</div>