<div class="row pageNormale">
   <h2>Mes sac</h2><br><br>
    <?php
    foreach($bags AS $bag) {
      ?>
      <img src="<?= base_url('assets/img/bags/'.$bag['idType'].'.png');?>"></img>
      <a href="<?= base_url('game/bag/inventory/'.$bag['id']);?>"><?=$bag['name'];?></a>
      
      <?php
    }
    ?>
</div>