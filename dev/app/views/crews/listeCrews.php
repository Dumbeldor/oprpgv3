<h1>Équipage disponible</h1>

<?php if(!empty($listes)):
echo $pagination;
foreach($listes as $liste){
    ?><a href="<?php echo base_url('crews/view/'.$liste['id']);?>"><?php echo $liste['name']; ?></a>
    <?php echo date('d/m/Y à H\hi',$liste['dateCrew']);  ?>
    <br> <br><?php
}
echo $pagination;
endif;
?>