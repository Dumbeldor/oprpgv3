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
        <td><a href="users/<?php echo $user['user_id'] ?>"><?php echo $user['user_pseudo'] ?></a></td>
        <td><?php echo $user['user_id'] ?></td>
      </tr>
    <?php endforeach ?>
  </tbody> 
</table>