<div class="row pageNormale">
    <h2><?= $title?></h2><br><br>
    Bienvenue dans une boutique général <?= $this->user->getPseudo();?><br>
    Que voulez vous ?<br><br>
    <a href="<?= base_url('game/shop/weapon')?>">Des armes</a><br>
    <a href="<?= base_url('game/shop/armor')?>">Des armures</a><br>
    <a href="<?= base_url('game/shop/object')?>">Des objets</a><br><br>
    <a href="<?= base_url('game/bag/')?>">Retour</a>
</div>