<div class="row pageNormale">
<h1>Équipage <?php echo htmlentities($crew['name']);?></h1>
<br>
Équipage créé le :  <?php echo date('d/m/Y à H\hi',$crew['dateCrew']);?><br>
<br>
Membres : <br>

<?php
if(!empty($users)):
foreach($users as $user){
    ?><a href="<?php echo base_url('users/view/'.$user['id']);?>" class="<?= $user['rank']?>"><?php echo $user['pseudo']; ?></a> <?php echo $user['grade'];?>
    <br> <br><?php
}
endif;
if($this->user->isAuthenticated() AND !$this->crew->inCrew() AND !$request){
    ?><a href="<?php echo base_url('crews/c/'.$crew['id']);?>">Faire une demande pour rejoindre l'équipage ?</a>
    <?php
}
else if(!empty($request) && $request) {
    ?>Votre demande est en attente de réponse... <?php
}
?>
</div>