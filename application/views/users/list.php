<div class="row pageNormale">
<table class="table">
<thead>
<tr>
<th>Pseudo</th>
<th>Dernière activité (Approximation)</th>
</tr>
</thead>
<body>
<p>Il y a <?php echo count($list);?> joueurs connectés ! <br /> 
</p>

    <?php foreach ($list as $user): ?>
      <tr>  
        <td><a href="<?php echo base_url('/users/view/'.$user->id); ?>"><?php echo $user->pseudo; ?></a></td>
        <td><?php echo date('H\hi',$user->last_activity);?></td>
      </tr>
    <?php endforeach ?>
  </body> 
</table>
</div>