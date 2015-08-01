<br />
<br />
Avatar :  <br /> <br />
Pseudo : <?php echo $users['pseudo']; ?> <br />
Lvl : <?php echo $users['lvl'];?> <br />
<a href="<?php echo base_url('/messaging/write/'.$users['pseudo']);?>">Envoyer un message</a><br />
Rang : <?php echo $users['rank']; ?> <br />
Équipage : <?php echo $users['crewName'];?><br />
Rang dans l'équipage : <?php echo $users['crewGrade'];?><br />