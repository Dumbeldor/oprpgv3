				
				</div>
			</div>
			</div>
		<!-- Fin du contenu -->
	<footer class="row">
	    <div class="large-12 columns">
		

	    </div>
	</footer>

	 <script src="<?php echo base_url('assets/js/vendor/jquery.js');?>"></script>
	<script src="<?php echo base_url('assets/js/foundation/foundation.js');?>"></script>
	<script src="<?php echo base_url('assets/js/foundation/foundation.topbar.js');?>"></script>
	<script src="<?php echo base_url('assets/js/foundation/foundation.accordion.js');?>"></script>
	<!-- Other JS plugins can be included here -->
	

  <script>
    $(document).foundation();
	$(document).foundation('accordion', 'reflow');
  </script>





		<?php if(isset($scripts)): ?>  
			<?php foreach($scripts as $script): ?>
			<script type="text/javascript" src="<?php echo $script; ?>"></script>
			<?php endforeach; ?>
		<?php endif; ?>

	</body>

</html>
