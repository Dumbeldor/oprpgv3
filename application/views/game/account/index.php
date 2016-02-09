<div class="row pageNormale">
    <h2><?= $title?></h2><br><br>
    Pseudo : <?= $this->user->getPseudo() ?><br>
    lvl : <?= $this->character->getLvl()?> <br>
    Berry : <?= $this->character->getBerry()?> <br>
    Vie : <?= $this->character->getLife()?> / <?= $this->character->getMaxLife()?><br>
    Énergie : <?= $this->character->getEnergies()?> / <?= $this->character->getMaxEnergy()?><br>
    Position : <?php if($this->character->inIsland()){ echo "Sur une ile"; } else { echo "Sur l'océan"; } ?> <br>
    <br>
    <strong>Stats :</strong><br>
    Vitalité : <?= $this->character->getVitality()?><br>
    Force : <?= $this->character->getStrength()?><br>
    Vitesse : <?= $this->character->getSpeed()?><br>
    Endurance : <?= $this->character->getEndurance()?><br>
    Agilité : <?= $this->character->getAgility()?><br>
    Energie : <?= $this->character->getEnergy()?><br>
    Intelligence : <?= $this->character->getIntelligence()?><br>
    Résistance : <?= $this->character->getResistance()?><br>
    <br>
    <strong>Stuff</strong><br>
    <?= $this->weapon->getName();?> : <?= $this->weapon->getAttack()?> attaque <?= $this->weapon->getDefense()?> défense <?= $this->weapon->getSpeed()?> vitesse <?= $this->weapon->getAttackMag()?> attaque magique<br>
    <?= $this->armor->getName();?> : <?= $this->armor->getAttack()?> attaque <?= $this->armor->getDefense()?> défense <?= $this->armor->getSpeed()?>vitesse <?= $this->armor->getAttackMag()?> attaque magique<br>
    <br>
    <strong>Charatéristique global</strong><br>
    Attaque physique total : <?= $this->character->getAttack()?><br>
    Attaque magique total : <?= $this->character->getAttackMag()?><br>
    Défense total : <?= $this->character->getDefense()?><br>
</div>