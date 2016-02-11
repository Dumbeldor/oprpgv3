<div class="row pageNormale">
    <h2><?= $title?></h2><br><br>
    Ici vous pouvez apprendre des techniques !<br>
    Mais c'est pas si facile... Il vous faudra être en forme pour apprendre une nouvelle technique...<br>
    <?php if(isset($msg)) { echo '<strong>'.$msg.'</strong><br>';}?>
    <a href="<?= base_url('game/TrainingCenter/')?>">Retour</a> <br><br>

    <?php
    foreach($techs as $tech) {
        echo $tech['name'].'<br>';
        echo $tech['descr'].'<br>';
        echo 'A partir du lvl '.$tech['lvl'].'<br>';
        echo 'Energie demandé pour executé la technique '.$tech['energy'].'<br>';
        if($tech['type'] == 1)
            echo 'Attaque physique ajouté '.$tech['adding'].'<br>';
        else if($tech['type'] == 2)
            echo 'Attaque magique ajouté '.$tech['adding'].'<br>';
        else if($tech['type'] == 3)
            echo 'Soigne '.$tech['adding'].' points de vie <br>';

        if($this->character->getLvl() >= $tech['lvl'])
            echo '<a href="'.base_url('game/trainingCenter/learnTech/'.$tech['id']).'">Apprendre('.$tech['price'].' berrys et '.($this->character->getLvl()*3).' energie)</a><br>';

        echo '-------------------------------------------------------------------<br><br>';
    }
    ?>
    <a href="<?= base_url('game/TrainingCenter/')?>">Retour</a>
</div>