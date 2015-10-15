<h1>Donner le lead</h1>
<br>
<strong>Attention ! Vous êtes sur le point de donner le lead de votre équipage à une personne !</strong><br><br>
<?php
if(!empty($users)):
foreach($users as $user){
    ?><a href="<?php echo base_url('users/view/'.$user['id']);?>"><?php echo $user['pseudo']; ?></a> <?php echo $user['grade'];?>
    <a href="<?php echo base_url('crews/ll/'.$user['id']);?>">Donner lead</a>
    <br> <br><?php
}
endif;