<div class="row pageNormale">
   <h2>Mon sac</h2><br><br>
    <?php
    foreach($items AS $item) {
        
        echo $item['name'].'<br><i>'.$item['description'].'</i><br>';
        
        if($item['type'] == "weapon" OR $item['type'] == "armor"){
              echo "Attaque : ".$item['attack'].'<br>';
              echo "Vitesse d'attaque : ".$item['speed'].'<br>';
              echo "Défense : ".$item['defense'].'<br>';
              ?><a href="<?= base_url('object/equip/'.$item['id'])?>">S'équiper</a>
            <?php
        }
        else if($item['type'] == "potion"){
            echo "Vie redonnée : ".$item['addLife'].'<br>';
            ?><a href="<?= base_url('object/use/'.$item['id'])?>">Utiliser</a>
            
            <?php
        }
        
        
        
        echo "<br>---------------<br>";      
    }
    ?>
</div>