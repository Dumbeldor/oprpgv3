<div class="row pageNormale">
    <h2><?= $title?></h2><br><br>
    Ajoutez vos stats.<br>
    Il vous reste encore : <?= $this->character->getStatRemaining()?> à dépenser.<br>
    <br>
    Vitality : <?= $this->character->getVitality()?>  <a href="<?= base_url('game/training/add/vitality')?>">+1</a> <a href="<?= base_url('game/training/add/vitality/2')?>">+2</a> <a href="<?= base_url('game/training/add/vitality/5')?>">+5</a><br>
    Force : <?= $this->character->getStrength()?> <a href="<?= base_url('game/training/add/strength')?>">+1</a> <a href="<?= base_url('game/training/add/strength/2')?>">+2</a><br>
    Vitesse : <?= $this->character->getSpeed()?> <a href="<?= base_url('game/training/add/speed')?>">+1</a> <a href="<?= base_url('game/training/add/speed/2')?>">+2</a><br>
    Endurance : <?= $this->character->getEndurance()?> <a href="<?= base_url('game/training/add/endurance')?>">+1</a> <a href="<?= base_url('game/training/add/endurance/2')?>">+2</a><br>
    Agilité : <?= $this->character->getAgility()?> <a href="<?= base_url('game/training/add/agility')?>">+1</a> <a href="<?= base_url('game/training/add/agility/2')?>">+2</a><br>
    Intelligence : <?= $this->character->getIntelligence()?> <a href="<?= base_url('game/training/add/intelligence')?>">+1</a> <a href="<?= base_url('game/training/add/intelligence/2')?>">+2</a><br>
    Energie : <?= $this->character->getEnergy()?> <a href="<?= base_url('game/training/add/energy')?>">+1</a> <a href="<?= base_url('game/training/add/energy/2')?>">+2</a><br>
    Résistance : <?= $this->character->getResistance();?> <a href="<?= base_url('game/training/add/resistance')?>">+1</a> <a href="<?= base_url('game/training/add/resistance/2')?>">+2</a><br>

    <a href="<?= base_url('game/map/')?>">Retour</a>
</div>