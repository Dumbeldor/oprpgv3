<div class="row pageNormale">
    <br />
    <img src="<?php echo base_url('assets/img/avatarsJoueurs/'.$id.'.png');?>"></img><br>	<br />
    Pseudo : <a href="#" class="<?= $users['rank']?>"><?php echo $users['pseudo']; ?></a> <br />
    Faction : <?= $users['facName']; ?><br>
    Lvl : <?php echo $users['lvl'];?> <br />
    Rang : <?php echo $users['rank']; ?> <br />
    Nombre message forum : <?php echo $users['messNumber']; ?> <br />
    Équipage : <a href="<?php echo base_url('crews/view/'.$users['crewId']);?>"><?php echo $users['crewName'];?></a><br />
    Rang dans l'équipage : <?php echo $users['crewGrade'];?><br><br>
    Inscription : <?= date('d/m/Y à H\hi',$users['registration'])?><br>
    Dernière connexion : <?= date('d/m/Y à H\hi',$users['last_connection'])?><br>
    <br>
    <a href="<?php echo base_url('/messaging/write/'.$users['pseudo']);?>"><img src="<?= base_url('assets/img/icone/mp.jpg') ?>"></img></a><br />
</div>