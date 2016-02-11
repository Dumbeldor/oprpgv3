<div class="row pageNormale">
    <h2><?= $title?></h2><br><br>
    Vous êtes dans la boutique des armes, trouvez votre bonheur !<br>
    Vous voulez peut être vendre ? <a href="<?= base_url('game/shop/sell')?>">Cliquez ici.</a><br>
    <a href="<?= base_url('game/shop/')?>">Retour</a> <br><br>

    <?php
    foreach($weapons as $weapon) {
        echo $weapon['name'].'<br>';
        echo $weapon['description'].'<br>';
        echo $weapon['price'].' berrys<br>';
        echo 'Attaque : '.$weapon['attack'].' attaque magique : '.$weapon['attackMag'].'<br>';
        echo 'Défense : '.$weapon['defense'].' vitesse : '.$weapon['speed'].'<br>';
        echo 'Rareté '.$weapon['rarity'].'<br>';
        echo '<br>';
        echo '<a href="'.base_url('game/shop/buy/'.$weapon['id']).'">Acheter</a><br>';
        echo '--------------------------------------------------------------------------------<br><br>';
    }
    ?>
    <a href="<?= base_url('game/shop/')?>">Retour</a>
</div>