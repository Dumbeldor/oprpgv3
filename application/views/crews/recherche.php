<div class="row pageNormale">
<?php if(!empty($listes))
{
    foreach($listes as $liste){
        ?><a href="<?php echo base_url('crews/view/'.$liste['id']);?>"><?php echo htmlentities($liste['name']); ?></a>
        <?php echo date('d/m/Y à H\hi',$liste['date']);  ?>
        <br> <br><?php
    }

}
else if($toSmall) {
    ?>Veuillez saisir au moins 3 caractères... Et pour plus de précision marquez le maximum de lettre ! <?php
}
else {
    ?>Équipe introuvable...<?php
}


	echo form_open('crews/recherche');
    ?>
        <br>
		Nom de l'équipage rechercher : <input type="input" id="crewName" name="crewName" value="<?php echo set_value('crewName'); ?>"></input> <br>
		<input type="submit" value="Rechercher">
	</form>
</div>