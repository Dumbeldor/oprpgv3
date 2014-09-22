The OPrpg v3

##########################################################

# Configuration du framework CodeIgniter

# Arborescence de fichier :
	OPrpg
	`- dev
		`- app 		# Repertoire de taff
		`- config 	# Le fichier config.php sera a modifier pour la publication
		`...
	`- assets
		`... 		# depot des style, js et img pour client


##########################################################

# Lors du passage sur le serveur officiel (pas en local)
# Ne pas oublier de modifier :

# dev > app > config > database.php : connexion a la bdd

##########################################################

# Si index.php est obligatoire dans l'url
# et que l'URL rewritter ne marche pas :

#i. First, initiate it with the following command:

$ a2enmod rewrite

# ii. Edit the file /etc/apache2/sites-enabled/000-default
# change All "AllowOverride None" to "AllowOverride All".

# iii. Restart your server with the following command:

$ sudo /etc/init.d/apache2 restart