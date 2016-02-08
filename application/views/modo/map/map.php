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
    <h2><?= $title ?></h2><br><br>

    <?php if(empty($id)) {
        $id = "";
    } ?>
    <a href="<?= base_url('modo/map/modify/'.$id) ?>">Modifier la map</a> (Ouvrir dans un autre onglet pour continuer à avoir
    la map sous l'oeil)<br><br>

    <div id="zoneMap" style="position: relative">
    <?php

    $width = 80; // Largeur de l'image des terrains qui permettra de décaler les images
    $curent_y = -5000;
    $var_carte = "";
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
        echo "<br>";

// <!-- POUR LE DEBUGGAGE AFFICHAGE DES x/y DANS LES CASES
  $var_carte .= "<br />".$carte['x']."/".$carte['y'];
//  FIN DEBUGGAGE -->

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


    /*
    $v = 10;
    $x=$maps[0]['x'];
    $y=$maps[0]['y'];

    foreach ($maps AS $m) {
        if ($x == $m['x'] AND $y == $m['y']) {
            if ($x < $v) {
                ?>
                <div class="case" style="float:left;"><i style="position:absolute;"><?= $x ?>:<?= $y; ?> <?= $m['x'] ?>
                    :<?= $m['y'] ?></i><img
                    src="<?= base_url('assets/img/maps/mini/' . $m['id'] . '.png'); ?>" alt="a"
                    title="x: <?= $x ?> y: <?= $y; ?>" height="100" width="100"></img>
                </div><?php

                $x++;
            } else if ($x == $v) {
                ?>
                <div class="case"><i style="position:absolute;"><?= $x ?>:<?= $y; ?> <?= $m['x'] ?>:<?= $m['y'] ?></i><img
                    src="<?= base_url('assets/img/maps/mini/' . $m['id'] . '.png'); ?>" height="100"
                    width="100"></img></div><?php

                $y++;
                $x = 1;
            }
        } else {
            for ($i = $y; $i < $y + $v; $i++) {
                for ($i2 = $x; $i2 < $x + $v; $i2++) {
                    ?>
                    <div class="case" style="float:left;"><i style="position:absolute;"><i style="position:absolute;">test</i><img
                            src="<?= base_url('assets/img/maps/mini/default.png'); ?>" alt="a"
                            title="x: <?= $x ?> y: <?= $y; ?>" height="100" width="100"></img>
                    </div><?php

                }

            }
        }
    }
    */


    ?>
</div>
