<div class="row">

  <!-- ========== TITLE ========== -->
  <h1>Les news</h1>

  <!-- ========== CONTENT ADMIN ========== -->
  <?php
    // Test if you are an admin
    if ($connecte && $admin) {
      echo "<a href=\"".base_url('/news/add/')."\" class=\"button small\">";
      echo "Ajouter une news</a>";
    }
  ?>

  <!-- ========== PAGINATION ========== -->
  <div class="pagination-centered">
    <ul class="pagination">
      <?php echo $pagination; ?>
    </ul>
  </div>

  <!-- ========== NEWS CONTENT ========== -->
  <div class="row">
    <ul class="large-block-grid-2 small-block-grid-1">

    <?php
      // Loop all news content
      foreach($news as $new):

        // Init Container
        echo '<li>';
        echo '<div class="panel">';

        // Admin tools
        if ($admin) {
          // Edit
          echo '<a href="'.base_url('/news/edit/'.$new->id).'" ';
          echo 'class="button tiny success">';
          echo 'Edit';
          echo '</a>';
          // Delete
          echo '<a href="'.base_url('/news/delete/'.$new->id).'" ';
          echo 'class="button tiny alert">';
          echo 'Supprimer';
          echo '</a>';
        }

        // News Title
        echo '<h4>'.$new->title.'</h4>';

        // News Informations
        echo '<small><a href="'.$new->idUser.'" class="'.$new->rank.'">'.$new->pseudo.'</a>';
        echo ' le '.date('d/m/Y à H\hi', $new->date_time).'</small><br><br>';

        // News Content
        echo substr($new->message,0,200).'...<br><a href="'.base_url('news/comment/'.$new->id).'">Lire la suite</a>';

        // News Socials Comments
        echo '<div class="row">';
        echo '<div class="small-2 large-4 columns"><a href="';
        echo base_url('/news/comment/'.$new->id);
        echo '"><span class="flaticon-chat52"></span> ';
        if (empty($new->nbComments)) { echo '0'; } 
        else { echo $new->nbComments; }
        echo '</a></div>';

        // News Socials Facebook
        echo '<div class="row">';
        echo '<div class="small-2 large-4 columns"><a href="';
        echo '#'; // TODO
        echo '"><span class="flaticon-facebook51"></span> ';
        if (empty($new->nbFacebook)) { echo '0'; } 
        else { echo $new->nbFacebook; }
        echo '</a></div>';

        // News Socials Twitter
        echo '<div class="row">';
        echo '<div class="small-2 large-4 columns"><a href="';
        echo '#'; // TODO
        echo '"><span class="flaticon-twitter44"></span> ';
        if (empty($new->nbTwitter)) { echo '0'; } 
        else { echo $new->nbTwitter; }
        echo '</a></div>';

        // End Container
        echo '</div>';
        echo '</li>';

      endforeach;
    ?>

    </ul>
  </div>

  <!-- ========== PAGINATION ========== -->

  <div class="pagination-centered">
    <ul class="pagination">
      <?php echo $pagination; ?>
    </ul>
  </div>

</div> <!-- /<div class="row"> -->
     

