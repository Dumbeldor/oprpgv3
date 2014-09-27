<!DOCTYPE html>
<html lang="fr">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>OPrpg - News</title>
	<meta name="description" content="News du site OnePiece-Rpg" />
	<meta name="author" content="OPrpg" />
	<link rel="stylesheet" type="text/css" href="<?php echo css_url('style'); ?>">
	<script type="text/javascript" src="<?php echo js_url('script'); ?>"></script>
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

			<!-- Information Pop-up -->
			<div class="information [color]" id="info"></div>

			<!-- #### PREVIEW ################################################# -->

			<!-- Horizontal line -->
			<div class="content-row">

				<h2>News</h2>

				<div class="span2 align-left">
					<h3>News from hell !</h3>
					<p>
						<ul>
							<li>News1</li>
							<li>News2</li>
							<li>News3</li>
						</ul>
						<a href="#">Lire plus</a>
					</p>
				</div> <!--/twoblocs1 -->
				<div class="span2 align-right">
					<h3>News from Sky !</h3>
					<p>
						<ul>
							<li>News1</li>
							<li>News2</li>
							<li>News3</li>
						</ul>
						<a href="#">Lire plus</a>
					</p>
				</div> <!--/twoblocks2 -->

			</div><!-- /content-row -->

			<!-- #### READ ################################################# -->

			<!-- Horizontal line -->
			<div class="content-row">

				<h2>Read News</h2>

				<div class="span1 align-justify">
					<h3>News from hell ! <small>2014-08-18 by <div class="[color]"><?php echo $cpt_pseudo.'('.$cpt_email.')'; ?></div> at 20:00:54</small></h3>
					<div class="group-socialnetwork">F - T - G+ - Other</div>
					<p>Apud has gentes, quarum exordiens initium ab Assyriis ad Nili cataractas porrigitur et confinia Blemmyarum, omnes pari sorte sunt bellatores seminudi coloratis sagulis pube tenus amicti, equorum adiumento pernicium graciliumque camelorum per diversa se raptantes, in tranquillis vel turbidis rebus: nec eorum quisquam aliquando stivam adprehendit vel arborem colit aut arva subigendo quaeritat victum, sed errant semper per spatia longe lateque distenta sine lare sine sedibus fixis aut legibus: nec idem perferunt diutius caelum aut tractus unius soli illis umquam placet.</p>
				</div> <!-- /oneblock -->

				<!-- #### COMMENT ################################################# -->
				<div class="span1">

					<form>
						<p>Commenter cette News :</p>
						<p><textarea rows="4" cols="50" placeholder="Votre avis nous intéresse"></textarea></p>
						<p><small>Veuillez a respecter les CGU.</small></p>
						<p><input type="submit" value="Valider" class="button [size] [color]" /></p>
					</form>

					<div class="group-comment">

						<div class="comment">
							<p>Pseudo - Niveau - Date - Heure</p>
							<p>Nemo quaeso miretur, si post exsudatos labores itinerum longos congestosque adfatim commeatus fiducia vestri ductante barbaricos pagos adventans velut mutato repente consilio ad placidiora deverti.</p>
						</div>
						<div class="comment">
							<p>Pseudo - Niveau - Date - Heure</p>
							<p>Nemo quaeso miretur, si post exsudatos labores itinerum longos congestosque adfatim commeatus fiducia vestri ductante barbaricos pagos adventans velut mutato repente consilio ad placidiora deverti.</p>
						</div>
						<div class="comment">
							<p>Pseudo - Niveau - Date - Heure</p>
							<p>Nemo quaeso miretur, si post exsudatos labores itinerum longos congestosque adfatim commeatus fiducia vestri ductante barbaricos pagos adventans velut mutato repente consilio ad placidiora deverti.</p>
						</div>

					</div><!-- /group-comment -->

				</div><!-- /span1 -->

			</div><!-- /content-row -->

		</div><!-- /content -->

</body>

</html>