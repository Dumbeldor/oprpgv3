<div class="row pageNormale">
    <h2>Map</h2><br><br>
    <?php
    echo "Vous êtes actuellement en : " . $uX . ":" . $uY . " Map " . $map['name'] . "<br>";
    ?>
    <img src="<?= base_url('assets/img/maps/' . $map['id'] . '.png'); ?>"></img>
    <br><br>
    <a href="<?= base_url('map/fight/') ?>">Combattre</a><br>
    <a href="<?= base_url('map/search/') ?>">Fouiller</a><br>


    <br>
    <div class="map">
        <?php
        //print_r($maps);
        $widht = 80;
        $x = 1;
        $y = 1;
        $v = $this->character->getVision();

        foreach ($maps AS $m) {
            if ($x < $v) {
                if ((($m['x'] == $uX+1 OR $m['x'] == $uX-1) AND $m['y'] == $uY) OR (($m['y'] == $uY+1 OR $m['y'] == $uY-1) AND $m['x'] == $uX)) {
                    ?> <a href="<?= base_url('map/deplace/'.$m['x'].'/'.$m['y'])?>">
                    <div class="case" style="float:left;"><img
                            src="<?= base_url('assets/img/maps/mini/' . $m['id'] . '.png'); ?>" height="100"
                            width="100"></img></div></a><?php
                } else {
                    ?>
                    <div class="case" style="float:left;"><img
                        src="<?= base_url('assets/img/maps/mini/' . $m['id'] . '.png'); ?>" height="100" width="100"></img>
                    </div><?php
                }
                $x++;
            } else if ($x == $v) {
                if ((($m['x'] == $uX+1 OR $m['x'] == $uX-1) AND $m['y'] == $uY) OR (($m['y'] == $uY+1 OR $m['y'] == $uY-1) AND $m['x'] == $uX)) {
                    ?>
                    <a href="<?= base_url('map/deplace/'.$m['x'].'/'.$m['y'])?>">
                    <div class="case"><img src="<?= base_url('assets/img/maps/mini/' . $m['id'] . '.png'); ?>" height="100"
                                           width="100"></img></div></a><?php
                } else {
                    ?>
                    <div class="case"><img src="<?= base_url('assets/img/maps/mini/' . $m['id'] . '.png'); ?>" height="100"
                                           width="100"></img></div><?php
                }
                $x = 1;
            }
        }

        ?>


    </div>

</div>