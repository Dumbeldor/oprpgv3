<div class="row pageNormale">
    <h2><?= $title ?></h2><br><br>
    <?php if(isset($msg)) { echo $msg.'<br><br>';}?>
    <a href="<?= base_url('game/hospital/heal')?>">Vous soignez (10 berrys)</a>
    <br><br>
    <a href="<?= base_url('game/map/')?>">Retour</a>
</div>