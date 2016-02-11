<div class="row pageNormale">
    <h2><?= $title?></h2><br><br>
    Bonjour <?= $this->user->getPseudo()?> bienvenue dans le camp d'entrainement.<br>
    Ici vous pouvez améliorer, seul votre corps est votre limite ! <br>
    <a href="<?= base_url('game/training/add')?>">Ajouter stats</a><br>
    <a href="<?= base_url('game/training/init')?>">Reinitialiser vos stats</a><br>
    <a href="<?= base_url('game/map/')?>">Retour</a>
</div>