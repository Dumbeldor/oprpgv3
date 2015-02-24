# OPrpg - Developper
# =====================================

# Est-ce que ca marche ?
# Pev : Ok
# Maw-test : ok
# Maw : ok - Verify

# Salut les jeunes, ce petit fichier va vous permettre de vous
# repérer pour les débutants et vous servir d'aide mémoire pour
# les autres déjà expérimenté sur une distrib' Linux.
# Pour une meilleur lisibilité, ajouter la coloration syntaxique
# de python : View > Syntax > Python

# Informations :
# - Pas d'accents (sur rien du tout !)
# - Tous les mots de passe sont : oprpg
# - Pour copier coller dans un terminal : Ctrl+Maj+C ou Ctrl+Maj+V


# Commandes de bases Linux
# =====================================

# Sous Linux, la plupart des commandes se font sur un terminal.
# C'est l'équivaent du cmd.exe sous windows. Pour y accéder
# rapidement, appuyez simultanéent sur Ctrl+Alt+T

# Toutes les commandes qui suivent sont préfixées par un $
# Ce $ signifie simplement que c'est une commande de terminal à taper
# Ce qui est préfixé par un # est un commentaire

# Qui vous êtes :
$ whoami

# Dans quelle arborescence de dossier vous êtes
$ pwd

# Pour vous déplacer dans un dossier
# Pour aller plus vite, vous pouvez appuer syr la touche tabulation
# qui servira d'auto completion
$ cd ./MonSousDossier

# Pour remonter d'un dossier
$ cd ../

# Pour creer un dossier
$ mkdir MonNouveauDossier

# Voir le contenu d'un dossier
$ ls

# Voir tous les fichiers (meme cachés)
$ ls -all

# Pour creer un fichier
$ nano MonFichier.txt
# Vous entrez dans un editeur de texte
# Ctrl+X : pour quitter
# Puis Y pour valider l'enregistrement

# Pour editer un fichier :
$ nano MonFichier.txt

# Pour copier un fichier
$ cp ./MonDossierAvant/MonFichier.txt ./MonNewDossier/NouveauFichier.txt

# Pour supprimer un fichier
$ rm MonFichier.txt

# Pour supprimer un dossier et son contenu
$ rm -r ./MonDossier/


# Environnement Web
# =====================================

# Sur cette VM de dev, vous avez a disposition :
# - Apache2
# - PHP5
# - Mysql
# Le repertoire de dépot des fichiers pour le serveur web
# se situe dans : /var/www/html/oprpg/
# pour s'y rendre :
$ cd /var/www/oprpg


# Initialisation Git
# =====================================

# Durant la phase de développement vous serez amené à utiliser Git.
# Git est un gestionnaire de version de fichier permettant à plusieurs
# développeurs de travailler sur les mêmes fichiers sans écraser le travail
# des autres. Nous utiliseront les services de BitBucket pour notre dev.
# BitBucket fonctionne approximativement de la même manière que GitHub.

# Il vous faut impérativement faire les commandes suivantes UNE FOIS pour le projet

# Definir vorte adresse mail BitBucket
$ git config --global user.email "you@example.com"

# Definir votre pseudo/prenom
$ git config --global user.name "Your Name"

# Importer le dossier de taff
$ cd ~/Documents/
$ git clone https:// [YourPseudo] @bitbucket.org/PapyPev/oprpg.git

# Une fois que ces deux commandes sont faites vous pouvez travailler

# Commandes de bases Git
# =====================================

# Mettre à jour le dossier (A faire avant tout commit !)
$ git pull

# Accéder aux logs (voir qui a modifié quoi)
$ git log

# Publier son code sur le dépot

# 1- Modifier un fichier
# 2- Ajouter le fichier a envoyer
# Pour tout envoyer : $ git add .
$ git add ./MonDossier/MonFichier

# 3- Verifier ce qui est pret au depart
$ git status

# 4- Preparer l'envoi
$ git commit -m "Toujours mettre un commentaire"

# 5- Envoyer le tout sur le dépot - Enjoy !
$ git push -u origin master

# Pour verifier les differences entre fichiers
$ git diff


# Edit de Sumo
# =====================================

- Créer une nouvelle branche : git checkout -b nom_de_la_branche
- Naviguer entre les branches : git checkout branche
- Afficher toutes les branches : git branch

Pour envoyer les modifs sur le dépôt, il y a 5 étapes : 
- Créer une branche pour la fonctionnalité à partir de master donc :
1. git checkout master
2. git pull
3. git pull origin master (ces 2 pulls servent à télécharger toutes les modifications qui ont été faites sur le dépôt depuis le dernier pull donc ça permet de mettre notre branche master à jour)
4. git checkout -b fonctionnalité

- Effectuer les modifs dans le code
- Lorsque c'est fini, on veut envoyer les fichiers dans le dépôt donc on ajoute les fichiers à l'ensemble des fichiers qu'on veut commiter puis on commit.
5. git add fichier1.php fichier2.php fichier3.php
6. git commit -am "explication du commit"

- Finalement, on push le commit sur la branche "fonctionnalité" du dépot:
7. git push origin fonctionnalité
