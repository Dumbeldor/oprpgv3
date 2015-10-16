<h1>Équipage <?php echo $crew['name'];?></h1>
<br>
Berry : <?php echo $crew['money'];?> <br>
Équipage créé le :  <?php echo date('d/m/Y à H\hi',$crew['dateCrew']);?><br>
<br>
Texte de l'équipage :<br> <?php echo nl2br(htmlspecialchars($crew['page']));?> <br>
-------------------------------------------------------------- <br>
Membres : <br>

<?php
if(!empty($users)):
foreach($users as $user){
    ?><a href="<?php echo base_url('users/view/'.$user['id']);?>"><?php echo $user['pseudo']; ?></a> <?php echo $user['grade'];?>
    <br> <br><?php
}
endif;

if($capitaine || $adminCrew || $modoCrew){
    ?>Modération équipage <br><a href="<?php echo base_url('crews/candidates');?>">Liste des candidatures pour rejoindre l'équipage</a><br>
    <a href="<?php echo base_url('crews/texte');?>">Modifier texte</a><br>
    <br>
    <?php
} if($capitaine || $adminCrew) {
    ?>Administration équipage : <br><a href="<?php echo base_url('crews/manageUser');?>">Gérer rang membres</a><br><br>
    <?php
} if($capitaine){
    ?>Capitaine équipage : <br><a href="<?php echo base_url('crews/ll');?>">Donner le lead</a><br><br>
    <?php
}
?>
<br>
<a href="<?php echo base_url('crews/leave');?>">Quitter équipage</a>
