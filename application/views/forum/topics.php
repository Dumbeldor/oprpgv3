<div class="row">
		<div class="pagination-centered">
			<ul class="pagination">
				<?php echo $pagination; ?>
			</ul>
		</div>
		<br /> <br />
			<a href="<?php echo base_url('forum');?>"><i>Les forums</i></a>-><a href="<?php echo base_url('forum/c/'.$aria['categorieId']); ?>"><i><?php echo $aria['categorieName'];?></i></a>-><a href="<?php echo base_url('forum/t/'.$aria['topicId']); ?>"><strong><?php echo $aria['topicName'];?></strong></a><br /><br />
		<?php echo form_open('forum/answer');
		?>
				<input type="hidden" name="id_topic" value="<?php echo $id_topic; ?>">
				<input type="submit" value="Répondre" id="send_button">
			</form>
			<br />
			<br />
		
			<?php 
		foreach($messages as $message):
		?>
				<div class="columns small-12">
						<div class="row">
						<div id="<?php echo $message->id;?>">
								<div class="columns small-3">
										
										<img src="<?php echo base_url('assets/img/avatarsJoueurs/'.$message->userId.'.png');?>"></img><br>										
										<a href="<?php echo base_url('users/view/'.$message->userId);?>" class="<?= $message->ranks; ?>"><?php echo $message->pseudo; ?></a><br>
										<strong><i><?php echo $message->ranks;?></i></strong><br />
										<i><?php echo $message->messNumber; ?> messages</i>
								
								</div>
								<div class="columns small-9">
										<div class="panel" id="<?= $message->ranks;?>">												
												<i> le <?php echo date('d/m/Y à H\hi',$message->date); ?> | <?php
												if($message->userId == $this->user->getId() || $moderator || ($id_categorie == $this->user->getAttribute('crewId') && ($modoCrew || $adminCrew || $capitaineCrew))) {
													?><a href="<?php echo base_url('forum/delete_message/'.$message->id); ?>">Supprimer</a>
													|
													<a href="<?php echo base_url('forum/edit/'.$message->id); ?>">Éditer</a>
												<?php } ?>
													|
												<a href="<?php echo base_url('forum/quote/'.$id_topic.'/'.$message->id);?>">Citer</a>
												<br><br></i>
																
																	
												<?php echo $message->message; ?>
										</div>
								</div>
						</div>
				</div>							
		</div>
		
		<?php endforeach; ?>
		<?php if($connecte):
			echo form_open('forum/answer');
		?>
		<br /> <br />
				<input type="hidden" name="id_topic" value="<?php echo $id_topic; ?>">
				<input type="submit" value="Répondre" id="send_button">
			</form><br />
		<?php endif; ?>
		<div class="pagination-centered">
			<ul class="pagination">
				<?php echo $pagination; ?>
			</ul>
		</div>
</div>