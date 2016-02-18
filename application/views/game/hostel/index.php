<div class="row pageNormale">
    <h2><?= $title?></h2><br><br>
    Bienvenue <?= $this->user->getPseudo();?> dans ma petite auberge !<br>
    Que voulez vous ?<br>
    <strong id="msg"></strong><br>
    <a id="sleep" href="<?= base_url('game/hostel/sleep')?>">Me reposer dans une de vos chambre (5 berrys)</a><br>
    <a href="<?= base_url('game/hostel/eat')?>">Manger un bon steak ! (6 berrys)</a><br><br>
    <a href="<?= base_url('game/map/')?>">Retour</a>
</div>