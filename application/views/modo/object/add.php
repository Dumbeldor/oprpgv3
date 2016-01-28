<div class="row pageNormale">
    <h2>Création d'un objet</h2><br><br>
    <?php if(!empty($error))
        echo $error;
    echo validation_errors()."<br>";
    echo form_open_multipart(base_url('modo/object/add'));
    echo '<strong>Nom objet:</strong>'.form_input('name').'<br>';
    echo '<strong>Description :</strong>'.form_input('description').'<br>';
    echo '<strong>Prix :</strong>'.form_input(array('type'=>'number', 'value' => 1, 'name' => 'price')).'<br>';
    echo '<strong>Attaque :</strong>'.form_input(array('type'=>'number', 'value' => 1, 'name' => 'attack')).'<br>';
    echo '<strong>Vitesse :</strong>'.form_input(array('type'=>'number', 'value' => 1, 'name' => 'speed')).'<br>';
    echo '<strong>Défense :</strong>'.form_input(array('type'=>'number', 'value' => 1, 'name' => 'defense')).'<br>';
    echo '<strong>Ajout en vie (potion) :</strong>'.form_input(array('type'=>'number', 'value' => 1, 'name' => 'addLife')).'<br>';
    echo '<strong>Ajout Haki (potion) :</strong>'.form_input(array('type'=>'number', 'value' => 1, 'name' => 'addHaki')).'<br>';
    echo '<strong>Rareté (Entre 1 et 7) :</strong>'.form_input(array('type'=>'number', 'value' => 1, 'name' => 'rarity')).'<br>';
    echo '<strong>Image (.PNG):</strong><br> <input type="file" name="userfile" size="20" /><br>';

    echo '<strong>Id type objet:</strong>
            <select name="type">';
    foreach($types AS $type){
        echo '<option value="'.$type['id'].'">'.$type['name'].'</option>';
    }
    echo '</select>';
    ?>
    <br>
    <input id="send_button" type="submit" name="submit" class="btn btn-default" value="Ajouter" />
</div>