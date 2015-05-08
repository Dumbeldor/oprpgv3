# OnePiece-RPG

### Description
Ce dossier contient toutes les sources de la troisième version du site www.onepiece-rpg.fr
L'équipe de développeur est constituée de : 
- Omar : Designer
- Mawloc : Développeur PHP
- Vince : Développeur PHP, JS
- Pev : Superviseur, PHP, JS

### Configuration du dossier

	OPrpg
	`- dev
		`- app 			: Repertoire de travail
		`- assets		: Bibliothèque et sources diverses
		`- docs			: Documentation du framework CodeIgniter
		`- sys			: Configuration du framework (pas touche)
	`- docs				: Documentation diverse liée à nos travaux
		`- database		: Sources de la base de données (modèles et scripts)

### Consignes de bonne entente
- Découper les tâches avec Pev pour une meilleure organisation
- Si travail à plusieurs sur une même tâche, se concerter pour éviter de rentrer en conflit sur les mêmes fichiers
- Une branche par grande fonctionnalité (tchat, forum, news etc.)
- En cas de doute sur des fonctionnalités se référer à Pev

### TODO : 
- Rappel : ratio de commentaire par page : 33% (1 ligne de commentaire pour 2 lignes de code)
- Commentaire sur une ligne : //
- Bloc de commentaire : /* */
- Bloc de commentaire avec Tags : /** */
- Utiliser des tags pour les commentaires (http://manual.phpdoc.org/HTMLSmartyConverter/PHP/phpDocumentor/tutorial_tags.pkg.html), le minimum demandé :
 - @author [votre nom]
 - @version [grosse maj].[ajout_fonction].[edition]
 - Exemple disponible : controller > forum
- controllers : forum -> send_message -> si les paramètres sont mal entrés l'enregistrement se fait quand même non ?
- Rependre les fichiers et ajouter des commentaires :)

### Quelques astuces et liens : 
Vous trouverez dans le dossiers docs quelques commandes utiles en système UNIX au besoin pour les débutants. 
Il y a également une VM de dev' disponible sur notre Drive si vous n'avez pas d'environnement spécialisé.

Contact Pev : pev@gmx.fr

