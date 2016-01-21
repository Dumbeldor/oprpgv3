<div class="row pageNormale">
   <h2>Map</h2><br><br>
    <?php
        echo "Vous êtes actuellement en : ".$x.":".$y." Map ". $map['name']."<br>";
        ?>
        <img src="<?= base_url('assets/img/maps/'.$map['id'].'.png');?>"></img>
        <br><br>
        <a href="<?= base_url('map/fight/')?>">Combattre</a><br>
        <a href="<?= base_url('map/search/')?>">Fouiller</a><br>
        
        <br>
        <div class="map">
        <?php
        //print_r($maps);
        $widht=80;
        $x = 1;
        $y = 1;
        $v = $this->character->getVision();
     
        foreach($maps AS $m){
         if($x < $v) {
         ?>
             <div class="case" style="float:left;"><img src="<?= base_url('assets/img/maps/'.$map['id'].'.png');?>" height="100" width="100"></img></div><?php
             $x++;
         }
         else if($x == $v) {
             ?><div class="case"><img src="<?= base_url('assets/img/maps/'.$map['id'].'.png');?>" height="100" width="100"></img></div><?php
             $x = 1;
         }
         else {
            
         }
        }
        
        ?>
        
        
        </div>
   
</div>