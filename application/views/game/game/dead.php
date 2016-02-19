<div class="row pageNormale">
    <h2><?= $title?></h2><br><br>
    Vous êtes mort... Attendez qu'un membre de votre groupe vous soigne.<br>
    <a href="<?= base_url('game/game/resurrected')?>">Ne pas attendre et ressusciter
        (<?=$this->character->getMaxLife()/5?> vie rendu et barre xp à 0</a>
</div>