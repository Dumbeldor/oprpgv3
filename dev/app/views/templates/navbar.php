  
  <!-- En cours de modification -->
  <div class="pure-menu pure-menu-open">
    <a class="pure-menu-heading">Yahoo! Sites</a>
    <ul>
      <li class="pure-menu-heading">MyConfig</li>
      <li><a href="#">Flickr</a></li>
      <li><a href="#">Messenger</a></li>
      <li><a href="#">Sports</a></li>
      <li><a href="#">Finance</a></li>
      <li class="pure-menu-heading">World</li>
      <li><a href="#">Games</a></li>
      <li><a href="#">News</a></li>
      <li><a href="#">OMG!</a></li>
    </ul>
  </div>


  <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container-fluid">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">OPRPG</a>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
          <li><a href="#">Forum</a></li>
          <li><a href="<?php echo base_url('index.php/tchat') ?>">T'chat</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <?php if(!$connecte): ?>  
            <li><a href="<?php echo base_url('index.php/users/create') ?>">Inscription</a></li>
            <li><a href="<?php echo base_url('index.php/users/connect') ?>">Connexion</a></li>
          <?php else: ?>
            <li><a href="<?php echo base_url('index.php/users/account') ?>">Mon Compte</a></li>
            <li><a href="<?php echo base_url('index.php/users/disconnect') ?>">Deconnexion</a></li>
          <?php endif; ?>
        </ul>
      </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
  </nav>
  <div id="wrap">
    <div class="container container-oprpg">