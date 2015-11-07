  <header>

  <!-- ========== CONNECTED ========== -->

    <?php if ($connecte) {?>

      <div id="topbar">
        <nav class="top-bar bois" data-topbar>

          <!-- :::::::::: TITLE :::::::::: -->

          <ul class="title-area">
            <li class="name">
              <h1><a href="/">MineGame</a></h1>
            </li>
            <li class="toggle-topbar menu-icon"><a href="#">Menu</a></li>
          </ul>

          <!-- :::::::::: NAVIGATION :::::::::: -->

          <section class="top-bar-section">

            <!-- Right Nav Section -->
            <ul class="right">

              <li class="divider"></li>
              <li><a href="<?php echo base_url('/home/index'); ?>">News</a></li>
              <li class="divider"></li>

              <li class="has-dropdown">
                <a href="#">Autre</a>

                <ul class="dropdown">

                  <li class="has-dropdown">
                    <a href="#">Fans</a>
                    <ul class="dropdown">
                      <li><a href="<?php echo base_url('/pages/coming_soon'); ?>">Fanarts</a></li>
                      <li><a href="<?php echo base_url('/pages/coming_soon'); ?>">Fanmovs</a></li>
                      <li><a href="<?php echo base_url('/pages/coming_soon'); ?>">Fanfics</a></li>
                    </ul>
                  </li>
              
                  <li class="has-dropdown">
                    <a href="#">Le site</a>
                    <ul class="dropdown">
                      <li><a href="<?php echo base_url('/users'); ?>">Annuaire</a></li>
                      <li><a href="<?php echo base_url('/users/liste'); ?>">Connectés</a></li>
                      <li><a href="<?= base_url('forum/t/21');?>">F.A.Q</a></li>
                    </ul>
                  </li>
              
                  <li class="has-dropdown">
                    <a href="#">Communauté</a>
                    <ul class="dropdown">
                      <li><a href="<?php echo base_url('/pages/coming_soon'); ?>">Classement</a></li>
                      <li><a href="<?php echo base_url('/pages/coming_soon'); ?>">Livre d'or</a></li>
                      <li><a href="<?= base_url('users/staff/')?>">Le Staff</a></li>
                    </ul>
                  </li>
              
                </ul> <!-- /<ul class="dropdown"> -->
              </li> <!-- /<li class="has-dropdown"> Autre -->

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
                  echo '('.$amountMP.')'; ?>
                </a></li>
                <li class="divider"></li>
                <li><a href="<?php echo base_url('/users/disconnect') ?>">Deconnexion</a></li>
                <li class="divider"></li>
              <?php endif; ?>

            </ul> <!-- /<ul class="right"> -->

          </section> <!-- /<section class="top-bar-section"> -->

        </nav> <!-- /<nav class="top-bar bois" data-topbar> -->
      </div> <!-- /<div id="topbar"> -->

    <!-- ========== DISCONNECTED ========== -->

    <?php } else {?>

       <div id="topbar">
        <nav class="top-bar" data-topbar >

          <!-- :::::::::: TITLE :::::::::: -->

          <ul class="title-area">
            <li class="name">
              <h1><a href="/">MineGame</a></h1>
            </li>
            <li class="toggle-topbar menu-icon"><a href="#">Menu</a></li>
          </ul>

          <!-- :::::::::: NAVIGATION :::::::::: -->

          <section class="top-bar-section">

            <!-- Right Nav Section -->
            <ul class="right">

                <li class="divider"></li>
                <li><a href="<?php echo base_url('/users/connect') ?>">Connexion</a></li>
                <li><a href="<?php echo base_url('/users/create') ?>">Inscription</a></li>

            </ul>
          </section> <!-- /<section class="top-bar-section"> -->

        </nav> <!-- /<nav class="top-bar bois" data-topbar> -->
      </div> <!-- /<div id="topbar"> -->

    <?php }?>

  </header>

