<div class="row pageNormale">
    <h2>Modération outils d'ajout de type d'objet</h2><br><br>
    Voici la liste des types d'objet déjà disponible:<br>
    <?php
    foreach($types as $type){
        echo $type['name'].'<br>';
    }

    echo '<br>';
    echo validation_errors()."<br>";
    echo 'Formulaire pour ajouter un type d\'objet (Préférez un nom en anglais...)<br>';
    echo form_open(base_url('modo/object/type'));
    echo '<strong>Nom du type de l\'objet:</strong>'.form_input('name').'<br>';
    echo '<input id="send_button" type="submit" name="submit" class="btn btn-default" value="Ajouter" />';