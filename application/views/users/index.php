    <div class="row pageNormale">

      <!-- ========== ANNUAIRE ========== -->
      <h1>Annuaire</h1>

        <p>Il y a actuellement <b><?= $nbUsers ?></b> joueurs inscrits</p>

        <!-- ========== FILTERS ========== -->

        <div class="row collapse">
          <div class="small-3 large-2 columns">
            <span class="prefix">Chercher</span>
          </div>
          <div class="small-9 large-10 columns">
            <input type="text" placeholder="Un pseudo..." name="pseudo" >
          </div>
        </div>

        <!-- ========== PAGINATION ========== -->
        <?php 
          echo $pagination 
        ?>
        
        <!-- ========== LIST ========== -->
        <div class="row collapse">
          <table class="table">  
            <thead>
              <tr>
                <th>Pseudo</th>
                <th>Date d'inscription</th>
              </tr>
            </thead>
            <tbody>

              <?php
                // Loop list of users
                foreach ($users as $user):
                  echo '<tr>';
                  echo '<td>';
                  echo '<a href="'.base_url('/users/view/'.$user['id']).'" class="'.$user['rank'].'">';
                  echo $user['pseudo'].'</a>';
                  echo '</td>';
                  echo '<td>'. date('d/m/Y à H\hi',$user['registration']).'</td>';
                  echo '</tr>';
                endforeach 
              ?>

            </tbody> 
          </table>
        </div>

    </div> <!-- /<div class="row pageNormale"> -->
