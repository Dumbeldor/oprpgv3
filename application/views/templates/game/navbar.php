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
              <li><a href="<?php echo base_url('/game/map'); ?>">Map</a></li>
              <li class="divider"></li>

                <li class="divider"></li>
                <li><a href="<?php echo base_url('/game/bag'); ?>">Sacs</a></li>
                <li class="divider"></li>

                <li><a href="<?php echo base_url('/crews') ?>">Équipage</a></li>
                <li class="divider"></li>
                <li><a href="<?php echo base_url('/game/account') ?>">Mon Compte
                  <?php if($amountMP > 0)
                  echo '('.$amountMP.')'; ?>
                </a></li>

                <li class="divider"></li>
                <li><a href="<?php echo base_url('/forum') ?>">Partie communauté</a></li>
                <li class="divider"></li>
				
				
                <li class="divider"></li>
                <li><a href="<?php echo base_url('/users/disconnect') ?>">Deconnexion</a></li>
                <li class="divider"></li>

            </ul> <!-- /<ul class="right"> -->

          </section> <!-- /<section class="top-bar-section"> -->

        </nav> <!-- /<nav class="top-bar bois" data-topbar> -->
      </div> <!-- /<div id="topbar"> -->

    <!-- ========== DISCONNECTED ========== -->

    <?php } else {?>

       <div id="topbar">
        <nav class="top-bar bois" data-topbar >

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
				<li><a href="<?= base_url('/forum')?>">Forum</a></li>
				<li><a href="<?php echo base_url('/users/create') ?>">Inscription</a></li>
                <li><a href="<?php echo base_url('/users/connect') ?>">Connexion</a></li>

            </ul>
          </section> <!-- /<section class="top-bar-section"> -->

        </nav> <!-- /<nav class="top-bar bois" data-topbar> -->
      </div> <!-- /<div id="topbar"> -->

    <?php }?>

  </header>

