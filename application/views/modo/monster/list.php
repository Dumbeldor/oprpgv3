<div class="row pageNormale">
    <h2>Listes des monstres</h2><br><br>
<?php
foreach($monsters as $monster){
    echo 'lvl : '.$monster['lvl'].' <a href="'.base_url('modo/monster/modify/'.$monster['id']).'">'.$monster['name'].'</a> ';
    if($monster['is_block'])
        echo 'Monstre bloqué';
    echo '<br>';
}