<div class="row">
    <br />
    <img src="<?php echo base_url('assets/img/avatarDefault.png');?>"></img><br>	<br />
    Pseudo : <?php echo $users['pseudo']; ?> <br />
    Lvl : <?php echo $users['lvl'];?> <br />
    <a href="<?php echo base_url('/messaging/write/'.$users['pseudo']);?>">Envoyer un message</a><br />
    Rang : <?php echo $users['rank']; ?> <br />
    Nombre message forum : <?php echo $users['messNumber']; ?> <br />
    Équipage : <a href="<?php echo base_url('crews/view/'.$users['crewId']);?>"><?php echo $users['crewName'];?></a><br />
    Rang dans l'équipage : <?php echo $users['crewGrade'];?><br />
</div>