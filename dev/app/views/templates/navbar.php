<header>
<?php if ($connecte) {?>
  <div id="topbar">
    <nav class="top-bar" data-topbar >
      <ul class="title-area">
        <li class="name">
          <h1><a href="/">MineGame</a></h1>
        </li>
        <li class="toggle-topbar menu-icon"><a href="#">Menu</a></li>
      </ul>
      <section class="top-bar-section">
        <!-- Right Nav Section -->
        <ul class="right">
          <li class="divider"></li>
          <li class="active "><a href="/">Accueil</a></li>
		  <li class="divider"></li>
		  <li class="has-dropdown">
			<a href="#">Autre</a>
			<ul class="dropdown">
			  <li class="has-dropdown">
				<a href="#">Fans</a>
				<ul class="dropdown">
				  <li><a href="#">Fanarts</a></li>
				  <li><a href="#">Fanmovs</a></li>
				  <li><a href="#">Fanfics</a></li>
				</ul>
			  </li>
			  
			  <li class="has-dropdown">
				<a href="#">Le site</a>
				<ul class="dropdown">
				  <li><a href="<?php echo base_url('/users') ?>">Annuaire</a></li>
				  <li><a href="<?php echo base_url('/users/liste'); ?>">Connectés</a></li>
				  <li><a href="#">F.A.Q</a></li>
				</ul>
			  </li>
			  
			  <li class="has-dropdown">
				<a href="#">Communauté</a>
				<ul class="dropdown">
				  <li><a href="#">Hall of fame</a></li>
				  <li><a href="#">Livre d'or</a></li>
				  <li><a href="#">Le Staff</a></li>
				</ul>
			  </li>
			  
			</ul>
		  </li>
          <li class="divider"></li>
	  <li><a href="<?php echo base_url('/forum') ?>">Forum</a></li>
          <li class="divider"></li>
          <li><a href="<?php echo base_url('/tchat') ?>">T'chat</a></li>
          <li class="divider"></li>
          <?php if(!$connecte): ?>  
            <li><a href="<?php echo base_url('/users/create') ?>">Inscription</a></li>
            <li class="divider"></li>
            <li><a href="<?php echo base_url('/users/connect') ?>">Connexion</a></li>
            <li class="divider"></li>
          <?php else: ?>
		  <li><a href="<?php echo base_url('/crews/index') ?>">Équipage</a></li>
		  <li class="divider"></li>
            <li><a href="<?php echo base_url('/account') ?>">Mon Compte
            <?php if($amountMP > 0)
            echo '('.$amountMP.')'; ?></a></li>
            <li class="divider"></li>
            <li><a href="<?php echo base_url('/users/disconnect') ?>">Deconnexion</a></li>
            <li class="divider"></li>
          <?php endif; ?>
        </ul>
      </section>
    </nav>
  </div>
  <?php } else {?>
   <div id="topbar">
    <nav class="top-bar" data-topbar >
      <ul class="title-area">
        <li class="name">
          <h1><a href="<?php echo base_url('/users/create') ?>">Inscription</a></h1>
        </li>
        <li class="toggle-topbar menu-icon"><a href="#">Menu</a></li>
      </ul>
      <section class="top-bar-section">
        <!-- Right Nav Section -->
        <ul class="right">
           <li class="divider"></li>
          <li><a href="<?php echo base_url('/users/connect') ?>">Connection</a></li>
          <
        </ul>
      </section>
    </nav>
  </div>
  <?php }?>
</header>

