<div class="row pageNormale">
    <h2><?= $title?></h2><br><br>
    Vous êtes dans la boutique des armures, trouvez votre bonheur !<br><br>

    <?php
    foreach($armors as $armor) {
        echo $armor['name'].'<br>';
        echo $armor['description'].'<br>';
        echo $armor['price'].' berrys<br>';
        echo 'Attaque : '.$armor['attack'].' attaque magique : '.$armor['attackMag'].'<br>';
        echo 'Défense : '.$armor['defense'].' vitesse : '.$armor['speed'].'<br>';
        echo 'Rareté '.$armor['rarity'].'<br>';
        echo '<br>';
        echo '<a href="'.base_url('game/shop/buy/'.$armor['id']).'">Acheter</a><br>';
        echo '--------------------------------------------------------------------------------<br><br>';
    }
    ?>
    <a href="<?= base_url('game/shop/')?>">Retour</a>
</div>