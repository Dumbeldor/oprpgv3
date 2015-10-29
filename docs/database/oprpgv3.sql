-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 13 Octobre 2015 à 22:26
-- Version du serveur :  5.6.26
-- Version de PHP :  5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `oprpgv3`
--

-- --------------------------------------------------------

--
-- Structure de la table `bags`
--

CREATE TABLE IF NOT EXISTS `bags` (
  `id` int(11) NOT NULL,
  `id_bags_types` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `bags_objects`
--

CREATE TABLE IF NOT EXISTS `bags_objects` (
  `id` int(11) NOT NULL,
  `id_objects` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `bags_types`
--

CREATE TABLE IF NOT EXISTS `bags_types` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `size` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cages`
--

CREATE TABLE IF NOT EXISTS `cages` (
  `id` int(11) NOT NULL,
  `id_cages_types` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cages_pets`
--

CREATE TABLE IF NOT EXISTS `cages_pets` (
  `id` int(11) NOT NULL,
  `id_pets` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cages_types`
--

CREATE TABLE IF NOT EXISTS `cages_types` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `file` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cages_users`
--

CREATE TABLE IF NOT EXISTS `cages_users` (
  `id` int(11) NOT NULL,
  `id_cages` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `chests`
--

CREATE TABLE IF NOT EXISTS `chests` (
  `id` int(11) NOT NULL,
  `id_chests_types` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `chests_objects`
--

CREATE TABLE IF NOT EXISTS `chests_objects` (
  `id` int(11) NOT NULL,
  `id_objects` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `chests_types`
--

CREATE TABLE IF NOT EXISTS `chests_types` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `size` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `coffres_comptes`
--

CREATE TABLE IF NOT EXISTS `coffres_comptes` (
  `id` int(11) NOT NULL,
  `id_chests` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `crews`
--

CREATE TABLE IF NOT EXISTS `crews` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `money` int(11) NOT NULL,
  `page` text,
  `file` varchar(255) NOT NULL,
  `date_time` int(12) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_crews_types` int(11) NOT NULL,
  `id_crews_banks` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `crews`
--

INSERT INTO `crews` (`id`, `name`, `money`, `page`, `file`, `date_time`, `is_block`, `id_crews_types`, `id_crews_banks`) VALUES
(2, 'test', 0, NULL, '', 0, 0, 1, 1),
(3, 'retest', 0, NULL, '', 0, 0, 1, 2),
(4, 'retestdfd', 0, NULL, '', 0, 0, 1, 3),
(5, 'fdfdfd', 0, NULL, '', 0, 0, 1, 4),
(6, 'Stafffdfdgf', 0, NULL, '', 1444681998, 0, 1, 5),
(7, 'Staff', 0, NULL, '', 1444683884, 0, 1, 6),
(8, 'testatest', 0, NULL, '', 1444686133, 0, 1, 7);

-- --------------------------------------------------------

--
-- Structure de la table `crews_banks`
--

CREATE TABLE IF NOT EXISTS `crews_banks` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `crews_banks`
--

INSERT INTO `crews_banks` (`id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7);

-- --------------------------------------------------------

--
-- Structure de la table `crews_banks_objects`
--

CREATE TABLE IF NOT EXISTS `crews_banks_objects` (
  `id` int(11) NOT NULL,
  `id_objects` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `crews_boats`
--

CREATE TABLE IF NOT EXISTS `crews_boats` (
  `id` int(11) NOT NULL,
  `id_crews` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `crews_candidacy`
--

CREATE TABLE IF NOT EXISTS `crews_candidacy` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `texte` text NOT NULL,
  `candidacy` tinyint(1) NOT NULL DEFAULT '0',
  `id_users` int(11) NOT NULL,
  `id_crews` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `crews_equipments`
--

CREATE TABLE IF NOT EXISTS `crews_equipments` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_crews_equipments_types` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `crews_equipments_types`
--

CREATE TABLE IF NOT EXISTS `crews_equipments_types` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `is_block` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `crews_grades`
--

CREATE TABLE IF NOT EXISTS `crews_grades` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `file` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `crews_grades`
--

INSERT INTO `crews_grades` (`id`, `name`, `file`, `is_block`) VALUES
(1, 'En attente', '', 0),
(2, 'Matelot', '', 0),
(3, 'Cuisinier', '', 0),
(4, 'Capitaine', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `crews_types`
--

CREATE TABLE IF NOT EXISTS `crews_types` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `file` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `crews_types`
--

INSERT INTO `crews_types` (`id`, `name`, `file`, `is_block`) VALUES
(1, 'Pirate', '', 0),
(2, 'Marine', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `crews_users`
--

CREATE TABLE IF NOT EXISTS `crews_users` (
  `id` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_crews_grades` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `crews_users`
--

INSERT INTO `crews_users` (`id`, `id_users`, `id_crews_grades`) VALUES
(8, 10, 4);

-- --------------------------------------------------------

--
-- Structure de la table `ennemies`
--

CREATE TABLE IF NOT EXISTS `ennemies` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `firstname` varchar(25) DEFAULT NULL,
  `file` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `forums_categories`
--

CREATE TABLE IF NOT EXISTS `forums_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(35) NOT NULL,
  `descr` varchar(255) NOT NULL,
  `types` varchar(25) DEFAULT NULL,
  `is_block` tinyint(1) NOT NULL,
  `sequence` int(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `forums_categories`
--

INSERT INTO `forums_categories` (`id`, `name`, `descr`, `types`, `is_block`, `sequence`) VALUES
(1, 'Salle secrète', 'Salle secrète réservé au staff !', '', 0, 1),
(2, 'Messages officiels', 'Tous les messages officiels sont postés ici !', '', 0, 2),
(3, 'Présentation des membres', 'C''est dans cette section que chaque membre du site pourra faire une petite présentation de lui-même.', '', 0, 4),
(4, 'Aide', 'Si vous avez besoin d''aide et que personne ne vous répond sur le t''chat, cette section vous correspond!', '', 0, 5),
(5, 'Général', 'Parlez de tout et de rien', NULL, 0, 6);

-- --------------------------------------------------------

--
-- Structure de la table `forums_topics`
--

CREATE TABLE IF NOT EXISTS `forums_topics` (
  `id` int(11) NOT NULL,
  `name` varchar(35) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_forums_categories` int(11) NOT NULL,
  `id_forums_topics_types` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `forums_topics`
--

INSERT INTO `forums_topics` (`id`, `name`, `is_block`, `id_forums_categories`, `id_forums_topics_types`) VALUES
(5, 'Bienvenue sur le forum', 0, 2, 1),
(6, 'Je t''emmerdes, Vince.', 0, 2, 1),
(7, 'Méchant', 0, 3, 1),
(8, 'Test', 0, 3, 1),
(9, '''1=1 Hello world', 0, 3, 1),
(10, 'Méchant', 0, 3, 1),
(11, 'test 3', 0, 3, 1),
(12, '1er topic', 0, 3, 1),
(13, '2ème topic', 0, 3, 1),
(14, '1er topic', 0, 3, 1),
(15, '2ème topic', 0, 3, 1),
(16, '1er topic', 0, 3, 1),
(17, '2ème topic', 0, 3, 1),
(18, 'test', 0, 3, 1),
(19, '#~~éç"''(éç"(à_)12341fdsfsd', 0, 2, 1),
(20, 'test', 0, 3, 1),
(21, 'test', 0, 1, 1),
(22, '#jefaislesac!', 0, 3, 1),
(23, 'La faute', 0, 4, 1),
(24, 'Forum fini', 0, 2, 1),
(25, 'Maniak teste.', 0, 2, 1),
(26, 'Bienvenue Maniak', 0, 1, 1),
(28, 'Test', 0, 2, 4);

-- --------------------------------------------------------

--
-- Structure de la table `forums_topics_messages`
--

CREATE TABLE IF NOT EXISTS `forums_topics_messages` (
  `id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `date_time` int(12) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_forums_topics` int(11) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `forums_topics_messages`
--

INSERT INTO `forums_topics_messages` (`id`, `message`, `date_time`, `is_block`, `id_forums_topics`, `id_users`) VALUES
(3, 'Salut le staff,\n\nBienvenue sur le forum de la V3 !\nJ''espère que de votre côté vous avancez :s\n\nA bientôt', 1438470455, 0, 5, 10),
(4, 'Et je t''aime fort', 1438495624, 0, 6, 19),
(5, 'Je vais pas te donner l''accès au forum privé toi :o', 1438498789, 0, 6, 10),
(6, 'Je suis le méchant', 1438500924, 0, 7, 18),
(7, 'La violence c''est mal m''voyer !', 1438501275, 0, 6, 18),
(8, 'Je test', 1438501404, 0, 8, 18),
(10, 'Toto', 1438502387, 0, 6, 20),
(11, 'TEST', 1438502407, 0, 6, 20),
(12, '''1=1', 1438502435, 0, 6, 20),
(13, 'Test', 1438502485, 0, 9, 20),
(14, 'Reponse', 1438502493, 0, 9, 20),
(15, 'C''est toi qui a supprimé mon topic\n\nC''est moi le méchant ici !', 1438504018, 0, 9, 18),
(16, 'Je suis de retour !', 1438504101, 0, 10, 18),
(17, 'haaaaaaaaaa', 1438504183, 0, 10, 18),
(18, 'rerre', 1438504278, 0, 11, 18),
(19, 'nooo', 1438504292, 0, 11, 18),
(20, '1er message du 1er topic', 1438504357, 0, 12, 18),
(21, '2ème message du 1er topic', 1438504373, 0, 12, 18),
(22, '1er message du 1er topic', 1438504394, 0, 13, 18),
(23, '2ème message du 2ème topic', 1438504409, 0, 13, 18),
(24, '1er message du 1er topic', 1438504474, 0, 14, 18),
(25, '2ème message du 1er topic', 1438504484, 0, 14, 18),
(26, '1er message du 1er topic', 1438504500, 0, 15, 18),
(27, '1er message du 1er topic', 1438504534, 0, 16, 18),
(28, '2ème message du 1er topic', 1438504540, 0, 16, 18),
(29, '1er message du 2ème topic', 1438504566, 0, 17, 18),
(30, '2ème message du 2ème topic', 1438504578, 0, 17, 18),
(31, 'Ok', 1438504834, 0, 6, 18),
(32, '3ème message', 1438504880, 0, 17, 18),
(33, 'Pevounet qui essaye de hack mon forum, c''est MEUGNON TOUT PLEIN <3', 1438545691, 0, 6, 10),
(34, 'Tu es trop méchant toi pfff', 1438552165, 0, 7, 10),
(35, 'test', 1438556129, 0, 18, 10),
(36, 'retest', 1438556133, 0, 18, 10),
(37, 'Ceci est un test', 1438583187, 0, 19, 18),
(38, 'Clairegoutte est une commune française située dans le département de la Haute-Saône en région Franche-Comté.\n\nLe village prend place dans un espace rustique, dominé par la forêt du Chérimont qui couvre plus de la moitié de son territoire. La ruralité de cet espace est contrebalancée par un réseau routier dense facilitant les déplacements vers les villes voisines, permettant à plus de 85 % des Clairegouttois de travailler hors de la commune. La commune est au carrefour des trois départements de la Haute-Saône, du Doubs et du Territoire de Belfort.\n\nFondée durant le Moyen Âge, Clairegoutte a été marquée par le protestantisme, courant fortement présent dans le pays de Montbéliard. Un bénéfique XVIIIe siècle et l''influence de l''exploitation des houillères proches pendant les deux siècles suivants firent de Clairegoutte un centre artisanal prospère dont plusieurs demeures témoignent encore. Le village possède un cœur historique à l''architecture originale et préservée, dont deux ensembles inscrits au patrimoine historique ; un lotissement a été construit en périphérie.\nClairegoutte est une commune française située dans le département de la Haute-Saône en région Franche-Comté.\n\nLe village prend place dans un espace rustique, dominé par la forêt du Chérimont qui couvre plus de la moitié de son territoire. La ruralité de cet espace est contrebalancée par un réseau routier dense facilitant les déplacements vers les villes voisines, permettant à plus de 85 % des Clairegouttois de travailler hors de la commune. La commune est au carrefour des trois départements de la Haute-Saône, du Doubs et du Territoire de Belfort.\n\nFondée durant le Moyen Âge, Clairegoutte a été marquée par le protestantisme, courant fortement présent dans le pays de Montbéliard. Un bénéfique XVIIIe siècle et l''influence de l''exploitation des houillères proches pendant les deux siècles suivants firent de Clairegoutte un centre artisanal prospère dont plusieurs demeures témoignent encore. Le village possède un cœur historique à l''architecture originale et préservée, dont deux ensembles inscrits au patrimoine historique ; un lotissement a été construit en périphérie.\nClairegoutte est une commune française située dans le département de la Haute-Saône en région Franche-Comté.\n\nLe village prend place dans un espace rustique, dominé par la forêt du Chérimont qui couvre plus de la moitié de son territoire. La ruralité de cet espace est contrebalancée par un réseau routier dense facilitant les déplacements vers les villes voisines, permettant à plus de 85 % des Clairegouttois de travailler hors de la commune. La commune est au carrefour des trois départements de la Haute-Saône, du Doubs et du Territoire de Belfort.\n\nFondée durant le Moyen Âge, Clairegoutte a été marquée par le protestantisme, courant fortement présent dans le pays de Montbéliard. Un bénéfique XVIIIe siècle et l''influence de l''exploitation des houillères proches pendant les deux siècles suivants firent de Clairegoutte un centre artisanal prospère dont plusieurs demeures témoignent encore. Le village possède un cœur historique à l''architecture originale et préservée, dont deux ensembles inscrits au patrimoine historique ; un lotissement a été construit en périphérie.\nClairegoutte est une commune française située dans le département de la Haute-Saône en région Franche-Comté.\n\nLe village prend place dans un espace rustique, dominé par la forêt du Chérimont qui couvre plus de la moitié de son territoire. La ruralité de cet espace est contrebalancée par un réseau routier dense facilitant les déplacements vers les villes voisines, permettant à plus de 85 % des Clairegouttois de travailler hors de la commune. La commune est au carrefour des trois départements de la Haute-Saône, du Doubs et du Territoire de Belfort.\n\nFondée durant le Moyen Âge, Clairegoutte a été marquée par le protestantisme, courant fortement présent dans le pays de Montbéliard. Un bénéfique XVIIIe siècle et l''influence de l''exploitation des houillères proches pendant les deux siècles suivants firent de Clairegoutte un centre artisanal prospère dont plusieurs demeures témoignent encore. Le village possède un cœur historique à l''architecture originale et préservée, dont deux ensembles inscrits au patrimoine historique ; un lotissement a été construit en périphérie.\nClairegoutte est une commune française située dans le département de la Haute-Saône en région Franche-Comté.\n\nLe village prend place dans un espace rustique, dominé par la forêt du Chérimont qui couvre plus de la moitié de son territoire. La ruralité de cet espace est contrebalancée par un réseau routier dense facilitant les déplacements vers les villes voisines, permettant à plus de 85 % des Clairegouttois de travailler hors de la commune. La commune est au carrefour des trois départements de la Haute-Saône, du Doubs et du Territoire de Belfort.\n\nFondée durant le Moyen Âge, Clairegoutte a été marquée par le protestantisme, courant fortement présent dans le pays de Montbéliard. Un bénéfique XVIIIe siècle et l''influence de l''exploitation des houillères proches pendant les deux siècles suivants firent de Clairegoutte un centre artisanal prospère dont plusieurs demeures témoignent encore. Le village possède un cœur historique à l''architecture originale et préservée, dont deux ensembles inscrits au patrimoine historique ; un lotissement a été construit en périphérie.\nClairegoutte est une commune française située dans le département de la Haute-Saône en région Franche-Comté.\n\nLe village prend place dans un espace rustique, dominé par la forêt du Chérimont qui couvre plus de la moitié de son territoire. La ruralité de cet espace est contrebalancée par un réseau routier dense facilitant les déplacements vers les villes voisines, permettant à plus de 85 % des Clairegouttois de travailler hors de la commune. La commune est au carrefour des trois départements de la Haute-Saône, du Doubs et du Territoire de Belfort.\n\nFondée durant le Moyen Âge, Clairegoutte a été marquée par le protestantisme, courant fortement présent dans le pays de Montbéliard. Un bénéfique XVIIIe siècle et l''influence de l''exploitation des houillères proches pendant les deux siècles suivants firent de Clairegoutte un centre artisanal prospère dont plusieurs demeures témoignent encore. Le village possède un cœur historique à l''architecture originale et préservée, dont deux ensembles inscrits au patrimoine historique ; un lotissement a été construit en périphérie.\nClairegoutte est une commune française située dans le département de la Haute-Saône en région Franche-Comté.\n\nLe village prend place dans un espace rustique, dominé par la forêt du Chérimont qui couvre plus de la moitié de son territoire. La ruralité de cet espace est contrebalancée par un réseau routier dense facilitant les déplacements vers les villes voisines, permettant à plus de 85 % des Clairegouttois de travailler hors de la commune. La commune est au carrefour des trois départements de la Haute-Saône, du Doubs et du Territoire de Belfort.\n\nFondée durant le Moyen Âge, Clairegoutte a été marquée par le protestantisme, courant fortement présent dans le pays de Montbéliard. Un bénéfique XVIIIe siècle et l''influence de l''exploitation des houillères proches pendant les deux siècles suivants firent de Clairegoutte un centre artisanal prospère dont plusieurs demeures témoignent encore. Le village possède un cœur historique à l''architecture originale et préservée, dont deux ensembles inscrits au patrimoine historique ; un lotissement a été construit en périphérie.\nClairegoutte est une commune française située dans le département de la Haute-Saône en région Franche-Comté.\n\nLe village prend place dans un espace rustique, dominé par la forêt du Chérimont qui couvre plus de la moitié de son territoire. La ruralité de cet espace est contrebalancée par un réseau routier dense facilitant les déplacements vers les villes voisines, permettant à plus de 85 % des Clairegouttois de travailler hors de la commune. La commune est au carrefour des trois départements de la Haute-Saône, du Doubs et du Territoire de Belfort.\n\nFondée durant le Moyen Âge, Clairegoutte a été marquée par le protestantisme, courant fortement présent dans le pays de Montbéliard. Un bénéfique XVIIIe siècle et l''influence de l''exploitation des houillères proches pendant les deux siècles suivants firent de Clairegoutte un centre artisanal prospère dont plusieurs demeures témoignent encore. Le village possède un cœur historique à l''architecture originale et préservée, dont deux ensembles inscrits au patrimoine historique ; un lotissement a été construit en périphérie.\nClairegoutte est une commune française située dans le département de la Haute-Saône en région Franche-Comté.\n\nLe village prend place dans un espace rustique, dominé par la forêt du Chérimont qui couvre plus de la moitié de son territoire. La ruralité de cet espace est contrebalancée par un réseau routier dense facilitant les déplacements vers les villes voisines, permettant à plus de 85 % des Clairegouttois de travailler hors de la commune. La commune est au carrefour des trois départements de la Haute-Saône, du Doubs et du Territoire de Belfort.\n\nFondée durant le Moyen Âge, Clairegoutte a été marquée par le protestantisme, courant fortement présent dans le pays de Montbéliard. Un bénéfique XVIIIe siècle et l''influence de l''exploitation des houillères proches pendant les deux siècles suivants firent de Clairegoutte un centre artisanal prospère dont plusieurs demeures témoignent encore. Le village possède un cœur historique à l''architecture originale et préservée, dont deux ensembles inscrits au patrimoine historique ; un lotissement a été construit en périphérie.\nClairegoutte est une commune française située dans le département de la Haute-Saône en région Franche-Comté.\n\nLe village prend place dans un espace rustique, dominé par la forêt du Chérimont qui couvre plus de la moitié de son territoire. La ruralité de cet espace est contrebalancée par un réseau routier dense facilitant les déplacements vers les villes voisines, permettant à plus de 85 % des Clairegouttois de travailler hors de la commune. La commune est au carrefour des trois départements de la Haute-Saône, du Doubs et du Territoire de Belfort.\n\nFondée durant le Moyen Âge, Clairegoutte a été marquée par le protestantisme, courant fortement présent dans le pays de Montbéliard. Un bénéfique XVIIIe siècle et l''influence de l''exploitation des houillères proches pendant les deux siècles suivants firent de Clairegoutte un centre artisanal prospère dont plusieurs demeures témoignent encore. Le village possède un cœur historique à l''architecture originale et préservée, dont deux ensembles inscrits au patrimoine historique ; un lotissement a été construit en périphérie.', 1438583228, 0, 19, 18),
(39, 'Ho, je n''avais pas vu les rangs', 1438583263, 0, 6, 18),
(40, 'test', 1438583570, 0, 20, 18),
(41, 'C''est bizarre l''affichage de la réponse le cadre de réponse colle le header ', 1438624524, 0, 5, 25),
(42, 'C''est pas gentil ça. Je veux participer un peu :(', 1438663018, 0, 6, 19),
(43, 'Bah participe mon con :P', 1438697268, 0, 6, 10),
(44, 'Tu baises les ménagères, bien, tu dois avoir le cul qui brille.', 1438697536, 0, 10, 22),
(45, 'test88888', 1438697670, 0, 5, 18),
(46, 'Clash ici :s', 1438710117, 0, 10, 10),
(47, 'test', 1438710205, 0, 21, 10),
(48, 'Maintenant si le topic fait plus de 30 messages alors sa découpe en plusieurs page ;) ', 1438720444, 0, 5, 10),
(49, 'Test avec des caractères spéciaux', 1438720848, 0, 22, 25),
(50, '#zboob', 1438720870, 0, 22, 10),
(51, 'C''est "aucun topic écrit" pas "écris" sac :p', 1438721204, 0, 23, 25),
(52, 'Ouais ouais ouais ouais ouais ouais ouais faut que je test le ban sur toi du coup ;)', 1438721282, 0, 23, 10),
(53, 'Salut,\n\nJuste pour dire que le gros du forum est fini...\nVoilà voilà.', 1438733148, 0, 24, 10),
(54, 'ça marche !', 1438904150, 0, 23, 25),
(55, 'Voilà, vous avez maintenant le nombre de vos messages.', 1441112821, 0, 24, 10),
(56, 'coucou', 1441115779, 0, 25, 28),
(57, 'Ake koukou toi', 1441116008, 0, 25, 10),
(58, 'Je souhaite la bienvenue dans le staff v3 à Maniak ! ', 1441117500, 0, 26, 10),
(59, 'test', 1441144808, 1, 25, 10),
(60, 'Merci ;)', 1441144814, 0, 26, 28),
(61, 'retest', 1441144822, 1, 25, 10),
(62, 'Merci ;)', 1441144838, 1, 26, 28),
(63, 'Merci ;)', 1441144838, 1, 26, 28),
(64, 'Tu es le premier membre du staff v3 sur le site xD', 1441225461, 0, 26, 10),
(65, 'Salut ceci est un test !', 1444666614, 0, 28, 10),
(66, 'test', 1444666623, 0, 28, 10),
(67, 'fd', 1444757501, 0, 25, 11),
(68, 'sfd', 1444757503, 0, 25, 11),
(69, 'hg', 1444757505, 0, 25, 11);

-- --------------------------------------------------------

--
-- Structure de la table `forums_topics_types`
--

CREATE TABLE IF NOT EXISTS `forums_topics_types` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `forums_topics_types`
--

INSERT INTO `forums_topics_types` (`id`, `name`) VALUES
(1, 'ouvert'),
(2, 'fermer'),
(3, 'sondage'),
(4, 'post-it');

-- --------------------------------------------------------

--
-- Structure de la table `islands`
--

CREATE TABLE IF NOT EXISTS `islands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `kick`
--

CREATE TABLE IF NOT EXISTS `kick` (
  `id` int(11) NOT NULL,
  `cause` varchar(25) NOT NULL,
  `zone` varchar(25) NOT NULL,
  `date_time` datetime NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `levels`
--

CREATE TABLE IF NOT EXISTS `levels` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `is_block` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `levels`
--

INSERT INTO `levels` (`id`, `number`, `is_block`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `lieux_ennemis`
--

CREATE TABLE IF NOT EXISTS `lieux_ennemis` (
  `id` int(11) NOT NULL,
  `id_ennemies` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date_time` int(15) NOT NULL,
  `message` text NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `news`
--

INSERT INTO `news` (`id`, `title`, `date_time`, `message`, `is_block`, `id_users`) VALUES
(2, 'Une deuxième news', 0, 'Une deuxième news </br> Pour voir l''odre des news </br> NANANANANANA', 0, 10),
(3, 'Troisième news', 0, 'Allleeez </br> Petite news au calme </br> Je suis dans mon jacouzie tu es dans ta ... </br> JALOUSIE', 0, 10),
(4, 'Salut le staff', 0, 'Salut le staff,<br/><br/>\n\nJ''espère que la première version de la V3 vous satisfait.<br />\nPour le moment il n''y a aucun design, et c''est normal pour le moment ! ;) <br />\nVous pouvez naviguez sur le site, si vous avez des soucis contactez moi. <br />\nEssayez donc de créer votre compte, de vous connecter, de me MP, etc...\n<br />\n<br />\nHave fun !', 0, 10),
(5, 'V3 IS COMING', 1435415275, 'Salut mes chéries, <br /> <br />\nJ''ai rajouté le système de date (Wouaw c''est beau on voit que j''ai écrit ça le 27 juin :P) <br />\nJ''ai aussi rajouter le système de commentaire pour chaque news ! Alors n''hésitez pas a vous déchainez !! :D <br /> <br />\nJ''ai bien bossé pour l''anniv de Pev ! :P <br /> <br />\nHave fun !', 0, 10),
(6, 'Allez au taff', 1437569388, 'AU TAFF \nAU TAFF\n\nAU TAFF\n\n\nAU TAFFFFFFFFFFFFF :o', 0, 10);

-- --------------------------------------------------------

--
-- Structure de la table `news_comments`
--

CREATE TABLE IF NOT EXISTS `news_comments` (
  `id` int(11) NOT NULL,
  `date_time` int(15) NOT NULL,
  `message` text NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_news` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `news_comments`
--

INSERT INTO `news_comments` (`id`, `date_time`, `message`, `is_block`, `id_users`, `id_news`) VALUES
(1, 1435415363, 'Yearl ça marche </br>\nIzi izi', 0, 10, 5),
(2, 1435416183, 'Journal !', 0, 15, 5),
(4, 1435416952, 'C''est bon tu y arrives ?', 0, 10, 5),
(6, 1435417657, 'Pagination :(', 0, 15, 5),
(7, 1435417824, 'J''écris sur ton message', 0, 15, 5),
(8, 1435417870, '10', 0, 15, 5),
(9, 1435417982, 'test', 0, 10, 5),
(10, 1435418140, 'pas 5 mais 2', 0, 15, 2),
(12, 1435421512, 'J''écris à 5', 0, 15, 5),
(13, 1435421533, 'J''écris à 3', 0, 15, 3),
(14, 1435425342, 'Tu écris à 5 ?\nBon bah j''écris à 6 x)', 0, 10, 5),
(16, 1444669881, 'test', 0, 10, 6);

-- --------------------------------------------------------

--
-- Structure de la table `objects`
--

CREATE TABLE IF NOT EXISTS `objects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_objects_types` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `objects`
--

INSERT INTO `objects` (`id`, `name`, `file`, `is_block`, `id_objects_types`) VALUES
(1, 'Epée en bois', 'Une épée en bois', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `objects_types`
--

CREATE TABLE IF NOT EXISTS `objects_types` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `is_block` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `objects_types`
--

INSERT INTO `objects_types` (`id`, `name`, `is_block`) VALUES
(1, 'arme', 1);

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

CREATE TABLE IF NOT EXISTS `personnages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `descr` text,
  `is_block` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `personnages`
--

INSERT INTO `personnages` (`id`, `name`, `firstname`, `descr`, `is_block`) VALUES
(1, 'Lufffy', 'D-monkey', 'Le roi des pirates', 1),
(2, 'test', 'testfirst', 'un test', 0);

-- --------------------------------------------------------

--
-- Structure de la table `perso_avatars`
--

CREATE TABLE IF NOT EXISTS `perso_avatars` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_personnages` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `pets`
--

CREATE TABLE IF NOT EXISTS `pets` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `file` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_pets_types` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `pets_types`
--

CREATE TABLE IF NOT EXISTS `pets_types` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `is_block` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `places`
--

CREATE TABLE IF NOT EXISTS `places` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `block` tinyint(1) NOT NULL,
  `id_levels` int(11) NOT NULL,
  `id_islands` int(11) NOT NULL,
  `id_places_types` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `places_quiz`
--

CREATE TABLE IF NOT EXISTS `places_quiz` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `ans1` text NOT NULL,
  `ans2` text NOT NULL,
  `ans3` text NOT NULL,
  `ans4` text NOT NULL,
  `id_places` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `places_types`
--

CREATE TABLE IF NOT EXISTS `places_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `privates_messages`
--

CREATE TABLE IF NOT EXISTS `privates_messages` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `date_time` int(15) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `is_trash` tinyint(1) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_users_1` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `privates_messages`
--

INSERT INTO `privates_messages` (`id`, `content`, `date_time`, `is_read`, `is_trash`, `id_users`, `id_users_1`) VALUES
(3, 'Petit message de test <br /> allez a plus tard mon choux', 0, 1, 0, 10, 11),
(4, 'dfdfd', 0, 1, 0, 10, 11),
(5, 'dffd', 0, 1, 1, 10, 10),
(6, 'tedsfd', 0, 1, 1, 11, 10),
(7, 'fdfdgf', 0, 1, 1, 10, 10),
(8, 'dfsfdfd', 0, 1, 1, 10, 10),
(9, 'Je vais te tuer et voler ton corps de son tombeau !', 0, 1, 1, 15, 10),
(10, 'Évite pas mes messages, je t''aurais !!!!', 0, 1, 0, 15, 10),
(11, ':o J''ai peur maintenant !!', 0, 1, 1, 10, 15),
(12, 'Un jours, je t''aurais !', 0, 1, 0, 15, 10),
(13, 'Tu as raison d''avoir peur, être inférieur !', 0, 1, 0, 15, 10),
(14, 'Comment oses tu me parler ainsi ?', 0, 1, 1, 10, 15),
(15, 'dfdfd', 0, 1, 1, 10, 10),
(16, 'dfdfddffgf', 0, 1, 1, 10, 10),
(17, 'Voilà corrigé', 0, 1, 1, 10, 15),
(18, 'Tu codes comme tu écris ton propre nom, mal :)', 0, 1, 1, 15, 10),
(19, 'Pourquoi donc je reste sur oprpg si c''est pour lire des conneries comme ça ? :''(', 0, 1, 0, 10, 15),
(20, 'Salut ma beauté <3', 0, 1, 0, 10, 14),
(21, 'On dit :\n"Je vous pris de m''excuser pour les désagréments, mais maintenant, il ne devrait plus y avoir de problème.\n\nMerci pour votre compréhension\n\n\nDumbeldor"', 0, 1, 1, 15, 10),
(22, 'draaaaaaaaaaaaa Cortex des pyramides', 0, 1, 0, 10, 15),
(23, 'test', 0, 1, 1, 10, 10),
(24, 'Salut bb,<br />\nTu es là ? :D', 0, 1, 1, 10, 15),
(25, 'On va tester ça en faisant du ping-pong\n\n\n   _________\n 0 |   |  °| 0\n | |   |   | |\n   ---------\n', 0, 1, 1, 15, 15),
(26, 'On va tester ça en faisant du ping-pong \n\n   _________\n 0 |   |  °| 0\n | |   |   | |\n   --------- ', 0, 1, 1, 15, 10),
(27, 'Ouais mais je sais pas jouer au ping pong virtuel moi :''( <br />\n0 | | °| 0 | | | | | --------- ', 0, 1, 0, 10, 15),
(28, 'Surtout quand ça déforme ton message ...', 0, 1, 1, 15, 10),
(29, 'Nan mon système de messagerie est parfait ! <br />\nIl déforme rien du tout ! :''(', 0, 1, 0, 10, 15),
(30, 'Journal\n\nEncore des tests à faire ou je peux déco ?', 0, 1, 1, 15, 10),
(31, 'Déco c''est bon trk\nMerci !', 0, 1, 0, 10, 15),
(34, 'test', 0, 1, 1, 10, 10),
(35, 'test', 0, 1, 1, 10, 10),
(36, 'Petite réponse pour test ;)\n\n				-----------------------------------------------Réponse------------------------------------------\n				Tu as raison d''avoir peur, être inférieur !', 1435443523, 1, 1, 10, 10),
(37, 'Test de la réponse + de la date :)\nHave fun !\n\n				-----------------------------------------------Réponse------------------------------------------\n				Un jours, je t''aurais !', 1435443638, 1, 0, 10, 15),
(38, '\n\n				-----------------------------------------------Réponse------------------------------------------\ntestitttttttiiii', 1435446255, 1, 0, 11, 10),
(39, 'GG\n\n				-----------------------------------------------Réponse------------------------------------------\n				\n\n				-----------------------------------------------Réponse------------------------------------------\ntestitttttttiiii', 1435446330, 1, 0, 10, 11),
(40, 'KOUKOU TU VEUX VOIR MA BITE ?\n\n<3', 1435446568, 1, 0, 10, 11),
(41, 'Un truc me chiffone\n\n				-----------------------------------------------Réponse------------------------------------------\n				Test de la réponse + de la date :)\n                               Je suis un vilain garçon\nHave fun !\n\n				-----------------------------------------------Réponse------------------------------------------\n				Un jours, je t''aurais !', 1435474112, 1, 0, 15, 10),
(42, 'Quoi donc ?\n\n				-----------------------------------------------Réponse------------------------------------------\n				Un truc me chiffone\n\n				-----------------------------------------------Réponse------------------------------------------\n				Test de la réponse + de la date :)\n                               Je suis un vilain garçon\nHave fun !\n\n				-----------------------------------------------Réponse------------------------------------------\n				Un jours, je t''aurais !', 1435664083, 0, 0, 10, 15),
(43, 'Méchant !', 1438188725, 1, 0, 10, 18),
(44, 'Test', 1438191808, 1, 0, 10, 10),
(45, 'Les messages restent indéfiniment où il y a une limite de temps ?', 1438415341, 1, 0, 18, 10),
(46, 'Indefiniment\n\n				-----------------------------------------------Réponse------------------------------------------\n				Les messages restent indéfiniment où il y a une limite de temps ?', 1438471349, 1, 0, 10, 10),
(47, 'Test', 1438502585, 1, 0, 20, 10),
(48, 'Hello', 1438502676, 1, 0, 20, 20),
(49, 'Test test\n\n				-----------------------------------------------Réponse------------------------------------------\n				Test', 1438584416, 0, 0, 10, 20),
(50, 'Test message privé', 1438624479, 1, 0, 25, 10),
(51, 'test\n\n				-----------------------------------------------Réponse------------------------------------------\n				Test message privé', 1438697120, 1, 1, 10, 25),
(52, 'Salut beau gosse <3', 1438725197, 0, 1, 10, 19),
(53, 'Je t''aime fort Vince. Désolé d''avoir fait le con :(\n\nJ''espère que tu me pardonnera D:', 1440224687, 1, 0, 19, 10),
(54, 'Oui je te pardonne t''inquiète pas. Tu es cool comme mec, mais comme modérateur tu dois faire des progrès.\n\n				-----------------------------------------------Réponse------------------------------------------\n				Je t''aime fort Vince. Désolé d''avoir fait le con :(\n\nJ''espère que tu me pardonnera D:', 1441113872, 1, 1, 10, 19),
(55, 'Salut chérie !!!!! <3', 1441115258, 1, 0, 10, 28),
(56, 'merci pour l''acceuil. xD\n\n				-----------------------------------------------Réponse------------------------------------------\n				Salut chérie !!!!! <3', 1441115888, 1, 0, 28, 10),
(57, ':P\n\n				-----------------------------------------------Réponse------------------------------------------\n				merci pour l''acceuil. xD\n\n				-----------------------------------------------Réponse------------------------------------------\n				Salut chérie !!!!! <3', 1441115992, 1, 0, 10, 28),
(58, 'C''est plutôt que j''ai trop d''histoire sur OPRPG pour en être un bon modo x)', 1441136950, 1, 0, 19, 10),
(59, '^^\n\n				-----------------------------------------------Réponse------------------------------------------\n				C''est plutôt que j''ai trop d''histoire sur OPRPG pour en être un bon modo x)', 1441144799, 0, 0, 10, 19);

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `id_user` int(11) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `sessions`
--

INSERT INTO `sessions` (`session_id`, `id_user`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('591284c658d61dde95985c960094fc58', 10, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2531.0 Safari/537.36', 1444765671, 'a:16:{s:7:"id_user";i:0;s:9:"user_data";s:0:"";s:2:"id";s:2:"10";s:3:"ban";s:1:"0";s:6:"pseudo";s:9:"Dumbeldor";s:5:"email";s:23:"vincentglize@hotmail.fr";s:8:"birthday";s:10:"0000-00-00";s:4:"sexe";N;s:7:"is_kick";s:1:"0";s:14:"id_personnages";s:1:"1";s:9:"id_levels";s:1:"1";s:10:"id_objects";s:1:"1";s:14:"id_users_types";s:1:"6";s:4:"rank";s:14:"Administrateur";s:8:"crewName";s:9:"testatest";s:4:"auth";b:1;}'),
('f840688f3ce5cc8b886bc65850a94a2a', 11, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2531.0 Safari/537.36', 1444765644, 'a:15:{s:7:"id_user";i:0;s:9:"user_data";s:0:"";s:2:"id";s:2:"11";s:3:"ban";s:1:"0";s:6:"pseudo";s:4:"test";s:5:"email";s:12:"test@test.fr";s:8:"birthday";s:10:"0000-00-00";s:4:"sexe";N;s:7:"is_kick";s:1:"0";s:14:"id_personnages";s:1:"1";s:9:"id_levels";s:1:"1";s:10:"id_objects";s:1:"1";s:14:"id_users_types";s:1:"1";s:4:"rank";s:6:"Membre";s:4:"auth";b:1;}');

-- --------------------------------------------------------

--
-- Structure de la table `tchats`
--

CREATE TABLE IF NOT EXISTS `tchats` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_tchats_types` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tchats_messages`
--

CREATE TABLE IF NOT EXISTS `tchats_messages` (
  `id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `date_time` datetime NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_tchats` int(11) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tchats_types`
--

CREATE TABLE IF NOT EXISTS `tchats_types` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `descr` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tech_ennemies`
--

CREATE TABLE IF NOT EXISTS `tech_ennemies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `descr` text,
  `is_block` tinyint(1) NOT NULL,
  `id_tech_types` int(11) NOT NULL,
  `id_ennemies` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tech_perso`
--

CREATE TABLE IF NOT EXISTS `tech_perso` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `descr` text,
  `is_block` tinyint(1) NOT NULL,
  `id_personnages` int(11) NOT NULL,
  `id_tech_types` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tech_types`
--

CREATE TABLE IF NOT EXISTS `tech_types` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `is_block` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tickets_messages`
--

CREATE TABLE IF NOT EXISTS `tickets_messages` (
  `id` int(11) NOT NULL,
  `message` longtext,
  `date_time` int(11) DEFAULT NULL,
  `id_users` int(11) NOT NULL,
  `id_tickets_sujets` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tickets_sujets`
--

CREATE TABLE IF NOT EXISTS `tickets_sujets` (
  `id` int(11) NOT NULL,
  `sujet` mediumtext,
  `statut` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `ban` tinyint(1) NOT NULL,
  `pseudo` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `sexe` tinyint(1) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_kick` tinyint(1) NOT NULL,
  `messNumber` int(11) NOT NULL,
  `id_personnages` int(11) NOT NULL,
  `id_levels` int(11) NOT NULL,
  `id_objects` int(11) NOT NULL,
  `id_users_types` int(11) NOT NULL,
  `id_users_ranks` int(11) NOT NULL,
  `id_crews_candidacy` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `ban`, `pseudo`, `email`, `birthday`, `sexe`, `password`, `is_kick`, `messNumber`, `id_personnages`, `id_levels`, `id_objects`, `id_users_types`, `id_users_ranks`, `id_crews_candidacy`) VALUES
(10, 0, 'Dumbeldor', 'vincentglize@hotmail.fr', '0000-00-00', NULL, '592c6815731dbe783453db69a60461294bf9ffbe8f0a61cea640d492bd8edba9b7de9c690ef66552bf0334e0ec6811c109cd6b913f91d79b53b2ab986afdccd3', 0, 39, 1, 1, 1, 6, 6, 0),
(11, 0, 'test', 'test@test.fr', '0000-00-00', NULL, '822b039ea55fd409e2a0714408bb1a2019f86d536954c3354f3e9a6ffe6b3fe94898519dda6add948cdd394b849fdfad4c80cfd211bdba360199fbe4bebdffb9', 0, 3, 1, 1, 1, 1, 0, 0),
(12, 0, 'ttt', 't@t.fr', '0000-00-00', NULL, '219810b025e577865192c35f9f7a7f46864e98794a8f9b41f3bb73aa675023f8f299daf9812fb6567ecdaf8ed7e972b7d9f335ed15e70dd9908b51410634ab36', 0, 0, 1, 1, 1, 1, 0, 0),
(13, 0, 'lebg', 'lebg@lebg.fr', '0000-00-00', NULL, '28dc62537cce4d7c96eae5dc92f98a84abb6d078f741a57bccc4ce7ce24cb425e89249ae87974afca8b0fb95e0d8aa77fdd3d94a4f97f088603071170cb879b1', 0, 0, 1, 1, 1, 1, 0, 0),
(14, 0, 'Atchoum', 'atchoumestunnaim@hotmail.com', '0000-00-00', NULL, '424a502e30cafb4a393fc4228ea9bad05006df9ec452e304929af4bddc7dcb02c9fcc55f0e1422167147f8467f404598b3507c7de9bb84a2bdd21061fa801936', 0, 0, 1, 1, 1, 1, 0, 0),
(15, 0, 'Voledesmorts', 'jesuisunmechant@hotmail.com', '0000-00-00', NULL, '96dd74403a86f694ea9c1e59c22dc5bb8e9baae55af500d2a212239953c4eca2aac9dc62c0bf0b4e3ee14d8ea977a285ce17fffde9f396f5d37efc389336fa62', 0, 0, 1, 1, 1, 1, 0, 0),
(17, 0, 'Enelos', 'go_tchou@hotmail.fr', '0000-00-00', NULL, '8d83b330e92c3fffb7d63a9d6dab373e97e0d1a6a5a2456570f3f98d629ea3436514d70d77327b96491936f91ef2fe55415a900e627da24694ec85f6d0831501', 0, 0, 1, 1, 1, 1, 0, 0),
(18, 0, 'Méchant', 'carjesuislemechant@gmail.com', '0000-00-00', NULL, 'df14471f72e3cdd33c344619c45fac6451b0eb6865da737b3b4dcb631736ca52455e34ea9bb7b2e4ee68acf5cc0219cb909faed6442b5ab7f5cb08083bea5a58', 0, 0, 1, 1, 1, 1, 0, 0),
(19, 0, 'Trinity', 'kevinvaik@hotmail.com', '0000-00-00', NULL, '9570755c957c635e91095f232c25c63d84fae2173a60fa17a54947191c0fccb650d535810a474e3ab96126530707bd1aea04ecea39079bc9ca3e5de06918d2e2', 0, 0, 1, 1, 1, 1, 0, 0),
(20, 0, 'Pev', 'pev.arfan@gmail.com', '0000-00-00', NULL, 'fb18e02a3391f66c9d5ccd5f0f43d163a9a59438e98bd4935fa9de515ba45bb0eef259f0642296392c6e91b4e4f3d8865ba89f6630b7dfae221469c346605118', 0, 0, 1, 1, 1, 1, 0, 0),
(21, 0, 'Yoniko', 'gout_brule@hotmail.com', '0000-00-00', NULL, 'c4a0b6c9217510e5d4cf0c6a26c1adc78f88e0d450642ace2d01e65ad291a914faec8ca00f665e9de107c65a7885c667e4b5865b70d4d33693d95f42fce0cf05', 0, 0, 1, 1, 1, 1, 0, 0),
(22, 0, 'Mello', 'bokax46@hotmail.com', '0000-00-00', NULL, 'b18053da156ea1daf5bbf37881840ebcede1ba771f7b519f7b72acb7f312bac3db7d11508887c82d1bd8c6c88e9bbc5e4f778680012c184ce4c3316a49f1c4b3', 0, 0, 1, 1, 1, 1, 0, 0),
(23, 0, 'Perceval', 'kadriano@hotmail.fr', '0000-00-00', NULL, '837caef52210b51a1f1a61a79408adc9c57ece6dccb36a43e4cda888debe810de48a104681652e2d51cdab0a671d4a75f31cce4eaa6fff67d7996200e44d86c8', 0, 0, 1, 1, 1, 1, 0, 0),
(24, 0, 'Alé@#', 'a@a.com', '0000-00-00', NULL, '74090d4d8479c76a7abc916de3ddc1716d18d9135e28316ae3fc5f05851712aa0025a6341a94adafa5da5870a528d18442b957930fcca7c5b7a92a832aa26445', 0, 0, 1, 1, 1, 1, 0, 0),
(25, 0, 'Perceval1', 'kamen@yopmail.com', '0000-00-00', NULL, '473ed6e4875a7d32b7743f2111717d6b9cefe61b9dcd279c2fa8c0c1967a2abe6961120d8d9d9d52960b567c5270e870d26e7fcc32b31316fb6f42d92ab96301', 0, 0, 1, 1, 1, 1, 0, 0),
(26, 0, 'Tintin', 'yoniko@outlook.com', '0000-00-00', NULL, '96946d3ecd307d0c93b4453a10e71912992190e2b2b64428d3200a7041e7e95a77851edff3f02d5874cc3bc36bece774edbf2f56a8fc2242954013a221359785', 0, 0, 1, 1, 1, 1, 0, 0),
(27, 0, 'Salbei', 'david@chalvia.fr', '0000-00-00', NULL, 'f0cbeba50b3c2132eb977a0155760a10c4727359d89fe3a58c16f9aa2ab3e59cf67a9478aa463fe297c409885ce500c7de7a80d4b393c09b5a34bf699e37ae15', 0, 0, 1, 1, 1, 1, 0, 0),
(28, 0, 'Maniak', 'christophe.botte@outlook.com', '0000-00-00', NULL, '794b05270fe733a7bad007a60685d13d55e17e9dc4ee1dae8f8cf1fc6cc132d3fb85160c958f4f801c1a8957c91afbc3501f998be3f6bc8ee64e4f0cf2a2ec73', 0, 2, 1, 1, 1, 4, 4, 0),
(29, 0, 'Nelose', 'tobi2596@live.fr', '0000-00-00', NULL, '8a94e3cc57927548dec602b0902a9fcad68b5f479d6e7c1021e36a020db6a792e1c556e627dd3f7694a2fdd04a97bf8ca916206a7360fbcc49b77bb982ac6895', 0, 0, 2, 1, 1, 1, 0, 0),
(30, 0, 'Password', 'oubliermotdepasse@gmail.com', '0000-00-00', NULL, '80c08d8f436dd6e12de05c54acf0fc32343a366f98cf0c7a9f4c7642bd71580f8c567b3af50e3c0f636a1bcf8f2c28094eb7f3fdf786210df6ed71b67a266759', 0, 0, 1, 1, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `users_avatars`
--

CREATE TABLE IF NOT EXISTS `users_avatars` (
  `id` int(11) NOT NULL,
  `id_perso_avatars` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users_bag`
--

CREATE TABLE IF NOT EXISTS `users_bag` (
  `id` int(11) NOT NULL,
  `id_bags` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users_ranks`
--

CREATE TABLE IF NOT EXISTS `users_ranks` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `is_block` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users_types`
--

CREATE TABLE IF NOT EXISTS `users_types` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `is_block` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users_types`
--

INSERT INTO `users_types` (`id`, `name`, `is_block`) VALUES
(1, 'Membre', 1),
(2, 'Rédacteur', 1),
(3, 'Designer', 1),
(4, 'Modérateur', 1),
(5, 'Co-Administrateur', 1),
(6, 'Administrateur', 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `bags`
--
ALTER TABLE `bags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_bags_id_bags_types` (`id_bags_types`);

--
-- Index pour la table `bags_objects`
--
ALTER TABLE `bags_objects`
  ADD PRIMARY KEY (`id`,`id_objects`),
  ADD KEY `FK_bags_objects_id_objects` (`id_objects`);

--
-- Index pour la table `bags_types`
--
ALTER TABLE `bags_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cages`
--
ALTER TABLE `cages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_cages_id_cages_types` (`id_cages_types`);

--
-- Index pour la table `cages_pets`
--
ALTER TABLE `cages_pets`
  ADD PRIMARY KEY (`id`,`id_pets`),
  ADD KEY `FK_cages_pets_id_pets` (`id_pets`);

--
-- Index pour la table `cages_types`
--
ALTER TABLE `cages_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cages_users`
--
ALTER TABLE `cages_users`
  ADD PRIMARY KEY (`id`,`id_cages`),
  ADD KEY `FK_cages_users_id_cages` (`id_cages`);

--
-- Index pour la table `chests`
--
ALTER TABLE `chests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_chests_id_chests_types` (`id_chests_types`);

--
-- Index pour la table `chests_objects`
--
ALTER TABLE `chests_objects`
  ADD PRIMARY KEY (`id`,`id_objects`),
  ADD KEY `FK_chests_objects_id_objects` (`id_objects`);

--
-- Index pour la table `chests_types`
--
ALTER TABLE `chests_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `coffres_comptes`
--
ALTER TABLE `coffres_comptes`
  ADD PRIMARY KEY (`id`,`id_chests`),
  ADD KEY `FK_coffres_comptes_id_chests` (`id_chests`);

--
-- Index pour la table `crews`
--
ALTER TABLE `crews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_crews_id_crews_types` (`id_crews_types`),
  ADD KEY `FK_crews_id_crews_banks` (`id_crews_banks`);

--
-- Index pour la table `crews_banks`
--
ALTER TABLE `crews_banks`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `crews_banks_objects`
--
ALTER TABLE `crews_banks_objects`
  ADD PRIMARY KEY (`id`,`id_objects`),
  ADD KEY `FK_crews_banks_objects_id_objects` (`id_objects`);

--
-- Index pour la table `crews_boats`
--
ALTER TABLE `crews_boats`
  ADD PRIMARY KEY (`id`,`id_crews`),
  ADD KEY `FK_crews_boats_id_crews` (`id_crews`);

--
-- Index pour la table `crews_candidacy`
--
ALTER TABLE `crews_candidacy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_crews_candidacy_id_users` (`id_users`),
  ADD KEY `FK_crews_candidacy_id_crews` (`id_crews`);

--
-- Index pour la table `crews_equipments`
--
ALTER TABLE `crews_equipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_crews_equipments_id_crews_equipments_types` (`id_crews_equipments_types`);

--
-- Index pour la table `crews_equipments_types`
--
ALTER TABLE `crews_equipments_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `crews_grades`
--
ALTER TABLE `crews_grades`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `crews_types`
--
ALTER TABLE `crews_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `crews_users`
--
ALTER TABLE `crews_users`
  ADD PRIMARY KEY (`id`,`id_users`,`id_crews_grades`),
  ADD KEY `FK_crews_users_id_users` (`id_users`),
  ADD KEY `FK_crews_users_id_crews_grades` (`id_crews_grades`);

--
-- Index pour la table `ennemies`
--
ALTER TABLE `ennemies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `forums_categories`
--
ALTER TABLE `forums_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `forums_topics`
--
ALTER TABLE `forums_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_forums_topics_id_forums_categories` (`id_forums_categories`),
  ADD KEY `FK_forums_topics_id_forums_topics_types` (`id_forums_topics_types`);

--
-- Index pour la table `forums_topics_messages`
--
ALTER TABLE `forums_topics_messages`
  ADD PRIMARY KEY (`id`,`id_forums_topics`,`id_users`),
  ADD KEY `FK_forums_topics_messages_id_forums_topics` (`id_forums_topics`),
  ADD KEY `FK_forums_topics_messages_id_users` (`id_users`);

--
-- Index pour la table `forums_topics_types`
--
ALTER TABLE `forums_topics_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `islands`
--
ALTER TABLE `islands`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `kick`
--
ALTER TABLE `kick`
  ADD PRIMARY KEY (`id`,`id_users`),
  ADD KEY `FK_kick_id_users` (`id_users`);

--
-- Index pour la table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lieux_ennemis`
--
ALTER TABLE `lieux_ennemis`
  ADD PRIMARY KEY (`id`,`id_ennemies`),
  ADD KEY `FK_lieux_ennemis_id_ennemies` (`id_ennemies`);

--
-- Index pour la table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_news_id_users` (`id_users`);

--
-- Index pour la table `news_comments`
--
ALTER TABLE `news_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_news_comments_id_users` (`id_users`),
  ADD KEY `FK_news_comments_id_news` (`id_news`);

--
-- Index pour la table `objects`
--
ALTER TABLE `objects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_objects_id_objects_types` (`id_objects_types`);

--
-- Index pour la table `objects_types`
--
ALTER TABLE `objects_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personnages`
--
ALTER TABLE `personnages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `perso_avatars`
--
ALTER TABLE `perso_avatars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_perso_avatars_id_personnages` (`id_personnages`);

--
-- Index pour la table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_pets_id_pets_types` (`id_pets_types`);

--
-- Index pour la table `pets_types`
--
ALTER TABLE `pets_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_places_id_levels` (`id_levels`),
  ADD KEY `FK_places_id_islands` (`id_islands`),
  ADD KEY `FK_places_id_places_types` (`id_places_types`);

--
-- Index pour la table `places_quiz`
--
ALTER TABLE `places_quiz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_places_quiz_id_places` (`id_places`);

--
-- Index pour la table `places_types`
--
ALTER TABLE `places_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `privates_messages`
--
ALTER TABLE `privates_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_privates_messages_id_users` (`id_users`),
  ADD KEY `FK_privates_messages_id_users_1` (`id_users_1`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Index pour la table `tchats`
--
ALTER TABLE `tchats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tchats_id_tchats_types` (`id_tchats_types`);

--
-- Index pour la table `tchats_messages`
--
ALTER TABLE `tchats_messages`
  ADD PRIMARY KEY (`id`,`id_tchats`,`id_users`),
  ADD KEY `FK_tchats_messages_id_tchats` (`id_tchats`),
  ADD KEY `FK_tchats_messages_id_users` (`id_users`);

--
-- Index pour la table `tchats_types`
--
ALTER TABLE `tchats_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tech_ennemies`
--
ALTER TABLE `tech_ennemies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tech_ennemies_id_tech_types` (`id_tech_types`),
  ADD KEY `FK_tech_ennemies_id_ennemies` (`id_ennemies`);

--
-- Index pour la table `tech_perso`
--
ALTER TABLE `tech_perso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tech_perso_id_personnages` (`id_personnages`),
  ADD KEY `FK_tech_perso_id_tech_types` (`id_tech_types`);

--
-- Index pour la table `tech_types`
--
ALTER TABLE `tech_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tickets_messages`
--
ALTER TABLE `tickets_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tickets_messages_id_users` (`id_users`),
  ADD KEY `FK_tickets_messages_id_tickets_sujets` (`id_tickets_sujets`);

--
-- Index pour la table `tickets_sujets`
--
ALTER TABLE `tickets_sujets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_users_id_personnages` (`id_personnages`),
  ADD KEY `FK_users_id_levels` (`id_levels`),
  ADD KEY `FK_users_id_objects` (`id_objects`),
  ADD KEY `FK_users_id_users_types` (`id_users_types`),
  ADD KEY `FK_users_id_users_ranks` (`id_users_ranks`);

--
-- Index pour la table `users_avatars`
--
ALTER TABLE `users_avatars`
  ADD PRIMARY KEY (`id`,`id_perso_avatars`),
  ADD KEY `FK_users_avatars_id_perso_avatars` (`id_perso_avatars`);

--
-- Index pour la table `users_bag`
--
ALTER TABLE `users_bag`
  ADD PRIMARY KEY (`id`,`id_bags`),
  ADD KEY `FK_users_bag_id_bags` (`id_bags`);

--
-- Index pour la table `users_ranks`
--
ALTER TABLE `users_ranks`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_types`
--
ALTER TABLE `users_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `bags`
--
ALTER TABLE `bags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `bags_types`
--
ALTER TABLE `bags_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cages`
--
ALTER TABLE `cages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cages_types`
--
ALTER TABLE `cages_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `chests`
--
ALTER TABLE `chests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `chests_types`
--
ALTER TABLE `chests_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `crews`
--
ALTER TABLE `crews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `crews_banks`
--
ALTER TABLE `crews_banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `crews_equipments`
--
ALTER TABLE `crews_equipments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `crews_equipments_types`
--
ALTER TABLE `crews_equipments_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `crews_grades`
--
ALTER TABLE `crews_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `crews_types`
--
ALTER TABLE `crews_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `ennemies`
--
ALTER TABLE `ennemies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `forums_categories`
--
ALTER TABLE `forums_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `forums_topics`
--
ALTER TABLE `forums_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT pour la table `forums_topics_messages`
--
ALTER TABLE `forums_topics_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT pour la table `forums_topics_types`
--
ALTER TABLE `forums_topics_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `islands`
--
ALTER TABLE `islands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `kick`
--
ALTER TABLE `kick`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `news_comments`
--
ALTER TABLE `news_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `objects`
--
ALTER TABLE `objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `objects_types`
--
ALTER TABLE `objects_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `personnages`
--
ALTER TABLE `personnages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `perso_avatars`
--
ALTER TABLE `perso_avatars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pets`
--
ALTER TABLE `pets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pets_types`
--
ALTER TABLE `pets_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `places_quiz`
--
ALTER TABLE `places_quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `places_types`
--
ALTER TABLE `places_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `privates_messages`
--
ALTER TABLE `privates_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT pour la table `tchats`
--
ALTER TABLE `tchats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tchats_messages`
--
ALTER TABLE `tchats_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tchats_types`
--
ALTER TABLE `tchats_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tech_ennemies`
--
ALTER TABLE `tech_ennemies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tech_perso`
--
ALTER TABLE `tech_perso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tech_types`
--
ALTER TABLE `tech_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tickets_messages`
--
ALTER TABLE `tickets_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tickets_sujets`
--
ALTER TABLE `tickets_sujets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `users_ranks`
--
ALTER TABLE `users_ranks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users_types`
--
ALTER TABLE `users_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `bags`
--
ALTER TABLE `bags`
  ADD CONSTRAINT `FK_bags_id_bags_types` FOREIGN KEY (`id_bags_types`) REFERENCES `bags_types` (`id`);

--
-- Contraintes pour la table `bags_objects`
--
ALTER TABLE `bags_objects`
  ADD CONSTRAINT `FK_bags_objects_id` FOREIGN KEY (`id`) REFERENCES `bags` (`id`),
  ADD CONSTRAINT `FK_bags_objects_id_objects` FOREIGN KEY (`id_objects`) REFERENCES `objects` (`id`);

--
-- Contraintes pour la table `cages`
--
ALTER TABLE `cages`
  ADD CONSTRAINT `FK_cages_id_cages_types` FOREIGN KEY (`id_cages_types`) REFERENCES `cages_types` (`id`);

--
-- Contraintes pour la table `cages_pets`
--
ALTER TABLE `cages_pets`
  ADD CONSTRAINT `FK_cages_pets_id` FOREIGN KEY (`id`) REFERENCES `cages` (`id`),
  ADD CONSTRAINT `FK_cages_pets_id_pets` FOREIGN KEY (`id_pets`) REFERENCES `pets` (`id`);

--
-- Contraintes pour la table `cages_users`
--
ALTER TABLE `cages_users`
  ADD CONSTRAINT `FK_cages_users_id` FOREIGN KEY (`id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_cages_users_id_cages` FOREIGN KEY (`id_cages`) REFERENCES `cages` (`id`);

--
-- Contraintes pour la table `chests`
--
ALTER TABLE `chests`
  ADD CONSTRAINT `FK_chests_id_chests_types` FOREIGN KEY (`id_chests_types`) REFERENCES `chests_types` (`id`);

--
-- Contraintes pour la table `chests_objects`
--
ALTER TABLE `chests_objects`
  ADD CONSTRAINT `FK_chests_objects_id` FOREIGN KEY (`id`) REFERENCES `chests` (`id`),
  ADD CONSTRAINT `FK_chests_objects_id_objects` FOREIGN KEY (`id_objects`) REFERENCES `objects` (`id`);

--
-- Contraintes pour la table `coffres_comptes`
--
ALTER TABLE `coffres_comptes`
  ADD CONSTRAINT `FK_coffres_comptes_id` FOREIGN KEY (`id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_coffres_comptes_id_chests` FOREIGN KEY (`id_chests`) REFERENCES `chests` (`id`);

--
-- Contraintes pour la table `crews`
--
ALTER TABLE `crews`
  ADD CONSTRAINT `FK_crews_id_crews_banks` FOREIGN KEY (`id_crews_banks`) REFERENCES `crews_banks` (`id`),
  ADD CONSTRAINT `FK_crews_id_crews_types` FOREIGN KEY (`id_crews_types`) REFERENCES `crews_types` (`id`);

--
-- Contraintes pour la table `crews_banks_objects`
--
ALTER TABLE `crews_banks_objects`
  ADD CONSTRAINT `FK_crews_banks_objects_id` FOREIGN KEY (`id`) REFERENCES `crews_banks` (`id`),
  ADD CONSTRAINT `FK_crews_banks_objects_id_objects` FOREIGN KEY (`id_objects`) REFERENCES `objects` (`id`);

--
-- Contraintes pour la table `crews_boats`
--
ALTER TABLE `crews_boats`
  ADD CONSTRAINT `FK_crews_boats_id` FOREIGN KEY (`id`) REFERENCES `crews_equipments` (`id`),
  ADD CONSTRAINT `FK_crews_boats_id_crews` FOREIGN KEY (`id_crews`) REFERENCES `crews` (`id`);

--
-- Contraintes pour la table `crews_candidacy`
--
ALTER TABLE `crews_candidacy`
  ADD CONSTRAINT `FK_crews_candidacy_id_crews` FOREIGN KEY (`id_crews`) REFERENCES `crews` (`id`),
  ADD CONSTRAINT `FK_crews_candidacy_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `crews_equipments`
--
ALTER TABLE `crews_equipments`
  ADD CONSTRAINT `FK_crews_equipments_id_crews_equipments_types` FOREIGN KEY (`id_crews_equipments_types`) REFERENCES `crews_equipments_types` (`id`);

--
-- Contraintes pour la table `crews_users`
--
ALTER TABLE `crews_users`
  ADD CONSTRAINT `FK_crews_users_id` FOREIGN KEY (`id`) REFERENCES `crews` (`id`),
  ADD CONSTRAINT `FK_crews_users_id_crews_grades` FOREIGN KEY (`id_crews_grades`) REFERENCES `crews_grades` (`id`),
  ADD CONSTRAINT `FK_crews_users_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `forums_topics`
--
ALTER TABLE `forums_topics`
  ADD CONSTRAINT `FK_forums_topics_id_forums_categories` FOREIGN KEY (`id_forums_categories`) REFERENCES `forums_categories` (`id`),
  ADD CONSTRAINT `FK_forums_topics_id_forums_topics_types` FOREIGN KEY (`id_forums_topics_types`) REFERENCES `forums_topics_types` (`id`);

--
-- Contraintes pour la table `forums_topics_messages`
--
ALTER TABLE `forums_topics_messages`
  ADD CONSTRAINT `FK_forums_topics_messages_id_forums_topics` FOREIGN KEY (`id_forums_topics`) REFERENCES `forums_topics` (`id`),
  ADD CONSTRAINT `FK_forums_topics_messages_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `kick`
--
ALTER TABLE `kick`
  ADD CONSTRAINT `FK_kick_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `lieux_ennemis`
--
ALTER TABLE `lieux_ennemis`
  ADD CONSTRAINT `FK_lieux_ennemis_id` FOREIGN KEY (`id`) REFERENCES `places` (`id`),
  ADD CONSTRAINT `FK_lieux_ennemis_id_ennemies` FOREIGN KEY (`id_ennemies`) REFERENCES `ennemies` (`id`);

--
-- Contraintes pour la table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `FK_news_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `news_comments`
--
ALTER TABLE `news_comments`
  ADD CONSTRAINT `FK_news_comments_id_news` FOREIGN KEY (`id_news`) REFERENCES `news` (`id`),
  ADD CONSTRAINT `FK_news_comments_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `objects`
--
ALTER TABLE `objects`
  ADD CONSTRAINT `FK_objects_id_objects_types` FOREIGN KEY (`id_objects_types`) REFERENCES `objects_types` (`id`);

--
-- Contraintes pour la table `perso_avatars`
--
ALTER TABLE `perso_avatars`
  ADD CONSTRAINT `FK_perso_avatars_id_personnages` FOREIGN KEY (`id_personnages`) REFERENCES `personnages` (`id`);

--
-- Contraintes pour la table `pets`
--
ALTER TABLE `pets`
  ADD CONSTRAINT `FK_pets_id_pets_types` FOREIGN KEY (`id_pets_types`) REFERENCES `pets_types` (`id`);

--
-- Contraintes pour la table `places`
--
ALTER TABLE `places`
  ADD CONSTRAINT `FK_places_id_islands` FOREIGN KEY (`id_islands`) REFERENCES `islands` (`id`),
  ADD CONSTRAINT `FK_places_id_levels` FOREIGN KEY (`id_levels`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `FK_places_id_places_types` FOREIGN KEY (`id_places_types`) REFERENCES `places_types` (`id`);

--
-- Contraintes pour la table `places_quiz`
--
ALTER TABLE `places_quiz`
  ADD CONSTRAINT `FK_places_quiz_id_places` FOREIGN KEY (`id_places`) REFERENCES `places` (`id`);

--
-- Contraintes pour la table `privates_messages`
--
ALTER TABLE `privates_messages`
  ADD CONSTRAINT `FK_privates_messages_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_privates_messages_id_users_1` FOREIGN KEY (`id_users_1`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `tchats`
--
ALTER TABLE `tchats`
  ADD CONSTRAINT `FK_tchats_id_tchats_types` FOREIGN KEY (`id_tchats_types`) REFERENCES `tchats_types` (`id`);

--
-- Contraintes pour la table `tchats_messages`
--
ALTER TABLE `tchats_messages`
  ADD CONSTRAINT `FK_tchats_messages_id_tchats` FOREIGN KEY (`id_tchats`) REFERENCES `tchats` (`id`),
  ADD CONSTRAINT `FK_tchats_messages_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `tech_ennemies`
--
ALTER TABLE `tech_ennemies`
  ADD CONSTRAINT `FK_tech_ennemies_id_ennemies` FOREIGN KEY (`id_ennemies`) REFERENCES `ennemies` (`id`),
  ADD CONSTRAINT `FK_tech_ennemies_id_tech_types` FOREIGN KEY (`id_tech_types`) REFERENCES `tech_types` (`id`);

--
-- Contraintes pour la table `tech_perso`
--
ALTER TABLE `tech_perso`
  ADD CONSTRAINT `FK_tech_perso_id_personnages` FOREIGN KEY (`id_personnages`) REFERENCES `personnages` (`id`),
  ADD CONSTRAINT `FK_tech_perso_id_tech_types` FOREIGN KEY (`id_tech_types`) REFERENCES `tech_types` (`id`);

--
-- Contraintes pour la table `tickets_messages`
--
ALTER TABLE `tickets_messages`
  ADD CONSTRAINT `FK_tickets_messages_id_tickets_sujets` FOREIGN KEY (`id_tickets_sujets`) REFERENCES `tickets_sujets` (`id`),
  ADD CONSTRAINT `FK_tickets_messages_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_users_id_levels` FOREIGN KEY (`id_levels`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `FK_users_id_objects` FOREIGN KEY (`id_objects`) REFERENCES `objects` (`id`),
  ADD CONSTRAINT `FK_users_id_personnages` FOREIGN KEY (`id_personnages`) REFERENCES `personnages` (`id`),
  ADD CONSTRAINT `FK_users_id_users_types` FOREIGN KEY (`id_users_types`) REFERENCES `users_types` (`id`);

--
-- Contraintes pour la table `users_avatars`
--
ALTER TABLE `users_avatars`
  ADD CONSTRAINT `FK_users_avatars_id` FOREIGN KEY (`id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_users_avatars_id_perso_avatars` FOREIGN KEY (`id_perso_avatars`) REFERENCES `perso_avatars` (`id`);

--
-- Contraintes pour la table `users_bag`
--
ALTER TABLE `users_bag`
  ADD CONSTRAINT `FK_users_bag_id` FOREIGN KEY (`id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_users_bag_id_bags` FOREIGN KEY (`id_bags`) REFERENCES `bags` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
