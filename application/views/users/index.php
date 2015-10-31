<div class="row">
  <h1>Annuaire</h1>
  <br><br>
  Il y a actuellement <?= $nbUsers ?> joueurs inscris <br>
  <br>
  <?= $pagination ?>
  
  <table class="table">  
    <thead>
      <tr>
        <th>Pseudo</th>
        <th>Id</th>
      </tr>
    </thead>
    <tbody>  
      <?php foreach ($users as $user): ?>
        <tr>  
          <td><a href="<?php echo base_url('/users/view/'.$user['id']); ?>"><?php echo $user['pseudo'] ?></a></td>
          <td><?php echo $user['id'] ?></td>
        </tr>
      <?php endforeach ?>
    </tbody> 
  </table>
</div>