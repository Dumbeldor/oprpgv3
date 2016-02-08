<?php
/**
 * User: vincent
 * Date: 27/01/16
 * Time: 12:21
 */
?>
<div class="row pageNormale">
    <h2>Map</h2>
    <br><br>
    <?php
    if(isset($error))
        echo "Résultat de la fouille : $error";
    else
        echo 'Vous venez de trouver : '.$object['name'];
?>
    <br>
    <a href="<?= base_url('game/map/')?>">Retour</a>
