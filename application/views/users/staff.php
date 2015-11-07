<div class="row pageNormale">

  <!-- ========== STAFF ========== -->
  <h1>Staff</h1>
  <p>Description du staff...</p>

  <!-- ========== LIST ========== -->
  <table class="table">  
    <thead>
      <tr>
        <th>Pseudo</th>
        <th>Rang</th>
      </tr>
    </thead>
    <tbody>

      <?php 
        // Loop staff
        foreach ($users as $user):
          echo '<tr>';
          echo '<td>';
          echo '<a href="'.base_url('/users/view/'.$user['id']).'" ';
          echo 'class="'.$user['name'].'">';
          echo $user['pseudo'].'</a></td>';
          echo '<td>'.$user['name'].'</td>';
          echo '</tr>';
        endforeach 
      ?>

    </tbody>
  </table>
</div>