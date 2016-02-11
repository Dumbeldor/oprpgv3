<div class="row pageNormale">
    <h2><?= $title?></h2><br><br>
    Vous êtes dans la boutique des objets, trouvez votre bonheur !<br>
    Vous voulez peut être vendre ? <a href="<?= base_url('game/shop/sell')?>">Cliquez ici.</a><br>
    <a href="<?= base_url('game/shop/')?>">Retour</a> <br><br>

    <?php
    foreach($objects as $object) {
        echo $object['name'].'<br>';
        echo $object['description'].'<br>';
        echo $object['price'].' berrys<br>';
        if($object['type'] == 3) {
            echo 'Vie : '.$object['addLife'];
            echo ' Energie : '.$object['addEnergy'];
            echo '<br>';
        }
        echo 'Rareté : '.$object['rarity'];
        echo '<br>';
        echo '<a href="'.base_url('game/shop/buy/'.$object['id']).'">Acheter</a><br>';
        echo '--------------------------------------------------------------------------------<br><br>';
    }
    ?>
    <a href="<?= base_url('game/shop/')?>">Retour</a>
</div>