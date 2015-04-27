<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron">
  <div class="container">

    <h1>Les news</h1>
    <?php if($nbnews <= 0) { ?>
    	<p>Il y a aucune news</br>
    	<a href="news/add/">Ajouter une news</a></p>
    <?php } else { ?>
    <?php foreach($news as $new): ?>
    <h2><?php echo $new->new_titre; ?></h2>
    <p>Ecrit par <?php echo $new->user_pseudo; ?> le <?php echo $new->new_date; ?></p>
    </br>
    <p><?php echo $new->new_message; ?></p>
    <br />
    <br />
    <?php endforeach; ?>
    <?php } ?>
  </div>
</div>

