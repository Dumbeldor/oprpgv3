<div class="row pageNormale">
    <h2><?= $title?></h2><br><br>
    Vous venez d'acheter  <?= $name?> pour <?= $price?> berrys il vous reste <?= $this->character->getBerry()?> berrys<br>
    <br>
    <a href="<?= base_url('game/shop/')?>">Retour</a>
</div>