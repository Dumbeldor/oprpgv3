<h1>Équipage <?php echo $crew['name'];?></h1>
<br>
Berry : <?php echo $crew['money'];?> <br>
Équipage créé le :  <?php echo date('d/m/Y à H\hi',$crew['dateCrew']);?><br>
<br>
Membres : <br>

<?php
if(!empty($users)):
foreach($users as $user){
    ?><a href="<?php echo base_url('users/view/'.$user['id']);?>"><?php echo $user['pseudo']; ?></a> <?php echo $user['grade'];?>
    <br> <br><?php
}
endif;
if($this->user->isAuthenticated()){
    ?><a href="<?php echo base_url('crews/c/'.$crew['id']);?>">Faire une demande pour rejoindre l'équipage ?</a>
    <?php
}