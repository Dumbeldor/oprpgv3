<div class="row pageNormale">
    <h2>Listes des objets</h2><br><br>
    <?php
    foreach($objects as $object){
        echo '<a href="'.base_url('modo/object/modify/'.$object['id']).'">'.$object['name'].'</a> ';
        if($object['is_block'])
            echo 'Objet bloqué';
        echo '<br>';
    }