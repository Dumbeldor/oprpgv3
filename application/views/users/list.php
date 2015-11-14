    <div class="row pageNormale">

      <!-- ========== DESCRIPTION ========== -->

      <h1>Connectés</h1>
      <p>Il y a en tout <?= $total?> utilisateurs en ligne : <?= count($list)?> enregistrés, <?= $listVisitor?> visiteurs.</p>

      <!-- ========== LIST ========== -->

      <table class="table">
        <thead>
          <tr>
            <th>Pseudo</th>
            <th>Dernière activité (Approximation)</th>
          </tr>
        </thead>

        <tbody>
        
          <?php 
            // Loop list all users connected
            foreach ($list as $user):
              echo '<tr>';
              echo '<td>';
              echo '<a href="'.base_url('/users/view/'.$user->id).'" ';
              echo 'class="'.$user->name.'">'.$user->pseudo.'</a></td>';
              echo '<td>'.date('H\hi',$user->timestamp).'</td>';
              echo '</tr>';
            endforeach 
          ?>
            
        </tbody> 
      </table>

    </div> <!-- /<div class="row pageNormale"> -->
