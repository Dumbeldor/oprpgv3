<div class="row pageNormale">
    <h2><?= $title?></h2><br><br>
    Ajoutez vos stats.<br>
    Il vous reste encore : <div id="stats"><?= $this->character->getStatRemaining()?></div> à dépenser.<br>
    <br>
    <div id="addStat">
    Vitality : <strong id="vitality"><?= $this->character->getVitality()?></strong>  <a id="add" href="<?= base_url('game/training/add/vitality')?>">+1</a><br>
    Force : <strong id="strength"><?= $this->character->getStrength()?></strong> <a id="add" href="<?= base_url('game/training/add/strength')?>">+1</a><br>
    Vitesse : <strong id="speed"><?= $this->character->getSpeed()?></strong> <a id="add" href="<?= base_url('game/training/add/speed')?>">+1</a><br>
    Endurance : <strong id="endurance"><?= $this->character->getEndurance()?></strong> <a id="add" href="<?= base_url('game/training/add/endurance')?>">+1</a> <br>
    Agilité : <strong id="agility"><?= $this->character->getAgility()?></strong> <a id="add" href="<?= base_url('game/training/add/agility')?>">+1</a><br>
    Intelligence : <strong id="intelligence"><?= $this->character->getIntelligence()?></strong> <a id="add" href="<?= base_url('game/training/add/intelligence')?>">+1</a> <br>
    Energie : <strong id="energy"><?= $this->character->getEnergy()?></strong> <a id="add" href="<?= base_url('game/training/add/energy')?>">+1</a><br>
    Résistance : <strong id="resistance"><?= $this->character->getResistance();?></strong> <a id="add" href="<?= base_url('game/training/add/resistance')?>">+1</a> <br>

    </div>
    <a href="<?= base_url('game/training')?>">Retour</a>
</div>