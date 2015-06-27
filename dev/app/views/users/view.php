<br />
<br />
Avatar :  <br /> <br />
Pseudo : <?php echo $users['pseudo']; ?> <br />
Lvl : <?php echo $users['lvl'];?> <br />
<a href=<?php echo base_url('/messaging/write/'.$users['pseudo']);?>>Envoyer un message</a><br />
Rang : <?php echo $users['rank']; ?> <br />
Nombre de news �crites : <?php echo $users['nb_news']; ?> <br />
Nombre de message post�s : <?php echo $users['nb_mess_forum']; ?> <br />