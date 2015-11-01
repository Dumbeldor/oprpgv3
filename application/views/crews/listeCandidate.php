<h1>Les candidatures pour rentrer dans votre équipage</h1><br>
<?php if(!isset($candidates)) {
    echo "Pas de candidature";
} else {
    foreach($candidates as $candidate){
    ?>De <a href="<?php echo base_url('users/view/'.$candidate['idUser']);?>" class="<?= $candidate['rank']?>"><?php echo $candidate['pseudo']; ?></a>
    <?php echo date('d/m/Y à H\hi',$candidate['dateCandi']);  ?> :
    <br>
    <h3>Titre : <?php echo $candidate['title'];?></h3><br>
    <i>Lettre de motivation :</i> <?php echo $candidate['texte'];?> <br><br>
    <strong><a href="<?php echo base_url('crews/a/'.$candidate['idUser']);?>">Accepter candidature</a> </strong> <br>
    <a href="<?php echo base_url('crews/r/'.$candidate['idUser']);?>">Refuser candidature</a>
    <br> <br><?php
}
}