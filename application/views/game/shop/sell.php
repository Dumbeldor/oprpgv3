<div class="row pageNormale">
    <h2><?= $title ?></h2><br>
    <strong id="msg"></strong><br>
    Vous avez <strong id="berry"><?= $this->character->getBerry()?></strong> berrys.
    <br><br>
    <div id="sell">
    <?php
    if(isset($sell))
        echo $sell.'<br><br>';
    foreach($items AS $item) {
        echo "<div id =\"object\">";
        echo $item['name'].'<br><i>'.$item['description'].'</i><br>';
        echo $item['price']*0.80.' berrys<br>';

        if($item['type'] == 1 OR $item['type'] == 2){
            echo "Attaque : ".$item['attack'].'<br>';
            echo "Vitesse d'attaque : ".$item['speed'].'<br>';
            echo "Défense : ".$item['defense'].'<br>';
            echo "Attaque magique : ".$item['attackMag'].'<br>';
        }
        else{
            echo "Vie redonnée : ".$item['addLife'].'<br>';
            echo "Energie redonnée : ".$item['addEnergy'].'<br>';
        }

        echo "<a id=\"sellObject\" href=\"". base_url('game/shop/sell/'.$item['idBagObject'])."\">Vendre</a>";



        echo "<br>---------------<br>";
        echo "</div>";
    }
    ?>
    </div>
</div>