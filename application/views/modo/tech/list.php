<div class="row pageNormale">
    <h2><?= $title?></h2><br><br>
<?php
foreach($techs as $tech){
    echo 'lvl '.$tech['lvl'].' <a href="'.base_url('modo/tech/modify/'.$tech['id']).'">'.$tech['name'].'</a> ';
    if($tech['is_block'])
        echo 'Technique bloquée';
    echo '<br>';
}