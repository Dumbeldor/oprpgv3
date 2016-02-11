<div class="row pageNormale">
    <h2><?= $title?></h2><br><br>
    <?php if(!empty($error))
        echo $error;
    echo validation_errors()."<br>";
    echo form_open_multipart(base_url('modo/tech/add'));
    echo '<strong>Nom de la technique:</strong>'.form_input('name').'<br>';
    echo '<strong>Description :</strong>'.form_input('descr').'<br>';
    echo '<strong>Prix :</strong>'.form_input(array('type'=>'number', 'value' => 1, 'name' => 'price')).'<br>';
    echo '<strong>lvl :</strong>'.form_input(array('type'=>'number', 'value' => 1, 'name' => 'lvl')).'<br>';
    echo '<strong>Energie consommée :</strong>'.form_input(array('type'=>'number', 'value' => 1, 'name' => 'energy')).'<br>';
    echo '<strong>Ajout (Attaque ajouté ou soin) :</strong>'.form_input(array('type'=>'number', 'value' => 1, 'name' => 'adding')).'<br>';


    echo '<strong>Type de la technique:</strong>
            <select name="type">';
    foreach($types AS $type){
        echo '<option value="'.$type['id'].'">'.$type['name'].'</option>';
    }
    echo '</select>';
    ?>
    <br>
    <input id="send_button" type="submit" name="submit" class="btn btn-default" value="Ajouter" />
</div>