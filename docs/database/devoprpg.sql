-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 19 Janvier 2016 à 21:10
-- Version du serveur :  5.6.26
-- Version de PHP :  5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `devoprpg`
--

-- --------------------------------------------------------

--
-- Structure de la table `bags`
--

CREATE TABLE IF NOT EXISTS `bags` (
  `id` int(11) NOT NULL,
  `id_bags_types` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `bags_objects`
--

CREATE TABLE IF NOT EXISTS `bags_objects` (
  `id` int(11) NOT NULL,
  `id_objects` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `building`
--

CREATE TABLE IF NOT EXISTS `building` (
  `id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `building`
--

INSERT INTO `building` (`id`, `name`) VALUES
(1, 'QG'),
(2, 'Academie'),
(3, 'Boutique'),
(4, 'Port'),
(5, 'Porte');

-- --------------------------------------------------------

--
-- Structure de la table `cages`
--

CREATE TABLE IF NOT EXISTS `cages` (
  `id` int(11) NOT NULL,
  `id_cages_types` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `cages_charactere`
--

CREATE TABLE IF NOT EXISTS `cages_charactere` (
  `id` int(11) NOT NULL,
  `id_charactere` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `cages_pets`
--

CREATE TABLE IF NOT EXISTS `cages_pets` (
  `id` int(11) NOT NULL,
  `id_pets` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `cages_types`
--

CREATE TABLE IF NOT EXISTS `cages_types` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `file` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `captcha`
--

CREATE TABLE IF NOT EXISTS `captcha` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `session_id` varchar(50) NOT NULL,
  `time` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1649 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `captcha`
--

INSERT INTO `captcha` (`id`, `code`, `session_id`, `time`) VALUES
(1648, '8479324', 'e768674ad2610c3d0381eb22d421b92010b7cb63', 1453226648);

-- --------------------------------------------------------

--
-- Structure de la table `charactere`
--

CREATE TABLE IF NOT EXISTS `charactere` (
  `id` int(11) NOT NULL,
  `position_city` int(11) DEFAULT NULL,
  `in_city` tinyint(1) NOT NULL DEFAULT '1',
  `lvl` int(11) DEFAULT NULL,
  `berry` int(11) DEFAULT NULL,
  `avatar` text,
  `id_objects` int(11) NOT NULL,
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `charactere`
--

INSERT INTO `charactere` (`id`, `position_city`, `in_city`, `lvl`, `berry`, `avatar`, `id_objects`, `x`, `y`) VALUES
(11, 1, 1, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/11.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/5.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/blanc/27.png";}', 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `charactere_bag`
--

CREATE TABLE IF NOT EXISTS `charactere_bag` (
  `id` int(11) NOT NULL,
  `id_charactere` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `character_jobs`
--

CREATE TABLE IF NOT EXISTS `character_jobs` (
  `id` int(11) NOT NULL,
  `id_charactere` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `chests`
--

CREATE TABLE IF NOT EXISTS `chests` (
  `id` int(11) NOT NULL,
  `id_chests_types` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `chests_objects`
--

CREATE TABLE IF NOT EXISTS `chests_objects` (
  `id` int(11) NOT NULL,
  `id_objects` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `city`
--

INSERT INTO `city` (`id`, `name`) VALUES
(1, 'marines'),
(2, 'pirate'),
(3, 'révolutionnaire');

-- --------------------------------------------------------

--
-- Structure de la table `city_building`
--

CREATE TABLE IF NOT EXISTS `city_building` (
  `id` int(11) NOT NULL,
  `id_building` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `city_building`
--

INSERT INTO `city_building` (`id`, `id_building`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5);

-- --------------------------------------------------------

--
-- Structure de la table `coffres_comptes`
--

CREATE TABLE IF NOT EXISTS `coffres_comptes` (
  `id` int(11) NOT NULL,
  `id_charactere` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `date_time` int(11) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_crews_types` int(11) NOT NULL,
  `id_crews_banks` int(11) NOT NULL,
  `id_faction` int(11) DEFAULT NULL,
  `id_tchats_messages_crew` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `crews`
--

INSERT INTO `crews` (`id`, `name`, `money`, `page`, `file`, `date_time`, `is_block`, `id_crews_types`, `id_crews_banks`, `id_faction`, `id_tchats_messages_crew`) VALUES
(4, 'retest', 0, NULL, '', 1453231185, 1, 1, 4, 2, NULL),
(100, 'Starfoula', 0, NULL, '', 1453231335, 0, 1, 5, 2, NULL),
(101, 'Staff', 0, NULL, '', 1453231458, 0, 1, 6, 2, NULL),
(104, 'aaaaafdsf', 0, NULL, '', 1453233214, 0, 1, 9, 2, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `crews_banks`
--

CREATE TABLE IF NOT EXISTS `crews_banks` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

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
(7),
(8),
(9);

-- --------------------------------------------------------

--
-- Structure de la table `crews_banks_objects`
--

CREATE TABLE IF NOT EXISTS `crews_banks_objects` (
  `id` int(11) NOT NULL,
  `id_objects` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `crews_boats`
--

CREATE TABLE IF NOT EXISTS `crews_boats` (
  `id` int(11) NOT NULL,
  `id_crews` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `crews_candidacy`
--

CREATE TABLE IF NOT EXISTS `crews_candidacy` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `texte` text,
  `date_time` int(11) DEFAULT NULL,
  `candidacy` tinyint(1) DEFAULT NULL,
  `id_crews` int(11) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `crews_equipments`
--

CREATE TABLE IF NOT EXISTS `crews_equipments` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_crews_equipments_types` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `crews_equipments_types`
--

CREATE TABLE IF NOT EXISTS `crews_equipments_types` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `is_block` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `crews_grades`
--

CREATE TABLE IF NOT EXISTS `crews_grades` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `file` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `crews_grades`
--

INSERT INTO `crews_grades` (`id`, `name`, `file`, `is_block`) VALUES
(1, 'En attente', '', 0),
(2, 'Matelot', '', 0),
(3, 'Cuisinier', '', 0),
(4, 'Bras droit', '', 0),
(5, 'Capitaine', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `crews_types`
--

CREATE TABLE IF NOT EXISTS `crews_types` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `file` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `crews_types`
--

INSERT INTO `crews_types` (`id`, `name`, `file`, `is_block`) VALUES
(1, 'test', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `crews_users`
--

CREATE TABLE IF NOT EXISTS `crews_users` (
  `id` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_crews_grades` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `crews_users`
--

INSERT INTO `crews_users` (`id`, `id_users`, `id_crews_grades`) VALUES
(104, 5, 5);

-- --------------------------------------------------------

--
-- Structure de la table `faction`
--

CREATE TABLE IF NOT EXISTS `faction` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `faction`
--

INSERT INTO `faction` (`id`, `name`) VALUES
(1, 'Pirate'),
(2, 'Marine'),
(3, 'Révolutionnaire');

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
  `sequence` int(11) DEFAULT NULL,
  `is_crew` tinyint(4) DEFAULT NULL,
  `last_topic` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `forums_categories`
--

INSERT INTO `forums_categories` (`id`, `name`, `descr`, `types`, `is_block`, `sequence`, `is_crew`, `last_topic`) VALUES
(1, 'Salle secrète', 'Salle secrète réservé au staff !', '', 0, 1, 0, 73),
(2, 'Messages officiels', 'Tous les messages officiels sont postés ici !', '', 0, 2, 0, 61),
(3, 'Présentation des membres', 'C''est dans cette section que chaque membre du site pourra faire une petite présentation de lui-même.', '', 0, 6, 0, 65),
(4, 'Aide', 'Si vous avez besoin d''aide et que personne ne vous répond sur le t''chat, cette section vous correspond!', '', 0, 8, 0, 66),
(5, 'Général', 'Parlez de tout et de rien.<br>\nEn rapport plus ou moins loin du jeu.', NULL, 0, 3, 0, 62),
(6, 'Rumeurs', 'Toutes les rumeurs sur le site', NULL, 1, 6, 0, 0),
(7, 'Diplomatie inter-équipages', 'Recrutez des membres et proposez des alliances entre équipages... ou même la guerre!', NULL, 1, 7, 0, 0),
(8, 'Animations', 'Participez ou organisez des concours afin d''animer la communauté!', NULL, 0, 5, 0, 64),
(9, 'Commerce', 'Vendez à d''autres joueurs tous les objets que vous avez en trop !', NULL, 1, 9, 0, 0),
(10, 'Discussions scans', 'Exprimez-vous sur les scans', NULL, 0, 10, 0, 67),
(11, 'Tomes français', 'Exprimez-vous sur les épisodes sortis en France', NULL, 0, 11, 0, 68),
(12, 'Vos idées', 'Proposez vos idées, elles seront peut-être réalisées', NULL, 0, 12, 0, 69),
(13, 'Astuces & tactiques', 'Partagez vos astuces entre membres', NULL, 1, 13, 0, 0),
(14, 'Bugs', 'Vous avez rencontré un bug ou une faille? Signalez-le ici!', NULL, 0, 14, 0, 70),
(15, 'Pirate', 'Le forum privé des Pirates !', NULL, 1, 4, 0, 0),
(16, 'Marine', 'Le forum privé des Marines', NULL, 1, 4, 0, 63),
(17, 'Révolutionnaire', 'Le forum privé des Révolutionnaires', NULL, 1, 4, 0, 0),
(101, 'Staff', 'Forum privé de l''équipage Staff', NULL, 0, 50, 1, 0),
(102, 'aaaaa', 'Forum privé de l''équipage aaaaa', NULL, 0, 50, 1, 0),
(104, 'aaaaafdsf', 'Forum privé de l''équipage aaaaafdsf', NULL, 0, 50, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `forums_topics`
--

CREATE TABLE IF NOT EXISTS `forums_topics` (
  `id` int(11) NOT NULL,
  `name` varchar(35) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `last_message` int(11) NOT NULL,
  `id_forums_categories` int(11) NOT NULL,
  `id_forums_topics_types` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `forums_topics`
--

INSERT INTO `forums_topics` (`id`, `name`, `is_block`, `last_message`, `id_forums_categories`, `id_forums_topics_types`) VALUES
(60, 'test', 0, 52, 1, 1),
(61, 'test', 0, 42, 2, 1),
(62, 'ddd', 0, 43, 5, 1),
(63, 'ddd', 0, 44, 16, 1),
(64, 'zzzzzzzz', 0, 45, 8, 1),
(65, 'gggg', 0, 46, 3, 1),
(66, 'sdfdsfgf', 0, 47, 4, 1),
(67, 'ffffffffffffffff', 0, 48, 10, 1),
(68, 'fsdfdsgfd', 0, 49, 11, 1),
(69, 'dfgdfgdf', 0, 50, 12, 1),
(70, 'dfgfd', 0, 51, 14, 1),
(72, 'Bienvenue sur votre forum', 0, 0, 102, 1),
(73, 'sdfds', 0, 55, 1, 1),
(75, 'Bienvenue sur votre forum', 0, 0, 104, 1);

-- --------------------------------------------------------

--
-- Structure de la table `forums_topics_messages`
--

CREATE TABLE IF NOT EXISTS `forums_topics_messages` (
  `id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `date_time` int(11) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `popularity` int(11) DEFAULT NULL,
  `id_forums_topics` int(11) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `forums_topics_messages`
--

INSERT INTO `forums_topics_messages` (`id`, `message`, `date_time`, `is_block`, `popularity`, `id_forums_topics`, `id_users`) VALUES
(41, '<p>test</p>\r\n', 0, 0, NULL, 60, 5),
(42, '<p>test</p>\r\n', 1453229231, 0, NULL, 61, 5),
(43, '<p>dddd</p>\r\n', 1453229354, 0, NULL, 62, 5),
(44, '<p>dddd</p>\r\n', 1453229360, 0, NULL, 63, 5),
(45, 'dfdfgddfgfd', 1453229507, 0, NULL, 64, 5),
(46, '<p>gggg</p>\r\n', 1453230465, 0, NULL, 65, 5),
(47, '<p>gfdgdfgf</p>\r\n', 1453230491, 0, NULL, 66, 5),
(48, '<p>gfdgfgdfgdf</p>\r\n', 1453230497, 0, NULL, 67, 5),
(49, '<p>gfdgfdgdfg</p>\r\n', 1453230505, 0, NULL, 68, 5),
(50, '<p>gdfgdfhgd</p>\r\n', 1453230511, 0, NULL, 69, 5),
(51, '<p>gdfgdfgdf</p>\r\n', 1453230645, 0, NULL, 70, 5),
(52, '<p>test</p>\r\n', 1453230854, 0, NULL, 60, 5),
(55, '<p>fsdfd</p>\r\n', 1453232995, 0, NULL, 73, 5),
(57, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1453233214, 0, NULL, 75, 13);

-- --------------------------------------------------------

--
-- Structure de la table `forums_topics_types`
--

CREATE TABLE IF NOT EXISTS `forums_topics_types` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

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
-- Structure de la table `island`
--

CREATE TABLE IF NOT EXISTS `island` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `is_block` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `lost_pass`
--

CREATE TABLE IF NOT EXISTS `lost_pass` (
  `id` int(11) NOT NULL,
  `tooken` varchar(255) DEFAULT NULL,
  `date_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `maps`
--

CREATE TABLE IF NOT EXISTS `maps` (
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `id_island` int(11) DEFAULT NULL,
  `id_city` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `maps`
--

INSERT INTO `maps` (`x`, `y`, `id`, `id_island`, `id_city`) VALUES
(1, 1, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `maps_monster`
--

CREATE TABLE IF NOT EXISTS `maps_monster` (
  `id` int(11) NOT NULL,
  `id_maps_types` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `maps_types`
--

CREATE TABLE IF NOT EXISTS `maps_types` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `image` varchar(25) DEFAULT NULL,
  `lvl` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `maps_types`
--

INSERT INTO `maps_types` (`id`, `name`, `image`, `lvl`) VALUES
(1, 'plaine', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `maps_types_objetcs`
--

CREATE TABLE IF NOT EXISTS `maps_types_objetcs` (
  `id` int(11) NOT NULL,
  `id_objects` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `monster`
--

CREATE TABLE IF NOT EXISTS `monster` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `lvl` int(11) DEFAULT NULL,
  `xp` int(11) DEFAULT NULL,
  `attack` int(11) DEFAULT NULL,
  `defense` int(11) DEFAULT NULL,
  `speed` int(11) DEFAULT NULL,
  `escape` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `monster_objects`
--

CREATE TABLE IF NOT EXISTS `monster_objects` (
  `id` int(11) NOT NULL,
  `id_objects` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `monster_tech`
--

CREATE TABLE IF NOT EXISTS `monster_tech` (
  `id` int(11) NOT NULL,
  `id_monster` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date_time` int(11) NOT NULL,
  `message` text NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `news`
--

INSERT INTO `news` (`id`, `title`, `date_time`, `message`, `is_block`, `id_users`) VALUES
(1, 'Première news', 0, '<p>test news</p>\r\n', 0, 5);

-- --------------------------------------------------------

--
-- Structure de la table `news_comments`
--

CREATE TABLE IF NOT EXISTS `news_comments` (
  `id` int(11) NOT NULL,
  `date_time` int(11) NOT NULL,
  `message` text NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_news` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `news_comments`
--

INSERT INTO `news_comments` (`id`, `date_time`, `message`, `is_block`, `id_users`, `id_news`) VALUES
(1, 1453226133, '<p>aaaa</p>\r\n', 0, 5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `objects`
--

CREATE TABLE IF NOT EXISTS `objects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `file` varchar(255) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `attack` int(11) DEFAULT NULL,
  `defense` int(11) DEFAULT NULL,
  `addLife` int(11) DEFAULT NULL,
  `addHaki` int(11) DEFAULT NULL,
  `rarity` int(11) DEFAULT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_objects_types` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `objects`
--

INSERT INTO `objects` (`id`, `name`, `description`, `file`, `price`, `attack`, `defense`, `addLife`, `addHaki`, `rarity`, `is_block`, `id_objects_types`) VALUES
(1, 'Épée en bois', 'Une simple épée en bois', '', 10, 5, 1, NULL, NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `objects_types`
--

CREATE TABLE IF NOT EXISTS `objects_types` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `is_block` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `objects_types`
--

INSERT INTO `objects_types` (`id`, `name`, `is_block`) VALUES
(1, 'weapon', 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `pets_types`
--

CREATE TABLE IF NOT EXISTS `pets_types` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `is_block` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `privates_messages`
--

CREATE TABLE IF NOT EXISTS `privates_messages` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `date_time` int(15) NOT NULL,
  `id_author` int(11) NOT NULL,
  `id_dest` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `privates_messages_appartenance`
--

CREATE TABLE IF NOT EXISTS `privates_messages_appartenance` (
  `id` int(11) NOT NULL,
  `id_msg` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `is_read` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `relation074754`
--

CREATE TABLE IF NOT EXISTS `relation074754` (
  `likes` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `id_forums_topics_messages` int(11) NOT NULL,
  `id_forums_topics` int(11) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tchats`
--

CREATE TABLE IF NOT EXISTS `tchats` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `descr` varchar(100) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_tchats_types` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tchats_messages_crew`
--

CREATE TABLE IF NOT EXISTS `tchats_messages_crew` (
  `id` int(11) NOT NULL,
  `message` longtext,
  `date_time` int(11) DEFAULT NULL,
  `id_users` int(11) NOT NULL,
  `id_crews` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tchats_types`
--

CREATE TABLE IF NOT EXISTS `tchats_types` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `descr` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tech`
--

CREATE TABLE IF NOT EXISTS `tech` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `id_tech_types` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tech_jobs`
--

CREATE TABLE IF NOT EXISTS `tech_jobs` (
  `id` int(11) NOT NULL,
  `id_jobs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tech_monster`
--

CREATE TABLE IF NOT EXISTS `tech_monster` (
  `id` int(11) NOT NULL,
  `id_tech_types` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tech_types`
--

CREATE TABLE IF NOT EXISTS `tech_types` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `test` int(11) NOT NULL,
  `retest` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tickets_sujets`
--

CREATE TABLE IF NOT EXISTS `tickets_sujets` (
  `id` int(11) NOT NULL,
  `sujet` mediumtext,
  `statut` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `registration` int(11) DEFAULT NULL,
  `last_action` int(11) DEFAULT NULL,
  `ip` varchar(25) DEFAULT NULL,
  `is_kick` tinyint(1) NOT NULL,
  `messNumber` int(11) DEFAULT NULL,
  `popularity` int(11) DEFAULT NULL,
  `id_users_types` int(11) NOT NULL,
  `id_lost_pass` int(11) DEFAULT NULL,
  `id_charactere` int(11) DEFAULT NULL,
  `id_crews_candidacy` int(11) DEFAULT NULL,
  `id_faction` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `ban`, `pseudo`, `email`, `birthday`, `sexe`, `password`, `registration`, `last_action`, `ip`, `is_kick`, `messNumber`, `popularity`, `id_users_types`, `id_lost_pass`, `id_charactere`, `id_crews_candidacy`, `id_faction`) VALUES
(5, 0, 'Dumbeldor', 'vincent.glize@live.fr', '0000-00-00', NULL, '$2y$10$YndPoTqiK4lEPrGHIpsdze.tlJ4LLAOQJCSgBLv7eJpu93p3IbiOm', 1453225764, 1453233724, '::1', 0, NULL, NULL, 24, NULL, 11, NULL, 2),
(13, 0, 'Pandaman', 'pandaman@pandaman.panda', '2016-01-06', 0, '$2y$10$YndPoTqiK4lEPrGHIpsdze.tlJ4LLAOQJCSgBLv7eJpu93p3IbiOm', 1453225764, 1453225764, '0000000000', 0, 0, 0, 2, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `users_types`
--

CREATE TABLE IF NOT EXISTS `users_types` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `is_block` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `users_types`
--

INSERT INTO `users_types` (`id`, `name`, `is_block`) VALUES
(0, 'Ban', 1),
(1, 'Membre', 1),
(2, 'VIP', 1),
(9, 'Animatrice', 1),
(10, 'Animateur', 1),
(15, 'Rédactrice', 1),
(16, 'Rédacteur', 1),
(17, 'Designeuse', 1),
(18, 'Designer', 1),
(19, 'Modératrice', 1),
(20, 'Modérateur', 1),
(21, 'Co-Administratrice', 1),
(22, 'Co-Administrateur', 1),
(23, 'Administratrice', 1),
(24, 'Administrateur', 1);

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
-- Index pour la table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cages`
--
ALTER TABLE `cages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_cages_id_cages_types` (`id_cages_types`);

--
-- Index pour la table `cages_charactere`
--
ALTER TABLE `cages_charactere`
  ADD PRIMARY KEY (`id`,`id_charactere`),
  ADD KEY `FK_cages_users_id_charactere` (`id_charactere`);

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
-- Index pour la table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `charactere`
--
ALTER TABLE `charactere`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_charactere_id_objects` (`id_objects`),
  ADD KEY `FK_charactere_x` (`x`);

--
-- Index pour la table `charactere_bag`
--
ALTER TABLE `charactere_bag`
  ADD PRIMARY KEY (`id`,`id_charactere`),
  ADD KEY `FK_users_bag_id_charactere` (`id_charactere`);

--
-- Index pour la table `character_jobs`
--
ALTER TABLE `character_jobs`
  ADD PRIMARY KEY (`id`,`id_charactere`),
  ADD KEY `FK_character_jobs_id_charactere` (`id_charactere`);

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
-- Index pour la table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `city_building`
--
ALTER TABLE `city_building`
  ADD PRIMARY KEY (`id`,`id_building`),
  ADD KEY `FK_city_building_id_building` (`id_building`);

--
-- Index pour la table `coffres_comptes`
--
ALTER TABLE `coffres_comptes`
  ADD PRIMARY KEY (`id`,`id_charactere`),
  ADD KEY `FK_coffres_comptes_id_charactere` (`id_charactere`);

--
-- Index pour la table `crews`
--
ALTER TABLE `crews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_crews_id_crews_types` (`id_crews_types`),
  ADD KEY `FK_crews_id_crews_banks` (`id_crews_banks`),
  ADD KEY `FK_crews_id_faction` (`id_faction`),
  ADD KEY `FK_crews_id_tchats_messages_crew` (`id_tchats_messages_crew`);

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
  ADD KEY `FK_crews_candidacy_id_crews` (`id_crews`),
  ADD KEY `FK_crews_candidacy_id_users` (`id_users`);

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
-- Index pour la table `faction`
--
ALTER TABLE `faction`
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
  ADD KEY `FK_forums_topics_id_forums_topics_types` (`id_forums_topics_types`),
  ADD KEY `FK_forums_topics_id_forums_categories` (`id_forums_categories`);

--
-- Index pour la table `forums_topics_messages`
--
ALTER TABLE `forums_topics_messages`
  ADD PRIMARY KEY (`id`,`id_forums_topics`,`id_users`),
  ADD KEY `FK_forums_topics_messages_id_users` (`id_users`),
  ADD KEY `FK_forums_topics_messages_id_forums_topics` (`id_forums_topics`);

--
-- Index pour la table `forums_topics_types`
--
ALTER TABLE `forums_topics_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `island`
--
ALTER TABLE `island`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `kick`
--
ALTER TABLE `kick`
  ADD PRIMARY KEY (`id`,`id_users`),
  ADD KEY `FK_kick_id_users` (`id_users`);

--
-- Index pour la table `lost_pass`
--
ALTER TABLE `lost_pass`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`x`,`y`),
  ADD KEY `FK_maps_id` (`id`),
  ADD KEY `FK_maps_id_island` (`id_island`),
  ADD KEY `FK_maps_id_city` (`id_city`);

--
-- Index pour la table `maps_monster`
--
ALTER TABLE `maps_monster`
  ADD PRIMARY KEY (`id`,`id_maps_types`),
  ADD KEY `FK_maps_monster_id_maps_types` (`id_maps_types`);

--
-- Index pour la table `maps_types`
--
ALTER TABLE `maps_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `maps_types_objetcs`
--
ALTER TABLE `maps_types_objetcs`
  ADD PRIMARY KEY (`id`,`id_objects`),
  ADD KEY `FK_maps_types_objetcs_id_objects` (`id_objects`);

--
-- Index pour la table `monster`
--
ALTER TABLE `monster`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `monster_objects`
--
ALTER TABLE `monster_objects`
  ADD PRIMARY KEY (`id`,`id_objects`),
  ADD KEY `FK_monster_objects_id_objects` (`id_objects`);

--
-- Index pour la table `monster_tech`
--
ALTER TABLE `monster_tech`
  ADD PRIMARY KEY (`id`,`id_monster`),
  ADD KEY `FK_monster_tech_id_monster` (`id_monster`);

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
-- Index pour la table `relation074754`
--
ALTER TABLE `relation074754`
  ADD PRIMARY KEY (`id`,`id_forums_topics_messages`,`id_forums_topics`,`id_users`),
  ADD KEY `FK_relation074754_id_forums_topics_messages` (`id_forums_topics_messages`),
  ADD KEY `FK_relation074754_id_forums_topics` (`id_forums_topics`),
  ADD KEY `FK_relation074754_id_users` (`id_users`);

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
-- Index pour la table `tchats_messages_crew`
--
ALTER TABLE `tchats_messages_crew`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tchats_messages_crew_id_users` (`id_users`),
  ADD KEY `FK_tchats_messages_crew_id_crews` (`id_crews`);

--
-- Index pour la table `tchats_types`
--
ALTER TABLE `tchats_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tech`
--
ALTER TABLE `tech`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tech_id_tech_types` (`id_tech_types`);

--
-- Index pour la table `tech_jobs`
--
ALTER TABLE `tech_jobs`
  ADD PRIMARY KEY (`id`,`id_jobs`),
  ADD KEY `FK_tech_jobs_id_jobs` (`id_jobs`);

--
-- Index pour la table `tech_monster`
--
ALTER TABLE `tech_monster`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tech_monster_id_tech_types` (`id_tech_types`);

--
-- Index pour la table `tech_types`
--
ALTER TABLE `tech_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`test`);

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
  ADD KEY `FK_users_id_users_types` (`id_users_types`),
  ADD KEY `FK_users_id_lost_pass` (`id_lost_pass`),
  ADD KEY `FK_users_id_charactere` (`id_charactere`),
  ADD KEY `FK_users_id_crews_candidacy` (`id_crews_candidacy`),
  ADD KEY `FK_users_id_faction` (`id_faction`);

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
-- AUTO_INCREMENT pour la table `building`
--
ALTER TABLE `building`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
-- AUTO_INCREMENT pour la table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1649;
--
-- AUTO_INCREMENT pour la table `charactere`
--
ALTER TABLE `charactere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
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
-- AUTO_INCREMENT pour la table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `crews`
--
ALTER TABLE `crews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT pour la table `crews_banks`
--
ALTER TABLE `crews_banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `crews_candidacy`
--
ALTER TABLE `crews_candidacy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `crews_types`
--
ALTER TABLE `crews_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `faction`
--
ALTER TABLE `faction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `forums_categories`
--
ALTER TABLE `forums_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT pour la table `forums_topics`
--
ALTER TABLE `forums_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT pour la table `forums_topics_messages`
--
ALTER TABLE `forums_topics_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT pour la table `forums_topics_types`
--
ALTER TABLE `forums_topics_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `island`
--
ALTER TABLE `island`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `kick`
--
ALTER TABLE `kick`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `lost_pass`
--
ALTER TABLE `lost_pass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `monster`
--
ALTER TABLE `monster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `news_comments`
--
ALTER TABLE `news_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
-- AUTO_INCREMENT pour la table `tchats_messages_crew`
--
ALTER TABLE `tchats_messages_crew`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tchats_types`
--
ALTER TABLE `tchats_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tech`
--
ALTER TABLE `tech`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tech_monster`
--
ALTER TABLE `tech_monster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tech_types`
--
ALTER TABLE `tech_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `test`
--
ALTER TABLE `test`
  MODIFY `test` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `users_types`
--
ALTER TABLE `users_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
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
-- Contraintes pour la table `cages_charactere`
--
ALTER TABLE `cages_charactere`
  ADD CONSTRAINT `FK_cages_users_id` FOREIGN KEY (`id`) REFERENCES `cages` (`id`),
  ADD CONSTRAINT `FK_cages_users_id_charactere` FOREIGN KEY (`id_charactere`) REFERENCES `charactere` (`id`);

--
-- Contraintes pour la table `cages_pets`
--
ALTER TABLE `cages_pets`
  ADD CONSTRAINT `FK_cages_pets_id` FOREIGN KEY (`id`) REFERENCES `cages` (`id`),
  ADD CONSTRAINT `FK_cages_pets_id_pets` FOREIGN KEY (`id_pets`) REFERENCES `pets` (`id`);

--
-- Contraintes pour la table `charactere`
--
ALTER TABLE `charactere`
  ADD CONSTRAINT `FK_charactere_id_objects` FOREIGN KEY (`id_objects`) REFERENCES `objects` (`id`),
  ADD CONSTRAINT `FK_charactere_x` FOREIGN KEY (`x`) REFERENCES `maps` (`x`);

--
-- Contraintes pour la table `charactere_bag`
--
ALTER TABLE `charactere_bag`
  ADD CONSTRAINT `FK_users_bag_id` FOREIGN KEY (`id`) REFERENCES `bags` (`id`),
  ADD CONSTRAINT `FK_users_bag_id_charactere` FOREIGN KEY (`id_charactere`) REFERENCES `charactere` (`id`);

--
-- Contraintes pour la table `character_jobs`
--
ALTER TABLE `character_jobs`
  ADD CONSTRAINT `FK_character_jobs_id` FOREIGN KEY (`id`) REFERENCES `jobs` (`id`),
  ADD CONSTRAINT `FK_character_jobs_id_charactere` FOREIGN KEY (`id_charactere`) REFERENCES `charactere` (`id`);

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
-- Contraintes pour la table `city_building`
--
ALTER TABLE `city_building`
  ADD CONSTRAINT `FK_city_building_id` FOREIGN KEY (`id`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `FK_city_building_id_building` FOREIGN KEY (`id_building`) REFERENCES `building` (`id`);

--
-- Contraintes pour la table `coffres_comptes`
--
ALTER TABLE `coffres_comptes`
  ADD CONSTRAINT `FK_coffres_comptes_id` FOREIGN KEY (`id`) REFERENCES `chests` (`id`),
  ADD CONSTRAINT `FK_coffres_comptes_id_charactere` FOREIGN KEY (`id_charactere`) REFERENCES `charactere` (`id`);

--
-- Contraintes pour la table `crews`
--
ALTER TABLE `crews`
  ADD CONSTRAINT `FK_crews_id_crews_banks` FOREIGN KEY (`id_crews_banks`) REFERENCES `crews_banks` (`id`),
  ADD CONSTRAINT `FK_crews_id_crews_types` FOREIGN KEY (`id_crews_types`) REFERENCES `crews_types` (`id`),
  ADD CONSTRAINT `FK_crews_id_faction` FOREIGN KEY (`id_faction`) REFERENCES `faction` (`id`),
  ADD CONSTRAINT `FK_crews_id_tchats_messages_crew` FOREIGN KEY (`id_tchats_messages_crew`) REFERENCES `tchats_messages_crew` (`id`);

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
  ADD CONSTRAINT `FK_forums_topics_id_forums_categories` FOREIGN KEY (`id_forums_categories`) REFERENCES `forums_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_forums_topics_id_forums_topics_types` FOREIGN KEY (`id_forums_topics_types`) REFERENCES `forums_topics_types` (`id`);

--
-- Contraintes pour la table `forums_topics_messages`
--
ALTER TABLE `forums_topics_messages`
  ADD CONSTRAINT `FK_forums_topics_messages_id_forums_topics` FOREIGN KEY (`id_forums_topics`) REFERENCES `forums_topics` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_forums_topics_messages_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `kick`
--
ALTER TABLE `kick`
  ADD CONSTRAINT `FK_kick_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `maps`
--
ALTER TABLE `maps`
  ADD CONSTRAINT `FK_maps_id` FOREIGN KEY (`id`) REFERENCES `maps_types` (`id`),
  ADD CONSTRAINT `FK_maps_id_city` FOREIGN KEY (`id_city`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `FK_maps_id_island` FOREIGN KEY (`id_island`) REFERENCES `island` (`id`);

--
-- Contraintes pour la table `maps_monster`
--
ALTER TABLE `maps_monster`
  ADD CONSTRAINT `FK_maps_monster_id` FOREIGN KEY (`id`) REFERENCES `monster` (`id`),
  ADD CONSTRAINT `FK_maps_monster_id_maps_types` FOREIGN KEY (`id_maps_types`) REFERENCES `maps_types` (`id`);

--
-- Contraintes pour la table `maps_types_objetcs`
--
ALTER TABLE `maps_types_objetcs`
  ADD CONSTRAINT `FK_maps_types_objetcs_id` FOREIGN KEY (`id`) REFERENCES `maps_types` (`id`),
  ADD CONSTRAINT `FK_maps_types_objetcs_id_objects` FOREIGN KEY (`id_objects`) REFERENCES `objects` (`id`);

--
-- Contraintes pour la table `monster_objects`
--
ALTER TABLE `monster_objects`
  ADD CONSTRAINT `FK_monster_objects_id` FOREIGN KEY (`id`) REFERENCES `monster` (`id`),
  ADD CONSTRAINT `FK_monster_objects_id_objects` FOREIGN KEY (`id_objects`) REFERENCES `objects` (`id`);

--
-- Contraintes pour la table `monster_tech`
--
ALTER TABLE `monster_tech`
  ADD CONSTRAINT `FK_monster_tech_id` FOREIGN KEY (`id`) REFERENCES `tech_monster` (`id`),
  ADD CONSTRAINT `FK_monster_tech_id_monster` FOREIGN KEY (`id_monster`) REFERENCES `monster` (`id`);

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
-- Contraintes pour la table `pets`
--
ALTER TABLE `pets`
  ADD CONSTRAINT `FK_pets_id_pets_types` FOREIGN KEY (`id_pets_types`) REFERENCES `pets_types` (`id`);

--
-- Contraintes pour la table `relation074754`
--
ALTER TABLE `relation074754`
  ADD CONSTRAINT `FK_relation074754_id` FOREIGN KEY (`id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_relation074754_id_forums_topics` FOREIGN KEY (`id_forums_topics`) REFERENCES `forums_topics` (`id`),
  ADD CONSTRAINT `FK_relation074754_id_forums_topics_messages` FOREIGN KEY (`id_forums_topics_messages`) REFERENCES `forums_topics_messages` (`id`),
  ADD CONSTRAINT `FK_relation074754_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);

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
-- Contraintes pour la table `tchats_messages_crew`
--
ALTER TABLE `tchats_messages_crew`
  ADD CONSTRAINT `FK_tchats_messages_crew_id_crews` FOREIGN KEY (`id_crews`) REFERENCES `crews` (`id`),
  ADD CONSTRAINT `FK_tchats_messages_crew_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `tech`
--
ALTER TABLE `tech`
  ADD CONSTRAINT `FK_tech_id_tech_types` FOREIGN KEY (`id_tech_types`) REFERENCES `tech_types` (`id`);

--
-- Contraintes pour la table `tech_jobs`
--
ALTER TABLE `tech_jobs`
  ADD CONSTRAINT `FK_tech_jobs_id` FOREIGN KEY (`id`) REFERENCES `tech` (`id`),
  ADD CONSTRAINT `FK_tech_jobs_id_jobs` FOREIGN KEY (`id_jobs`) REFERENCES `jobs` (`id`);

--
-- Contraintes pour la table `tech_monster`
--
ALTER TABLE `tech_monster`
  ADD CONSTRAINT `FK_tech_monster_id_tech_types` FOREIGN KEY (`id_tech_types`) REFERENCES `tech_types` (`id`);

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
  ADD CONSTRAINT `FK_users_id_charactere` FOREIGN KEY (`id_charactere`) REFERENCES `charactere` (`id`),
  ADD CONSTRAINT `FK_users_id_crews_candidacy` FOREIGN KEY (`id_crews_candidacy`) REFERENCES `crews_candidacy` (`id`),
  ADD CONSTRAINT `FK_users_id_faction` FOREIGN KEY (`id_faction`) REFERENCES `faction` (`id`),
  ADD CONSTRAINT `FK_users_id_lost_pass` FOREIGN KEY (`id_lost_pass`) REFERENCES `lost_pass` (`id`),
  ADD CONSTRAINT `FK_users_id_users_types` FOREIGN KEY (`id_users_types`) REFERENCES `users_types` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
