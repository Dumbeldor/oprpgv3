				</div>
			</div>
		<!-- Fin du contenu -->
	<footer class="row">
	    <div class="large-12 columns">
		<h3 class="text-center">Footer</h3>
		<p>
<?php
if(isset($audata))
{ ?>
			Debug:<br/>
<?php
foreach($audata as $key => $value)
{ 
	if(!is_array($value))
	{
		echo '['.$key.'] :: ['.$value.']</br>';
	}else{
		echo 'Array('.$key.')</br>{</br>';
		foreach($value as $key2 => $value2)
		{
			echo '-- ['.$key2.'] :: ['.$value2.']<br/>';
		}
		echo '}</br>';
	}
}

}else{ ?>
			aucun debug configuré dans le controller.
		    <?php } ?>

		</p>

	    </div>
	</footer>

		<!-- Placed at the end of the document so the pages load faster -->
		<script src="<?php echo $url;?>js/vendor/jquery.js"></script>
  <script src="<?php echo $url;?>js/foundation.min.js"></script>
  <script>
    $(document).foundation();
  </script>




		<?php if(isset($scripts)): ?>  
			<?php foreach($scripts as $script): ?>
			<script type="text/javascript" src="<?php echo $script; ?>"></script>
			<?php endforeach; ?>
		<?php endif; ?>

	</body>

</html>
