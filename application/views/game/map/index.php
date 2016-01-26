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
    <?php
    echo "Vous êtes actuellement en : " . $uX . ":" . $uY . " Map " . $map['name'] . "<br>";
    ?>
    <img src="<?= base_url('assets/img/maps/' . $map['id'] . '.png'); ?>" alt="aa" title="test"></img>
    <br><br>
    <a href="<?= base_url('map/fight/') ?>">Combattre</a><br>
    <a href="<?= base_url('map/search/') ?>">Fouiller</a>
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
        if($carte['x'] == $uX AND $carte['y'] == $uY)
            $var_carte .= '<br />Vous êtes ici';
        else if($diffX+$diffY <= $this->character->getMoveCase())
            //<?= base_url('map/deplace/' . $m['x'] . '/' . $m['y'])
            $var_carte .= "<br /><a href=\"".base_url('map/deplace/' . $carte['x'] . '/' . $carte['y'])."\">Se déplacer</a> ";
//  Fin -->

        if (isset($joueur[$carte['x']][$carte['y']])) {
            // la prescence d'un joueur est détecté sur cette case
            // Affichage des informations du joueur dans la case
        }

        $var_carte .= '</div>';

    } // fin While

    ?>

        <div id=“carte”>
            <!– On génére la carte hexa –>
            <?php echo $var_carte;?>
        </div>
    </div>
    <?php

    ?>


    </div>

</div>