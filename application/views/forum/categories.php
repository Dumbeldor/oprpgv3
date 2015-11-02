<div class="row">
<div class="pagination-centered">
			<ul class="pagination">
				<?php echo $pagination; ?>
			</ul>
		</div>
  <a href="<?php echo base_url('forum');?>"><i>Les forums</i></a>-><a href="<?php echo base_url('forum/c/'.$aria['id']); ?>"><i><strong><?php echo $aria['name'];?></strong></i></a>
  <br /><br />
  <?php echo form_open('forum/create_topic'); ?>
  <input type="hidden" name="id_categorie" value="<?php echo $id_categorie; ?>">
  <input type="submit" value="Nouveau Topic" id="send_button">
	</form>
  <br />
  <br />
  <ul class="large-block-grid-2 small-block-grid-1">
  <?php if(!empty($topic)):
	foreach($topic as $topics):
	?>
	  <li>
		    <div class="panel">
			  <?php
  if($topics['type'] == 'post-it')
  echo "<strong>POST-IT</strong>";
  ?>
  <a href="<?php echo base_url('forum/t/'.$topics['id']); ?>"> <?php echo $topics['name'];?></a>
  <?php
	if($this->user->isAdmin() || $this->user->isModo() ||
  		($this->user->getAttribute('crewId') == $id_categorie && ($this->crew->isCapitaine() || $this->crew->isAdmin() || $this->crew->isModo()) )){
  	?></br><a href="<?php echo base_url('/forum/delete_topic/'.$topics['id']);?>">Supprimer topic</a><?php
  }
  ?>
	<br>
  <?php
	$page = floor($topics['countMsg'] / 15);
  if($page == 1 OR $page == 0) { ?>
  	<a href="<?php echo base_url('forum/t/'. $topics['id'].'#'.$topics['msgId']);?>">Dernier message</a></i>
  		<?php } else { ?>
  			<a href="<?php echo base_url('forum/t/'. $topics['id'].'/'.$page.'#'.$topics['msgId']);?>">Dernier message</a></i>
  				<?php } ?>
  
  				de
					<a href="<?php echo base_url('users/view/'.$topics['userId']);?>" class="<?= $topics['rank'] ?>"><?php echo $topics['pseudo'];?></a> le <?php echo date('d/m/Y à H\hi', $topics['date']);?></i>
			</div>
	  </li>
				<?php endforeach;
				?>
  </ul>
  <?php
  else: ?>
  Il n'y a pas encore de topic dans cette catégorie !<br />
  
	<?php endif;?>
  <?php if($connecte):
  echo form_open('forum/create_topic'); ?>
  <input type="hidden" name="id_categorie" value="<?php echo $id_categorie; ?>">
  <input type="submit" value="Nouveau Topic" id="send_button">
  </form>
  <?php endif; ?>
</div>
