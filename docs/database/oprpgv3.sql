-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 02 Novembre 2015 à 21:14
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
-- Structure de la table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `idUser` int(11) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `idUser`, `ip_address`, `timestamp`, `data`) VALUES
('ab89518ec7c855c7c5ca3bf564218959bd7ad059', 0, '::1', 1446218813, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434363231383735303b69647c733a323a223130223b62616e7c733a313a2230223b70736575646f7c733a393a2244756d62656c646f72223b656d61696c7c733a32333a2276696e63656e74676c697a6540686f746d61696c2e6672223b62697274686461797c733a31303a22303030302d30302d3030223b736578657c4e3b69735f6b69636b7c733a313a2230223b69645f706572736f6e6e616765737c733a313a2231223b69645f6c6576656c737c733a313a2231223b69645f6f626a656374737c733a313a2231223b69645f75736572735f74797065737c733a313a2236223b72616e6b7c733a31343a2241646d696e697374726174657572223b7c4e3b617574687c623a313b637265774e616d657c4e3b6372657749647c4e3b6372657752616e6b7c4e3b),
('ec522208eea629c40be42f06bcd6679a8255a0c1', 0, '::1', 1446223021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434363232323933383b);

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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `crews`
--

INSERT INTO `crews` (`id`, `name`, `money`, `page`, `file`, `date_time`, `is_block`, `id_crews_types`, `id_crews_banks`) VALUES
(52, 'test', 0, NULL, '', 1446207986, 0, 1, 27),
(53, 'aaaaa', 0, NULL, '', 1446331061, 1, 1, 28),
(54, 'Starfoula', 0, NULL, '', 1446337576, 1, 1, 29),
(55, 'aezrfd', 0, NULL, '', 1446390991, 0, 1, 30);

-- --------------------------------------------------------

--
-- Structure de la table `crews_banks`
--

CREATE TABLE IF NOT EXISTS `crews_banks` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `crews_banks`
--

INSERT INTO `crews_banks` (`id`) VALUES
(27),
(28),
(29),
(30);

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
  `date_time` int(12) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

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
(55, 10, 5),
(52, 33, 5);

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
  `sequence` int(4) NOT NULL,
  `is_crew` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `forums_categories`
--

INSERT INTO `forums_categories` (`id`, `name`, `descr`, `types`, `is_block`, `sequence`, `is_crew`) VALUES
(1, 'Salle secrète', 'Salle secrète réservé au staff !', '', 0, 1, 0),
(2, 'Messages officiels', 'Tous les messages officiels sont postés ici !', '', 0, 2, 0),
(3, 'Présentation des membres', 'C''est dans cette section que chaque membre du site pourra faire une petite présentation de lui-même.', '', 0, 4, 0),
(4, 'Aide', 'Si vous avez besoin d''aide et que personne ne vous répond sur le t''chat, cette section vous correspond!', '', 0, 5, 0),
(5, 'Général', 'Parlez de tout et de rien', NULL, 0, 3, 0),
(6, 'Rumeurs', 'Toutes les rumeurs sur le site', NULL, 0, 6, 0),
(7, 'Diplomatie inter-équipages', 'Recrutez des membres et proposez des alliances entre équipages... ou même la guerre!', NULL, 0, 7, 0),
(8, 'Animations', 'Participez ou organisez des concours afin d''animer la communauté!', NULL, 0, 8, 0),
(9, 'Commerce', 'Vendez à d''autres joueurs tous les objets que vous avez en trop !', NULL, 0, 9, 0),
(10, 'Discussions scans', 'Exprimez-vous sur les scans', NULL, 0, 10, 0),
(11, 'Tomes français', 'Exprimez-vous sur les épisodes sortis en France', NULL, 0, 11, 0),
(12, 'Vos idées', 'Proposez vos idées, elles seront peut-être réalisées', NULL, 0, 12, 0),
(13, 'Astuces & tactiques', 'Partagez vos astuces entre membres', NULL, 0, 13, 0),
(14, 'Bugs', 'Vous avez rencontré un bug ou une faille? Signalez-le ici!', NULL, 0, 14, 0),
(52, 'test', 'Forum privé de l''équipage test', NULL, 0, 50, 1),
(53, 'aaaaa', 'Forum privé de l''équipage aaaaa', NULL, 0, 50, 1),
(54, 'Starfoula', 'Forum privé de l''équipage Starfoula', NULL, 0, 50, 1),
(55, 'aezrfd', 'Forum privé de l''équipage aezrfd', NULL, 0, 50, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `forums_topics`
--

INSERT INTO `forums_topics` (`id`, `name`, `is_block`, `id_forums_categories`, `id_forums_topics_types`) VALUES
(2, 'Bienvenue sur votre forum', 0, 52, 1),
(3, 'Salle secrète', 0, 1, 1),
(4, 'Premier Topic', 0, 3, 1),
(5, 'Premier Topic', 0, 4, 1),
(6, 'Premier Topic', 0, 5, 1),
(7, 'Premier Topic', 0, 6, 1),
(8, 'Premier Topic', 0, 7, 1),
(9, 'Premier Topic', 0, 8, 1),
(10, 'Premier Topic', 0, 9, 1),
(11, 'Premier Topic', 0, 10, 1),
(12, 'Premier Topic', 0, 11, 1),
(13, 'Premier Topic', 0, 12, 1),
(14, 'Premier Topic', 0, 13, 1),
(15, 'Premier Topic', 0, 14, 1),
(16, 'Test nouveau topic', 0, 8, 1),
(17, 'test', 0, 4, 1),
(18, 'F.A.Q', 0, 2, 1),
(19, 'Bienvenue sur votre forum', 0, 53, 1),
(20, 'Bienvenue sur votre forum', 0, 54, 1),
(21, 'Bienvenue sur votre forum', 0, 55, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `forums_topics_messages`
--

INSERT INTO `forums_topics_messages` (`id`, `message`, `date_time`, `is_block`, `id_forums_topics`, `id_users`) VALUES
(2, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1446207986, 0, 2, 13),
(3, 'Premier message', 1446207986, 0, 3, 10),
(4, 'Premier message', 1446207986, 0, 4, 10),
(5, 'Premier message', 1446207986, 0, 5, 10),
(6, 'Premier message', 1446207986, 0, 6, 10),
(7, 'Premier message', 1446207986, 0, 7, 10),
(8, 'Premier message', 1446207986, 0, 8, 10),
(9, 'Premier message', 1446207986, 0, 9, 10),
(10, 'Premier message', 1446207986, 0, 10, 10),
(11, 'Premier message', 1446207986, 0, 11, 10),
(12, 'Premier message', 1446207986, 0, 12, 10),
(13, 'Premier message', 1446207986, 0, 13, 10),
(14, 'Premier message', 1446207986, 0, 14, 10),
(15, 'Premier message', 1446207986, 0, 15, 10),
(16, '<p>Petit test pour voir&nbsp;</p>\r\n', 1446209666, 0, 16, 33),
(17, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ut volutpat dui. Aenean fringilla ante vitae tincidunt lacinia. Sed porttitor, ante id mattis hendrerit, arcu sem imperdiet arcu, sed tempor nisi metus nec erat. Phasellus placerat magna sodales nisl lacinia accumsan. Quisque tristique arcu ut iaculis facilisis. Aenean vehicula tempor massa fermentum hendrerit. Quisque eu lobortis velit. Aliquam congue sapien eget tempus varius. Suspendisse id ligula diam. Ut in dui augue.</p>\r\n\r\n<p style="text-align: justify;">Vestibulum pulvinar pretium diam. Curabitur porttitor orci sed nunc aliquam, ac condimentum nunc condimentum. In vitae blandit metus. Suspendisse potenti. Praesent tempor faucibus ornare. Praesent a tellus ut mi luctus tincidunt. Nullam nec erat finibus, posuere justo non, tincidunt ex. Mauris vestibulum tortor at placerat malesuada. Pellentesque vitae cursus urna. Vivamus rutrum ex a mauris molestie, in maximus nisl molestie. Curabitur venenatis metus nec sagittis auctor. Nunc in lorem accumsan, semper dui et, tincidunt risus. Phasellus pharetra magna neque, eu facilisis diam sollicitudin sed. Praesent congue vestibulum leo malesuada consectetur. Mauris in diam ut dolor scelerisque laoreet. Nam bibendum, nisi sit amet mollis ultricies, quam tellus cursus augue, eu hendrerit erat orci at risus.</p>\r\n', 1446213346, 0, 3, 10),
(18, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eget justo velit. Aliquam rhoncus consequat purus, sed mollis metus accumsan at. Vivamus condimentum vitae nibh nec dapibus. Etiam dolor nibh, venenatis id mauris porta, faucibus vehicula ipsum. Cras in nisi vitae sem viverra varius eget sit amet enim. Pellentesque in sapien eget purus blandit ornare sit amet nec orci. Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam ut nulla mauris. Sed ac dui eget lorem fringilla euismod. Aliquam ac commodo nulla. Sed sed vulputate lectus, id tempor tortor. Sed consequat ipsum sit amet lectus bibendum porta. Aenean sagittis sapien nec ex feugiat gravida. Phasellus ornare elit at ligula lacinia volutpat. Nam eget tincidunt erat, quis venenatis dolor. Vestibulum tortor nibh, laoreet et ex eu, tempor interdum risus.</p>\r\n\r\n<p style="text-align: justify;">Aliquam posuere massa quis dui bibendum, sed vehicula nisl eleifend. Sed quis bibendum velit. Vestibulum rhoncus, nulla ut pulvinar porta, risus turpis congue ex, nec rutrum mi sem sed urna. Pellentesque vel lectus ut orci gravida ultrices eget eget dui. In luctus tortor sagittis molestie iaculis. Praesent sit amet dignissim sapien, vitae sodales tellus. Maecenas posuere a eros ornare ullamcorper. Etiam eget quam imperdiet, malesuada ex sed, placerat mi. Sed libero purus, interdum at pharetra at, faucibus et ante. Sed vitae vulputate urna, ut aliquet metus. Donec ipsum nisl, gravida et neque sed, mollis ullamcorper odio. Quisque vulputate tristique euismod. Suspendisse sit amet quam aliquam, tempor sapien eu, laoreet ante. Vestibulum lectus nisi, iaculis eu porta vitae, eleifend quis lorem.</p>\r\n', 1446213360, 0, 3, 10),
(19, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eget justo velit. Aliquam rhoncus consequat purus, sed mollis metus accumsan at. Vivamus condimentum vitae nibh nec dapibus. Etiam dolor nibh, venenatis id mauris porta, faucibus vehicula ipsum. Cras in nisi vitae sem viverra varius eget sit amet enim. Pellentesque in sapien eget purus blandit ornare sit amet nec orci. Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam ut nulla mauris. Sed ac dui eget lorem fringilla euismod. Aliquam ac commodo nulla. Sed sed vulputate lectus, id tempor tortor. Sed consequat ipsum sit amet lectus bibendum porta. Aenean sagittis sapien nec ex feugiat gravida. Phasellus ornare elit at ligula lacinia volutpat. Nam eget tincidunt erat, quis venenatis dolor. Vestibulum tortor nibh, laoreet et ex eu, tempor interdum risus.</p>\r\n', 1446213370, 0, 3, 10),
(20, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel elit et massa laoreet tincidunt sit amet eget massa. Duis vitae hendrerit velit. Suspendisse quis volutpat neque. Fusce fermentum sed tortor eget feugiat. Nullam metus libero, maximus vel sollicitudin quis, euismod at ligula. Etiam ullamcorper nisi in ante suscipit bibendum eget id metus. Fusce ut orci pulvinar, facilisis libero in, tempus massa. Quisque malesuada pellentesque vehicula. Cras cursus purus ut tincidunt sollicitudin. Sed convallis, eros ac mattis commodo, sapien quam pretium neque, sit amet aliquet ipsum nisl in elit. Quisque interdum non nulla ut venenatis. Praesent nulla risus, gravida vitae lacus vel, porttitor vulputate augue.</p>\r\n\r\n<p style="text-align: justify;">Nam auctor, risus et accumsan imperdiet, felis mi commodo erat, non fringilla ligula dolor eget metus. Ut ut dapibus turpis. Ut dui nisl, viverra vitae nibh quis, rhoncus fermentum lectus. Maecenas feugiat tempus mi quis elementum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc interdum mauris eu urna vestibulum, nec consequat orci tempus. Nulla semper dictum mauris id feugiat. Nam quis imperdiet quam, sed eleifend justo. Donec vitae risus sem. Donec iaculis lectus eu quam malesuada, sed rhoncus purus dignissim. Phasellus laoreet est vitae velit gravida, at commodo enim rhoncus.</p>\r\n', 1446213409, 0, 3, 10),
(21, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tellus diam, varius vel condimentum at, dictum eu massa. Integer eget libero eu magna ornare malesuada eu vitae magna. Mauris eget laoreet ante. Nulla vel tortor in erat feugiat aliquet at quis tellus. Cras ipsum neque, pretium in ullamcorper vel, egestas quis neque. Maecenas in lobortis mi. Donec laoreet mauris et nisl ullamcorper facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia purus purus, vel scelerisque leo aliquet sed. Aliquam egestas lacus urna, varius suscipit nulla faucibus quis. Donec magna enim, ullamcorper eu turpis quis, auctor blandit purus.</p>\r\n', 1446213422, 0, 3, 10),
(22, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tellus diam, varius vel condimentum at, dictum eu massa. Integer eget libero eu magna ornare malesuada eu vitae magna. Mauris eget laoreet ante. Nulla vel tortor in erat feugiat aliquet at quis tellus. Cras ipsum neque, pretium in ullamcorper vel, egestas quis neque. Maecenas in lobortis mi. Donec laoreet mauris et nisl ullamcorper facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia purus purus, vel scelerisque leo aliquet sed. Aliquam egestas lacus urna, varius suscipit nulla faucibus quis. Donec magna enim, ullamcorper eu turpis quis, auctor blandit purus.</p>\r\n\r\n<p style="text-align: justify;">Phasellus tristique, elit quis tincidunt ultricies, dolor leo luctus tortor, id pellentesque ligula magna nec ipsum. Fusce porta enim a porttitor feugiat. Praesent tempor in metus quis elementum. Vivamus in interdum nibh. Cras luctus euismod sapien vel iaculis. Duis fringilla, turpis vitae egestas fermentum, felis turpis aliquam ipsum, nec finibus urna nulla sed velit. Curabitur rutrum mi vitae viverra finibus. Nam hendrerit odio vitae diam accumsan, in ultricies enim sagittis.</p>\r\n', 1446213436, 0, 3, 10),
(23, '<p>dfgdgfdgfdgdf</p>\r\n', 1446223047, 0, 17, 10),
(24, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis maximus lectus ut aliquet. Cras bibendum at leo a accumsan. Sed sed mi imperdiet, ultricies neque et, rutrum erat. Nam interdum, libero nec vestibulum pellentesque, nunc erat tempus est, vel sagittis ante ex non enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean congue mattis nisl, quis fermentum metus volutpat ut. Aliquam laoreet vulputate ligula vel rhoncus. Etiam lobortis quis ante quis vestibulum. Fusce et nunc nisi. Aenean vitae volutpat purus, quis elementum arcu.</p>\r\n\r\n<p>Fusce volutpat mauris enim. Nulla vel feugiat erat. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam nec mauris felis. Mauris varius efficitur fermentum. Cras risus erat, tincidunt sit amet fermentum nec, consectetur nec urna. Integer eget leo consequat, laoreet sem sed, euismod ligula. Nunc at egestas dui. Aliquam sit amet congue metus, eu efficitur nunc. Donec facilisis risus nec iaculis suscipit. In interdum lorem eget nulla porttitor, non pretium quam convallis. Nullam laoreet nisi nunc, eu condimentum massa dictum ac. Pellentesque elit ligula, rutrum a pulvinar vitae, pellentesque eu ante. In varius, elit nec congue sodales, augue urna varius nisi, ut tincidunt lorem purus id sem. Nulla id tellus blandit leo volutpat venenatis non ut tellus. Integer at massa est.</p>\r\n\r\n<p>Nunc lobortis ante mi, ac ultricies turpis gravida eu. Ut efficitur iaculis tortor in eleifend. Sed non nisl purus. Maecenas eget ullamcorper turpis. Morbi interdum justo porttitor libero sagittis, et tempus erat semper. Suspendisse vestibulum arcu non sapien malesuada placerat. Proin non massa enim.</p>\r\n\r\n<p>Nunc porttitor quam urna, ac sollicitudin nulla iaculis in. Praesent sed leo neque. Phasellus dui dolor, mattis nec mollis id, maximus in lectus. Sed ut dolor aliquam, accumsan tortor in, mollis sapien. In hac habitasse platea dictumst. Curabitur quis ipsum vitae urna iaculis dictum ac eu nibh. Aliquam at velit eget nunc maximus volutpat. Cras viverra velit in pretium aliquet. Etiam nulla dolor, viverra ut sodales nec, auctor at nisl. Vivamus sit amet pulvinar turpis, pretium sodales libero. Praesent quis fermentum elit, id fringilla risus. Maecenas quis est lacus. Nam posuere eros sed nunc faucibus, sit amet finibus purus vestibulum.</p>\r\n\r\n<p>Nullam sapien odio, gravida quis elit nec, gravida egestas lectus. Donec elementum interdum orci, eu aliquam diam posuere eget. Cras malesuada sem eget aliquet ornare. Sed consectetur lacinia efficitur. Aenean scelerisque, lorem ut facilisis tempor, sapien nibh scelerisque mi, sed malesuada dolor justo eu risus. Integer a tortor quis orci sodales tincidunt. Etiam finibus dapibus ante, vitae efficitur odio aliquam et. Duis quis lectus malesuada, posuere turpis vel, varius augue. Suspendisse nulla velit, malesuada at nibh ut, lobortis blandit orci. Cras condimentum eros tortor, sed euismod nisi lacinia ac.</p>\r\n\r\n<p>Cras tempus, urna nec tempus venenatis, justo erat finibus orci, eu congue dui urna vitae nibh. Mauris euismod nec nisi id sollicitudin. Suspendisse vitae magna vitae tellus elementum vehicula. Morbi eu accumsan neque, vel egestas arcu. Fusce rutrum pellentesque erat in scelerisque. Integer ornare sem eu turpis venenatis, id posuere nulla luctus. Sed eu dolor in augue commodo dignissim pharetra in nisl. Nullam hendrerit odio et iaculis euismod. Pellentesque id tortor risus. Maecenas imperdiet tempor risus, quis suscipit lectus. Duis purus nulla, venenatis scelerisque turpis vitae, maximus ultrices dui. Ut suscipit, libero sed malesuada porttitor, felis ex congue quam, a sollicitudin magna arcu nec libero. Maecenas fringilla viverra leo, vel dignissim sem congue et. Etiam eleifend pretium ex, vestibulum luctus metus posuere a.</p>\r\n', 1446229809, 0, 5, 10),
(25, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis maximus lectus ut aliquet. Cras bibendum at leo a accumsan. Sed sed mi imperdiet, ultricies neque et, rutrum erat. Nam interdum, libero nec vestibulum pellentesque, nunc erat tempus est, vel sagittis ante ex non enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean congue mattis nisl, quis fermentum metus volutpat ut. Aliquam laoreet vulputate ligula vel rhoncus. Etiam lobortis quis ante quis vestibulum. Fusce et nunc nisi. Aenean vitae volutpat purus, quis elementum arcu.</p>\r\n\r\n<p>Fusce volutpat mauris enim. Nulla vel feugiat erat. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam nec mauris felis. Mauris varius efficitur fermentum. Cras risus erat, tincidunt sit amet fermentum nec, consectetur nec urna. Integer eget leo consequat, laoreet sem sed, euismod ligula. Nunc at egestas dui. Aliquam sit amet congue metus, eu efficitur nunc. Donec facilisis risus nec iaculis suscipit. In interdum lorem eget nulla porttitor, non pretium quam convallis. Nullam laoreet nisi nunc, eu condimentum massa dictum ac. Pellentesque elit ligula, rutrum a pulvinar vitae, pellentesque eu ante. In varius, elit nec congue sodales, augue urna varius nisi, ut tincidunt lorem purus id sem. Nulla id tellus blandit leo volutpat venenatis non ut tellus. Integer at massa est.</p>\r\n\r\n<p>Nunc lobortis ante mi, ac ultricies turpis gravida eu. Ut efficitur iaculis tortor in eleifend. Sed non nisl purus. Maecenas eget ullamcorper turpis. Morbi interdum justo porttitor libero sagittis, et tempus erat semper. Suspendisse vestibulum arcu non sapien malesuada placerat. Proin non massa enim.</p>\r\n\r\n<p>Nunc porttitor quam urna, ac sollicitudin nulla iaculis in. Praesent sed leo neque. Phasellus dui dolor, mattis nec mollis id, maximus in lectus. Sed ut dolor aliquam, accumsan tortor in, mollis sapien. In hac habitasse platea dictumst. Curabitur quis ipsum vitae urna iaculis dictum ac eu nibh. Aliquam at velit eget nunc maximus volutpat. Cras viverra velit in pretium aliquet. Etiam nulla dolor, viverra ut sodales nec, auctor at nisl. Vivamus sit amet pulvinar turpis, pretium sodales libero. Praesent quis fermentum elit, id fringilla risus. Maecenas quis est lacus. Nam posuere eros sed nunc faucibus, sit amet finibus purus vestibulum.</p>\r\n', 1446229816, 0, 5, 10),
(26, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis maximus lectus ut aliquet. Cras bibendum at leo a accumsan. Sed sed mi imperdiet, ultricies neque et, rutrum erat. Nam interdum, libero nec vestibulum pellentesque, nunc erat tempus est, vel sagittis ante ex non enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean congue mattis nisl, quis fermentum metus volutpat ut. Aliquam laoreet vulputate ligula vel rhoncus. Etiam lobortis quis ante quis vestibulum. Fusce et nunc nisi. Aenean vitae volutpat purus, quis elementum arcu.</p>\r\n\r\n<p>Fusce volutpat mauris enim. Nulla vel feugiat erat. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam nec mauris felis. Mauris varius efficitur fermentum. Cras risus erat, tincidunt sit amet fermentum nec, consectetur nec urna. Integer eget leo consequat, laoreet sem sed, euismod ligula. Nunc at egestas dui. Aliquam sit amet congue metus, eu efficitur nunc. Donec facilisis risus nec iaculis suscipit. In interdum lorem eget nulla porttitor, non pretium quam convallis. Nullam laoreet nisi nunc, eu condimentum massa dictum ac. Pellentesque elit ligula, rutrum a pulvinar vitae, pellentesque eu ante. In varius, elit nec congue sodales, augue urna varius nisi, ut tincidunt lorem purus id sem. Nulla id tellus blandit leo volutpat venenatis non ut tellus. Integer at massa est.</p>\r\n', 1446229829, 0, 5, 10),
(27, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis maximus lectus ut aliquet. Cras bibendum at leo a accumsan. Sed sed mi imperdiet, ultricies neque et, rutrum erat. Nam interdum, libero nec vestibulum pellentesque, nunc erat tempus est, vel sagittis ante ex non enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean congue mattis nisl, quis fermentum metus volutpat ut. Aliquam laoreet vulputate ligula vel rhoncus. Etiam lobortis quis ante quis vestibulum. Fusce et nunc nisi. Aenean vitae volutpat purus, quis elementum arcu.</p>\r\n\r\n<p style="text-align: justify;">Fusce volutpat mauris enim. Nulla vel feugiat erat. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam nec mauris felis. Mauris varius efficitur fermentum. Cras risus erat, tincidunt sit amet fermentum nec, consectetur nec urna. Integer eget leo consequat, laoreet sem sed, euismod ligula. Nunc at egestas dui. Aliquam sit amet congue metus, eu efficitur nunc. Donec facilisis risus nec iaculis suscipit. In interdum lorem eget nulla porttitor, non pretium quam convallis. Nullam laoreet nisi nunc, eu condimentum massa dictum ac. Pellentesque elit ligula, rutrum a pulvinar vitae, pellentesque eu ante. In varius, elit nec congue sodales, augue urna varius nisi, ut tincidunt lorem purus id sem. Nulla id tellus blandit leo volutpat venenatis non ut tellus. Integer at massa est.</p>\r\n', 1446229841, 0, 5, 10),
(28, '<p>Petit test pour voir si &ccedil;a marche bien!<br />\r\nBlabla bla blaPetit test pour voir si &ccedil;a marche bien!<br />\r\nBlabla bla bla</p>\r\n\r\n<p>Petit test pour voir si &ccedil;a marche bien!<br />\r\nBlabla bla bla</p>\r\n', 1446298791, 0, 16, 34),
(29, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tristique cursus justo, a luctus sem eleifend eu. Curabitur consequat enim vel tristique congue. Mauris tempus facilisis aliquam. Aliquam orci eros, vulputate vitae blandit vel, porta at diam. Suspendisse potenti. Maecenas consectetur tempor tincidunt. Vivamus dolor velit, pharetra in metus et, vulputate semper velit. Ut vel ipsum mattis, pellentesque risus vel, dictum risus. Vestibulum placerat eleifend auctor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec et odio at nibh cursus ultricies at sagittis ex. Integer at tortor convallis, vehicula sem eu, placerat quam. Cras magna risus, viverra commodo turpis ac, accumsan pretium nisi. Ut velit tortor, efficitur vel posuere nec, blandit eu ipsum. Vestibulum nec vulputate velit, eu efficitur ante. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\r\n\r\n<p style="text-align: justify;">Quisque tempor purus nec lectus tincidunt rhoncus. Aenean risus massa, ullamcorper quis nulla sed, elementum porttitor nibh. Phasellus sed libero et leo laoreet elementum. Suspendisse potenti. Donec justo nulla, mattis a turpis tincidunt, interdum tristique mi. Maecenas mollis nibh sit amet convallis vestibulum. Maecenas vel accumsan tellus, non tincidunt orci. Curabitur fermentum commodo nulla in sollicitudin. Morbi in nulla velit. Vestibulum a risus tellus. Ut velit orci, ultrices et blandit at, rhoncus id magna. In facilisis tempor finibus. Suspendisse vehicula fringilla ante, nec dictum dui bibendum a. Sed ac pretium enim. Nulla dui leo, porta ac velit maximus, pellentesque scelerisque nunc.</p>\r\n\r\n<p style="text-align: justify;">Vestibulum venenatis et purus sed ornare. Cras id nibh eget lorem vulputate laoreet. Proin porttitor, justo sit amet pharetra blandit, nisi ligula gravida turpis, vitae efficitur erat diam eu elit. Phasellus ut nunc non est condimentum laoreet a sit amet risus. Suspendisse nec felis tincidunt, fringilla ex in, tincidunt nisl. Etiam nibh elit, consectetur sed sagittis eu, condimentum sed lorem. Etiam a auctor ex. Duis vel nisi a tortor egestas euismod. Quisque non lorem vitae orci lacinia blandit. Etiam nisi nibh, laoreet nec tempor eget, maximus quis augue. Vestibulum rutrum quis metus non pretium. Proin ullamcorper quis dolor quis dictum.</p>\r\n', 1446300642, 0, 16, 10),
(30, '<p>fdfsdfsgfdgfdgdfgfdgf</p>\r\n', 1446300675, 0, 16, 34),
(31, '<p>Arr&ecirc;te</p>\r\n', 1446300680, 0, 16, 34),
(32, '<p>tsddsgdf</p>\r\n', 1446316127, 0, 18, 10),
(33, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1446331061, 0, 19, 13),
(34, '<p>TEST</p>\r\n', 1446331768, 0, 5, 34),
(35, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1446337576, 0, 20, 13),
(36, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1446390991, 0, 21, 13),
(37, '<p>Petit test Avatar !</p>\r\n', 1446416835, 0, 6, 36);

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `news`
--

INSERT INTO `news` (`id`, `title`, `date_time`, `message`, `is_block`, `id_users`) VALUES
(13, 'Petite news', 1446211183, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed enim tellus. Vivamus eget sapien in ante laoreet tempor. Vivamus sed euismod mi. Aenean id sollicitudin libero, a dictum velit. In et venenatis tortor. Vivamus nec leo libero. Proin faucibus placerat urna non sollicitudin. Cras ac imperdiet tellus, eget ornare sapien.</p>\r\n\r\n<p style="text-align: justify;">Praesent in sapien a tellus ornare tempor a sed sapien. Praesent ac orci nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In sit amet leo ac risus gravida dapibus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam sodales augue pretium, ultrices tellus convallis, porta elit. Nulla elementum velit in ex efficitur, nec iaculis odio luctus.</p>\r\n\r\n<p style="text-align: justify;">Maecenas ut velit in urna placerat gravida ac eget lectus. Nunc enim felis, consectetur non pharetra porttitor, egestas id neque. Etiam elit tellus, mattis dignissim eleifend at, tincidunt eget metus. Integer nunc massa, rhoncus ac ante eu, tristique tristique leo. Aliquam iaculis fringilla quam non lacinia. In sit amet tristique quam. Quisque vitae volutpat est.</p>\r\n\r\n<p style="text-align: justify;">Integer non efficitur lectus. Nulla ac ante euismod, ultricies ipsum et, iaculis sapien. Nullam enim tellus, lacinia eget felis sagittis, volutpat condimentum enim. Maecenas dignissim porta dolor, a fringilla enim dignissim ac. Proin molestie sed felis consectetur condimentum. Sed commodo consectetur metus nec lacinia. Fusce justo turpis, pellentesque fringilla tristique vitae, fringilla et neque. In eget ornare diam, vitae rutrum nunc. Ut sit amet nisl auctor, malesuada augue accumsan, sagittis turpis. Curabitur malesuada vehicula magna, et auctor augue maximus sit amet. Cras semper lacinia augue, sit amet viverra erat tempor eu. Nunc non velit hendrerit, lobortis metus ac, pharetra lectus.</p>\r\n\r\n<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at laoreet ante, a viverra ipsum. Integer consequat metus in dolor vehicula, eu interdum orci volutpat. Vestibulum eget mauris pharetra, vehicula lorem a, vestibulum massa. Nam ac lacinia ligula, ut convallis justo. Duis ut massa volutpat, imperdiet lorem sed, consectetur magna. Morbi aliquam justo ac diam facilisis pharetra. Nam eget commodo tellus. Sed eu tortor laoreet, aliquet mi eu, semper sapien. Nulla consectetur enim porta odio semper, et commodo ipsum fermentum.</p>\r\n', 0, 10),
(14, 'Deuxième news', 1446211201, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vulputate lectus nec ligula mollis, et tincidunt neque gravida. Curabitur a venenatis mi. Cras nec pellentesque est, eget tristique ipsum. Integer eget tincidunt lacus, non posuere erat. Suspendisse accumsan lorem nec neque posuere lobortis. Aliquam nec felis vel lacus mattis faucibus vitae ac tellus. Nulla felis magna, placerat in luctus nec, posuere in lacus. In dapibus faucibus magna sed condimentum. Donec quis arcu elit.</p>\r\n\r\n<p style="text-align: justify;">Duis interdum nisi orci, sit amet blandit felis porttitor vel. Nullam interdum neque ac felis semper aliquam. Aenean tempor nulla laoreet quam rhoncus pellentesque. Phasellus diam quam, tristique eu metus at, congue iaculis libero. Vivamus a dolor a dui congue tristique. Etiam facilisis ipsum at lorem placerat, quis lobortis diam fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi non porta libero. Vivamus faucibus, nisi non scelerisque vestibulum, dolor enim mollis leo, quis cursus nisl leo hendrerit nunc. Mauris nulla erat, efficitur eu consequat et, consectetur in mauris. Fusce at euismod orci. Fusce in ligula at sapien iaculis congue. Donec sit amet auctor mi. In commodo egestas eros, nec porta nulla tempus a.</p>\r\n\r\n<p style="text-align: justify;">Vestibulum massa eros, pretium id nisl ac, vulputate convallis eros. Etiam vestibulum, nunc nec pulvinar laoreet, nulla enim porttitor diam, sit amet facilisis magna magna vel est. Vestibulum finibus dignissim quam at mattis. Sed vestibulum quam feugiat tincidunt bibendum. Vivamus dignissim libero quis pulvinar fermentum. Sed fermentum tortor non enim molestie, ac auctor eros egestas. Etiam ligula sapien, mattis non nunc id, condimentum hendrerit risus. Donec vel dolor nibh. Proin pharetra tempus malesuada. Quisque quis finibus velit, nec consequat sem.</p>\r\n\r\n<p style="text-align: justify;">Sed volutpat fermentum libero et condimentum. Vivamus eget congue magna. Nulla lobortis sagittis justo vel posuere. In rhoncus arcu a augue volutpat tristique. Sed sed dictum nunc, in pulvinar elit. Morbi quis imperdiet justo. Quisque a nibh euismod, pharetra mauris nec, luctus lorem. In aliquam ex id ex fringilla, at dignissim sapien facilisis. Nullam in dolor ligula. Sed feugiat sem vel diam venenatis, non aliquet libero porttitor. Integer vel aliquam mi. Duis dictum mollis elit, sit amet elementum nunc aliquet ac. Ut fermentum, ipsum in faucibus accumsan, est eros suscipit enim, id luctus justo risus in nibh. Nulla id commodo quam. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>\r\n\r\n<p style="text-align: justify;">Aliquam at arcu suscipit, sollicitudin nulla eget, efficitur elit. Quisque eu velit eleifend, tristique ipsum sit amet, imperdiet dui. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla ac metus iaculis, lobortis lectus sed, volutpat lectus. In eu ante consequat, tincidunt ex eget, pharetra erat. Fusce finibus velit nec libero luctus vulputate. Nunc varius id massa sit amet maximus. Nulla vulputate laoreet nulla, quis fermentum tellus gravida sit amet.</p>\r\n', 0, 10),
(15, 'Troisième news', 1446211219, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam suscipit dui felis, a sollicitudin purus suscipit ut. Aliquam erat volutpat. Duis tristique condimentum sem, id mattis nisi hendrerit quis. In quis sapien rhoncus, tempus erat a, pulvinar lorem. Proin vel urna rutrum, molestie erat eget, ornare velit. Nullam viverra nulla et lacus mollis, in molestie velit fringilla. Curabitur volutpat luctus ultrices. Donec in pharetra nulla. Nunc odio nulla, luctus a nisl quis, tempus malesuada mi.</p>\r\n\r\n<p style="text-align: justify;">Integer pharetra risus a est euismod vestibulum. In lacinia malesuada magna, sit amet venenatis risus sodales in. Morbi neque tellus, pellentesque non arcu sed, consectetur mollis est. Cras sit amet mollis eros. Phasellus turpis augue, tempus eget finibus eu, viverra in justo. Nam ornare lorem a ligula sodales ullamcorper. Suspendisse condimentum blandit pulvinar. Sed enim dui, sagittis sed lorem et, mollis lobortis tortor. Sed ultricies magna faucibus justo tincidunt mattis. Nulla facilisi. Etiam molestie cursus nisl tempor maximus. In pellentesque aliquet est ac dapibus. Praesent eget velit in lectus aliquet lacinia. Curabitur sit amet velit vitae est pharetra sodales non quis ante.</p>\r\n\r\n<p style="text-align: justify;">Mauris nisl magna, auctor id nisl id, volutpat venenatis velit. Vestibulum aliquam erat non diam tempus dignissim. Maecenas pharetra dignissim justo, vel dictum elit sagittis ac. Aenean semper sit amet magna vitae facilisis. Nunc ipsum ex, mattis nec risus vel, fringilla pretium dolor. Nulla a augue aliquam, gravida odio malesuada, imperdiet nulla. Nulla facilisi. Sed vel neque magna. Donec dapibus vestibulum nibh, vitae mollis turpis pulvinar vitae. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\r\n\r\n<p style="text-align: justify;">Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris sodales sodales ipsum. Mauris ac metus non tortor tristique tristique in non arcu. Maecenas libero metus, dictum et blandit vitae, congue hendrerit purus. Aenean at neque id elit facilisis aliquam in eget lorem. Fusce eu convallis massa, vel interdum ante. Maecenas eu velit tellus. Suspendisse dapibus lorem vitae arcu commodo efficitur.</p>\r\n\r\n<p style="text-align: justify;">Quisque semper justo finibus sapien tincidunt viverra. Duis sed congue est. Donec varius tortor sit amet lorem tristique viverra. Suspendisse molestie non urna non eleifend. Maecenas pretium justo vitae lorem volutpat, et ornare tellus porta. Nulla dictum nisl non aliquet molestie. Morbi pretium et elit sed lobortis. Cras semper egestas augue quis luctus. Ut varius lorem id feugiat fringilla. Mauris pulvinar nisl lacus, id vulputate lectus bibendum sit amet. Sed porta tempor purus eget dictum. Phasellus tincidunt sem nunc, non tincidunt elit consequat quis. Aliquam sed ultricies libero. Mauris ante risus, pulvinar non egestas non, dapibus vitae nisl.</p>\r\n', 0, 10),
(16, '4eme news', 1446211251, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam orci est, imperdiet nec ultricies pharetra, fringilla non erat. Nam ut ante condimentum, aliquet eros in, gravida tortor. Maecenas non porta quam, vitae semper turpis. Pellentesque commodo et tellus et efficitur. Maecenas sed risus id nibh ultrices convallis non non massa. Aliquam nec mi dapibus, efficitur ipsum sed, volutpat lacus. Interdum et malesuada fames ac ante ipsum primis in faucibus. In volutpat turpis erat, et viverra mauris auctor congue. Integer pulvinar condimentum scelerisque. Sed dapibus vel urna a interdum. Duis blandit magna nisi, eu viverra dolor consectetur id. Mauris consequat porta purus eget tristique. Aenean pulvinar lorem lacus, vitae rhoncus metus volutpat in. Suspendisse eleifend, justo viverra imperdiet aliquam, sapien metus ornare magna, non mattis ante nisi vel diam. Sed dictum felis eu aliquam molestie.</p>\r\n\r\n<p style="text-align: justify;">Suspendisse tincidunt justo ut mauris dapibus mattis. In hac habitasse platea dictumst. Maecenas porttitor semper purus, ut mollis urna dapibus ac. In accumsan sapien non erat consectetur, sed dapibus diam hendrerit. Cras in sem efficitur, ultrices augue vitae, facilisis sem. Sed vitae arcu accumsan, consequat urna in, ultrices velit. Sed at sagittis tortor, eget viverra tortor. Nulla fermentum nec velit quis mattis. Etiam pharetra ligula sed sapien mattis, tincidunt iaculis sapien semper. Nulla facilisi. Integer blandit mollis metus. Aliquam auctor aliquam cursus.</p>\r\n\r\n<p style="text-align: justify;">Vestibulum eros dolor, porttitor ac eros id, gravida fermentum nisl. Etiam semper urna et felis gravida semper. Praesent turpis metus, porta quis turpis eu, auctor posuere ante. Duis eleifend purus ut dolor congue, non tempor eros fringilla. Donec semper lobortis mauris vel elementum. Suspendisse at tortor sit amet urna congue sagittis eu gravida mi. Nunc consequat enim ut turpis ornare, id sollicitudin mi consequat.</p>\r\n\r\n<p style="text-align: justify;">Praesent non metus vitae nisi sagittis mattis. Maecenas ornare dignissim odio. Morbi vitae velit mollis, lacinia diam eu, luctus dolor. In et ex porttitor, vestibulum neque ut, rutrum est. Quisque vulputate ut risus vel efficitur. Suspendisse in auctor justo. Sed eu purus velit. Phasellus id eros ut felis lacinia commodo sit amet a augue. Phasellus malesuada lorem nunc, vel facilisis ex eleifend ultricies. Curabitur ac cursus magna. Donec a congue neque, in malesuada urna. Proin sollicitudin ligula enim, ac fringilla dui pretium ac. Duis cursus leo quis sem convallis vehicula.</p>\r\n\r\n<p style="text-align: justify;">Quisque aliquet erat id dui bibendum feugiat in ut ex. Pellentesque tristique ipsum metus, vitae pulvinar mauris malesuada eu. Curabitur id cursus quam. Ut commodo dignissim sodales. Duis vestibulum massa ac leo tincidunt, eget lobortis ante auctor. Pellentesque ultricies ullamcorper arcu sed consequat. Pellentesque sit amet elementum nibh. Proin orci metus, molestie et orci sed, imperdiet ultricies lectus. Nunc eget arcu id arcu vehicula luctus at quis mi. Mauris dui urna, ultricies sodales venenatis a, consectetur quis odio. Sed arcu lacus, consequat ac tortor in, egestas scelerisque magna. Ut aliquet neque vel elit consectetur molestie cursus ut nunc. Aliquam auctor feugiat ex, at pellentesque mauris cursus sed. Duis laoreet nulla sed urna egestas, eu pulvinar nunc bibendum. Nullam luctus pellentesque dolor, sit amet eleifend ipsum accumsan vitae.</p>\r\n', 0, 10),
(17, '5eme news', 1446211268, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nec neque laoreet, eleifend sem sed, condimentum dolor. Quisque malesuada convallis accumsan. Fusce quis sapien at risus finibus sodales sit amet et diam. Curabitur sodales vitae ipsum nec interdum. Cras hendrerit viverra lacinia. Etiam pulvinar leo sem, sed gravida tellus venenatis ac. Curabitur non volutpat lacus. Nulla vel laoreet tellus. Ut accumsan urna ac varius hendrerit. Nulla auctor consectetur pretium. Sed eget tempor arcu, sed pulvinar ex. Donec dictum justo nec venenatis rutrum. Maecenas vulputate fermentum ultricies. Maecenas vel ullamcorper magna. Vivamus iaculis sapien at eros aliquet, sit amet euismod lacus venenatis.</p>\r\n\r\n<p style="text-align: justify;">Etiam malesuada eros leo, quis ultrices ex tincidunt in. Suspendisse potenti. Nunc et ligula commodo, placerat quam eget, suscipit nulla. In viverra nibh pulvinar tellus euismod, sed cursus augue scelerisque. Vestibulum eget eros quis risus volutpat finibus. Aliquam malesuada ipsum lacus, vitae sollicitudin sem sagittis eu. Cras suscipit pellentesque pellentesque. In dapibus sed risus sit amet pretium. Vivamus tortor leo, pulvinar sit amet magna vel, facilisis vestibulum risus. Morbi pretium felis vitae erat lacinia molestie. Nullam scelerisque tellus quis felis vehicula tempor. Morbi ullamcorper metus odio, eget facilisis purus lacinia ut. In rutrum risus a magna pretium fermentum. Nunc auctor ante ut magna faucibus, tempus congue metus maximus. Maecenas tincidunt tellus vitae turpis ornare sollicitudin.</p>\r\n\r\n<p style="text-align: justify;">Etiam ornare scelerisque mollis. Aliquam fringilla sed metus sed luctus. Curabitur ac placerat ipsum, in dapibus eros. Nulla ut dolor ac erat consectetur tincidunt. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam at viverra nulla, in suscipit metus. Suspendisse aliquam id est nec malesuada. Cras non sem bibendum, semper libero sit amet, congue velit.</p>\r\n\r\n<p style="text-align: justify;">Mauris et ultrices ante, non venenatis enim. Fusce commodo in ipsum sed iaculis. Nullam eget tellus nisi. Morbi ultrices rutrum feugiat. Morbi sed elit laoreet ligula tincidunt consectetur. Quisque commodo nunc at feugiat lobortis. Integer elementum ante tortor, at auctor purus varius sit amet.</p>\r\n\r\n<p style="text-align: justify;">Nunc vehicula turpis nec ex gravida tincidunt sed eu ex. Suspendisse vitae laoreet turpis. Suspendisse pellentesque quam lacus, et elementum nisl tempor vel. Aenean finibus eu ipsum at venenatis. Quisque luctus laoreet lectus, a dictum enim. Proin quis interdum nisl, ut hendrerit tellus. In ut viverra ligula. Nunc sed nisi tristique, facilisis ante eu, pellentesque neque.</p>\r\n', 0, 10);

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `news_comments`
--

INSERT INTO `news_comments` (`id`, `date_time`, `message`, `is_block`, `id_users`, `id_news`) VALUES
(20, 1446211793, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu congue risus. Ut vulputate nibh in malesuada interdum. Duis cursus risus a nisl consectetur, a elementum nulla pellentesque. Suspendisse sed nisi orci. Maecenas venenatis condimentum porta. Duis pretium nunc non mauris egestas dapibus. Fusce vehicula enim in consequat imperdiet. Nullam eu fermentum lectus, vel venenatis arcu.</p>\r\n\r\n<p style="text-align: justify;">Vivamus malesuada odio eu enim tempor, quis ornare ante malesuada. Proin ultrices pulvinar risus ac vestibulum. Cras consectetur magna sed tincidunt gravida. Aliquam vestibulum consequat scelerisque. Donec porta dictum eleifend. Duis ac arcu nec eros ornare ultrices vel sed enim. Phasellus mollis, arcu id laoreet tincidunt, erat nibh tempus est, non ornare ex nisl non nibh. Pellentesque aliquet a tellus in dapibus. Aenean ornare arcu sed diam tristique ultrices. Aliquam ipsum est, sodales ac orci eu, efficitur lobortis enim. In hendrerit vel turpis ac sollicitudin. Fusce finibus semper lorem. Maecenas nec est quis nisl mattis sodales quis eget velit. Curabitur volutpat, odio sit amet semper commodo, ex ante suscipit risus, eu facilisis dolor magna ut enim. Pellentesque massa dui, posuere eu mollis eget, posuere non nulla.</p>\r\n', 0, 10, 17),
(21, 1446211806, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu congue risus. Ut vulputate nibh in malesuada interdum. Duis cursus risus a nisl consectetur, a elementum nulla pellentesque. Suspendisse sed nisi orci. Maecenas venenatis condimentum porta. Duis pretium nunc non mauris egestas dapibus. Fusce vehicula enim in consequat imperdiet. Nullam eu fermentum lectus, vel venenatis arcu.</p>\r\n', 0, 10, 17),
(22, 1446211825, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis ullamcorper felis, malesuada lacinia odio. Sed eget purus augue. Fusce dapibus consectetur eros quis semper. Ut eget dapibus nunc. Mauris eget ligula ut quam porttitor fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed commodo, leo in iaculis blandit, mi risus lacinia quam, vitae aliquet nisl sapien at sapien. Cras eget odio condimentum, fermentum purus quis, tempus libero. Sed tempus nisi vel consectetur sollicitudin. Aliquam eu ultrices eros, id maximus urna. Morbi elementum felis urna, at congue ligula convallis nec. Fusce hendrerit at felis ac fermentum. Etiam gravida leo ut arcu porttitor eleifend.</p>\r\n', 0, 10, 17),
(23, 1446211835, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis ullamcorper felis, malesuada lacinia odio. Sed eget purus augue. Fusce dapibus consectetur eros quis semper. Ut eget dapibus nunc. Mauris eget ligula ut quam porttitor fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed commodo, leo in iaculis blandit, mi risus lacinia quam, vitae aliquet nisl sapien at sapien. Cras eget odio condimentum, fermentum purus quis, tempus libero. Sed tempus nisi vel consectetur sollicitudin. Aliquam eu ultrices eros, id maximus urna. Morbi elementum felis urna, at congue ligula convallis nec. Fusce hendrerit at felis ac fermentum. Etiam gravida leo ut arcu porttitor eleifend.</p>\r\n\r\n<p style="text-align: justify;">Cras ut augue efficitur, commodo sapien non, pretium urna. Sed quis efficitur enim. Nam non mollis ligula. Curabitur nec tempus enim. In laoreet dictum sem, ac malesuada augue lobortis quis. Duis pretium ligula eget lorem pellentesque, a lobortis tellus aliquam. Pellentesque pellentesque lacus eget tempus pulvinar. Nunc a egestas magna, a porta mauris. Phasellus nec rhoncus ligula. Proin id diam eu mi varius sodales a in enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\r\n', 0, 10, 17),
(24, 1446211850, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ultrices ipsum non justo placerat posuere. Aenean enim orci, ornare in dolor vel, aliquam mattis lacus. Aenean ornare leo ipsum, sit amet elementum dolor eleifend in. Integer lorem ante, vehicula id accumsan eu, vulputate quis orci. Nam at erat mi. Donec vel mauris in ligula tristique malesuada. Donec erat dolor, porta ut sodales gravida, feugiat sed ligula. Mauris dictum dui odio, ut tempus tellus commodo vel. Maecenas fermentum venenatis orci quis interdum. Quisque sit amet quam neque. Suspendisse potenti.</p>\r\n\r\n<p style="text-align: justify;">Praesent varius vehicula nisi, ut dapibus erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam maximus eros in libero consectetur, ut tincidunt odio varius. Donec auctor vel risus a imperdiet. Integer vel laoreet ante. Cras porttitor, turpis sed finibus venenatis, nisi enim egestas odio, non interdum purus ex at eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin lobortis lacinia neque ac blandit. Integer ut convallis diam. In ac feugiat ligula.</p>\r\n', 0, 10, 17),
(25, 1446211872, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ut volutpat dui. Aenean fringilla ante vitae tincidunt lacinia. Sed porttitor, ante id mattis hendrerit, arcu sem imperdiet arcu, sed tempor nisi metus nec erat. Phasellus placerat magna sodales nisl lacinia accumsan. Quisque tristique arcu ut iaculis facilisis. Aenean vehicula tempor massa fermentum hendrerit. Quisque eu lobortis velit. Aliquam congue sapien eget tempus varius. Suspendisse id ligula diam. Ut in dui augue.</p>\r\n\r\n<p style="text-align: justify;">Vestibulum pulvinar pretium diam. Curabitur porttitor orci sed nunc aliquam, ac condimentum nunc condimentum. In vitae blandit metus. Suspendisse potenti. Praesent tempor faucibus ornare. Praesent a tellus ut mi luctus tincidunt. Nullam nec erat finibus, posuere justo non, tincidunt ex. Mauris vestibulum tortor at placerat malesuada. Pellentesque vitae cursus urna. Vivamus rutrum ex a mauris molestie, in maximus nisl molestie. Curabitur venenatis metus nec sagittis auctor. Nunc in lorem accumsan, semper dui et, tincidunt risus. Phasellus pharetra magna neque, eu facilisis diam sollicitudin sed. Praesent congue vestibulum leo malesuada consectetur. Mauris in diam ut dolor scelerisque laoreet. Nam bibendum, nisi sit amet mollis ultricies, quam tellus cursus augue, eu hendrerit erat orci at risus.</p>\r\n\r\n<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ut volutpat dui. Aenean fringilla ante vitae tincidunt lacinia. Sed porttitor, ante id mattis hendrerit, arcu sem imperdiet arcu, sed tempor nisi metus nec erat. Phasellus placerat magna sodales nisl lacinia accumsan. Quisque tristique arcu ut iaculis facilisis. Aenean vehicula tempor massa fermentum hendrerit. Quisque eu lobortis velit. Aliquam congue sapien eget tempus varius. Suspendisse id ligula diam. Ut in dui augue.</p>\r\n\r\n<p style="text-align: justify;">Vestibulum pulvinar pretium diam. Curabitur porttitor orci sed nunc aliquam, ac condimentum nunc condimentum. In vitae blandit metus. Suspendisse potenti. Praesent tempor faucibus ornare. Praesent a tellus ut mi luctus tincidunt. Nullam nec erat finibus, posuere justo non, tincidunt ex. Mauris vestibulum tortor at placerat malesuada. Pellentesque vitae cursus urna. Vivamus rutrum ex a mauris molestie, in maximus nisl molestie. Curabitur venenatis metus nec sagittis auctor. Nunc in lorem accumsan, semper dui et, tincidunt risus. Phasellus pharetra magna neque, eu facilisis diam sollicitudin sed. Praesent congue vestibulum leo malesuada consectetur. Mauris in diam ut dolor scelerisque laoreet. Nam bibendum, nisi sit amet mollis ultricies, quam tellus cursus augue, eu hendrerit erat orci at risus.</p>\r\n', 0, 10, 17);

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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `privates_messages`
--

INSERT INTO `privates_messages` (`id`, `content`, `date_time`, `is_read`, `is_trash`, `id_users`, `id_users_1`) VALUES
(77, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tellus diam, varius vel condimentum at, dictum eu massa. Integer eget libero eu magna ornare malesuada eu vitae magna. Mauris eget laoreet ante. Nulla vel tortor in erat feugiat aliquet at quis tellus. Cras ipsum neque, pretium in ullamcorper vel, egestas quis neque. Maecenas in lobortis mi. Donec laoreet mauris et nisl ullamcorper facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia purus purus, vel scelerisque leo aliquet sed. Aliquam egestas lacus urna, varius suscipit nulla faucibus quis. Donec magna enim, ullamcorper eu turpis quis, auctor blandit purus.</p>\r\n\r\n<p style="text-align: justify;">Phasellus tristique, elit quis tincidunt ultricies, dolor leo luctus tortor, id pellentesque ligula magna nec ipsum. Fusce porta enim a porttitor feugiat. Praesent tempor in metus quis elementum. Vivamus in interdum nibh. Cras luctus euismod sapien vel iaculis. Duis fringilla, turpis vitae egestas fermentum, felis turpis aliquam ipsum, nec finibus urna nulla sed velit. Curabitur rutrum mi vitae viverra finibus. Nam hendrerit odio vitae diam accumsan, in ultricies enim sagittis.</p>\r\n', 1446214106, 1, 1, 10, 10),
(78, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tellus diam, varius vel condimentum at, dictum eu massa. Integer eget libero eu magna ornare malesuada eu vitae magna. Mauris eget laoreet ante. Nulla vel tortor in erat feugiat aliquet at quis tellus. Cras ipsum neque, pretium in ullamcorper vel, egestas quis neque. Maecenas in lobortis mi. Donec laoreet mauris et nisl ullamcorper facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia purus purus, vel scelerisque leo aliquet sed. Aliquam egestas lacus urna, varius suscipit nulla faucibus quis. Donec magna enim, ullamcorper eu turpis quis, auctor blandit purus.</p>\r\n', 1446214127, 1, 1, 10, 10),
(79, '<p>lobortis mi. Donec laoreet mauris et nisl ullamcorper facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia purus purus, vel scelerisque leo aliquet sed. Aliquam egestas lacus urna, varius suscipit nulla faucibus quis. Donec magna enim, ullamcorper eu turpis quis, auctor blandit purus.</p>\r\n\r\n<p>Phasellus tristique, elit quis tincidunt ultricies, dolor leo luctus tortor, id pellentesque ligula magna nec ipsum. Fusce porta enim a porttitor feugiat. Praesent tempor in metus quis elementum. Vivamus in interdum nibh. Cras luctus euismod sapien vel iaculis. Duis fringilla, turpis vitae egestas fermentum, felis turpis aliquam ipsum, nec finibus urna nulla sed velit. Curabitur rutrum mi vitae viverra finibus. Nam hendrerit odio vitae diam accumsan, in ultricies enim sagittis.</p>\r\n', 1446214135, 1, 1, 10, 10),
(80, '<blockquote>\r\n<p><u><strong><em>Message pr&eacute;c&eacute;dent de Dumbeldor</em></strong></u></p>\r\n\r\n<p>lobortis mi. Donec laoreet mauris et nisl ullamcorper facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia purus purus, vel scelerisque leo aliquet sed. Aliquam egestas lacus urna, varius suscipit nulla faucibus quis. Donec magna enim, ullamcorper eu turpis quis, auctor blandit purus.</p>\r\n\r\n<p>Phasellus tristique, elit quis tincidunt ultricies, dolor leo luctus tortor, id pellentesque ligula magna nec ipsum. Fusce porta enim a porttitor feugiat. Praesent tempor in metus quis elementum. Vivamus in interdum nibh. Cras luctus euismod sapien vel iaculis. Duis fringilla, turpis vitae egestas fermentum, felis turpis aliquam ipsum, nec finibus urna nulla sed velit. Curabitur rutrum mi vitae viverra finibus. Nam hendrerit odio vitae diam accumsan, in ultricies enim sagittis.</p>\r\n</blockquote>\r\n\r\n<p>Petit message,<br />\r\nPour voir si &ccedil;a marche bien !</p>\r\n\r\n<p>Phasellus tristique, elit quis tincidunt ultricies, dolor leo luctus tortor, id pellentesque ligula magna nec ipsum. Fusce porta enim a porttitor feugiat. Praesent tempor in metus quis elementum. Vivamus in interdum nibh. Cras luctus euismod sapien vel iaculis. Duis fringilla, turpis vitae egestas fermentum, felis turpis aliquam ipsum, nec finibus urna nulla sed velit. Curabitur rutrum mi vitae viverra finibus. Nam hendrerit odio vitae diam accumsan, in ultricies enim sagittis.</p>\r\n\r\n<p>Tchous !</p>\r\n', 1446215022, 1, 1, 10, 10),
(81, '<blockquote>\r\n<p><u><strong><em>Message pr&eacute;c&eacute;dent de Dumbeldor</em></strong></u></p>\r\n\r\n<p>lobortis mi. Donec laoreet mauris et nisl ullamcorper facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia purus purus, vel scelerisque leo aliquet sed. Aliquam egestas lacus urna, varius suscipit nulla faucibus quis. Donec magna enim, ullamcorper eu turpis quis, auctor blandit purus.</p>\r\n\r\n<p>Phasellus tristique, elit quis tincidunt ultricies, dolor leo luctus tortor, id pellentesque ligula magna nec ipsum. Fusce porta enim a porttitor feugiat. Praesent tempor in metus quis elementum. Vivamus in interdum nibh. Cras luctus euismod sapien vel iaculis. Duis fringilla, turpis vitae egestas fermentum, felis turpis aliquam ipsum, nec finibus urna nulla sed velit. Curabitur rutrum mi vitae viverra finibus. Nam hendrerit odio vitae diam accumsan, in ultricies enim sagittis.</p>\r\n</blockquote>\r\n\r\n<p>Test&nbsp;</p>\r\n', 1446215194, 1, 1, 10, 10),
(82, '<blockquote>\r\n<p><strong><em>Message pr&eacute;c&eacute;dent de Dumbeldor</em></strong></p>\r\n\r\n<p>lobortis mi. Donec laoreet mauris et nisl ullamcorper facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia purus purus, vel scelerisque leo aliquet sed. Aliquam egestas lacus urna, varius suscipit nulla faucibus quis. Donec magna enim, ullamcorper eu turpis quis, auctor blandit purus.</p>\r\n\r\n<p>Phasellus tristique, elit quis tincidunt ultricies, dolor leo luctus tortor, id pellentesque ligula magna nec ipsum. Fusce porta enim a porttitor feugiat. Praesent tempor in metus quis elementum. Vivamus in interdum nibh. Cras luctus euismod sapien vel iaculis. Duis fringilla, turpis vitae egestas fermentum, felis turpis aliquam ipsum, nec finibus urna nulla sed velit. Curabitur rutrum mi vitae viverra finibus. Nam hendrerit odio vitae diam accumsan, in ultricies enim sagittis.</p>\r\n\r\n<p>&nbsp;</p>\r\n</blockquote>\r\n\r\n<p>test</p>\r\n', 1446215289, 1, 1, 10, 10),
(83, '<blockquote>\r\n<p><u><strong><em>Message pr&eacute;c&eacute;dent de Dumbeldor</em></strong></u></p>\r\n\r\n<p>lobortis mi. Donec laoreet mauris et nisl ullamcorper facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia purus purus, vel scelerisque leo aliquet sed. Aliquam egestas lacus urna, varius suscipit nulla faucibus quis. Donec magna enim, ullamcorper eu turpis quis, auctor blandit purus.</p>\r\n\r\n<p>Phasellus tristique, elit quis tincidunt ultricies, dolor leo luctus tortor, id pellentesque ligula magna nec ipsum. Fusce porta enim a porttitor feugiat. Praesent tempor in metus quis elementum. Vivamus in interdum nibh. Cras luctus euismod sapien vel iaculis. Duis fringilla, turpis vitae egestas fermentum, felis turpis aliquam ipsum, nec finibus urna nulla sed velit. Curabitur rutrum mi vitae viverra finibus. Nam hendrerit odio vitae diam accumsan, in ultricies enim sagittis.</p>\r\n\r\n<p>&nbsp;</p>\r\n</blockquote>\r\n\r\n<p>Ok nickel !</p>\r\n', 1446215446, 1, 1, 10, 10),
(84, '<blockquote>\r\n<p><u><strong><em>Message pr&eacute;c&eacute;dent de Dumbeldor</em></strong></u></p>\r\n\r\n<blockquote>\r\n<p><u><strong><em>Message pr&eacute;c&eacute;dent de Dumbeldor</em></strong></u></p>\r\n\r\n<p>lobortis mi. Donec laoreet mauris et nisl ullamcorper facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia purus purus, vel scelerisque leo aliquet sed. Aliquam egestas lacus urna, varius suscipit nulla faucibus quis. Donec magna enim, ullamcorper eu turpis quis, auctor blandit purus.</p>\r\n\r\n<p>Phasellus tristique, elit quis tincidunt ultricies, dolor leo luctus tortor, id pellentesque ligula magna nec ipsum. Fusce porta enim a porttitor feugiat. Praesent tempor in metus quis elementum. Vivamus in interdum nibh. Cras luctus euismod sapien vel iaculis. Duis fringilla, turpis vitae egestas fermentum, felis turpis aliquam ipsum, nec finibus urna nulla sed velit. Curabitur rutrum mi vitae viverra finibus. Nam hendrerit odio vitae diam accumsan, in ultricies enim sagittis.</p>\r\n\r\n<p>&nbsp;</p>\r\n</blockquote>\r\n\r\n<p>Ok nickel !</p>\r\n\r\n<p>&nbsp;</p>\r\n</blockquote>\r\n\r\n<p>obortis mi. Donec laoreet mauris et nisl ullamcorper facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia purus purus, vel scelerisque leo aliquet sed. Aliquam egestas lacus urna, varius suscipit nulla faucibus quis. Donec magna enim, ullamcorper eu turpis quis, auctor blandit purus.</p>\r\n\r\n<p>Phasellus tristique, elit quis tincidunt ultricies, dolor leo luctus tortor, id pellentesque ligula magna nec ipsum. Fusce porta enim a porttitor feugiat. Praesent tempor in metus quis elementum. Vivamus in interdum nibh. Cras luctus euismod sapien vel iaculis. Duis</p>\r\n', 1446215478, 1, 1, 10, 10),
(85, '<blockquote>\r\n<p><u><strong><em>Message pr&eacute;c&eacute;dent de Dumbeldor</em></strong></u></p>\r\n\r\n<blockquote>\r\n<p><u><strong><em>Message pr&eacute;c&eacute;dent de Dumbeldor</em></strong></u></p>\r\n\r\n<blockquote>\r\n<p><u><strong><em>Message pr&eacute;c&eacute;dent de Dumbeldor</em></strong></u></p>\r\n\r\n<p>lobortis mi. Donec laoreet mauris et nisl ullamcorper facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia purus purus, vel scelerisque leo aliquet sed. Aliquam egestas lacus urna, varius suscipit nulla faucibus quis. Donec magna enim, ullamcorper eu turpis quis, auctor blandit purus.</p>\r\n\r\n<p>Phasellus tristique, elit quis tincidunt ultricies, dolor leo luctus tortor, id pellentesque ligula magna nec ipsum. Fusce porta enim a porttitor feugiat. Praesent tempor in metus quis elementum. Vivamus in interdum nibh. Cras luctus euismod sapien vel iaculis. Duis fringilla, turpis vitae egestas fermentum, felis turpis aliquam ipsum, nec finibus urna nulla sed velit. Curabitur rutrum mi vitae viverra finibus. Nam hendrerit odio vitae diam accumsan, in ultricies enim sagittis.</p>\r\n\r\n<p>&nbsp;</p>\r\n</blockquote>\r\n\r\n<p>Ok nickel !</p>\r\n\r\n<p>&nbsp;</p>\r\n</blockquote>\r\n\r\n<p>obortis mi. Donec laoreet mauris et nisl ullamcorper facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia purus purus, vel scelerisque leo aliquet sed. Aliquam egestas lacus urna, varius suscipit nulla faucibus quis. Donec magna enim, ullamcorper eu turpis quis, auctor blandit purus.</p>\r\n\r\n<p>Phasellus tristique, elit quis tincidunt ultricies, dolor leo luctus tortor, id pellentesque ligula magna nec ipsum. Fusce porta enim a porttitor feugiat. Praesent tempor in metus quis elementum. Vivamus in interdum nibh. Cras luctus euismod sapien vel iaculis. Duis</p>\r\n\r\n<p>&nbsp;</p>\r\n</blockquote>\r\n\r\n<p><img alt="heart" src="http://localhost/oprpg/assets/ckeditor/plugins/smiley/images/heart.png" style="height:23px; width:23px" title="heart" /></p>\r\n', 1446232779, 1, 1, 10, 10),
(86, '<p>test</p>\r\n', 1446233620, 1, 0, 10, 34),
(87, 'Bonjour, l''équipe aaaaa ne vous a pas accepté.\n						  Candidature traité par Dumbeldor qui est Capitaine\n						  Vous pouvez dès à présent dès à présent chercher un autre équipage !..\n						  Bonne chance !', 1446331269, 1, 0, 13, 34),
(88, '<p>Tedfdgfdfgfdg</p>\r\n', 1446399721, 1, 1, 10, 10),
(89, '<blockquote>\r\n<p><u><strong><em>Message pr&eacute;c&eacute;dent de Dumbeldor</em></strong></u></p>\r\n\r\n<p>Tedfdgfdfgfdg</p>\r\n\r\n<p>&nbsp;</p>\r\n</blockquote>\r\n\r\n<p>sdfsdgdfgdf</p>\r\n\r\n<p>hgfhfghghfgh<br />\r\nfdgdfgfhgfhgjjhfsdfsd</p>\r\n\r\n<p>fdsogjdfgikdfgdf</p>\r\n', 1446399734, 1, 1, 10, 10),
(90, '<blockquote>\r\n<p><u><strong><em>Message pr&eacute;c&eacute;dent de Dumbeldor</em></strong></u></p>\r\n\r\n<p>test</p>\r\n\r\n<p>&nbsp;</p>\r\n</blockquote>\r\n\r\n<p>Aye super tu g&egrave;res !</p>\r\n', 1446399761, 1, 0, 34, 10),
(91, '<p>dsfdgdgfdgdf</p>\r\n', 1446399838, 1, 1, 10, 10),
(92, '<p>fdsfgdgdf</p>\r\n', 1446399991, 1, 0, 10, 10);

-- --------------------------------------------------------

--
-- Structure de la table `tchats`
--

CREATE TABLE IF NOT EXISTS `tchats` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `descr` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_tchats_types` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tchats`
--

INSERT INTO `tchats` (`id`, `name`, `descr`, `is_block`, `id_tchats_types`) VALUES
(1, 'Général', 'Vous avez envie de discuter, déconner, s''amuser alors c''est par ici !', 0, 1),
(2, 'Aide', 'Ici vous pouvez demander de l''aide !', 0, 1),
(3, 'Commerce', 'Vous cherchez quelques choses / vendez ? C''est par ici !', 0, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tchats_messages`
--

INSERT INTO `tchats_messages` (`id`, `message`, `date_time`, `is_block`, `id_tchats`, `id_users`) VALUES
(62, 'fgh', '2015-10-30 23:04:11', 0, 2, 10),
(63, 'fdd', '2015-10-30 23:05:48', 0, 2, 10),
(244, 'aa', '2015-10-31 22:14:18', 0, 1, 10),
(245, 'ggg', '2015-10-31 22:14:21', 0, 1, 34),
(246, 'fgfg', '2015-10-31 22:17:32', 0, 1, 10),
(247, 'aa', '2015-10-31 22:17:34', 0, 1, 10),
(248, 'aaa', '2015-10-31 22:17:51', 0, 1, 34),
(249, 'dffd', '2015-10-31 22:18:13', 0, 1, 10),
(250, 'dfgf', '2015-10-31 22:18:47', 0, 1, 10),
(251, 'gfgf', '2015-10-31 22:18:55', 0, 1, 10),
(252, 'dfgfdg', '2015-10-31 22:19:11', 0, 1, 10),
(253, 'gg', '2015-10-31 22:20:20', 0, 1, 10),
(254, 'hghg', '2015-10-31 22:21:17', 0, 1, 10),
(255, 'f', '2015-10-31 22:51:28', 0, 1, 34),
(256, 'fg', '2015-10-31 23:13:09', 0, 1, 10),
(257, 'g', '2015-10-31 23:17:24', 0, 1, 10),
(258, 'a', '2015-10-31 23:17:26', 0, 1, 10),
(259, 'gg', '2015-10-31 23:17:58', 0, 1, 10),
(260, 'aa', '2015-10-31 23:18:16', 0, 1, 10),
(261, 'ee', '2015-10-31 23:18:38', 0, 1, 10),
(262, 'e', '2015-10-31 23:18:55', 0, 1, 10),
(263, 'vv', '2015-10-31 23:19:04', 0, 1, 34),
(264, 'ghh', '2015-11-01 14:42:31', 0, 1, 10),
(265, 'hgjh', '2015-11-01 14:42:34', 0, 1, 10),
(266, 'fdgdfg', '2015-11-01 14:43:14', 0, 1, 10),
(267, 'fdgf', '2015-11-01 14:44:13', 0, 1, 10),
(268, 'ghg', '2015-11-01 14:45:21', 0, 1, 10),
(269, 'fdf', '2015-11-01 23:17:25', 0, 1, 36),
(270, 'dfd', '2015-11-01 23:43:23', 0, 1, 36),
(271, 'dfd', '2015-11-01 23:44:53', 0, 1, 36),
(272, 'aa', '2015-11-01 23:44:55', 0, 1, 36),
(273, '', '2015-11-01 23:44:56', 0, 1, 36),
(274, 'dsds', '2015-11-01 23:45:30', 0, 1, 36);

-- --------------------------------------------------------

--
-- Structure de la table `tchats_types`
--

CREATE TABLE IF NOT EXISTS `tchats_types` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `descr` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tchats_types`
--

INSERT INTO `tchats_types` (`id`, `name`, `descr`, `is_block`) VALUES
(1, 'Tchat', 'Tchat', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `ban`, `pseudo`, `email`, `birthday`, `sexe`, `password`, `is_kick`, `messNumber`, `id_personnages`, `id_levels`, `id_objects`, `id_users_types`, `id_users_ranks`, `id_crews_candidacy`) VALUES
(10, 0, 'Dumbeldor', 'vincentglize@hotmail.fr', '0000-00-00', NULL, '$2y$10$IEa/yx86U2McxcjbOvFztO42KXsfCCySz75rnHc7.MbejHj6ZPOJ6', 0, 104, 1, 1, 1, 6, 6, 0),
(13, 0, 'Pandaman', 'lebg@lebg.fr', '0000-00-00', NULL, '28dc62537cce4d7c96eae5dc92f98a84abb6d078f741a57bccc4ce7ce24cb425e89249ae87974afca8b0fb95e0d8aa77fdd3d94a4f97f088603071170cb879b1', 0, -1, 1, 1, 1, 3, 0, 0),
(33, 0, 'oooo', 'oooo@1234.fr', '0000-00-00', NULL, '$2y$10$P5OJgmKQOlQupvKfj279pu4bmT1w4AarJz3JTsGqnNoDkXja9a3J.', 0, 1, 1, 1, 1, 1, 0, 0),
(34, 0, 'Omagad', 'omagad@gmail.fr', '0000-00-00', NULL, '$2y$10$IEa/yx86U2McxcjbOvFztO42KXsfCCySz75rnHc7.MbejHj6ZPOJ6', 0, 4, 1, 1, 1, 4, 0, 0),
(35, 0, 'mouallez', 'mouallez@vincent.fr', '0000-00-00', NULL, '$2y$10$/kF2.rXDgCsS8zfRlSqEIeiPU1D98HOsDLoP4ANZin4A69/BaymrC', 0, 0, 1, 1, 1, 1, 0, 0),
(36, 0, 'Vincent', 'zzzed@dfjfdsf.fr', '0000-00-00', NULL, '$2y$10$kWAUVOOTIlSbkE1itJj1TORoFBhCAir9ZE3XtYtZj0ypQICIxpdRK', 0, 1, 1, 1, 1, 1, 0, 0),
(37, 0, 'Bella', 'bella@gmail.fr', '0000-00-00', NULL, '$2y$10$Ls3UthNvX1Fi0AP.v5SzGe/vQdtFu7IxYs1GEPpNkrJQy4kDKnC3C', 0, 0, 1, 1, 1, 1, 0, 0);

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
-- Index pour la table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT pour la table `crews_banks`
--
ALTER TABLE `crews_banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT pour la table `forums_topics`
--
ALTER TABLE `forums_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `forums_topics_messages`
--
ALTER TABLE `forums_topics_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `news_comments`
--
ALTER TABLE `news_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT pour la table `tchats`
--
ALTER TABLE `tchats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `tchats_messages`
--
ALTER TABLE `tchats_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=275;
--
-- AUTO_INCREMENT pour la table `tchats_types`
--
ALTER TABLE `tchats_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
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
