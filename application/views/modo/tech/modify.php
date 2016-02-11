<div class="row pageNormale">
    <h2><?= $title?></h2><br><br>
    <?php if(!empty($error))
        echo $error;
    echo validation_errors()."<br>";
    echo form_open_multipart(base_url('modo/tech/modify/'.$tech['id']));
    echo '<strong>Nom de la technique:</strong>'.form_input('name', $tech['name']).'<br>';
    echo '<strong>Description :</strong>'.form_input('descr', $tech['descr']).'<br>';
    echo '<strong>Prix :</strong>'.form_input(array('type'=>'number', 'value' => $tech['price'], 'name' => 'price')).'<br>';
    echo '<strong>lvl :</strong>'.form_input(array('type'=>'number', 'value' => $tech['lvl'], 'name' => 'lvl')).'<br>';
    echo '<strong>Energie consommée :</strong>'.form_input(array('type'=>'number', 'value' => $tech['energy'], 'name' => 'energy')).'<br>';
    echo '<strong>Ajout (Attaque ajouté ou soin) :</strong>'.form_input(array('type'=>'number', 'value' => $tech['adding'], 'name' => 'adding')).'<br>';


    echo '<strong>Type de la technique:</strong>
            <select name="type">';
    foreach($types AS $type){
        if($tech['id_tech_types'] == $type['id'])
            echo '<option value="'.$type['id'].'" selected>'.$type['name'].'</option>';
        else
            echo '<option value="'.$type['id'].'">'.$type['name'].'</option>';
    }
    echo '</select>';
    ?>
    <br>
    <input id="send_button" type="submit" name="submit" class="btn btn-default" value="Ajouter" />
</div>