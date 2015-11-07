
    <!-- ========== FOOTER ========== -->
    <footer class="row">
        <div class="large-12 columns">
        <hr>
        <p>
          &copy; Onepiece 1997 <a href="https://fr.wikipedia.org/wiki/Eiichir%C5%8D_Oda">Eiichiro Oda</a> - Commercialisé par <a href="http://www.glenat.com/">Glenat France</a>
        </p>

        </div>
    </footer>

    <!-- ========== END JAVASCRIPT ========== -->
    <script 
      src="<?php echo base_url('assets/js/vendor/jquery.js');?>"></script>
    <script 
      src="<?php echo base_url('assets/js/foundation/foundation.js');?>">
    </script>
    <script 
      src="<?php echo base_url('assets/js/foundation/foundation.topbar.js');?>">
    </script>
    <script 
      src="<?php echo base_url('assets/js/foundation/foundation.accordion.js');?>">
    </script>
    <script>
      $(document).foundation();
      $(document).foundation('accordion', 'reflow');
    </script>

    <!-- ========== OWN JAVASCRIPT ========== -->
    <?php if(isset($scripts)): ?>  
      <?php foreach($scripts as $script): ?>
      <script type="text/javascript" src="<?php echo $script; ?>"></script>
      <?php endforeach; ?>
    <?php endif; ?>

  </body>

</html>
