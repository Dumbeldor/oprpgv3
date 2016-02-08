<div class="row pageNormale">
    <h2><?= $title?></h2><br><br>
<?php
foreach($islands as $island){
    echo '<a href="'.base_url('modo/island/map/'.$island['id']).'">'.$island['name'].'</a> ';
    echo '<br>';
}