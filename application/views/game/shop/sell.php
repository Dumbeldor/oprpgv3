<div class="row pageNormale">
    <h2><?= $title ?></h2><br>
    Vous avez <strong id="berry"><?= $this->character->getBerry()?> berrys</strong>.
    <br><br>
    <?php
    if(isset($sell))
        echo $sell.'<br><br>';
    foreach($items AS $item) {

        echo $item['name'].'<br><i>'.$item['description'].'</i><br>';
        echo $item['price']*0.80.' berrys<br>';

        if($item['type'] == 1 OR $item['type'] == 2){
            echo "Attaque : ".$item['attack'].'<br>';
            echo "Vitesse d'attaque : ".$item['speed'].'<br>';
            echo "Défense : ".$item['defense'].'<br>';
            echo "Attaque magique : ".$item['attackMag'].'<br>';
            echo "<a href=\"". base_url('game/shop/sell/'.$item['idBagObject'])."\">Vendre</a>";
        }
        else{
            echo "Vie redonnée : ".$item['addLife'].'<br>';
            echo "Energie redonnée : ".$item['addEnergy'].'<br>';
            ?><a href="<?= base_url('game/shop/sell/'.$item['idBagObject'])?>">Vendre</a>

            <?php
        }



        echo "<br>---------------<br>";
    }
    ?>
</div>