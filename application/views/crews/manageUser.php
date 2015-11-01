<div class="row pageNormale">
<h1>Page pour gérer vos joueurs</h1><br>
<?php foreach($users as $user) {
    echo $user['pseudo']; ?>
    <?php echo form_open(base_url('crews/changeRanks/'.$user['id'])); ?>
    <select name="userGrade">
        <?php foreach($grades as $grade) { ?>
        <option value="<?php echo $grade['id'];?>" <?php if($user['gradeId'] == $grade['id']){ ?>selected<?php } ?>><?php echo $grade['name'];?></option>
        <?php } ?>
    </select>
    <input type="submit" name="submit" value="Changer rang" />
    <?php echo form_close(); ?>
    <br>
    <a href="<?php echo base_url('crews/kick/'.$user['id'])?>">Virer</a>
    <br>
    ----------------------------
    <br>
    <?php
} ?>
</div>