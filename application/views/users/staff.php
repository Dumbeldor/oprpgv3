<div class="row">
  <h1>Staff</h1>
  <br>  
  <table class="table">  
    <thead>
      <tr>
        <th>Pseudo</th>
        <th>Rang</th>
      </tr>
    </thead>
    <tbody>  
      <?php foreach ($users as $user): ?>
        <tr>  
          <td><a href="<?php echo base_url('/users/view/'.$user['id']); ?>"><?php echo $user['pseudo'] ?></a></td>
          <td><?php echo $user['name'] ?></td>
        </tr>
      <?php endforeach ?>
    </tbody> 
  </table>
</div>