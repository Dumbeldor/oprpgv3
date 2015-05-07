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
        <td><a href="<?php echo site_url(array('users', 'view', $user['id'])); ?>"><?php echo $user['pseudo'] ?></a></td>
        <td><?php echo $user['id'] ?></td>
      </tr>
    <?php endforeach ?>
  </tbody> 
</table>