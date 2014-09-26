<!DOCTYPE html>
<html lang="fr">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>OPrpg - Accueil</title>
	<meta name="description" content="Accueil du site OnePiece-Rpg" />
	<meta name="author" content="OPrpg" />
	<link rel="stylesheet" type="text/css" href="../../assets/css/style.css">
	<script type="text/javascript" src="../../assets/js/script.js"></script>
</head>

<body>

	<!-- #### BODY ######################################################## -->
	<div class="body">

		<!-- #### HEADER ################################################## -->
		<div class="header">

			<!-- Banniere / Logo du site -->
			<header>
				<img src="../../assets/img/banner/banner1.png">
				<h1>OnePiece-Rpg <small>Play with us</small></h1>
			</header>

			<!-- Barre d'acces rapide (connexion/deconnexion principallement) -->
			<nav>
				<ul>
					<li class="nav-option"><a href="#">Menu0</a></li>
					<li class="nav-option dropdown"><a href="#">Menu2</a>
						<ul>
							<li class="nav-option"><a href="#">Smenu2.1</a></li>
							<li class="nav-option"><a href="#">Smenu2.2</a></li>
							<li class="nav-option"><a href="#">Smenu2.3</a></li>
						</ul>
					</li>
				</ul>
			</nav>

		</div><!-- /header -->

		<!-- #### WESTBAR ################################################# -->
		<div class="westbar">

			<nav>
				<ul>
					<!-- Zone de l'avatar -->
					<li class="west-option">
						<ul>
							<li><a href="#"><img src="../../assets/img/perso/perso1.png" alt="image de perso1"></a></li>
							<li><a href="#">Your Nick Here</a></li>
						</ul>
					</li>

					<!-- Fixed content --> 
					<li class="west-option dropdown"><a href="#">Option2</a>
						<ul>
							<li class="west-option"><a href="#">Smenu1</a></li>
							<li class="west-option"><a href="#">Smenu2</a></li>
							<li class="west-option"><a href="#">Smenu3</a></li>
						</ul>
					</li>
					<li class="west-option"><a href="#">Option3</a></li>

					<hr>

					<!-- Modular content -->
					<li class="west-option"><a href="#">Option4</a></li>
					<li class="west-option"><a href="#">Option5</a></li>
				</ul>
			</nav>

		</div><!-- /westbar -->

		<!-- #### EASTBAR ################################################# -->
		<aside>
			<ul>
				<li class="notification">Vous avez 2 MP</li>
				<li class="notification">Vous avez 3 réponses aux sujets suivis</li>

				<hr>
				
				<li class="notification"><a href="#">Derniers chapitres</a></li>
				<li class="notification"><a href="#">Derniers Animes</a></li>
			</ul>
		</aside>

		<!-- #### CONTENT ################################################# -->
		<div class="content">
			
			<!-- Laisser juste le content pour la page de pre-accueil -->

			<!-- Information Pop-up -->
			<div class="information [color]"> <!-- [color] = blue/orange/red/green -->
				<p>&#187; <strong>Be Careful !</strong> Updates are on going.</p>
			</div>

			<!-- Horizontal line -->
			<div class="container-row">

				<h2>Welcome on this Page</h2>

				<!-- One block only ##################################################### -->

				<div class="span1 align-justify">
					<h3>News from hell ! <small>2014-08-18 by <div class="[color]">Admin</div> at 20:00:54</small></h3>
					<p>Apud has gentes, quarum exordiens initium ab Assyriis ad Nili cataractas porrigitur et confinia Blemmyarum, omnes pari sorte sunt bellatores seminudi coloratis sagulis pube tenus amicti, equorum adiumento pernicium graciliumque camelorum per diversa se raptantes, in tranquillis vel turbidis rebus: nec eorum quisquam aliquando stivam adprehendit vel arborem colit aut arva subigendo quaeritat victum, sed errant semper per spatia longe lateque distenta sine lare sine sedibus fixis aut legibus: nec idem perferunt diutius caelum aut tractus unius soli illis umquam placet.</p>
				</div> <!-- /oneblock -->

				<!-- Two blocks in line ################################################# -->

				<div class="span2 align-left">
					<div class="btn btn-[color] btn-[size] btn-active"></div> <!-- size : small/medium/large -->
					<p>Illud tamen clausos vehementer angebat quod captis navigiis, quae frumenta vehebant per flumen, Isauri quidem alimentorum copiis adfluebant, ipsi vero solitarum rerum cibos iam consumendo inediae propinquantis aerumnas exitialis horrebant.</p>
				</div> <!--/twoblocs1 -->
				<div class="span2 align-right">
					<div class="btn btn-[color] btn-[size] btn-disabled"></div>
					<p>Latius iam disseminata licentia onerosus bonis omnibus Caesar nullum post haec adhibens modum orientis latera cuncta vexabat nec honoratis parcens nec urbium primatibus nec plebeiis.</p>
				</div> <!--/twoblocks2 -->

				<!-- Tables ############################################################ -->

				<div class="span1">
					<h4>Tables</h4>
					<table class="table-[type]"> <!-- [type] = normal/stripped -->
						<thead>
							<tr>
								<th>Server</th>
								<th>Nickname</th>
								<th>Points</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>Max</td>
								<td>1000</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Enelos</td>
								<td>10</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Mawloc</td>
								<td>200</td>
							</tr>
							<tr class="[color]">
								<td>2</td>
								<td>Sumo</td>
								<td>400</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Pev</td>
								<td class="[color]">2</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Gekko</td>
								<td>500</td>
							</tr>
						</tbody>
					</table>
				</div> <!-- /span1 -->

				<!-- Forms ############################################################# -->

				<div class="span1">
					<h4>Forms</h4>
					<form role="form" id="form">

						<!-- input area -->
						<div class="form-group"></div>
							<label for="inputEmail">Email address</label>
							<input type="email" class="form-input" id="inputEmail" placeholder="Enter email">
						</div>
						<div class="form-group">
							<label for="inputPassword">Password</label>
							<input type="password" class="form-input" id="inputPassword" placeholder="Password">
						</div>
						<!-- input file -->
						<div class="form-group">
							<label for="inputFile">File input</label>
							<input type="file" id="inputFile">
							<p class="help-block">Example block-level info.</p>
						</div>

						<!-- input checkbox -->
						<div class="form-group">
							<label><input type="checkbox1" id="checkedbox1"> Check me out</label>
							<label><input type="checkbox2" id="checkedbox2" disabled> Or meee pliiz</label>
						</div>

						<!-- input radio -->
						<div class="form-group">
							<label><input type="radio" name="optionsRadio1" id="optionsRadio1" value="option1" checked> Tagada</label>
							<label><input type="radio" name="optionsRadio2" id="optionsRadio2" value="option2"> Dragibus</label>
						</div>

						<!-- input textarea -->
						<div class="form-group">
							<textarea class="form-control" rows="3"></textarea>
						</div>

						<!-- select area -->
						<div class="form-select">
							<select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
							</select>
						</div>

						<!-- send button -->
						<button type="submit" class="btn [color] [size]">Submit</button>
					</form>

				</div> <!-- /span1 -->

			</div><!-- /container-row -->

		</div><!-- /content -->

		<!-- #### FOOTER ################################################## -->
		<div class="footer">
			
		</div><!-- /header -->

	</div><!-- /body -->

</body>

</html>