<div class="row pageNormale">
    <h2><?= $title?></h2><br><br>
    <?php if(!empty($error)) { echo "Vous n'avez pas assez d'argent...<br>"; }?>
    <strong>ATTENTION : vous êtes sur le point de reset vos stats et donc payer : <?= $this->character->getStat()*5?> berrys</strong><br>
    Si vous reinitialiser vos stats vous aurez <?= $this->character->getStat()?> points à dépenser.<br>
    <br><br>
    Êtes vous sur ?<br>
    <a href="<?= base_url('game/training/reset')?>">Oui</a><br><br>
    <a href="<?= base_url('game/training/')?>">Non</a>
</div>