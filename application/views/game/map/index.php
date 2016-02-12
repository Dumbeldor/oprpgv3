<style>
    .case{
        position:absolute;
        width: 80px;
        height: 100px;
        text-align: center;
        background-position: bottom;
        background-repeat: no-repeat;
        margin-left:0px;
        margin-top:0px;
    }
    div#carte {
        position:absolute;
        padding-bottom:40em;
    }
</style>

<div class="row pageNormale">
    <h2>Map</h2><br><br>
    <a id="test" href="javascript:void(0)">Gauche</a><br>
    <?php
    echo "Vous êtes actuellement en : <div id=\"coordonnee\">" . $uX . ":" . $uY . " Map " . $map['name'] . "</div><br>";
    ?>
    <div id="imageMap"><img src="<?= base_url('assets/img/maps/' . $map['id'] . '.png'); ?>" alt="aa" title="test"></img></div>
    <br><br>
    <div id="action">
    <?php if($map['type'] == 2) { //In island ?>
        <a href="<?= base_url('game/map/fight/') ?>">Combattre</a><br>
        <a href="<?= base_url('game/map/search/') ?>">Fouiller</a>
    <?php }
    else if($map['type'] == 1) { //In ocean ?>
        <a href="<?= base_url('game/map/fight/') ?>">Combattre</a><br>
        <a href="<?= base_url('game/map/search/') ?>">Pecher</a>
    <?php }
    else if($map['type'] == 3) { //In ocean and in case island?>
        <a href="<?= base_url('game/map/enterCity') ?>">Rentrer sur l'ile</a><br>
    <?php }
    else if($map['type'] == 4) { //PORT?>
        <a href="<?= base_url('game/map/leaveIsland')?>">Sortir de l'ile</a>
    <?php }
    else if($map['type'] == 5) { //Entrainement?>
        <a href="<?= base_url('game/training/')?>">Entrer dans la salle d'entrainement</a>
    <?php }
    else if($map['type'] == 6 || $map['type'] == 7 || $map['type'] == 8 || $map['type'] == 9) { //Shop ?>
        <a href="<?= base_url('game/shop/')?>">Entrer dans le magasin</a>
    <?php } else if($map['type'] == 10) { //HOPITAL  ?>
        <a href="<?= base_url('game/hospital/')?>">Rentrer dans l'hopital</a>
    <?php } else if($map['type'] == 11) { //Centre perfectionnement ?>
        <a href="<?= base_url('game/trainingCenter/')?>">Rentrer dans le centre</a>
    <?php } ?>
    </div>
    <div id="zoneMap" style="position: relative">
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <?php

    $width = 80; // Largeur de l'image des terrains qui permettra de décaler les images
    $curent_y = -5000;
    $var_carte = "";
    $x = 0;
    $y = 0;
    $uX = $this->character->getX();
    $uY = $this->character->getY();
    foreach ($maps AS $carte) {
        if ($curent_y != $carte['y']) { // Nouvelle ligne
            $x = 0;
            $y++;
            $curent_y = $carte['y'];
        }
        $x++;

// Calcul pour savoir si on décale ou pas les cases d'une ligne
        /*
        if (($y % 2) == 1) { // Pair
            $iX = ($x * 80) - 40;
        } else {
            $iX = ($x * 80) + ($width / 2) - 40;
        }
        */
        $iX = ($x * 80) + ($width / 2) - 40;
        $iY = ($y * 80) + ($width / 2) - 40;

        $var_carte .= '<div class="case" style="top:' . $iY . 'px;left:' . $iX . 'px;';
        $var_carte .= "background-image: url('". base_url('assets/img/maps/mini/' . $carte['id'] . '.png')."');\">";

// <!-- Affichage avatar et lien déplacement
        $diffX = abs($carte['x'] - $uX);
        $diffY = abs($carte['y'] - $uY);
        $yDiff = $carte['y'] - $uY;
        $xDiff = $carte['x'] - $uX;
        if($carte['x'] == $uX AND $carte['y'] == $uY)
            $var_carte .= "<br /><img src=\"".base_url('assets/img/maps/character/character.png')."\">";
        else if($diffX+$diffY <= $this->character->getMoveCase()) {
            $var_carte .= "<br /><a href=\"javascript:void(0)\">";
            if($yDiff == -1)
                $var_carte .= "<img id=\"flecheTop\" src=\"" . base_url('assets/img/maps/character/top.png') . "\">";
            else if($yDiff == 1)
                $var_carte .= "<img id=\"bottom\" src=\"" . base_url('assets/img/maps/character/bottom.png') . "\">";
            else if($xDiff == -1)
                $var_carte .= "<img id=\"left\" src=\"" . base_url('assets/img/maps/character/left.png') . "\">";
            else if($xDiff == 1)
                $var_carte .= "<img id=\"right\" src=\"" . base_url('assets/img/maps/character/right.png') . "\">";
            $var_carte .= "</a>";
        }

//  Fin -->

        if (isset($joueur[$carte['x']][$carte['y']])) {
            // la prescence d'un joueur est détecté sur cette case
            // Affichage des informations du joueur dans la case
        }

        $var_carte .= '</div>';

    } // fin While

    ?>

        <div id="map">
            <!– On génére la carte hexa –>
            <?php echo $var_carte;?>
        </div>
    </div>
    <?php

    ?>


    </div>

</div>
<div id="scriptMap">
<script>
    var uX = <?= $uX?>;
    var uY = <?= $uY?>;
    var urlImgMap = "<?= base_url('assets/img/maps/'); ?>";
    var urlGame = "<?= base_url('game/')?>";
    var moveCase = <?= $this->character->getMoveCase()?>;
</script>
<script
    src="<?php echo base_url('assets/js/map/move.js');?>">
</script>
    </div>