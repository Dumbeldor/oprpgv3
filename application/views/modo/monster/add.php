<div class="row pageNormale">
    <h2><?= $title?></h2><br><br>
    <?php if(!empty($error))
        echo $error;
    echo validation_errors()."<br>";
    echo form_open_multipart(base_url('modo/monster/add'));
    echo '<strong>Nom:</strong>'.form_input('name').'<br>';
    echo '<strong>Description :</strong>'.form_input('description').'<br>';
    echo '<strong>Vie :</strong>'.form_input(array('type'=>'number', 'value' => 1, 'name' => 'life')).'<br>';
    echo '<strong>lvl :</strong>'.form_input(array('type'=>'number', 'value' => 1, 'name' => 'lvl')).'<br>';
    echo '<strong>xp :</strong>'.form_input(array('type'=>'number', 'value' => 1, 'name' => 'xp')).'<br>';
    echo '<strong>Attaque :</strong>'.form_input(array('type'=>'number', 'value' => 1, 'name' => 'attack')).'<br>';
    echo '<strong>defense :</strong>'.form_input(array('type'=>'number', 'value' => 1, 'name' => 'defense')).'<br>';
    echo '<strong>Vitesse :</strong>'.form_input(array('type'=>'number', 'value' => 1, 'name' => 'speed')).'<br>';
    echo '<strong>Fuite :</strong>'.form_input(array('type'=>'number', 'value' => 1, 'name' => 'escape')).'<br>';
    echo '<strong>Image (.PNG):</strong><br> <input type="file" name="userfile" size="20" /><br>';

    echo "<strong>Spam du monstre:</strong> <br>";
    foreach($mapsTypes AS $type){
        echo $type['name']." ".form_checkbox(array('name' => 'maps[]', 'value' => $type['id']))."<br>";
    }
    echo "<br>";

    echo "<strong>loot spam quand mort:</strong><br>";
    foreach($objects as $object) {
        echo $object['name']." ".form_checkbox(array('name' => 'objects[]', 'value' => $object['id']))."<br>";
    }
    echo "<br>";

    echo "<strong>Technique du monstre:</strong><br>";
    foreach($techs as $tech) {
        echo $tech['name']." ".form_checkbox(array('name' => 'techs[]', 'value' => $tech['id']))."<br>";
    }
    ?>
    <br>
    <input id="send_button" type="submit" name="submit" class="btn btn-default" value="Ajouter" />
</div>