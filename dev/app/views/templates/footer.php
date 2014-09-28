</div>
</div>
</div>
<!-- Fin du contenu -->

<!-- Placed at the end of the document so the pages load faster -->
<script src="<?php echo base_url('assets/js/jquery.min.js'); ?>"></script>
<script src="<?php echo base_url('assets/js/bootstrap.min.js'); ?>"></script>
<?php if(isset($scripts)): ?>  
  <?php foreach($scripts as $script): ?>
  <script type="text/javascript" src="<?php echo $script; ?>"></script>
  <?php endforeach; ?>
<?php endif; ?>
</body>
</html>
