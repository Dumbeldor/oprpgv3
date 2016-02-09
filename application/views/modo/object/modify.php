<div class="row pageNormale">
    <h2><?= $title?></h2><br><br>
    <?php if(!empty($error))
        echo $error;
    echo validation_errors()."<br>";
    echo form_open_multipart(base_url('modo/object/modify/'.$object['id']));
    echo '<strong>Nom objet:</strong>'.form_input('name', $object['name']).'<br>';
    echo '<strong>Description :</strong>'.form_input('description', $object['description']).'<br>';
    echo '<strong>Prix :</strong>'.form_input(array('type'=>'number', 'value' => $object['price'], 'name' => 'price')).'<br>';
    echo '<strong>Attaque :</strong>'.form_input(array('type'=>'number', 'value' => $object['attack'], 'name' => 'attack')).'<br>';
    echo '<strong>Vitesse :</strong>'.form_input(array('type'=>'number', 'value' => $object['speed'], 'name' => 'speed')).'<br>';
    echo '<strong>Défense :</strong>'.form_input(array('type'=>'number', 'value' => $object['defense'], 'name' => 'defense')).'<br>';
    echo '<strong>Attaque magique :</strong>'.form_input(array('type'=>'number', 'value' => 1, 'name' => 'attackMag')).'<br>';
    echo '<strong>Ajout en vie (potion) :</strong>'.form_input(array('type'=>'number', 'value' => $object['addLife'], 'name' => 'addLife')).'<br>';
    echo '<strong>Ajout Haki (potion) :</strong>'.form_input(array('type'=>'number', 'value' => $object['addHaki'], 'name' => 'addHaki')).'<br>';
    echo '<strong>Rareté (Entre 1 et 7) :</strong>'.form_input(array('type'=>'number', 'value' => $object['rarity'], 'name' => 'rarity')).'<br>';
    echo '<strong>Image (.PNG):</strong><br> <input type="file" name="userfile" size="20" /><br>';

    echo '<strong>Id type objet:</strong>
            <select name="type">';
    foreach($types AS $type){
        if($type['id'] == $object['id_objects_types'])
            echo '<option value="'.$type['id'].'" selected>'.$type['name'].'</option>';
        else
            echo '<option value="'.$type['id'].'">'.$type['name'].'</option>';
    }
    echo '</select><br>';
    echo '<strong>Object accessible oui ou non</strong>
            <select name="is_block">
            <option value="0">Oui</option>
            <option value="1">Non</option>
        </select><br>';
    ?>
    <br>
    <input id="send_button" type="submit" name="submit" class="btn btn-default" value="Ajouter" />