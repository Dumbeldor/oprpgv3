-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 04 Janvier 2016 à 21:11
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
-- Structure de la table `captcha`
--

CREATE TABLE IF NOT EXISTS `captcha` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `session_id` varchar(50) NOT NULL,
  `time` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1629 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `captcha`
--

INSERT INTO `captcha` (`id`, `code`, `session_id`, `time`) VALUES
(1628, '2699662', 'd2cf25a5b6a11429d5e4b8adbec24b380db8dd2c', 1447707795);

-- --------------------------------------------------------

--
-- Structure de la table `charactere`
--

CREATE TABLE IF NOT EXISTS `charactere` (
  `id` int(11) NOT NULL,
  `positionCity` int(11) DEFAULT NULL,
  `id_users` int(11) NOT NULL,
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL
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
('7626639f735758c8037aa2316b269f2acd35a6a7', 0, '::1', 1449693244, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434393639333234343b);

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
  `name` varchar(51) NOT NULL,
  `money` int(11) NOT NULL,
  `page` mediumtext,
  `file` varchar(255) NOT NULL,
  `date_time` int(12) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_crews_types` int(11) NOT NULL,
  `id_crews_banks` int(11) NOT NULL,
  `id_faction` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `crews`
--

INSERT INTO `crews` (`id`, `name`, `money`, `page`, `file`, `date_time`, `is_block`, `id_crews_types`, `id_crews_banks`, `id_faction`) VALUES
(51, 'Test', 0, NULL, '', 1447258410, 0, 1, 5, 1),
(56, 'DarkNess Killeur', 0, '<p><tt><strong>Qui sommes nous !?! Les Darkness Killeurs CHEF ! </strong></tt></p>\r\n\r\n<p><tt><strong>Que voulons nous !?! Notre victoire CHEF ! </strong></tt></p>\r\n\r\n<p><tt><strong>Et c&#39;est qui le chef !?!</strong></tt><strong><tt> C&#39;est Gaitan&nbsp;CHEF !</tt></strong></p>\r\n', '', 1447271752, 0, 1, 10, 3),
(57, 'Funny', 0, NULL, '', 1447294795, 0, 1, 11, 1),
(58, 'Team Phoenix', 0, '<p><strong><span style="color:#FF0000">Bienvenue !</span></strong></p>\r\n\r\n<hr />\r\n<p><strong>Membres :</strong></p>\r\n\r\n<p style="text-align: center;"><strong><em><span style="color:#0000CD">Le Capitaine : Pingouin</span></em></strong></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/67.png" /></p>\r\n\r\n<p style="text-align: center;"><strong><em><span style="color:#008000">Les Bras Droits : Dumbeldor,&nbsp;</span></em></strong><strong><em><span style="color:#008000">loup,&nbsp;.Destinity. et akashi</span></em></strong></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/1.png" />&nbsp;<img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/116.png" />&nbsp;<img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/238.png" style="height:74px; width:60px" />&nbsp;<img src="http://minegame.fr/assets/img/avatarsJoueurs/227.png" /></p>\r\n\r\n<p style="text-align: center;"><strong><em><span style="color:#FFA500">Les Cuisiniers :&nbsp;acsedu55, HeraSan, Entei et Red.W.Viper</span></em></strong></p>\r\n\r\n<p style="text-align: center;"><strong><em>&nbsp; </em></strong><strong><em><img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/155.png" /></em></strong><img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/138.png" /><img src="http://minegame.fr/assets/img/avatarsJoueurs/274.png" /><strong><em>&nbsp;<img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/199.png" /></em></strong></p>\r\n\r\n<p style="text-align: center;"><strong><em><span style="color:#EE82EE">Les Matelots : Rukia, TigerShey,&nbsp;Raychard et&nbsp;Tarkhagal1</span></em></strong></p>\r\n\r\n<p style="text-align: center;"><strong><em><span style="color:#EE82EE"><img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/132.png" /></span></em></strong>&nbsp;<img src="http://minegame.fr/assets/img/avatarsJoueurs/285.png" />&nbsp;&nbsp;<strong><em><span style="color:#EE82EE"> <img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/159.png" /> </span></em></strong><img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/201.png" />&nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p style="text-align: center;"><strong><em><span style="color:#0000CD">Les &quot;En Attentes&quot; : Escaliburne</span></em></strong></p>\r\n\r\n<p style="text-align: center;"><strong><em>&nbsp;</em></strong><img src="http://minegame.fr/assets/img/avatarsJoueurs/105.png" /></p>\r\n\r\n<hr />\r\n<p><strong><em><span style="color:#B22222">R&eacute;gles ;​</span></em></strong></p>\r\n\r\n<ul>\r\n	<li><strong><em><span style="color:#B22222">Ne pas insulter.</span></em></strong></li>\r\n	<li><strong><em><span style="color:#B22222">&Ecirc;tre Actif.</span></em></strong></li>\r\n	<li><strong><em><span style="color:#B22222">Ne pas piller (Si il y a une banque..,)</span></em></strong></li>\r\n	<li><strong><em><span style="color:#B22222">Etre la quand on prevoie les GE&#39;s.</span></em></strong></li>\r\n</ul>\r\n\r\n<p><strong><em><span style="color:#B22222">Respecter les r&eacute;gles /!\\</span></em></strong>​</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n', '', 1447511226, 0, 1, 12, 2),
(59, 'Redemption', 0, NULL, '', 1447511298, 0, 1, 13, 2),
(60, 'Ghost United', 0, NULL, '', 1447511498, 0, 1, 14, 2),
(62, 'Chapeau de Paille', 0, '<p>Viendez les gens</p>\r\n', '', 1447512224, 0, 1, 16, 2),
(63, 'Tenryubito', 0, NULL, '', 1447512268, 0, 1, 17, 3),
(64, 'Les chats noirs du clair de lune', 0, NULL, '', 1447512606, 0, 1, 18, 3),
(66, 'Dragon Warriors', 0, NULL, '', 1447513313, 0, 1, 20, 1),
(67, 'Funz Pirates', 0, NULL, '', 1447513735, 0, 1, 21, 2),
(71, 'L''ordalie des mouettes', 0, NULL, '', 1447513931, 0, 1, 25, 2),
(76, 'tamlapute', 0, NULL, '', 1447517548, 0, 1, 30, 2),
(80, 'Rafale Square', 0, '<p>[centre]Bonjour[/centre]</p>\r\n', '', 1447518102, 0, 1, 34, 1),
(81, 'NewBesterBoss', 0, '<p><span style="color:#0000CD"><span class="marker"><tt><em>Bienvenue &agrave; tous dans le nouveau site de One Piece et bienvenue dans l&#39;&eacute;quipage des &quot; NewBesterBoss &quot;</em></tt></span></span></p>\r\n', '', 1447518552, 0, 1, 35, 3),
(82, 'Révolutionnaires  ', 0, '<p>Je m&#39;amuse seul car je m&#39;aime bien.</p>\r\n', '', 1447518773, 0, 1, 36, 3),
(83, 'Les Grands Corsaires', 0, '<h3><span style="color:#FF0000">L&rsquo;&Eacute;QUIPAGE DES GRANDS CORSAIRES</span></h3>\r\n\r\n<p><img alt="" src="http://auto.img.v4.skyrock.net/5310/79435310/pics/3036537227_1_17_S55nhKSm.gif" />​</p>\r\n\r\n<p><span style="color:#FF0000"><ins>News Express :</ins> BIENVENUE SUR MINEGAME&nbsp;!!!</span></p>\r\n\r\n<h3><strong><span style="color:#FF0000">Les News N&deg;100 :</span></strong></h3>\r\n\r\n<p><a href="http://vocaroo.com/i/s1DtUAufUwnn">http://vocaroo.com/i/s1DtUAufUwnn</a></p>\r\n\r\n<p><span style="color:rgb(255, 165, 0)">&nbsp; &nbsp; r&eacute;dig&eacute; par Titi17470, le 08/11/2015.</span></p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong><span style="color:#FF0000">R&eacute;gles de l&#39;&eacute;quipage</span></strong></h3>\r\n\r\n<p><span style="color:#FF0000"><ins>Article 1 :</ins> Il est interdit de s&#39;insulter entre membres et autres personnes du site.</span></p>\r\n\r\n<p><span style="color:#FF0000"><ins>Article 2 :</ins> Tout membre se doit de se connecter au moins une fois tout les 2 jours.</span></p>\r\n\r\n<p><span style="color:#FF0000"><ins>Article 3 :</ins> Tout membre se doit d&#39;ob&eacute;ir au capitaine.</span></p>\r\n\r\n<p><span style="color:#FF0000"><ins>Article 4 :</ins> Tout membre se doit d&#39;&ecirc;tre poli envers ses nakamas sous peine d&#39;expulsion.</span></p>\r\n\r\n<p><span style="color:#FF0000"><ins>Article 5 :</ins> Tout membre se doit de pr&eacute;venir le capitaine en cas d&rsquo;abandon de l&#39;&eacute;quipage.</span></p>\r\n\r\n<p><span style="color:#FF0000"><ins>Article 6 :</ins> Tout membre ne respectant pas le r&egrave;glement sera vir&eacute;.</span></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &eacute;crit et approuv&eacute; par Titi17470.</p>\r\n\r\n<hr />\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong><span style="color:#FF0000">Hi&eacute;rarchisation du pouvoir</span></strong></h3>\r\n\r\n<p><span style="color:#8B4513">Voici la liste des membres ayant le plus d&#39;influence dans 2 domaines primordiaux dans l&#39;&eacute;quipage. Si les premi&egrave;res personnes sont absentes, on se r&eacute;f&egrave;re &agrave; celle d&#39;en dessous. Le &quot;chef JcJ&quot; indique quelle personne attaquer et quelle tactique effectuer durant un combat. Le &quot;chef GE&quot; g&egrave;re les conversations lors des GE difficiles (Sengo, Smiley). Ces tableaux sont bas&eacute;s sur l&rsquo;exp&eacute;rience et l&#39;activit&eacute;. Ils sont donc modulables.</span></p>\r\n\r\n<p><strong><span style="color:#FF0000">JcJ/DDM :</span></strong><br />\r\n1-Jurojin/SHOTFIRED<br />\r\n2-Daenerys<br />\r\n3-Zaidou<br />\r\n4-Frisoute<br />\r\n5-Titi17470</p>\r\n\r\n<p><strong><span style="color:#FF0000">GE :</span></strong><br />\r\n1-Titi17470<br />\r\n2-Onepiecegame<br />\r\n3-Daenerys<br />\r\n4-Zaidou<br />\r\n5-Foxkenshi2</p>\r\n\r\n<hr />\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong><span style="color:#FF0000">Les Flottes de l&#39;Equipage</span></strong></h3>\r\n\r\n<p><span style="color:#FF0000"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong><ins><strong>Le capitaine :</strong></ins></span></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/125.png" /></p>\r\n\r\n<p><em><span style="color:#FF0000">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Titi17470 (J&eacute;r&eacute;my)</span></em></p>\r\n\r\n<div style="background:#eee; border:1px solid #ccc; padding:5px 10px"><strong>La Premi&egrave;re Flotte :</strong></div>\r\n\r\n<p><ins><strong>Le capitaine :</strong></ins> <span style="color:#8B4513"><em>Onepiecegame (Amaury)</em></span></p>\r\n\r\n<p><strong>Le martyr :</strong> <img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/121.png" />&nbsp;<span style="color:#008000"><em>Sumeerfrio (Thomas)</em></span></p>\r\n\r\n<p><strong>Le martyr :&nbsp;<img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/126.png" /></strong>&nbsp;<em><span style="color:#40E0D0">Xtel (William)</span></em></p>\r\n\r\n<p><strong>Le martyr :&nbsp;<img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/144.png" /></strong><em><span style="color:#FFA500">&nbsp;Raiss (Amine)</span></em></p>\r\n\r\n<div style="background:#eee; border:1px solid #ccc; padding:5px 10px"><strong>La Seconde Flotte :</strong></div>\r\n\r\n<p><ins><strong>Le capitaine :</strong></ins>&nbsp;<em><span style="color:#8B4513">Jurojin (Cl&eacute;ment)</span></em></p>\r\n\r\n<div style="background:#eee; border:1px solid #ccc; padding:5px 10px"><strong>La Troisi&egrave;me Flotte</strong></div>\r\n\r\n<p><ins><strong>Le capitaine :</strong></ins><strong>&nbsp;<img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/165.png" /></strong><strong>&nbsp;</strong><em><span style="color:#8B4513">Eurus&nbsp;(Bastien)</span></em></p>\r\n\r\n<div style="background:#eee; border:1px solid #ccc; padding:5px 10px"><strong>La Quatri&egrave;me Flotte</strong></div>\r\n\r\n<p><strong><ins>Le capitaine :</ins></strong>&nbsp;<span style="color:#8B4513">Helixys (Camille)</span></p>\r\n\r\n<p><strong>Le navigateur :</strong> <img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/94.png" />&nbsp;<em><span style="color:#008000">Glyff (Th&eacute;o)</span></em></p>\r\n\r\n<hr />\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><span style="color:#FF0000"><strong>Nouvelle distribution des gains (test)</strong></span></h3>\r\n\r\n<p><img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/13.png" style="float:left; height:74px; width:60px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ma&icirc;tre du jeu</strong><br />\r\n<span style="color:#808080">Bonjour,<br />\r\nVoici le principe tr&egrave;s simple du dispositif de distribution des gains qui est d&eacute;sormais mis en place durant tout le mois d&#39;octobre. Ce dispositif concerne chaque membre de l&#39;&eacute;quipage. Le concept est le suivant :<br />\r\nLorsque vous apportez quelque chose &agrave; l&#39;&eacute;quipage, vous gagnez un certain nombre de points de m&eacute;rite (voir tableau ci-dessous) et ces points de m&eacute;rites peuvent &ecirc;tre &eacute;chang&eacute;s contre &nbsp;des objets de la banque. Plus vous cumulez de points, plus grosse sera la r&eacute;compense &agrave; laquelle vous avez droit (logique).<br />\r\nVoici les tableaux, bonne chance.</span></p>\r\n\r\n<p><span style="color:#FF0000">==============================</span></p>\r\n\r\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; O&ugrave; en &ecirc;tes-vous ?</strong><br />\r\n<span style="color:#FF0000">==============================</span></p>\r\n\r\n<p><em>frisoute - 1215 PM<br />\r\nSummeerfrio - 696 PM<br />\r\nCalysta - 320 PM<br />\r\nBalerow32 - 290 PM<br />\r\nAce - 180 PM<br />\r\nNelose - 140 PM<br />\r\nHelixys - 298 PM<br />\r\nZaidou - 110 PM<br />\r\nJurojin - 80 PM<br />\r\nVeNoM - 45 PM<br />\r\nOnepiecegame - 3 PM</em></p>\r\n\r\n<hr />\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><span style="color:#FF0000"><strong>Les Scans</strong></span></h3>\r\n\r\n<p><span style="color:#008000">Bienvenue dans cette rubrique o&ugrave; vous pouvez trouver le lien du dernier scan One Piece sorti en VF.</span></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -----------------------------------<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="color:#FF0000">Chapitre 806</span><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -----------------------------------</p>\r\n\r\n<p><a href="http://lel-scan.co/lecture-one-piece/805">http://lel-scan.co/lecture-one-piece/806</a></p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong><span style="color:#FF0000">Les Episodes</span></strong></h3>\r\n\r\n<p><span style="color:#008000">Bienvenue dans cette rubrique o&ugrave; vous pouvez trouver le lien du dernier Episode One Piece sorti en VOSTFR.</span></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-----------------------------------<br />\r\n<span style="color:#FF0000">One Piece 706 VOSTFR: Allez, Law! La Bataille final de l&rsquo;homme au grand coeur !</span><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -----------------------------------<br />\r\n<a href="http://gum-gum-streaming.com/one-piece-706-vostfr">http://gum-gum-streaming.com/one-piece-706-vostfr</a></p>\r\n\r\n<hr />\r\n<p>page d&#39;&eacute;quipage version 0.0.1</p>\r\n', '', 1447518929, 0, 1, 37, 1),
(84, 'Shadow''s Daemons', 0, '<p>Patience.. j&#39;ai la flemme l&agrave;</p>\r\n', '', 1447519646, 0, 1, 38, 2),
(85, 'Darkness Pirate''s', 0, '<p>Darkness pirate de retour pour raviver les flammes de la comp&eacute;tition&nbsp;<img alt="cheeky" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/tongue_smile.png" style="height:23px; width:23px" title="cheeky" /></p>\r\n', '', 1447520145, 0, 1, 39, 2),
(87, 'DarkUnited', 0, '<h1><span style="color:#0000CD"><em><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></em></span></h1>\r\n\r\n<h2 style="font-style:italic"><span style="color:#FF0000">&nbsp;</span></h2>\r\n', '', 1447522385, 0, 1, 41, 3),
(89, 'Dark Mugiwara', 0, NULL, '', 1447523678, 0, 1, 43, 1),
(90, 'los chimeros ', 0, NULL, '', 1447524495, 0, 1, 44, 3),
(91, 'Thin Lizzy', 0, NULL, '', 1447526898, 0, 1, 45, 3),
(92, 'Team Phœnix', 0, NULL, '', 1447527269, 0, 1, 46, 1),
(93, 'Heart Pirates', 0, '<p>mdr croivez pas j&#39;avoir oublier</p>\r\n', '', 1447528506, 0, 1, 47, 2),
(95, 'Equipage 2.0 Nami-san', 0, '<p>Cette equipage est r&eacute;server au membre pr&eacute;sent pour moi lors de la V1 donc venez si vous avez etait la pour moi ;)</p>\r\n', '', 1447529051, 0, 1, 49, 1),
(97, 'Crew Banned', 0, NULL, '', 1447530878, 0, 1, 51, 2),
(98, 'La croisière s''amuse', 0, NULL, '', 1447531737, 0, 1, 52, 3),
(99, 'Seireitei', 0, '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt="" src="http://vignette2.wikia.nocookie.net/bleach/images/6/63/Soul_society.jpg/revision/latest?cb=20150517154823&amp;path-prefix=fr" style="height:250px; width:446px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span style="color:#000000"><img alt="" src="http://1.1.1.2/bmi/emblemsbf.com/img/10663.jpg" style="height:30px; width:30px" />&nbsp;Bienvenue</span> <span style="color:#FF0000">chez</span>&nbsp;<span style="color:#000000">les</span> <span style="color:#FF0000">Seireitei</span><span style="color:#000000"> tout</span><span style="color:#FF0000"> nouveau&nbsp;</span><span style="color:#000000">&eacute;quipage</span><span style="color:#FF0000"> de </span><span style="color:#000000">pirates</span><span style="color:#FF0000"> cr&eacute;&eacute; </span><span style="color:#000000">pour</span><span style="color:#FF0000"> d&eacute;truire</span><span style="color:#000000"> et</span><span style="color:#FF0000"> semer&nbsp;</span><span style="color:#000000">la</span><span style="color:#FF0000"> d&eacute;solation </span><span style="color:#000000">sur</span><span style="color:#FF0000"> son&nbsp;</span><span style="color:#000000">passage</span><span style="color:#FF0000">&nbsp;</span></strong></p>\r\n\r\n<p><span style="color:#FF0000"><strong>mais</strong></span><span style="color:#000000"><strong> avant </strong></span><span style="color:#FF0000"><strong>tout</strong></span><span style="color:#000000"><strong> amusez</strong></span><span style="color:#FF0000"><strong>&nbsp;vous !!!</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="" src="http://1.1.1.5/bmi/fc09.deviantart.net/fs70/f/2013/254/a/7/bleach__chibi_ulquiorra_by_chaotic_flames-d6lz685.jpg" style="height:133px; width:100px" />&nbsp;<span style="color:#000000"><strong>Les </strong></span><span style="color:#FF0000"><strong>r&eacute;gles</strong></span><span style="color:#000000"><strong> de </strong></span><span style="color:#FF0000"><strong>l&#39;&eacute;quipage</strong></span><span style="color:#000000"><strong> :</strong></span></p>\r\n\r\n<p><span style="color:#000000"><strong>- Respecter tout les membres de l&#39;&eacute;quipage !!</strong></span></p>\r\n\r\n<p><span style="color:#000000"><strong>- Toute insulte sera sanctionn&eacute;e..... bande d&#39;inculer&nbsp;</strong></span></p>\r\n\r\n<p><span style="color:#000000"><strong>- Tous les supporters du PSG devront le dire a leur arriver et dire que l&#39;OM et le plus grand club du monde&nbsp;<img alt="" src="http://www.africatopsports.com/wp-content/uploads/2013/11/logo-om1.jpg" style="height:31px; width:30px" /></strong></span></p>\r\n\r\n<p><span style="color:#000000"><strong>- Le reste des r&egrave;gles viendra&nbsp;avec les fonction du jeu&nbsp;a venir ....</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="" src="http://1.1.1.4/bmi/c85c7a.medialib.glogster.com/media/21/21ea58c943e8e0feba60c02e2cc0f3f5461ae01e58d0782d263a5daa591420f3/chibi-green-joe.jpg" style="height:136px; width:100px" /> <strong><span style="color:#FF0000">Pr&eacute;sentation</span> <span style="color:#000000">des</span> <span style="color:#FF0000">membres</span><span style="color:#000000"> :</span></strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="color:#000000"><strong> Capitaine et dieu de l&#39;&eacute;quipage&nbsp;</strong></span></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="color:#0000FF"> &nbsp; &nbsp;<strong>deteD</strong></span></p>\r\n\r\n<p><strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Bras droit <span style="color:#EE82EE">&lt;3</span>&nbsp;</strong></p>\r\n\r\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style="color:#00FF00">&nbsp;Hiryu</span></strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style="color:#000000"><strong>&nbsp;Matelot&nbsp;</strong></span></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style="color:#FF0000"><strong>Monkey.D.Turner&nbsp;</strong></span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>-</p>\r\n\r\n<p><img alt="" src="http://1.1.1.2/bmi/images6.fanpop.com/image/photos/33200000/Chibi-Ichigo-bleach-anime-33253004-332-400.jpg" style="height:120px; width:100px" /><strong><span style="color:#FF0000">Animation</span></strong><span style="color:#000000"> </span><span style="color:#000000"><strong>:</strong></span></p>\r\n\r\n<p><span style="color:#000000"><strong>-</strong></span></p>\r\n\r\n<p><span style="color:#000000"><strong>- A venir ...</strong></span></p>\r\n', '', 1447532740, 0, 1, 53, 1),
(100, 'Tengoku No Taiga', 0, NULL, '', 1447534212, 0, 1, 54, 3),
(101, 'Loose', 0, NULL, '', 1447539283, 0, 1, 55, 2),
(102, 'crow11', 0, NULL, '', 1447540389, 0, 1, 56, 2),
(104, 'InThePlaceToBe', 0, NULL, '', 1447548933, 0, 1, 58, 3),
(105, 'Mugiwara', 0, NULL, '', 1447550154, 0, 1, 59, 1),
(107, 'Shandora', 0, '<p>Shandora recrute !</p>\r\n\r\n<p>Nous acceptons tout le monde !</p>\r\n\r\n<p>Equipez vous de vos ailes et faites retentir la cloche de notre ile !</p>\r\n\r\n<p>Le son de la cloche nous guidera vers la victoire !</p>\r\n\r\n<p>Venez nombreux ! <img alt="wink" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" /></p>\r\n', '', 1447553278, 0, 1, 61, 3),
(110, 'Power Rangers Family', 0, '<p>Bienvenue dans l&#39;&eacute;quipage &quot;Power Rangers Family&quot; alias &quot;Royal Family of Sea&quot; (RFoS)</p>\r\n\r\n<p>L&#39;&eacute;quipage a &eacute;t&eacute; cr&eacute;&eacute; afin de garder un contact permanent avec vous en attendant la v2.5 et la v3.</p>\r\n\r\n<p>En ce qui concerne le tchat, j&#39;ai cr&eacute;&eacute; un topic dans le forum de l&#39;&eacute;quipage afin que vous puissiez parler ici. Bien sur, il existe toujours notre groupe skype encore actif.</p>\r\n', '', 1447579234, 0, 1, 64, 3),
(111, 'Night~Blood', 0, '<p>U&eacute; u&eacute; tous les mettres a terre</p>\r\n', '', 1447584600, 0, 1, 65, 1),
(112, 'Kings Pirates', 0, NULL, '', 1447585243, 0, 1, 66, 3),
(114, 'Tenryu', 0, NULL, '', 1447586331, 0, 1, 68, 1),
(116, 'du chapeau ardent', 0, NULL, '', 1447586650, 0, 1, 70, 1),
(117, 'Sleeping Forest', 0, NULL, '', 1447590621, 0, 1, 71, 2),
(118, ' Hero Association', 0, '<ul>\r\n	<li>&quot;<strong><em>Hero association</em></strong>&quot;&nbsp; ou Associations des h&eacute;ros est une association <s><strong><em>*no shit sherlock*</em></strong></s> qui a &eacute;t&eacute; cr&eacute;e par le premier Hero &quot;<strong><em>Hero&quot; </em></strong>et qui regroupe plusieurs revolutionnaires et dont le but final est de faire tomber le <strong><em>&quot;Gouvernement mondial&quot;</em></strong> .</li>\r\n</ul>\r\n', '', 1447594392, 0, 1, 72, 3),
(119, 'Omega', 0, NULL, '', 1447601553, 0, 1, 73, 2),
(120, 'S.A.O', 0, NULL, '', 1447607436, 0, 1, 74, 2),
(121, 'Saden', 0, NULL, '', 1447610724, 0, 1, 75, 3),
(123, 'Zizi dur clan', 0, NULL, '', 1447618645, 0, 1, 77, 3),
(125, 'Bløød Lust', 0, NULL, '', 1447630301, 0, 1, 79, 1),
(127, 'Royal King', 0, NULL, '', 1447673176, 0, 1, 81, 3),
(128, 'Blueberry', 0, '<p>Salut a tous et bienvenue chez les news blueberry ^^ je suis de retour pour reformer une belle famille et donc un bon &eacute;quipage ^^</p>\r\n\r\n<p>j&#39;esp&egrave;re que vous vous plairez ici et qu&#39;on d&eacute;lira bien ^^</p>\r\n', '', 1447679658, 0, 1, 82, 1),
(129, 'Rengôgun', 0, NULL, '', 1447693373, 0, 1, 83, 1),
(130, 'Dark Unity', 0, '<h1><em><strong><img alt="wink" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" /><span style="color:#0000CD">salut b</span><span style="color:#0000FF">ienvenue</span></strong></em></h1>\r\n\r\n<h1><em><strong><span style="color:#0000CD">dans </span><span style="color:#0000FF">l&#39;equipage</span></strong></em><img alt="smiley" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/regular_smile.png" style="height:23px; width:23px" title="smiley" /></h1>\r\n\r\n<h2 style="font-style:italic"><strong><em><span style="color:#0000CD">pr&eacute;sentation:</span></em></strong></h2>\r\n\r\n<h2 style="font-style:italic"><span style="color:#0000CD"><strong><img alt="laugh" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/teeth_smile.png" style="height:23px; width:23px" title="laugh" />Bienvenue ch&egrave;re camarades,notre but est de &nbsp;renverser le gouvernement mondial et nous sommes une organisation qui changera&nbsp;le monde &nbsp;des t&eacute;n&egrave;bres en monde de paix!!!<img alt="wink" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" /></strong></span><br />\r\n<br />\r\n<a href="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSNT7Mren25Eo-ssH0EpsRihx9VrWeVU3r27BRsn9CRWVLd9fyG"><img alt="" src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSNT7Mren25Eo-ssH0EpsRihx9VrWeVU3r27BRsn9CRWVLd9fyG" /></a><img alt="" src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQIVYHaWEZ41SVDiZ0iyRfutZummRqmkL1VkO18lotVcdDTgxTN" /><img alt="" src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT9Lm8FyomB_Ad4ZnHPxODx7ho1-J8qwf6qaZ0VZz2fr1a6T2nd_Q" /><span style="color:#800080"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Si vous savez pas j&#39;aime tros Sabo-Sama!!!</strong></span><br />\r\n<br />\r\n<br />\r\n<br />\r\n&nbsp;</h2>\r\n', '', 1447694406, 0, 1, 84, 3),
(131, 'TheTouhouCrew', 0, '<p>Bienvenue &eacute;trang&eacute; ici on pratique la sorcl&egrave;lerie adapt&eacute; &agrave; chacun de nos membre! celle du leader &eacute;tant la plus forte #modestie il est donc &agrave; son insu qu&#39;elle soit capitaine! si tu pratique toute sorte de sorcellerie et que tu veux d&eacute;gommer tout les autres &eacute;quipage qui s&#39;opposeront &agrave; la voie de la gloire soit le/la bienvenue!</p>\r\n', '', 1447698100, 0, 1, 85, 3),
(132, 'Dieu et ses Prélats', 0, '<p>Seul Dieu et Ceux qui le serve son digne de contempl&eacute;&nbsp;les Cieux&nbsp;</p>\r\n', '', 1447703290, 0, 1, 86, 2);

-- --------------------------------------------------------

--
-- Structure de la table `crews_banks`
--

CREATE TABLE IF NOT EXISTS `crews_banks` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `crews_banks`
--

INSERT INTO `crews_banks` (`id`) VALUES
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47),
(48),
(49),
(50),
(51),
(52),
(53),
(54),
(55),
(56),
(57),
(58),
(59),
(60),
(61),
(62),
(63),
(64),
(65),
(66),
(67),
(68),
(69),
(70),
(71),
(72),
(73),
(74),
(75),
(76),
(77),
(78),
(79),
(80),
(81),
(82),
(83),
(84),
(85),
(86),
(87);

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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `crews_candidacy`
--

INSERT INTO `crews_candidacy` (`id`, `title`, `texte`, `date_time`, `candidacy`, `id_users`, `id_crews`) VALUES
(90, 'chasseur', 'ohayo les gens c shinishi connu du meme nom dans le s2', 1447689891, 0, 263, 56),
(93, 'Je veux', 'JE VEUX VENIR SVP', 1447705817, 0, 298, 83);

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
(58, 1, 4),
(51, 34, 5),
(56, 51, 5),
(57, 63, 5),
(100, 65, 4),
(93, 66, 5),
(58, 67, 5),
(66, 68, 4),
(56, 69, 3),
(91, 70, 5),
(56, 71, 4),
(64, 72, 5),
(67, 73, 5),
(59, 74, 5),
(60, 75, 5),
(56, 76, 2),
(130, 78, 4),
(62, 80, 5),
(60, 81, 3),
(60, 83, 2),
(56, 84, 3),
(63, 86, 5),
(56, 87, 4),
(56, 89, 2),
(60, 90, 4),
(114, 91, 5),
(83, 94, 3),
(85, 96, 5),
(110, 97, 5),
(60, 98, 1),
(66, 99, 5),
(60, 101, 2),
(71, 102, 5),
(56, 104, 4),
(58, 105, 1),
(66, 107, 3),
(99, 110, 5),
(80, 113, 5),
(56, 115, 2),
(58, 116, 4),
(76, 120, 5),
(83, 121, 2),
(83, 125, 5),
(83, 126, 3),
(56, 130, 2),
(58, 132, 2),
(81, 135, 2),
(56, 136, 2),
(104, 137, 5),
(58, 138, 3),
(81, 139, 5),
(82, 140, 5),
(56, 141, 2),
(56, 142, 2),
(60, 143, 2),
(83, 144, 2),
(56, 148, 2),
(97, 149, 5),
(87, 152, 5),
(130, 153, 5),
(58, 155, 3),
(89, 156, 5),
(56, 158, 2),
(58, 159, 2),
(90, 160, 5),
(56, 161, 2),
(92, 163, 5),
(83, 165, 4),
(66, 166, 2),
(87, 169, 2),
(100, 172, 5),
(56, 173, 2),
(56, 175, 2),
(95, 181, 5),
(98, 188, 5),
(99, 193, 4),
(56, 194, 2),
(58, 199, 3),
(58, 201, 2),
(101, 203, 5),
(56, 204, 2),
(102, 206, 5),
(56, 208, 2),
(99, 213, 2),
(105, 215, 5),
(98, 216, 2),
(107, 218, 5),
(110, 219, 2),
(56, 223, 2),
(56, 225, 2),
(58, 227, 4),
(56, 233, 2),
(111, 234, 5),
(110, 237, 4),
(58, 238, 4),
(60, 240, 1),
(110, 241, 2),
(116, 242, 5),
(60, 244, 2),
(56, 245, 2),
(117, 249, 5),
(107, 250, 4),
(118, 254, 5),
(131, 262, 5),
(119, 268, 5),
(56, 271, 2),
(58, 274, 3),
(107, 275, 4),
(107, 280, 3),
(111, 282, 4),
(120, 283, 5),
(58, 285, 4),
(121, 287, 5),
(123, 296, 5),
(129, 302, 5),
(125, 304, 5),
(128, 312, 5),
(130, 314, 4),
(132, 320, 5);

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
-- Structure de la table `faction`
--

CREATE TABLE IF NOT EXISTS `faction` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

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
  `sequence` int(4) NOT NULL,
  `is_crew` tinyint(1) NOT NULL DEFAULT '1',
  `last_topic` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `forums_categories`
--

INSERT INTO `forums_categories` (`id`, `name`, `descr`, `types`, `is_block`, `sequence`, `is_crew`, `last_topic`) VALUES
(1, 'Salle secrète', 'Salle secrète réservé au staff !', '', 0, 1, 0, 129),
(2, 'Messages officiels', 'Tous les messages officiels sont postés ici !', '', 0, 2, 0, 81),
(3, 'Présentation des membres', 'C''est dans cette section que chaque membre du site pourra faire une petite présentation de lui-même.', '', 0, 6, 0, 125),
(4, 'Aide', 'Si vous avez besoin d''aide et que personne ne vous répond sur le t''chat, cette section vous correspond!', '', 0, 8, 0, 5),
(5, 'Général', 'Parlez de tout et de rien.<br>\nEn rapport plus ou moins loin du jeu.', NULL, 0, 3, 0, 259),
(6, 'Rumeurs', 'Toutes les rumeurs sur le site', NULL, 1, 6, 0, 7),
(7, 'Diplomatie inter-équipages', 'Recrutez des membres et proposez des alliances entre équipages... ou même la guerre!', NULL, 1, 7, 0, 8),
(8, 'Animations', 'Participez ou organisez des concours afin d''animer la communauté!', NULL, 0, 5, 0, 118),
(9, 'Commerce', 'Vendez à d''autres joueurs tous les objets que vous avez en trop !', NULL, 1, 9, 0, 10),
(10, 'Discussions scans', 'Exprimez-vous sur les scans', NULL, 0, 10, 0, 232),
(11, 'Tomes français', 'Exprimez-vous sur les épisodes sortis en France', NULL, 0, 11, 0, 12),
(12, 'Vos idées', 'Proposez vos idées, elles seront peut-être réalisées', NULL, 0, 12, 0, 200),
(13, 'Astuces & tactiques', 'Partagez vos astuces entre membres', NULL, 1, 13, 0, 14),
(14, 'Bugs', 'Vous avez rencontré un bug ou une faille? Signalez-le ici!', NULL, 0, 14, 0, 242),
(15, 'Pirate', 'Le forum privé des Pirates !', NULL, 1, 4, 0, 106),
(16, 'Marine', 'Le forum privé des Marines', NULL, 1, 4, 0, 243),
(17, 'Révolutionnaire', 'Le forum privé des Révolutionnaires', NULL, 1, 4, 0, 247),
(50, 'Staffoula', 'Forum privé de l''équipage Staffoula', NULL, 0, 50, 1, 52),
(51, 'Test', 'Forum privé de l''équipage Test', NULL, 0, 50, 1, 53),
(52, 'dfdsfd', 'Forum privé de l''équipage dfdsfd', NULL, 0, 50, 1, 54),
(53, 'dsfdgdfgf', 'Forum privé de l''équipage dsfdgdfgf', NULL, 0, 50, 1, 56),
(54, 'Starfoula', 'Forum privé de l''équipage Starfoula', NULL, 0, 50, 1, 63),
(55, 'DarkNess Killeur', 'Forum privé de l''équipage DarkNess Killeur', NULL, 0, 50, 1, 64),
(56, 'DarkNess Killeur', 'Forum privé de l''équipage DarkNess Killeur', NULL, 0, 50, 1, 74),
(57, 'Funny', 'Forum privé de l''équipage Funny', NULL, 0, 50, 1, 69),
(58, 'Team Phoenix', 'Forum privé de l''équipage Team Phoenix', NULL, 0, 50, 1, 273),
(59, 'Redemption', 'Forum privé de l''équipage Redemption', NULL, 0, 50, 1, 84),
(60, 'Ghost United', 'Forum privé de l''équipage Ghost United', NULL, 0, 50, 1, 91),
(61, 'The froowd', 'Forum privé de l''équipage The froowd', NULL, 0, 50, 1, 86),
(62, 'Chapeau de Paille', 'Forum privé de l''équipage Chapeau de Paille', NULL, 0, 50, 1, 220),
(63, 'Tenryubito', 'Forum privé de l''équipage Tenryubito', NULL, 0, 50, 1, 88),
(64, 'Les chats noirs du clair de lune', 'Forum privé de l''équipage Les chats noirs du clair de lune', NULL, 0, 50, 1, 218),
(65, 'Brave Saviors ', 'Forum privé de l''équipage Brave Saviors ', NULL, 0, 50, 1, 90),
(66, 'Dragon Warriors', 'Forum privé de l''équipage Dragon Warriors', NULL, 0, 50, 1, 158),
(67, 'Funz Pirates', 'Forum privé de l''équipage Funz Pirates', NULL, 0, 50, 1, 138),
(68, 'Goteï 13', 'Forum privé de l''équipage Goteï 13', NULL, 0, 50, 1, 96),
(69, 'Tenryu', 'Forum privé de l''équipage Tenryu', NULL, 0, 50, 1, 97),
(70, 'mabite', 'Forum privé de l''équipage mabite', NULL, 0, 50, 1, 98),
(71, 'L''ordalie des mouettes', 'Forum privé de l''équipage L''ordalie des mouettes', NULL, 0, 50, 1, 99),
(72, 'tytyjtyj', 'Forum privé de l''équipage tytyjtyj', NULL, 0, 50, 1, 100),
(73, 'Revolutionary', 'Forum privé de l''équipage Revolutionary', NULL, 0, 50, 1, 102),
(74, 'je teste le jeux alors tg', 'Forum privé de l''équipage je teste le jeux alors tg', NULL, 0, 50, 1, 103),
(75, 'Les Grands Corsaires', 'Forum privé de l''équipage Les Grands Corsaires', NULL, 0, 50, 1, 107),
(76, 'tamlapute', 'Forum privé de l''équipage tamlapute', NULL, 0, 50, 1, 110),
(77, 'EatMe', 'Forum privé de l''équipage EatMe', NULL, 0, 50, 1, 112),
(78, 'ûûééèèààAÛ', 'Forum privé de l''équipage ûûééèèààAÛ', NULL, 0, 50, 1, 114),
(79, '''<script>alert(document.cookie);</s', 'Forum privé de l''équipage ''<script>alert(document.cookie);</script>', NULL, 0, 50, 1, 115),
(80, 'Rafale Square', 'Forum privé de l''équipage Rafale Square', NULL, 0, 50, 1, 116),
(81, 'NewBesterBoss', 'Forum privé de l''équipage NewBesterBoss', NULL, 0, 50, 1, 175),
(82, 'Révolutionnaires  ', 'Forum privé de l''équipage Révolutionnaires  ', NULL, 0, 50, 1, 119),
(83, 'Les Grands Corsaires', 'Forum privé de l''équipage Les Grands Corsaires', NULL, 0, 50, 1, 128),
(84, 'Shadow''s Daemons', 'Forum privé de l''équipage Shadow''s Daemons', NULL, 0, 50, 1, 124),
(85, 'Darkness Pirate''s', 'Forum privé de l''équipage Darkness Pirate''s', NULL, 0, 50, 1, 126),
(86, 'cccchichi', 'Forum privé de l''équipage cccchichi', NULL, 0, 50, 1, 130),
(87, 'DarkUnited', 'Forum privé de l''équipage DarkUnited', NULL, 0, 50, 1, 135),
(88, 'DarkUnitede', 'Forum privé de l''équipage DarkUnitede', NULL, 0, 50, 1, 133),
(89, 'Dark Mugiwara', 'Forum privé de l''équipage Dark Mugiwara', NULL, 0, 50, 1, 134),
(90, 'los chimeros ', 'Forum privé de l''équipage los chimeros ', NULL, 0, 50, 1, 136),
(91, 'Thin Lizzy', 'Forum privé de l''équipage Thin Lizzy', NULL, 0, 50, 1, 139),
(92, 'Team Phœnix', 'Forum privé de l''équipage Team Phœnix', NULL, 0, 50, 1, 140),
(93, 'Heart Pirates', 'Forum privé de l''équipage Heart Pirates', NULL, 0, 50, 1, 141),
(94, 'the winner ', 'Forum privé de l''équipage the winner ', NULL, 0, 50, 1, 142),
(95, 'Equipage 2.0 Nami-san', 'Forum privé de l''équipage Equipage 2.0 Nami-san', NULL, 0, 50, 1, 143),
(96, 'Styrisvolurin ', 'Forum privé de l''équipage Styrisvolurin ', NULL, 0, 50, 1, 144),
(97, 'Crew Banned', 'Forum privé de l''équipage Crew Banned', NULL, 0, 50, 1, 146),
(98, 'La croisière s''amuse', 'Forum privé de l''équipage La croisière s''amuse', NULL, 0, 50, 1, 147),
(99, 'Seireitei', 'Forum privé de l''équipage Seireitei', NULL, 0, 50, 1, 149),
(100, 'Tengoku No Taiga', 'Forum privé de l''équipage Tengoku No Taiga', NULL, 0, 50, 1, 151),
(101, 'Loose', 'Forum privé de l''équipage Loose', NULL, 0, 50, 1, 155),
(102, 'crow11', 'Forum privé de l''équipage crow11', NULL, 0, 50, 1, 156),
(103, 'SOFR', 'Forum privé de l''équipage SOFR', NULL, 0, 50, 1, 159),
(104, 'InThePlaceToBe', 'Forum privé de l''équipage InThePlaceToBe', NULL, 0, 50, 1, 162),
(105, 'Mugiwara', 'Forum privé de l''équipage Mugiwara', NULL, 0, 50, 1, 163),
(106, 'Kings Pirates', 'Forum privé de l''équipage Kings Pirates', NULL, 0, 50, 1, 164),
(107, 'Shandora', 'Forum privé de l''équipage Shandora', NULL, 0, 50, 1, 168),
(108, 'Shandia', 'Forum privé de l''équipage Shandia', NULL, 0, 50, 1, 169),
(109, 'Royal King', 'Forum privé de l''équipage Royal King', NULL, 0, 50, 1, 172),
(110, 'Power Rangers Family', 'Forum privé de l''équipage Power Rangers Family', NULL, 0, 50, 1, 190),
(111, 'Night~Blood', 'Forum privé de l''équipage Night~Blood', NULL, 0, 50, 1, 225),
(112, 'Kings Pirates', 'Forum privé de l''équipage Kings Pirates', NULL, 0, 50, 1, 180),
(113, 'New Beast Pirate', 'Forum privé de l''équipage New Beast Pirate', NULL, 0, 50, 1, 183),
(114, 'Tenryu', 'Forum privé de l''équipage Tenryu', NULL, 0, 50, 1, 184),
(115, 'l''équipage du chapeau ardent', 'Forum privé de l''équipage l''équipage du chapeau ardent', NULL, 0, 50, 1, 185),
(116, 'du chapeau ardent', 'Forum privé de l''équipage du chapeau ardent', NULL, 0, 50, 1, 186),
(117, 'Sleeping Forest', 'Forum privé de l''équipage Sleeping Forest', NULL, 0, 50, 1, 192),
(118, ' Hero Association', 'Forum privé de l''équipage  Hero Association', NULL, 0, 50, 1, 210),
(119, 'Omega', 'Forum privé de l''équipage Omega', NULL, 0, 50, 1, 219),
(120, 'S.A.O', 'Forum privé de l''équipage S.A.O', NULL, 0, 50, 1, 223),
(121, 'Saden', 'Forum privé de l''équipage Saden', NULL, 0, 50, 1, 226),
(122, 'Star platinium', 'Forum privé de l''équipage Star platinium', NULL, 0, 50, 1, 227),
(123, 'Zizi dur clan', 'Forum privé de l''équipage Zizi dur clan', NULL, 0, 50, 1, 229),
(124, 'Aight', 'Forum privé de l''équipage Aight', NULL, 0, 50, 1, 230),
(125, 'Bløød Lust', 'Forum privé de l''équipage Bløød Lust', NULL, 0, 50, 1, 233),
(126, 'Royal King', 'Forum privé de l''équipage Royal King', NULL, 0, 50, 1, 235),
(127, 'Royal King', 'Forum privé de l''équipage Royal King', NULL, 0, 50, 1, 238),
(128, 'Blueberry', 'Forum privé de l''équipage Blueberry', NULL, 0, 50, 1, 240),
(129, 'Rengôgun', 'Forum privé de l''équipage Rengôgun', NULL, 0, 50, 1, 244),
(130, 'Dark Unity', 'Forum privé de l''équipage Dark Unity', NULL, 0, 50, 1, 246),
(131, 'TheTouhouCrew', 'Forum privé de l''équipage TheTouhouCrew', NULL, 0, 50, 1, 248),
(132, 'Dieu et ses Prélats', 'Forum privé de l''équipage Dieu et ses Prélats', NULL, 0, 50, 1, 250),
(133, 'Troll', 'Forum privé de l''équipage Troll', NULL, 0, 50, 1, 251);

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
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `forums_topics`
--

INSERT INTO `forums_topics` (`id`, `name`, `is_block`, `last_message`, `id_forums_categories`, `id_forums_topics_types`) VALUES
(3, 'Salle secrète', 1, 0, 1, 1),
(4, 'Premier Topic', 0, 4, 3, 1),
(5, 'Premier Topic', 0, 12130, 4, 1),
(6, 'Premier Topic', 1, 0, 5, 1),
(7, 'Premier Topic', 0, 7, 6, 1),
(8, 'Premier Topic', 0, 8, 7, 1),
(9, 'Premier Topic', 0, 11959, 8, 1),
(10, 'Premier Topic', 0, 10, 9, 1),
(11, 'Premier Topic', 0, 11, 10, 1),
(12, 'Premier Topic', 0, 12132, 11, 1),
(13, 'Premier Topic', 0, 364, 12, 1),
(14, 'Premier Topic', 0, 14, 13, 1),
(15, 'Premier Topic', 0, 15, 14, 1),
(16, 'Todo', 0, 0, 1, 1),
(17, 'Todo', 0, 0, 1, 4),
(18, 'sdfsf', 0, 0, 5, 1),
(19, 'sdfdsg', 0, 0, 5, 1),
(20, 'sdfsdgfdfgfdgfd', 0, 0, 5, 1),
(22, 'Todo', 0, 42, 1, 1),
(52, 'Bienvenue sur votre forum', 0, 46, 50, 1),
(53, 'Bienvenue sur votre forum', 0, 65, 51, 1),
(54, 'Bienvenue sur votre forum', 0, 48, 52, 1),
(55, 'Premier topic', 0, 49, 16, 1),
(56, 'Bienvenue sur votre forum', 0, 54, 53, 1),
(57, 'Bienvenue Pirate', 0, 584, 15, 1),
(58, 'Bienvenue Révolutionnaire', 0, 56, 17, 1),
(61, 'BDH n°1', 0, 1036, 8, 1),
(62, '[V2.5] Propositions des idées', 0, 11966, 5, 1),
(63, 'Bienvenue sur votre forum', 0, 61, 54, 1),
(64, 'Bienvenue sur votre forum', 1, 0, 55, 1),
(65, 'Bienvenue sur votre forum', 0, 68, 56, 1),
(66, 'Règles de bonne conduite', 0, 0, 56, 4),
(67, 'Le Double Post [DNK]', 0, 0, 56, 1),
(68, 'aa', 0, 0, 56, 1),
(69, 'Bienvenue sur votre forum', 0, 69, 57, 1),
(70, 'fdsf', 1, 0, 5, 1),
(71, 'fdsf', 1, 0, 5, 1),
(72, 'gfdgdf', 1, 0, 1, 1),
(73, '[Recrutement] DarkNess Killeur', 0, 604, 17, 1),
(74, 'Le Double Post [DNK]', 0, 12095, 56, 1),
(75, 'Règles de bonne conduite', 0, 12093, 56, 4),
(76, 'Test', 1, 0, 56, 1),
(77, 'aaaaa', 1, 0, 17, 1),
(78, 'Tic...tac...bip - Reprise', 0, 12104, 8, 1),
(79, 'La phrase infinie', 0, 12074, 8, 1),
(80, 'Conditions générales d''utilisation', 0, 99, 1, 1),
(81, 'Conditions générales d''utilisation', 0, 12136, 2, 4),
(82, 'Ahah nice troll', 0, 12059, 5, 1),
(83, 'Bienvenue sur votre forum', 1, 0, 58, 1),
(84, 'Bienvenue sur votre forum', 0, 105, 59, 1),
(85, 'Bienvenue sur votre forum', 0, 106, 60, 1),
(86, 'Bienvenue sur votre forum', 0, 110, 61, 1),
(87, 'Bienvenue sur votre forum', 1, 0, 62, 1),
(88, 'Bienvenue sur votre forum', 0, 112, 63, 1),
(89, 'Bienvenue sur votre forum', 0, 116, 64, 1),
(90, 'Bienvenue sur votre forum', 0, 127, 65, 1),
(91, 'Ghost rpz', 0, 605, 60, 1),
(92, 'Bienvenue sur votre forum', 0, 133, 66, 1),
(93, 'Concours de "colo''s"', 0, 12107, 8, 1),
(94, 'Test', 1, 0, 64, 1),
(95, 'Bienvenue sur votre forum', 1, 0, 67, 1),
(96, 'Bienvenue sur votre forum', 0, 146, 68, 1),
(97, 'Bienvenue sur votre forum', 0, 147, 69, 1),
(98, 'Bienvenue sur votre forum', 0, 148, 70, 1),
(99, 'Bienvenue sur votre forum', 0, 151, 71, 1),
(100, 'Bienvenue sur votre forum', 0, 154, 72, 1),
(101, 'Nous, On recrute !', 0, 174, 16, 1),
(102, 'Bienvenue sur votre forum', 0, 170, 73, 1),
(103, 'Bienvenue sur votre forum', 0, 173, 74, 1),
(104, '[Avis]Un nom pour le jeu ?', 0, 12024, 5, 1),
(105, 'Loup', 0, 477, 3, 1),
(106, '[Blabla] La Taverne ', 0, 12056, 15, 1),
(107, 'Bienvenue sur votre forum', 0, 195, 75, 1),
(108, 'idée pour la sortie officiel', 0, 206, 5, 1),
(109, 'Bug création nom équipage', 0, 219, 14, 1),
(110, 'Bienvenue sur votre forum', 0, 207, 76, 1),
(111, 'Tchat mother fucker', 0, 5912, 56, 1),
(112, 'Bienvenue sur votre forum', 0, 213, 77, 1),
(113, 'Bug coiffure', 0, 502, 14, 1),
(114, 'Bienvenue sur votre forum', 0, 216, 78, 1),
(115, 'Bienvenue sur votre forum', 0, 227, 79, 1),
(116, 'Bienvenue sur votre forum', 0, 230, 80, 1),
(117, 'Bienvenue sur votre forum', 0, 240, 81, 1),
(118, 'Le double post', 0, 12128, 8, 1),
(119, 'Bienvenue sur votre forum', 0, 244, 82, 1),
(120, 'Scans Fairy Tail', 0, 245, 10, 1),
(121, 'Bienvenue sur votre forum', 1, 0, 83, 1),
(122, 'Bug MP accents', 0, 492, 14, 1),
(123, 'Bug FAQ', 0, 491, 14, 1),
(124, 'Bienvenue sur votre forum', 0, 260, 84, 1),
(125, 'Sumeerfrio', 0, 12138, 3, 1),
(126, 'Bienvenue sur votre forum', 0, 263, 85, 1),
(127, 'J''aime les pommes', 0, 270, 83, 1),
(128, 'Salle 1', 0, 12117, 83, 1),
(129, 'test vidéo', 0, 12172, 1, 1),
(130, 'Bienvenue sur votre forum', 0, 280, 86, 1),
(131, 'Bienvenue sur votre forum', 0, 289, 87, 1),
(132, 'tchat', 0, 370, 87, 1),
(133, 'Bienvenue sur votre forum', 0, 295, 88, 1),
(134, 'Bienvenue sur votre forum', 0, 298, 89, 1),
(135, 'reglement', 0, 595, 87, 1),
(136, 'Bienvenue sur votre forum', 0, 310, 90, 1),
(137, 'trafalgar', 0, 489, 3, 1),
(138, 'SALLE SECRETE EQUIPAGE', 0, 344, 67, 1),
(139, 'Bienvenue sur votre forum', 0, 347, 91, 1),
(140, 'Bienvenue sur votre forum', 0, 351, 92, 1),
(141, 'Bienvenue sur votre forum', 0, 376, 93, 1),
(142, 'Bienvenue sur votre forum', 0, 377, 94, 1),
(143, 'Bienvenue sur votre forum', 0, 378, 95, 1),
(144, 'Bienvenue sur votre forum', 0, 381, 96, 1),
(145, 'Yoh-ohohoh Yoh-ohoh-oh, Yoh-ohohoh ', 1, 0, 5, 1),
(146, 'Bienvenue sur votre forum', 0, 391, 97, 1),
(147, 'Bienvenue sur votre forum', 0, 395, 98, 1),
(148, 'Bienvenue sur votre forum', 1, 0, 99, 1),
(149, 'Salle du Seireitei', 0, 6215, 99, 4),
(150, 'Fonction recherche', 0, 490, 14, 1),
(151, 'Bienvenue sur votre forum', 0, 409, 100, 1),
(152, 'Tes un pirates ?  tu cherche un équ', 0, 646, 15, 1),
(153, 'Red.W.Viper', 0, 564, 3, 1),
(154, '', 1, 0, 14, 1),
(155, 'Bienvenue sur votre forum', 0, 449, 101, 1),
(156, 'Bienvenue sur votre forum', 0, 462, 102, 1),
(157, 'Entente', 0, 11989, 17, 1),
(158, 'tchat ', 0, 11846, 66, 1),
(159, 'Bienvenue sur votre forum', 0, 474, 103, 1),
(160, 'Le Terrible .... Neptune !', 0, 662, 3, 1),
(161, 'Riyum''Euh DICTATEUR!!', 1, 0, 56, 1),
(162, 'Bienvenue sur votre forum', 0, 497, 104, 1),
(163, 'Bienvenue sur votre forum', 0, 498, 105, 1),
(164, 'Bienvenue sur votre forum', 0, 499, 106, 1),
(165, 'Bienvenue sur votre forum', 0, 501, 107, 1),
(166, 'Le gardien de Shandora !', 0, 11973, 3, 1),
(167, 'Karugara et Norland vous accueillen', 1, 0, 107, 1),
(168, 'Les Shandias vous accueillent !', 0, 505, 107, 1),
(169, 'Bienvenue sur votre forum', 0, 511, 108, 1),
(170, 'Mmh...', 0, 512, 3, 1),
(171, 'Bienvenue sur votre forum', 0, 515, 109, 1),
(172, '', 0, 521, 109, 1),
(173, 'Bienvenue sur votre forum', 0, 531, 110, 1),
(174, '[recrutement] Power Rangers Family', 0, 535, 17, 1),
(175, 'Salle 1', 0, 725, 81, 1),
(176, '', 0, 12002, 12, 1),
(177, 'JohnDix, révolutionnaire de père en', 0, 11857, 3, 1),
(178, 'Bug Riyuma', 1, 0, 14, 1),
(179, 'Bienvenue sur votre forum', 1, 0, 111, 1),
(180, 'Bienvenue sur votre forum', 0, 572, 112, 1),
(181, 'Lucifer. - Pirate ', 0, 12137, 3, 1),
(182, 'ROI DES PIRATES', 0, 583, 15, 1),
(183, 'Bienvenue sur votre forum', 0, 586, 113, 1),
(184, 'Bienvenue sur votre forum', 0, 587, 114, 1),
(185, 'Bienvenue sur votre forum', 0, 592, 115, 1),
(186, 'Bienvenue sur votre forum', 0, 593, 116, 1),
(187, 'Salle de l''Equipage', 1, 0, 56, 1),
(188, 'Salle 1', 0, 12135, 58, 1),
(189, '', 1, 0, 60, 1),
(190, 'Tchat de l''équipage ', 0, 609, 110, 1),
(191, '[Avis] En avant !', 0, 12020, 5, 1),
(192, 'Bienvenue sur votre forum', 0, 619, 117, 1),
(193, 'Topic sans titre', 0, 700, 14, 1),
(194, 'OP-DarkRP', 0, 11970, 8, 1),
(195, 'One Piece Treasure Cruise', 0, 12094, 5, 1),
(196, '[Séries] The Walking Dead , Arrow .', 0, 11818, 5, 1),
(197, 'Bienvenue sur votre forum', 0, 659, 118, 1),
(198, 'Mettre le nom des créateur de topic', 0, 11985, 12, 1),
(199, 'Forum d''équipage', 1, 0, 14, 1),
(200, 'Personnaliser les rangs .', 0, 12133, 12, 1),
(201, 'Kappa', 1, 0, 62, 1),
(202, 'Lettre coupé dans les news', 0, 695, 14, 1),
(203, 'Bug "Personnage sans visage"', 1, 0, 14, 1),
(204, '[Recrutement Hero Association]', 1, 0, 17, 1),
(205, '[Anime / Manga]', 0, 11841, 5, 1),
(206, 'Hello tout le monde', 0, 702, 3, 1),
(207, '[Recrutement Hero Association]', 0, 685, 17, 1),
(208, 'Lettre coupé dans le tchat', 0, 12080, 14, 1),
(209, 'Message de bienvenue', 1, 0, 118, 1),
(210, 'Message de bienvenue', 0, 690, 118, 1),
(211, 'Bug "Personnage sans visage"', 0, 696, 14, 1),
(212, 'rrrrrrrrrrrrrrrrrrrr', 1, 0, 62, 1),
(214, 'Rangs ^^', 0, 11955, 58, 1),
(215, 'Pseudo cliquable', 0, 11984, 12, 1),
(216, 'Les Loups-Garous V2', 0, 12033, 8, 1),
(217, 'Quel metier ferez vous plus tard ?', 0, 12126, 5, 1),
(218, 'Règlement et conduite dans l''équipa', 0, 1095, 64, 1),
(219, 'Bienvenue sur votre forum', 0, 1191, 119, 1),
(220, 'Kappa', 0, 8910, 62, 1),
(221, '[Music] Musiques du moment', 0, 11830, 5, 1),
(222, 'Système de Notifications, Follow et', 0, 11844, 12, 1),
(223, 'Bienvenue sur votre forum', 0, 11800, 120, 1),
(224, 'Night~Blood', 0, 11801, 15, 1),
(225, 'T''chat Night~Blood', 0, 11807, 111, 4),
(226, 'Bienvenue sur votre forum', 0, 11845, 121, 1),
(227, 'Bienvenue sur votre forum', 0, 11851, 122, 1),
(228, 'Le site est dans le futur', 0, 11968, 14, 1),
(229, 'Bienvenue sur votre forum', 0, 11921, 123, 1),
(230, 'Bienvenue sur votre forum', 0, 11924, 124, 1),
(231, 'Scans One Piece', 0, 11932, 10, 1),
(232, 'Scans Bleach', 0, 12131, 10, 1),
(233, 'Bienvenue sur votre forum', 0, 11974, 125, 1),
(234, 'Pouvoir suprimer sont compte .', 0, 11983, 12, 1),
(235, 'Bienvenue sur votre forum', 0, 11988, 126, 1),
(236, 'Le vice-amiral fracasseur de la Mar', 0, 12129, 3, 1),
(237, '[Recrutement] Royal King', 0, 11995, 17, 1),
(238, 'Bienvenue sur votre forum', 0, 11998, 127, 1),
(239, 'Images/avatars', 0, 12151, 1, 1),
(240, 'Bienvenue sur votre forum', 0, 12006, 128, 1),
(241, 'FAQ : Répondre à vos questions', 0, 12087, 5, 1),
(242, 'Bug déconnection.', 0, 12134, 14, 1),
(243, 'La Marine !', 0, 12127, 16, 1),
(244, 'Bienvenue sur votre forum', 0, 12040, 129, 1),
(245, 'Bienvenue sur votre forum', 0, 12042, 130, 1),
(246, 'T''chat ', 0, 12068, 130, 1),
(247, 'Dark unity recrute', 0, 12047, 17, 1),
(248, 'Bienvenue sur votre forum', 0, 12064, 131, 1),
(249, 'Test', 1, 0, 1, 1),
(250, 'Bienvenue sur votre forum', 0, 12099, 132, 1),
(251, 'Bienvenue sur votre forum', 0, 12102, 133, 1),
(252, 'dsfdfg', 0, 12139, 5, 1),
(253, 'dfgf', 0, 12140, 5, 1),
(254, 'dsfdsf', 0, 12141, 5, 1),
(255, 'fsdfza', 0, 12142, 5, 1),
(256, 'sdfsdfsd', 0, 12143, 5, 1),
(257, 'fdsfdsf', 0, 12144, 5, 1),
(258, 'dsfsdgfd', 0, 12145, 5, 1),
(259, 'dfgdfg', 0, 12146, 5, 1),
(260, 'dfgdfgdf', 1, 0, 1, 1),
(261, 'sdfsdg', 1, 0, 1, 1),
(262, 'gfsdg', 1, 0, 1, 1),
(263, 'sdfsd', 1, 0, 1, 1),
(264, 'sdfsdg', 1, 0, 1, 1),
(265, 'dfgdf', 1, 0, 1, 1),
(266, 'gdfgfdg', 1, 0, 1, 1),
(267, 'dgdgd', 1, 0, 1, 1),
(268, 'gfdgfgf', 0, 12160, 1, 1),
(269, 'aaaaaaaaaaaaa', 1, 12171, 1, 1),
(270, 'tttttttttttttt', 1, 12173, 1, 1),
(271, 'gdfgfdg', 1, 12174, 1, 1),
(272, 'test', 0, 12175, 58, 1),
(273, 'dfgfdgdf', 0, 12176, 58, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=12177 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `forums_topics_messages`
--

INSERT INTO `forums_topics_messages` (`id`, `message`, `date_time`, `is_block`, `id_forums_topics`, `id_users`) VALUES
(3, 'Premier message', 1446207986, 1, 3, 13),
(4, 'Premier message', 1446207986, 0, 4, 13),
(5, 'Premier message', 1446207986, 0, 5, 13),
(6, 'Premier message', 1446207986, 1, 6, 13),
(7, 'Premier message', 1446207986, 0, 7, 13),
(8, 'Premier message', 1446207986, 0, 8, 13),
(9, 'Premier message', 1446207986, 0, 9, 13),
(10, 'Premier message', 1446207986, 0, 10, 13),
(11, 'Premier message', 1446207986, 0, 11, 13),
(12, 'Premier message', 1446207986, 0, 12, 13),
(13, 'Premier message', 1446207986, 0, 13, 13),
(14, 'Premier message', 1446207986, 0, 14, 13),
(15, 'Premier message', 1446207986, 0, 15, 13),
(39, '<p>test</p>\r\n', 1446941841, 1, 3, 13),
(40, '<p>test</p>\r\n', 1446989074, 1, 3, 1),
(42, '<p>TODO List (avant ouverture)<br />\r\n============================<br />\r\n<br />\r\nIndex : /home/accueil<br />\r\nNOK - Devrait &ecirc;tre juste le nom de domaine (/)<br />\r\nNOK - Manque du contenu dans dans le content<br />\r\nOK - boutons : &quot;connection&quot; &gt; &quot;connexion&quot; en fran&ccedil;ais<br />\r\nOK - Le debug est affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n<br />\r\nInscription : /users/create<br />\r\nOK - Div pseudo n&#39;est pas du bon style<br />\r\nNOK - Password : pas de test de faible/moyen/fort s&eacute;curis&eacute;<br />\r\nOK - Div email n&#39;est pas du bon style<br />\r\n<strong>NOK - Bug quand tu charges les cheveux (le corps disparais)</strong><br />\r\nNOK - Bug : on ne peut pas r&eacute;cup&eacute;rer les yeux par d&eacute;faut<br />\r\nOK - Il manque cruellement de diff&eacute;rence entre les styles<br />\r\nOK -&gt; Est-ce necessaire de cr&eacute;er son propre avatar ?<br />\r\nOK - Le debug est affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\nNOK - Le bouton est moche<br />\r\n<br />\r\nOK Error &agrave; la validation du formulaire d&#39;inscription :<br />\r\nOK Fatal error: Call to undefined function imagecreatetruecolor() in /var/www/onepiece/application/models/Users_model.php on line 217<br />\r\n<br />\r\nConnexion : /users/connect<br />\r\nOK - Div pseudo n&#39;est pas du bon style<br />\r\nOK - Il manque le lien &quot;j&#39;ai oubli&eacute; mon mdp&quot;<br />\r\nOK - Le debug est affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\nOK - Le bouton est moche<br />\r\n<br />\r\nNews : /<br />\r\nNOK - La sidebar est moche<br />\r\nOK - Dans la sidebar &quot;Accueil&quot; &gt; &quot;News&quot;<br />\r\nOK - Il faudrait nettoyer toute les news et commentaires<br />\r\nOK - La pagination manque d&#39;espace et de style<br />\r\nNOK - Les news devrait &ecirc;tre tronqu&eacute;es &agrave; 200 caract&egrave;res<br />\r\nNOK - Le nb comment doit &ecirc;tre affich&eacute; en fin de news<br />\r\nOK - Manque r&eacute;seaux sociaux en fin de news (avec nb partage)<br />\r\nOK - Il faudrait une bulle de notif sur des icones (comment, fb, twitter)<br />\r\nOK - Le debug est affich&eacute; (activ&eacute;)<br />\r\nOK - Le footer est vide<br />\r\n<br />\r\nSidebar :<br />\r\nOK - Fans/Fanart : pas de redirection<br />\r\nOK - Fans/Fanfics : pas de redirection<br />\r\nOK - Fans/Fanmovs : pas de redirection (n&eacute;cessaire?)<br />\r\nOK - Communaut&eacute;/Livre d&#39;or : pas de redirection<br />\r\nOK - Communaut&eacute;/Classement : pas de redirection<br />\r\nOK &gt; Faire une page de &quot;coming soon&quot;<br />\r\nNOK - MonCompte devrait avoir un dropdon avec messagerie/sac<br />\r\n<br />\r\nAnnuaire : /users<br />\r\nOK - Il y a trop d&#39;espace entre le titre et Le nombre de joueur inscrits<br />\r\nOK - Il manque les zones de filtres (coming soon?)<br />\r\nNOK - Les id n&#39;ont rien &agrave; faire ici<br />\r\nOK - Le d&eacute;bug est affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\nOK - Le footer est vide<br />\r\n<br />\r\nProfils public : /users/view/10<br />\r\nOK - L&#39;avatar ne s&#39;affiche pas<br />\r\n<strong>NOK - Envoyer un message devrait &ecirc;tre un icon</strong><br />\r\nOK - Le debug est affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\nOK - Le footer est vide<br />\r\n<br />\r\nListe connect&eacute;s : /users/liste<br />\r\nNOK - Faute de fran&ccedil;ais au lieu d&#39;anglais dans le nom<br />\r\nOK - Error : Table &#39;onepiecev3.sessions&#39; doesn&#39;t exist<br />\r\n<br />\r\nFAQ : /forum/t/21<br />\r\nNOK - Devrait &ecirc;tre une page ind&eacute;pendante et pas un topic<br />\r\nNOK &gt; Refaire<br />\r\n<br />\r\nStaff : /users/staff<br />\r\nOK - L&#39;affichage est d&eacute;gueulasse :p<br />\r\nOK - Le footer est vide<br />\r\nOK - Le debug est affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n<br />\r\nForum : /forum<br />\r\n- La mosa&iuml;que est inutile : les cat&eacute;gories doivent prendre la longueur<br />\r\n- Il y a trop de cat&eacute;gories :<br />\r\n&gt; Messages officiel : ok<br />\r\n&gt; G&eacute;n&eacute;ral : ok<br />\r\n&gt; Pr&eacute;sentation membre : &agrave; supprimer<br />\r\n&gt; Aides : pas sur de l&#39;utilit&eacute;<br />\r\n&gt; Rumeurs : &agrave; supprimer<br />\r\n&gt; Diplomatie inter-&eacute;quipage : inutile actuellement<br />\r\n&gt; Animation : pourquoi pas<br />\r\n&gt; Commerce : &agrave; supprimer<br />\r\n&gt; Discussions scan : &agrave; supprimer<br />\r\n&gt; Tomes fran&ccedil;ais : &agrave; supprimer<br />\r\n&gt; Vos id&eacute;es : -&gt; Boite &agrave; id&eacute;e<br />\r\n&gt; Astuces et tactiques : &agrave; supprimer<br />\r\n&gt; Bugs : &agrave; supprimer pour le support<br />\r\n&gt; Hello Worlds : &agrave; supprimer<br />\r\n- Par cat&eacute;gorie : revoir l&#39;affichage du dernier message<br />\r\n- Pas n&eacute;cessaire d&#39;afficher le dernier topics comment&eacute; dans les cat&eacute;gories (DUM : Pas d&#39;accord)<br />\r\n- Debug affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n- Footer vide<br />\r\n<br />\r\nTopics : /forum/c/5<br />\r\n- Route &agrave; revoir<br />\r\n- Le bouton de retour est inutile<br />\r\n- Le bouton de cr&eacute;ation de topic est d&eacute;gueulasse : faire un icon<br />\r\n<br />\r\nNouveau topic : /forum/create_topic<br />\r\n- Il y a trop d&#39;option de mise en forme pour le message<br />\r\n- Le bouton est moche<br />\r\n- debug affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n- Footer vide<br />\r\n<br />\r\nAffichage d&#39;un topic : /forum/t/27<br />\r\n- Le bouton &quot;nouveau topic dans cette cat&eacute;gorie&quot; : inutile<br />\r\n- Le bouton &quot;r&eacute;pondre&quot; devrait &ecirc;tre un icon<br />\r\n- Il n&#39;y a pas la possibilit&eacute; d&#39;avoir d&#39;ancre pour un message<br />\r\n- Footer vide<br />\r\n- debug affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n<br />\r\nR&eacute;ponse &agrave; un topic : /forum/answer<br />\r\n- On devrait pas pouvoir citer plus d&#39;une citation<br />\r\n<strong>- Les edit se cumulent, devraient &ecirc;tre ind&eacute;pendants du corps des messages</strong><br />\r\n- Footer vide<br />\r\n- debug affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n<br />\r\nTchat : /tchat<br />\r\n<strong>- Navigation entre les tchats par onglet c&#39;ets mieux</strong><br />\r\n- Tchat : Commerce &gt; &agrave; supprimer<br />\r\n- Description des tchats &agrave; faire<br />\r\n<strong>- Les avatars s&#39;&eacute;crasent en responsive</strong><br />\r\n- J&#39;ai horreur des smiley (mais c&#39;est personnel)<br />\r\n- Footer vide<br />\r\n- debug affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n<br />\r\nQuitter un &eacute;quipage : /crews/leave<br />\r\n- Probl&egrave;me d&#39;affichage de div<br />\r\n- Footer vide<br />\r\n- debug affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n<br />\r\nDissoudre un &eacute;quipage : /...<br />\r\n- Il faudrait une confirmation<br />\r\n<br />\r\nEquipage : /crews/index<br />\r\n- Pas n&eacute;cessaire de pointer sur &quot;index&quot; dans le route<br />\r\n- Le h1 est trop long<br />\r\n<strong>- Manque d&#39;ergonomie dans la page<br />\r\n- Peut-&ecirc;tre qu&#39;afficher ses candidatures en attente sur la page principale serait bien ?</strong><br />\r\n<br />\r\nEquipage Liste : /crews/liste<br />\r\n- Faute de fran&ccedil;ais dans la route<br />\r\n- Pr&eacute;voir une pagination !<br />\r\n<strong>- Afficher le nom de l&#39;&eacute;quipage, le drapeau et le d&eacute;but de sa description</strong><br />\r\n<br />\r\nEquipage Profil : /crews/view/54<br />\r\n- Les berry sont propres &agrave; l&#39;&eacute;quipage pas la peine de les montrer<br />\r\n- Rejoindre un &eacute;quipage devrait se faire par bouton icon<br />\r\n<br />\r\nEquipage candidature : /crews/c/54<br />\r\n- Tu devrais rapeller le nom de l&#39;&eacute;quipage ou tu postules en h1 (Candid: Starfoul)<br />\r\n- Bouton envoyer d&eacute;gueulasse<br />\r\n- Pas de confirmation lors de l&#39;envoi et on reste bloqu&eacute; sur la page<br />\r\n<br />\r\nEquipage Accueil du sien : /crews/index<br />\r\n- Liste des candid &gt; par bouton icon<br />\r\n- Modifier text &gt; par bouton icon<br />\r\n- G&eacute;rer rang membres &gt; par bouton icon<br />\r\n- &quot;Donner le lead&quot; &agrave; retirer<br />\r\n- Forum &gt; par bouton icon<br />\r\n- Quitter &eacute;quipage &gt; par bouton icon<br />\r\n<br />\r\nMonCompte : /account<br />\r\n- Navigation par icon + text serait mieux<br />\r\n<br />\r\nMessagerie : /messaging<br />\r\n- Re&ccedil;us/Envois pas au m&ecirc;me niveau que la page de mon compte<br />\r\n- Ergonomie &agrave; revoir<br />\r\n- Nouveau / Supprimer / R&eacute;pondre : par bouton icon<br />\r\n- Il faudrait que les messages avec la m&ecirc;me personne soit sur un m&ecirc;me &quot;flux&quot;<br />\r\n- Quand on veut &quot;tout supprimer&quot;, passer par une confirmation<br />\r\n<br />\r\nMessagerie r&eacute;ponse : /messaging/write/...<br />\r\n- On devrait pouvoir &eacute;crire par d&eacute;faut au dessus de la citation<br />\r\n- Bouton d&#39;envoi d&eacute;gueulasse<br />\r\n<br />\r\n<br />\r\nTODO Dev<br />\r\n============================<br />\r\n<br />\r\nRenommer /users/list -&gt; /users/connected<br />\r\nRenommer /users/index -&gt; /users/directory</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&Eacute;dit&eacute; par Dumbeldor le 08/11/2015 &agrave; 00h43</em></p>\r\n', 1446989722, 0, 22, 1),
(46, 'Votre forum privé vien d''être mis en ligne.\r\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\r\n						  Bon jeu.', 1446991689, 0, 52, 13),
(48, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447258570, 0, 54, 13),
(49, 'Premier message du forum des marines !', 5487412, 0, 55, 13),
(53, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447263925, 0, 56, 13),
(54, '<p>dfd</p>\r\n', 1447263940, 0, 56, 46),
(55, 'Bienvenue dans votre forum privé noble pirate !', 5487412, 0, 57, 13),
(56, 'Bienvenue dans le forum privé des révolutionnaire !<br>\r\nBon jeu !', 5487412, 0, 58, 13),
(57, '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href="http://img11.hostingpics.net/pics/552854BDH.png"><img alt="" src="http://img11.hostingpics.net/pics/552854BDH.png" style="height:300px; width:700px" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Bonjour et bienvenu dans le BDH &eacute;dition Duo gagnant n&deg;1 !</strong></tt></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p><tt>Quel est donc le BDH ? Le BDH est un tournoi opposant des &eacute;quipes de combattants dans des combats &agrave; mort!</tt></p>\r\n\r\n<p><tt>Comment ce d&eacute;roulerons les combats ? Quels sont les r&egrave;gles ? Comment formez une &eacute;quipe ?</tt></p>\r\n\r\n<p><tt>Ne vous affolez pas, je vais vous expliquez en d&eacute;tail le d&eacute;roulement de cette animation ainsi que les r&egrave;gles &agrave; suivre pour participer.</tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt>Le BDH &eacute;dition Duo est un tournoi ou s&#39;affrontent des &eacute;quipes de 2 combattants, chaque joueurs peut choisir jusqu&#39;&agrave; 4 combattant pour les repr&eacute;senter.</tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><tt><span style="color:#FF0000">- Les personnages choisit doivent &ecirc;tre tir&eacute; d&#39;un univers &quot;manga&quot; ou &quot;anim&eacute;&quot; dans la limite du raisonnable. (pas de hentai)</span></tt></strong></p>\r\n\r\n<p><strong><tt><span style="color:#FF0000">- Les joueurs doivent cr&eacute;e eux-m&ecirc;me l&#39;avatar qui repr&eacute;sentera leur personnage ou me donner assez de renseignements pour pouvoir le cr&eacute;e.</span></tt></strong></p>\r\n\r\n<p><strong><span style="color:#FF0000"><tt>- Pas de double compte et je vous demande de voter pour le personnage et non pour le joueur en question</tt>.&nbsp;<img alt="cool" src="http://dev.minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/shades_smile.png" style="height:23px; width:23px" title="cool" /></span></strong></p>\r\n\r\n<p><strong><span style="color:#FF0000"><tt>- La triche est autoris&eacute; seulement pour me faire gagner!</tt>&nbsp;<img alt="yes" src="http://dev.minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" /></span></strong></p>\r\n\r\n<p><strong><span style="color:#FF0000"><tt>- La taille pour l&#39;avatar est de 125x250 merci de respecter les dimensions.</tt></span></strong></p>\r\n\r\n<p><strong><tt><span style="color:#FF0000">- Impossible de choisir un personnage d&eacute;j&agrave; attribu&eacute; &agrave; un autre joueur.</span></tt></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<img src="http://img15.hostingpics.net/pics/386215Kakashi2.png" />&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;<strong> L&#39;&eacute;quipe du <span style="color:#FF0000">br&ucirc;lant </span>et de <span style="color:#FFD700">l&#39;&eacute;lectrique&nbsp;</span>!&nbsp;&nbsp;</strong>&nbsp; &nbsp; &nbsp; &nbsp;<img src="http://img15.hostingpics.net/pics/529614Roy5.png" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; <img src="http://img15.hostingpics.net/pics/199310Sasuke.png" />&nbsp;&nbsp; &nbsp; &nbsp;<strong>&nbsp; &nbsp;L&#39;&eacute;quipe Om&eacute;ga Blazer!</strong>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src="http://img15.hostingpics.net/pics/786265Vegeta.png" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt>Voici mes deux &eacute;quipes, l&#39;une est compos&eacute; de <strong>Kakashi et Roy</strong>, l&#39;autre de <strong>Sasuke&nbsp;et Vegeta</strong>!</tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><tt><span style="color:#000000">Les inscriptions sont ouverte pour une dur&eacute;e approximative d&#39;une semaine.</span></tt></strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><span style="font-size:8px">&Eacute;dit&eacute; par Riyuma le 11/11/2015 &agrave; 08h24</span></em></p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447265560, 0, 61, 51),
(58, '<blockquote>\r\n<pre>\r\n<span style="color:#000000"><strong><span class="marker"><span style="background-color:#FFFF00">Suite &agrave; la fermeture de la V2 (minegame) Dumbeldor a \r\ntout de m&ecirc;me propos&eacute; une re-cr&eacute;ation du topic d&#39;Enelos\r\n concernant les id&eacute;es et futurs modifications qui seront \r\napport&eacute; &agrave; la mise &agrave; jours de One Piece Rpg (V2.5)</span></span>\r\n\r\n<span class="marker"><span style="background-color:#FFFF00">Je vous repr&eacute;sente donc le topic comme je peux, \r\nen esp&eacute;rant n&#39;avoir oublier aucune id&eacute;e \r\nqui avait &eacute;t&eacute; &eacute;mis sur Minegame (V2).</span></span></strong></span></pre>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="color:#000000"><tt>Bon, je pense qu&#39;on a laiss&eacute; le topic sur la proposition assez longtemps pour voir que globalement vous &eacute;tiez pour une raz et une am&eacute;lioration de la V2. </tt></span></p>\r\n\r\n<p><span style="color:#000000"><tt>Ce topic va cette fois-ci servir &agrave; proposer vos id&eacute;es. Mais les choses doivent se faire de la mani&egrave;re la plus propre et ordonn&eacute;e possible.&nbsp;</tt></span></p>\r\n\r\n<p><tt><span style="color:#000000">Tout d&#39;abord nous allons nous concentrer sur </span><strong><span style="color:#FF8C00">les id&eacute;es r&eacute;alisables &agrave; court terme.</span></strong></tt></p>\r\n\r\n<p><span style="color:#000000"><tt>Par court terme j&#39;entends par l&agrave;, les id&eacute;es que l&#39;on peut r&eacute;aliser tr&egrave;s rapidement, dans l&#39;imm&eacute;diat ou disons en 1 semaine ou 2 maximum.</tt></span></p>\r\n\r\n<p><span style="color:#000000"><tt>Un autre topic sera cr&eacute;e une fois la V2.5 ouverte, pour les id&eacute;es &agrave; long terme et &agrave; court terme si vous en avez d&#39;autres, mais pour l&#39;instant restons concentr&eacute;s sur les id&eacute;es &agrave; court terme.</tt></span></p>\r\n\r\n<p><span style="color:#000000"><tt>Comme je l&#39;ai pr&eacute;cis&eacute; au-dessus, tout doit &ecirc;tre fait de mani&egrave;re ordonn&eacute;e, et vous devez suivre le sch&eacute;ma suivant :</tt></span></p>\r\n\r\n<p><strong><tt><span style="color:#008000">- Localisation : Vous devez indiquer ou votre id&eacute;e doit &ecirc;tre modifi&eacute;e. Cela nous permet de nous rendre compte de chaque &eacute;l&eacute;ment qui pourrait &ecirc;tre &agrave; modifier dans l&#39;id&eacute;e.</span></tt></strong></p>\r\n\r\n<p><strong><tt><span style="color:#008000">- Id&eacute;e : L&agrave; c&#39;est le moment o&ugrave; vous devez expliquer votre id&eacute;e, essayez d&#39;&ecirc;tre le plus clair possible. Ne faites pas 20 lignes si vous pouvez en faire 2, mais soyez clairs. Cette partie ne concerne que l&#39;id&eacute;e, et non pas pourquoi cette id&eacute;e doit &ecirc;tre accept&eacute;e.</span></tt></strong></p>\r\n\r\n<p><strong><tt><span style="color:#008000">- Autre(facultatif) : Tout ce que vous pouvez dire de plus qui ne concerne pas l&#39;id&eacute;e en elle-m&ecirc;me, mais qui y est li&eacute; comme des arguments pour faire valider votre id&eacute;e par exemple.</span></tt></strong></p>\r\n\r\n<p><strong><span style="color:#000000"><tt>Je ne vais pas non plus vous demander 50 000 informations, je pense que &ccedil;a reste assez clair comme &ccedil;a, je vais vous donne un exemple histoire de bien vous montrer la marche &agrave; suivre :</tt></span></strong></p>\r\n\r\n<p><br />\r\n<tt><em>- Localisation : Sur les &icirc;les, chez tous les marchands</em></tt></p>\r\n\r\n<p><tt><em>- Id&eacute;e : Changer les prix des objets et potions</em></tt></p>\r\n\r\n<p><tt><em>- Autre : Les prix sont trop chers par rapport &agrave; ce que l&#39;on gagne, et par rapport au prix de vente constat&eacute; &agrave; Jaya.</em></tt></p>\r\n\r\n<p><br />\r\n<tt>Voil&agrave; un exemple tout b&ecirc;te de modification.</tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong><span style="color:#FF0000"><em><ins>La V2 sur onepiece-rpg.fr n&#39;est pas encore ouverte</ins>, et nous ne pouvons l&#39;ouvrir actuellement &eacute;tant donn&eacute; que nous travaillons dessus. Utilisez donc la V3 communautaire&nbsp;sur minegame.fr si vous avez besoin d&#39;utiliser une base concernant vos id&eacute;es.</em></span></strong></tt></p>\r\n\r\n<p><tt><strong><span style="color:#FF0000"><em>Ce topic n&#39;est pas l&agrave; pour donner vos avis sur les id&eacute;es propos&eacute;es, sinon le topic risque de se diriger dans tous les sens, donc pour la moindre question ou si vous voulez parler de certaines id&eacute;es, vous pouvez cr&eacute;er un nouveau topic pour tous. Ca fait encore un topic en plus, mais &ccedil;a restera je pense plus clair.</em></span></strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><span style="font-size:8px">&Eacute;dit&eacute; par Riyuma le 09/11/2015 &agrave; 12h01</span></em></p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447265651, 0, 62, 51),
(59, '<p>&nbsp;</p>\r\n\r\n<div style="background:#eee; border:1px solid #ccc; padding:5px 10px"><tt><span style="color:#000000">Id&eacute;es Riyuma</span></tt></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><tt><strong>Mettre en place le Design qu</strong></tt><tt><strong>&#39;avais fait Gekko en maquette. (il convient &agrave; une V2)</strong></tt></li>\r\n	<li><tt><strong>Modifier les troph&eacute;es, Suzuran a normalement tout cr&eacute;e pour pouvoir en profiter.</strong></tt></li>\r\n	<li><tt><strong>Changer quelques d&eacute;fis, en rajouter et en supprimer quelques-uns.</strong></tt></li>\r\n	<li><tt><strong>Remettre la chasse actuel bien meilleur que l&#39;ancienne.</strong></tt></li>\r\n	<li><tt><strong>R&eacute;-activer le changement de ratio.</strong></tt></li>\r\n	<li><tt><strong>Ouverture de l&#39;&eacute;quipage des r&eacute;volutionnaires.&nbsp;</strong></tt></li>\r\n	<li><tt><strong>Ajouter 1 GE par &icirc;le dont 2 marrons (Smiley &amp; Hannyabal) + Modification des tactiques.</strong></tt></li>\r\n	<li><tt><strong>Modification des comp&eacute;tences, ajout des comp&eacute;tences &quot;Malus&quot; : Le joueurs gagne 20% de pv mais</strong></tt>&nbsp;<tt><strong>perd 20% de force etc... j&#39;peux faire un tableau.</strong></tt></li>\r\n	<li><tt><strong>Si Suzuran a effectuer un travail sur les CPU/&icirc;les en couleur ils faut les int&eacute;grer au jeu.</strong></tt></li>\r\n	<li><tt><strong>Une nouvelle DDM plus &quot;attractive&quot; ?</strong></tt></li>\r\n	<li><tt><strong>Un seul et m&ecirc;me serveur</strong></tt></li>\r\n	<li><tt><strong>Envoi de popo en masse (au lieu de une par une)</strong></tt></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Localit&eacute; : Oprpg /o/ , &eacute;quipage<br />\r\n<br />\r\nId&eacute;e : Que le capitaine puisse emprunter de l&#39;argent &agrave; une banque, pour dire de pouvoir avoir quelques places, la somme arrive directement dans le tr&eacute;sor et dois &ecirc;tre rembourser sinon l&#39;&eacute;quipage subit un malus de point<br />\r\n<br />\r\nAutre : J&#39;aime les chats, si &ccedil;a peut t&#39;aider :*</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Localit&eacute; : Mon compte&nbsp;<br />\r\n<br />\r\nId&eacute;e : Envoyer des potions et des objets de forge en masse</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Localit&eacute; : DDM<br />\r\n<br />\r\nId&eacute;e : Chaque &eacute;quipage choisit un h&eacute;ros &agrave; la cr&eacute;ation de celui-ci entre 7 personnages, plus l&#39;&eacute;quipage prend de l&#39;exp plus l&#39;h&eacute;ros monte de level.<br />\r\nUne fois une &icirc;le capturer le h&eacute;ros ce pose sur l&#39;&icirc;le, au d&eacute;but il est pas super fort mais impossible &agrave; g&eacute;rer seul. Si le h&eacute;ros ce trouve en difficult&eacute; il mp automatiquement tous les membres connect&eacute; de l&#39;&eacute;quipage genre &quot;On m&#39;attaque, je demande de l&#39;aide&quot;.<br />\r\nCe h&eacute;ros est modifiable par le capitaine, on peut soit lui donner de la vitalit&eacute; soit de la puissance.<br />\r\nLe m&eacute;decin peut soigner le h&eacute;ros mais seulement lui.<br />\r\n<br />\r\nAutre : Dans le futur, pourquoi pas propos&eacute; une &eacute;volution pour le h&eacute;ros comme passer d&#39;un h&eacute;ros Zoro &agrave; un h&eacute;ros Mihawk&nbsp;</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Localisation : partout partout :$<br />\r\n<br />\r\nId&eacute;e : Qu&#39;on puisse tomber sur un cpu &quot;or&quot; quand on pex, celui-ci sera plus dur &agrave; affronter mais on peut lui donner des gains/drop sup&eacute;rieur au reste selon sa raret&eacute;.</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Localisation : D&eacute;fis<br />\r\n<br />\r\nPremier classement kills : Le personnage Z&eacute;phir<br />\r\nAvoir &eacute;t&eacute; connect&eacute; 14 jours d&#39;affil&eacute; : Titre &quot;Sqouatteur&quot;<br />\r\nTrouver le costume de Moria dans un &quot;cadeau sombre&quot; : Moria<br />\r\n(On ne peut drop des cadeaux sombre que sur les GE de Thriller Bark et FT)<br />\r\nPareil pour Perona , Ryuma et OZ, d&eacute;blocable seulement gr&acirc;ce aux cadeaux sombre. (le classement : Perona &gt; Ryuma &gt; Moria &gt; Oz)<br />\r\nAvoir vaincu 50 Ace en ar&egrave;ne : personnage Barbe noire&nbsp;<br />\r\nAvoir effectuer 30 allopass : personnage Banquier&nbsp;<br />\r\nAvoir changer de personnage 50 fois : Mr2<br />\r\n<br />\r\nJ&#39;peux en faire encore mais bon faut voir les &quot;int&eacute;ressant&quot;&nbsp;</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="background:#eee; border:1px solid #ccc; padding:5px 10px"><tt>Id&eacute;es Benevolar<em>&nbsp;</em></tt></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>localit&eacute; : Little Garden<br />\r\n<br />\r\nid&eacute;e : proposer chaque jour un familier al&eacute;atoire qui sera vendu plus cher au g&eacute;ant.<br />\r\n<br />\r\nautre : g&eacute;n&eacute;ralement soit on vend tout soit on fait une collection, &ccedil;a serait bien pour donner un peu plus d&#39;int&eacute;r&ecirc;t &agrave; la chasse</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>localit&eacute; : Wiskey Peak<br />\r\n<br />\r\nid&eacute;e : modifier les formules qui permettent de cuisiner (quitte &agrave; rajouter de nouveaux ingr&eacute;dients tel que des familiers ou modifier le taux de drop de certains)<br />\r\n<br />\r\nautre : Actuellement cuisiner c&#39;est de l&#39;arnaque &agrave; part pour les jambons et encore les pollenargent sont super rare.</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Localit&eacute; : pex<br />\r\n<br />\r\nid&eacute;e : faire en sorte qu&#39;on puisse se battre &agrave; la fois sur l&#39;&icirc;le de notre niveau mais aussi sur les &icirc;les pr&eacute;c&eacute;dentes (avec un gain d&#39;exp inf&eacute;rieur) et faire en sorte que chaque &icirc;le ait son lot d&#39;objet &agrave; drop.<br />\r\n<br />\r\nautre : j&#39;ai pas mis les pieds &agrave; Water Seven depuis des lustres.</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Un pi&egrave;ge pourra &ecirc;tre plac&eacute; sur une des cases de la grille. Si un animal passe dessus il peut &ecirc;tre captur&eacute; (plusieurs types de pi&egrave;ge pour plusieurs couleur de familier). Il y aura un nombre de pi&egrave;ge max &agrave; placer sur la grille qui varie en fonction de notre niveau de p&ecirc;che/chasse (une nouvelle barre qui se remplie avec la capture de familier). Au bout de X niveaux de p&ecirc;che on d&eacute;bloque des pi&egrave;ges de niveau sup&eacute;rieur et des app&acirc;ts (&ccedil;a renforce les chances que l&#39;animal se d&eacute;place dans notre direction ou celui du pi&egrave;ge si on d&eacute;cide de combiner pi&egrave;ge + app&acirc;t)</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="background:#eee; border:1px solid #ccc; padding:5px 10px"><tt>Id&eacute;es des autres joueurs<strong> </strong></tt></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Localit&eacute; : Section &eacute;quipage, toutes les iles<br />\r\n<br />\r\nId&eacute;e : Donn&eacute; un sens au place dans l&#39;&eacute;quipage exemple: chasseur, lorsqu&#39;il attrape un animal cela donne des points a son &eacute;quipage<br />\r\nm&eacute;decin, peut faire boire directement une popo a son camarade<br />\r\ncharpentier, peut faire construire un bateau avec l&#39;accord de son capitaine<br />\r\n...<br />\r\n<br />\r\nAutre : Ce serait pas mal si, en tant que capitaine, ont pourrait &quot;mute&quot; certaine personne sur la salle 1.?</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Localit&eacute;: Ar&egrave;ne de GOA<br />\r\n<br />\r\nId&eacute;e: Mon id&eacute;e mes venu comme &ccedil;a. Dans l&#39;ar&egrave;ne de Goa, c&#39;est bien en &eacute;quipage, mais &agrave; la fin de l&#39;ar&egrave;ne,il ne se passe rien au niveau des points d&#39;&eacute;quipage.<br />\r\nDonc j&#39;ai penser aux nombres de survivants du m&ecirc;me &eacute;quipage pourraient donner les points &agrave; l&#39;&eacute;quipage. Par exemple, il reste 10 membres de l&#39;&eacute;quipage &agrave; la fin de l&#39;ar&egrave;ne, cela va donc donner 10 points &agrave; l&#39;&eacute;quipage.J&#39;esp&egrave;re avoir &eacute;t&eacute; assez clair.<br />\r\n<br />\r\n<br />\r\nLocalit&eacute;: Pex (et peut &ecirc;tre Mon compte)<br />\r\n<br />\r\nId&eacute;e: A chaque fois qu&#39;on utilise une attaque elle gagne de &quot;l&#39;exp&eacute;rience&quot; et quand elle en a gagn&eacute; assez on d&eacute;bloque l&#39;attaque suivante plus forte de la m&ecirc;me cat&eacute;gorie (avant on les d&eacute;bloquait en montant de niveau et c&#39;&eacute;tait fixe) la barre de progression serait soit en pex soit dans les r&eacute;putations<br />\r\n<br />\r\n(Peut &ecirc;tre aussi appliqu&eacute; en JcJ et en Ge)<br />\r\n<br />\r\n<br />\r\nLocalit&eacute; : &Eacute;quipage<br />\r\n<br />\r\nId&eacute;e : Nous pr&eacute;venir quand quelqu&#39;un quitte l&#39;&eacute;quipage pour &eacute;viter de chercher :/<br />\r\n<br />\r\nAutre : Juste comme &ccedil;a...</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong><strong>Localisation&nbsp;: Sur une &icirc;le , je verrais bien Sabaody (Ou Skipiea pour que &ccedil;a soit accessible &agrave; plus de monde)<br />\r\n<br />\r\nId&eacute;e&nbsp;: L&#39;id&eacute;e &ccedil;a serait tout simplement qu&#39;un PNJ propose des qu&ecirc;tes/missions r&eacute;guli&egrave;rement, genre 1 fois par semaine avec un certain degr&eacute; de difficult&eacute;s. Puis selon la difficult&eacute; les r&eacute;compenses seront diff&eacute;rentes (Personnage,berrys,objets etc...)<br />\r\n<br />\r\n<em>Exemple de missions :</em>&nbsp;<br />\r\n- Faire X prime en X temps<br />\r\n- Chasser X fois un familier&nbsp;<br />\r\n- Faire X Kill en X temps<br />\r\n- Ramener X objets/Ingr&eacute;dients au PNJ<br />\r\n<br />\r\nAutre&nbsp;: Il me semble qu&#39;une personne avait d&eacute;j&agrave; propos&eacute; une id&eacute;e similaire il y a quelque temps qui avait &eacute;t&eacute; laisser &agrave; l&#39;abandon.</strong></strong></tt><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><span style="font-size:8px">&Eacute;dit&eacute; par Riyuma le 09/11/2015 &agrave; 12h48</span></em></p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447265671, 0, 62, 51),
(60, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447265735, 0, 63, 13),
(61, '<p>test</p>\r\n', 1447265744, 0, 63, 1),
(63, '<p>test</p>\r\n', 1447265998, 0, 53, 34),
(65, '<p>sdfsdf</p>\r\n', 1447266011, 0, 53, 34),
(67, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447269188, 1, 64, 13),
(68, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447271752, 0, 65, 13),
(69, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447294795, 0, 69, 13),
(70, '<p>effs</p>\r\n', 1447329841, 1, 3, 63),
(71, '<p>fdsfd</p>\r\n', 1447329880, 1, 70, 63),
(72, '<p>fdsfd</p>\r\n', 1447329880, 1, 71, 63),
(73, '<p>Test</p>\r\n', 1447330004, 1, 70, 1),
(74, '<?php écho ''test''; ?>', 1447330038, 1, 70, 1),
(75, '<p>test</p>\r\n', 1447331591, 1, 22, 1),
(76, '<p>gfdgdgfd</p>\r\n', 1447331605, 1, 72, 1),
(77, '<p>dfgfdgfd</p>\r\n', 1447331609, 1, 72, 1),
(78, '<p><code><span style="font-family:georgia,serif">Que ceux qui m&#39;aime me suive&nbsp;<img alt="heart" src="http://dev.minegame.fr/assets/js/ckeditorVIP/plugins/smiley/images/heart.png" style="height:23px; width:23px" title="heart" /></span></code></p>\r\n\r\n<p><code><span style="font-family:georgia,serif">Outre les anciens <strong>DNK </strong>vous pourrez postuler en fournissant <strong>une lettre de motivation</strong>.&nbsp;</span></code></p>\r\n\r\n<p><code><span style="font-family:georgia,serif">Lvl 0&nbsp;mini lel</span></code></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><span style="font-size:8px">&Eacute;dit&eacute; par Riyuma le 12/11/2015 &agrave; 13h49</span></em></p>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par Riyuma le 14/11/2015 à 16h48</span></em></p>', 1447332530, 0, 73, 51),
(79, '', 1447332685, 1, 73, 51),
(80, '', 1447332695, 1, 73, 51),
(81, '', 1447332703, 1, 73, 51),
(82, '', 1447332712, 1, 73, 51),
(83, '', 1447332730, 1, 73, 51),
(84, '', 1447332738, 1, 73, 51),
(85, '', 1447332747, 1, 73, 51),
(86, '', 1447332757, 1, 73, 51),
(87, '', 1447332765, 1, 73, 51),
(88, '<ul>\r\n	<li><strong><span style="color:#FF0000">Pour qu&#39;un post soit compter il doit &ecirc;tre s&eacute;par&eacute; d&#39;une heure avec l&#39;ancien post</span></strong></li>\r\n	<li><strong><span style="color:#FF0000">Il est interdit de spam</span></strong></li>\r\n	<li><strong><span style="color:#FF0000">Insulter est conseill&eacute;&nbsp;</span></strong></li>\r\n	<li><strong><span style="color:#FF0000">Les points reste basique</span></strong></li>\r\n</ul>\r\n\r\n<p><strong><span style="color:#000000">Bon jeu bande de fils de poulpe!</span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td><span style="color:#FF0000"><strong><span style="font-family:georgia,serif">&nbsp;Kakwa</span></strong></span></td>\r\n			<td><span style="font-family:georgia,serif"><strong><span style="color:#000000">&nbsp; 1 point</span></strong></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par Riyuma le 15/11/2015 à 16h35</span></em></p>', 1447333166, 0, 74, 51),
(89, '<ol>\r\n	<li><tt><strong><span style="color:#FF0000">Le parlag cent fote c&#39;import&#39;en f&ecirc;t 1 &eacute;ffaur</span></strong></tt></li>\r\n	<li><tt><strong><span style="color:#FF0000">Il est conseill&eacute; de vanner Zogene sur le fait qu&#39;il sera encore puceau &agrave; 40 ans</span></strong></tt></li>\r\n	<li><tt><strong><span style="color:#FF0000">On supporte le Real Madrid et Lyon merci de respecter cette r&egrave;gle primordiale&nbsp;</span></strong></tt></li>\r\n	<li><tt><strong><span style="color:#FF0000">Ne jamais rien donn&eacute; &agrave; Eustass</span></strong></tt></li>\r\n	<li><tt><strong><span style="color:#FF0000">Vous pouvez spoil Kmy c&#39;est m&ecirc;me conseill&eacute;</span></strong></tt></li>\r\n</ol>\r\n\r\n<p><strong>Amen!</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><span style="font-size:8px">&Eacute;dit&eacute; par Zogene le 14/11/2015 &agrave; 16h26</span></em></p>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par Riyuma le 14/11/2015 à 16h34</span></em></p>', 1447333592, 0, 75, 51),
(90, '<p><span style="font-size:36px">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; New n&deg;1 :&nbsp;</span><em><strong><span style="font-size:24px">Le commencement</span></strong></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="background:#eee;border:1px solid #ccc;padding:5px 10px;"><span style="font-size:24px">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;<span style="color:#FF0000"><strong>Pr&eacute;sentation</strong></span></span></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:16px">Bonjour et bienvenu sur le jeu &quot;MineGame&quot; qui est la suite du c&eacute;l&egrave;bre site one-piece-rpg. (Le nom du jeu est provisoire et sera susceptible de changer dans les prochains jours.</span></p>\r\n\r\n<p><span style="font-size:15.555556297302246px">Tout d&#39;abord le projet &quot;minegame&quot; est r&eacute;alis&eacute; par des fans pour&nbsp;des fans, le staff travail b&eacute;n&eacute;volement pour vous cr&eacute;e un jeu complet, additif et plaisant visuellement. Nous sommes des amateurs avide d&#39;apprendre de nouvelle chose pour vous en faire profiter.</span></p>\r\n\r\n<p><span style="font-size:15.555556297302246px">Parlons maintenant du jeu en lui-m&ecirc;me, la sortie officielle est pr&eacute;vu pour le 12/11/2015 dans la soir&eacute;e et vous sera pr&eacute;senter sous la forme communautaire, ce qui signifie qu&#39;un forum, un tchat et bien d&#39;autres fonctionnalit&eacute;s vous sera proposer mais pas de r&eacute;el &quot;jeu&quot;. Les prochaines semaines risque de beaucoup bouger et verra le site &eacute;voluer, on esp&egrave;re, positivement.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="background:#eee;border:1px solid #ccc;padding:5px 10px;"><span style="font-size:24px">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style="color:#FF0000"><strong>Staff</strong></span></span></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span style="font-size:18px"><span style="color:#FF0000">Dumbeldor&nbsp;(Admin):</span><em><span style="color:#000000">&nbsp;</span></em></span></strong><em><span style="font-size:18px"><span style="color:#000000">Il est le chef du projet et un d&eacute;veloppeur extr&ecirc;mement dou&eacute;, sans lui le site n&#39;aurai s&ucirc;rement jamais vu le jour.</span></span></em></p>\r\n\r\n<p><strong><span style="color:#FF8C00"><span style="font-size:18px">Sumo (Co-admin) : </span></span></strong><span style="font-size:18px"><span style="color:#000000"><em>C&#39;est vraiment une fille g&eacute;niale, elle s&#39;occupe du Dev&#39; et de la bonne ambiance au sein de l&#39;&eacute;quipe, elle fait des merguez comme personne.</em></span></span></p>\r\n\r\n<p><strong><span style="font-size:18px"><span style="color:#008080">Riyuma (Animateur) :&nbsp;</span></span></strong><span style="font-size:18px"><em><span style="color:#000000">Il va s&#39;occuper de l&#39;animation du site, de vous faire patienter comme il peut jusqu&#39;&agrave; que le jeu en lui-m&ecirc;me n&#39;arrive. Tr&egrave;s dou&eacute; pour faire des topics, beau et myst&eacute;rieux, &agrave; n&#39;en pas dout&eacute; notre meilleur recrue.</span></em></span></p>\r\n\r\n<p><span style="font-size:17.77777862548828px"><strong><span style="color:#00FF00">Maniak (Mod&eacute;rateur) :</span>&nbsp;</strong></span><span style="font-size:17.77777862548828px"><span style="color:#000000"><em>Ayant d&eacute;j&agrave; fait ses preuves sur la V2 de onepiece-rpg il &eacute;tait &eacute;vident pour nous de le r&eacute;cup&eacute;rer parmi nous. Il&nbsp;aide aussi gr&acirc;ce &agrave; ses talent en pixel art.</em></span></span><span style="font-size:17.77777862548828px"><span style="color:#000000"><em>&nbsp;Attention, le sh&eacute;rif du site.</em></span></span></p>\r\n\r\n<p><span style="color:#00FF00"><span style="font-size:18px"><strong>Kalivia (Mod&eacute;ratrice) :</strong></span></span><span style="font-size:18px"><span style="color:#000000"><em>&nbsp;Le quotas nous obligeant &agrave; prendre une fille, c&#39;est tomb&eacute; sur elle... Plus s&eacute;rieusement, elle est l&agrave; pour faire r&eacute;gner l&#39;ordre et donner un coup de main en pixel art. (Oui elle aussi)</em></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span style="font-size:22px"><tt>En esp&eacute;rant vous retrouvez sur le jeu, l&#39;&eacute;quipe du site vous souhaite d&#39;agr&eacute;ables moments.</tt></span></strong></p>\r\n\r\n<p><span style="color:#4B0082"><em><strong><span style="font-size:22px"><tt><span style="background-color:#FAEBD7">#LeStaff</span></tt></span></strong></em></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="http://img11.hostingpics.net/pics/123632Comm.png" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par Riyuma le 12/11/2015 à 15h38</span></em></p>', 1447337423, 1, 76, 51),
(91, '<p style="text-align:center">&nbsp; &nbsp; &nbsp; &nbsp;<span style="font-size:28px"> &nbsp;New n&deg;1 :</span><span style="font-size:22px">&nbsp;<em><strong>Le commencement</strong></em></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="background-color: rgb(238, 238, 238); border: 1px solid rgb(204, 204, 204); padding: 5px 10px; text-align: center; background-position: initial initial; background-repeat: initial initial;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style="font-size:22px"><span style="color:#FF0000">&nbsp; &nbsp; &nbsp;<strong>Pr&eacute;sentation</strong></span></span></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bonjour et bienvenu sur le jeu &quot;MineGame&quot; qui est la suite du c&eacute;l&egrave;bre site one-piece-rpg. (Le nom du jeu est provisoire et sera susceptible de changer dans les prochains jours.</p>\r\n\r\n<p>Tout d&#39;abord le projet &quot;minegame&quot; est r&eacute;alis&eacute; par des fans pour&nbsp;des fans, le staff travail b&eacute;n&eacute;volement pour vous cr&eacute;e un jeu complet, additif et plaisant visuellement. Nous sommes des amateurs avide d&#39;apprendre de nouvelle chose pour vous en faire profiter.</p>\r\n\r\n<p>Parlons maintenant du jeu en lui-m&ecirc;me, la sortie officielle est pr&eacute;vu pour le 12/11/2015 dans la soir&eacute;e et vous sera pr&eacute;senter sous la forme communautaire, ce qui signifie qu&#39;un forum, un tchat et bien d&#39;autres fonctionnalit&eacute;s vous sera proposer mais pas de r&eacute;el &quot;jeu&quot;. Les prochaines semaines risque de beaucoup bouger et verra le site &eacute;voluer, on esp&egrave;re, positivement.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="background-color: rgb(238, 238, 238); border: 1px solid rgb(204, 204, 204); padding: 5px 10px; text-align: center; background-position: initial initial; background-repeat: initial initial;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="font-size:22px"><span style="color:#FF0000"><strong>Staff</strong></span></span></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="color:#FF0000"><strong>Dumbeldor&nbsp;(Admin):<em>&nbsp;</em></strong></span><em>Il est le chef du projet et un d&eacute;veloppeur extr&ecirc;mement dou&eacute;, sans lui le site n&#39;aurai s&ucirc;rement jamais vu le jour.</em></p>\r\n\r\n<p><span style="color:#FF8C00"><strong>Sumo (Co-admin) : </strong></span><em>C&#39;est vraiment une fille g&eacute;niale, elle s&#39;occupe du Dev&#39; et de la bonne ambiance au sein de l&#39;&eacute;quipe, il fait des merguez comme personne.</em></p>\r\n\r\n<p><span style="color:#008080"><strong>Riyuma (Animateur) :&nbsp;</strong></span><em>Il va s&#39;occuper de l&#39;animation du site, de vous faire patienter comme il peut jusqu&#39;&agrave; que le jeu en lui-m&ecirc;me n&#39;arrive. Tr&egrave;s dou&eacute; pour faire des topics, beau et myst&eacute;rieux, &agrave; n&#39;en pas dout&eacute; notre meilleur recrue.</em></p>\r\n\r\n<p><span style="color:#00FF00"><strong>Maniak (Mod&eacute;rateur) :&nbsp;</strong></span><em>Ayant d&eacute;j&agrave; fait ses preuves sur la V2 de onepiece-rpg il &eacute;tait &eacute;vident pour nous de le r&eacute;cup&eacute;rer parmi nous. Il&nbsp;aide aussi gr&acirc;ce &agrave; ses talent en pixel art.</em><em>&nbsp;Attention, le sh&eacute;rif du site.</em></p>\r\n\r\n<p><span style="color:#00FF00"><strong>Kalivia (Mod&eacute;ratrice) :</strong></span><em><span style="color:#00FF00">&nbsp;</span>Le quotas nous obligeant &agrave; prendre une fille, c&#39;est tomb&eacute; sur elle... Plus s&eacute;rieusement, elle est l&agrave; pour faire r&eacute;gner l&#39;ordre et donner un coup de main en pixel art. (Oui elle aussi)</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><tt>En esp&eacute;rant vous retrouvez sur le jeu, l&#39;&eacute;quipe du site vous souhaite d&#39;agr&eacute;ables moments.</tt></strong></p>\r\n\r\n<p><span style="color:#4B0082"><span style="font-size:14px"><em><strong><tt>#LeStaff</tt></strong></em></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="http://img11.hostingpics.net/pics/123632Comm.png" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&Eacute;dit&eacute; par Riyuma le 12/11/2015 &agrave; 15h11</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&Eacute;dit&eacute; par Riyuma le 12/11/2015 &agrave; 15h11</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><span style="font-size:8px">&Eacute;dit&eacute; par Riyuma le 12/11/2015 &agrave; 15h18</span></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><span style="font-size:8px">&Eacute;dit&eacute; par Riyuma le 12/11/2015 &agrave; 15h19</span></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><span style="font-size:8px">&Eacute;dit&eacute; par Riyuma le 12/11/2015 &agrave; 15h20</span></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><span style="font-size:8px">&Eacute;dit&eacute; par Riyuma le 12/11/2015 &agrave; 15h20</span></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><span style="font-size:8px">&Eacute;dit&eacute; par Riyuma le 12/11/2015 &agrave; 15h23</span></em></p>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par Riyuma le 12/11/2015 à 15h23</span></em></p>', 1447337770, 1, 77, 51),
(92, '<p>Salut,</p>\r\n\r\n<p>l&#39;animation se nomme : Tic... Tac...Bip<br />\r\nLe but est d&#39;arriver &agrave; 0. C&#39;est tr&egrave;s simple comme r&egrave;gle !&nbsp;<img alt="wink" src="http://dev.minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" /></p>\r\n\r\n<hr />\r\n<blockquote>\r\n<p><em><u>Exemple&nbsp;</u>:<br />\r\nA : 5000<br />\r\nB : 4999<br />\r\nC : 4998<br />\r\nA : ...<br />\r\nC&#39;est vraiment simple.<br />\r\nLe premier arriver &agrave; 0 gagne:&nbsp;<br />\r\nS1 = berrys (somme ind&eacute;termin&eacute;e)<br />\r\nS2 = Idem</em></p>\r\n</blockquote>\r\n\r\n<p><strong>Commen&ccedil;ons : 1000</strong></p>\r\n\r\n<hr />\r\n<p>Bon jeu !</p>\r\n', 1447349603, 0, 78, 1),
(93, '<p>Salut,<br />\r\n<br />\r\nUn petit jeu simple et sympa, il suffit de continuer la phrase du poste juste au dessus. Par exemple trucmuche poste &quot;Il &eacute;tait une fois ....&quot;, une autre personne r&eacute;pond &quot;... un jeune pirate....&quot; et etc...<br />\r\n<br />\r\nDonc je commence :<br />\r\n<br />\r\nIl &eacute;tait une fois ...</p>\r\n', 1447349661, 0, 79, 1),
(94, '<p>Une petite fille</p>\r\n', 1447349717, 0, 79, 54),
(95, '<p><strong>Morte.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Fin</em></p>\r\n', 1447350727, 0, 79, 51);
INSERT INTO `forums_topics_messages` (`id`, `message`, `date_time`, `is_block`, `id_forums_topics`, `id_users`) VALUES
(96, '<p>Tu es animateur ?&nbsp;<img alt="sad" src="http://dev.minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/sad_smile.png" style="height:23px; width:23px" title="sad" /></p>\r\n', 1447353822, 0, 79, 1),
(97, '<div>\r\n<div style="border: 1px solid rgb(204, 204, 204); padding: 5px 10px; text-align: center; background: rgb(238, 238, 238);"><span style="color:#808080"><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:26px"><strong>Conditions g&eacute;n&eacute;rales d&#39;utilisation</strong></span></span></span></div>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n</div>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">En vous inscrivants sur le site dev.minegame.fr, vous acceptez que les mod&eacute;rateurs ou les administrateurs du site aient acc&egrave;s &agrave; vos donn&eacute;es personnelles comme votre adresse IP, votre adresse mail,... Vous acceptez &eacute;galement le fait qu&#39;en cas d&#39;abus de votre part aux r&egrave;gles mentionn&eacute;es &nbsp;ci-dessous, les membres de l&#39;&eacute;quipes de mod&eacute;ration ou d&#39;administration aient le droit de vous bannir de fa&ccedil;on temporaire ou d&eacute;finitive de ce site.</span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:18px"><strong>Vie en communaut&eacute; :</strong></span><span style="font-size:12px"><strong>&nbsp;</strong></span></span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif">- Evitez le langage SMS, privil&eacute;giez l&#39;&eacute;criture dans un fran&ccedil;ais correct. Il faut que votre &eacute;criture soit un minimum compr&eacute;hensible afin que les autres joueurs puissent vous comprendre.</span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif">- La langue officielle &nbsp;de ce site est le fran&ccedil;ais, veuillez communiquer dans cette langue uniquement afin de rester compr&eacute;hensible. Si vous ne parlez pas le fran&ccedil;ais, utilisez Google Traduction ou un autre site du genre afin de pouvoir communiquer.</span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif">- Il est formellement interdit de faire de la propagande pour un quelconque parti politique ou une quelconque &nbsp;religion. Veuillez respecter les croyances de chacun. Bien entendu, en parler n&#39;est pas interdit du moment que la discution ne d&eacute;borde pas.</span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif">- Aucun propos raciste, homophobe, antis&eacute;mite ou discriminatoire ne sera tol&eacute;r&eacute; ici. Veuillez respecter chaque joueur afin de garder un bonne ambiance au sein de la communaut&eacute;.&nbsp;</span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif">- La p&eacute;dophilie, la pornographie ou toute d&eacute;bauche sexuelle est formellement interdite. Nous sommes sur un jeu, avec des mineurs ! La p&eacute;dophilie est punie par la loi, tout auteur de message p&eacute;dophile pourra &ecirc;tre poursuivi en justice.</span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif">- Le Caps Lock (&eacute;crire tout en majuscule) est fortement d&eacute;conseill&eacute;. Tout comme le langage SMS, lire un message &eacute;crit enti&egrave;rement en majuscule n&#39;est pas agr&eacute;able. Nous vous demandons donc de vous appliquer un minimum.</span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif">- Nous d&eacute;clinons toute responsablilit&eacute; en cas de rencontres IRL (rencontres r&eacute;elles). Les rencontres IRL sont des initiatives priv&eacute;es hors du site donc qui ne nous concernent pas.</span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:18px"><strong>Messages :</strong></span></span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif">- Lorsque vous &eacute;crivez un message sur le forum, le tchat ou en priv&eacute;, veuillez respecter les r&egrave;gle ci-dessus.</span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif">- Le flood &nbsp;(poster plein de messages &agrave; la suite) est interdit. Veuillez faire en sorte que le forum et le tchat restent lisible et agr&eacute;able. Si vous floodez, vous serez avertis par un mod&eacute;rateur ou un administrateur et si les avertissements ne vous suffisent pas, vous serez bannis temporairement du site.</span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif">- La publicit&eacute; est interdite, tout auteur de message publicitaire verra son message effac&eacute;.</span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif">- Veuillez ne jamais donner vos informations personnelles &agrave; qui que ce soit (adresse, num&eacute;ro de t&eacute;l&eacute;phone,...). Vous ne savez pas qui se cache derri&egrave;re un &eacute;cran, une personne peut se faire passer pour une autre.</span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif">- Ne donnez jamais votre mot de passe, en cas de vol de compte, nous d&eacute;clinons toute responsabilit&eacute;. Si vous donnez votre mot de passe, on part du principe que vous donnez votre compte. Et si vous donnez votre compte, ce n&#39;est plus un vol.</span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif">- Les mod&eacute;rateurs et administrateurs ont le droit de modification ou de suppression de votre message en cas de manquement aux r&egrave;gles.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif"><strong><span style="font-size:18px">Comptes :</span></strong>&nbsp;</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">- Les doubles comptes sont fortement d&eacute;conseill&eacute;s. Si vous avez un fr&egrave;re ou une soeur qui veut jouer, &nbsp;il peut se cr&eacute;er un compte lui aussi bien entendu &agrave; condition qu&#39;il n&#39;y ait pas d&#39;entre aide ou de triche. N&eacute;anmoins, &eacute;vitez d&#39;avoir trop de comptes. Sachez qu&#39;aucune interaction au niveau du jeu entre DC ne sera tol&eacute;r&eacute;. En cas de manquement &agrave; cette r&egrave;gle, les comptes en question se verront supprim&eacute;s.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">- En cas de vol de compte, veuillez contacter le support. Si jamais vous avez donn&eacute; votre mot de passe, tout r&eacute;sponsablilit&eacute; de la part du staff sera d&eacute;clin&eacute;e.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">- Un compte ne peut avoir qu&#39;un propri&eacute;taire, le propri&eacute;taire de l&#39;email du compte. Nous d&eacute;clinons toute responsabilit&eacute; en cas de vol de compte si plusieurs personnes y avaient acc&egrave;s. En cas de manquement aux r&egrave;gles, c&#39;est le joueur &agrave; qui appartient le compte qui sera tenu responsable.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">- La monnaie de ce jeu est le berry. L&#39;achat d&#39;un compte avec de l&#39;argent r&eacute;el (allopass, carte bancaire, paypal, paysafecard,...) ou contre des comptes ou objets d&#39;un autre jeu est interdit. Tout message de vente ne respectant pas cette r&egrave;gle sera supprim&eacute;, et son auteur sera banni temporairement du site. Si n&eacute;anmoins vous achetez un compte avec de l&#39;argent r&eacute;el sans que nous le remarquions, nous d&eacute;clinons toute responsablilit&eacute; en cas d&#39;arnaque. Si nous apprenons que vous avez vendu ou achetez un compte contre quelque chose hors de ce jeu, vous serez sanctionn&eacute;s.</span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:arial,helvetica,sans-serif"><em>Le Staff</em></span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par Kalivia le 12/11/2015 à 20h53</span></em></p>', 1447354662, 0, 80, 60),
(98, '<p style="text-align:center"><span style="font-family:arial,helvetica,sans-serif"><u><span style="font-size:26px"><strong>Conditions g&eacute;n&eacute;rales d&#39;utilisation</strong></span></u></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">En vous inscrivants sur le site dev.minegame.fr, vous acceptez que les mod&eacute;rateurs ou les administrateurs du site aient acc&egrave;s &agrave; vos donn&eacute;es personnelles comme votre adresse IP, votre adresse mail,... Vous acceptez &eacute;galement le fait qu&#39;en cas d&#39;abus de votre part aux r&egrave;gles mentionn&eacute;es &nbsp;ci-dessous, les membres de l&#39;&eacute;quipes de mod&eacute;ration ou d&#39;administration aient le droit de vous bannir de fa&ccedil;on temporaire ou d&eacute;finitive de ce site.</span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:18px"><strong>Vie en communaut&eacute; :</strong></span><span style="font-size:12px"><strong>&nbsp;</strong></span></span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif">- Evitez le langage SMS, privil&eacute;giez l&#39;&eacute;criture dans un fran&ccedil;ais correct. Il faut que votre &eacute;criture soit un minimum compr&eacute;hensible afin que les autres joueurs puissent vous comprendre.</span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif">- La langue officielle &nbsp;de ce site est le fran&ccedil;ais, veuillez communiquer dans cette langue uniquement afin de rester compr&eacute;hensible. Si vous ne parlez pas le fran&ccedil;ais, utilisez Google Traduction ou un autre site du genre afin de pouvoir communiquer.</span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif">- Il est formellement interdit de faire de la propagande pour un quelconque parti politique ou une quelconque &nbsp;religion. Veuillez respecter les croyances de chacun. Bien entendu, en parler n&#39;est pas interdit du moment que la discution ne d&eacute;borde pas.</span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif">- Aucun propos raciste, homophobe, antis&eacute;mite ou discriminatoire ne sera tol&eacute;r&eacute; ici. Veuillez respecter chaque joueur afin de garder un bonne ambiance au sein de la communaut&eacute;.&nbsp;</span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif">- La p&eacute;dophilie, la pornographie ou toute d&eacute;bauche sexuelle est formellement interdite. Nous sommes sur un jeu, avec des mineurs ! La p&eacute;dophilie est punie par la loi, tout auteur de message p&eacute;dophile pourra &ecirc;tre poursuivi en justice.</span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif">- Le Caps Lock (&eacute;crire tout en majuscule) est fortement d&eacute;conseill&eacute;. Tout comme le langage SMS, lire un message &eacute;crit enti&egrave;rement en majuscule n&#39;est pas agr&eacute;able. Nous vous demandons donc de vous appliquer un minimum.</span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif">- Nous d&eacute;clinons toute responsablilit&eacute; en cas de rencontres IRL (rencontres r&eacute;elles). Les rencontres IRL sont des initiatives priv&eacute;es hors du site donc qui ne nous concernent pas.</span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:18px"><strong>Messages :</strong></span></span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif">- Lorsque vous &eacute;crivez un message sur le forum, le tchat ou en priv&eacute;, veuillez respecter les r&egrave;gles ci-dessus.</span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif">- Le flood &nbsp;(poster plein de messages &agrave; la suite) est interdit. Veuillez faire en sorte que le forum et le tchat restent lisible et agr&eacute;able. Si vous floodez, vous serez avertis par un mod&eacute;rateur ou un administrateur et si les avertissements ne vous suffisent pas, vous serez bannis temporairement du site.</span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif">- La publicit&eacute; est interdite, tout auteur de message publicitaire verra son message effac&eacute;.</span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif">- Veuillez ne jamais donner vos informations personnelles &agrave; qui que ce soit (adresse, num&eacute;ro de t&eacute;l&eacute;phone,...). Vous ne savez pas qui se cache derri&egrave;re un &eacute;cran, une personne peut se faire passer pour une autre.</span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif">- Ne donnez jamais votre mot de passe, en cas de vol de compte, nous d&eacute;clinons toute responsabilit&eacute;. Si vous donnez votre mot de passe, on part du principe que vous donnez votre compte. Et si vous donnez votre compte, ce n&#39;est plus un vol.</span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif">- Les mod&eacute;rateurs et administrateurs ont le droit de modification ou de suppression de votre message en cas de manquement aux r&egrave;gles.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif"><strong><span style="font-size:18px">Comptes :</span></strong>&nbsp;</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">- Les doubles comptes sont fortement d&eacute;conseill&eacute;s. Si vous avez un fr&egrave;re ou une soeur qui veut jouer, &nbsp;il peut se cr&eacute;er un compte lui aussi bien entendu &agrave; condition qu&#39;il n&#39;y ait pas d&#39;entre aide ou de triche. N&eacute;anmoins, &eacute;vitez d&#39;avoir trop de comptes. Sachez qu&#39;aucune interaction au niveau du jeu entre DC ne sera tol&eacute;r&eacute;. En cas de manquement &agrave; cette r&egrave;gle, les comptes en question se verront supprim&eacute;s.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">- En cas de vol de compte, veuillez contacter le support. Si jamais vous avez donn&eacute; votre mot de passe, tout r&eacute;sponsablilit&eacute; de la part du staff sera d&eacute;clin&eacute;e.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">- Un compte ne peut avoir qu&#39;un propri&eacute;taire, le propri&eacute;taire de l&#39;email du compte. Nous d&eacute;clinons toute responsabilit&eacute; en cas de vol de compte si plusieurs personnes y avaient acc&egrave;s. En cas de manquement aux r&egrave;gles, c&#39;est le joueur &agrave; qui appartient le compte qui sera tenu responsable.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">- La monnaie de ce jeu est le berry. L&#39;achat d&#39;un compte avec de l&#39;argent r&eacute;el (allopass, carte bancaire, paypal, paysafecard,...) ou contre des comptes ou objets d&#39;un autre jeu est interdit. Tout message de vente ne respectant pas cette r&egrave;gle sera supprim&eacute;, et son auteur sera banni temporairement du site. Si n&eacute;anmoins vous achetez un compte avec de l&#39;argent r&eacute;el sans que nous le remarquions, nous d&eacute;clinons toute responsablilit&eacute; en cas d&#39;arnaque. Si nous apprenons que vous avez vendu ou achetez un compte contre quelque chose hors de ce jeu, vous serez sanctionn&eacute;s.</span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:arial,helvetica,sans-serif"><em>Le Staff</em></span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par Dumbeldor le 12/11/2015 à 20h19</span></em></p>', 1447355529, 0, 81, 1),
(99, '<p>Nickel merci !&nbsp;<img alt="kiss" src="http://dev.minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/kiss.png" style="height:23px; width:23px" title="kiss" /></p>\r\n', 1447355846, 0, 80, 1),
(100, '<p><tt><span style="font-size:18px">Oui, j&#39;essaye de garder mon job dsl.&nbsp;<img alt="laugh" src="http://dev.minegame.fr/assets/js/ckeditorVIP/plugins/smiley/images/teeth_smile.png" style="height:23px; width:23px" title="laugh" /></span></tt></p>\r\n', 1447356297, 0, 79, 51),
(101, '<p>Mouef mouef,</p>\r\n\r\n<p>Bon on recommence :</p>\r\n\r\n<blockquote>\r\n<p>Il &eacute;tait une fois un pirate....</p>\r\n</blockquote>\r\n', 1447358121, 0, 79, 1),
(102, '<p>qui avais pour nom&nbsp;...</p>\r\n<p></p><em><span style="font-size:8px">Édité par Riyuma le 14/11/2015 à 14h25</span></em></p>', 1447507463, 0, 79, 51),
(103, '<p>Maintenant vous allez sortir la vraie v3 ? :)</p>\r\n', 1447510927, 0, 82, 66),
(104, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447511226, 1, 83, 13),
(105, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447511298, 0, 84, 13),
(106, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447511498, 0, 85, 13),
(107, '<p>999</p>\r\n', 1447511626, 0, 78, 76),
(108, '<p>trafalgar21 :P</p>\r\n', 1447511687, 0, 79, 76),
(109, '<p>Tamer!</p>\r\n', 1447511907, 0, 74, 71),
(110, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447511980, 0, 86, 13),
(111, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447512224, 1, 87, 13),
(112, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447512268, 0, 88, 13),
(113, '<p>C&#39;est la partie communautaire. Et c&#39;est en aucun cas la V3 officiel de oprpg. (J&#39;ai quitt&eacute; leurs staff il y a 1 mois.)&nbsp;<img alt="wink" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" /></p>\r\n', 1447512293, 0, 82, 1),
(114, '<p>998</p>\r\n', 1447512319, 0, 78, 1),
(115, '<p>997</p>\r\n', 1447512527, 0, 78, 74),
(116, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447512606, 0, 89, 13),
(117, '<p>996</p>\r\n', 1447512681, 0, 78, 76),
(118, '<p>Juste une question, faut attendre un certains temps avant de pouvoir poster un chiffre (je veux dire pour qu&#39;une personne puisse reposter un nouveau chiffre) non ?</p>\r\n\r\n<p>Bah sinon, 995</p>\r\n<p></p><em><span style="font-size:8px">Édité par Elerion le 14/11/2015 à 15h53</span></em></p>', 1447512782, 0, 78, 74),
(119, '<p>qui etait rejette de tousse<br />\r\n&nbsp;</p>\r\n', 1447512801, 0, 79, 78),
(120, '<p>ou pas...</p>\r\n', 1447512903, 0, 79, 76),
(121, '<p>... car il &eacute;tait tout rouge ...</p>\r\n', 1447512917, 0, 79, 1),
(122, '<p>994</p>\r\n', 1447512943, 0, 78, 76),
(123, '<p>993</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Juste pas le droit de double poste.&nbsp;<img alt="wink" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" /></p>\r\n<p></p><em><span style="font-size:8px">Édité par Dumbeldor le 14/11/2015 à 15h56</span></em></p>', 1447512953, 0, 78, 1),
(124, '<p><strong>...A force de manger...</strong></p>\r\n', 1447512996, 0, 79, 60),
(125, '<p>et que l&#39;on appellait Baptou tout rouge (en plus j&#39;ai des ^potes qui m&#39;appelle vraiment comme sa XDDD)</p>\r\n\r\n<p>&nbsp;\r\n<p>&nbsp;</p>\r\n</p>\r\n<p></p><em><span style="font-size:8px">Édité par trafalgar21 le 14/11/2015 à 16h30</span></em></p>', 1447512997, 0, 79, 76),
(126, '<p>992</p>\r\n', 1447513064, 0, 78, 76),
(127, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447513089, 0, 90, 13),
(128, '<p>991</p>\r\n', 1447513097, 0, 78, 60),
(129, '<p>Test</p>\r\n', 1447513101, 0, 91, 98),
(130, '<p>990</p>\r\n', 1447513135, 0, 78, 76),
(131, '<p>TA soeur</p>\r\n\r\n<p>Je t&#39;aime Zoge</p>\r\n<p></p><em><span style="font-size:8px">Édité par Gaitan le 14/11/2015 à 16h26</span></em></p>', 1447513196, 0, 74, 76),
(132, '<p>Dac (je suis pour saint &eacute; et le real : P) non je dec juste mes potes sont pour saint &eacute; moi je suis pour l&#39;OL</p>\r\n', 1447513286, 0, 75, 76),
(133, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447513313, 0, 92, 13),
(134, '<p>989</p>\r\n', 1447513406, 0, 78, 1),
(135, '<p><strong>Salut !</strong></p>\r\n\r\n<p><strong>Comme le titre l&#39;indique, c&#39;est un concours de colo&#39;s, m&ecirc;me si on a un peu toutes les m&ecirc;mes :/</strong></p>\r\n\r\n<hr />\r\n<p><strong>Le but est simple, vous vous inscrivez, une fois le nombre maximum d&#39;inscrit atteint, ce sera des matchs de 2 ou 3, et seul un gagnera.</strong></p>\r\n\r\n<hr />\r\n<p><strong>Inscrits :</strong></p>\r\n\r\n<p><strong><a href="http://minegame.fr/assets/img/avatarsJoueurs/67.png"><img alt="Pingouin" src="http://minegame.fr/assets/img/avatarsJoueurs/67.png" style="height:74px; width:60px" /></a></strong></p>\r\n\r\n<p><strong>Pingouin</strong></p>\r\n\r\n<p><strong><img alt="Kalivia" src="http://minegame.fr/assets/img/avatarsJoueurs/60.png" style="height:74px; width:60px" /></strong></p>\r\n\r\n<p><strong>Kalivia</strong></p>\r\n\r\n<p><img alt="Elerion" src="http://minegame.fr/assets/img/avatarsJoueurs/74.png" style="height:74px; width:60px" /></p>\r\n\r\n<p><strong>Elerion</strong></p>\r\n\r\n<p><strong><img alt="RisingCrash" src="http://minegame.fr/assets/img/avatarsJoueurs/102.png" style="height:74px; width:60px" />&nbsp;</strong></p>\r\n\r\n<p><strong>RisingCrash</strong></p>\r\n\r\n<p><img alt="Dumbledore" src="http://minegame.fr/assets/img/avatarsJoueurs/1.png" style="height:74px; width:60px" /></p>\r\n\r\n<p><strong>Dumbeldor</strong></p>\r\n\r\n<p><strong><img alt="Escaliburne" src="http://minegame.fr/assets/img/avatarsJoueurs/105.png" style="height:74px; width:60px" /></strong></p>\r\n\r\n<p><strong>Escaliburne</strong></p>\r\n\r\n<p><img alt="Zogene" src="http://minegame.fr/assets/img/avatarsJoueurs/84.png" style="height:74px; width:60px" /></p>\r\n\r\n<p><strong>Zogene</strong></p>\r\n\r\n<p><strong><img alt="Riyuma" src="http://minegame.fr/assets/img/avatarsJoueurs/51.png" style="height:74px; width:60px" /></strong></p>\r\n\r\n<p><span style="color:#008000"><strong>Riyuma</strong></span></p>\r\n\r\n<p><img alt="Zanketsu" src="http://minegame.fr/assets/img/avatarsJoueurs/68.png" style="height:74px; width:60px" />&nbsp;</p>\r\n\r\n<p><strong>Zanketsu</strong></p>\r\n\r\n<p><strong><img alt="Demones" src="http://minegame.fr/assets/img/avatarsJoueurs/78.png" style="height:74px; width:60px" /></strong></p>\r\n\r\n<p><strong>Demones</strong></p>\r\n\r\n<p><strong><img alt="DeteD" src="http://minegame.fr/assets/img/avatarsJoueurs/110.png" style="height:74px; width:60px" /></strong></p>\r\n\r\n<p><strong>deteD</strong></p>\r\n\r\n<p><strong><img alt="HeraSan" src="http://minegame.fr/assets/img/avatarsJoueurs/138.png" style="height:74px; width:60px" /></strong></p>\r\n\r\n<p><strong>HeraSan</strong></p>\r\n\r\n<p><img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/144.png" style="height:74px; width:60px" /></p>\r\n\r\n<p><strong>Raiss</strong></p>\r\n\r\n<p><img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/116.png" style="height:74px; width:60px" /></p>\r\n\r\n<p><strong>Loup</strong></p>\r\n\r\n<p><img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/80.png" style="height:74px; width:60px" /></p>\r\n\r\n<p><strong>Zatan</strong></p>\r\n\r\n<p><img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/71.png" /></p>\r\n\r\n<p><strong>Gaitan</strong></p>\r\n\r\n<p><strong><img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/154.png" /></strong></p>\r\n\r\n<p><strong>Eyver.</strong></p>\r\n\r\n<p><img alt="Rukia" src="http://minegame.fr/assets/img/avatarsJoueurs/132.png" style="height:74px; width:60px" /></p>\r\n\r\n<p><strong>Rukia</strong></p>\r\n\r\n<p><img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/171.png" /></p>\r\n\r\n<p><strong>Kaneki</strong></p>\r\n\r\n<p><img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/193.png" style="height:74px; width:60px" /></p>\r\n\r\n<p><strong>Hiryu</strong></p>\r\n\r\n<p><strong><img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/218.png" style="height:74px; width:60px" /></strong></p>\r\n\r\n<p><strong>Karugara</strong></p>\r\n\r\n<p><strong><img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/139.png" /></strong></p>\r\n\r\n<p><strong>LordDalasse</strong></p>\r\n\r\n<p><img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/243.png" /></p>\r\n\r\n<p><strong>Hik@du</strong></p>\r\n\r\n<p><img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/153.png" /></p>\r\n\r\n<p><strong>FyFuZik</strong></p>\r\n\r\n<p><img alt="" src="http://minegame.fr/assets/img/avatarsJoueurs/208.png" /></p>\r\n\r\n<p><strong>Neptune</strong></p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&Eacute;dit&eacute; par Dumbeldor le 15/11/2015 &agrave; 13h14</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&Eacute;dit&eacute; par Pingouin le 15/11/2015 &agrave; 15h21</em></p>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par Pingouin le 16/11/2015 à 16h52</span></em></p>', 1447513425, 0, 93, 67),
(136, '<p>Ok 988</p>\r\n', 1447513446, 0, 78, 74),
(137, '<p style="text-align: center;">Inscris-moi&nbsp;<img alt="cheeky" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/tongue_smile.png" style="height:23px; width:23px" title="cheeky" /></p>\r\n', 1447513481, 0, 93, 60),
(138, '<p>987</p>\r\n', 1447513520, 0, 78, 60),
(139, '<p>986</p>\r\n', 1447513574, 0, 78, 74),
(140, '<p>Inscris moi aussi :)</p>\r\n', 1447513614, 0, 93, 74),
(141, '<p>Moi aussi.</p>\r\n', 1447513654, 0, 93, 102),
(142, '<p>Moi aussi.</p>\r\n', 1447513654, 0, 93, 102),
(143, '<h1><big><strong><span style="color:#FF0000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Blablabla</span></strong></big></h1>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&Eacute;dit&eacute; par Kira Kazuto le 14/11/2015 &agrave; 16h09</em></p>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par Kira Kazuto le 14/11/2015 à 16h10</span></em></p>', 1447513678, 1, 94, 72),
(144, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447513735, 1, 95, 13),
(145, '<p>Moi aussi&nbsp;<img alt="cheeky" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/tongue_smile.png" style="height:23px; width:23px" title="cheeky" /></p>\r\n', 1447513765, 0, 93, 1),
(146, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447513789, 0, 96, 13),
(147, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447513858, 0, 97, 13),
(148, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447513890, 0, 98, 13),
(149, '<p>Moi aussi ^^</p>\r\n', 1447513912, 0, 93, 105),
(150, '<p>985</p>\r\n', 1447513917, 0, 78, 1),
(151, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447513931, 0, 99, 13),
(152, '<p>Je m&#39;inscris :o</p>\r\n', 1447514026, 0, 93, 84),
(153, '<p><tt><strong>Idem</strong></tt></p>\r\n', 1447514033, 0, 93, 51),
(154, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447514150, 0, 100, 13),
(155, '<p>Un pouple qu&#39;est ce que c&#39;est ?</p>\r\n\r\n<p>les points c&#39;est au singulier ? xD</p>\r\n', 1447514192, 0, 74, 84),
(156, '<p>je m&#39;inscris :&#39;)</p>\r\n', 1447514338, 0, 93, 68),
(157, '<p>Sinon j&#39;vous censure pour faire un DP? :X</p>\r\n', 1447514485, 0, 74, 71),
(158, '<p>Donc si je comprend bien on va devoir se taper des pixels arts avec des coupes &eacute;mos comme personnages ? Le design lui est sympa mais je trouve que le tout fait tr&egrave;s &quot;enfantin&quot; , comme si le site &eacute;tait fait pour une tranche d&#39;&acirc;ge dans les 8-12 ans. Apr&egrave;s &agrave; voir avec le teemps mais voil&agrave; mes premi&egrave;res impressions.&nbsp;</p>\r\n', 1447514700, 0, 82, 115),
(159, '<p>... ou baptou fragile car...</p>\r\n', 1447514750, 0, 79, 1),
(160, '<p>je m&#39;inscris<img alt="wink" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" /><br />\r\n<br />\r\n&nbsp;</p>\r\n', 1447514761, 0, 93, 78),
(161, '<p><strong>Salut les Marines !</strong></p>\r\n\r\n<p><strong>Vous cherchez un &eacute;quipage, vous vous sentez seuls ? Alors, venez avec nous (Moi pour l&#39;instant :/) !</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Voil&agrave;, voil&agrave;...</strong></p>\r\n', 1447514776, 0, 101, 67),
(162, '<p><strong>Merci celui qui a centr&eacute; mon message xD</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>&Eacute;dit : Plus maintenant ._. C&#39;est pas grave, on va laisser comme &ccedil;a x)</strong></p>\r\n<p></p><em><span style="font-size:8px">Édité par Pingouin le 14/11/2015 à 16h29</span></em></p>', 1447514834, 0, 93, 67),
(163, '<p>j&#39;en suis&nbsp;</p>\r\n', 1447514850, 0, 93, 110),
(164, '<p>j&#39;en suis&nbsp;</p>\r\n', 1447514850, 1, 93, 110),
(165, '<p>984</p>\r\n', 1447514959, 0, 78, 74),
(166, '<p>C&#39;est la premi&egrave;re version du design. On est conscient que c&#39;est pas le top top. Mais le point fort c&#39;est qu&#39;il est multi plateform (Responsive) donc tu peux tr&egrave;s bien acc&egrave;der le site depuis un t&eacute;l&eacute;phone sans soucis.</p>\r\n', 1447514962, 0, 82, 1),
(167, '<p>983</p>\r\n', 1447515006, 0, 78, 60),
(168, '<p>c&#39;&eacute;tait une victime</p>\r\n', 1447515020, 0, 79, 76),
(169, '<p>982</p>\r\n', 1447515044, 0, 78, 76),
(170, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447515065, 0, 102, 13),
(171, '<p>981</p>\r\n', 1447515131, 0, 78, 60),
(172, '<p>980</p>\r\n', 1447515155, 0, 78, 1),
(173, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447515175, 0, 103, 13),
(174, '<p>H&eacute;h&eacute; pas mal le nom de l&#39;&eacute;quipage !&nbsp;<img alt="yes" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" /></p>\r\n', 1447515183, 0, 101, 1),
(175, '<p>979</p>\r\n', 1447515214, 0, 78, 76),
(176, '', 1447515250, 0, 74, 51),
(177, '<p>Salut,</p>\r\n\r\n<p>Ma demande est tr&egrave;s simple. Avez vous des id&eacute;es pour le nom du jeu ?<br />\r\nDans le staff on a eu pas mal d&#39;id&eacute;e mais avant de prendre une d&eacute;cision on aimerait avoir d&#39;autre choix !</p>\r\n\r\n<p>Merci.</p>\r\n', 1447515397, 0, 104, 1),
(178, '<p>980</p>\r\n', 1447515498, 0, 78, 1),
(179, '<p>onepieceshinobi.fr ? :3 (j&#39;ai vu la copie pour les tetes :D</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>One piece.fr ?</p>\r\n', 1447515500, 0, 104, 116),
(180, '<p>Ah ok bah tant mieux vu que oprpg c&#39;&eacute;tait franchement d&eacute;geulasse sur le portable.</p>\r\n', 1447515683, 0, 82, 115),
(181, '<p>979</p>\r\n', 1447515743, 0, 78, 80),
(182, '<p>Yep, alors qu&#39;une majorit&eacute; des joueurs se connecter r&eacute;gulierement sur leurs t&eacute;l&eacute;phone....</p>\r\n', 1447515840, 0, 82, 1),
(183, '<p>Bonjour, mon pseudo est donc loup dans la vie r&eacute;elle j&#39;ai 15 ans je debute ce nouveau jeu tout comme vous et je fait parti la Team Phoenix avec le capitaine pingouin :3, sinon bah j&#39;aime bien les cookies, les mangas et surtout le basketball. ^^ Je peut pas trop faire part de mon experience dans le jeu vu que c&#39;est nouveau xD mais je suivait un peu one piece rpg dans le pass&eacute; donc voil&agrave; j&#39;attendait un site depuis longtemps voil&agrave; tout h&eacute;sit&eacute; pas a venir me parl&eacute; par message ou sur le tchat ^^</p>\r\n<p></p><em><span style="font-size:8px">Édité par loup le 14/11/2015 à 17h46</span></em></p>', 1447515856, 0, 105, 116),
(184, '<p>978</p>\r\n', 1447515861, 0, 78, 1),
(185, '<p>Inscris moi &eacute;galement&nbsp;<img alt="smiley" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/regular_smile.png" style="height:23px; width:23px" title="smiley" /></p>\r\n', 1447515944, 0, 93, 71),
(186, '<p>One Piece Kawaii</p>\r\n', 1447515986, 0, 104, 73),
(187, '<p>Aller why not je m&#39;inscris ^^</p>\r\n', 1447516009, 0, 93, 80),
(188, '<p>Salut et bienvenue !</p>\r\n\r\n<p>Tu as un forum priv&eacute; pour discuter avec les joueurs de ta faction (R&eacute;volutionnaire) n&#39;h&eacute;site pas de demander la bas aussi !&nbsp;<img alt="wink" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" /></p>\r\n', 1447516012, 0, 105, 1),
(189, '<p>Yoh o/</p>\r\n\r\n<p>Pti topic de blabla.</p>\r\n\r\n<p>Alors y&#39;a qui en pirate la ? J&#39;ai l&#39;impression qu&#39;il n&#39;y a que du r&eacute;vo/marine</p>\r\n', 1447516219, 0, 106, 80),
(190, '<p>Moi aussi s&#39;il te plait ^^</p>\r\n', 1447516275, 0, 93, 116),
(191, '', 1447516493, 0, 74, 71),
(192, '', 1447516503, 1, 74, 71),
(193, '<p>Haha one piece kawai&nbsp;</p>\r\n', 1447516561, 0, 104, 1),
(194, '<p>Op r&eacute;surrection&nbsp;</p>\r\n', 1447516763, 0, 104, 113),
(195, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447516766, 0, 107, 13),
(196, '<p>Je m&#39;inscrit</p>\r\n', 1447516819, 0, 93, 118),
(197, '<p>onepiece-rpg.fr <img alt="no" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/thumbs_down.png" style="height:23px; width:23px" title="no" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>onepiece-in-poudlard.fr&nbsp;<img alt="yes" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" /></p>\r\n', 1447516970, 0, 104, 94),
(198, '<p>dumbeldor-rpg&nbsp;<img alt="yes" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" /></p>\r\n', 1447517062, 0, 104, 1),
(199, '', 1447517082, 1, 74, 51),
(200, '<p>977</p>\r\n', 1447517107, 0, 78, 80),
(201, '<p>Salut tout monde comme vous saver tous nous sommes en beta ouverte donc nous devons aider le staff de notre mieu possible car nous avons fait que de nous plaindre de la dur&eacute;e de la sortie de la V3 maintenant essaiyons de la conserver donc je propose que nous doniont des id&eacute;e au staff pour rendre la V3 encore meilleur.</p>\r\n\r\n<p><img alt="enlightened" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/lightbulb.png" style="height:23px; width:23px" title="enlightened" /><br />\r\n&nbsp;</p>\r\n', 1447517240, 0, 108, 78),
(202, '<p>Salut les gars :)</p>\r\n', 1447517358, 1, 83, 116),
(203, '<p>J&#39;ai voulu utiliser &quot; &ucirc; &quot;&nbsp; ( tenry&ucirc;bito ) toute &agrave; l&#39;heure et &ccedil;a m&#39;a refus&eacute; la cr&eacute;ation de l&#39;&eacute;quipage</p>\r\n', 1447517460, 0, 109, 80),
(204, '<p>Mon id&eacute;e : supprime ton compte et ne reviens jamais</p>\r\n', 1447517473, 0, 108, 105),
(205, '<p><span style="color:#000000"><strong><span style="font-size:16px"><tt>C&#39;est sympa de ta part mais il y a une section id&eacute;es^^</tt></span></strong></span></p>\r\n', 1447517520, 0, 108, 51),
(206, '<p>je vais y r&eacute;fl&eacute;chir<img alt="no" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/thumbs_down.png" style="height:23px; width:23px" title="no" /><br />\r\n&nbsp;</p>\r\n', 1447517539, 0, 108, 78),
(207, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447517548, 0, 110, 13),
(208, '<p>Merci je regarde.</p>\r\n', 1447517563, 0, 109, 1),
(209, '<p>Salut</p>\r\n', 1447517566, 1, 83, 113),
(210, '<p>Salut :)</p>\r\n', 1447517595, 1, 83, 67),
(211, '<p>Vous n&#39;y aviez pas pens&eacute;? Et bien le voila le t&#39;chat (y)</p>\r\n', 1447517604, 0, 111, 71),
(212, '<p>one-piece-le-jeux-francais-trop-cool-viendez-jouer.fr&nbsp;&nbsp; &quot;insert Kappa&quot;</p>\r\n', 1447517635, 0, 104, 80),
(213, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447517721, 0, 112, 13),
(214, '<p><tt><span style="color:#000000"><strong>J&#39;ai propos&eacute; :</strong></span>&nbsp;Batoru-rpg.fr ou Chokumen-rpg.fr ou Kaizoku-rpg.fr</tt></p>\r\n<p></p><em><span style="font-size:8px">Édité par Riyuma le 14/11/2015 à 17h15</span></em></p>', 1447517728, 0, 104, 51),
(215, '<p>La derni&egrave;re coiffure, dans la couleur blanche, bug et ce place en plein milieu du visage ( pour les hommes )</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par Zatan le 14/11/2015 à 17h26</span></em></p>', 1447517738, 0, 113, 80),
(216, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447517739, 0, 114, 13),
(217, '<p>Vous connaissiez oprpg ou pas ?</p>\r\n', 1447517763, 1, 83, 116),
(218, '<p>976</p>\r\n', 1447517777, 0, 78, 125),
(219, '<p>C&#39;est r&eacute;gl&eacute;&nbsp;<img alt="yes" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" /></p>\r\n', 1447517813, 0, 109, 1),
(220, '<p>T&#39;serieux faut faire une lettre de motiv ?</p>\r\n', 1447517819, 0, 73, 130),
(221, '<p>gear of op</p>\r\n\r\n<p>darkop</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', 1447517828, 0, 104, 78),
(222, '<p>lol</p>\r\n', 1447517832, 0, 106, 68),
(223, '<p><img alt="sad" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/sad_smile.png" style="height:22px; width:22px" title="sad" /></p>\r\n', 1447517867, 0, 106, 113),
(224, '<p>Ouai, depuis assez longtemps ;)</p>\r\n', 1447517911, 1, 83, 67),
(225, '<p>On est pas la pour jouer &agrave; la marelle non plus il faut &ecirc;tre s&eacute;rieux pour &ecirc;tre DNK&nbsp;<img alt="indecision" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/whatchutalkingabout_smile.png" style="height:23px; width:23px" title="indecision" /></p>\r\n', 1447517961, 0, 73, 71),
(226, '<p>ah ouais :o, enfin maintenant c&#39;est plus tr&egrave;s important x), bon y&#39;a pas grand chose a faire sur le jeu :&#39;(</p>\r\n', 1447517971, 1, 83, 116),
(227, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447518041, 0, 115, 13),
(228, '<p>DELIRE GROS</p>\r\n', 1447518072, 0, 111, 51),
(229, '<p>ok cool<br />\r\n&nbsp;</p>\r\n', 1447518078, 0, 111, 78),
(230, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447518102, 0, 116, 13),
(231, '<p>&nbsp;Vivement qu&#39;ils sortent&nbsp;l&#39;&nbsp;autre partie ;)</p>\r\n', 1447518132, 1, 83, 67),
(232, '<blockquote>\r\n<p><strong><em>Citation de Makaveli</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ah ok bah tant mieux vu que oprpg c&#39;&eacute;tait franchement d&eacute;geulasse sur le portable.</p>\r\n</blockquote>\r\n\r\n<p><span style="color:#FFA500"><em>J&#39;avoue</em></span></p>\r\n', 1447518160, 0, 82, 125),
(233, '<p>Aha mince</p>\r\n', 1447518199, 0, 113, 1),
(234, '<p>Comment que c&#39;est trop ouf en vrai c&#39;est un t&#39;chat forum <span style="color:#FFF0F5"><span style="background-color:#FF0000">/e/</span></span></p>\r\n\r\n<p><span style="color:#FFF0F5"><span style="background-color:#000000">En plus on peut &eacute;crire en blanc&nbsp;</span></span></p>\r\n', 1447518227, 0, 111, 71),
(235, '<p>975</p>\r\n', 1447518352, 0, 78, 1),
(236, '<p>J-aime-les-chats.fr <img alt="yes" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" /></p>\r\n', 1447518430, 0, 104, 138),
(237, '<p><span style="color:#FFA500"><em>974</em></span></p>\r\n', 1447518431, 0, 78, 125),
(238, '<p><span style="font-size:8px">hihihihihihihihihihihihihihi</span></p>\r\n', 1447518466, 0, 111, 51),
(239, '<p>Ouep par conte quesque c&#39;est chiant le forum je trouverait ca mieux un tchat :&#39;(</p>\r\n', 1447518493, 1, 83, 116),
(240, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447518553, 0, 117, 13),
(241, '<p>Mwahaha nelose, j&#39;te prend ton anim ;)<br />\r\nInutile de la pr&eacute;senter, vous la connaissez tr&egrave;s bien! :)</p>\r\n\r\n<p>Ceci dit, pour rappel et pour ceux qui d&eacute;barquent, je vais quand m&ecirc;me d&eacute;tailler un peu...</p>\r\n\r\n<p>Le but du jeu est de faire un maximum de post les uns &agrave; la suite des autres sans se faire couper par un autre joueur. Chaque double post rapporte 2 points, triple post 3 points, etc.<br />\r\nPour qu&#39;un double post soit valide, il doit &ecirc;tre espac&eacute; d&#39;une heure minimum.<br />\r\nHave fun!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" style="height:52px; width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td><span style="color:#FF0000">Nom du joueur</span></td>\r\n			<td><span style="color:#FF0000">Points actuels du joueur</span></td>\r\n			<td><span style="color:#FF0000">Plus grand nombre de posts</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kaneki</td>\r\n			<td>1</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Elerion</td>\r\n			<td>1</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>HeraSan</td>\r\n			<td>1</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&Eacute;dit&eacute; par HeraSan le 16/11/2015 &agrave; 13h54</em></p>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par HeraSan le 16/11/2015 à 15h47</span></em></p>', 1447518702, 0, 118, 138),
(242, '<p>Comment on fait pour chang&eacute; de poste dans l&#39;&eacute;quipage ? :)</p>\r\n', 1447518713, 1, 83, 116),
(243, '<p>Trop :/</p>\r\n\r\n<p>Mais, ce sera p&#39;tet plus utile pour prevoir les Ge&#39;s&#39; &nbsp;:)</p>\r\n', 1447518768, 1, 83, 67),
(244, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447518773, 0, 119, 13),
(245, '<blockquote>\r\n<p>Scan Fairy Tail n&deg;461</p>\r\n\r\n<p><a href="http://lel-scan.co/lecture-fairy-tail/461">http://lel-scan.co/lecture-fairy-tail/461</a></p>\r\n</blockquote>\r\n<p></p><em><span style="font-size:8px">Édité par titi17470 le 14/11/2015 à 18h33</span></em></p>', 1447518918, 0, 120, 125),
(246, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447518929, 1, 121, 13),
(247, '<p>973</p>\r\n', 1447518970, 0, 78, 80),
(248, '<p>Pareil, inscris moi ;)</p>\r\n', 1447519021, 0, 93, 138),
(249, '<p>Si on envoie un MP &agrave; une personne ayant un &euml; dans son pseudo il faut r&eacute;&eacute;crire son pseudo pour pouvoir le lui envoyer</p>\r\n\r\n<p>Je sais pas si il y a re&ccedil;u par contre j&#39;attends toujours une r&eacute;ponse ^^</p>\r\n', 1447519086, 0, 122, 84),
(250, '<p>nooooo</p>\r\n', 1447519121, 1, 95, 73),
(251, '<p>T&#39;as os&eacute; omg</p>\r\n', 1447519135, 0, 74, 136),
(252, '<p>Faux-Piece-RPG.com ?</p>\r\n', 1447519257, 0, 104, 102),
(253, '<p>xDDDDD</p>\r\n', 1447519274, 0, 74, 51),
(254, '<p>972</p>\r\n', 1447519400, 0, 78, 1),
(255, '<p>Two-Piece-RPG.fr ?</p>\r\n', 1447519405, 0, 104, 84),
(256, '<p><span style="color:#000080"><span style="background-color:#FF0000">DNK quel est votre m&eacute;tier?</span></span></p>\r\n', 1447519445, 0, 74, 71),
(257, '<p>971</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447519536, 0, 78, 80),
(258, '<p>je m&#39;inscris :)</p>\r\n', 1447519585, 0, 93, 144),
(259, '<p>Quand je veux aller voir la FAQ &ccedil;a m&#39;envoi sur le fofo</p>\r\n', 1447519645, 0, 123, 80),
(260, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447519646, 0, 124, 13);
INSERT INTO `forums_topics_messages` (`id`, `message`, `date_time`, `is_block`, `id_forums_topics`, `id_users`) VALUES
(261, '<p><em><strong>Salut &agrave; tous.</strong></em><span style="color:#0000CD"><em> J&#39;ai d&eacute;cid&eacute; de cr&eacute;&eacute; ce topic pour me pr&eacute;senter (c&#39;est bien le but de ce forum non ?).</em></span></p>\r\n\r\n<p><span style="color:#FF0000"><em>Donc, je me lance. Je m&#39;appelle Thomas. J&#39;ai 13ans. Je suis en 4&egrave;me. Je suis ch&acirc;tain clair. J&#39;ai les yeux bleu. Mon pseudo sur la V2 : Sumeerfrio. </em></span></p>\r\n\r\n<p><span style="color:#008000"><em>J&#39;ai pas trop d&#39;inforamtions pour vous mais c&#39;est d&eacute;j&agrave; bien ^^</em></span></p>\r\n\r\n<p><span style="color:#696969"><em>++ &agrave; tous ;)</em></span></p>\r\n\r\n<p><span style="color:#696969"><em>PS : Mettez un petit </em><img alt="yes" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" /> au passage ;)</span></p>\r\n', 1447519980, 0, 125, 121),
(262, '<p>Gagner &nbsp;Gagner Gagner!!!!!!<span class="marker"><img alt="angry" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/angry_smile.png" style="height:23px; width:23px" title="angry" /></span><br />\r\n<br />\r\n<br />\r\n&nbsp;</p>\r\n', 1447520113, 0, 74, 78),
(263, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447520145, 0, 126, 13),
(264, '<p>Bienvenu Hera_san :)</p>\r\n', 1447520587, 1, 83, 116),
(265, '<p>Voil&agrave;, d&eacute;clarez votre amour pour les pommes les coupaings !</p>\r\n\r\n<p>(et ce soir y&#39;a Danse Avec Les Stars #osef)</p>\r\n', 1447520667, 1, 127, 94),
(266, '<p><font color="#ffa500">Bienvenue dans la salle de discussion de l&#39;&eacute;quipage !</font></p>\r\n', 1447520722, 0, 128, 125),
(267, '<h1>c&#39;de la merde omg :o&nbsp;<img alt="laugh" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/teeth_smile.png" style="height:23px; width:23px" title="laugh" /></h1>\r\n', 1447520744, 0, 127, 126),
(268, '<p>J&#39;&eacute;tais r&eacute;vo mais Riyu l&#39;est alors je suis pass&eacute; pirate</p>\r\n', 1447520777, 0, 106, 94),
(269, '<h3><span style="color:#008000">Protestation !!! :o c&#39;est orange&nbsp;</span></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&Eacute;dit&eacute; par Xtel le 14/11/2015 &agrave; 18h07</em></p>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par Xtel le 14/11/2015 à 18h08</span></em></p>', 1447520821, 0, 128, 126),
(270, '<p><font color="#ffa500">Je viens de recr&eacute;er une salle 1 (juste en dessous de ce topic.</font></p>\r\n', 1447520843, 0, 127, 125),
(271, '<p style="font-style: italic;">Une lettre de motivation ? &#39;kay : <strong>Z </strong>Questuvafaire ?&nbsp;</p>\r\n', 1447520853, 0, 73, 140),
(272, '<p>xD</p>\r\n', 1447520863, 0, 128, 121),
(273, '<h1><span style="color:#008000">TOI TA GUEULE !!!!!!!</span></h1>\r\n', 1447520987, 1, 121, 126),
(274, '<p>H&eacute;h&eacute; salut.<br />\r\nVous pouvez cr&eacute;er d&#39;autre topic aussi&nbsp;<img alt="wink" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" /></p>\r\n', 1447521581, 1, 83, 1),
(275, '<p>La flemme perso x)</p>\r\n', 1447521721, 1, 83, 116),
(276, '<p>Ouai, j&#39;en ferai pour tout ce qu&#39;est Ge&#39;s et d&#39;autre trucs ^^</p>\r\n', 1447521760, 1, 83, 67),
(277, '<p>Vous travailler activement franchement ? On va voir de l&#39;&eacute;volution ?</p>\r\n', 1447521893, 0, 82, 149),
(278, '<iframe width="420" height="315" src="https://www.youtube.com/embed/15buIGB9xDA" frameborder="0" allowfullscreen></iframe>', 1447521903, 0, 129, 1),
(279, '<p>970</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>My bad, pas vu la page 2</p>\r\n<p></p><em><span style="font-size:8px">Édité par Saël le 14/11/2015 à 18h27</span></em></p>', 1447521985, 0, 78, 136),
(280, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447522004, 0, 130, 13),
(281, '<p>Briser les DP !</p>\r\n\r\n<p>Aou aou !</p>\r\n', 1447522073, 0, 74, 136),
(282, '<blockquote>\r\n<p><u><strong><em>Citation de S17</em></strong></u></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Vous travailler activement franchement ? On va voir de l&#39;&eacute;volution ?</p>\r\n</blockquote>\r\n\r\n<p>T&#39;inqui&egrave;te on vous tiens au courant.</p>\r\n', 1447522125, 0, 82, 1),
(283, '<p>969</p>\r\n', 1447522142, 0, 78, 1),
(284, '<p>Yep&nbsp;<img alt="yes" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" /></p>\r\n', 1447522200, 1, 83, 1),
(285, '<p><em>Je propose qu&#39;on l&#39;encule!</em></p>\r\n', 1447522225, 0, 128, 94),
(286, '<p>Bienvenue !&nbsp;<img alt="yes" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" /></p>\r\n', 1447522236, 0, 125, 1),
(287, '<p>Tu vas ajouter des rangs pour l&#39;&eacute;quipage ?</p>\r\n', 1447522335, 1, 83, 67),
(288, '<p>968</p>\r\n', 1447522341, 0, 78, 80),
(289, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447522385, 0, 131, 13),
(290, '<p>Pingouin, ta toujours pas r&eacute;ussi a faire une page d&#39;&eacute;quipage ? :)</p>\r\n<p></p><em><span style="font-size:8px">Édité par loup le 14/11/2015 à 18h33</span></em></p>', 1447522396, 1, 83, 116),
(291, '<p><span style="color:#FFA500"><em>(rire)</em></span></p>\r\n', 1447522472, 0, 128, 125),
(292, '<p>voila notre tchat<br />\r\n&nbsp;</p>\r\n', 1447522485, 0, 132, 152),
(293, '<p>J&#39;ai juste toujours pas vu o&ugrave; c&#39;&eacute;tait pour centr&eacute; xD J&#39;en ferai une quand j&#39;aurai compris x)</p>\r\n', 1447522509, 1, 83, 67),
(294, '<p>Et j&#39;sais pas trop quoi dire, car j&#39;sais pas si il y aura une banque, un classement, et peut &ecirc;tre d&#39;autre ajouts, j&#39;peux juste faire les membres si tu veux ^^</p>\r\n', 1447522861, 1, 83, 67),
(295, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447522945, 0, 133, 13),
(296, '<p>Et les bras droit ils ont acc&egrave;s &agrave; la mod&eacute;ration sur le forum priv&eacute; ;)</p>\r\n', 1447522950, 1, 83, 1),
(297, '<p>Ho trop cool je suis bras droit :D</p>\r\n', 1447523342, 1, 83, 116),
(298, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447523678, 0, 134, 13),
(299, '<p>-ne pas insulter<br />\r\n&nbsp;</p>\r\n', 1447523726, 0, 135, 152),
(300, '<p>Ptdrrrr&nbsp;</p>\r\n', 1447523775, 0, 74, 51),
(301, '', 1447523868, 0, 118, 154),
(302, '<p><em>Mais sinon z&#39;allez bien ?</em></p>\r\n', 1447523875, 0, 128, 94),
(303, '', 1447523925, 0, 118, 94),
(304, '', 1447524111, 0, 118, 76),
(305, '<p>972</p>\r\n', 1447524145, 1, 78, 76),
(306, '<blockquote>\r\n<h3 style="color:#aaa;font-style:italic;">J&#39;vois pas ce que je peut mettre d&#39;autre :/</h3>\r\n</blockquote>\r\n', 1447524178, 1, 83, 67),
(307, '<p>Bah ouais tkt c&#39;est d&eacute;j&agrave; bien ;)</p>\r\n', 1447524309, 1, 83, 116),
(308, '<p><em><span style="color:#FFA500">&Ccedil;a va tranquille. J&#39;essaie de remettre la PE.</span></em></p>\r\n<p></p><em><span style="font-size:8px">Édité par titi17470 le 14/11/2015 à 19h06</span></em></p>', 1447524384, 0, 128, 125),
(309, '<p>bon id&eacute;e</p>\r\n', 1447524482, 0, 111, 76),
(310, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447524496, 0, 136, 13),
(311, '<p><em>Bonne chance alors.</em></p>\r\n', 1447524499, 0, 128, 94),
(312, '<p><img alt="yes" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" />&nbsp;Bienvenue Tomato Ketchup !</p>\r\n', 1447524573, 0, 125, 60),
(313, '<p>Okay</p>\r\n', 1447524584, 0, 74, 76),
(314, '<p>je m&#39;inscris ^^</p>\r\n', 1447524584, 0, 93, 154),
(315, '<p>je suppose que t&#39;as pas vu qu&#39;on &eacute;tait page 2 :o)</p>\r\n\r\n<p>donc 966</p>\r\n', 1447524602, 0, 78, 80),
(316, '', 1447524636, 0, 74, 51),
(317, '<p>Hello mother fucker!</p>\r\n', 1447524637, 1, 83, 132),
(318, '<p>Je m&#39;inscris! :)</p>\r\n', 1447524802, 0, 93, 132),
(319, '<p>Tiens, j&#39;te donne un&nbsp;<img alt="yes" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" /></p>\r\n', 1447524809, 0, 125, 67),
(320, '<p><img alt="yes" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" /> tiens cadeau</p>\r\n', 1447524913, 0, 125, 76),
(321, '<p><img alt="yes" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" /> je m&#39;abonne &agrave; ta cha&icirc;ne, je follow rt et fav puis je like <img alt="cool" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/shades_smile.png" style="height:23px; width:23px" title="cool" /></p>\r\n', 1447524925, 0, 125, 80),
(322, '<p>Belle entr&eacute;e ca MDR tu va bien ? (bienvenue au faite :x)</p>\r\n', 1447524929, 1, 83, 116),
(323, '', 1447525025, 0, 118, 80),
(324, '<p>Bien et toi ? merci &agrave; toi aussi. ^^</p>\r\n', 1447525045, 1, 83, 132),
(325, '', 1447525183, 1, 137, 76),
(326, '<p>C&#39;est moi ou pandaman est juste horrible! &egrave;_&eacute;</p>\r\n', 1447525217, 1, 83, 132),
(327, '<p>Ca va, ca va haaaa je suis content que le site est ouvert ca m&#39;occupe :D, tu jou&eacute; a one piece rpg avant ? ^^</p>\r\n\r\n<p>haha j&#39;avoue que dumbeldor la pas respect xD</p>\r\n<p></p><em><span style="font-size:8px">Édité par loup le 14/11/2015 à 19h21</span></em></p>', 1447525248, 1, 83, 116),
(328, '<p><font color="#ffa500"><em>J&#39;esp&egrave;re que les pages ont &eacute;t&eacute; cr&eacute;&eacute;es...</em></font></p>\r\n', 1447525288, 0, 118, 125),
(329, '<blockquote>\r\n<p><strong><em>Salut je m&#39;appelle Baptiste (Rage ne vous moquez pas XDDDD) j&#39;ai 14 je suis en 3&deg;, j&#39;aime le chocolat et les pizzas XDD voil&agrave; voil&agrave; dans la v2 j&#39;ai srtout fais partit des demon kard (en tant que bras droit). mettez un <img alt="yes" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" /> et un <img alt="heart" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/heart.png" style="height:23px; width:23px" title="heart" /> XDDDDD</em></strong></p>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par trafalgar21 le 14/11/2015 à 19h40</span></em></p>', 1447525338, 0, 137, 76),
(330, '<p>965</p>\r\n', 1447525399, 0, 78, 76),
(331, '<p>Qui suce des...</p>\r\n', 1447525418, 0, 79, 132),
(332, '<p>Ouaip,&nbsp;j&#39;&eacute;tais .:NINJA:. G2 avec kalgara comme perso ^^</p>\r\n', 1447525600, 1, 83, 132),
(333, '<p>Ah ok je connait pas :x bah enchant&eacute; x)</p>\r\n', 1447525719, 1, 83, 116),
(334, '<p>Ouai je sais je suis pas connu :&#39;( &nbsp;(je parlais jamais sur le forum)</p>\r\n', 1447525880, 1, 83, 132),
(335, '<p>964</p>\r\n', 1447525912, 0, 78, 80),
(336, '', 1447525968, 0, 118, 68),
(337, '<p>mdrrr c&#39;est pas important d&#39;etre connu dans ce jeu je croit x)</p>\r\n', 1447526073, 1, 83, 116),
(338, '', 1447526137, 0, 118, 76),
(339, '<p>963</p>\r\n', 1447526161, 0, 78, 76),
(340, '<p>sucette</p>\r\n\r\n<p>bande de pervers</p>\r\n', 1447526189, 0, 79, 76),
(341, '<p>C&#39;est pas faux. :)</p>\r\n', 1447526189, 1, 83, 132),
(342, '<p>Putain j&#39;aurait pr&eacute;f&eacute;r&eacute; une autre t&ecirc;te xD jsp pourquoi j&#39;ai mis cette tete :p</p>\r\n', 1447526339, 1, 83, 116),
(343, '<p><font color="#ffa500"><em>&Ccedil;a avance peu &agrave; peu</em></font></p>\r\n', 1447526384, 0, 128, 125),
(344, '<h1><img alt="enlightened" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/lightbulb.png" style="height:23px; width:23px" title="enlightened" /></h1>\r\n\r\n<p>#33cc00 aaaa</p>\r\n\r\n<p><em>&Eacute;dit&eacute; par Benevolar le 14/11/2015 &agrave; 21h23</em></p>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par Benevolar le 14/11/2015 à 21h32</span></em></p>', 1447526525, 0, 138, 73),
(345, '<p>wsh tou le monde enfin la V3 alor en avant pour de nouvelle aventure qui est d acord:!!!!!!!!!!!!!!!!!!!!!!</p>\r\n', 1447526755, 0, 111, 148),
(346, '<p>wsh tou le monde enfin la V3 alor en avant pour de nouvelle aventure qui est d acord:!!!!!!!!!!!!!!!!!!!!!!</p>\r\n', 1447526755, 1, 111, 148),
(347, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447526899, 0, 139, 13),
(348, '<p><em>Au fait sur BF t&#39;as fini de monter tous les starters en 6* ou pas ? (bien que seuls&nbsp;<span style="color:#0000FF">S&eacute;l&eacute;na</span>,&nbsp;<span style="color:#D3D3D3">Atro&nbsp;</span><span style="color:#696969">et&nbsp;</span><span style="color:#800080">Magress&nbsp;</span>soient utiles)</em></p>\r\n', 1447526967, 0, 128, 94),
(349, '', 1447527217, 0, 118, 94),
(350, '<p>&Ccedil;a se calme ici :0</p>\r\n', 1447527224, 1, 83, 67),
(351, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447527269, 0, 140, 13),
(352, '', 1447527295, 0, 118, 80),
(353, '<p>962</p>\r\n', 1447527302, 0, 78, 80),
(354, '<p>De quoi ? :oo</p>\r\n', 1447527323, 1, 83, 116),
(355, '<p>961</p>\r\n', 1447527398, 0, 78, 76),
(356, '<p><span style="color:#FFA500"><em>Ils sont tous niveau 100 SBB 10 (sauf un ou deux)</em></span></p>\r\n', 1447527411, 0, 128, 125),
(357, '<p>Plus trop de message ._.</p>\r\n', 1447527413, 1, 83, 67),
(358, '', 1447527440, 0, 118, 76),
(359, '<p><font color="#ff8c00"><em>PE termin&eacute;e !</em></font></p>\r\n', 1447527447, 0, 128, 125),
(360, '<p>haaaaan ouais un peu :x mais bon c&#39;est bien la tranquillit&eacute; aussi :3</p>\r\n', 1447527561, 1, 83, 116),
(361, '<p><span style="color:#FFA500"><em>Ah ! Et je crois que l&#39;on n&#39;a plus la restriction d&#39;une heure entre chaque post donc l&#39;animation n&#39;a plus beaucoup de sens.</em></span></p>\r\n', 1447527562, 0, 118, 125),
(362, '<p><span style="color:#FF8C00"><em>962</em></span></p>\r\n', 1447527626, 0, 78, 125),
(363, '<p>okok</p>\r\n', 1447527718, 1, 13, 166),
(364, '<p>je suis dacord avec toi</p>\r\n', 1447527734, 0, 13, 166),
(365, '<p><em>D&#39;acc :P</em></p>\r\n', 1447527882, 0, 128, 94),
(366, '<blockquote>\r\n<p><strong><em>Citation de Glyff</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>J&#39;&eacute;tais r&eacute;vo mais Riyu l&#39;est alors je suis pass&eacute; pirate</p>\r\n</blockquote>\r\n\r\n<p><font color="#ffa500"><em>(rire)</em></font></p>\r\n', 1447527945, 0, 106, 125),
(367, '<p>c&#39;quand les 7* du coup ?&nbsp;</p>\r\n', 1447528021, 0, 128, 126),
(368, '<p>Ushionopiece.fr</p>\r\n', 1447528081, 0, 104, 137),
(369, '<p>Il est oblig&eacute; de mettre &quot;rpg&quot; &agrave; la fin ?</p>\r\n\r\n<p>sinon... One Piece Hero ', 1447528249, 0, 104, 154),
(370, '<p>wsh bienvenu hertz</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447528317, 0, 132, 151),
(371, '', 1447528337, 0, 118, 154),
(372, '', 1447528342, 0, 118, 154),
(373, '<p>:3</p>\r\n', 1447528349, 0, 118, 154),
(374, '', 1447528364, 0, 118, 154),
(375, '<p>Moi ma plus grosse &quot;d&eacute;ception&quot; pour le coup c&#39;est vraiment les avatars aux coupes emo. :x</p>\r\n', 1447528451, 0, 82, 66),
(376, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447528506, 0, 141, 13),
(377, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447528914, 0, 142, 13),
(378, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447529052, 0, 143, 13),
(379, '', 1447529249, 0, 118, 171),
(380, '<p>Je vois cette nouvelle V3 s&#39;annonce ... tellement pleine d&#39;avenir.<br />\r\nEn fait je passe juste pour dire que si c&#39;est pour sortir &ccedil;a autant laisser la V2 oprpg, le temps que vous fassiez un site qui ressemble a quelques choses parce que je sais que ce n&#39;est que la partie communautaire tout ca et que vous voulez faire plaisir a la communaut&eacute; en sortant rapidement quelque chose mais en toute franchise c&#39;est loin d&#39;&ecirc;tre la folie. M&ecirc;me si la V2 &eacute;tait pas ouf elle &eacute;tait mieux pour la partie communautaire que ce que vous proposez actuellement.</p>\r\n\r\n<p>J&#39;esp&egrave;re que votre site evoluera dans le sens que vous le souhaitez, mais &eacute;vitez de sauter les &eacute;tapes. Voici l&#39;impression que ca me donne :</p>\r\n\r\n<p>sur les 2 staff il y en a un qui r&eacute;flechit beaucoup trop et qui n&#39;agit pas et un autre qui agit sans r&eacute;fl&eacute;chir(je m&#39;entends quand je dis ca)<br />\r\n<br />\r\nBonne continuation a vous !</p>\r\n', 1447529272, 0, 82, 176),
(381, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447529310, 0, 144, 13),
(382, '<p>Inscrit moi gro</p>\r\n', 1447529373, 0, 93, 171),
(383, '<p>961</p>\r\n<p></p><em><span style="font-size:8px">Édité par Kaneki le 14/11/2015 à 21h00</span></em></p>', 1447529440, 0, 78, 171),
(384, '<p>merci ma couille</p>\r\n', 1447529475, 1, 132, 135),
(385, '<p>dsl je etait en train de manger</p>\r\n', 1447529493, 1, 132, 135),
(386, '<p>a la fraise</p>\r\n', 1447529520, 0, 79, 171),
(387, '<p><span class="marker">tktkt ma guelle </span></p>\r\n', 1447529558, 1, 135, 135),
(388, '<p>Deuxi&egrave;me message</p>\r\n<p></p><em><span style="font-size:8px">Édité par Kaneki le 14/11/2015 à 20h33</span></em></p>', 1447529604, 0, 9, 171),
(389, '<p>Personne l&#39;aime ou quoi xD</p>\r\n', 1447529810, 0, 106, 80),
(390, '', 1447530535, 1, 145, 166),
(391, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447530878, 0, 146, 13),
(392, '<p>971</p>\r\n', 1447530950, 0, 78, 1),
(393, '<p><em>Je vais d&#39;abord exposer ma premi&egrave;re id&eacute;e, qui concerne plus &quot;l&#39;aide&quot; aux nouveaux que le jeu en lui-meme.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Localisation : </strong><em>Soit sur le forum, soit sur une rubrique adapt&eacute;e dans &quot;Le site&quot; par exemple.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><strong>L&#39;id&eacute;e :&nbsp;</strong></em><em>Lorsque j&#39;&eacute;tais sur oprpg il y&#39;a 3 ans je dirai, il y&#39;avait peu de topic d&#39;aide mise &agrave; part un tr&egrave;s bon forum qui &eacute;tait dirig&eacute; par Threax, si je ne me trompe pas. Bref, je pense qu&#39;il serai judicieux de faire diff&eacute;rents pages/topics assez claires et pr&eacute;cises afin de clairement expliquer les enjeux de la ddm par exemple ou encore une page par rapport aux fruits du d&eacute;mons (ils y sont toujours? xD). Bref vous m&#39;aurez compris des pages concernant les pouvoirs, les diff&eacute;rentes iles et leurs enjeux. J&#39;avais moi-meme cr&eacute;e un topic sur la DDM avec les points qu&#39;elle rapport&eacute;e selon les terres domin&eacute;es.&nbsp;</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Autre :&nbsp;</strong><em>Je rappel que c&#39;est une proposition d&#39;id&eacute;e mais elle n&#39;est en aucun cas &#39;&#39;urgente&quot;. Je souhaite d&#39;abord au Staff la motivation de travailler sur les&nbsp;</em><strong>fondations&nbsp;</strong><em>du jeu. Mais disons que je pense que mon id&eacute;e pourrait-etre facilement appliqu&eacute;e. Je pense qu&#39;il faut maintenir les pages avec les personnages et leurs fruits du d&eacute;mons (que les r&eacute;dacteurs r&eacute;digeaient anciennement) mais pourquoi pas dans ce cas l&agrave; les les peaufiners?&nbsp;</em></p>\r\n', 1447531110, 0, 62, 175),
(394, '<p>Y&#39;a des joueurs de league of legends par ici ? :D</p>\r\n', 1447531371, 1, 83, 116),
(395, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447531737, 0, 147, 13),
(396, '<p>C&#39;est le plus grand <span style="color:#FF0000"><strong><span style="background-color:#00FF00">counard </span></strong></span>de l&#39;univers connue et inconue&nbsp;</p>\r\n', 1447532094, 0, 106, 110),
(397, '<p>qui n&#39;est pas fraiche</p>\r\n', 1447532116, 0, 79, 178),
(398, '<p>mais bonne</p>\r\n', 1447532157, 0, 79, 171),
(399, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447532740, 1, 148, 13),
(400, '<p>Bienvenu Ray :D</p>\r\n', 1447532762, 1, 83, 116),
(401, '', 1447532909, 1, 149, 110),
(402, '<p>o_O</p>\r\n', 1447533061, 0, 118, 178),
(403, '<p>La fonction recherche dans l&#39;annuaire marche pas, je tape un nom mais peut importe ce que je fais il ne ce passe rien ^^</p>\r\n', 1447533115, 0, 150, 80),
(404, '<p>971 ? T&#39;as le droit de remonter ou tu t&#39;es gour&eacute;? xD</p>\r\n\r\n<p>959</p>\r\n', 1447533250, 0, 78, 80),
(405, '<h1 style="font-style: italic;"><strong><em><span style="color:#800000"><span style="background-color:#EE82EE">COMING SOON!</span></span></em></strong></h1>\r\n', 1447533796, 0, 128, 94),
(406, '<p>958</p>\r\n', 1447533895, 0, 78, 74),
(407, '<blockquote>\r\n<p><strong><em>Citation de trafalgar21</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>bon id&eacute;e</p>\r\n</blockquote>\r\n\r\n<p><span style="color:#FFF0F5"><span style="background-color:#000000">Baw&eacute; normal c&#39;est moi qui l&#39;ai cr&eacute;e en m&ecirc;me temps, logique que ce soit une bonne id&eacute;e</span></span></p>\r\n', 1447533955, 0, 111, 71),
(408, '<p>Hu&eacute; ?</p>\r\n', 1447533967, 0, 118, 74),
(409, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447534212, 0, 151, 13),
(410, '<p><span style="color:#FFF0F5">J&#39;&eacute;cris en blanc j&#39;suis un thug!</span></p>\r\n', 1447534216, 0, 74, 71),
(411, '<p>Merde j&#39;ai oubli&eacute;</p>\r\n', 1447534293, 0, 118, 171),
(412, '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<img alt="" src="http://1.1.1.1/bmi/i68.servimg.com/u/f68/12/88/22/34/bleach10.png" style="height:87px; width:490px" />&nbsp;</p>\r\n\r\n<p><img alt="" src="http://1.1.1.2/bmi/emblemsbf.com/img/10663.jpg" style="height:20px; width:20px" />&nbsp;Tes un pirates ? &nbsp;</p>\r\n\r\n<p><img alt="" src="http://1.1.1.2/bmi/emblemsbf.com/img/10663.jpg" style="height:20px; width:20px" />tu cherche un &eacute;quipage ?</p>\r\n\r\n<p><img alt="" src="http://1.1.1.2/bmi/emblemsbf.com/img/10663.jpg" style="height:20px; width:20px" />Plus besoin&nbsp;de chercher un &eacute;quipage viens vite rejoindre les Seireitei tout nouveaux &eacute;quipage qui viens d&#39;&ecirc;tre cr&eacute;&eacute; !</p>\r\n\r\n<p><img alt="" src="http://1.1.1.2/bmi/emblemsbf.com/img/10663.jpg" style="height:20px; width:20px" />Venez nous rejoindre pour piller voler et sem&eacute; la terreur sur toute les mers !</p>\r\n<p></p><em><span style="font-size:8px">Édité par deteD le 14/11/2015 à 21h54</span></em></p>', 1447534459, 0, 152, 110),
(413, '<blockquote>\r\n<p>957</p>\r\n\r\n<p><strong><em>Citation de Zatan</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>971 ? T&#39;as le droit de remonter ou tu t&#39;es gour&eacute;? xD</p>\r\n\r\n<p>959</p>\r\n\r\n<p><br />\r\nC&#39;est moi qui l&#39;ai enduit en erreur xD</p>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n', 1447534547, 0, 78, 171),
(414, '<p>Mdr peu de fautes c&#39;rare&nbsp;<img alt="cool" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/shades_smile.png" style="height:23px; width:23px" title="cool" /></p>\r\n', 1447534589, 0, 152, 193),
(415, '<p>Sa veut dire quoi sa &gt;_&lt;&nbsp;</p>\r\n', 1447534675, 0, 152, 110),
(416, '<p>Premier membre PFR *_*</p>\r\n', 1447534911, 0, 149, 110),
(417, '<h2 style="font-style:italic;">Rien rien&nbsp;<img alt="frown" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/confused_smile.png" style="height:23px; width:23px" title="frown" /></h2>\r\n', 1447534929, 0, 152, 193),
(418, '<p>Ouii :$ WAaah pourquoi jsuis matelot XDD</p>\r\n', 1447535013, 0, 149, 193),
(419, '<p>pck il y a pas 50 post mdr c&#39;est matelot bras droit cap et c&#39;est tout je croie&nbsp;</p>\r\n\r\n<p>mdr je vaus r&eacute;gles sa mais suis d&eacute;cu tu aurait pus faire une monet en avat :&#39;(&nbsp;</p>\r\n', 1447535153, 0, 149, 110),
(420, '<p>c&#39;est bon tes BD&nbsp;</p>\r\n', 1447535455, 0, 149, 110),
(421, '<p>Haawwn cbon merci :$</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>En fait forum Seireitei c&#39;est l&#39;equivalent de la salle 1 ? XD</p>\r\n', 1447535461, 0, 149, 193),
(422, '<p>Oui c&#39;est la salle 1 enfaite vue qu&#39;il y en &nbsp;a pas encore&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447535665, 0, 149, 110),
(423, '<p><span style="color:#FFA500"><em>956</em></span></p>\r\n', 1447535730, 0, 78, 125),
(424, '<p>Moi aussi</p>\r\n', 1447535900, 0, 93, 193),
(425, '<p>One Piece Communauty Game (OPCG)</p>\r\n\r\n<p>One Piece Battle of the Throne (OPBT)</p>\r\n\r\n<p>One Piece King of Battle (OPKB)</p>\r\n', 1447536151, 0, 104, 155),
(426, '<p>Waaah xD en tout cas jsuis trop beau tavu</p>\r\n', 1447536236, 0, 149, 193),
(427, '<p>Mouais je le suis largement plus mdr&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>suis entrain de faire la PE je me souvenen plus que cette aussi chiant mdr</p>\r\n<p></p><em><span style="font-size:8px">Édité par deteD le 14/11/2015 à 22h29</span></em></p>', 1447536549, 0, 149, 110),
(428, '<p>Wai bof XD t un vampire tout pale la xDD</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ouais c grave chiant je corrigerai tes fautes alors XD</p>\r\n', 1447536681, 0, 149, 193),
(429, '<p>mdr pour quoi un vampire ? XDDD</p>\r\n', 1447536858, 0, 149, 110),
(430, '<p>Bah regarde t pale XDD</p>\r\n', 1447536899, 0, 149, 193),
(431, '<p>non c&#39;est juste que toi ta le tein d&#39;un rebeu mdr</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>bon sur ceux je taille moi j&#39;ai une soir&eacute; charger je te laisse le soins d&#39;aller recruter des membres xd</p>\r\n', 1447537004, 0, 149, 110),
(432, '<p>Mdrrr oh chut hein !</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ah oui ton rdv xD Ah les bd peuvent recruter ? :O</p>\r\n', 1447537133, 0, 149, 193),
(433, '<p>Salut je m&#39;appelle Wahib j&#39;ai 13 ans et je suis en 3&egrave;me.</p>\r\n\r\n<p>&Agrave; la v2 j&#39;&eacute;tais Blue.D.Viper.</p>\r\n\r\n<p>Voil&agrave; c&#39;est tout :D</p>\r\n', 1447537887, 0, 153, 199),
(434, '<p>meh</p>\r\n', 1447538155, 0, 118, 74),
(435, '<p>One piece : The Game.</p>\r\n', 1447538180, 0, 104, 66),
(436, '<p>mdr il aurait du changer de pseudo :x</p>\r\n', 1447538198, 0, 106, 68),
(437, '', 1447538219, 0, 118, 68),
(438, '<p>955</p>\r\n', 1447538221, 0, 78, 74),
(439, '<p>Salut &agrave; tous je m&#39;appelle Wahib j&#39;ai 13 ans je suis en 3eme a la v2 mon pseudo &eacute;tait Blue.D.Viper :D</p>\r\n\r\n<p>P.s petite question ce forum est sens&eacute; &ecirc;tre notre tchat (pour l&#39;&eacute;quipage) ?&nbsp;</p>\r\n', 1447538413, 1, 83, 199),
(440, '<h2><font color="#40e0d0">Enchant&eacute; et okaeri&nbsp;!&nbsp;</font></h2>\r\n', 1447538595, 0, 153, 193),
(441, '<p>Enchant&eacute; ! &nbsp;:)&nbsp;</p>\r\n\r\n<p>Oka&eacute;ri ? Je vais me contenter de dire merci hein ^^&#39;</p>\r\n', 1447538700, 0, 153, 199),
(442, '<p>Bienvenu ^^, bah enfaite disons que tu peut consid&eacute;r&eacute; ca comme le tchat oui x) tu va bien ?</p>\r\n', 1447538714, 1, 83, 116),
(443, '<p>Oui et toi ? Tu &eacute;tais qui sur la v2 ?</p>\r\n', 1447538807, 1, 83, 199),
(444, '<p>Pendant l&#39;inscription ya un bug non &nbsp;? Au moment o&ugrave; on&nbsp;doit ecrire le code affich&eacute; &ccedil;a marche pas &gt;&lt;</p>\r\n', 1447538829, 1, 154, 193),
(445, '<p>Tranquillement je m&#39;apel&eacute;e Trippin, je jouait pas vraiment car je suis arriv&eacute;e vers la fin du site alors j&#39;attendait un renouveau voil&agrave; tout :D</p>\r\n', 1447538906, 1, 83, 116),
(446, '<p>Ah ok :)</p>\r\n\r\n<p>Et la vraie v3 sortira quand ?&nbsp;</p>\r\n\r\n<p>Pourquoi je suis matelot mdr ? J&#39;avais demand&eacute; chasseur w&eacute;sh xD</p>\r\n', 1447539123, 1, 83, 199),
(447, '<p>Bienvenu tarkaghal, piouf j&#39;esp&egrave;re que le capitaine ne m&#39;envoudra pas d&#39;avoir recrut&eacute; tout le monde :s enfin bref pour vos postes je sait pas comment sa marche donc vous devrait voir avec pingouin ^^</p>\r\n', 1447539187, 1, 83, 116),
(448, '<p>jsp quand elle viendra cette v3 et je croit que dumbeldor ne le sait pas non plus on vera bien hein x)</p>\r\n', 1447539239, 1, 83, 116),
(449, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447539283, 0, 155, 13),
(450, '<p>Ok</p>\r\n\r\n<p>C&#39;est le Pingouin que je connais de la v2 ?&nbsp;</p>\r\n', 1447539328, 1, 83, 199),
(451, '<p>Oui, enfin il ma dit que c&#39;&eacute;tait lui et qu&#39;il jouait depuis longtemps ^^ tu le connait comment ? :)</p>\r\n', 1447539427, 1, 83, 116),
(452, '<p>Je parlais avec Smok.Aks2 et Dumbeldor et Pingouin est arriv&eacute; et m&#39;a dit en mp &eacute;crit /max et comme je connaissais pas je me suis fais avoir mdr j&#39;avais un perso Trafalgar Law le fdd nikyu la colo et un tenka + lvl 74 bref j&#39;avais un compte trop swag que j&#39;avais mont&eacute; en 40 jours maxi je crois :DDD</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447539674, 1, 83, 199),
(453, '<p>hahahaha mdrr dur xD</p>\r\n\r\n<p>Oue mais enfin maintenant ca te sert plus a rien :x h&eacute;h&eacute;</p>\r\n', 1447539797, 1, 83, 116),
(454, '<p>J&#39;avais 2 amis (qui &eacute;taient mes MEILLEURS amis|enfin dans le jeu mdrr) Ponzu/Yusuru et Balerow32</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447539858, 1, 83, 199),
(455, '<p>J&#39;avoue que la je me demande si le syst&egrave;me avatar ne vaut pas les personnages de OP&nbsp;</p>\r\n', 1447539938, 1, 83, 199),
(456, '<p>H&eacute; beh ta des nouvelles d&#39;eux ? sinon invite les :)</p>\r\n', 1447539971, 1, 83, 116),
(457, '<p>Et sinon toi tes stats d&#39;avant ?</p>\r\n', 1447540006, 1, 83, 199),
(458, '<p>Non aucune nouvelle et je sais m&ecirc;me pas si ils sont inscrits</p>\r\n', 1447540051, 1, 83, 199),
(459, '<p>heuu j&#39;&eacute;tait pas tr&egrave;s experiment&eacute; comme je t&#39;ai dit je devait etre vers le level 30 environ et j&#39;&eacute;tait un chopper xD</p>\r\n', 1447540099, 1, 83, 116),
(460, '<p>Mdrrr&nbsp;</p>\r\n', 1447540135, 1, 83, 199),
(461, '<p>Bonne nuit moi je m&#39;en vais dormir :D</p>\r\n', 1447540381, 1, 83, 199),
(462, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447540389, 0, 156, 13),
(463, '<p>Bonne nuit gros ;)</p>\r\n', 1447540607, 1, 83, 116),
(464, '<p>et t&#39;as trouv&eacute; un autre bug en cr&eacute;ant ton topic sans titre x&#39;DD</p>\r\n', 1447541493, 1, 154, 80),
(465, '<p>C&#39;est marrant les r&eacute;actions ici alors qu&#39;il avait &eacute;t&eacute; annonc&eacute; que cette &quot;v3&quot; &eacute;tait compl&egrave;tement ind&eacute;pendante de tout le boulot qui avait d&eacute;j&agrave; &eacute;tait fourni pour la v3 sur laquelle l&#39;ancien staff bossait depuis 2 ans.<br />\r\n<br />\r\nOui le design est a retravailler, oui le jeu n&#39;est absolument pas d&eacute;velopp&eacute;, et oui il y a encore quelques bugs ; mais il n&#39;est pas de la responsabilit&eacute; de minegame.fr de garder la v2 r&eacute;cup&eacute;r&eacute;e ouverte alors que onepiece-rpg.fr peut le faire ou d&eacute;ployer LEUR v3.<br />\r\n<br />\r\nDans tous les cas, cette version que vous avez sous les yeux est un aper&ccedil;u de ce qui est possible de faire en rapidit&eacute;, et de technicit&eacute; si on prend un petit mois en travaillant &agrave; deux (Dumb et Sumo). Imaginez simplement la suite si le travail est cadr&eacute;, soutenu et encourag&eacute;. Maintenant le fond de cette version (si j&#39;ai bien suivi) est principalement de mettre en avant l&#39;aspect communautaire avant le jeu, puis de d&eacute;velopper le jeu au fur et &agrave; mesure avec vos soutiens.<br />\r\n<br />\r\nSoyez indulgent, &ccedil;a avance. Ne confondez pas OPrpg et Minegame qui suivent d&eacute;sormais deux voies diff&eacute;rentes.<br />\r\n<br />\r\nEnjoy !</p>\r\n', 1447541563, 0, 82, 147),
(466, '<p><img alt="One piece" src="http://mangalerie.fr/wp-content/uploads/2015/10/one_piece_narration.jpg" style="border-style:solid; border-width:2px; height:281px; width:500px" /></p>\r\n', 1447541868, 0, 111, 204),
(467, '<p>Je t&#39;aime &lt;3 je te suis lel Accepte moa xD (Ces vrai lel</p>\r\n', 1447542532, 0, 73, 208),
(468, '<p>Salut,</p>\r\n\r\n<p>Merci de prendre le temps de r&eacute;fl&eacute;chir &agrave; des noms, mais gardez &agrave; l&#39;esprit qu&#39;on doit trouver une nom de domaine (l&#39;URL du site que vous tapez dans votre navigateur) qui ne soit pas trop long.</p>\r\n\r\n<p>Merci !</p>\r\n', 1447542615, 0, 104, 2),
(469, '', 1447542702, 0, 74, 173),
(470, '<p><strong>Une entente entre R&eacute;volutionnaire est promordiale pour notre Victoire a tous Unisons nous en tant que R&eacute;volutionnaire est emportons toute les victoires qui seront a notre port&eacute; :)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Entente,bonne&nbsp;humeur,courage et fid&eacute;lit&eacute; suffirons :)&nbsp;<img alt="yes" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" /><img alt="cheeky" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/tongue_smile.png" style="height:23px; width:23px" title="cheeky" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&Eacute;dit&eacute; par Neptune le 15/11/2015 &agrave; 00h13</em></p>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par Neptune le 15/11/2015 à 00h13</span></em></p>', 1447542746, 0, 157, 208),
(471, '<p>OneBodyPiece xDDD</p>\r\n', 1447543004, 0, 104, 208),
(472, '', 1447543069, 0, 74, 51),
(473, '<p>Yop</p>\r\n', 1447543299, 0, 158, 166),
(474, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447543472, 0, 159, 13),
(475, '<p>Ah ... XDDDD J&#39;ai oubli&eacute; ltitre &#39;-&#39; c&#39;est moi qui bug la &nbsp;:(</p>\r\n', 1447543521, 1, 154, 193),
(476, '<p>Salut , Moi Ces Neptune ...</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Oui , je suis c&eacute;lib&nbsp;<img alt="cool" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/shades_smile.png" style="height:23px; width:23px" title="cool" />&nbsp;06 37 47 ... xD Nan pour de vrai je suis un gars qui aime rire et qui</p>\r\n\r\n<p>vend du r&ecirc;ve et qui veut devenir Kev Adams&nbsp;<img alt="laugh" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/teeth_smile.png" style="height:23px; width:23px" title="laugh" />&nbsp;Je respecte le futur dictateur&nbsp;</p>\r\n\r\n<h1>Riyum&#39;Euh</h1>\r\n\r\n<p>Cheuveux Noir &nbsp;Yeux Noir si tu voa &ccedil;a c&#39;est moA!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#HUGOTOUTSEUL</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#FierMembreDesDraknessKilleur&#39;EUH</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ciao , Ciao</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447543771, 0, 160, 208),
(477, '<p>Cookie powaa &nbsp;? *w*</p>\r\n', 1447543784, 0, 105, 193),
(478, '<p>Pev &gt; M&ecirc;me si le travail est soutenu et encourag&eacute;, on sait que ce jeu s&#39;&eacute;loigne de ce qui a pu &ecirc;tre pens&eacute; pour oprpg V3 donc c&#39;est difficile d&#39;imaginer. Je veux bien laisser une chance &agrave; ce site mais piti&eacute;, changez l&#39;image de fond !</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ps : Il y a tout de m&ecirc;me une chose que je ne peux qu&#39;applaudir c&#39;est le nombre de connect&eacute;. Beaucoup ont dit que la communaut&eacute; &eacute;tait morte mais le syst&egrave;me pour compter les visiteurs ici permet de compter aussi ceux qui ne sont pas connect&eacute;. On voit donc pr&egrave;s de 200 joueur tapi dans l&#39;ombre en attente de quelque chose. Au vu du nombre de connect&eacute; de oprpg v2, on aurait pu pens&eacute; que m&ecirc;me si la V3 sortait faire repartir le site &agrave; + 200 connect&eacute;s allait &ecirc;tre plus difficile. Voir autant de monde c&#39;est tr&egrave;s encourageant =)</p>\r\n<p></p><em><span style="font-size:8px">Édité par Benevolar le 15/11/2015 à 00h35</span></em></p>', 1447543792, 0, 82, 73),
(479, '<h1 style="font-style: italic;">Riyum&#39;Euh le DICTATEUR IL VOUS DEFONSE TOUS KESTUVAFER</h1>\r\n', 1447544098, 0, 74, 208),
(480, '<h1><strong>TOUS ETRE INSINIFIANT OSE ENERVER RIYUM&#39;EUH DICTATEUR JE M&#39;EN CHARGERAIT !!</strong></h1>\r\n', 1447544198, 1, 161, 208),
(481, '<p>Bon</p>\r\n', 1447544216, 0, 118, 74),
(482, '<p>Oui, il reste encore pas mal de boulot &agrave; faire. La version actuelle n&#39;est qu&#39;une b&eacute;ta, Dumb et Sumo ne cherchent qu&#39;a d&eacute;tecter d&#39;&eacute;ventuels bugs apr&egrave;s quelques semaines de boulot (rien de plus). Cette version n&#39;est plus li&eacute;e &agrave; OPrpg qu&#39;on connaissait, c&#39;est compl&egrave;tement autre chose.</p>\r\n\r\n<p>C&#39;est une tr&egrave;s belle remarque et effectivement je suis assez surpris et tr&egrave;s content de voir &ccedil;a :)</p>\r\n', 1447544293, 0, 82, 147),
(483, '<p>Ah oui... Je pourrais rajouter la restriction si tu veux&nbsp;<img alt="laugh" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/teeth_smile.png" style="height:23px; width:23px" title="laugh" /></p>\r\n', 1447547587, 0, 118, 1),
(484, '<p>954</p>\r\n', 1447547639, 0, 78, 1),
(485, '', 1447547759, 0, 118, 74),
(486, '<p>953</p>\r\n', 1447547791, 0, 78, 74),
(487, '<p>Salut !</p>\r\n\r\n<p>Merci de t&#39;&ecirc;tre pr&eacute;senter c&#39;est cool. Bienvenue&nbsp;<img alt="cheeky" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/tongue_smile.png" style="height:23px; width:23px" title="cheeky" /></p>\r\n', 1447547892, 0, 160, 1),
(488, '<p>Re-bienvenue alors&nbsp;<img alt="laugh" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/teeth_smile.png" style="height:23px; width:23px" title="laugh" /></p>\r\n', 1447547933, 0, 153, 1),
(489, '<p><img alt="yes" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" /></p>\r\n', 1447547963, 0, 137, 1),
(490, '<p>Ah oui un oublie de ma part... Merci je r&egrave;gle &ccedil;a demain.</p>\r\n', 1447548078, 0, 150, 1),
(491, '<p>Ah oui exacte. Merci je r&egrave;gle &ccedil;a demain.</p>\r\n', 1447548113, 0, 123, 1),
(492, '<p>Merci je regarde &ccedil;a quand j&#39;aurais le temps.</p>\r\n', 1447548143, 0, 122, 1),
(493, '<p>&#39;&#39;&Ccedil;a marche pas&#39;&#39; ?</p>\r\n', 1447548178, 1, 154, 1),
(494, '<p>952</p>\r\n', 1447548286, 0, 78, 1),
(495, '', 1447548305, 0, 118, 1),
(496, '<p><em>M&ecirc;me sans son pseudo on l&#39;reconnait xD</em></p>\r\n', 1447548855, 0, 106, 94),
(497, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447548933, 0, 162, 13),
(498, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447550154, 0, 163, 13),
(499, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447552263, 0, 164, 13),
(500, '', 1447552520, 0, 118, 219),
(501, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447553278, 0, 165, 13),
(502, '<p>Mon avatar bug *snif* <img alt="sad" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/sad_smile.png" style="height:23px; width:23px" title="sad" /></p>\r\n', 1447555303, 0, 113, 218),
(503, '<p>Salut ! :)</p>\r\n\r\n<p>J&#39;etais present dans la v2, sous le nom de HopeEmerson. J&#39;ai pas mal aim&eacute; le jeu !</p>\r\n\r\n<p>J&#39;ai hate que ce jeu progresse et soit genial !</p>\r\n\r\n<p>Mes persos pr&eacute;f&eacute;r&eacute;s : Karugara (non sans blague !), Wiper, et Norland !</p>\r\n\r\n<p>Apres pour l&#39;instant j&#39;en suis qu&#39;a l&#39;arc G8 actuellement donc je connais pas tout les persos <img alt="laugh" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/teeth_smile.png" style="height:23px; width:23px" title="laugh" /></p>\r\n\r\n<p>Mes mangas pr&eacute;f&eacute;r&eacute;s : DBZ, One Piece, Death Note, GTO, Kenshin le vagabond, Peace Maker, AfterSchoolCharisma, Yu Gi Oh!, Detective Conan, Goldorak, et j&#39;ai du en oublier :x</p>\r\n\r\n<p>Sinon mon equipage Shandora recrute ;) Venez nombreux :)</p>\r\n\r\n<p>A plus dans les champs de batailles !</p>\r\n', 1447555751, 0, 166, 218),
(504, '<p>Shandora recrute !</p>\r\n\r\n<p>Nous acceptons tout le monde !</p>\r\n\r\n<p>Equipez vous de vos ailes et faites retentir la cloche de notre ile !</p>\r\n\r\n<p>Le son de la cloche nous guidera vers la victoire !</p>\r\n\r\n<p>Bien sur respectez les regles de la tribus, sinon nous serons contraint de faire un sacrifice !</p>\r\n\r\n<p>Venez nombreux ! <img alt="wink" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&Eacute;dit&eacute; par Karugara le 15/11/2015 &agrave; 03h52</em></p>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par Karugara le 15/11/2015 à 03h52</span></em></p>', 1447555880, 1, 167, 218),
(505, '<p>Shandora recrute !</p>\r\n\r\n<p>Nous acceptons tout le monde !</p>\r\n\r\n<p>Equipez vous de vos ailes et faites retentir la cloche de notre ile !</p>\r\n\r\n<p>Le son de la cloche nous guidera vers la victoire !</p>\r\n\r\n<p>Bien sur respectez les regles de la tribus, sinon nous serons contraint de faire un sacrifice !</p>\r\n\r\n<p>Venez nombreux ! <img alt="wink" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" /></p>\r\n', 1447556012, 0, 168, 218),
(506, '<p>Je m&#39;inscris !</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>(sinon une colo c&#39;est un fan art colori&eacute;s ?)</p>\r\n', 1447556195, 0, 93, 218),
(507, '<p><span style="font-family:verdana,geneva,sans-serif"><span style="font-size:20px">C&#39;est pr</span><span style="font-size:26px"><span style="color:#FF0000"><strong>o</strong></span></span><span style="font-size:20px">mordial en effet x)</span></span></p>\r\n', 1447556377, 0, 157, 60),
(508, '<p><strong>trafalgar21 &gt;</strong> Non, une colo c&#39;est notre avatar quoi. En gros tu vois ce qu&#39;il y a sur le 1er post ? Bah voila, c&#39;est &ccedil;a une colo. Toi tu as des cheveux avec un fond rouge c&#39;est tr&egrave;s esth&eacute;tique :s&nbsp;</p>\r\n', 1447556585, 0, 93, 60),
(509, '<p><strong>...comme ma...</strong></p>\r\n', 1447556665, 0, 79, 60),
(510, '<p>951</p>\r\n<p></p><em><span style="font-size:8px">Édité par Kalivia le 15/11/2015 à 04h05</span></em></p>', 1447556708, 0, 78, 60),
(511, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447557844, 0, 169, 13),
(512, '<p>Bonjour,Bonsoir !</p>\r\n\r\n<p>Je S&#39;appel Grou... Non! Alexandre 20ans (Mon pseudo sur la V2:Mauro.D.Momo)&nbsp; on va voir ce que le grand manitou va nous faire de bien :D</p>\r\n', 1447558595, 0, 170, 222),
(513, '<p>Nan,j&#39;t&#39;en veux pas de recruter, du moment que les places sont infinies x)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pour les rangs, y&#39;a que moi qui peut changer, mais comme rangs y&#39;a que : Matelot, Cuisinier et Bras droit...</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bienvenue a tous :)</p>\r\n', 1447567609, 1, 83, 67),
(514, '<p>rge des simpson :O o_O</p>\r\n', 1447568369, 0, 79, 178),
(515, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447572732, 0, 171, 13),
(516, '', 1447573640, 0, 74, 76),
(517, '', 1447573707, 0, 118, 76),
(518, '<p>950</p>\r\n', 1447573764, 0, 78, 76),
(519, '<p>Okay fais toi plaise&nbsp; moi jsuis sage <img alt="angel" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/angel_smile.png" style="height:23px; width:23px" title="angel" /></p>\r\n', 1447574242, 1, 161, 76),
(520, '<p>Ouais je tape le code et il me dit que c&#39;est faux. Et j&#39;ai r&eacute;essay&eacute; au moins 5&nbsp;fois xD (ya pas qu&#39;&agrave; moi que &ccedil;a a fait ce genre de truc)</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447575453, 1, 154, 193),
(521, '<p>Salut et bienvenus a tous sur le nex &quot;op&quot; si je peut le dire</p>\r\n\r\n<p>je vous annonce qu&#39;on recrute</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447575994, 0, 172, 223),
(522, '<p><span style="color:#0000CD"><em>Salut tout le monde ;)</em></span></p>\r\n', 1447577880, 0, 128, 121),
(523, '<p><span style="color:#0000CD"><em>Ouaiw, bvn :p</em></span></p>\r\n', 1447578046, 0, 57, 121),
(524, '<p><span style="color:#0000CD"><em>Qui ne reconnaitrais pas Riyu hein ... <img alt="laugh" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/teeth_smile.png" style="height:23px; width:23px" title="laugh" /></em></span></p>\r\n', 1447578144, 0, 106, 121);
INSERT INTO `forums_topics_messages` (`id`, `message`, `date_time`, `is_block`, `id_forums_topics`, `id_users`) VALUES
(525, '<p><span style="color:#0000CD"><em>Mon &eacute;quipe s&#39;appelle &quot; Les Kogatewa &quot; Et il y aura : Sabo &amp; Luxus.</em></span></p>\r\n\r\n<p><span style="color:#0000CD"><em><a href="http://static.zerochan.net/Sabo.full.1779728.jpg"><img alt="Aucun" src="http://static.zerochan.net/Sabo.full.1779728.jpg" style="height:178px; width:125px" /> </a></em></span></p>\r\n\r\n<p><img alt="" src="http://vignette2.wikia.nocookie.net/fairy-tail/images/c/c6/Luxus_fanart.jpg/revision/latest?cb=20120829145051&amp;path-prefix=fr" style="height:114px; width:125px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par Sumeerfrio le 15/11/2015 à 15h56</span></em></p>', 1447578312, 0, 61, 121),
(526, '<p><span style="color:#0000CD"><em>941</em></span></p>\r\n', 1447578427, 0, 78, 121),
(527, '', 1447578492, 0, 118, 121),
(528, '<p><em>Salut!</em></p>\r\n', 1447578583, 0, 128, 94),
(529, '<p><span style="color:#0000CD"><em>Mrc tout le monde ;)</em></span></p>\r\n\r\n<p><span style="color:#0000CD"><em>Et </em></span><span style="color:#00FF00"><em><strong>Kalivia</strong></em></span><span style="color:#0000CD"><em>, T&#39;es moche :x</em></span></p>\r\n', 1447578604, 0, 125, 121),
(530, '<p><img alt="yes" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" /> ;)</p>\r\n', 1447578704, 0, 166, 121),
(531, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447579234, 0, 173, 13),
(532, '', 1447579348, 0, 118, 94),
(533, '', 1447579859, 0, 118, 80),
(534, '<p>948</p>\r\n\r\n<p>apprenez &agrave; compter les gens x&#39;D</p>\r\n<p></p><em><span style="font-size:8px">Édité par Zatan le 15/11/2015 à 10h32</span></em></p>', 1447579872, 0, 78, 80),
(535, '<p>Bonjour/bonsoir !</p>\r\n\r\n<p>Incroyable, n&#39;est ce pas ? Je me suis inscrite sur ce jeu de merde. Bref passons ce d&eacute;tail, En attendant la vrai v3 du staff officiel mais aussi la v2.5, je vais profiter de cette version afin d&#39;avoir un contact permanent avec la communaut&eacute; oprpg et avec les personnes voulant int&eacute;grer les &quot;Power Rangers Family&quot;.</p>\r\n\r\n<p>D&#39;abord, qui sommes nous ? Nous sommes l&#39;ancien &eacute;quipage connu sous le nom de &quot;Royal Family of Sea&quot; sur la v2, l&#39;&eacute;quipage existe depuis plus de 4 ans. Pour les anciens qui veulent nous retrouver, vous pouvez postuler d&egrave;s maintenant, je vous accepterai directement. Pour les autres, postulez aussi en faisant une petite pr&eacute;sentation de vous, en principe, je vous accepterai facilement car on va dire que c&#39;est un recrutement &quot;test&quot; o&ugrave; je vais voir qui je garderais pour la v2.5 et v3.</p>\r\n<p></p><em><span style="font-size:8px">Édité par CarolineSwan le 15/11/2015 à 10h36</span></em></p>', 1447579939, 0, 174, 97),
(536, '<p>C&#39;est &ccedil;a &quot;l&#39;arm&eacute;e&quot; :o ?</p>\r\n', 1447580433, 1, 161, 136),
(537, '', 1447580505, 0, 118, 139),
(538, '<p>je m&#39;inscrit<br />\r\n&nbsp;</p>\r\n', 1447580562, 0, 93, 227),
(539, '<p><span style="color:#0000CD"><em>M&#39;inscrit ;)</em></span></p>\r\n', 1447580754, 0, 93, 139),
(540, '<p>:s</p>\r\n', 1447580873, 0, 118, 136),
(541, '<p>947</p>\r\n', 1447581033, 0, 78, 136),
(542, '<p><span style="color:#0000CD"><em>Chuis aveugle dsl (rofl)</em></span></p>\r\n\r\n<p><span style="color:#0000CD"><em>946</em></span></p>\r\n', 1447581320, 0, 78, 139),
(543, '<p><span style="color:#0000CD"><em>Salut &agrave; toi ^^</em></span></p>\r\n', 1447581382, 0, 175, 139),
(544, '<p><span style="color:#FFA500"><em>945</em></span></p>\r\n', 1447581431, 0, 78, 125),
(545, '<p><span style="color:#FFA500"><em>Salut</em></span></p>\r\n', 1447581547, 0, 128, 125),
(546, '<p>944</p>\r\n', 1447582277, 0, 78, 80),
(547, '', 1447582293, 0, 118, 80),
(548, '', 1447582559, 0, 118, 74),
(549, '<p>943</p>\r\n', 1447582610, 0, 78, 74),
(550, '<p>Salut tous le monde&nbsp; je&nbsp; vais pas&nbsp; faire un long discorut mais juste pour vous dire que j&#39;ai un max d&#39;idee qui pourront am&eacute;liorer cette version</p>\r\n\r\n<p>Bon bon passons au&nbsp; chose serieuses</p>\r\n\r\n<p>Deja&nbsp; le&nbsp; theme que Dumbeldor a choisit&nbsp;&nbsp; ne&nbsp; va pas en rapprort avec op car on n&#39;entrole pas un herso ( entroler&nbsp; veut&nbsp; dire on joue pas avec un h&eacute;ros quoi )&nbsp; bref si il fesait cette version un peut comme avant sa serait cool mais bon c&#39;est sa versin et c&#39;est lui qui la fait&nbsp; donc&nbsp; vus qu&#39;il a commencer il finiras comme ca&nbsp; mon idee est un peut bas&eacute;&eacute; sur l&#39;aide pour vous aider vus que vous n&#39;avez pas&nbsp; encore d&#39;id&eacute;&eacute; pour ce que je vais vous dire&nbsp; fin j&#39;ai un max d&#39;idee sa&nbsp; va&nbsp; vous plaire et sa&nbsp;&nbsp; aussi&nbsp; permettre d&#39;amener plus que jamais de joueur sur op genre en 1 journee pret de&nbsp; 500 joueur quoi xD</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>bon&nbsp; j&#39;avait comme idee de rendre&nbsp; &quot;Op si je peut le dire un peut plus dynamique car las c&#39;est un&nbsp; peut nazz meme&nbsp; dans&nbsp; les versions ppr&eacute;cedentes donc je me disait qu&#39;on pourrait lui donner un Tonus&nbsp; genre &quot;Op&quot; soit n peut comme ca :</p>\r\n\r\n<p><img src="http://tse4.mm.bing.net/th?id=OIP.M41172a42120e6087f532f4ebf01a6265o0&amp;w=228&amp;h=128&amp;c=7&amp;rs=1&amp;qlt=90&amp;o=4&amp;pid=1.1" style="height:128px; width:228px" />&nbsp;quoi genre plus comme avant quoi :x&nbsp; vus que&nbsp; c&#39;est une&nbsp; new version partis&nbsp; a l&#39;enver&nbsp; on&nbsp; fait tout pour la redresser :x&nbsp; bref&nbsp; le grafisme&nbsp; change un peut quoi&nbsp; ( et j&#39;allait oublier&nbsp; de vous dire&nbsp; pour pas vous perdre&nbsp; bref&nbsp; vous voillez l&#39;equipage de luffy en&nbsp;faite c&#39;est nous fin je&nbsp; veut dire mon image ,&nbsp; c&#39;est&nbsp; celle de luffy.. etc)</p>\r\n\r\n<p>Pour&nbsp; jouer&nbsp; sa&nbsp; va etre genre sur le&nbsp; th&egrave;me de Dumbeldor mais ca seras plus dynamique&nbsp;avec&nbsp; de&nbsp; vari mouvement et tous pas comme l&#39;autre versions ou&nbsp; tu clique clique&nbsp; sasn t&#39;arreter xD celle ci seras pas comme ca&nbsp; se joueras avec nos personnages&nbsp; quoi bref</p>\r\n\r\n<p>Pour ce d&eacute;placer en mer&nbsp; sa&nbsp; va etre&nbsp; genre</p>\r\n\r\n<p><br />\r\n<img src="http://tse2.mm.bing.net/th?id=OIP.M7d914d98311295aac3e22bcb732ee141o0&amp;w=176&amp;h=139&amp;c=7&amp;rs=1&amp;qlt=90&amp;o=4&amp;pid=1.1" style="height:139px; width:176px" />&nbsp;par exemple&nbsp;&nbsp; le bateau c&#39;est&nbsp; mon &eacute;quipage et&nbsp; moi qui allons sur une&nbsp; new ile (&nbsp;&nbsp; faut aussi pensser a creer des new iles&nbsp; hein :x ) bref on n&#39;y&nbsp; vas l&#39;ile est appeller par ex L&#39;ile de Jackie la terreur&nbsp; ou comme vous voulez pour les noms bref ce que je veut dire&nbsp; sur ce sujet c&#39;est&nbsp; que : quand&nbsp; tu go a la&nbsp; carte du monde et&nbsp; que&nbsp; tu clique sur une&nbsp; ile&nbsp; on montre comme t&#39;y vas en bateau vus que c&#39;est en mer et que c&#39;est une ile quoi j&#39;espere&quot; que&nbsp; vius avez compris</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bon et pour les combats (J dit un&nbsp; fois pour completer: Ge, DDM, Champ, Arene) bref sa va pas etre comme avant&nbsp; genre tu clique et tu vois juste&nbsp; la&nbsp; barre de vide diminuer &quot;PFFFTTT&quot; xD non las&nbsp;&nbsp; sa&nbsp; va etre&nbsp; genre&nbsp;</p>\r\n\r\n<p><img src="http://tse1.mm.bing.net/th?&amp;id=OIP.M024c58b5c819897cfad5358485b2355co0&amp;w=300&amp;h=300&amp;c=0&amp;pid=1.9&amp;rs=0&amp;p=0" />&nbsp;comme&nbsp; ca quoi et que&nbsp; se sont tes propres attaques creer ( sa serait cool sa aussi ^^) bref&nbsp; tu attaques&nbsp; genre sa&nbsp; te prends un peut de&nbsp; temsp pour maitriser&nbsp; et&nbsp; tous et&nbsp; a un moment tu reussit&nbsp;&nbsp; et op&nbsp;&nbsp; tu maitrise une attaque&nbsp; que&nbsp; tu&nbsp;&nbsp; a&nbsp; toi&nbsp; meme alaborer et tu&nbsp; lui donne un nom (&nbsp; j&#39;oubliait&nbsp; faut penser a anim&eacute; op c&#39;est a dire avec de la&nbsp; musique selon le moment) bref et il&nbsp; faut aussi que quand tu attaque ton perso dit&nbsp; le nom de&nbsp;&nbsp; ton attaque apr&egrave;s lui avoir donner un nom et il&nbsp; faut aussi montrer comment il se prepare a la faire genre:</p>\r\n\r\n<p><img src="http://tse1.mm.bing.net/th?&amp;id=OIP.Md97d5f48f61d4a1de70eeb32e820b2cdo0&amp;w=300&amp;h=300&amp;c=0&amp;pid=1.9&amp;rs=0&amp;p=0" />&nbsp;bon voilas voilas et si possible&nbsp; pendant les champ ou ddm qu&#39;on montre les adversaires genre quand&nbsp; vous arriver :</p>\r\n\r\n<p><img src="http://tse1.mm.bing.net/th?&amp;id=OIP.Md0440021c550a622f81827aebd364290o0&amp;w=300&amp;h=300&amp;c=0&amp;pid=1.9&amp;rs=0&amp;p=0" />Nom de l&#39;equipage heu au pif: Futur roi des pirates xD&nbsp;&nbsp; Vs <img src="http://tse1.mm.bing.net/th?&amp;id=OIP.Me988832469b1fbe8ab94fedac1edccb2o0&amp;w=300&amp;h=300&amp;c=0&amp;pid=1.9&amp;rs=0&amp;p=0" />Nom de l&#39;equipage : Croc Blanc&nbsp; et ensuite on montre&nbsp; comment sa se passe pendant le Champ genre:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="http://tse1.mm.bing.net/th?id=OIP.M09dbb46e43a84e8203d4ad545d5be9b0o0&amp;w=250&amp;h=91&amp;c=7&amp;rs=1&amp;qlt=90&amp;o=4&amp;pid=1.1" style="height:91px; width:250px" />&nbsp;comme&nbsp; ca&nbsp; quoi&nbsp; on&nbsp; montre les iliminer et on montre ceuw qui reste et&nbsp; on&nbsp; fait&nbsp; genre comme&nbsp; dans les jeux videos&nbsp; :</p>\r\n\r\n<p><img src="http://tse1.mm.bing.net/th?&amp;id=OIP.M434c9a4de01d4eadcabca2bbd8a52bf4o0&amp;w=300&amp;h=300&amp;c=0&amp;pid=1.9&amp;rs=0&amp;p=0" />&nbsp;&nbsp;&nbsp;&nbsp; VS <img src="http://tse1.mm.bing.net/th?&amp;id=OIP.M34085a6ad0ae2db7fc93460dda22862do0&amp;w=300&amp;h=300&amp;c=0&amp;pid=1.9&amp;rs=0&amp;p=0" />&nbsp; quand&nbsp; c&#39;est leur&nbsp; tour&nbsp;&nbsp; fin&nbsp; je&nbsp; veut dire quand&nbsp; c&#39;est a&nbsp; eux de combattre&nbsp; quoi&nbsp; et op on ontre leur&nbsp; combat&nbsp; on montre comment il font leurs attaqueset&nbsp; tous.... .</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pour le pex&nbsp; sa&nbsp; va etre&nbsp; genre : je&nbsp; go dans&nbsp; carte du monde et&nbsp; je clique sur une ile ( qui est l&#39;ile du pex )&nbsp; qui s&#39;appelle par ex:&nbsp; Special Pex et on montre comment j&#39;y go comme un peut plsu loin en&nbsp; haut avec le bateau... bref une fois arriver&nbsp; il ya un comiter d&#39;acceuille qui est&nbsp; genre:</p>\r\n\r\n<p><img src="http://tse4.mm.bing.net/th?id=OIP.M9b620167492c48a64f41fe7c3989fe38o0&amp;w=242&amp;h=133&amp;c=7&amp;rs=1&amp;qlt=90&amp;o=4&amp;pid=1.1" style="height:133px; width:242px" />&nbsp;il dit&nbsp; comme toujous : Yooooooh! si&nbsp; je ne me&nbsp; trompe pas u_u bref&nbsp; apr&egrave;s comme a la version precedent&nbsp; il parle et tous&nbsp; mais la c&#39;est plus realiste et tu&nbsp; clqiue sur je&nbsp; vais m&#39;entrainer et op&nbsp; las&nbsp; tu t&#39;netrainde avec lui en combat normal genre avec&nbsp; des coupas et tous tes techniques et tous :x&nbsp; et apr&egrave;s si tu&nbsp; le&nbsp; bat&nbsp; sa&nbsp; ted it&nbsp;&nbsp; you win et op tu monte de niveau&nbsp;&nbsp;et&nbsp; tu&nbsp; gagne aussi des berrys en passant ^^)&nbsp; bref&nbsp; voilas pour le pex</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Et au&nbsp; faite j&#39;y pense&nbsp; j&#39;ai&nbsp; une question pour toi Dumbeldor pourquoi&nbsp; cette version n&#39;est pas comme les autres ?</p>\r\n\r\n<p>Bref&nbsp; pour les armes et la chasse sa&nbsp; va etre genre : tu go sur ton bateau et&nbsp; tu go sur&nbsp; quelqu&#39;un&nbsp; qui va&nbsp; te donner une mission genre :je vous&nbsp; fait une petite demo :</p>\r\n\r\n<p><img src="http://tse1.mm.bing.net/th?&amp;id=OIP.M9d8ff64311d7e55db532d1da0c5fbbeco0&amp;w=300&amp;h=300&amp;c=0&amp;pid=1.9&amp;rs=0&amp;p=0" />&nbsp;( La&nbsp; c&#39;est vous qui ete sur votre bateau et vous aller chez robin par ex&nbsp; pour&nbsp; vous equiper ) pour qu&#39;elle vous donne un mission et&nbsp; vous&nbsp; y aller et sa&nbsp; donne sa <img src="http://tse1.mm.bing.net/th?&amp;id=OIP.M3f45c29fefd9a5427ad59d79ceb7871bo0&amp;w=300&amp;h=300&amp;c=0&amp;pid=1.9&amp;rs=0&amp;p=0" />&nbsp;T&#39;es venus&nbsp; faire une de mes missions ? et vous cliquer sur&nbsp; oui et&nbsp;&nbsp; vous choisisiez entre la chasse ou les armes pour la&nbsp; chasse&nbsp;&nbsp; vous cliquer sur chasse et ensuite&nbsp; il&nbsp; y a&nbsp; un petit chargement et&nbsp; vous vous retrouver sur une ile&nbsp; remplit d&#39;amimaux vous&nbsp; y aller et&nbsp;&nbsp; vous croiser un Torro chien bison par ex xD <img src="http://tse1.mm.bing.net/th?id=OIP.M96ed60474c876b83dc37f745f1b6aa66o0&amp;w=243&amp;h=132&amp;c=7&amp;rs=1&amp;qlt=90&amp;o=4&amp;pid=1.1" style="height:132px; width:243px" />&nbsp;et vous l&#39;affronter et&nbsp;&nbsp; si vous&nbsp; gagnger&nbsp; vous le captuer avec votre&nbsp; fillet et&nbsp; vous le dompter avec votre&nbsp; fouet que robien ous a&nbsp; donner et voilas vous avez un familer&nbsp; :x</p>\r\n\r\n<p>POur les armes vous retourner sur le bateau et&nbsp; vous cliquer sur&nbsp;&nbsp; je&nbsp; suis venus m&#39;equiper d&#39;arme&nbsp; et op vous&nbsp; faite u n combat avec francky qui a&nbsp; des&nbsp; lance&nbsp; epee etc.... et&nbsp; si vous le&nbsp; gagnger il dit bon sang tu m&#39;as gagber bien jouer et&nbsp; il vous dit de choisir&nbsp; une des armes qu&#39;il va&nbsp; vous donner a votre niveau... et voilas maintenant vous avez un familier et une arme</p>\r\n\r\n<p>J&#39;ai beaucoup d&#39;autre id&eacute;&eacute; mais je me repose d&#39;abords ^^) a toute de suite ^^)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par King le 15/11/2015 à 11h22</span></em></p>', 1447582848, 0, 176, 223),
(551, '<p>Salut tout le monde :D</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="" src="http://i.skyrock.net/4609/89154609/pics/3231442589_1_4_es2PlYMI.gif" style="height:280px; width:500px" /></p>\r\n', 1447582973, 1, 83, 116),
(552, '<p>942</p>\r\n', 1447583395, 0, 78, 136),
(553, '<p>941</p>\r\n', 1447583505, 0, 78, 171),
(554, '', 1447583532, 0, 118, 171),
(555, '<p>Bonjour &agrave; toutes et &agrave; tous.</p>\r\n\r\n<p>Moi c&#39;est JohnDix. Je suis l&agrave;&nbsp;pour faire effondrer&nbsp;le pouvoir mis en place. Je ne peux point vous d&eacute;tailler ma vie puisque, comme mes confr&egrave;res, je reste dans l&#39;ombre jusqu&#39;au jour ou je frapperais le monde de mon empreinte.</p>\r\n\r\n<p>Nous nous retrouverons s&ucirc;rement au cours d&#39;une bataille, en attendant&nbsp;je retourne &agrave; Baltigo pour me la couler douce autour d&#39;un bon verre et entour&eacute; de mes compagnons d&#39;armes.</p>\r\n\r\n<p>Bonne journ&eacute;e.</p>\r\n', 1447583711, 0, 177, 231),
(556, '', 1447583758, 0, 118, 219),
(557, '', 1447583802, 0, 118, 171),
(558, '', 1447584203, 0, 118, 231),
(559, '<p>940 !</p>\r\n', 1447584319, 0, 78, 231),
(560, '<p>...parce qu&#39;elle a une grande touffe bleue...</p>\r\n', 1447584400, 0, 79, 231),
(561, '<p>Oui il y&#39;a un bug riyuma est animateur, c&#39;est un fausse manip n&#39;est ce pas ?</p>\r\n\r\n<p><img alt="" src="http://img3.wikia.nocookie.net/__cb20120826123355/vssaxtonhale/images/c/c2/Troll-face.png" style="height:377px; width:462px" /></p>\r\n', 1447584568, 1, 178, 116),
(562, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447584600, 1, 179, 13),
(563, '<p>C&#39;est une fausse manip&#39; d&#39;&ecirc;tre illettr&eacute; ?</p>\r\n', 1447584679, 1, 178, 97),
(564, '<p>Okaeri = enchant&eacute; en jap xD</p>\r\n', 1447584681, 0, 153, 193),
(565, '<blockquote>\r\n<p><strong><em>Citation de CarolineSwan</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&#39;est une fausse manip&#39; d&#39;&ecirc;tre illettr&eacute; ?</p>\r\n</blockquote>\r\n\r\n<p>Baduuuum Tsss *clapclapclap*</p>\r\n', 1447584738, 1, 178, 212),
(566, '<p>939</p>\r\n', 1447584754, 0, 78, 80),
(567, '', 1447584759, 0, 118, 80),
(568, '<p>Bah ouais xD askip y regle sa de suite xd</p>\r\n', 1447584769, 1, 178, 234),
(569, '<blockquote>\r\n<p><u><strong><em>Citation de Sa&euml;l</em></strong></u></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&#39;est &ccedil;a &quot;l&#39;arm&eacute;e&quot; :o ?</p>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt>Quelques petits trucs &agrave; r&eacute;gl&eacute; xD</tt></p>\r\n', 1447584978, 1, 161, 51),
(570, '<p>xD. Tu m&#39;a tu&eacute; (rofl) <img alt="yes" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" /></p>\r\n', 1447585101, 0, 177, 139),
(571, '<p>yop</p>\r\n', 1447585115, 0, 158, 68),
(572, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447585244, 0, 180, 13),
(573, '<p>Bonne chance ? XD</p>\r\n', 1447585346, 0, 82, 234),
(574, '<p>Bonne chance ? XD</p>\r\n', 1447585346, 1, 82, 234),
(575, '<p>yop</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447585353, 0, 158, 99),
(576, '', 1447585433, 0, 118, 234),
(577, '<p>Brf, pas bsn me pr&eacute;senter certains me connaisse mais azy j&#39;fait un ptit truc vite fait quand j&#39;&eacute;dite se soir xd</p>\r\n', 1447585559, 0, 181, 234),
(578, '', 1447585588, 0, 118, 234),
(579, '', 1447585609, 0, 118, 234),
(580, '<p>4 poste lel</p>\r\n', 1447585618, 0, 118, 234),
(581, '<p>5</p>\r\n', 1447585624, 0, 118, 234),
(582, '<p>6 xd</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447585656, 0, 118, 234),
(583, '<p>Bon c&#39;est moi net ? XD</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447585798, 0, 182, 234),
(584, '<p>bvn ;)</p>\r\n', 1447585854, 0, 57, 234),
(585, '<p>DeteD c&#39;est craqu&eacute; pour pas faire de faute d&#39;ortho xD</p>\r\n', 1447585901, 0, 152, 234),
(586, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447586082, 0, 183, 13),
(587, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447586331, 0, 184, 13),
(588, '<p>Ok</p>\r\n', 1447586420, 0, 74, 175),
(589, '<p>Oktamer</p>\r\n', 1447586501, 0, 74, 233),
(590, '<p>minimum 1 heure xD</p>\r\n', 1447586584, 0, 118, 171),
(591, '<p>C&#39;est pas &quot;je m&#39;en chargerais&quot; ?</p>\r\n', 1447586596, 1, 161, 233),
(592, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447586615, 0, 185, 13),
(593, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447586651, 0, 186, 13),
(594, '<p>On peut mettre un perso tir&eacute; d&#39;un jeu qui a &eacute;t&eacute; adapt&eacute; en anime et/ou manga ?</p>\r\n', 1447586655, 0, 61, 207),
(595, '<p>Respecter tous nos nakama</p>\r\n', 1447587386, 0, 135, 151),
(596, '<p>x)&nbsp;<strong>J&#39;prend les precaussion xD</strong></p>\r\n', 1447587611, 0, 157, 208),
(597, '<p>One-Piece-R&eacute;volution</p>\r\n\r\n<p>One piece new rpg</p>\r\n\r\n<p>Mugiwara rpg</p>\r\n\r\n<p>warano rpg&nbsp;</p>\r\n\r\n<p>je sais pa sinon jai tou donner ce que jai trouver<img alt="cheeky" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/tongue_smile.png" style="height:23px; width:23px" title="cheeky" /><img alt="yes" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" /></p>\r\n', 1447587662, 0, 104, 151),
(598, '<p>938</p>\r\n', 1447587768, 0, 78, 171),
(599, '<p><strong>Voila la salle equipage x&#39;)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>#Riyum&#39;Euh Dictateur!</strong></p>\r\n', 1447587813, 1, 187, 208),
(600, '<p>Sa va les gars</p>\r\n', 1447588506, 0, 158, 166),
(601, '<blockquote>\r\n<p><u><strong><em>Citation de Vector</em></strong></u></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>On peut mettre un perso tir&eacute; d&#39;un jeu qui a &eacute;t&eacute; adapt&eacute; en anime et/ou manga ?</p>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt>Ouep</tt></p>\r\n', 1447588513, 0, 61, 51),
(602, '<p><span style="color:#0000CD"><em>Yop ;) J&#39;ai cr&eacute;&eacute; la salle 1 ^^</em></span></p>\r\n', 1447588603, 0, 188, 238),
(603, '<p>faut qu&#39;on recrute des gros tarp&eacute; mtn</p>\r\n', 1447588633, 1, 189, 75),
(604, '<p>Je veux &ecirc;tre avec toi je t&#39;adore</p>\r\n', 1447588688, 0, 73, 245),
(605, '<p>Faut recruter des gros Tarp&eacute;s maintenant !!</p>\r\n', 1447588719, 0, 91, 75),
(606, '<p>Au pire on sait tous que Riyuma se d&eacute;fend tr&egrave;s bien seul&nbsp;<img alt="cool" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/shades_smile.png" style="height:23px; width:23px" title="cool" /></p>\r\n', 1447588865, 1, 161, 71),
(607, '<p>Re&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Je ne sais pas dutout faudrais demander ou alors va voir si tu a accers au demande&nbsp;</p>\r\n', 1447588947, 0, 149, 110),
(608, '<p><span style="color:#FFF0F5"><span style="background-color:#000000">Y a d&eacute;j&agrave; un fofo pour &ccedil;a, voles pas mes id&eacute;es :x</span></span></p>\r\n', 1447588972, 1, 187, 71),
(609, '<p>Ce topic servira de tchat 1 (#v2) en attendant. Bien sur, il existe encore notre groupe skype qui est toujours actif avec les anciens. ;)</p>\r\n', 1447589006, 0, 190, 97),
(610, '', 1447589043, 0, 74, 71),
(611, '<p>J&#39;avoue j&#39;ai fait de mon mieux mdr&nbsp;<img alt="cool" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/shades_smile.png" style="height:23px; width:23px" title="cool" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447589165, 0, 152, 110),
(612, '<p>Je m&#39;inscris</p>\r\n', 1447589465, 0, 93, 243),
(613, '<p>937</p>\r\n', 1447589950, 0, 78, 1),
(614, '<p>One Piece Dream</p>\r\n\r\n<p>One Piece Rpg Legend</p>\r\n\r\n<p>One Piece World</p>\r\n', 1447589970, 0, 104, 155),
(615, '<p><span style="color:#FFA500"><em>936</em></span></p>\r\n', 1447590042, 0, 78, 125),
(616, '<p>Bonjour tout le monde,</p>\r\n\r\n<p>Comme vous l&#39;avez lu sur la news ou dans mon commentaire sur le topic de troll, <strong>ce site n&#39;est pas une extension</strong> de onepiece-rpg.fr. Pour clarifier bri&egrave;vement la situation : le staff de la v2 sur onepiece-rpg.fr (OPrpg) s&#39;est divis&eacute; en deux Teams. La premi&egrave;re (<strong>OPrpg</strong>) a d&eacute;cid&eacute; de consituer une v2.5 qui servira de laboratoire pour les nouvelles fonctionnalit&eacute;s qui apparaitront dans la v3 toujours en cours de d&eacute;veloppement. La seconde (<strong>Minegame</strong>), part sur des id&eacute;es compl&egrave;tement ind&eacute;pendantes.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Pourquoi OPrpg s&#39;est retrouv&eacute; sur Minegame ?</strong></p>\r\n\r\n<p>Eh bien c&#39;est simple : il y a eu des soucis de serveur et par sympathie et n&eacute;cessit&eacute; pour &eacute;viter de vous retrouver dans le flou, la v2 a &eacute;t&eacute; h&eacute;berg&eacute;e sur Minegame en attendant un retour &agrave; la normale. D&eacute;sormais, le serveur d&#39;OPrpg est remis sur place, les informations r&eacute;cup&eacute;r&eacute;s sur la version Minegame devraient tr&egrave;s prochainement retourner aux mains de la Teams OPrpg.</p>\r\n\r\n<p>Concernant <strong>les travaux</strong>, OPrpg est bien avanc&eacute; cot&eacute; conceptuel et se base sur la v2 pour la partie communautaire, mais le code de la v3 n&#39;est pas avanc&eacute;. A l&#39;inverse, Minegame propose un nouvel aspect communautaire d&eacute;j&agrave; d&eacute;velopp&eacute; et une construction de jeu &eacute;volutive qui arrivera petit &agrave; petit.</p>\r\n\r\n<p>Les deux Teams peuvent se consid&eacute;rer comme <strong>concurrentielles</strong>. La v3 annonc&eacute;e sur onepiece-rpg sera sur onepiece-rpg et est dirig&eacute;e par la Team OPrpg. Quant &agrave; Minegame c&#39;est une toute autre voie qui se dessine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>A quoi va servir ce topic ?</strong></p>\r\n\r\n<p>Aujourd&#39;hui cette version est en b&eacute;ta. Nous allons partir sur <strong><u>un topic &agrave; d&eacute;bat</u></strong> sur la mani&egrave;re dont vous attendez le jeu. Concr&egrave;tement et pour &eacute;viter les discussions sans sens, voir hors sujet, je vous propose diff&eacute;rentes th&eacute;matiques &agrave; respecter : <strong>Le Design</strong>, <strong>Le Gameplay</strong>, <strong>La Communaut&eacute;</strong>. Partez du principe que tout est possible et que tout est r&eacute;alisable dans la mesure du raisonnable (non, il n&#39;y aura pas de fus&eacute;e OnePiece envoy&eacute;e dans l&#39;espace avec une retransmission en 3D holographique en direct live, pas plus que de jeu vid&eacute;o immersif &agrave; la manette). Tachez d&#39;&ecirc;tre clair, concis, pr&eacute;cis et de classer vos id&eacute;es selon les th&eacute;matiques et les cat&eacute;gories. En ce qui me concerne, je vais essayer de r&eacute;sumer chacune de vos id&eacute;es sur ce premier message.</p>\r\n\r\n<p>A vos claviers !</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Les id&eacute;es Design : </strong></p>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Qui</strong></td>\r\n			<td><strong>Quoi</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><a class="Membre" href="http://minegame.fr/users/view/243">Hik@ru, </a><a class="Modératrice" href="http://minegame.fr/users/view/60">Kalivia, </a><a class="Membre" href="http://minegame.fr/users/view/175">Sneazz</a></td>\r\n			<td>Am&eacute;liorer, uniformiser, modernieser le design actuel</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a class="Animateur" href="http://minegame.fr/users/view/51">Riyuma, </a><a class="Membre" href="http://minegame.fr/users/view/175">Sneazz</a></td>\r\n			<td>Personnalisaton du design</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a class="Membre" href="http://minegame.fr/users/view/115">Makaveli, </a><a class="Modératrice" href="http://minegame.fr/users/view/60">Kalivia, </a><a class="Membre" href="http://minegame.fr/users/view/175">Sneazz</a></td>\r\n			<td>Design adapt&eacute; pour mobile</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a class="Membre" href="http://minegame.fr/users/view/73">Benevolar</a></td>\r\n			<td>Fixer le header</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Les id&eacute;es Gameplay</strong></p>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Qui</strong></td>\r\n			<td><strong>Quoi</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><a class="Animateur" href="http://minegame.fr/users/view/51">Riyuma</a></td>\r\n			<td>Sc&eacute;nario diff&eacute;rent par faction mais des recoupements</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a class="Animateur" href="http://minegame.fr/users/view/51">Riyuma</a></td>\r\n			<td>Pr&eacute;sence de d&eacute;fis ou de hauts-faits</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a class="Membre" href="http://minegame.fr/users/view/115">Makaveli, </a><a class="Modératrice" href="http://minegame.fr/users/view/60">Kalivia</a></td>\r\n			<td>Comp&eacute;tition entre faction et &eacute;quipage (via DDM?)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a class="Modératrice" href="http://minegame.fr/users/view/60">Kalivia</a></td>\r\n			<td>Pex solo selon le manga, d&eacute;couverte au fur et &agrave; mesure</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a class="Modératrice" href="http://minegame.fr/users/view/60">Kalivia</a></td>\r\n			<td>Permettre aux personnes ne m&ecirc;me niveau/ile de s&#39;affronter</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a class="Modératrice" href="http://minegame.fr/users/view/60">Kalivia</a></td>\r\n			<td>Faire des mini-iles bonus</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a class="Membre" href="http://minegame.fr/users/view/175">Sneazz</a></td>\r\n			<td>Faire &eacute;voluer ses familiers comme des Tamagochi (ou pex)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a class="Membre" href="http://minegame.fr/users/view/175">Sneazz</a></td>\r\n			<td>Garder un int&eacute;r&ecirc;t pour chaque &icirc;le une fois pass&eacute;e</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a class="Membre" href="http://minegame.fr/users/view/175">Sneazz</a></td>\r\n			<td>Permettre au joueur de faire de choisir &quot;son&quot; sc&eacute;nario (faire des choix)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a class="Membre" href="http://minegame.fr/users/view/73">Benevolar</a></td>\r\n			<td>Diff&eacute;rencier des possesseurs ou non de fruit du d&eacute;mon (raret&eacute; et d&eacute;s-avantages)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a class="Membre" href="http://minegame.fr/users/view/73">Benevolar</a></td>\r\n			<td>Combat d&#39;&eacute;quipage sur l&#39;eau avec possibilit&eacute; d&#39;envoi dans l&#39;eau</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a class="Membre" href="http://minegame.fr/users/view/73">Benevolar</a></td>\r\n			<td>Journal payant pour s&#39;informer des activit&eacute;s des autres &eacute;quipages</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a class="Membre" href="http://minegame.fr/users/view/73">Benevolar</a></td>\r\n			<td>Navigation permet de d&eacute;couvrir, de commercer et d&#39;avoir des int&eacute;r&ecirc;ts dans les &icirc;les</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Les id&eacute;es Communaut&eacute;</strong></p>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Qui</strong></td>\r\n			<td><strong>Quoi</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par Pev le 15/11/2015 à 22h14</span></em></p>', 1447590066, 0, 191, 147),
(617, '', 1447590313, 1, 74, 233),
(618, '<p>:D</p>\r\n', 1447590431, 0, 118, 171),
(619, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447590621, 0, 192, 13),
(620, '<p>h&eacute;h&eacute; bonne id&eacute;e enfaite on avez tous la flemme ;)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="" src="http://9c.img.v4.skyrock.net/6124/82516124/pics/3109882065_1_19_ugy6jsMZ.gif" /></p>\r\n', 1447590802, 0, 188, 116),
(621, '<p>En plus on est le plus grand &eacute;quipage de la faction marine :D</p>\r\n', 1447590869, 0, 188, 116),
(622, '<p><em>C&#39;est illisible...</em></p>\r\n', 1447591311, 0, 176, 94),
(623, '<p>Le fond du design est un peu triste &agrave; mon go&ucirc;t.Rectifier le fond du design.</p>\r\n', 1447591370, 0, 191, 243),
(624, '<p><span style="font-family:georgia,serif"><span style="color:#000000">Pour ma part :</span></span></p>\r\n\r\n<p><span style="font-family:georgia,serif"><span style="color:#000000"><strong>Design :</strong>&nbsp;Je pr&eacute;f&egrave;re le &quot;sombre&quot; et le moderne, couleur gris m&eacute;tal, noir, fonc&eacute;.. Et mettre en syst&egrave;me les &quot;pages&quot; car sur des animations comme le DP on voit bien que plus c&#39;est long moins il y a de design.</span></span></p>\r\n\r\n<p><span style="font-family:georgia,serif"><span style="color:#000000"><strong>Gameplay :</strong>&nbsp;Ici, j&#39;aurai vu un sc&eacute;nario un peu comme sur le jeu Dbz dream, 3 choix de sc&eacute;nario : celui du R&eacute;volutionnaire , du pirate et du membre de la Marine. Chaque joueurs de chaque factions auraient donc un chemin bien diff&eacute;rent, des objectifs qui diverge comme devenir haut grad&eacute; pour la Marine, seigneur des Pirates pour les Pirates de m&ecirc;me pour les r&eacute;volutionnaires. Une fois le sc&eacute;nario avanc&eacute; de 50% on aurait pu avoir acc&egrave;s &agrave; une ar&egrave;ne faction contre faction (comme &agrave; MarineFord) et ici avoir des petits challenges comme &quot;Tuer 15 pirates : Chapeau de </span><span style="color:#FF0000">Ace</span><span style="color:#B22222"> </span><span style="color:#000000">d&eacute;bloquer&quot;. L&#39;id&eacute;e du sc&eacute;nario pose probl&egrave;me car on ne conna&icirc;t pas r&eacute;ellement le parcours d&#39;un r&eacute;volutionnaire mais pour les deux autres camps &ccedil;a ne pose aucun soucis.&nbsp;</span></span></p>\r\n\r\n<p><span style="font-family:georgia,serif"><span style="color:#000000"><strong>Communaut&eacute; :</strong>&nbsp;Ici rien de sp&eacute;cial &agrave; modifier, peut-&ecirc;tre un tchat priv&eacute; pour&nbsp;l&#39;&eacute;quipage mais sinon c&#39;est bien comme &ccedil;a. Plus tard des &eacute;v&eacute;nements R&eacute;volutionnaire v Marine v Pirate, mais &ccedil;a c&#39;est pr&eacute;vu!</span></span></p>\r\n<p></p><em><span style="font-size:8px">Édité par Riyuma le 15/11/2015 à 13h46</span></em></p>', 1447591439, 0, 191, 51),
(625, '<p>Inscri moi stp</p>\r\n', 1447591599, 0, 93, 153),
(626, '<p>euh pourquoi le topic s&#39;est dupliquer? xD</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>edit: ok apr&egrave;s mon message &ccedil;a n&#39;&eacute;tait plus le cas, mais juste avant le topic &eacute;tait en double</p>\r\n<p></p><em><span style="font-size:8px">Édité par Zatan le 15/11/2015 à 13h48</span></em></p>', 1447591634, 0, 82, 80),
(627, '<p>&quot;Partez du principe que tout est possible&quot; Donc la vous n&#39;avez strictement aucune id&eacute;e, aucune base, de ce que sera le jeux ? Parce que donner des id&eacute;es si il n&#39;y a aucune base &ccedil;a va rapidement &ecirc;tre le gros bordel</p>\r\n<p></p><em><span style="font-size:8px">Édité par Zatan le 15/11/2015 à 13h51</span></em></p>', 1447591857, 0, 191, 80),
(628, '<p><span style="font-family:georgia,serif">C&#39;est ta conception le bug&nbsp;<img alt="blush" src="http://minegame.fr/assets/js/ckeditorVIP/plugins/smiley/images/embarrassed_smile.png" style="height:23px; width:23px" title="blush" /></span></p>\r\n', 1447591859, 1, 178, 51),
(629, '<p>935</p>\r\n', 1447592048, 0, 78, 171),
(630, '<p>On peut cr&eacute;er un topic sans titre, et ensuite pour y acc&eacute;der on est obliger de cliquer sur &quot;dernier message&quot;</p>\r\n', 1447592124, 0, 193, 80),
(631, '<p>934</p>\r\n', 1447592162, 0, 78, 80),
(632, '<p>934</p>\r\n', 1447592202, 0, 78, 171),
(633, '<p>Illisible en&nbsp; terme de mise en page, et fais un petit effort sur l&#39;orthographe :)</p>\r\n', 1447592240, 0, 176, 80),
(634, '<p><span style="font-family:georgia,serif">Si, il y a d&eacute;j&agrave; un &quot;squelette&quot; pour le jeu, mais avec quelques id&eacute;es bien expliqu&eacute; le staff pourrait pioch&eacute; dans vos id&eacute;es pour vous donnez un jeu &quot;adapt&eacute;&quot; &agrave; vos envies et remarques. Apr&egrave;s, si vous ne voulez pas &eacute;mettre d&#39;id&eacute;es ont suivra le plan pr&eacute;vu!</span></p>\r\n', 1447592296, 0, 191, 51),
(635, '<p>Du coup faudrait partager ce squelette, parce que je vois pas l&#39;interet sinon. Par exemple pour proposer des id&eacute;es li&eacute; au gameplay des combats, si on sait pas un minimum la fa&ccedil;on d&#39;ou vous voulez le faire, les id&eacute;es seront trop dispers&eacute; et inutile, apr&egrave;s c&#39;est mon point du vue.</p>\r\n', 1447592497, 0, 191, 80),
(636, '<blockquote>\r\n<p><u><strong><em>Citation de Zatan</em></strong></u></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Partez du principe que tout est possible&quot; Donc la vous n&#39;avez strictement aucune id&eacute;e, aucune base, de ce que sera le jeux ?</p>\r\n</blockquote>\r\n\r\n<p>Petit rappel : il ne me semble pas faire parti du staff ? Je pose des questions, le staff peut tr&egrave;s bien y r&eacute;pondre aussi !</p>\r\n', 1447592625, 0, 191, 147),
(637, '<p><span style="font-family:georgia,serif">J&#39;ai pu le faire, pourquoi pas vous?</span></p>\r\n', 1447592626, 0, 191, 51),
(638, '<p>Design: Bon on se r&eacute;p&egrave;te tous donc je vais pas franchement d&eacute;velopper mais selon moi le design fait bien trop &quot;enfantin&quot; et les persos que l&#39;on peut cr&eacute;er son particuli&egrave;rement moche. Le bon point est que la compatibilit&eacute; avec le portable est excellent. Apr&egrave;s c&#39;est loin d&#39;&ecirc;tre primordial mais pour la V1 de minegame &ccedil;a serait sympa( je consid&egrave;re pas&nbsp;&ccedil;a comme une V1, peut-&ecirc;tre une V0.5 voir V0.1 ).</p>\r\n\r\n<p>Gameplay: &Eacute;tant donner qu&#39;on est ici sur un site qui se veut nouveau et pas une continuation de oprpg, il va vraiment s&#39;&eacute;loigner de l&#39;image que l&#39;on a au d&eacute;part. Je pense donc que se focaliser sur les factions peut-&ecirc;tre une bonne option, surtout pour faire une ddm r&eacute;inventer. Je verrais bien deux ddm, une entre les &eacute;quipages d&#39;une certaine faction et l&#39;autre ou chaque faction agit comme un &eacute;quipage mais bref si le staff n&#39;a pas encore une id&eacute;e concr&egrave;te la dessus je d&eacute;velloperai peut-&ecirc;tre sur le fofo aide. Tout&nbsp;&ccedil;a pour dire que d&#39;un point de vue du gameplay, Minegame doit r&eacute;inventer quelque chose, tout particuli&egrave;rement si l&#39;id&eacute;e d&#39;une V3 de oprpg est toujours &agrave; jour.</p>\r\n\r\n<p>Communaut&eacute;: Bon il y a pas encore grand chose &agrave; dire, je trouve&nbsp;&ccedil;a sympa de pouvoir aller directement au dernier message post&eacute;, le bug de pouvoir cr&eacute;er un topic sans nom est &agrave; rectifier ( il y a un topic comme&nbsp;&ccedil;a dans la partie Id&eacute;es).Comment mentionner un tchat d&#39;&eacute;quipage est primordial pour pouvoir mener des discussions plus fluides et moins lourdes que sur un fofo, le fait de s&#39;adresser directement &agrave; quelqu&#39;un dans le tchat pourrait aussi &ecirc;tre ajouter et je sais que&nbsp;&ccedil;a s&#39;inspirerait sans doute trop de oprpg mais une phrase perso aussi serait sympa, je trouve qu&#39;elle donnait un peu un premier avis sur la personne qui permettait plus facilement de mener une discussion.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447592708, 0, 191, 115),
(639, '<p>933</p>\r\n', 1447592742, 0, 78, 1),
(640, '<p>.</p>\r\n', 1447592789, 0, 118, 1),
(641, '<blockquote>\r\n<p><strong><em>Citation de Pev</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>\r\n<p><strong><em>Citation de Zatan</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Partez du principe que tout est possible&quot; Donc la vous n&#39;avez strictement aucune id&eacute;e, aucune base, de ce que sera le jeux ?</p>\r\n</blockquote>\r\n\r\n<p>Petit rappel : il ne me semble pas faire parti du staff ? Je pose des questions, le staff peut tr&egrave;s bien y r&eacute;pondre aussi !</p>\r\n</blockquote>\r\n\r\n<p>Pour le coup j&#39;ai cru que c&#39;&eacute;tait Riyuma qui avait ouvert le topic, me suis fait avoir &agrave; cause du &quot;dernier message&quot; ou il y avait le pseudo de Riyu ... Trop habitu&eacute; &agrave; voir le nom des cr&eacute;ateur de topic x)</p>\r\n', 1447592852, 0, 191, 80),
(642, '<h1><span style="color:#0000CD"><strong><u>Bienvenue sur se Topic nous voulons tester le syst&egrave;me RP sur le Forum</u></strong></span></h1>\r\n\r\n<p><span style="color:#0000CD"><strong>Moi et mon pote Demones nous&nbsp;voulons faire un projet RP c&#39;est ta dire nous volons faire un syst&egrave;me de m&eacute;tier comme:</strong></span></p>\r\n\r\n<h2 style="font-style:italic;"><span style="color:#00FF00"><strong><em>M&eacute;tier:</em></strong></span></h2>\r\n\r\n<p><font color="#00ff00"><strong><em>Vendeur d&#39;armes</em></strong></font></p>\r\n\r\n<p><font color="#00ff00"><strong><em>Cuisinier</em></strong></font></p>\r\n\r\n<p><font color="#00ff00"><strong><em>Citoyen</em></strong></font></p>\r\n\r\n<p><font color="#00ff00"><strong>P&ecirc;cheur</strong></font></p>\r\n\r\n<p><font color="#00ff00"><strong>Gardien de prison</strong></font><font color="#00ff00"><strong>&nbsp;</strong></font></p>\r\n\r\n<p><strong><span style="color:#00FF00">Maire</span></strong></p>\r\n\r\n<p><font color="#00ff00"><strong>r&eacute;volutionnair</strong></font></p>\r\n\r\n<p><font color="#00ff00"><strong>et nous rajouterons d&#39;autre m&eacute;tier plus tard.</strong></font></p>\r\n\r\n<h1 style="font-style: italic;"><em><strong><span style="color:#FF0000">R&egrave;gles:</span></strong></em></h1>\r\n\r\n<h2 style="font-style:italic;"><strong><span style="color:#FF0000">Il faut jouer RP</span></strong></h2>\r\n\r\n<h2 style="font-style:italic;"><font color="#ff0000"><strong>Interdit d&#39;insulter</strong></font></h2>\r\n\r\n<h2 style="font-style:italic;"><font color="#ff0000"><strong>interdit de s&#39;incruster dans un m&eacute;tier ou il y a tros de personne.</strong></font></h2>\r\n\r\n<h1 style="font-style: italic;"><em><strong><span style="color:#FFD700">&Eacute;mote pour jouer:</span></strong></em></h1>\r\n\r\n<p><strong><span style="color:#FFD700">/drop money</span></strong></p>\r\n\r\n<p><strong><span style="color:#FFD700">/drop arme</span></strong></p>\r\n\r\n<p><strong><span style="color:#FFD700">/drop </span></strong><strong><span style="color:#FFD700">nouriture</span></strong></p>\r\n\r\n<p><strong><span style="color:#FFD700">/quitte partie</span></strong></p>\r\n\r\n<p><strong><span style="color:#FFD700">/rejoin partie</span></strong></p>\r\n\r\n<h1 style="font-style: italic;"><strong><em><span style="color:#008080">Indication&nbsp;de d&eacute;but :vous etes&nbsp;sur une &icirc;le o&ugrave; il ya un village ,un lac,une prison,une mairi,une banque,des maison,des tavernes,une QG de la marin&eacute;,des locos &agrave; acheter et des grottes qui serve de cachet aux r&eacute;volutionnair et au d&eacute;but vous commencer avec 5 000 berrys.</span></em></strong></h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="color:#4B0082"><strong><em><u>Bon Rp</u></em></strong></span><img alt="wink" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" /></p>\r\n\r\n<p><span style="color:#4B0082"><strong><em><u>De FyFuZiK et Demones.</u></em></strong></span></p>\r\n<p></p><em><span style="font-size:8px">Édité par FyFuZiK le 15/11/2015 à 14h45</span></em></p>', 1447592957, 0, 194, 153),
(643, '<p>Ah bon dsl Gaitan :(</p>\r\n', 1447593047, 1, 187, 208),
(644, '<p>Hey !&nbsp;<strong>Le DICTATEUR EST LA?</strong></p>\r\n', 1447593104, 0, 111, 208),
(645, '<p>salut, il y avait un topic sur ce jeu qui se joue sur mobiles et comme il &eacute;tait assez actif je tente d&#39;en refaire un en esp&eacute;rant que tout le monde y reviendra</p>\r\n\r\n<p>donc voil&agrave; pour parler des events ou des raid boss ou tout simplement pour obtenir de l&#39;aide c&#39;est ici que &ccedil;a se passe&nbsp;</p>\r\n', 1447593143, 0, 195, 253),
(646, '<p>On est fier de toi !</p>\r\n', 1447593209, 0, 152, 234),
(647, '<p>cool, maintenant comment se joue le jeu sur cette nouvelle version?</p>\r\n\r\n<p>et pour les topics de l&#39;ancienne version, ils ont disparu?</p>\r\n', 1447593261, 0, 5, 253),
(648, '<p>932</p>\r\n', 1447593309, 0, 78, 80),
(649, '', 1447593339, 0, 118, 80),
(650, '<p>Faudrait&nbsp;peut-&ecirc;tre des explications, le deroulement...&nbsp;</p>\r\n', 1447593374, 0, 194, 67),
(651, '<p>On ma eux :(</p>\r\n', 1447593386, 0, 118, 234),
(652, '<p>:p</p>\r\n', 1447593910, 0, 118, 1),
(653, '<p><span style="font-family:georgia,serif">Bonjour / Bonsoir &ccedil;a va d&eacute;pendre de l&#39;heure ou vous lirez ce topic ,</span></p>\r\n\r\n<p><span style="font-family:georgia,serif">Ce topic est ici pour parler des s&eacute;ries en g&eacute;n&eacute;ral, plus ou moins connus avec ou sans spoil alors attention!</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:georgia,serif"><span style="color:#FF0000">R&egrave;gles de bon fonctionnement du topic :</span></span></p>\r\n\r\n<ul>\r\n	<li><span style="font-family:georgia,serif"><span style="color:#FF0000">Ne pas spam votre s&eacute;rie</span></span></li>\r\n	<li><span style="font-family:georgia,serif"><span style="color:#FF0000">Vous pouvez partagez vos avis en restant dans le respect et la bonne humeur</span></span></li>\r\n	<li><span style="font-family:georgia,serif"><span style="color:#FF0000">Le &quot;spoil&quot; est autoris&eacute; dans la limite du raisonnable, la couleur d&#39;un spoil est&nbsp;</span><span style="color:#FFA500">orange&nbsp;</span><span style="color:#FF0000">cette couleur ne ce voit pas r&eacute;ellement bien (comme il n&#39;y a pas encore de &quot;balise&quot; spoil)</span></span></li>\r\n	<li><span style="font-family:georgia,serif"><span style="color:#FF0000">Vous pouvez pr&eacute;senter des nouvelles s&eacute;ries mais attention aux images qui, elle, peuvent contenir des spoils</span></span></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:georgia,serif">Bon partage&nbsp;<img alt="angel" src="http://minegame.fr/assets/js/ckeditorVIP/plugins/smiley/images/angel_smile.png" style="height:23px; width:23px" title="angel" /></span></p>\r\n', 1447593962, 0, 196, 51),
(654, '<p>je comprend pas les id&eacute;es que tu veux qu&#39;on propose c&#39;est pour &quot;la version d&#39;omar&quot;? ou ici ? oO je capte plus lol</p>\r\n', 1447593997, 0, 191, 178),
(655, '<p>Bah pour toi u_u</p>\r\n\r\n<p>si tu comprends pas c&#39;est ton pb :x</p>\r\n', 1447594004, 0, 176, 223),
(656, '<p><span style="font-family:georgia,serif">Pour &quot;ici&quot; la version d&#39;Omar j&#39;ai d&eacute;j&agrave; cr&eacute;e un topic.</span></p>\r\n', 1447594062, 0, 191, 51),
(657, '<p>Je r&egrave;gle &ccedil;a ;)</p>\r\n', 1447594105, 0, 193, 1),
(658, '<p>Je sens le rp de haut niveaux arriver. Mdr</p>\r\n\r\n<p>Vas-y demones l&acirc;che tout qu&#39;on rigole un peu ! :x</p>\r\n', 1447594298, 0, 194, 105),
(659, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447594392, 0, 197, 13),
(660, '<p>Voila juste un petit truc tout con, mettre le nom de celui qui a cr&eacute;&eacute; le topic &agrave; c&ocirc;t&eacute; du titre</p>\r\n', 1447594641, 0, 198, 80),
(661, '<p>salut o/ alors pour faire simple moi les series que je suit en ce moment</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Marvel&#39;s Agent Of Shield</p>\r\n\r\n<p>Supernatural</p>\r\n\r\n<p>The Flash</p>\r\n\r\n<p>Arrow</p>\r\n\r\n<p>Doctor Who</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The 100 decouvert recemment j&#39;attend la saison 3 ;)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>voila voila /o/ je suposse que vous les connaissez deja donc pas besoin de parlementer o\\</p>\r\n', 1447594649, 0, 196, 178),
(662, '<p>Derien</p>\r\n', 1447594765, 0, 160, 208),
(663, '<p><span style="font-family:georgia,serif"><strong>Marvel&#39;s Agent Of Shield​&nbsp;</strong>j&#39;ai eu l&#39;&eacute;rreur de regarder en vf donc j&#39;ai voulu chercher les saisons sur le net mais la saison 2 VF n&#39;est pas finit alors que la 3 VOSTFR &agrave; d&eacute;j&agrave; d&eacute;but&eacute;. x)</span></p>\r\n', 1447594858, 0, 196, 51),
(664, '<p>Si on supprime le topic &quot; premier topic &quot; ( si on en a pas cr&eacute;&eacute; un autre ) le forum d&#39;&eacute;quipage disparait et n&#39;est plus accessible &agrave; partir du &quot;Forum&quot;, et le seul moyen d&#39;y retourner c&#39;est de passer par la page d&#39;&eacute;quipage.</p>\r\n', 1447594921, 1, 199, 80),
(665, '<ul>\r\n	<li><strong>&ccedil;</strong>a a surement d&egrave;ja et&eacute; propos&eacute; mais pourquoi pas donner la libert&eacute; aux joueurs ( capitaines ) de personnaliser le nom des rangs de son &eacute;quipage c&#39;est tout con mais je pense que &ccedil;a va beaucoup am&eacute;iorer l&#39;immersion dans le jeu .</li>\r\n</ul>\r\n', 1447594936, 0, 200, 254),
(666, '', 1447595028, 1, 201, 80),
(667, '<p>Ouaip il &eacute;tait en double tout &agrave; l&#39;heure.</p>\r\n', 1447595143, 0, 82, 66);
INSERT INTO `forums_topics_messages` (`id`, `message`, `date_time`, `is_block`, `id_forums_topics`, `id_users`) VALUES
(668, '<p>Alors j&#39;ai pas de soucis avec la taille de &quot;base&quot; mais j&#39;aime bien pass&eacute; un coup de ctrl + molette pour que ce soit plus petit, et &agrave; cause de &ccedil;a j&#39;ai des lettres qui sont coup&eacute; dans les news, au niveau des titres, cf le screen</p>\r\n\r\n<p><img alt="" src="http://i.imgur.com/JYIndRg.png" style="height:117px; width:184px" /> ( clique droit + afficher image ,pour mieux voir :x )</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>edit : &ccedil;a me le fait pas &agrave; tout les niveaux de d&eacute;zoom, seulement &agrave; un seul en faites</p>\r\n<p></p><em><span style="font-size:8px">Édité par Zatan le 15/11/2015 à 14h49</span></em></p>', 1447595157, 0, 202, 80),
(669, '', 1447595191, 1, 203, 254),
(670, '', 1447595230, 1, 204, 254),
(671, '<p>regarde surtout pas en VF gros sa te nique la serie a fond xddddd et ou&egrave;p la saison 3 a debuter ya deja 6 ep</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>sinon je conseille the 100 pour ceux qui connaissent pas un peu mou au debut mais pas la ensuite la saison 2 pas trop mal</p>\r\n', 1447595235, 0, 196, 178),
(672, '', 1447595256, 0, 118, 208),
(673, '<p>Salut c est FyFuZiK moi aussi jai fai ok lol c moi et demones qu&#39;avons fait on c dechener dons j espere que sa vous plaira<img alt="wink" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" /></p>\r\n', 1447595279, 0, 194, 153),
(674, '<p><span style="font-family:georgia,serif">Bonjour / Bonsoir &ccedil;a va d&eacute;pendre de l&#39;heure ou vous lirez ce topic ,</span></p>\r\n\r\n<p><span style="font-family:georgia,serif">Ce topic est ici pour parler des animes/mangas en g&eacute;n&eacute;ral, plus ou moins connus.</span></p>\r\n\r\n<p><span style="font-family:georgia,serif">Tout les types de manga sont autoris&eacute; sauf le hentai. (Ecchi oui sans image ou plut&ocirc;t sans nudit&eacute; dans vos images)</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><span style="font-family:georgia,serif"><span style="color:#FF0000">Le spoil est ici <u>interdit</u>&nbsp;faites donc attention</span></span></li>\r\n	<li><span style="font-family:georgia,serif"><span style="color:#FF0000">Vous pouvez partagez vos avis en restant dans le respect et la bonne humeur</span></span></li>\r\n	<li><span style="color:#FF0000"><span style="font-family:georgia,serif">Vous pouvez pr&eacute;senter des animes/mangas mais attention aux images qui, elle, peuvent contenir des spoils</span></span></li>\r\n	<li><span style="color:#FF0000"><span style="font-family:georgia,serif">Ne pas flood, spam ou insulter</span></span></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:georgia,serif">Bon partage&nbsp;<img alt="smiley" src="http://minegame.fr/assets/js/ckeditorVIP/plugins/smiley/images/regular_smile.png" style="height:23px; width:23px" title="smiley" /></span></p>\r\n', 1447595336, 0, 205, 51),
(675, '<p><strong>sur les poil de la....</strong></p>\r\n', 1447595434, 0, 79, 208),
(676, '<p>Que je regarde en ce moment : Heroes reborn, Gotham, Mr Robot, Community, et Ray Donovan.</p>\r\n', 1447595572, 0, 196, 80),
(677, '<p><strong><span style="font-family:georgia,serif">The 100&nbsp;</span></strong><span style="font-family:georgia,serif">est pass&eacute; sur la 14 le soir, &ccedil;a avait l&#39;air vraiment pas mal.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:georgia,serif">Pour ma part : The Walking Dead , Game Of Thrones, The Flash, Breaking Bad, The Strain, Banshee , Blacklist , Daredevil, Arrow, Vikings...</span>FIN brerf, j&#39;en ai &agrave; la masse x)</p>\r\n', 1447595642, 0, 196, 51),
(678, '<p>Woaw, toutes ces couleurs flashy, ces diff&eacute;rentes tailles d&#39;&eacute;criture, ces fautes...merci pour ce moment <img alt="" src="http://i.imgur.com/6CbxaPc.jpg" /></p>\r\n', 1447595679, 0, 194, 80),
(679, '<blockquote>\r\n<ul>\r\n	<li>Salut je suis hero quand je pense que j&#39;ai refl&eacute;chi tout une semaine pour avoir un bon pseudo collector a l&#39;ouverture et je finis avec un nom aussi nul je me dis des fois que je dois &ecirc;tre vraiment tr&egrave;s con enfin bref j&#39;ai jou&eacute; a la v2 il y a 2,3 ans a chaque fois j&#39;arr&ecirc;te apr&egrave;s avoir atteint un certain seuil je quitte le jeu je reviens 6 mois apr&egrave;s je refais un autre compte et je fais le m&ecirc;me truc enfin bref un mec qui se fait chier bise . <s>*no homo*</s></li>\r\n</ul>\r\n</blockquote>\r\n', 1447595697, 0, 206, 254),
(680, '<p>on va avoir le gouvernement mondial&nbsp;</p>\r\n', 1447595727, 0, 157, 188),
(681, '<p>The 100 c&#39;est pas mal ouai</p>\r\n\r\n<p>Game of Throne qui sera pas de retour en avril prochain :&#39;(</p>\r\n<p></p><em><span style="font-size:8px">Édité par Zatan le 15/11/2015 à 14h57</span></em></p>', 1447595837, 0, 196, 80),
(682, '', 1447595884, 0, 118, 171),
(683, '<p>One Piece Reborn</p>\r\n\r\n<p>One Piece Renaissance</p>\r\n\r\n<p>One Piece New Era</p>\r\n\r\n<p>One Piece Third Wave</p>\r\n\r\n<p>One Piece Battle of the Lords / La battailles des seigneurs</p>\r\n\r\n<p>One Piece le nouveau commencement / The begining</p>\r\n\r\n<p>One Piece Rage Fight</p>\r\n', 1447595900, 0, 104, 256),
(684, '<p>931</p>\r\n', 1447595929, 0, 78, 171),
(685, '<ul>\r\n	<li>Hero association aussi connu sous le nom de Association des h&eacute;ros est un &eacute;quipage de r&eacute;volutionnaire . Je me suis inspir&eacute; *Plagier* One punch man (un manga /anime ) pour le nom de l&#39;equipage et je recrute dans l&#39;equipage mais pour rejoindre il y a 2,3 conditions a remplir :</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Lvl 0 min en m&ecirc;me temps on accepte pas les noobs</li>\r\n	<li>Faut &ecirc;tre respectueux et aimable envers ses co&eacute;quipiers <s>* ( ͡&deg; ͜ʖ ͡&deg;) If you know what i mean*</s></li>\r\n</ol>\r\n', 1447595966, 0, 207, 254),
(686, '<p>onepiecelejeu.fr</p>\r\n', 1447596019, 0, 104, 188),
(687, '<p>Encore un autre soucis de lettre coup&eacute;, cette fois quand j&#39;&eacute;cris dans le tchat, encore une fois selon le niveau de d&eacute;zoom que j&#39;utilise voila ce que je peux avoir :</p>\r\n\r\n<p><a href="http://i.imgur.com/RBv3Ich.png">http://i.imgur.com/RBv3Ich.png</a></p>\r\n<p></p><em><span style="font-size:8px">Édité par Zatan le 15/11/2015 à 15h02</span></em></p>', 1447596121, 0, 208, 80),
(688, '<p>reine d&#39;angletere</p>\r\n', 1447596131, 0, 79, 171),
(689, '', 1447596165, 1, 209, 254),
(690, '<ul>\r\n	<li>\r\n	<h1><strong>J</strong>e souhaite la bienvenue a tous ceux qui viennent de nous rejoindre dans la hero association :D .</h1>\r\n	</li>\r\n</ul>\r\n', 1447596244, 0, 210, 254),
(691, '<p>http://minegame.fr/assets/img/avatarsJoueurs/254.png</p>\r\n', 1447596409, 0, 211, 254),
(692, '<p>qui aime manger</p>\r\n', 1447596432, 0, 79, 208),
(693, '<p><strong>Veux tu en faire partie ? xD</strong></p>\r\n', 1447596483, 0, 157, 208),
(694, '<blockquote>\r\n<p><strong><em>Citation de CarolineSwan</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&#39;est une fausse manip&#39; d&#39;&ecirc;tre illettr&eacute; ?</p>\r\n\r\n<p>BUUUUUUUUUUUUUUUUUUURN</p>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n', 1447596486, 1, 178, 254),
(695, '<p>Merci je regarderais &ccedil;a.</p>\r\n', 1447596489, 0, 202, 1),
(696, '<p>Yep, bug connu nous sommes entrain d&#39;essayer de le r&eacute;soudre. Merci.</p>\r\n', 1447596558, 0, 211, 1),
(697, '<p>JusteOnePiece</p>\r\n', 1447596571, 0, 104, 208),
(698, '<p>Ok c&#39;est not&eacute;, merci.</p>\r\n', 1447596578, 0, 208, 1),
(699, '<p><span style="background-color:#F0FFFF">rrrrrrrrrrrrrrrrrrrr</span></p>\r\n', 1447596591, 1, 212, 80),
(700, '<p><span style="color:#008000">Probl&egrave;me r&eacute;gl&eacute;.</span></p>\r\n', 1447596597, 0, 193, 1),
(701, '<h2><img alt="" src="http://www.comixtrip.fr/wp-content/uploads/2015/03/Tokyo-Ghoul-personnages-1200x675.jpg" style="height:675px; width:1200px" /></h2>\r\n\r\n<h3>Tokyo Ghoul.<br />\r\nManga du turfu.<br />\r\n27 &eacute;pisodes.<br />\r\nA ne pas rat&eacute;</h3>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par Kaneki le 15/11/2015 à 15h12</span></em></p>', 1447596618, 1, 205, 171),
(702, '<p>Bienvenue ! :)</p>\r\n', 1447596628, 0, 206, 208),
(703, '<p>C&#39;est pas un bug, c&#39;est fait expret dans la conception du forum pour &eacute;viter d&#39;afficher les forum vide.&nbsp;<img alt="wink" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" /></p>\r\n', 1447596634, 1, 199, 1),
(704, '<p>yuppi</p>\r\n<p></p><em><span style="font-size:8px">Édité par NewVint le 15/11/2015 à 15h12</span></em></p>', 1447596673, 1, 6, 123),
(705, '<p><strong>Malheuresment OUI ! :&#39;( #TRISTE</strong></p>\r\n', 1447596691, 0, 5, 208),
(706, '<p>Pour moi c&#39;est :</p>\r\n\r\n<p><em>The walking dead - Fear The walking dead - Arrow - The flash - Daredevil - Vikings - Game Of Thrones </em></p>\r\n\r\n<p><span style="color:#FF0000"><strong>Coups de coeur : </strong></span></p>\r\n\r\n<p><strong>Fear The walking dead : </strong>J&#39;ai trouv&eacute; l&#39;atmosph&egrave;re bien plus paisante que TWD , les personnages sont assez attachants et plus de rythme.</p>\r\n\r\n<p><strong>Daredevil</strong> <strong>:</strong> S&eacute;rie sur un H&eacute;ros bien loin de ce que l&#39;on peut voir jusqu&#39;&agrave; maintenant (Arrow &amp; Flash)</p>\r\n\r\n<p><strong>Game Of Thrones : </strong>S&eacute;rie unique en son genre.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="color:#FF0000"><strong>Autres : </strong></span></p>\r\n\r\n<p>J&#39;ai l&acirc;ch&eacute;<strong> The 100 &amp; Sleepy Hollow</strong> &agrave; la premi&egrave;re saison , les sc&eacute;nario sont bien mais j&#39;ai pas accrocher plus que &ccedil;a.</p>\r\n\r\n<p>Je me t&acirc;te &agrave; regarder une s&eacute;rie qui est apparue y&#39;a pas si longtemps :<strong> The bastard Executioner. </strong>Si quelqu&#39;un la regarde &ccedil;a serait cool de partager son avis. Merci !<strong> </strong></p>\r\n', 1447596711, 0, 196, 256),
(707, '<p><strong>Quelle es l&#39;int&eacute;rer? Ces pas m&eacute;chant mais sa ne serre a rien.</strong></p>\r\n', 1447596746, 0, 198, 208),
(708, '<p>Ah ok je me disais aussi qu&#39;il y avait des chances que ce soit fait expr&egrave;s ^^</p>\r\n', 1447596798, 1, 199, 80),
(709, '<p>Tokyo Goul, manga g&eacute;nial &agrave; ne pas rater :D</p>\r\n<p></p><em><span style="font-size:8px">Édité par Kaneki le 15/11/2015 à 15h14</span></em></p>', 1447596800, 0, 205, 171),
(710, '<p>xD</p>\r\n', 1447596801, 1, 178, 208),
(715, '', 1447596834, 0, 118, 208),
(720, '<p>Inscrit moi</p>\r\n', 1447596862, 0, 93, 208),
(725, '<p>slt sa va</p>\r\n', 1447596912, 0, 175, 135),
(727, '<h1><strong>Qui veut &ecirc;tre Bras Droits, Cuisiniers, Matelot, ou m&ecirc;me En attente x) ?</strong></h1>\r\n\r\n<p><strong>Pas tout le monde en BD, Merci :3</strong></p>\r\n', 1447596931, 0, 214, 67),
(748, '', 1447597012, 0, 118, 171),
(755, '<p>precision:</p>\r\n\r\n<p>/metier=???</p>\r\n\r\n<p>nombre de place par metier</p>\r\n\r\n<p>0/5 marins</p>\r\n\r\n<p>0/3revolutionnaires</p>\r\n\r\n<p>0/2 voleurs</p>\r\n\r\n<p>0/1 pecheur</p>\r\n\r\n<p>0/4 garde prison</p>\r\n\r\n<p>0/3 prisonnier<br />\r\n0/2 vendeur d&#39; arme</p>\r\n\r\n<p>0/2 vendeur &nbsp;de nourriture<br />\r\n&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par Demones le 15/11/2015 à 15h19</span></em></p>', 1447597033, 0, 194, 78),
(759, '<p>C&#39;est un peu la base des forums de mettre le nom de l&#39;auteur, j&#39;y suis habitu&eacute;, et &ccedil;a permet de trier entre les topics ^^</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Et d&#39;ailleurs mettre le nombre de page actuel par topic peut &ecirc;tre sympa aussi</p>\r\n<p></p><em><span style="font-size:8px">Édité par Zatan le 15/11/2015 à 15h19</span></em></p>', 1447597040, 0, 198, 80),
(762, '', 1447597052, 0, 118, 51),
(775, '', 1447597104, 0, 118, 80),
(802, '<p>En ce moment je regarde :&nbsp;</p>\r\n\r\n<p><strong>The Walking Dead</strong> : C&#39;est pas mal mais pas la meilleur s&eacute;rie du monde je pense, mais bon une fois qu&#39;on a commenc&eacute;... x)<br />\r\n<strong>Mister Robot</strong> : The s&eacute;rie ! C&#39;est vraiment &eacute;pic, r&eacute;aliste, touchant et d&eacute;stabilisant !&nbsp;<br />\r\nSynopsis :</p>\r\n\r\n<blockquote>\r\n<p><em>Elliot Alderson est un jeune informaticien vivant &agrave; New York, qui travaille en tant qu&#39;ing&eacute;nieur en&nbsp;<a href="https://fr.wikipedia.org/wiki/S%C3%A9curit%C3%A9_des_syst%C3%A8mes_d%27information" title="Sécurité des systèmes d''information">s&eacute;curit&eacute; informatique</a>&nbsp;pour&nbsp;Allsafe Security. Luttant constamment avec un trouble d&rsquo;<a href="https://fr.wikipedia.org/wiki/Anxi%C3%A9t%C3%A9_sociale" title="Anxiété sociale">anxi&eacute;t&eacute; sociale</a>&nbsp;et de&nbsp;<a href="https://fr.wikipedia.org/wiki/D%C3%A9pression_(psychiatrie)" title="Dépression (psychiatrie)">d&eacute;pression</a>, le processus de pens&eacute;e d&rsquo;Elliot semble fortement influenc&eacute; par la&nbsp;<a href="https://fr.wikipedia.org/wiki/Parano%C3%AFa" title="Paranoïa">parano&iuml;a</a>&nbsp;et l&#39;illusion<sup><a href="https://fr.wikipedia.org/wiki/Mr._Robot_(s%C3%A9rie_t%C3%A9l%C3%A9vis%C3%A9e)#cite_note-wsj-3">3</a></sup>. Il hacke les&nbsp;<a href="https://fr.wikipedia.org/wiki/Compte_informatique" title="Compte informatique">comptes</a>&nbsp;des gens, ce qui le conduit souvent &agrave; agir comme un&nbsp;<a href="https://fr.wikipedia.org/wiki/Cyber" title="Cyber">cyber</a>-<a href="https://fr.wikipedia.org/wiki/Justicier" title="Justicier">justicier</a>. Elliot rencontre un myst&eacute;rieux&nbsp;<a href="https://fr.wikipedia.org/wiki/Anarchiste" title="Anarchiste">anarchiste</a>&nbsp;connu sous le nom de &laquo;&nbsp;Mr. Robot&nbsp;&raquo; qui souhaite le recruter dans son groupe de&nbsp;<a href="https://fr.wikipedia.org/wiki/Hacker_(s%C3%A9curit%C3%A9_informatique)" title="Hacker (sécurité informatique)">hackers</a>connu sous le nom de &laquo;&nbsp;Fsociety&nbsp;&raquo;. Leur objectif consiste &agrave; r&eacute;tablir l&#39;&eacute;quilibre de la soci&eacute;t&eacute; en d&eacute;truisant les infrastructures des plus grosses banques et entreprises du monde, notamment le&nbsp;<a href="https://fr.wikipedia.org/wiki/Conglom%C3%A9rat_(%C3%A9conomie)" title="Conglomérat (économie)">conglom&eacute;rat</a>&nbsp;E Corp. (nomm&eacute; &laquo;&nbsp;Evil Corp.&nbsp;&raquo; par Elliot), qui repr&eacute;sente &eacute;galement 80&nbsp;% du&nbsp;<a href="https://fr.wikipedia.org/wiki/Chiffre_d%E2%80%99affaires" title="Chiffre d’affaires">chiffre d&rsquo;affaires</a>&nbsp;d&rsquo;Allsafe Security.</em></p>\r\n\r\n<p><em>source : wikip&eacute;dia (J&#39;avais la flemme d&#39;&eacute;crire mon r&eacute;sum&eacute;&nbsp;<img alt="surprise" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/omg_smile.png" style="height:23px; width:23px" title="surprise" />)</em></p>\r\n</blockquote>\r\n<p></p><em><span style="font-size:8px">Édité par Dumbeldor le 15/11/2015 à 15h21</span></em></p>', 1447597224, 0, 196, 1),
(805, '<p>930</p>\r\n', 1447597239, 0, 78, 80),
(842, '<p>Mettre les pseudos cliquable dans la messagerie, c&#39;est pratique quand on veut check le profil d&#39;une personne rapidement si on parle en mp on a juste &agrave; cliquer sur son nom plut&ocirc;t que d&#39;aller chercher dans l&#39;annuaire.</p>\r\n', 1447597344, 0, 215, 80),
(857, '<p><strong>Encore 5 participants peuvent s&#39;inscrire !</strong></p>\r\n', 1447597411, 0, 93, 67),
(860, '<p>&ccedil;a d&eacute;passe mes esp&eacute;rances xDDDDDD</p>\r\n', 1447597427, 0, 194, 105),
(873, '<p>J&#39;en suis au dernier &eacute;pisode de Mr Robot</p>\r\n\r\n<p>SPOAL SPOAL SPOAL SPOAL</p>\r\n\r\n<p><span style="color:#FFA500">l&#39;avant dernier episode gache toute la s&eacute;rie pour moi, j&#39;ai tellement aimer tout ce qu&#39;il y avait avant, et la ce truc sur sa folie &ccedil;a casse juste tout &ccedil;a ma carr&eacute;ment coup&eacute; l&#39;envie de regarder le dernier episode ._.</span></p>\r\n\r\n<p>FIN DU SPOAL SPOAL SPOAL</p>\r\n<p></p><em><span style="font-size:8px">Édité par Zatan le 15/11/2015 à 15h25</span></em></p>', 1447597492, 0, 196, 80),
(877, '<p><strong>Faut peut-&ecirc;tre le&nbsp;d&eacute;roulement du RP&nbsp;et plus d&#39;explication, sinon, personne ne viendra...</strong></p>\r\n', 1447597512, 0, 194, 67),
(911, '<p>Je veut etre capitaine :D je rigole met moi ce que tu veut ;)</p>\r\n', 1447597732, 0, 214, 116),
(912, '<p>Bon je suis un grand amateur de s&eacute;rie, mais je compte&nbsp;juste pr&eacute;sent&eacute; vite fait une petite s&eacute;rie pr&eacute;nomm&eacute;e&nbsp;<strong>Ash Vs Evil Dead</strong>.</p>\r\n\r\n<p>C&#39;est une s&eacute;rie inspir&eacute;e de la franchise de film d&#39;horreur culte Evil Dead. Ces films ont &eacute;t&eacute; les pr&eacute;cepteurs du genre com&eacute;die d&#39;horreur, dont fait&nbsp;par exemple partie Bienvenue a Zombieland. La s&eacute;rie est la continuation des films mais l&#39;histoire est compr&eacute;hensible sans avoir jamais vu aucun des films. Chaque &eacute;pisode dure 30 minutes et nous montre comment Ash, le protagoniste principal affronte des hordes de personnes poss&eacute;d&eacute;s en les tuant d&#39;une fa&ccedil;on gore et franchement hilarante. C&#39;est une s&eacute;rie &agrave; voir pour tout ceux qui aiment un humour gore&nbsp;et quelque peu stupide,&nbsp;apr&egrave;s le format est que de 30 minutes c&#39;est un peu dommage, mais c&#39;est franchement des barres.</p>\r\n', 1447597778, 0, 196, 115),
(913, '<p><strong>J&#39;vais refaire un p&#39;tit Loup-garou avec quelque am&eacute;lioration, pour que vous voyer comment faut faire.&nbsp;<img alt="cheeky" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/tongue_smile.png" style="height:23px; width:23px" title="cheeky" /></strong></p>\r\n', 1447597788, 0, 194, 67),
(917, '<p>Ok personne me dis bienvenue</p>\r\n', 1447597869, 0, 166, 218),
(918, '<blockquote>\r\n<p><u><strong><em>Citation de Zatan</em></strong></u></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>J&#39;en suis au dernier &eacute;pisode de Mr Robot</p>\r\n\r\n<p>SPOAL SPOAL SPOAL SPOAL</p>\r\n\r\n<p><span style="color:#FFA500">l&#39;avant dernier episode gache toute la s&eacute;rie pour moi, j&#39;ai tellement aimer tout ce qu&#39;il y avait avant, et la ce truc sur sa folie &ccedil;a casse juste tout &ccedil;a ma carr&eacute;ment coup&eacute; l&#39;envie de regarder le dernier episode ._.</span></p>\r\n\r\n<p>FIN DU SPOAL SPOAL SPOAL</p>\r\n\r\n<p>&nbsp;</p>\r\n<em><span style="font-size:8px">&Eacute;dit&eacute; par Zatan le 15/11/2015 &agrave; 15h25</span></em>\r\n\r\n<p>&nbsp;</p>\r\n</blockquote>\r\n\r\n<p>Ah pour moi c&#39;est compl&eacute;tement l&#39;inverse&nbsp;<img alt="cheeky" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/tongue_smile.png" style="height:23px; width:23px" title="cheeky" />&nbsp;Ca rend le personne plus humain.&nbsp;</p>\r\n', 1447597874, 0, 196, 1),
(929, '', 1447597943, 0, 74, 233),
(939, '<p><span style="color:#FFA500">Ouai je sais pas, faut je vois le dernier episode voir si ils arrivent &agrave; expliquer tout ce qu&#39;il c&#39;est pass&eacute;, parce que c&#39;est le probl&egrave;me quand &ccedil;a joue cette carte...c&#39;est que souvent toute la coh&eacute;rence de tout ce qui c&#39;est pass&eacute; avant s&#39;envole</span></p>\r\n', 1447598046, 0, 196, 80),
(941, '<p>929</p>\r\n', 1447598122, 0, 78, 171),
(942, '', 1447598146, 0, 118, 171),
(943, '<p>928</p>\r\n', 1447598149, 0, 78, 80),
(968, '', 1447598250, 0, 118, 80),
(999, '', 1447598831, 0, 74, 71),
(1000, '', 1447598856, 0, 118, 171),
(1001, '<p>927</p>\r\n', 1447598872, 0, 78, 171),
(1025, '', 1447599204, 0, 74, 51),
(1029, '<p>Je m&#39;incruste :p</p>\r\n\r\n<p>Je regarde et j&#39;adore Psych, Monk, Brooklyn Nine Nine, Falling Skies, et faut que je regarde Mentalist, Broadchurch, enfin voila j aime trop ces series !</p>\r\n', 1447599264, 0, 196, 218),
(1030, '<p><strong>Salut !</strong></p>\r\n\r\n<p><strong>Vous connaissez tous le jeu Loup-Garou ? Non ? Alors quelques explications s&#39;imposent :</strong></p>\r\n\r\n<hr />\r\n<p><strong>Le but est simple, il y a deux camps :</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Les villageois, qui ont pour but de tuer tout les loup-garous.</strong></li>\r\n	<li><strong>Les Loup-garous,&nbsp;qui ont pour but de tuer tout les villageois.</strong></li>\r\n	<li><strong>+ Les amoureux, j&#39;explique leurs r&ocirc;les plus bas.</strong></li>\r\n</ul>\r\n\r\n<hr />\r\n<p><strong>​Vous comprenez toujours pas ? Alors, je vais expliquer les r&ocirc;les :</strong></p>\r\n\r\n<p><strong>Les Simples villageois : Ils font partis des Villageois, ils ne sont dot&eacute;s d&#39;aucun &quot;pouvoirs&quot;.</strong></p>\r\n\r\n<p><strong>La Sorci&egrave;re : Elle fait parti des villageois, elle dispose de 2 potions, 1 potion de vie qui lui permet de sauver la victime des LG&#39;s, et 1 potion de mort qui lui permet de tuer une personne. Elle n&#39;a&nbsp;qu&#39;un seul exemplaire de chaque potion durant toute la partie. Elle peut utiliser les 2 poptions en 1 seule nuit.</strong></p>\r\n\r\n<p><strong>La voyante : Elle fait parti des villageois.&nbsp;Chaque nuit, elle peut sonder (observer,espionner...) une personne pour savoir son r&ocirc;le.</strong></p>\r\n\r\n<p><strong>Cupidon : Il fait partie des villageois.&nbsp;Au tout d&eacute;but du jeu, il choissira deux personnes pour que ces deux personnes tombent amoureuses. Si l&#39;un des amoureux meurt, l&#39;autre meurt automatiquement.</strong></p>\r\n\r\n<p><strong>Les Amoureux : Il existe trois sortes de couples ;</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Villageois/Villageois : Leurs but ne changent pas : &Eacute;liminer les LG&#39;s</strong></li>\r\n	<li><strong>Loup-garou/Loup-garou : Leurs but ne changent pas : Elliminer les villageois.</strong></li>\r\n	<li><strong>Villageois/Lg&#39;s : Ils doivent gagner ensembles, ils doivent &eacute;liminer tout le monde.</strong></li>\r\n</ul>\r\n\r\n<p><strong>Les amoureux ne peuvent voter l&#39;un contre l&#39;autre.</strong></p>\r\n\r\n<p><strong><span style="color:#FF0000">Le Chasseur : Il fait parti des villageois. D&egrave;s qu&#39;il meurt, par n&#39;importe quel moyen, il pourra tirez sur quelqu&#39;un qui tombera avec lui.</span></strong></p>\r\n\r\n<p><strong><span style="color:#FF0000">Le Voleur : C&#39;est le premier &agrave; jouer, il peut choisir entre les deux cartes non-distribu&eacute;, si il ne choisi pas, il sera un simple villageois, mais si il reste deux Lg&#39;s, il est obliger de choisir.</span></strong></p>\r\n\r\n<p><strong><span style="color:#FF0000">Le Salvateur : Il fait parti des villageois. Chaque nuit, il peut prot&eacute;ger une personne (Il peut se prot&eacute;ger lui m&ecirc;me), mais il ne peut prot&eacute;ger la m&ecirc;me personne deux nuit de suite. Il ne peut pas prot&eacute;ger contre la potion de la sorci&egrave;re.</span></strong></p>\r\n\r\n<p><strong><span style="color:#FF0000">L&#39;idiot du village : Il fait parti des villageois. Il n&#39;as aucun pouvoir particulier, si ce n&#39;est que quand il est vot&eacute; par les villageois, il est graci&eacute;, mais ne peut plus&nbsp;voter, ni &ecirc;tre maire.</span></strong></p>\r\n\r\n<p><strong><span style="color:#FF0000">Le Bouc-&eacute;missaire : Il fait parti des villageois.&nbsp;Quand il y a &eacute;galit&eacute;, il meurent, mais choisi qui votent/ne votent pas pour le lendemain.</span></strong></p>\r\n\r\n<p><strong><span style="color:#FF0000">L&#39;ancien : Il fait parti des villageois. Si il est attaque par les LG&#39;s, il survit (Juste la premiere&nbsp;fois), mais si il est tue par les villageois (Soso, chasseur, votes...), tout les villageois perdent leurs pouvoirs.</span></strong></p>\r\n\r\n<p><strong><span style="color:#FF0000">Le Corbeau : Il fait parti des villageois. Chaque nuit, il peut lancer une mal&eacute;diction sur un joueur (+2 votes au votes du jour).</span></strong></p>\r\n\r\n<p><strong><span style="color:#FF0000">Le chaman : Il fait parti des villageois. Chaque nuit, il peut &eacute;couter les morts, pour &ccedil;a, les morts m&#39;enverront un MP (Un seul) que j&#39;enverrai au chaman.</span></strong></p>\r\n\r\n<p><strong>Le Joueur de Fl&ucirc;te : Il ne fait parti d&#39;aucun camp. Son but est de gagner seul, chaque nuit il peut charmer deux joueurs. Si il parvient &agrave; charmes tout les joueurs vivants, il gagne.</strong></p>\r\n\r\n<p><strong>Les Loups-garous : Il font parti des LG&#39;s. Chaque nuit, ils choisiront une victime (Par Skype/MP).</strong></p>\r\n\r\n<p><strong>Le Loup Garou Blanc : Il fait parti des Lg&#39;s. Mais son but est de gagner seul en mangent ses camarades une nuit sur deux.</strong></p>\r\n\r\n<hr />\r\n<p><strong>Voila, vous avez compris ! Vous vous demandez comment &ccedil;a va se passer ?</strong></p>\r\n\r\n<p><strong>Eh bien, quand c&#39;est votre tour de jouer, vous me MP. Et je posterai ce qui c&#39;est passe sur le forum. J&#39;aimerai bien un autre MDJ, qui pourra poster a ma place quand je ne serai pas l&agrave;.</strong></p>\r\n\r\n<p><strong>Inscrits :</strong></p>\r\n\r\n<ul>\r\n	<li>Sumeerfrio</li>\r\n	<li>FyFuZik</li>\r\n	<li>DarkSidus</li>\r\n	<li>Lucifer.</li>\r\n	<li>Loup</li>\r\n	<li>Demones</li>\r\n	<li>Gaitan</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&Eacute;dit&eacute; par Pingouin le 16/11/2015 &agrave; 17h00</em></p>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par Pingouin le 16/11/2015 à 17h51</span></em></p>', 1447599453, 0, 216, 67),
(1031, '<p>Toujours pr&eacute;sent moi !</p>\r\n', 1447599509, 0, 195, 231),
(1033, '<p>...du chocolat avec son dentier...</p>\r\n', 1447599554, 0, 79, 231),
(1034, '<p><tt><span style="color:#0000CD"><em>Je joue mon p&#39;tit </em></span><strong><em>Pingouin</em></strong><span style="color:#0000CD"><em>. Mais pour les </em></span><strong><em>Loups-Garous</em></strong><span style="color:#0000CD"><em>. Ils se communiquerons comment ?</em></span></tt></p>\r\n', 1447599569, 0, 216, 121),
(1035, '<p>929</p>\r\n', 1447599593, 0, 78, 231),
(1036, '<hr />\r\n<p><img alt="" src="http://img15.hostingpics.net/pics/151580YosukeHanamura.jpg" style="height:250px; width:125px" /><img alt="" src="http://img15.hostingpics.net/pics/784138Yuto.jpg" style="height:250px; width:125px" /></p>\r\n\r\n<p><strong><span style="color:#FFFFFF"><span class="marker"><span style="background-color:#800080">Rebellion Wind</span></span></span></strong> : <em><span style="color:#FF8C00">Yosuke Hanamura</span></em> &amp; <span style="color:#800080"><em>Yuto</em></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><span style="color:#4B0082"><img alt="" src="http://img15.hostingpics.net/pics/581324Vector.jpg" /><img alt="" src="http://img15.hostingpics.net/pics/935767Hiei.jpg" /></span></em></p>\r\n\r\n<p><strong><span style="color:#FFFFFF"><span style="background-color:#800080">Team Demise</span></span></strong> : <em><span style="color:#4B0082">Vector</span></em> &amp; <em><span style="color:#000080">Hiei</span></em></p>\r\n<p></p><em><span style="font-size:8px">Édité par Vector le 15/11/2015 à 16h00</span></em></p>', 1447599600, 0, 61, 207),
(1051, '<p>Bonjour jeunes incestes.</p>\r\n\r\n<p>Je fais ce topic afin de mieux se connaitre entre autre. Dites moi ici que voulez vous faire plus tard :)</p>\r\n\r\n<p>Pour moi deja je veux etre le roi des pirates !</p>\r\n\r\n<p>Honnetement je suis en 1ere ES, j&#39;ai 16 ans. Et je ne sais toujours pas exactement ce que je veux faire :/&nbsp;</p>\r\n\r\n<p>Il y a des idees qui me viennent a l&#39;esprit comme expert comptable...mais moi j&#39;aimerais fairevun metiet o&ugrave; il y a de l&#39;action ! Assis sur un bureau toute la journee je ne sais pas trop quoi... a pars si ca paie tres bien ^^&quot;</p>\r\n\r\n<p>J&#39;avais envisag&eacute; policier (pas le petit qui met des pvs hein) dans la BAC ou autres comme le RAID etc...</p>\r\n\r\n<p>Merci d &#39;avoir lu ! Qu&#39;en pensez vous ? Et vous que voulez vous&nbsp;faire plus tard ?</p>\r\n', 1447599739, 0, 217, 218),
(1053, '<p>..!</p>\r\n', 1447599749, 0, 118, 231),
(1058, '<p>Je jou svp</p>\r\n', 1447599857, 0, 216, 153),
(1060, '', 1447599906, 0, 118, 80),
(1063, '<p>925</p>\r\n', 1447599932, 0, 78, 80),
(1064, '<p>Moi, je voudrais devenir pirate de l&#39;espace.</p>\r\n\r\n<p>Ou pas..</p>\r\n\r\n<p>D&eacute;j&agrave;, sache que les profs qui te ratatinent le choux avec leur &quot;tu veux faire&nbsp;quoi plus tard ? Tu as toujours pas choisi ? Il serait tant?&quot;. Ils sont dans le flou total. Personnellement, j&#39;avais une id&eacute;e au d&eacute;part mais depuis que je suis arriv&eacute; en FAC il y a d&eacute;j&agrave; deux ans, je ne sais plus vraiment. Mais &ccedil;a sera s&ucirc;rement un m&eacute;tier dans l&#39;aide &agrave; la personne (travailler dans un bureau toute la journ&eacute;e m&ecirc;m pour un gros salaire ne m&#39;int&eacute;resse pas).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&Eacute;dit&eacute; par JohnDix le 15/11/2015 &agrave; 16h05</em></p>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par JohnDix le 15/11/2015 à 16h06</span></em></p>', 1447599933, 0, 217, 231),
(1073, '<p>C&#39;est un plaisir de faire rire camarade&nbsp;<img alt="wink" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" />.</p>\r\n\r\n<p>Surtout en ces temps obscurs..</p>\r\n', 1447600142, 0, 177, 231),
(1074, '<p>J&#39;avais pas fini xD</p>\r\n\r\n<p>C&#39;est &eacute;crit ^^</p>\r\n', 1447600144, 0, 216, 67),
(1076, '<p>Svp vous pouver accepter la candidature de FyFuZiK c moi mai comme ca jenleve darkray de l equipage et on integre Fyfuzik</p>\r\n', 1447600208, 0, 111, 148),
(1079, '<p>abcdefghijklmnopqrstuvwxyz&nbsp;</p>\r\n', 1447600264, 0, 111, 158),
(1084, '<p>je joue avec le demones<br />\r\n<br />\r\n&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par Darksidus le 15/11/2015 à 16h16</span></em></p>', 1447600348, 0, 216, 152),
(1085, '<p>Merci pour ta reponse rapide JohnDix :)</p>\r\n\r\n<p>Pirate de l&#39;espace pas mal lol !</p>\r\n\r\n<p>Oui t&#39;as tout a faiq raison parce que du coup je suis tout le temps en stress et ca me gene quand quelqu&#39;un me demande ce que je veux faire...je me sens perdu. Parce que si tu veux&nbsp;j&#39;ai envie de faire le bon choix car j&#39;ai pas envie de le regretter plus tard quoi...</p>\r\n', 1447600350, 0, 217, 218),
(1089, '<p><tt><span style="color:#0000CD"><em>Okey ^^ Le MDJ ne joue pas du coup ?</em></span></tt></p>\r\n', 1447600406, 0, 216, 121),
(1091, '', 1447600449, 0, 74, 233),
(1094, '<p>Le gouvernement mondial on va le : &quot;brisage de nez, revers dans les parties sensibles et chass&eacute; dans la t&ecirc;te&quot;.</p>\r\n\r\n<p>Akainu, je l&#39;utilise pour faire cuire mes saussices le Samedi soir..</p>\r\n', 1447600501, 0, 157, 231),
(1095, '<p><img alt="" src="http://img15.hostingpics.net/pics/715959reglementKira.png" style="height:350px; width:800px" /></p>\r\n\r\n<p><span style="color:#FF0000">- Ne pas insulter ou cr&eacute;er de tension entre Nakama.</span></p>\r\n\r\n<p><span style="color:#FF0000">- Aider un nakama si possible.</span></p>\r\n\r\n<p><span style="color:#FF0000">- Ne pas kill de Nakama dans les ar&egrave;nes.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&Eacute;dit&eacute; par Kira Kazuto le 15/11/2015 &agrave; 16h17</em></p>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par Kira Kazuto le 15/11/2015 à 16h17</span></em></p>', 1447600502, 0, 218, 72),
(1098, '<p>Je veux bien, mais je conna&icirc;trais tout les r&ocirc;les x)</p>\r\n', 1447600534, 0, 216, 67),
(1099, '<p><span style="color:#FFF0F5">D&eacute;sol&eacute; Joris j&#39;t&#39;aime bien m&ecirc;me si t&#39;as pas fais de DP!</span></p>\r\n', 1447600568, 0, 74, 71),
(1100, '<p>salut<br />\r\n&nbsp;</p>\r\n', 1447600679, 0, 188, 227),
(1101, '<p>Je comprend. Moi perso, au lyc&eacute;e, d&egrave;s qu&#39;on me demandait mon m&eacute;tier, je r&eacute;pondais pompier (m&eacute;tier qui m&#39;int&eacute;resse) m&ecirc;me si c&#39;&eacute;tait pas 100% s&ucirc;r. Je r&eacute;pondais &ccedil;a juste pour que les profs et autres balisent pas &agrave; l&#39;id&eacute;e que tu sache pas quoi faire.</p>\r\n\r\n<p>Tu as encore largement le temps. Moi, c&#39;est seulement depuis l&#39;ann&eacute;e derni&egrave;re que je m&#39;oriente vers ce qui me ressemble le plus (enfin j&#39;esp&egrave;re^^) !</p>\r\n', 1447600683, 0, 217, 231),
(1102, '<p>moi je suis passer par BEP metallerie, puis BEP carrosserie puis CAP peinture que j&#39;ai obtenu dans la premiere ann&eacute; de BAC PRO carroserie peinture, j&#39;ai obtenu mon bac pro, puis pas de taf , entretemp je voulais partir dans la Marine xD, je suis partit en employ&eacute; rayon en saison pour mon boss ma proposer de faire un cap preparateur en produit carn&eacute;e (boucher quoi) :D et depuis sa me deplait pas et j&#39;ai un CDI depuis 3 ans deja :) donc te tracasse pas trop xD je veux dire par la donne tout ce que t&#39;as si un metier te plait plus qu&#39;un autres sinon si sa marche pas rabas toi sur ce qui peut etre possible xD la boucherie je l&#39;ai pas &quot;choisi&quot; et pour autant sa me deplait pas et j&#39;ai un taf payer correctement ;) et j&#39;ai pour ambition je suis en train de voir sa pour ouvrir ma boucherie plus tard ;)</p>\r\n<p></p><em><span style="font-size:8px">Édité par Abyss le 15/11/2015 à 16h21</span></em></p>', 1447600730, 0, 217, 178),
(1103, '<p>met moi bd stp<br />\r\n&nbsp;</p>\r\n', 1447600732, 0, 214, 227),
(1104, '<p><span style="color:#0000CD"><tt><em>Ouaiw. Donc le MDJ jour pas (rofl)<img alt="cheeky" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/tongue_smile.png" style="height:23px; width:23px" title="cheeky" /></em></tt></span></p>\r\n', 1447600747, 0, 216, 121),
(1105, '<p>&ccedil;a lag, je vois les nombres qui d&eacute;filent 10 minutes apr&egrave;s le miens, du coup, j&#39;ai quelques trains de retard&nbsp;<img alt="surprise" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/omg_smile.png" style="height:23px; width:23px" title="surprise" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Edit : 924</p>\r\n<p></p><em><span style="font-size:8px">Édité par JohnDix le 15/11/2015 à 16h20</span></em></p>', 1447600793, 0, 78, 231),
(1106, '<p>923</p>\r\n', 1447600841, 0, 78, 171),
(1107, '', 1447600849, 0, 118, 231),
(1108, '', 1447600855, 0, 118, 171),
(1109, '<p>xDDD</p>\r\n', 1447600903, 0, 157, 208),
(1110, '', 1447600914, 0, 118, 80),
(1111, '<p>d&eacute;licieux d&#39;ailleurs</p>\r\n', 1447600919, 0, 79, 171),
(1112, '<p>922</p>\r\n', 1447600931, 0, 78, 80),
(1113, '<p>921</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447601248, 0, 78, 68),
(1114, '', 1447601281, 0, 118, 68),
(1115, '<p>JohnDix oui je pensais aussi a Pompier quelquefoiq y&#39;a pas mal d&#39;action xD mais bon il y a le temps je pense come tu le dis.</p>\r\n\r\n<p>Abyss au debut je croyais que tu trollais en disant tout ca xD</p>\r\n\r\n<p>Mais oui la tu a faid quelque chose qui te plait plus&nbsp;ou moins ^^ moi je pourrais jamais faire boucherie ca me degoute assez quand je vois ca. Mais jai pas de problemes a manget la viande...</p>\r\n', 1447601286, 0, 217, 218),
(1119, '<div style="border: 1px solid rgb(204, 204, 204); padding: 5px 10px; text-align: center; background: rgb(238, 238, 238);"><span style="color:#B22222"><span style="font-size:18px"><strong>Design :</strong></span></span></div>\r\n\r\n<p style="text-align: justify;"><span style="font-size:14px">Design enfantin en effet, bien pour une b&ecirc;ta mais qui doit &eacute;voluer. Je verrais bien quelque chose d&#39;asser moderne, peu importe la couleur, mais assez soft&nbsp;et pas trop surcharg&eacute;. </span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size:14px">J&#39;aime le menu d&eacute;roulant, mais le header serait &agrave; retravailler. D&eacute;j&agrave; tout les boutons ne sont pas de la m&ecirc;me grandeur, d&eacute;tail qui a son importance dans la vision d&#39;ensemble.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size:14px">Le c&ocirc;t&eacute; responsible est tr&egrave;s bien, la navigation sur t&eacute;l&eacute;phone est agr&eacute;able, rien &agrave; redire la dessus mis &agrave; part l&#39;affichage de la page d&#39;inscription (sauf si &ccedil;a a &eacute;t&eacute; corrig&eacute; depuis mais je doute).</span></p>\r\n\r\n<div style="border: 1px solid rgb(204, 204, 204); padding: 5px 10px; text-align: center; background: rgb(238, 238, 238);"><span style="font-size:18px"><strong><span style="color:#B22222">Communautaire :</span></strong></span></div>\r\n\r\n<p style="text-align: justify;"><span style="font-size:14px">Il faudrait r&eacute;gler certains d&eacute;tails comme obliger &agrave; mettre un titre &agrave; la cr&eacute;ation d&#39;un topic au d&#39;autres d&eacute;tails qu&#39;on verra au fur et &agrave; mesure.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size:14px">Toutes les pages ne sont pas encore d&eacute;velopp&eacute;es, comme le livre d&#39;or par exemple,&nbsp;m&ecirc;me si &ccedil;a viendra plus tard.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size:14px">L&#39;aspect communautaire est globalement r&eacute;ussi, ce qui est un bon point de d&eacute;part pour la suite.</span></p>\r\n\r\n<div style="border: 1px solid rgb(204, 204, 204); padding: 5px 10px; text-align: center; background: rgb(238, 238, 238);"><span style="color:#B22222"><strong><span style="font-size:18px">Gameplay :</span></strong></span></div>\r\n\r\n<p style="text-align: justify;"><span style="font-size:14px">&nbsp;Pour le gameplay, il faudrait en effet se baser sur les factions pour certaines parties comme la domination des mers et tout le reste du c&ocirc;t&eacute; Jcj.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size:14px">Pour la partie solo, o&ugrave; on pourrait monter de niveau, je vois plus &ccedil;a comme une qu&ecirc;te qui suivrais le manga. Prenons par exemple Dressrosa (c&#39;est un exemple r&eacute;cent donc je m&#39;en souviens bien). Je verrais bien une carte du monde avec toutes les mers (grand line et le nouveau monde d&eacute;blocables &agrave; un certain niveau). Lorqu&#39;on ariverais &agrave; Dressrosa, on verrait l&#39;image de la ville, avec des liens quand on clique sur une partie de l&#39;image. Pour ceux qui auraient une mauvaise connexion et pour qui l&#39;image ne s&#39;afficherait pas, on verrait des liens &eacute;crits. Au d&eacute;part, seule la ville avec une petite boutique d&#39;arme,... serait accessible. </span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size:14px">Arriv&eacute; dans la ville tu apprends qu&#39;un tournoi important va se d&eacute;rouler au colis&eacute;e. Dans ce fameux colis&eacute;, il y aurait une partie jcj (je passe) et une partie pex. On pourrait affronter les personnages du colis&eacute; comme Rebecca, Cavendish, Bartholom&eacute;o, Don Chinjao, Sabo... Le but serait de tous les vaincre pour ensuite d&eacute;bloquer greenbit (l&agrave; o&ugrave; vivent les Tontatas). Apr&egrave;s avoir parl&eacute; &agrave; L&eacute;o, qui apprends que les tontatas sont esclaves &agrave; l&#39;usine et que la princesse Manshery a disparu, il faut ensuite se rendre &agrave; l&#39;usine de smile. L&agrave; tu combats des CPU&#39;s pour UP puis Senor Pink et Sugar, les boss du coin qui permettent de passer &agrave; la phase suivante. Apr&egrave;s avoir mis la zizanie sur l&#39;ile x) il faut se diriger vers le palais. Pour cela il faudrait passer par la place publique et affronter des cpu lambda ainsi que des &quot;boss interm&eacute;diaires&quot; comme Dellinger, Lao G, Baby 5,... puis le Big boss du coin : Gladius. (bien sur tout les palliers sont disponibles en fonction du niveau et/ou de la prime/honneur).</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size:14px">Ensuite direction le palais, qui se d&eacute;roule par niveau (comme Impel down). Level&nbsp;1 : champ de fleur (tournesols je crois)&nbsp;! Objectif : battre Diamante pour passer au lvl sup. Level&nbsp;2 : rez de chauss&eacute;e ! Il faut battre Pica. Level 3 : 1&egrave;re &eacute;tage ! Il faut battre Tr&eacute;bol. Level 4 : Toit ! Il faut enfin battre le big boss Doflamingo afin de passer &agrave; l&#39;ile suivante.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size:14px">Tout cela se ferait en plusieurs niveaux bien sur, tu entres &agrave; Dressrosa lvl 83&nbsp;par exemple, tu en sors lvl 90 x) Le but serait d&#39;ainsi suivre le d&eacute;roulement de chaque ile du manga. Si on int&egrave;gre le pex sous forme de qu&ecirc;te, il y aura un vrai objectif et donc plus de motivation. Apr&egrave;s on peut toujours changer la m&eacute;thode de combat aussi x) Je n&#39;en ai pas parl&eacute; car je manque d&#39;id&eacute;e.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size:14px">Pour le c&ocirc;t&eacute; Jcj, mon c&ocirc;t&eacute; pr&eacute;f&eacute;r&eacute;, j&#39;en ai tr&egrave;s vite parl&eacute;. Il serait int&eacute;grer avec l&#39;aventure et pas &agrave; part. Exemple : Le colis&eacute;e &agrave; Dressrosa ou encore l&#39;ar&egrave;ne de Amazon lily. Cela permettrait aux personnes de m&ecirc;me niveaux de s&#39;affronter. Apr&egrave;s rien n&#39;emp&ecirc;che la ddm entre factions et &eacute;quipages &agrave; Wesblue par exemple. Je verrais plus Eastblue comme une ile tutorielle pour les nouveaux, mais qui resterait utile pour des bonus (comme le royaume de goa). Southblue serait une ile d&#39;entrainement, renforcement d&#39;armure, d&#39;armes,... et am&eacute;liorations des techniques. Redline serait pour moi un passage avant grandline, avec les minjeux de Pandaman + il faudrait faire un truc avec Laboon. Nothblue serait plus pour le c&ocirc;t&eacute; boutique d&#39;avatar + chasse et en prime une ile bonus (l&#39;ile de Law... surnomm&eacute;e&nbsp;la ville blanche... ah oui le royaume de Flevance !) Faire des petites iles en bonus &agrave; l&#39;histoire principale pourrait &ecirc;tre sympas.</span></p>\r\n\r\n<hr />\r\n<p style="text-align: justify;"><span style="font-size:14px">Bon voila c&#39;est bon je me tais maintenant :x</span></p>\r\n', 1447601317, 0, 191, 60),
(1123, '<p>qui sent le</p>\r\n', 1447601336, 0, 79, 68),
(1156, '<p>Cuisinier :D</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447601487, 0, 214, 199),
(1191, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447601553, 0, 219, 13),
(1702, '', 1447601749, 0, 74, 51),
(1790, '<p>cool &nbsp;du pvp<br />\r\n&nbsp;</p>\r\n', 1447601865, 0, 191, 227),
(1791, '<p>Moi plus tard j&#39;me casse vendre des frites en Belgique... &Agrave; moi le pognon !! :D</p>\r\n', 1447601933, 0, 217, 169),
(3063, '<p>D&eacute;veloppeur sur MineGame ?&nbsp;<img alt="angel" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/angel_smile.png" style="height:23px; width:23px" title="angel" /></p>\r\n', 1447602465, 0, 217, 1),
(3089, '<p>920</p>\r\n', 1447602472, 0, 78, 76),
(3309, '<p>Je m&#39;en fiche&nbsp;<img alt="laugh" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/teeth_smile.png" style="height:23px; width:23px" title="laugh" /></p>\r\n', 1447602504, 0, 214, 1),
(3434, '', 1447602514, 0, 118, 76),
(4729, '<p>Putain pourquoi t&#39;as parl&eacute; de frites j&#39;ai faim maintenant xD !</p>\r\n\r\n<p>Dumbeldor ca serait genial ca :oui:</p>\r\n', 1447602694, 0, 217, 218),
(4969, '<p>Bienvenie jeune boucher ;)</p>\r\n', 1447602739, 0, 177, 218),
(5207, '', 1447602783, 0, 74, 76),
(5290, '<p>Jy ai jou&eacute; un peu mais je lai uninstall car c est online et c est chiant quand meme... je vais essayer de le reinstaller tout de meme :) il m avait plus quand meme</p>\r\n', 1447602851, 0, 195, 218),
(5307, '<p>J&#39;aime les pommes!</p>\r\n', 1447602861, 1, 161, 271),
(5655, '<p>Blue exorcist juste &eacute;norme</p>\r\n', 1447603012, 0, 205, 76),
(5905, '<p>Salut aka :)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bienvenue Entei x)</p>\r\n', 1447603101, 0, 188, 116),
(5912, '<p>C&#39;est bien d&#39;avoir cr&eacute;er un tchat &eacute;quipage. Mais bon le titre du topic. (rofl)</p>\r\n', 1447603155, 0, 111, 271),
(5913, '<p>GTO excellent.&nbsp;</p>\r\n', 1447603174, 0, 205, 218),
(6021, '<p>Merci merci. :)</p>\r\n', 1447603204, 0, 188, 274),
(6214, '<p>Dans ta candidature ta dit que tu connaissait certaine personne c&#39;est qui ? ^^</p>\r\n', 1447603251, 0, 188, 116),
(6215, '<p>Ah si jpeux *_*</p>\r\n\r\n<p>Recrute plus de bras droit un seul suffit moi &nbsp;:$&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par Hiryu le 15/11/2015 à 19h00</span></em></p>', 1447603264, 0, 149, 193),
(6216, '<p>J&#39;veux bien &ecirc;tre Cuisinier, comme dans tous mes autres &eacute;quipages sur OPRPG, si ils sont pas trop j&#39;me porte volontaire.</p>\r\n', 1447603278, 0, 214, 274),
(6722, '', 1447603446, 0, 118, 80),
(6806, '<p>919</p>\r\n', 1447603454, 0, 78, 80),
(7058, '<p>Faudrait me dire qui sont ceux qui n&#39;ont pas le m&ecirc;me pseudo, apr&egrave;s j&#39;attend que le reste me reconnais, on sait jamais si je me trompe, &ccedil;a fait honte. ._.</p>\r\n', 1447603482, 0, 188, 274),
(7508, '<p>Moi pour l&#39;instant se qui est s&ucirc;r pour moi c&#39;est que apr&egrave;s ma 3&deg; je pars en seconde g&eacute;n&eacute;rale puis en prmi&egrave;re S (ou ES peu &ecirc;tre) puis soit je m&#39;orriente vers une &eacute;cole de commerce, soit dans l&#39;agriculture, soit dans la cuisine (restaurant ou patisserie fin sa je verrais surtout si sa me plait vraiment apr&egrave;s mon stage d&eacute;couverte de d&eacute;cembre) ou sinon je bosse comme un dingue pour avoir un m&eacute;ga salaire pour apr&egrave;s voyageait dans le monde (c&#39;est pas avec un salaire d&#39;agriculteur que je vais pouvoir faire sa XD). Je sais mes ambitions son totalment diff&eacute;rentes les unes des autres mais bon ces les choses que j&#39;aime <img alt="smiley" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/regular_smile.png" style="height:23px; width:23px" title="smiley" /></p>\r\n', 1447603563, 0, 217, 76),
(7739, '<p>918</p>\r\n', 1447603600, 0, 78, 76),
(8534, '<p>Same j&#39;ai 15 ans 1ere ES quand j&#39;etait gamin je r&ecirc;vais devenir programmeur vu que c&#39;est le domaine que je maitrise le plus et avec le quel j&#39;ai le plus d&#39;experience , mais finalement l&#39;id&eacute;e d&#39;&ecirc;tre assis 8 heures par jour devant un ordinateur ne me pla&icirc;t plus autant ( j&#39;ai peur pour ma sant&eacute;)&nbsp; j&#39;aime la biologie aussi mais bon&nbsp; au pire je vais cr&eacute;er des animaux avec des parties m&eacute;caniques transplant&eacute; dans le corps et connect&eacute; avec des fils reli&eacute; au cerveau qui repondent au signaux electriques de celui ci ansi l&#39;animal pourra s&#39;en servir comme n&#39;importe quel partie de son corp .</p>\r\n', 1447603925, 0, 217, 254),
(8890, '<p>917</p>\r\n', 1447604239, 0, 78, 80),
(8908, '<p>h</p>\r\n', 1447604274, 1, 201, 80),
(8909, '<p>h</p>\r\n', 1447604277, 1, 201, 80),
(8910, '<p>d</p>\r\n', 1447604293, 0, 220, 80),
(9268, '<p>918</p>\r\n', 1447604516, 0, 78, 171),
(9269, '', 1447604680, 0, 118, 171),
(9601, '<p>Des nouvelles du staff de cette version ?</p>\r\n', 1447604783, 0, 62, 80),
(9737, '<p>Salut !</p>\r\n\r\n<p>Pour ma part je regarde pas mal de series de tout genre.</p>\r\n\r\n<p>Awkward, Faking It, Teen wolf (<em>Tr&egrave;s sous-c&ocirc;t&eacute; comme s&eacute;rie je trouve, si on passe outre la premi&egrave;re saison, cette serie est enorme</em>), sense8 (<em>Gros coup de coeur</em>), Arrow, The flash, Daredevil, Gotham, GOT (<em>surc&ocirc;t&eacute; &agrave; mon go&ucirc;t</em>),The 100, Power (<em>la saison 2 &lt;3</em>) et bien d&#39;autres s&eacute;ries.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447604916, 0, 196, 183),
(10037, '<p><span style="color:#0000CD"><tt><em>Bvn :o</em></tt></span></p>\r\n', 1447605107, 0, 166, 121),
(10528, '<p>Breaking Bad (et Better Call Saul) , Empire, j&#39;avais regard&eacute; orange is the new black (les deux premiers ep) mais impossible de continuer, le sc&eacute;nario &agrave; l&#39;air vraiment l&eacute;ger.</p>\r\n', 1447605160, 0, 196, 66),
(11054, '<p><span style="color:#0000CD"><tt><em>Entei &gt; Tu &eacute;tait mon mentor :x</em></tt></span></p>\r\n', 1447605231, 0, 188, 238),
(11407, '<p><span style="color:#0000CD"><tt><em>M&ecirc;me pas besoin de dire mon poste (rofl). Il me mets direct Bras Droit ;)</em></tt></span></p>\r\n', 1447605301, 0, 214, 238),
(11447, '<p><span class="marker">J&#39;ai une id&eacute;e qu&#39;on pourrait mettre dans la v3&nbsp;</span></p>\r\n\r\n<p><span class="marker">Quand on gagne un combat ont &nbsp;pourrait gagner des armure,des armes ou des habille et aussi tu pourrais faire une salle d&#39;entra&icirc;nement ou on pourrait s&#39;entra&icirc;ner et un jour d&eacute;bloqu&eacute; le haki sa serais cool</span></p>\r\n', 1447605306, 0, 62, 250),
(11760, '', 1447605395, 0, 74, 233),
(11766, '<p>test</p>\r\n', 1447605413, 0, 129, 1),
(11769, '<p>test</p>\r\n', 1447605417, 0, 129, 1),
(11771, '<p>df</p>\r\n', 1447605432, 0, 129, 1),
(11773, '<p>Salut !</p>\r\n\r\n<p>Venez partager vos musiques du moment.&nbsp;</p>\r\n\r\n<p>Pour ma part, actuellement, j&#39;&eacute;coute 2 albums : &quot;<em>Le monde chico</em>&quot; du groupe <strong>PNL&nbsp;</strong>&amp; &quot;<em>A7</em>&quot; de <strong>SCH</strong>.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447605590, 0, 221, 183);
INSERT INTO `forums_topics_messages` (`id`, `message`, `date_time`, `is_block`, `id_forums_topics`, `id_users`) VALUES
(11775, '<p>One Piece Gold</p>\r\n\r\n<p>One Piece Fantasy</p>\r\n\r\n<p>One Piece Fanboy Game</p>\r\n\r\n<p>One Piece Master</p>\r\n', 1447605618, 0, 104, 155),
(11776, '<p>Gold Hunter One Piece</p>\r\n', 1447605797, 0, 104, 218),
(11779, '<p>Tchuss les gens&nbsp;<img alt="wink" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" /></p>\r\n', 1447605854, 0, 188, 155),
(11780, '<p>test</p>\r\n', 1447605876, 1, 104, 1),
(11781, '', 1447605935, 0, 118, 80),
(11782, '<p>En ce moment j&#39;ecoutes Le Bruit de mon Ame Kaaris. Dj Antoine This Time Klaas Remix.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Je suis pas trop musique mais je preferebles anciennes musiques que celles d aujourd hui&nbsp;</p>\r\n', 1447605972, 0, 221, 218),
(11783, '', 1447606000, 0, 118, 171),
(11784, '<p>fromage fraichement sorti du frigo et .......</p>\r\n<p></p><em><span style="font-size:8px">Édité par ascedu55 le 15/11/2015 à 17h47</span></em></p>', 1447606029, 0, 79, 155),
(11785, '<p><span style="color:#0000CD"><tt><em>Slt ;)</em></tt></span></p>\r\n', 1447606194, 0, 188, 238),
(11786, '<p>Wala je savais m&ecirc;me pas que j&#39;&eacute;tais un marine! :o</p>\r\n', 1447606205, 0, 188, 138),
(11787, '<p>Moi je veux bien naviguateur&nbsp;si possible</p>\r\n', 1447606300, 0, 214, 155),
(11788, '<blockquote>\r\n<p><strong><em>Citation de titi17470</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="color:#FFA500"><em>Ah ! Et je crois que l&#39;on n&#39;a plus la restriction d&#39;une heure entre chaque post donc l&#39;animation n&#39;a plus beaucoup de sens.</em></span></p>\r\n</blockquote>\r\n\r\n<p>Je ne compte pas les points des dp datant de moins d&#39;une heure de toute fa&ccedil;on ^^</p>\r\n', 1447606342, 0, 118, 138),
(11789, '<p>cv ?</p>\r\n\r\n<p>Vous venez aussi de la v2 ?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Destinity t&#39;&eacute;tait pas un luffy sur le v2</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>herasan toi un mihawk????</p>\r\n<p></p><em><span style="font-size:8px">Édité par ascedu55 le 15/11/2015 à 17h53</span></em></p>', 1447606357, 0, 188, 155),
(11790, '', 1447606360, 0, 118, 171),
(11791, '<blockquote>\r\n<p><strong><em>Citation de Gandalf</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>J&#39;aime les pommes!</p>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n', 1447606537, 1, 161, 173),
(11792, '<p>et les rejets d&#39;un putoi</p>\r\n', 1447606552, 0, 79, 171),
(11793, '<p>J&#39;&eacute;tais tout moi x) mais ouais, mon dernier &eacute;tait mihawk^^</p>\r\n', 1447606730, 0, 188, 138),
(11794, '<p>Lol moi j&#39;&eacute;tais en barbe blanche &agrave; la fin mais &agrave; cause de laposte j&#39;ai pas pu dire au revoir &agrave; mon compte.</p>\r\n', 1447606779, 0, 188, 155),
(11795, '<p>Salut,</p>\r\n\r\n<p>En ce qui me concerne je me posais les m&ecirc;mes questions sur mon avenir, et aujourd&#39;hui je commence &agrave; bien appr&eacute;cier ce que je fais. Pour retracer mon parcours :</p>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Dipl&ocirc;mes</strong></td>\r\n			<td><strong>Domaines</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Baccalaur&eacute;at</td>\r\n			<td>Scientifique, option Physique chimie</td>\r\n		</tr>\r\n		<tr>\r\n			<td>DUT (bac+2)</td>\r\n			<td>Statistique et Informatique D&eacute;cisionnelle (BI)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Licence Pro. (bac+3)</td>\r\n			<td>Syst&egrave;me d&#39;Information G&eacute;ographique</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Master 1 (bac+4)</td>\r\n			<td>Electronique, Automatique, Informatique</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ecole d&#39;ing&eacute;nieure (bac+5)</td>\r\n			<td>Chef de projet informatique et robotique</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Erasmus (bac+5)</td>\r\n			<td>D&eacute;veloppeur Javascript</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Mon M1 a &eacute;t&eacute; fait en parall&egrave;le de ma ma seconde ann&eacute;e d&#39;ing&eacute;nieur et l&#39;Erasmus pendant ma troisi&egrave;me et derni&egrave;re ann&eacute;e.</p>\r\n\r\n<p>Concernant les m&eacute;tiers, il ne faut pas trop se focaliser sur les pr&eacute;jug&eacute;s des dipl&ocirc;mes ni sur ce qu&#39;on cherche obligatoirement &agrave; faire de vous. Il est aussi probable que vous appr&eacute;ciez un m&eacute;tier dont vous ignoriez l&#39;existence avant d&#39;y travailler. Toujours pour parler de moi, les diff&eacute;rents m&eacute;tiers par lesquels je suis pass&eacute; :</p>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Dipl&ocirc;me</strong></td>\r\n			<td><strong>M&eacute;tier</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>DUT (bac+2)</td>\r\n			<td>Analyste et pr&eacute;visionniste</td>\r\n		</tr>\r\n		<tr>\r\n			<td>DUT (bac+2)</td>\r\n			<td>G&eacute;ostatisticien</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Licence Pro (bac+3)</td>\r\n			<td>Technicien SIG</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ecole d&#39;ing&eacute; (bac+5)</td>\r\n			<td>D&eacute;veloppeur Python</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ecole d&#39;ing&eacute; (bac+5)</td>\r\n			<td>G&eacute;omaticien</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ecole d&#39;ing&eacute; (bac+5)</td>\r\n			<td>Chef de projet</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Encore aujourd&#39;hui tout les m&eacute;tiers par lesquels je suis pass&eacute; m&#39;ont plu. Pour plus de d&eacute;tail, je suis encore en fin d&eacute;cole d&#39;ing&eacute;nieur, je fini mon Erasmus, je suis d&eacute;j&agrave; employ&eacute; dans une entreprise (SSII) et je participe &agrave; des projets b&eacute;n&eacute;voles sur internet, dans des startup et des projets perso. Mon parcours est tr&egrave;s atypiques mais poss&egrave;dait des branches pour y parvenir.</p>\r\n\r\n<p>Ce sur quoi je travaille : principalement sur des projets informatiques. L&#39;alliance entre les cartographes d&#39;antant et les informaticiens d&#39;aujourd&#39;hui donne ce qu&#39;on app&egrave;le la g&eacute;omatique. Au croisement enrte les cartes, le BigData, les pr&eacute;visions, le d&eacute;veloppement informatique et les relations clients. Un monde continuellement en train de bouger tant qu&#39;on est dans le coeur de l&#39;action. L&#39;avantage est de pouvoir se pr&eacute;lasser dans un bureau p&eacute;p&egrave;re avec sa musique, de travailler dans des bonnes ambiances. D&#39;autres qui ont suivis les m&ecirc;mes formations sont &agrave; 50% sur le bureau et &agrave; 50% sur le terrain (dehors) en train de v&eacute;rifier la concordance des donn&eacute;es.</p>\r\n\r\n<p>Si vous cherchez plus d&#39;info sur mes formations et m&eacute;tiers, je serai ravis d&#39;y r&eacute;pondre. M&ecirc;me si les m&eacute;tiers dont j&#39;ai fait mon exp&eacute;rience ne vous branche pas, je suis aussi apte &agrave; vous aiguiller vers quelque chose qui pourrait &eacute;ventuellement vous plaire ;)</p>\r\n', 1447606870, 0, 217, 147),
(11796, '<p>Tres simple.<br />\r\nUn systeme de notification, &agrave; chaque r&eacute;ponse d&#39;un topic d&#39;on laquelle on participe.<br />\r\nOu bien quand quelqu&#39;un nous follow ou like nos msg (Si l&#39;id&eacute;e est prise)</p>\r\n\r\n<p>Et follow, like j&#39;vois pas comment vous expliquez, vous comprenez je pense. :D</p>\r\n', 1447606891, 0, 222, 171),
(11799, '<p><img alt="" src="https://33.media.tumblr.com/4ffbbdb9ca19cd1a21e4df5b81fc9225/tumblr_inline_muyh05kinN1s0rq8t.gif" /></p>\r\n', 1447607154, 0, 188, 116),
(11800, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447607436, 0, 223, 13),
(11801, '<p>Tu cherche un &eacute;quipage tu et sur la bonne page rejoins nous d&egrave;s a pr&eacute;sent !&nbsp;</p>\r\n\r\n<p>Pour conqu&eacute;rir ces vastes mer.</p>\r\n', 1447607520, 0, 224, 234),
(11802, '<p>AZY ON PARLE ICI</p>\r\n', 1447607578, 0, 225, 234),
(11803, '<p><span style="color:#0000CD"><tt><em>Il y a pas Navigateur ;)</em></tt></span></p>\r\n', 1447607603, 0, 214, 238),
(11804, '<blockquote>\r\n<p><strong><em>Citation de Lucifer.</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>AZY ON PARLE ICI</p>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>KESSIDI ???</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447607691, 0, 225, 282),
(11805, '<p><span style="color:#0000CD"><tt><em>Moi non plus j&#39;ai pas dit au revoir &agrave; mon compte xD</em></tt></span></p>\r\n\r\n<p><span style="color:#0000CD"><tt><em>Si. J&#39;&eacute;tait bien 1 Luffy avec .Destinity. et avec mon compte principal, j&#39;&eacute;tait en Ussop (Sumeerfrio).</em></tt></span></p>\r\n', 1447607706, 0, 188, 238),
(11806, '<p>OnepiecePlay&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Simple et je surement dispo&nbsp;</p>\r\n', 1447607724, 0, 104, 188),
(11807, '<p>TG MGL ICI C LES FOFO DE LA GUILDE XD</p>\r\n', 1447607769, 0, 225, 234),
(11808, '<p>917</p>\r\n', 1447607800, 0, 78, 234),
(11809, '', 1447607807, 1, 74, 233),
(11811, '', 1447607866, 0, 118, 234),
(11812, '<p>Qui senter vraiment bon...</p>\r\n', 1447607909, 0, 79, 234),
(11813, '<p>J&#39;veut jouer xD</p>\r\n', 1447607944, 0, 216, 234),
(11815, '<p>Ah ok ouais c&#39;est con xd, mais de toute fa&ccedil;on y&#39;allait avoir la raz donc 1 mois de plus 1 mois de moins.</p>\r\n\r\n<p>Ouais je vois c&#39;est qui ton compte principal.</p>\r\n', 1447607995, 0, 188, 155),
(11816, '<p>Ah mince bon ben cuisinier du coup xd.</p>\r\n', 1447608178, 0, 214, 155),
(11817, '<p>opkaizoku-rpg.fr?</p>\r\n', 1447608183, 0, 104, 234),
(11818, '<p>Moi je regarde Gotham, The Flash, Arrow (beaucoup de DC en fait&nbsp;<img alt="surprise" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/omg_smile.png" style="height:23px; width:23px" title="surprise" />) et The Big Bang Theory (m&ecirc;me si beaucoup n&#39;aime pas)</p>\r\n\r\n<p>Et j&#39;ai commenc&eacute; y a deux semaines la s&eacute;rie Scandal que je trouve excellente !&nbsp;<img alt="laugh" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/teeth_smile.png" style="height:23px; width:23px" title="laugh" /></p>\r\n', 1447608198, 0, 196, 150),
(11819, '<p><strong><em><font color="#b22222">Design :&nbsp;</font>Selon moi, un design&nbsp;moderne et assez soft serait adapt&eacute; dans l&#39;imm&eacute;diat. Il faudrai vraiment modifier le menu d&eacute;roulant comme l&#39;a dit Kalivia ci-dessus. Je pense qu&#39;une barre verticale serai plus adapt&eacute;e (Pourquoi ne pas proposer une option pour choisir l&#39;emplacement de cette barre (Horizontal/Vertical)... Bref dans l&#39;id&eacute;al cette fois-ci il serai bien de proposer plusieurs designs comme c&#39;&eacute;tait le gars sur oprpg. En effet, cela pourrait couter une somme d&#39;argent sur une ile par exemple. Tout le monde n&#39;ayant pas les memes gouts, l&#39;ajout de diff&eacute;rents designs comblerait surement un bon nombre de membre. Je vous conseille de rester sur un mod&egrave;le similaire pour les t&eacute;l&eacute;phones. Ne n&eacute;gligez pas les polices de textes ou encore les tailles pour le jeu, c&#39;est important! Une banni&egrave;re ne serait peut-etre pas de trop non plus sur le jeu tant qu&#39;elle n&#39;encombre pas. Etant conscient qu&#39;un design ne se fait pas en une heure, je vous conseille de cr&eacute;er un topic dans lequel les membres volontaires peuvent exposer leurs cr&eacute;ations (un peu comme pour les avatars sur op). Il reste quand meme un petit peu de travail !</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><font color="#b22222"><strong><em>Communautaire : &nbsp;</em></strong></font><strong><em>Moins de choses &agrave; dire pour ce th&egrave;me, de mon ressenti personnel, je trouve le forum absolument pas agr&eacute;able, surtout pour poster un message. Je ne le trouve pas bien fait avec des forums &eacute;parpill&eacute;s partout. Je vous conseille beaucoup de travailler l&agrave;-dessus, je pense qu&#39;il faut rendre le forum simple d&#39;acc&egrave;s possible et le moins &quot;brouillon&quot;. Comme l&#39;a &eacute;galement dit Kalivia, il va falloir finir certaines pages et pour mon avis personnel il faudra remettre certaines pages comme les r&eacute;sum&eacute;s avec pourquoi pas le retour des r&eacute;dacteurs? J&#39;aimais bien ce syst&egrave;me. J&#39;aimerai le retour d&#39;un chat &eacute;quipage ainsi que l&#39;apparition d&#39;une&nbsp;page d&#39;&eacute;quipage accessible &agrave; chacun. Je trouve l&#39;id&eacute;e d&#39;un forum d&#39;&eacute;quipage sympathique mais pas vraiment pratique dans un sens. C&#39;est &agrave; peu pr&egrave;s tout.</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><font color="#b22222"><strong><em>Gameplay :&nbsp;</em></strong></font><strong><em>Nous y voil&agrave;, donc je pense que c&#39;est sur le gameplay qu&#39;il faut le plus travaill&eacute; &eacute;videmment, mais sur une dur&eacute;e limit&eacute;e je vois mal le staff r&eacute;aliser certaines id&eacute;es. Bref, d&eacute;j&agrave; lorsque j&#39;&eacute;tais sur oprpg il y&#39;a 3 ans (ne m&#39;en voulait pas si je dis des choses qui ont &eacute;taient corrig&eacute;s sur oprpg depuis, &ccedil;a fait 3 ans que je ne surveill&eacute; plus oprpg) les gens gueulaient souvent sur le syst&egrave;me pex et surtout la fameuse chasse. Un syst&egrave;me de chasse (si elle sera remise sur le jeu) plus attractif serait sympathique car il est vrai que l&#39;ancien &eacute;tait barbant et &ccedil;a n&#39;encourageait pas &agrave; chasser manuellement. Maintenant il va falloir exposer ses id&eacute;es donc les voicis :</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>Le syst&egrave;me Mer/Terre me convient, apr&egrave;s je ne sais pas si vous comptez le modifier.</em></strong></p>\r\n\r\n<p><strong><em>Je pense qu&#39;il faut pas se baser sur un syst&egrave;me color&eacute;/noir &amp; blanc. Pourquoi ne pas chasser que des animaux non-color&eacute;s qu&#39;on pourrait faire &eacute;voluer sur la dur&eacute;e grace au pex justement ou tout simplement avec un syst&egrave;me simple : 5 fois le meme animal = (Version 1) par exemple ect jusqu&#39;&agrave; un niveau 3 je dirai. Evidemment certains animaux sont plus rares que d&#39;autres.</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>Je ne vais pas m&#39;attarder sur la chasse, je pense qu&#39;il faut se concentrer sur le pex.</em></strong></p>\r\n\r\n<p><strong><em>Premi&egrave;rement, sur oprpg chacune des iles n&#39;avaient pas beaucoup d&#39;utilit&eacute; si on l&#39;avait pass&eacute;e c&#39;est un peu dommage. L&#39;id&eacute;al serait que chacune des iles est une identit&eacute;, qu&#39;on puisse toujours s&#39;y amuser meme en &eacute;tant niveau X. Il faut garder les rencontres contre les GE &agrave; mon avis, c&#39;est vraiment sympa. Les ennemis &agrave; la doflamingo ou &agrave; la crocodile pourrait etre contre nous sur une ile par exemple, si on les bats on peut par exemple gagner un objet al&eacute;atoire (comme &agrave; l&#39;ile des hommes poissons je crois). Pourquoi ne pas nous laisser le choix de l&#39;histoire &eacute;galement? Par exemple se battre ou s&#39;allier contre X personnage, selon notre choix on aura diff&eacute;rents objets/pouvoirs. Bref vous m&#39;avez compris.</em></strong><strong><em>&nbsp;Le syst&egrave;me en lui meme n&#39;est pas mauvais &agrave; mon gout, et je pense que le modifier enti&egrave;rement serai assez compliqu&eacute;.</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>Pour finir, concernant le JcJ, contrairement &agrave; Kalivia je ne pense pas que cela doit etre int&eacute;gr&eacute; &agrave; l&#39;histoire. Du moins, pas tant que le Jcj restera comme avant. Je le trouve mal fait. Si il est refait dans ce cas l&agrave; je ne suis pas contre. Voil&agrave; voil&agrave;.</em></strong></p>\r\n', 1447608229, 0, 191, 175),
(11820, '<p>J&#39;aime beaucoup One Piece New Era.</p>\r\n', 1447608343, 0, 104, 175),
(11821, '<p>t&#39;es le sumeefrrio du site la ? :o</p>\r\n', 1447608407, 0, 188, 116),
(11822, '<p>Moi je pense faire juriste, c&#39;est pas l&#39;&eacute;clate totale mais j&#39;aime bien !&nbsp;<img alt="smiley" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/regular_smile.png" style="height:23px; width:23px" title="smiley" /></p>\r\n', 1447608496, 0, 217, 150),
(11823, '<p>c tros bien</p>\r\n', 1447608790, 0, 194, 148),
(11824, '', 1447608985, 0, 118, 171),
(11825, '<p>pour&nbsp;les con</p>\r\n', 1447609161, 0, 79, 171),
(11826, '', 1447609281, 0, 118, 188),
(11827, '', 1447609358, 0, 118, 171),
(11828, '<p>916</p>\r\n', 1447609654, 0, 78, 171),
(11829, '', 1447609822, 0, 118, 80),
(11830, '<p>YouTube est mon amis :D</p>\r\n', 1447609825, 0, 221, 171),
(11831, '<p>915</p>\r\n', 1447609837, 0, 78, 80),
(11832, '<p>One Game RPG</p>\r\n', 1447609886, 0, 104, 171),
(11833, '<p>Le truc de notif pour suivre un topic ouai, mais le truc de like jvois pas l&#39;interet par contre xD</p>\r\n', 1447609914, 0, 222, 80),
(11834, '', 1447609992, 0, 118, 68),
(11835, '<p><strong>trafalgar21 &gt; Dans l&#39;argriculture on appelle pas &ccedil;a un salaire. Mais bon je ne suis pas en ES je ne pourrais pas te dire et j&#39;ai oubli&eacute; mes cours de SES de seconde x) Perso mon p&egrave;re est agriculteur et je peux te dire que c&#39;est un m&eacute;tier vraiment d&eacute;favoris&eacute; quand tu es un tout petit agriculteur &agrave; ton compte. Apr&egrave;s si t&#39;es dans une grosse boite d&#39;agriculture c&#39;est autre chose. En tout cas quand tu es &agrave; ton compte c&#39;est tr&egrave;s difficile car ton &quot;salaire&quot; va d&eacute;pendre de tes r&eacute;coltes, et les r&eacute;coltes d&eacute;pendent du temps. De plus quand ton mat&eacute;riel tombe en panne... bah tu dois racheter ou r&eacute;parrer :s Sa co&ucirc;te ! Si tu veux partir dans l&#39;argriculture, qui est un beau m&eacute;tier, je te conseille vraiment de travailler pour quelqu&#39;un comme &ccedil;a tu as ton petit salaire tout les mois tranquille, et si du matos tombe en panne c&#39;est sur le coup de ton patron :p</strong></p>\r\n', 1447610018, 0, 217, 60),
(11836, '<blockquote>\r\n<p><strong><em>Citation de Sneazz</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>J&#39;aime beaucoup One Piece New Era.</p>\r\n</blockquote>\r\n\r\n<p>C&#39;est vrai que &ccedil;a rend bien, ou direct en fran&ccedil;ais One Piece Nouvelle Ere (comment &ccedil;a chauvin :x )</p>\r\n', 1447610094, 0, 104, 80),
(11837, '<p>Comme jel&#39;ai dit dans mon topic rubrisque id&eacute;e, un systeme de like, follow et de notifications.<br />\r\nSerais pas mal. :D</p>\r\n', 1447610112, 0, 62, 171),
(11838, '<p>Je n&#39;ai jamais dit que je n&#39;aimais pas le menu d&eacute;roulant, j&#39;ai dis le contraire. x) Et pour moi je pense qu&#39;ajouter une barre verticale serait une mausaise id&eacute;e.</p>\r\n', 1447610140, 0, 191, 60),
(11839, '<p>Autant pour moi! Pourquoi serait-ce une mauvaise id&eacute;e ?</p>\r\n', 1447610209, 0, 191, 175),
(11840, '', 1447610328, 0, 118, 80),
(11841, '<p>J&#39;ai d&#39;ailleurs un ami qui ma pass&eacute; une liste de manga apparement &quot;g&eacute;nial&quot;</p>\r\n\r\n<p>Absolute Duo<br />\r\nAce of Diamond<br />\r\nAi Tenchi Muyo!<br />\r\nAir Gear<br />\r\nAkame ga KILL<br />\r\nAkuma no Riddle<br />\r\nAmagi Brilliant Park<br />\r\nAngel Beats<br />\r\nAo no Exorcist<br />\r\nAssassination Classroom<br />\r\nBakuman&nbsp;<br />\r\nBeck<br />\r\nBeelzebub<br />\r\nBen-To<br />\r\nBikini Warriors<br />\r\nBlack Bullet<br />\r\nBlack Butler Book of Circus<br />\r\nBlack Lagoon&nbsp;<br />\r\nBlood Lad<br />\r\nBleach<br />\r\nBlood-C<br />\r\nBtooom<br />\r\nCode Geass<br />\r\nDakara boku wa, H ga Dekinai<br />\r\nDanMachi<br />\r\nDate A Live<br />\r\nDeadman Wonderland<br />\r\nDeath Note<br />\r\nDevil Survivor&nbsp;<br />\r\nenfer et paradis<br />\r\nFate Stay Night<br />\r\nFuun Ishin Dai Shogun<br />\r\nGakusen Toshi Asterisk<br />\r\nGangsta<br />\r\nGrisaia no Kajitsu<br />\r\nHagure Yuusha no Estetica<br />\r\nHaikyu<br />\r\nHigh School DxD<br />\r\nHighschool of the Dead<br />\r\nHunter X Hunter 2011<br />\r\nInfinite Stratos&nbsp;<br />\r\nK-Project<br />\r\nK-Return of Kings<br />\r\nKekkai Sensen<br />\r\nKuroko no Basket<br />\r\nKuusen Madoushi Kouhosei no Kyoukan<br />\r\nKyoukai no Kanata<br />\r\nMaoyuu Maou Yuush<br />\r\nMaken-Ki Two<br />\r\nMonster Musume no Iru Nichijou<br />\r\nNanatsu no Taizai<br />\r\nOne Punch Man<br />\r\nOre ga Ojou-sama Gakkou ni Shomin Sample<br />\r\nOver Lord<br />\r\nOwari no Seraph<br />\r\nPrison School<br />\r\nRail Wars<br />\r\nRakudai Kishi no Cavalry<br />\r\nSaenai Heroine no Sodatekata<br />\r\nSeiken Tsukai no World Break<br />\r\nSekai de Ichiban Tsuyoku Naritai<br />\r\nSekirei&nbsp;<br />\r\nShingeki no Kyojin<br />\r\nShinmai Maou no Keiyakusha<br />\r\nShokugeki no Souma<br />\r\nSoniAni Super Sonico The Animation<br />\r\nStrike the Blood<br />\r\nSword Art Online<br />\r\nTerra Formars<br />\r\nTo Love-Ru<br />\r\nTokyo Ghoul<br />\r\nTriage X<br />\r\nTrinity Seven<br />\r\nValkyrie Drive &ndash; Mermaid<br />\r\nWitchcraft Works<br />\r\nWalkure Romanze<br />\r\nYahari Ore no Seishun Love<br />\r\nYowamushi Pedal</p>\r\n\r\n<p>GL XDD</p>\r\n', 1447610392, 0, 205, 171),
(11842, '', 1447610553, 0, 118, 171),
(11843, '<p>914</p>\r\n', 1447610575, 0, 78, 171),
(11844, '<p>Ca fait swagg xD</p>\r\n', 1447610672, 0, 222, 171),
(11845, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447610724, 0, 226, 13),
(11846, '<p>Trankil et toi ? &nbsp;et ses quoi le truc des lundi que tu ma dit la ?</p>\r\n', 1447610737, 0, 158, 99),
(11847, '<p>Pour l&#39;instant j&#39;aime bien dans l&#39;ensemble, mais je trouve que l&#39;int&eacute;r&ecirc;t principal du jeu s&#39;est fait niqu&eacute; en rempla&ccedil;ant l&#39;incarnation de personnages du jeu par la cr&eacute;ation d&#39;ados cheum se ressemblant tous... je trouverai m&ecirc;me &ccedil;a personnellement mieux de mettre des avatars n/b de persos du manga que &ccedil;a :&#39;(</p>\r\n\r\n<p>Voila j&#39;ai h&acirc;te de voir la suite sinon&nbsp;</p>\r\n', 1447611011, 0, 82, 287),
(11848, '<p>913</p>\r\n', 1447611143, 0, 78, 234),
(11849, '<p>912</p>\r\n', 1447611290, 0, 78, 171),
(11850, '<p>911</p>\r\n', 1447611357, 0, 78, 1),
(11851, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447611385, 0, 227, 13),
(11852, '', 1447611394, 0, 118, 1),
(11853, '', 1447611400, 0, 118, 234),
(11854, '<p>t cho toi xD</p>\r\n', 1447611497, 0, 118, 171),
(11855, '<p><strong>design</strong> : J&#39;aimerais que le menu en haut soit fixe, histoire de pouvoir changer de page sans revenir en haut &agrave; chaque fois.</p>\r\n\r\n<p><strong>gameplay</strong> : Beaucoup parlent de sc&eacute;nario, pour ma part je vais laisser &agrave; d&#39;autre le temps de d&eacute;velopper cette partie et me concentrer sur une autre partie du gameplay =&gt; la baston. One Piece est un manga avec un univers tr&egrave;s &eacute;tendu mais &ccedil;a reste un shonen donc insister sur la baston c&#39;est la base <img alt="wink" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" /></p>\r\n\r\n<p>Avant tout, il faut commencer par diff&eacute;rentier les joueurs avec et sans fruit du d&eacute;mon. Les joueur avec fruit du d&eacute;mon ont des capacit&eacute;s qui leur sont propres mais sont incapable de nager. Avec oprpg, tout le monde avait un fruit car c&#39;&eacute;tait indispensable. Moi je pr&eacute;f&egrave;rerais rendre les fruits aussi rare que dans l&#39;anim&eacute;. Manger un fruit ne doit pas &ecirc;tre une n&eacute;cessit&eacute; mais un choix difficile. Un pirate/marine/r&eacute;volutionnaire qui ne sait pas nager doit &ecirc;tre un gros d&eacute;savantage. Pour &ccedil;a, j&#39;ai pens&eacute; &agrave; insister sur le c&ocirc;t&eacute; navigation &agrave; bord d&#39;un bateau. On peut alors imaginer des attaques de pirate/marine/r&eacute;volutionnaire (jcj) mais aussi des combats contre des monstres marin ou des pnj du manga (wapol). Un ennemi pourra parfois &eacute;jecter un membre de l&#39;&eacute;quipage du navire. Il sera alors dans l&#39;eau. Si il a mang&eacute; un fruit du d&eacute;mon il ne pourra rien faire et perdra de la vie r&eacute;guli&egrave;rement jusqu&#39;&agrave; ce qu&#39;un membre de l&#39;&eacute;quipage le rep&ecirc;che. Ce genre d&#39;attaque permettra de progresser en force et si c&#39;est du jcj on pourra emporter une partie du butin de l&#39;&eacute;quipage.</p>\r\n\r\n<p>On pourra aussi imaginer devoir payer une certaine somme pour recevoir le journal qui indiquera la position et les mouvements des diff&eacute;rents ennemmis tr&egrave;s puissant du jeu. &ccedil;a pourra faire office de liste de qu&ecirc;te.</p>\r\n\r\n<p>Sans oublier bien s&ucirc;r les haltes sur les &icirc;les pour r&eacute;cup&eacute;rer des vivres et participer &agrave; d&#39;autres &eacute;v&eacute;nements.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447612499, 0, 191, 73),
(11856, '<h1><strong>sa&euml;l est un homme</strong></h1>\r\n', 1447612719, 0, 118, 137),
(11857, '<p>Merci bien Karugara ! Votre amiti&eacute; avec Norland le roi des menteurs me fascine. C&#39;est d&#39;une beaut&eacute;, j&#39;esp&egrave;re qu&#39;elle sera longue !</p>\r\n', 1447612885, 0, 177, 231),
(11858, '<p>Hum</p>\r\n', 1447612981, 0, 157, 204),
(11859, '<p>Bienvenue monsieur de Skypiea ! Karugara, je peux non sans mal vous dire que votre descendant se porte comme un charme. Hormis le fait qu&#39;il est utilis&eacute; le reject plusieurs fois qui est a consomm&eacute; avec mod&eacute;ration (dangereux pour la sant&eacute;).</p>\r\n\r\n<p>Bonne soir&eacute;e&nbsp;<img alt="smiley" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/regular_smile.png" style="height:23px; width:23px" title="smiley" /></p>\r\n', 1447612995, 0, 166, 231),
(11860, '<p>Franchement, m&ecirc;me si c&#39;est online donc avoir la wi-fi ou 3G/4G, le jeu reste tout de m&ecirc;me &eacute;norme.</p>\r\n\r\n<p>J&#39;ai d&eacute;j&agrave; essay&eacute; beaucoup de jeux sur smartphone mais aucune ne m&#39;a r&eacute;ellement plus. Par contre, &eacute;tant fan de OP, celui-ci est particuli&egrave;rement r&eacute;ussi avec du contenu presque tout le temps. Enfin bref, je vais pas &eacute;crire un pav&eacute; (je pourrais) mais ce jeu vaut le coup !</p>\r\n', 1447613169, 0, 195, 231),
(11862, '', 1447613499, 0, 118, 171),
(11863, '<p>910</p>\r\n', 1447613523, 0, 78, 171),
(11865, '<blockquote>\r\n<p><strong><em>Citation de Darksidus</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>je joue avec le demones<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n<em>&Eacute;dit&eacute; par Darksidus le 15/11/2015 &agrave; 16h16</em>\r\n\r\n<p>&nbsp;</p>\r\n</blockquote>\r\n\r\n<p>Tu joue avec le compte demones, ou vous jouez tout les deux ._. ?</p>\r\n', 1447613614, 0, 216, 67),
(11866, '<p>L&#39;heure du site est en avance de 2 minutes par rapport &agrave; moi, ou alors je suis en retard :o)</p>\r\n', 1447613665, 0, 228, 80),
(11867, '<p>J&#39;suis le Pingouin du S2 moi :p</p>\r\n\r\n<p>J&#39;ai remarque apr&egrave;s mon inscription que y&#39;en avais un S1 :/ Du coup, j&#39;suis celui du S2 x)</p>\r\n', 1447613774, 0, 188, 67),
(11868, '<p>Moi c&#39;est kienzan, un ancien des Tenry&ucirc;, je parlais jamais salle 2 donc vous me connaissez surement pas.</p>\r\n<p></p><em><span style="font-size:8px">Édité par .Destinity. le 15/11/2015 à 20h27</span></em></p>', 1447613782, 0, 188, 105),
(11869, '<p>Plus tard, j&#39;pense que y&#39;aura plus de rang, donc vous me re-direz ^^</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Personne veut &ecirc;tre matelot, ou m&ecirc;me &quot;en attente&quot; x) ?</p>\r\n', 1447613863, 0, 214, 67),
(11870, '<p>Normal le gros blanc apr&egrave;s ou pas x) ?</p>\r\n', 1447613891, 0, 188, 67),
(11871, '<p><strong>J&#39;viens de me rendre compte que j&#39;pouvais aussi commencer maintenant ._.</strong></p>\r\n\r\n<p><strong>J&#39;attends ou je commence :p ?</strong></p>\r\n', 1447613965, 0, 93, 67),
(11872, '<p>Ma touche entr&eacute;e est rest&eacute; enfonc&eacute; ... :/</p>\r\n', 1447613982, 0, 188, 105),
(11873, '<p>C&#39;est toi le chef :P</p>\r\n', 1447614064, 0, 93, 171),
(11874, '<p>mdr xD J&#39;pensais que c&#39;&eacute;tait une image qui s&#39;affichait pas ou un truc du genre x)</p>\r\n', 1447614159, 0, 188, 67),
(11875, '<p>en attente</p>\r\n', 1447614184, 0, 214, 105),
(11876, '<p>ouai c&#39;est une image, carr&eacute; blanc sur fond blanc, l&#39;oeuvre majeure de l&#39;humanit&eacute;. xD</p>\r\n', 1447614291, 0, 188, 105),
(11878, '<p>Ok, Ok&nbsp;j&#39;commence._. Par contre, &ccedil;a sera que des matchs de 3 &eacute;_&egrave;</p>\r\n\r\n<p><strong><span style="color:#FF8C00">Donc on commence avec :</span></strong></p>\r\n\r\n<p><img src="http://minegame.fr/assets/img/avatarsJoueurs/227.png" /></p>\r\n\r\n<p>Akashi !</p>\r\n\r\n<p>Vs</p>\r\n\r\n<p><img src="http://minegame.fr/assets/img/avatarsJoueurs/51.png" /></p>\r\n\r\n<p>Riyuma !</p>\r\n\r\n<p>Vs</p>\r\n\r\n<p>Erza Scarlet !</p>\r\n\r\n<p><img src="http://minegame.fr/assets/img/avatarsJoueurs/118.png" /></p>\r\n', 1447614583, 0, 93, 67),
(11879, '<p>Tr&egrave;s belle image, je sais pas si je suis capable de faire mieux :/</p>\r\n', 1447614646, 0, 188, 67),
(11880, '<p>y&#39;a encore moyen de s&#39;inscrire ?</p>\r\n', 1447615065, 0, 93, 158),
(11881, '<p>Hum... J&#39;pense pas. Sauf si j&#39;trouve un truc permettant de faire passer quelqu&#39;un a la manche suivante (Hasard ou votes :/)</p>\r\n', 1447615239, 0, 93, 67),
(11882, '<p><span style="color:#0000CD"><tt><em>Erza Scarlet! </em></tt></span><span style="color:#FF0000"><tt><em>Pour sa couleur de cheveux ;)</em></tt></span></p>\r\n', 1447615351, 0, 93, 121),
(11884, '<p><span style="color:#0000CD"><tt><em>J&#39;ai r&eacute;gl&eacute; le probl&egrave;me du blanc ;)</em></tt></span></p>\r\n\r\n<p><span style="color:#0000CD"><tt><em>Oui je suis le Sumeerfrio du site ;)</em></tt></span></p>\r\n\r\n<p><span style="color:#0000CD"><tt><em>J&#39;ai plusieurs comptes sur le site l&agrave; :x ( Sumeerfrio ; LordDalassee ; .Destinity. )</em></tt></span></p>\r\n', 1447615774, 0, 188, 238),
(11885, '<p>Um</p>\r\n', 1447615876, 0, 157, 275),
(11886, '<p>Y&#39;en a un Pirate, un r&eacute;volutionnaire et un Marine :/</p>\r\n\r\n<p>Enfin, je suppose xD</p>\r\n', 1447615903, 0, 188, 67),
(11887, '<p><span style="color:#0000CD"><tt><em>Moi je suis bien &quot;Bras Droit&quot; ;). Je peux accepter des membres au moins.</em></tt></span></p>\r\n\r\n<p><span style="color:#FF0000"><tt><em><strong>Pingouin &gt;</strong></em></tt></span><span style="color:#0000CD"><tt><em> Si des gens postules. Je les accepte direct ou je t&#39;en parle avant ?</em></tt></span></p>\r\n<p></p><em><span style="font-size:8px">Édité par .Destinity. le 15/11/2015 à 20h32</span></em></p>', 1447615905, 0, 214, 238),
(11888, '<p>Du moment que les places sont illimit&eacute;s, tu les accepetent x)</p>\r\n', 1447615965, 0, 214, 67),
(11889, '<p><span style="color:#0000CD"><tt><em>C&#39;est &ccedil;a ;) Dans le bon ordre en + :o</em></tt></span></p>\r\n', 1447615983, 0, 188, 238),
(11890, '<p>Sans regarder en plus&nbsp;<img alt="surprise" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/omg_smile.png" style="height:23px; width:23px" title="surprise" /></p>\r\n', 1447616041, 0, 188, 67),
(11891, '<p><span style="color:#0000CD"><tt><em>Okey (</em></tt></span><tt><em><strong>Captain</strong></em></tt><span style="color:#0000CD"><tt><em> :p)</em></tt></span></p>\r\n', 1447616081, 0, 214, 238),
(11892, '<p><span style="color:#0000CD"><tt><em>xD</em></tt></span></p>\r\n', 1447616116, 0, 188, 238),
(11893, '<p>Vas&#39;y met moi matelot ^^</p>\r\n\r\n<p><br />\r\n<img alt="" src="http://www.atelier-mascarade.com/ph_Ac1509,Ac1509,beret-marin-m3" /></p>\r\n', 1447616209, 0, 214, 116),
(11894, '<p>Nan, c&#39;est bon, je change plus rien, quelqu&#39;un a mis au centre (Destinity je suppose encore ._.), et j&#39;vois toujours pas ou c&#39;est x)</p>\r\n', 1447616297, 0, 214, 67),
(11895, '<p><span style="color:#0000CD"><tt><em>xD Tu me tue avec tes images (rofl)</em></tt></span></p>\r\n', 1447616311, 0, 214, 238),
(11896, '<p>Ah non, c&#39;&eacute;tait Dumb&#39; x)</p>\r\n', 1447616376, 0, 214, 67),
(11897, '<p>mdrr t&#39;es un ouff y&#39;a pas le droit d&#39;avoir de dc sur ce site xDDD t&#39;es trop un gangster en plus dumbeldor est ici :x tu va mourir :x</p>\r\n', 1447616392, 0, 188, 116),
(11898, '<p>&quot;&nbsp;Les doubles comptes sont fortement d&eacute;conseill&eacute;s. Si vous avez un fr&egrave;re ou une soeur qui veut jouer, &nbsp;il peut se cr&eacute;er un compte lui aussi bien entendu &agrave; condition qu&#39;il n&#39;y ait pas d&#39;entre aide ou de triche. N&eacute;anmoins, &eacute;vitez d&#39;avoir trop de comptes. Sachez qu&#39;aucune interaction au niveau du jeu entre DC ne sera tol&eacute;r&eacute;. En cas de manquement &agrave; cette r&egrave;gle, les comptes en question se verront supprim&eacute;s.&quot;</p>\r\n\r\n<p>Nan, c&#39;est bon xD</p>\r\n', 1447616545, 0, 188, 67),
(11899, '<p>je voulait lui mettre la pression capitaine ta tout cass&eacute; :&#39;(</p>\r\n', 1447616747, 0, 188, 116),
(11900, '<p>Akashi</p>\r\n', 1447616927, 0, 93, 116),
(11901, '<p>Mais je suis l&agrave; pour &ccedil;a&nbsp;<img alt="wink" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" /></p>\r\n', 1447616979, 0, 188, 67),
(11902, '<p>H&eacute; vous saviez que on avait des identifiants je suis 116 et vous ? :3</p>\r\n', 1447617147, 0, 188, 116),
(11903, '<p>J&#39;suis le 67eme inscrit moi :p</p>\r\n', 1447617227, 0, 188, 67),
(11904, '<p>Ouah tu t&#39;es inscrit direct toi :O n&#39;empeche je croit ta cr&eacute;e le premier &eacute;quipage marine du site :oo c&#39;est ouf :D</p>\r\n', 1447617322, 0, 188, 116),
(11905, '<p><span style="color:#0000CD"><tt><em>Pas bien de m&#39;accuser :&#39;(</em></tt></span></p>\r\n', 1447617369, 0, 214, 238),
(11906, '<p>J&#39;te f&eacute;licit&eacute; :(</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447617451, 0, 214, 67),
(11907, '<p><span style="color:#0000CD"><tt><em>xD Moi j&#39;ai cr&eacute;&eacute; les &quot;Grands Corsaires&quot; :x</em></tt></span></p>\r\n', 1447617500, 0, 188, 238),
(11908, '<p>C&#39;est la 1&eacute;re chose que j&#39;ai faites d&egrave;s mon inscription xD</p>\r\n\r\n<p>Le 2&egrave;me du jeu pour plus de d&eacute;tails x)</p>\r\n', 1447617514, 0, 188, 67),
(11909, '<p><span style="color:#0000CD"><tt><em>Ah bon ? :^)</em></tt></span></p>\r\n', 1447617573, 0, 214, 238),
(11910, '<p>La cr&eacute;ation de personnage devrait changer franchement j&#39;aime pas du tout ces petits perso a&nbsp;l&#39;ancienne. Soit am&eacute;liorer la cr&eacute;ation de personnage pour que sa ressemble &agrave; un manga/anime ou remettre les persos de one piece comme oprpg apres c&#39;est mon avis&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pour le gameplay:</p>\r\n\r\n<p>je suis sur iPhone et ca me tente pas de dire toutes mes id&eacute;es (je suis paresseux) &Ccedil;a serait bien de sortir un minimum de gameplay petit a petit pour la v1 comme ca ont attendra pas longtemps pour un gros gameplay, il y&#39;aura moins de joueurs et franchement le sortir t&ocirc;t serait un avantage il y&#39;a plus de 300 personnes qui sont sur ce site (membres et visiteurs)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447617625, 0, 191, 294),
(11911, '<p>Erza</p>\r\n', 1447617648, 0, 93, 74),
(11912, '<p>Apr&egrave;s, si tu pr&eacute;f&egrave;re que j&#39;t&#39;accuse, faut le dire xD</p>\r\n', 1447617708, 0, 214, 67),
(11913, '<p>nop</p>\r\n', 1447617711, 0, 118, 74),
(11914, '<p>akashi</p>\r\n', 1447617830, 0, 93, 105),
(11915, '<p>c&#39;est quoi ca les gands corsaires ? oO</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2eme du site ? :oo c&#39;est qui le premier ? :ooo</p>\r\n', 1447617865, 0, 188, 116),
(11916, '<p>C&#39;&eacute;tait l&#39;&eacute;quipage de Dumb&#39; avec j&#39;sais plus qui xD</p>\r\n', 1447617940, 0, 188, 67),
(11917, '<p>rah shit xD ont c&#39;est fait avoir par notre propre camarades xDDD</p>\r\n', 1447618036, 0, 188, 116),
(11918, '<p>Les Grands corsaires, c&#39;est un &eacute;quipage ^^</p>\r\n\r\n<p>Ouai, mais si il a supp&#39; l&#39;&eacute;quipage, on est les premiers du coup :o</p>\r\n', 1447618136, 0, 188, 67),
(11919, '', 1447618403, 0, 118, 171),
(11920, '<p>Riyuma</p>\r\n', 1447618488, 0, 93, 171),
(11921, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447618645, 0, 229, 13),
(11922, '', 1447618702, 0, 118, 74),
(11923, '<p>Erza la train&eacute;e :D</p>\r\n', 1447618776, 0, 93, 218),
(11924, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447618793, 0, 230, 13),
(11925, '<p>Plus personne ne doit poster .</p>\r\n', 1447618866, 0, 118, 295),
(11926, '<p>:)</p>\r\n', 1447619109, 0, 118, 171),
(11927, '<p>&ccedil;a aurait pu marcher, sait on jamais ...</p>\r\n', 1447619521, 0, 118, 295),
(11928, '', 1447619751, 0, 118, 171),
(11929, '<blockquote>\r\n<p><span style="line-height:1.6">l&#39;int&eacute;r&ecirc;t principal du jeu s&#39;est fait niqu&eacute;</span></p>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Y a pas que le jeu qui s&#39;est fait niqu&eacute;.</p>\r\n\r\n<p>Boum j&#39;t&#39;ai cass&eacute;.</p>\r\n', 1447619794, 0, 82, 66),
(11930, '<p>h&eacute; mais n&#39;empeche je sait pas comment le staff va faire pour les &eacute;quipages :o pou les places sa me fait trop reflechir :o</p>\r\n', 1447620689, 0, 188, 116),
(11931, '<p>Riyuma</p>\r\n', 1447620864, 0, 93, 193),
(11932, '<p>Scan One Piece n&deg;806 :</p>\r\n\r\n<p>http://lel-scan.co/lecture-one-piece/806/2</p>\r\n<p></p><em><span style="font-size:8px">Édité par Eyver le 15/11/2015 à 21h55</span></em></p>', 1447620883, 0, 231, 154),
(11933, '<p>Je peut jou&eacute; s&#39;il te plait ^^</p>\r\n\r\n<p>je pari je le serait le loup :x</p>\r\n', 1447620958, 0, 216, 116),
(11934, '<p>Scan Bleach n&deg;651 :</p>\r\n\r\n<p>http://lel-scan.co/lecture-bleach/651/2</p>\r\n', 1447621014, 0, 232, 154),
(11935, '<p>moi je voudrais devenir pilote dans l&#39;arm&eacute;e</p>\r\n', 1447621104, 0, 217, 289),
(11936, '<p>personne ne vas gagner de points si ca continue comme ca</p>\r\n', 1447621474, 0, 118, 74),
(11937, '<p>moi prof</p>\r\n', 1447621859, 0, 217, 154),
(11938, '<p>909</p>\r\n\r\n<p>Lol</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447622474, 0, 78, 153),
(11939, '', 1447622506, 0, 118, 1),
(11940, '<p>908</p>\r\n', 1447622525, 0, 78, 1),
(11941, '<p>Riyuma&nbsp;<img alt="heart" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/heart.png" style="height:23px; width:23px" title="heart" /></p>\r\n', 1447622604, 0, 93, 1),
(11942, '<p>&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447622663, 0, 118, 153),
(11943, '<blockquote>\r\n<p><u><strong><em>Citation de Pingouin</em></strong></u></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>J&#39;suis le 67eme inscrit moi :p</p>\r\n</blockquote>\r\n\r\n<p>Je suis le premier inscris&nbsp;<img alt="surprise" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/omg_smile.png" style="height:23px; width:23px" title="surprise" /></p>\r\n', 1447622717, 0, 188, 1),
(11944, '<p>907</p>\r\n', 1447622746, 0, 78, 153),
(11945, '<p>C&#39;est la nuit en g&eacute;n&eacute;ral qu&#39;on gagne le plus de points x) ou t&ocirc;t le matin ^^ mais Kaneki a d&eacute;j&agrave; 1 point x)</p>\r\n\r\n<p>( je ferai un syst&egrave;me de r&eacute;compense par palier quand on aura un gameplay ^^ )</p>\r\n', 1447622847, 0, 118, 138),
(11946, '<p>Akashi</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447623084, 0, 93, 153),
(11947, '<p>Tiens au fait y&#39;a plus moyen de se rendre sur l&#39;ancienne version alors ? x)</p>\r\n', 1447623094, 0, 188, 138),
(11948, '', 1447623213, 0, 118, 153),
(11949, '', 1447623225, 0, 118, 74),
(11950, '', 1447623283, 0, 118, 153),
(11951, '<p>Si&egrave;rge c &eacute;tai....</p>\r\n', 1447623681, 0, 79, 153),
(11952, '<p>On a un r&eacute;volutionnaire dans un &eacute;quipage marine! R&eacute;voltons nous!</p>\r\n\r\n<p>*sorstr&egrave;sloin...*</p>\r\n<p></p><em><span style="font-size:8px">Édité par HeraSan le 15/11/2015 à 22h44</span></em></p>', 1447623857, 0, 188, 138),
(11953, '', 1447624431, 0, 118, 74),
(11954, '', 1447624652, 0, 118, 1),
(11955, '<p><span style="color:#0000FF">Je peu etre bd sil vous plai vice amiral pingouin je serai votre colonel en tan que bd</span></p>\r\n', 1447624760, 0, 214, 285),
(11956, '<p>Lol t con&nbsp;</p>\r\n\r\n<p>Aller revolton nous ahahah vou etes bien sympa come marin jai eu la chance de tomb&eacute;e sur vou<img alt="laugh" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/teeth_smile.png" style="height:23px; width:23px" title="laugh" /></p>\r\n', 1447625220, 0, 188, 285),
(11957, '<p>Je suis dans le turfu !&nbsp;<img alt="cool" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/shades_smile.png" style="height:23px; width:23px" title="cool" /><br />\r\nEt oui le site a quelques minutes de d&eacute;calage, c&#39;est li&eacute; au serveur &ccedil;a :D</p>\r\n<p></p><em><span style="font-size:8px">Édité par Dumbeldor le 15/11/2015 à 23h08</span></em></p>', 1447625288, 0, 228, 1),
(11958, '', 1447625349, 0, 118, 153),
(11959, '<p>Troisi&egrave;me message lol</p>\r\n\r\n<p><strong><em><span style="color:#AFEEEE">Oo tu te calme toute suite jette ton arme a terre pandaman tu es fichu</span></em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em><span style="color:#AFEEEE">Ahahah lol<img alt="laugh" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/teeth_smile.png" style="height:23px; width:23px" title="laugh" /></span></em></strong></p>\r\n', 1447625520, 0, 9, 153),
(11960, '					Riyuma\r\n', 1447625905, 0, 93, 68),
(11961, '', 1447625949, 0, 118, 74),
(11962, '<p>Dp again</p>\r\n', 1447626124, 0, 74, 233),
(11963, '	On peut pas garder les points de l''ancienne version ? :x				<p></p><em><span style="font-size:8px">Édité par Zanketsu le 15/11/2015 à 23h31</span></em></p>', 1447626594, 0, 118, 68),
(11964, '', 1447626841, 0, 118, 153),
(11965, '', 1447626990, 0, 118, 74),
(11966, '<p>Tu t cru sur facebook ou quoi?</p>\r\n', 1447627679, 0, 62, 153),
(11967, '<p>Akashi</p>\r\n', 1447627682, 0, 93, 132),
(11968, '<p>Oui moi ausqi alla 2 min en avancz</p>\r\n', 1447627785, 0, 228, 153),
(11969, '', 1447628009, 0, 118, 153),
(11970, '<p>Merci</p>\r\n', 1447628159, 0, 194, 153),
(11971, '					', 1447628161, 0, 118, 68),
(11972, '', 1447629297, 0, 74, 51),
(11973, '<p>Merci mecton :D</p>\r\n\r\n<p>Je vais le corriger celui la il va voir ! A frimer avec son gros canon...</p>\r\n', 1447629862, 0, 166, 218),
(11974, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447630301, 0, 233, 13),
(11975, '<p>Voil&agrave; tout est dans le titre .</p>\r\n\r\n<p>Vu qu&#39;on est pas autoriser a avoir des dc&#39;s , le fait de suprimer notre compte serait int&eacute;ressant si jamais il nous plait pas finalement ou on veut changer de classe si on peu appeler &ccedil;a une classe (pirate , r&eacute;volutionnaire , marine) .</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447631782, 0, 234, 302),
(11976, '<p>oui tr&egrave;s bon jeu avec un design tr&egrave;s beau et beaucoup d&#39;events qui sont tr&egrave;s accessibles je trouve</p>\r\n\r\n<p>habituellement je me lasse de ce type de jeu mais pour le moment j&#39;accroche&nbsp;</p>\r\n\r\n<p>sinon dommage qu&#39;il n&#39;y ai plus les pages de l&#39;ancien OPRPG car il y avait beaucoup de conseils, j&#39;esp&egrave;re retrouver tout &ccedil;a sur cette nouvelle version</p>\r\n\r\n<p>pour en revenir &agrave; l&#39;essentiel, barbe noire approche, vous comptez mettre qui en face?</p>\r\n', 1447651822, 0, 195, 253),
(11977, '', 1447652181, 0, 74, 233),
(11978, '', 1447652245, 0, 118, 233),
(11979, '<blockquote>\r\n<p><strong><em>Citation de Kalivia</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>trafalgar21 &gt; Dans l&#39;argriculture on appelle pas &ccedil;a un salaire. Mais bon je ne suis pas en ES je ne pourrais pas te dire et j&#39;ai oubli&eacute; mes cours de SES de seconde x) Perso mon p&egrave;re est agriculteur et je peux te dire que c&#39;est un m&eacute;tier vraiment d&eacute;favoris&eacute; quand tu es un tout petit agriculteur &agrave; ton compte. Apr&egrave;s si t&#39;es dans une grosse boite d&#39;agriculture c&#39;est autre chose. En tout cas quand tu es &agrave; ton compte c&#39;est tr&egrave;s difficile car ton &quot;salaire&quot; va d&eacute;pendre de tes r&eacute;coltes, et les r&eacute;coltes d&eacute;pendent du temps. De plus quand ton mat&eacute;riel tombe en panne... bah tu dois racheter ou r&eacute;parrer :s Sa co&ucirc;te ! Si tu veux partir dans l&#39;argriculture, qui est un beau m&eacute;tier, je te conseille vraiment de travailler pour quelqu&#39;un comme &ccedil;a tu as ton petit salaire tout les mois tranquille, et si du matos tombe en panne c&#39;est sur le coup de ton patron :p</strong></p>\r\n</blockquote>\r\n\r\n<p><strong>Je le sais tout sa, mon p&egrave;re est agriculteur (lui aussi) et je sais que c&#39;est un m&eacute;tier dur est ou l&#39;ont gagne tr&egrave;s peu (avec mon fr&egrave;re on avait compt&eacute; et une fois en &eacute;t&eacute; mon p&egrave;re a travailler 15 heures dans une journ&eacute;e et c&#39;&eacute;tait se que faisait mon prof de math en 1 semaine...) c&#39;est un m&eacute;tier qui me donne &agrave; la fois envie (car j&#39;aime bien la conduite et les annimaux) mais c&#39;est aussi un m&eacute;tier qui me donne pas trop envie (car le nombre d&#39;heure que tu peux faire en 1 semaine en &eacute;t&eacute; est tr&egrave;s impr&eacute;ssionnant x) et tous sa pour le peu d&#39;argent que gagneras &agrave; la fin du mois (sans compt&eacute; les finances!)&nbsp; </strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447657536, 0, 217, 76),
(11980, '<p>malheuresement legerement moisi</p>\r\n', 1447659071, 1, 79, 178),
(11981, '', 1447668786, 0, 118, 1),
(11982, '<p><span style="font-family:georgia,serif">Riyuma, j&#39;l&#39;adore se mec&nbsp;<img alt="yes" src="http://minegame.fr/assets/js/ckeditorVIP/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" /></span></p>\r\n', 1447668830, 0, 93, 51),
(11983, '<p>Bonne id&eacute;e !&nbsp;<img alt="yes" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" /></p>\r\n\r\n<p>Je rajouterais &ccedil;a alors. Merci de ta proposition.</p>\r\n', 1447668839, 0, 234, 1),
(11984, '<p>Bonne id&eacute;e !</p>\r\n\r\n<p>Je rajouterais &ccedil;a, merci !</p>\r\n', 1447668874, 0, 215, 1),
(11985, '<p>2 bonnes id&eacute;es qui seront implant&eacute;es ! Merci.</p>\r\n<p></p><em><span style="font-size:8px">Édité par Dumbeldor le 16/11/2015 à 11h15</span></em></p>', 1447668918, 0, 198, 1),
(11986, '<p>Ah proposer beaucoup de rang diff&eacute;rent pourquoi pas. Mais permettre d&#39;en cr&eacute;er je sais pas. Car certain rang son li&eacute; &agrave; un &#39;&#39;pouvoir&#39;&#39; par exemple les bras droits peuvent mod&eacute;rer le forum.&nbsp;</p>\r\n\r\n<p>Je prend e&#39; compte ton id&eacute;e. Mais si on l&#39;int&egrave;gre sera pas pour maintenant.&nbsp;</p>\r\n\r\n<p>Merci&nbsp;</p>\r\n', 1447669060, 0, 200, 1),
(11987, '<p>Moi, ma team vs Barbe Noire.</p>\r\n\r\n<p><a href="http://optc.github.io/damage/#/transfer/D253:60,322:42,232:41,324:41,20:60,390:38C1,8B0D0O0L0G0S100H">http://optc.github.io/damage/#/transfer/D253:60,322:42,232:41,324:41,20:60,390:38C1,8B0D0O0L0G0S100H</a></p>\r\n\r\n<p>Pour le 30 Sta seulement. Je vais essayer sans gemmes. Le 40, trop difficile pour moi.</p>\r\n', 1447669480, 0, 195, 231),
(11988, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447669550, 0, 235, 13),
(11989, '<p>Hum hum !</p>\r\n', 1447669664, 0, 157, 231),
(11990, '<p>.</p>\r\n', 1447669825, 0, 118, 231),
(11991, '<p>906</p>\r\n', 1447669852, 0, 78, 231),
(11992, '<p>Inscrit moi <img alt="wink" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" /></p>\r\n', 1447669864, 0, 93, 223),
(11993, '<p><em><font color="#ffd700">972&nbsp;&nbsp;&nbsp;</font></em></p>\r\n', 1447670113, 0, 78, 223);
INSERT INTO `forums_topics_messages` (`id`, `message`, `date_time`, `is_block`, `id_forums_topics`, `id_users`) VALUES
(11994, '<p><span style="color:#000080"><em>Prends un&nbsp;escagophone reli&eacute;&nbsp;&agrave; plusieurs&nbsp;hauts parleurs et prononce ce discours :</em></span></p>\r\n\r\n<p><span style="color:#000080">Moi, <strong>Rising Crash, le vice amiral fracasseur de la Marine</strong>, r&eacute;put&eacute; pour des <strong>arrestations brutale</strong> des tous ses vauriens de pirate fait mon <strong>entr&eacute;&nbsp;dans l&#39;ar&egrave;ne</strong> qu&#39;est Minegame.</span></p>\r\n\r\n<p><span style="color:#000080">Ancien membre la V2, dont je me tairais sur le pseudo, je fait mon retour quand j&#39;ai appris que tous ses forbans allait venir sur ce site, <strong>il &eacute;tait de mon devoir </strong>de venir ici et <strong>fracasser leurs os sous mes poings</strong>.&nbsp;</span></p>\r\n\r\n<p><span style="color:#000080">Alors tenez vous bien bande de contrebandier, <strong>votre heure vas vite arriver</strong>.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&Eacute;dit&eacute; par Rising Crash le 16/11/2015 &agrave; 11h35</em></p>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par Rising Crash le 16/11/2015 à 11h36</span></em></p>', 1447670115, 0, 236, 102),
(11995, '<p>&nbsp;</p>\r\n\r\n<p>On recrute ^^)&nbsp;&nbsp;&nbsp; tu sais pourquoi on recrute&nbsp; ?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; car&nbsp; dans la&nbsp; vie&nbsp;&nbsp; ya&nbsp; le pauvre et le riche&nbsp;&nbsp; y a&nbsp; le&nbsp; haut&nbsp; et&nbsp;&nbsp; ya le bas&nbsp; et ces deux chose&nbsp; sont diffrentes de&nbsp; toi&nbsp;&nbsp; car tu est royal&nbsp;</p>\r\n\r\n<p>voilas tu sais mtn ^^)&nbsp;</p>\r\n\r\n<p>bon tu vien ? ^^)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&Eacute;dit&eacute; par King le 16/11/2015 &agrave; 12h03</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&Eacute;dit&eacute; par King le 16/11/2015 &agrave; 12h03</em></p>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par King le 16/11/2015 à 12h27</span></em></p>', 1447670973, 0, 237, 223),
(11996, '<h1>Lel</h1>\r\n<p></p><em><span style="font-size:8px">Édité par King le 16/11/2015 à 11h53</span></em></p>', 1447671227, 0, 236, 223),
(11997, '', 1447672988, 0, 118, 74),
(11998, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447673176, 0, 238, 13),
(11999, '<p>ouai pareil je suis toujours l&agrave;, moi j&#39;ai &eacute;t&eacute; choquer pour l&#39;ancien topic<img alt="crying" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/cry_smile.png" style="height:23px; width:23px" title="crying" />&nbsp;le pauvre disparaitre comme &ccedil;a</p>\r\n', 1447674221, 0, 195, 202),
(12000, '<p>904</p>\r\n', 1447674453, 0, 78, 74),
(12001, '<p>Je suis le 199 &egrave;me inscrit :D</p>\r\n', 1447674725, 0, 188, 199),
(12002, '<p>j&#39;avoue c&#39;est gal&egrave;re o_O perso je suis CONTRE</p>\r\n', 1447675090, 0, 176, 178),
(12003, '', 1447676638, 0, 118, 74),
(12004, '<p>Comme on est plusieurs &agrave; en faire, je pense qu&#39;il serait judicieux de dire sur quoi on travaille pour &eacute;viter les doublons.</p>\r\n\r\n<p>Moi, j&#39;ai fait baggy et pandaman. Et je suis en train de faire luffy.</p>\r\n', 1447678106, 0, 239, 63),
(12005, '<blockquote>\r\n<p><strong><em>Citation de Zanketsu</em></strong></p>\r\n\r\n<p>On peut pas garder les points de l&#39;ancienne version ? :x</p>\r\n\r\n<p>&nbsp;</p>\r\n<em>&Eacute;dit&eacute; par Zanketsu le 15/11/2015 &agrave; 23h31</em>\r\n\r\n<p>&nbsp;</p>\r\n</blockquote>\r\n\r\n<p>Vu que je ne sais pas combien de points vous aviez avant, non ^^</p>\r\n', 1447678419, 0, 118, 138),
(12006, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447679658, 0, 240, 13),
(12007, '<blockquote>\r\n<p><u><strong><em>Citation de JasonKai_</em></strong></u></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ouai pareil je suis toujours l&agrave;, moi j&#39;ai &eacute;t&eacute; choquer pour l&#39;ancien topic<img alt="crying" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/cry_smile.png" style="height:23px; width:23px" title="crying" />&nbsp;le pauvre disparaitre comme &ccedil;a</p>\r\n</blockquote>\r\n\r\n<p>Avec le temps ce topic sera encore mieux&nbsp;<img alt="wink" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" /></p>\r\n', 1447679928, 0, 195, 1),
(12008, '<p><strong><em>Tr&egrave;s honn&ecirc;tement, j&#39;aime pas. &nbsp;L&#39;aure version de OPRPG (celle de Max, tout &ccedil;a tout &ccedil;a) &eacute;tait mieux sur quasiment tout les plans (avatars, et de tr&egrave;s tr&egrave;s loin, histoire, m&ecirc;me si je suis conscient que &ccedil;a va se d&eacute;velloper et design g&eacute;n&eacute;ral du site).</em></strong></p>\r\n\r\n<p><strong><em>Effectivement, si c&#39;est deux projets diff&eacute;rents, je ne vois pas de probl&egrave;me &agrave; ce site tant qu&#39;on peut AU MOINS garder l&#39;autre or je n&#39;ai trouv&eacute; aucun moyens d&#39;aller sur l&#39;autre (c&#39;est peut-&ecirc;tre moi qui ait mal cherch&eacute; ou mal lu certaines informations, je compte sur vous pour m&#39;&eacute;clairer).</em></strong></p>\r\n\r\n<p><strong><em>Il n&#39;emp&ecirc;che que, comme dit pr&eacute;c&eacute;demment, c&#39;est du &quot;niquage de jeu&quot;. &nbsp;L&#39;autre &eacute;tait pas mal, celui-ci est d&eacute;geu. &nbsp;Je suis conscient qu&#39;il va s&#39;am&eacute;liorer et tout mais j&#39;ai du mal &agrave; avoir de l&#39;espoir&nbsp;sur un site fond&eacute; sur ces bases-l&agrave;.</em></strong></p>\r\n\r\n<p><strong><em>Bref, je ne dis pas &ccedil;a pour vous d&eacute;courager, loin de cela, c&#39;est une bonne initiative. Si on peut retrouver l&#39;autre version, c&#39;est bien, c&#39;est pas handicapant, si on ne peut la retrouver c&#39;est clairement une destruction d&#39;un site qui n&#39;&eacute;tait quand m&ecirc;me pas si mal.</em></strong></p>\r\n\r\n<p><strong><em>Voil&agrave;, merci, en esp&eacute;rant que vous m&#39;expliquerez des choses si je me trompe sur certains points, il n&#39;emp&ecirc;che que mon impression g&eacute;n&eacute;rale est tr&egrave;s mauvaise.</em></strong></p>\r\n<p></p><em><span style="font-size:8px">Édité par Smokerboom le 16/11/2015 à 15h15</span></em></p>', 1447683273, 0, 82, 313),
(12009, '<p>Je vais &ecirc;tre honnete.</p>\r\n\r\n<p><span style="color:#000000">C&#39;est moche.</span></p>\r\n', 1447683570, 0, 82, 102),
(12010, '<p>903</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447683941, 0, 78, 153),
(12011, '<p><span style="font-family:georgia,serif">Vous le faites expr&egrave;s non? Premi&egrave;rement Omar va sortir une v2.5 (la v2 RAZ+ modifications) donc One Piece Rpg sera de nouveau disponible.</span></p>\r\n\r\n<p><span style="font-family:georgia,serif">Si vous voulez vraiment compar&eacute; deux jeux, demander aux anciens la t&ecirc;te du site de Max au bout de 24h, beh c&#39;&eacute;tait pas la joie. Pour le fait de ne pas avoir de &quot;r&eacute;el&quot; avatar avec les personnages One Piece c&#39;est en parti pour pouvoir fonctionner avec un syst&egrave;me Free To Play, pouvoir customiser son avatar en achetant pourquoi pas des tenus in&eacute;dites en allopass. De plus, comme d&eacute;j&agrave; expliqu&eacute;, ici la logique du manga est respect&eacute;, je suis Riyuma et non Ace ou Luffy, comme tout le monde. Par contre, les personnages du manga serons normalement dans la partie &quot;histoire&quot; du jeu avec des interactions.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447684060, 0, 82, 51),
(12012, '<p><em><strong>Si la version 2.5 de OPRPG pouvait sortir, je ne vois aucun probl&egrave;me &agrave; l&#39;apparition de celui-ci. &nbsp;Il peut s&#39;am&eacute;liorer tranquillement. &nbsp;Apr&egrave;s, j&#39;ai un peu peur que ce jeu se transforme en un simple plagiat de &quot;Shinobi&quot; (jeu sur Naruto)</strong></em></p>\r\n', 1447684522, 0, 82, 313),
(12013, '<p><span style="font-family:georgia,serif">Bonsoir / Bonjour ,</span></p>\r\n\r\n<p><span style="font-family:georgia,serif">je vois beaucoup de gens qui critique sans comprendre et qui se pose pas mal de questions. Je vous propose de poser vos questions , dans le <strong>respect,</strong>&nbsp;pour que le staff puisse vous y r&eacute;pondre directement ici.</span></p>\r\n\r\n<p><span style="font-family:georgia,serif"><span style="color:#FF0000"><strong>Avec ceci, merci de faire attention aux questions poser en masse sur le t&#39;chat.</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par Riyuma le 16/11/2015 à 15h40</span></em></p>', 1447684746, 0, 241, 51),
(12014, '<p>Il y aura norrmalement des centaines d&#39;items provenant&nbsp;d&#39;OP.</p>\r\n', 1447685010, 0, 82, 51),
(12015, '<p>J&#39;aimerai connaitre une date approximative pour le lancement de la V2.5 officiel.</p>\r\n', 1447685028, 0, 241, 175),
(12016, '<p><span style="font-family:georgia,serif">Il n&#39;y a aucun rapport entre ici et la v2.5, mon avis perso : moins d&#39;une semaine</span></p>\r\n', 1447685160, 0, 241, 51),
(12017, '', 1447685210, 0, 118, 138),
(12018, '<p><em>Okok, merci.</em></p>\r\n', 1447685282, 0, 241, 175),
(12019, '<p><a href="http://minegame.fr/forum/t/191">http://minegame.fr/forum/t/191</a></p>\r\n', 1447685316, 0, 241, 147),
(12020, '<blockquote>\r\n<p><u><strong><em>Citation de RayaneDz</em></strong></u></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>La cr&eacute;ation de personnage devrait changer franchement j&#39;aime pas du tout ces petits perso a&nbsp;l&#39;ancienne. Soit am&eacute;liorer la cr&eacute;ation de personnage pour que sa ressemble &agrave; un manga/anime ou remettre les persos de one piece comme oprpg apres c&#39;est mon avis&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pour le gameplay:</p>\r\n\r\n<p>je suis sur iPhone et ca me tente pas de dire toutes mes id&eacute;es (je suis paresseux) &Ccedil;a serait bien de sortir un minimum de gameplay petit a petit pour la v1 comme ca ont attendra pas longtemps pour un gros gameplay, il y&#39;aura moins de joueurs et franchement le sortir t&ocirc;t serait un avantage il y&#39;a plus de 300 personnes qui sont sur ce site (membres et visiteurs)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n</blockquote>\r\n\r\n<p>Pour les personnages on recherche des personnes habile en pixel art ou alors en dessin style manga motiv&eacute;. ;)</p>\r\n\r\n<p>Sinon le jeu sortira petit par petit oui. Mais quand les petits bout seront pr&ecirc;t ;)</p>\r\n\r\n<p>PS:Merci de vos id&eacute;es et merci Pev de faire un tableau r&eacute;capitulatif c&#39;est cool.</p>\r\n', 1447685542, 0, 191, 1),
(12021, '<blockquote>\r\n<p><u><strong><em>Citation de Smokerboom</em></strong></u></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><strong>Si la version 2.5 de OPRPG pouvait sortir, je ne vois aucun probl&egrave;me &agrave; l&#39;apparition de celui-ci. &nbsp;Il peut s&#39;am&eacute;liorer tranquillement. &nbsp;Apr&egrave;s, j&#39;ai un peu peur que ce jeu se transforme en un simple plagiat de &quot;Shinobi&quot; (jeu sur Naruto)</strong></em></p>\r\n</blockquote>\r\n\r\n<p>Si on t&#39;&eacute;coute on peut aussi dire que oprpg est une vulgaire copie de WoN&nbsp;<img alt="surprise" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/omg_smile.png" style="height:23px; width:23px" title="surprise" /></p>\r\n', 1447685748, 0, 82, 1),
(12022, '', 1447686443, 0, 118, 1),
(12023, '<p>Ah mince... Je vais me remettre Marine&nbsp;<img alt="angel" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/angel_smile.png" style="height:23px; width:23px" title="angel" /></p>\r\n', 1447686525, 0, 188, 1),
(12024, '<p>dbaravecyhuz c&#39;est pas mal nan ?&nbsp;<img alt="laugh" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/teeth_smile.png" style="height:23px; width:23px" title="laugh" /></p>\r\n', 1447687186, 0, 104, 158),
(12025, '<p>Bah vient chez nous :p</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447688734, 0, 236, 67),
(12026, '<p>Fini les inscriptions ^^&nbsp;</p>\r\n\r\n<p><strong><span style="color:#DAA520">Riyuma gagne !</span></strong></p>\r\n\r\n<p><strong><span style="color:#DAA520">Neptune !</span></strong></p>\r\n\r\n<p><img src="http://minegame.fr/assets/img/avatarsJoueurs/208.png" /></p>\r\n\r\n<p>Vs</p>\r\n\r\n<p><img src="http://minegame.fr/assets/img/avatarsJoueurs/243.png" /></p>\r\n\r\n<p><strong><span style="color:#DAA520">Hik@ru !</span></strong></p>\r\n\r\n<p><strong><span style="color:#DAA520">Vs</span></strong></p>\r\n\r\n<p><img src="http://minegame.fr/assets/img/avatarsJoueurs/138.png" /></p>\r\n\r\n<p><strong><span style="color:#FF8C00">HeraSan !</span></strong></p>\r\n', 1447689545, 0, 93, 67),
(12027, '<p><em>Comme je l&#39;ai d&eacute;j&agrave; dit sur le tchat, certains membres ont des probl&egrave;mes de d&eacute;connection fr&eacute;quente. On ne fait rien, on change de page et on est d&eacute;connect&eacute;. Voil&agrave; :).</em></p>\r\n', 1447689649, 0, 242, 244),
(12028, '<p><strong>Je l&#39;ai pas dit, mais &ccedil;a se passera sur plusieurs&nbsp;jours, ou semaine (m&ecirc;me mois :x), c&#39;est votre fa&ccedil;on de jouer qui d&eacute;terminera le temps du jeu ^^</strong></p>\r\n', 1447689855, 0, 216, 67),
(12029, '<p><a href="http://www.shinobi.fr/index.php?page=inscription">http://www.shinobi.fr/index.php?page=inscription</a>&nbsp;VS&nbsp;<a href="http://minegame.fr/users/create">http://minegame.fr/users/create</a></p>\r\n\r\n<ol>\r\n	<li>Les chiffres sont les m&ecirc;me (1. Corps, 2. Coupe ect...)</li>\r\n	<li>L&#39;ordre des couleurs aussi (Noir, Marron, Rouge, Orange, Jaune, Vert, Bleu, Blanc et Rose)</li>\r\n	<li>On as le choix entre 3 factions. Si on mets random on gagne 1000 Ryos/Berrys</li>\r\n	<li>Shinobi &agrave; plus de teinte de peau.</li>\r\n	<li>Y&#39;as les m&ecirc;me coupes. (Dans le m&ecirc;me ordre)</li>\r\n	<li><span style="line-height:1.6">Yeux identiques.</span></li>\r\n	<li><span style="line-height:1.6">Et les bouches y&#39;en as plus sur Shinobi.</span>&nbsp;<span style="line-height:1.6">Apr&egrave;s coicidence, pourquoi pas</span></li>\r\n</ol>\r\n\r\n<p><img alt="531732Blondi.png" src="http://www.hostingpics.net/thumbs/53/17/32/mini_531732Blondi.png" /><img alt="971120Heal.png" src="http://www.hostingpics.net/thumbs/97/11/20/mini_971120Heal.png" /><img alt="883862Rising.png" src="http://www.hostingpics.net/thumbs/88/38/62/mini_883862Rising.png" />&nbsp;J&#39;ai rien dit, vous avez juste enlev&eacute; des ombres et rajout&eacute; un truc gris.</p>\r\n\r\n<p>Apr&egrave;s c&#39;est que la page d&#39;inscription... Sinon GG les gars.</p>\r\n', 1447690746, 0, 82, 102),
(12030, '<p>Faut rajouter:</p>\r\n\r\n<p>-manger 5 fruits et l&eacute;gumes par jour</p>\r\n\r\n<p>-aimer la tarte aux pommes</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447691253, 0, 75, 271),
(12031, '<p>J&#39;ai fais quoi pour etre a -9 messages ? Et pour pouvoir poster qu&#39;un message par heure ?</p>\r\n', 1447691261, 0, 188, 199),
(12032, '<p>C&#39;est normal pour le message par heure, mais pour le moins j&#39;sais pas :/</p>\r\n', 1447691736, 0, 188, 67),
(12033, '<p>Inscris moi^^</p>\r\n', 1447692474, 0, 216, 71),
(12034, '<p>Neptune</p>\r\n', 1447692541, 0, 93, 71),
(12035, '', 1447692718, 0, 118, 138),
(12036, '<p>Te remettre marine rien que pour rester avec moi... trop mignon &ccedil;a x)</p>\r\n', 1447692820, 0, 188, 138),
(12037, '<blockquote>\r\n<p><strong><em>Citation de HeraSan</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Te remettre marine rien que pour rester avec moi... trop mignon &ccedil;a x)</p>\r\n</blockquote>\r\n\r\n<p>Mais il a toujours pas fait xD J&#39;dis &ccedil;a, j&#39;dit rien ^^</p>\r\n', 1447692897, 0, 188, 67),
(12038, '<p>HeraSan est trop beau gosse j&#39;trouve... pas vous ?</p>\r\n', 1447692952, 0, 93, 138),
(12039, '<p><strong>Bon... Y&#39;a qui en Marine l&agrave; ? Personne pour animer ? Parce que l&agrave;, c&#39;est le calme absolue ._.</strong></p>\r\n\r\n<p><strong>Donc, mettez tous un&nbsp;<img alt="yes" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" />&nbsp;ou un &quot;Je suis l&agrave;&quot; (ou m&ecirc;me les deux ._.) pour montrez que vous &ecirc;tes l&agrave; !</strong></p>\r\n\r\n<p><strong><img alt="yes" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" />&nbsp;Moi, je suis l&agrave; !&nbsp;<img alt="yes" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" /></strong></p>\r\n', 1447693170, 0, 243, 67),
(12040, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447693373, 0, 244, 13),
(12041, '<p>salut<br />\r\n&nbsp;</p>\r\n', 1447694182, 0, 106, 286),
(12042, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447694406, 0, 245, 13),
(12043, 'wsh tlm c le t''chat', 1447694499, 0, 246, 153),
(12044, '<p>ok<br />\r\n&nbsp;</p>\r\n', 1447694693, 0, 246, 78),
(12045, '<p><em>Inaaactivit&eacute; du site</em></p>\r\n', 1447695473, 0, 128, 94),
(12046, '<blockquote>\r\n<p><strong><em>Citation de Ushio</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><strong>sa&euml;l est un homme</strong></h1>\r\n</blockquote>\r\n\r\n<p>&Ccedil;a a un pseudo de meuf et &ccedil;a parle</p>\r\n', 1447695509, 0, 118, 136),
(12047, '<p>je vous annonce que nous recruton<br />\r\n&nbsp;</p>\r\n', 1447695724, 0, 247, 78),
(12048, '<p>ma qu&eacute; ?</p>\r\n', 1447695906, 0, 118, 74),
(12049, '<p>Je suis l&agrave; xD.</p>\r\n', 1447695943, 0, 243, 244),
(12050, '<blockquote>\r\n<p><strong><em>Citation de Dumbeldor</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>\r\n<p><strong><em>Citation de Smokerboom</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><strong>Si la version 2.5 de OPRPG pouvait sortir, je ne vois aucun probl&egrave;me &agrave; l&#39;apparition de celui-ci. &nbsp;Il peut s&#39;am&eacute;liorer tranquillement. &nbsp;Apr&egrave;s, j&#39;ai un peu peur que ce jeu se transforme en un simple plagiat de &quot;Shinobi&quot; (jeu sur Naruto)</strong></em></p>\r\n</blockquote>\r\n\r\n<p>Si on t&#39;&eacute;coute on peut aussi dire que oprpg est une vulgaire copie de WoN&nbsp;<img alt="surprise" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/omg_smile.png" style="height:23px; width:23px" title="surprise" /></p>\r\n</blockquote>\r\n\r\n<p><strong><em>Effectivement. &nbsp;Et ce n&#39;est pas bien, c&#39;est pour &ccedil;a que je vous conseille simplement de vous &eacute;carter d&#39;un site comme Shinobi, de cr&eacute;er un jeu un peu diff&eacute;rent. &nbsp;Je ne pense pas que, parce que OPRPG ressemble &agrave; WoN, ce OPRPG-ci doit ressembler &agrave; Shinobi.</em></strong></p>\r\n\r\n<p><strong><em>(Je dis &ccedil;a en toute sympathie, hein, libre &agrave; vous de faire comme Shinobi mais je vous donne mon avis personnel).</em></strong></p>\r\n', 1447696028, 0, 82, 313),
(12051, '<p>Moi je vous soutient je suis avec vous je sais que vous etes motiv&eacute;s !</p>\r\n\r\n<p>Ma question : approximativement, le jeu devrait etre mis en place quand ? Si vous ne savez pas c est pas grave. Mais je veux juste demander&nbsp;si c est pour 1 semaine ? Un mois ? Deux mois ? Etc...merci</p>\r\n', 1447696303, 0, 241, 218),
(12052, '', 1447696345, 0, 118, 153),
(12053, '<p>Hik@ru</p>\r\n', 1447696459, 0, 93, 153),
(12054, '', 1447696619, 0, 118, 136),
(12055, '<p><strong><em>Je suis l&agrave;. &nbsp;Alors &ccedil;a va.</em></strong></p>\r\n', 1447697035, 0, 243, 313),
(12056, '<p>Wsh xD</p>\r\n', 1447697506, 0, 106, 234),
(12057, '', 1447697668, 0, 118, 234),
(12058, '<p>salut<br />\r\n&nbsp;</p>\r\n', 1447697982, 0, 246, 78),
(12059, '<p>Pas faux S17 et Smokerboom :/</p>\r\n', 1447697984, 0, 82, 234),
(12060, '<pre>\r\n<span class="marker">test gsgffsfstss hsts ddkjdjidjdj jdfhuifgyrz dhhdefuegfkfkue fjeuif</span></pre>\r\n\r\n<p>&nbsp;</p>\r\n', 1447698030, 1, 246, 314),
(12061, '<h2><span style="background-color:#00FF00">mdr mantala et un mouton sont pere et un book</span></h2>\r\n\r\n<hr />\r\n<hr />\r\n<p><br />\r\n&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par DArcK ANgel le 16/11/2015 à 19h23</span></em></p>', 1447698045, 1, 246, 78),
(12062, '<pre>\r\n<span class="marker">ssss</span></pre>\r\n', 1447698051, 1, 246, 314),
(12063, '<p>zzzzz<br />\r\n&nbsp;</p>\r\n', 1447698069, 0, 246, 78),
(12064, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447698100, 0, 248, 13),
(12065, '<p>un jour un chat</p>\r\n', 1447698383, 0, 79, 314),
(12066, '<p>0782222138</p>\r\n', 1447698489, 1, 246, 314),
(12067, '<p>HeraSan</p>\r\n', 1447698688, 0, 93, 68),
(12068, '<p>ok<br />\r\n&nbsp;</p>\r\n', 1447698779, 0, 246, 78),
(12069, '<p>Je suis l&agrave;&nbsp;<img alt="cheeky" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/tongue_smile.png" style="height:23px; width:23px" title="cheeky" /></p>\r\n', 1447699461, 0, 243, 1),
(12070, '<p>Voil&agrave; je suis de retour dans la Marine !</p>\r\n', 1447699494, 0, 188, 1),
(12071, '<p><span style="color:#696969"><em>Bug d&eacute;j&agrave; pr&eacute;sent aussi sur la &quot;v2&quot;. Donc ca vient peut &ecirc;tre du serveur.</em></span></p>\r\n', 1447699621, 0, 242, 72),
(12072, '', 1447699702, 0, 118, 171),
(12073, '<p>902</p>\r\n', 1447699723, 0, 78, 171),
(12074, '<p>sa par en couille la xD</p>\r\n', 1447699759, 0, 79, 171),
(12075, '<p><strong>Hik@ru&nbsp;</strong></p>\r\n', 1447699817, 0, 93, 171),
(12076, '<p><img alt="" src="javascript:alert(1);" /></p>\r\n', 1447699911, 1, 249, 2),
(12077, '<p>Bonjour tout le monde :D vous avez pass&eacute; une bonne journ&eacute;e ?</p>\r\n', 1447700028, 0, 188, 116),
(12078, '<p>Hik@ru</p>\r\n', 1447700074, 0, 93, 116),
(12079, '<p>On a des pistes sur la cause de ce bug et on est en train de bien tester le correctif pour &eacute;viter d&#39;avoir plus de probl&egrave;mes s&#39;il n&#39;est pas bon.</p>\r\n', 1447700229, 0, 242, 2),
(12080, '<p>Tu utilises quel navigateur ?</p>\r\n', 1447700292, 0, 208, 2),
(12081, '<p>#noob</p>\r\n', 1447700328, 1, 249, 1),
(12082, '', 1447700368, 0, 118, 2),
(12083, '<p>Bien et toi ?</p>\r\n', 1447700445, 0, 188, 1),
(12084, '', 1447700464, 0, 118, 1),
(12085, '<p><strong>Hik@ru</strong></p>\r\n', 1447700488, 0, 93, 1),
(12086, '<p>901</p>\r\n', 1447700506, 0, 78, 1),
(12087, '<p>Comment on supprime son compte?</p>\r\n', 1447700608, 0, 241, 167),
(12088, '<blockquote>\r\n<p><u><strong><em>Citation de Kira Kazuto</em></strong></u></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="color:#696969"><em>Bug d&eacute;j&agrave; pr&eacute;sent aussi sur la &quot;v2&quot;. Donc ca vient peut &ecirc;tre du serveur.</em></span></p>\r\n</blockquote>\r\n\r\n<p>Bug pr&eacute;sent sur la V2 depuis toujours ? Ou apr&egrave;s le transfert sur mon serveur ?</p>\r\n', 1447700634, 0, 242, 1),
(12089, '<p>Maintenant, j&#39;peut vous le dire, il &eacute;tait chez les revolutionnaires pour trouvez des informations comprometantes (Pas sur que &ccedil;a s&#39;&eacute;crive comme &ccedil;a...).</p>\r\n\r\n<p>J&#39;&eacute;spere qu&#39;il en a trouv&eacute; &eacute;_&egrave;</p>\r\n', 1447701425, 0, 188, 67),
(12090, '<p>Un rapport un rapport ! :D</p>\r\n', 1447702489, 0, 188, 116),
(12091, '<p>je suis pas la :x</p>\r\n', 1447702687, 0, 243, 116),
(12092, '<p>Hik@ru</p>\r\n', 1447702706, 0, 93, 193),
(12093, '<p>Faut applaudir le grand discour de Riri (clap)</p>\r\n', 1447702813, 0, 75, 158),
(12094, '<p>voici l&#39;&eacute;quipe que je vais surement mettre</p>\r\n\r\n<p>[URL=http://www.hostingpics.net/viewer.php?id=779232OPTCQCK.png][IMG]http://img15.hostingpics.net/thumbs/mini_779232OPTCQCK.png[/IMG][/URL]</p>\r\n\r\n<p>j&#39;esp&egrave;re pouvoir faire le 40 stamina</p>\r\n', 1447702877, 0, 195, 253),
(12095, '<p><img alt="" src="http://www.galeriegif.com/gif-wtf/gif-wtf-2.gif" style="height:240px; width:320px" /></p>\r\n', 1447703032, 0, 74, 158),
(12096, '<p>Destinity t&#39;es titi?????</p>\r\n', 1447703169, 0, 188, 155),
(12097, '<p>hik@ru</p>\r\n', 1447703212, 0, 93, 105),
(12098, '<p>j&#39;veux vendre du r&ecirc;ve&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="color:#FFFFFF">ou du cauchemard&nbsp;</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&Eacute;dit&eacute; par Yhuzaki. le 16/11/2015 &agrave; 20h48</em></p>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style="font-size:8px">Édité par Yhuzaki. le 16/11/2015 à 20h48</span></em></p>', 1447703218, 0, 217, 158),
(12099, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447703290, 0, 250, 13),
(12100, '<p>Ouais rejoin nous on va les fracass&eacute; a plusieurs :D</p>\r\n', 1447703604, 0, 236, 116),
(12101, '<p>Je peux dire que leurs forum est super actif :S</p>\r\n', 1447703696, 0, 188, 1),
(12102, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447704051, 0, 251, 13),
(12103, '', 1447705344, 0, 118, 171),
(12104, '<p>900 ezzzz</p>\r\n', 1447705357, 0, 78, 171),
(12105, '', 1447705426, 0, 118, 136),
(12106, '', 1447705540, 0, 118, 171),
(12107, '<blockquote>\r\n<p><strong><em>Citation de Dumbeldor</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Hik@ru</strong></p>\r\n</blockquote>\r\n\r\n<p>#CopyRightSpotted xD</p>\r\n', 1447705590, 0, 93, 171),
(12108, '<p>Han ce serait ouf de faire une emission hebdomadaire avec paandaman :D un mec jouerait le role de pandaman et on pourrait lui pos&eacute; des questions et tout :D</p>\r\n', 1447706346, 0, 188, 116),
(12109, '', 1447706715, 0, 118, 136),
(12110, '', 1447706866, 0, 118, 171),
(12111, '<blockquote>\r\n<p><strong><em>Citation de Eyver</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>moi prof</p>\r\n</blockquote>\r\n\r\n<p>De quoi ? xD</p>\r\n', 1447706966, 0, 217, 171),
(12112, '', 1447707072, 0, 118, 138),
(12113, '', 1447707129, 0, 118, 171),
(12114, '<p>J&#39;veux bien faire une anim&#39; avec&nbsp;Pandaman o&ugrave; je pourrais repondre aux questions poses xD</p>\r\n', 1447707356, 0, 188, 67),
(12115, '', 1447707480, 0, 118, 74),
(12116, '<p>Putain j&#39;ai des id&eacute;es qui fuse comme ca en ce moment O.O</p>\r\n', 1447707600, 0, 188, 116),
(12117, '<p><span style="color:#FFA500"><em>En m&ecirc;me temps, vu le site...</em></span></p>\r\n', 1447707618, 0, 128, 125),
(12118, '<p>dsf</p>\r\n', 1447713559, 0, 239, 1),
(12119, '<p>df</p>\r\n', 1447713565, 0, 81, 1),
(12120, '<p>sdf</p>\r\n', 1447713570, 0, 217, 1),
(12121, '<p>df</p>\r\n', 1447713576, 0, 243, 1),
(12122, '<p>df</p>\r\n', 1447713582, 0, 118, 1),
(12123, '<p>df</p>\r\n', 1447713587, 0, 236, 1),
(12124, '<p>df</p>\r\n', 1447713941, 0, 239, 1),
(12125, '<p>df</p>\r\n', 1447713951, 0, 81, 1),
(12126, '<p>df</p>\r\n', 1447713956, 0, 217, 1),
(12127, '<p>sdf</p>\r\n', 1447713960, 0, 243, 1),
(12128, '<p>df</p>\r\n', 1447713969, 0, 118, 1),
(12129, '<p>fg</p>\r\n', 1447714027, 0, 236, 1),
(12130, '<p>fdg</p>\r\n', 1447714033, 0, 5, 1),
(12131, '<p>fg</p>\r\n', 1447714039, 0, 232, 1),
(12132, '<p>fdg</p>\r\n', 1447714045, 0, 12, 1),
(12133, '<p>dfg</p>\r\n', 1447714058, 0, 200, 1),
(12134, '<p>fg</p>\r\n', 1447714065, 0, 242, 1),
(12135, '<p>fg</p>\r\n', 1447714071, 0, 188, 1),
(12136, '<p>df</p>\r\n', 1447791099, 0, 81, 1),
(12137, '', 1447791167, 0, 181, 1),
(12138, '<p>test</p>\r\n', 1447791852, 0, 125, 1),
(12139, '<p>fggfdgfdgdf</p>\r\n', 1448125306, 0, 252, 1),
(12140, '<p>gfgf</p>\r\n', 1448125315, 0, 253, 1),
(12141, '<p>d</p>\r\n', 1448125357, 0, 254, 1),
(12142, '<p>dfsfdfd</p>\r\n', 1448125370, 0, 255, 1),
(12143, '<p>fdsfsd</p>\r\n', 1448125453, 0, 256, 1),
(12144, '<p>dsfsdfds</p>\r\n', 1448125460, 0, 257, 1),
(12145, '<p>gfdgfdhgfhgf</p>\r\n', 1448125467, 0, 258, 1),
(12146, '<p>hgfhfghfg</p>\r\n', 1448125524, 0, 259, 1),
(12147, '<p>test</p>', 1448923407, 1, 239, 1),
(12148, '<p>test</p>', 1448923432, 1, 239, 1),
(12149, '<p>test</p>\r\n', 1448923449, 1, 239, 1),
(12150, '<p>test</p>\r\n', 1448923508, 1, 239, 1),
(12151, '<p>test</p>', 1448923512, 0, 239, 1),
(12152, '<p>gdfgfdgdf</p>\r\n', 1449069784, 1, 260, 1),
(12153, '<p>fsgfdgfd</p>\r\n', 1449069802, 1, 261, 1),
(12154, '<p>fgfdgfdgfd</p>\r\n', 1449069985, 1, 262, 1),
(12155, '<p>fsdfsdfsd</p>\r\n', 1449070104, 1, 263, 1),
(12156, '<p>dsfgfdgdf</p>\r\n', 1449070545, 1, 264, 1),
(12157, '<p>gdfgdfgdf</p>\r\n', 1449070655, 1, 265, 1),
(12158, '<p>dfgdfhghgf</p>\r\n', 1449070723, 1, 266, 1),
(12159, '<p>fgfdgdfgfdg</p>\r\n', 1449071056, 1, 267, 1),
(12160, '<p>dgfdgdfgfdgfd</p>\r\n', 1449071352, 0, 268, 1),
(12161, '<p>sdfsdfgdfzfsddgfdsgfd</p>', 1449071362, 1, 239, 1),
(12162, '<p>dffsdfsd</p>', 1449071456, 1, 239, 1),
(12163, '<p>sqdqsdsq</p>', 1449071556, 1, 239, 1),
(12164, '<p>faaaaa</p>', 1449071597, 1, 239, 1),
(12165, '<p>zaaaaa</p>', 1449071685, 1, 239, 1),
(12166, '<p>dfsfds</p>\r\n', 1449071698, 1, 239, 1),
(12167, '<p>fdfsd</p>', 1449071904, 1, 239, 1),
(12168, '<p>aaaa</p>', 1449071919, 1, 239, 1),
(12169, '<p>dsfd</p>\r\n', 1449072032, 1, 239, 1),
(12170, '<p>test</p>', 1449072081, 1, 129, 1),
(12171, '<p>afsdfsdgfd</p>\r\n', 1449072104, 1, 269, 1),
(12172, '<p>sdfsdfgfdgdf</p>', 1449072113, 0, 129, 1),
(12173, '<p>fdsfdsfdt</p>\r\n', 1449072123, 1, 270, 1),
(12174, '<p>dfgdfgdfgfdgdf</p>\r\n', 1449072179, 1, 271, 1),
(12175, '<p>test</p>\r\n', 1449691090, 0, 272, 1),
(12176, '<p>gdfgfdgfd</p>\r\n', 1449691220, 0, 273, 1);

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
-- Structure de la table `lost_pass`
--

CREATE TABLE IF NOT EXISTS `lost_pass` (
  `id` int(10) NOT NULL,
  `tooken` varchar(255) NOT NULL,
  `date_time` int(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `lost_pass`
--

INSERT INTO `lost_pass` (`id`, `tooken`, `date_time`) VALUES
(1, 'gjgjgjgjhgjhg', 1445488);

-- --------------------------------------------------------

--
-- Structure de la table `maps`
--

CREATE TABLE IF NOT EXISTS `maps` (
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `maps_monster`
--

CREATE TABLE IF NOT EXISTS `maps_monster` (
  `id` int(11) NOT NULL,
  `id_maps_types` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `maps_monster`
--

INSERT INTO `maps_monster` (`id`, `id_maps_types`) VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 3),
(2, 4);

-- --------------------------------------------------------

--
-- Structure de la table `maps_types`
--

CREATE TABLE IF NOT EXISTS `maps_types` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `image` varchar(25) DEFAULT NULL,
  `lvl` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `maps_types`
--

INSERT INTO `maps_types` (`id`, `name`, `image`, `lvl`) VALUES
(1, 'plaine', 'plaine', 1),
(2, 'plaine2', 'plaine2', 1),
(3, 'desert', 'desert', 2),
(4, 'desert2', 'desert2', 2);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `monster`
--

INSERT INTO `monster` (`id`, `name`, `lvl`, `xp`, `attack`, `defense`, `speed`, `escape`) VALUES
(1, 'Dinde', 1, 10, 5, 5, 3, 1),
(2, 'serpent', 2, 12, 6, 5, 4, 5);

-- --------------------------------------------------------

--
-- Structure de la table `mouths`
--

CREATE TABLE IF NOT EXISTS `mouths` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `is_block` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `mouths`
--

INSERT INTO `mouths` (`id`, `name`, `is_block`) VALUES
(1, '1', 0),
(2, '2', 0),
(3, '3', 0),
(4, '4', 0),
(5, '5', 0),
(6, '6', 0),
(7, '7', 0),
(8, '8', 0),
(9, '9', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `news`
--

INSERT INTO `news` (`id`, `title`, `date_time`, `message`, `is_block`, `id_users`) VALUES
(19, 'Première news', 1446979552, '<p>Salut,</p>\r\n\r\n<p>Une petite news pour vous pr&eacute;venir que MineGame va bient&ocirc;t ouvrir ses portes !<br />\r\nJe tiens &agrave; dire que nous recherchons encore un nom sympathique donc nous sommes &agrave; votre &eacute;coute si vous avez des id&eacute;es !</p>\r\n\r\n<p>Bonne journ&eacute;e.</p>\r\n', 0, 13),
(20, 'V3 is coming', 1447338228, '<p style="text-align:center"><span style="font-size:28px">New n&deg;1 :</span><span style="font-size:22px">&nbsp;<em><strong>Le commencement</strong></em></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="border: 1px solid rgb(204, 204, 204); padding: 5px 10px; text-align: center; background: rgb(238, 238, 238);"><span style="font-size:22px"><span style="color:#FF0000"><strong>Pr&eacute;sentation</strong></span></span></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bonjour et bienvenu sur le jeu &quot;MineGame&quot; qui est la suite du c&eacute;l&egrave;bre site one-piece-rpg. (Le nom du jeu est provisoire et sera susceptible de changer dans les prochains jours.)</p>\r\n\r\n<p>Tout d&#39;abord le projet &quot;minegame&quot; est r&eacute;alis&eacute; par des fans pour&nbsp;des fans, le staff travail b&eacute;n&eacute;volement pour vous cr&eacute;e un jeu complet, additif et plaisant visuellement. Nous sommes des amateurs avide d&#39;apprendre de nouvelle chose pour vous en faire profiter.</p>\r\n\r\n<p>Parlons maintenant du jeu en lui-m&ecirc;me, la sortie officielle est pr&eacute;vu pour le 12/11/2015 dans la soir&eacute;e et vous sera pr&eacute;senter sous la forme communautaire, ce qui signifie qu&#39;un forum, un tchat et bien d&#39;autres fonctionnalit&eacute;s vous sera proposer mais pas de r&eacute;el &quot;jeu&quot;. Les prochaines semaines risque de beaucoup bouger et verra le site &eacute;voluer, on esp&egrave;re, positivement.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="border: 1px solid rgb(204, 204, 204); padding: 5px 10px; text-align: center; background: rgb(238, 238, 238);"><span style="font-size:22px"><span style="color:#FF0000"><strong>Staff</strong></span></span></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="color:#FF0000"><strong>Dumbeldor&nbsp;(Admin):<em>&nbsp;</em></strong></span><em>Il est le chef du projet et un d&eacute;veloppeur extr&ecirc;mement dou&eacute;, sans lui le site n&#39;aurai s&ucirc;rement jamais vu le jour.</em></p>\r\n\r\n<p><span style="color:#FF8C00"><strong>Sumo (Co-admin) : </strong></span><em>Il s&#39;occupe du Dev&#39; de la s&eacute;curit&eacute;&nbsp;et de la bonne ambiance au sein de l&#39;&eacute;quipe, il fait des merguez comme personne.</em></p>\r\n\r\n<p><span style="color:#00FF00"><strong>Maniak (Mod&eacute;rateur) :&nbsp;</strong></span><em>Ayant d&eacute;j&agrave; fait ses preuves sur la V2 de onepiece-rpg il &eacute;tait &eacute;vident pour nous de le r&eacute;cup&eacute;rer parmi nous. Il&nbsp;aide aussi gr&acirc;ce &agrave; ses talent en pixel art.</em><em>&nbsp;Attention, le sh&eacute;rif du site.</em></p>\r\n\r\n<p><span style="color:#00FF00"><strong>Kalivia (Mod&eacute;ratrice) :</strong></span><em><span style="color:#00FF00">&nbsp;</span>Le quotas nous obligeant &agrave; prendre une fille, c&#39;est tomb&eacute; sur elle... Plus s&eacute;rieusement, elle est l&agrave; pour faire r&eacute;gner l&#39;ordre et donner un coup de main en pixel art. (Oui elle aussi)</em></p>\r\n\r\n<p><span style="color:#008080"><strong>Riyuma (Animateur) :&nbsp;</strong></span><em>Il va s&#39;occuper de l&#39;animation du site, de vous faire patienter comme il peut jusqu&#39;&agrave; que le jeu en lui-m&ecirc;me n&#39;arrive. Tr&egrave;s dou&eacute; pour faire des topics, beau et myst&eacute;rieux, &agrave; n&#39;en pas dout&eacute; notre meilleur recrue.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><tt>En esp&eacute;rant vous retrouvez sur le jeu, l&#39;&eacute;quipe du site vous souhaite d&#39;agr&eacute;ables moments.</tt></strong></p>\r\n\r\n<p><span style="color:#4B0082"><span style="font-size:14px"><em><strong><tt>#LeStaff</tt></strong></em></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="http://img11.hostingpics.net/pics/123632Comm.png" /></p>\r\n', 0, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `news_comments`
--

INSERT INTO `news_comments` (`id`, `date_time`, `message`, `is_block`, `id_users`, `id_news`) VALUES
(1, 1447277214, '<pre>\r\n<big><strong>Tu voudras un Besherelle pour No&euml;l ? <img alt="laugh" src="http://dev.minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/teeth_smile.png" style="height:23px; width:23px" title="laugh" /></strong></big></pre>\r\n', 0, 60, 19),
(2, 1447277469, '<p><tt>Bient&ocirc;t la sortie *-*&nbsp;</tt></p>\r\n', 0, 51, 19),
(3, 1447336782, '<p>Tu vas pas rester mod&eacute;ratrice longtemps Olivia...&nbsp;<img alt="sad" src="http://dev.minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/sad_smile.png" style="height:23px; width:23px" title="sad" /></p>\r\n', 0, 1, 19),
(4, 1447508817, '<p>Voil&agrave; voil&agrave; &quot;V3&quot; ouverte !&nbsp;<img alt="yes" src="http://dev.minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" /></p>\r\n', 0, 1, 20),
(5, 1447511566, '<p>gg pour le jeu<br />\r\n&nbsp;</p>\r\n', 0, 78, 19),
(6, 1447516923, '<p><span style="color:#FFA500"><em>Super ! Bienvenue tous le monde !</em></span></p>\r\n', 0, 125, 20),
(7, 1447518320, '<p>Haha la page d&#39;inscription me rappelle &eacute;trangement le jeu shinobi.fr ( c&#39;est quasiement la m&ecirc;me quoi x) .</p>\r\n\r\n<p>Par contre c&#39;est pas beau les fautes dans une news x)</p>\r\n', 0, 138, 20),
(8, 1447523559, '<p>Ah enfin un d&eacute;but de V3, c&#39;est cool.</p>\r\n', 0, 155, 20),
(9, 1447527551, '<p>Et bien ! Agr&eacute;ablement surprise qu&#39;elle soit sortie merci aux membres du staff.&nbsp;</p>\r\n', 0, 168, 20),
(10, 1447538045, '<p>C&#39;est qui qui s&#39;occupe de la r&eacute;dac&#39; ?</p>\r\n', 0, 66, 20),
(11, 1447556030, '<p><span style="font-size:14px">C&#39;est surtout Vincent qui s&#39;occupe de la r&eacute;daction... &ccedil;a explique les fautes partout x)</span></p>\r\n', 0, 60, 20),
(12, 1447559025, '<p>Bonne merde le staff ! :3</p>\r\n', 0, 222, 20),
(13, 1447579000, '<p><span style="color:#0000CD"><em>Surtout ma couz hein ...</em></span></p>\r\n', 0, 121, 20),
(14, 1447582681, '<p>Enfin un d&eacute;but de v3! :) bien jou&eacute; tout le monde! continuez comme &ccedil;a! :)</p>\r\n', 0, 229, 20),
(15, 1447584969, '<p>One-Piece-RPG-R&eacute;volution</p>\r\n', 0, 148, 19),
(16, 1447594019, '<p>News co-&eacute;crite par Riyuma je tiens &agrave; pr&eacute;ciser&nbsp;<img alt="cheeky" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/tongue_smile.png" style="height:23px; width:23px" title="cheeky" /></p>\r\n', 0, 1, 20),
(17, 1447594228, '<p>Ah c&#39;est pour &ccedil;a alors :x</p>\r\n', 0, 80, 20),
(18, 1447595334, '<p>Il faut toujours&nbsp;me contacter pour corriger vos fautes x)</p>\r\n', 0, 60, 20),
(19, 1447610667, '<p>:o</p>\r\n', 0, 287, 20),
(20, 1447619664, '<p>Ouais faut vraiment faire attention &agrave; &ccedil;a. Un nouveau qui arrive et qui voit plusieurs fautes sur le message de bienvenue &ccedil;a le fait pas trop.</p>\r\n', 0, 66, 20),
(21, 1449691348, '<p>test</p>\r\n', 0, 1, 20);

-- --------------------------------------------------------

--
-- Structure de la table `nose`
--

CREATE TABLE IF NOT EXISTS `nose` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `is_block` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `id_author` int(11) NOT NULL,
  `id_dest` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=473 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `privates_messages`
--

INSERT INTO `privates_messages` (`id`, `content`, `date_time`, `id_author`, `id_dest`) VALUES
(1, '<p>Wallah tu es mod&eacute;ratrice :3</p>\r\n', 1447336384, 1, 60),
(2, '<p>Je viens de voir ;) Tu n&#39;as plus&nbsp;qu&#39;&agrave; m&#39;offrir de la nourriture et tu seras un Dieu vivant ! ^_^</p>\r\n', 1447349481, 60, 1),
(3, '<p>Non c&#39;est &agrave; toi de me faire une offrande !</p>\r\n', 1447349711, 1, 60),
(4, '<p>J&#39;te bz :o</p>\r\n', 1447350207, 54, 51),
(5, '<p>En offrande tu veux les CGU avant la sortie ? XD</p>\r\n', 1447350554, 60, 1),
(6, '<p>Ah oui poste &ccedil;a dans le forum priv&eacute; stp</p>\r\n', 1447350772, 1, 60),
(7, '<p>Du staff ?</p>\r\n', 1447350806, 60, 1),
(8, '<p>SMGB :o</p>\r\n', 1447351043, 51, 54),
(9, '<p>Oui</p>\r\n', 1447352873, 1, 60),
(10, '<p>fdp</p>\r\n', 1447509130, 2, 65),
(11, '<p>Sale suceur de bite noir</p>\r\n', 1447509157, 65, 2),
(12, '<p><span style="color:#A52A2A"><strong><u><em>qerfqergergarg</em></u></strong></span></p>\r\n', 1447509192, 2, 65),
(13, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Riyuma qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447511784, 13, 71),
(14, '<p>wesh<br />\r\n&nbsp;</p>\r\n', 1447512175, 78, 76),
(15, 'Bienvenue dans l''équipe Ghost United\n						  Vous avez été accepté par suekko_senju qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447512330, 13, 81),
(16, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Riyuma qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447512351, 13, 84),
(17, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Gaitan qui est Bras droit\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447512430, 13, 69),
(18, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Gaitan qui est Bras droit\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447512495, 13, 89),
(19, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Riyuma qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447512591, 13, 76),
(20, 'Bienvenue dans l''équipe Ghost United\n						  Vous avez été accepté par suekko_senju qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447512603, 13, 83),
(21, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Gaitan qui est Bras droit\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447512819, 13, 87),
(22, 'Bienvenue dans l''équipe Ghost United\n						  Vous avez été accepté par Vinceee qui est Bras droit\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447512871, 13, 90),
(23, '<p>bouffon</p>\r\n', 1447512873, 99, 68),
(24, '<p>ok</p>\r\n', 1447512910, 68, 99),
(25, 'Bienvenue dans l''équipe Ghost United\n						  Vous avez été accepté par Vinceee qui est Bras droit\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447512934, 13, 98),
(26, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Gaitan qui est Bras droit\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447512956, 13, 97),
(27, 'Bienvenue dans l''équipe Dragon Warriors\n						  Vous avez été accepté par D_Flash_Kwo qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447513373, 13, 68),
(28, '<p>Accepte moi fr&eacute;rot</p>\r\n', 1447513424, 101, 75),
(29, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Gaitan qui est Bras droit\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447513536, 13, 104),
(30, '<p>Machu m&#39;a accepter j&#39;arrive pas a savoir ?</p>\r\n', 1447513594, 101, 83),
(31, '<p>Ta postuler!!</p>\r\n', 1447513797, 75, 101),
(32, '<p>Bah oui o_O</p>\r\n', 1447513850, 101, 75),
(33, '<p>Ta pas*</p>\r\n', 1447513852, 75, 101),
(34, '<p>nan ta pas postuler</p>\r\n', 1447513871, 75, 101),
(35, '<p>T bien un marine?</p>\r\n', 1447513881, 75, 101),
(36, '<p>ah non j&#39;pens&eacute; on &eacute;t&eacute; libre de droit et que &ccedil;a prenait pas rapport avec l&#39;&eacute;quipage</p>\r\n', 1447513988, 101, 75),
(37, '<p>Possible de redevenir marine en faite? tout le monde prend &ccedil;a je vais me retrouver sans &eacute;quipage sinon x&#39;DD</p>\r\n', 1447514101, 80, 1),
(38, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Riyuma qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447514258, 13, 78),
(39, '<p>Fait un choix en fonction de toi tu t&#39;en fiche des autres, toute fa&ccedil;on il y aura du monde partout.</p>\r\n', 1447514308, 1, 80),
(40, '<p>c&#39;est bon l&agrave;</p>\r\n', 1447514313, 101, 75),
(41, 'Bienvenue dans l''équipe Ghost United\n						  Vous avez été accepté par suekko_senju qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447514316, 13, 101),
(42, '<p>J&#39;&eacute;tais un Ten sur l&#39;ancien jeux, je sais pas si ils vont tous etre marine/pirate/revo , c&#39;pour &ccedil;a que c&#39;est un peu genant mais sinon tant pis</p>\r\n', 1447514383, 80, 1),
(43, '<p>tu peut me mettre musicien stp<br />\r\n&nbsp;</p>\r\n', 1447514514, 78, 51),
(44, '<p>Je m&#39;en occupe apr&egrave;s^^</p>\r\n', 1447514570, 51, 78),
(45, '<p>merci<br />\r\n&nbsp;</p>\r\n', 1447514623, 78, 51),
(46, '<p>Wallah c quoi ton prix minimum pour les yeezy??</p>\r\n', 1447514898, 75, 90),
(47, '<p>Et pour savoir, vous recrutez des gens dans le staff encore?</p>\r\n', 1447514898, 80, 1),
(48, '<p>Pour le moment non. A part des d&eacute;veloppeurs des designeurs ou des gens qui font des pixels art</p>\r\n', 1447515114, 1, 80),
(49, '<h1><cite><span style="color:#FFF0F5"><span style="background-color:#FF0000">ill&nbsp;</span></span><span style="background-color:#FF0000"><span style="color:#FFF0F5">Hydra!</span></span></cite></h1>\r\n', 1447515238, 71, 51),
(50, '<p>Ouk&eacute;</p>\r\n', 1447515300, 80, 1),
(51, '<p>Salut j ai postuler</p>\r\n', 1447515335, 113, 67),
(52, '<p>xDDDDD</p>\r\n', 1447515363, 51, 71),
(53, '<h2><var><span style="color:#000080"><span style="background-color:#FF0000">SYRIEGOLO LES FONCTIONS D&#39;ECRITUREUH</span></span></var></h2>\r\n', 1447515449, 71, 51),
(54, 'Bienvenue dans l''équipe Team Phoenix\n						  Vous avez été accepté par Pingouin qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447515514, 13, 113),
(55, 'Bienvenue dans l''équipe Dragon Warriors\n						  Vous avez été accepté par D_Flash_Kwo qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447516437, 13, 107),
(56, '<p>Salut, toi aussi tu es r&eacute;volutionaire ! :D Tu voudrait pas faire un &eacute;quipage avec moi ? :)</p>\r\n', 1447516470, 116, 60),
(57, '<p>Bonjour je voudrai savoir si vous serez a la recherche de membre qui trie les idees joueurs &nbsp;qui invente des mini jeux ect...et aide le staff.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', 1447516581, 78, 1),
(58, '<p>Pour ton anim tu fais comment pour redimensionner une image sans garder les proportions ? Parce que &ccedil;a d&eacute;forme tout quand je le fais xD</p>\r\n', 1447516582, 80, 51),
(59, '<p>Tu redimensionnes avant d&#39;y int&eacute;grer l&#39;image x)</p>\r\n', 1447516726, 51, 80),
(60, '<p>Tu peux le faire actuellement en &eacute;tant joueur, et si tu fais du bon travail naturellement une place te sera propos&eacute; au sein du staff.</p>\r\n', 1447516798, 1, 78),
(61, '<p>daccord merci<br />\r\n&nbsp;</p>\r\n', 1447516856, 78, 1),
(62, '<h1><span style="color:#000080"><big><span style="background-color:#FF0000">BONJOUR ZOGENE</span></big></span></h1>\r\n', 1447516895, 71, 84),
(63, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Riyuma qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447516939, 13, 115),
(64, '<p>Tu fais mumuse ? xD</p>\r\n', 1447516968, 84, 71),
(65, '<p><span style="color:#FF0000"><span style="background-color:#000080">Je cherche mon style je d&eacute;couvre :3</span></span></p>\r\n', 1447517060, 71, 84),
(66, 'Bienvenue dans l''équipe Team Phoenix\n						  Vous avez été accepté par Pingouin qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447517078, 13, 105),
(67, '<p>Faut faut xD</p>\r\n', 1447517110, 84, 71),
(68, 'Bienvenue dans l''équipe Team Phoenix\n						  Vous avez été accepté par Pingouin qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447517249, 13, 116),
(69, '<p>jpeux venir ans ton equipage</p>\r\n', 1447517482, 120, 80),
(70, '<p>tu es un marine je suis un pirate</p>\r\n', 1447517531, 80, 120),
(71, '<p>Avec les changements de faction sur demande que tu dois faire y&#39;a des &eacute;quipages que se retrouve &agrave; avoir des gens de diff&eacute;rentes faction en m&ecirc;me temps ^^</p>\r\n', 1447518034, 80, 1),
(72, '<p>Salut , y a une fail dans la creation de l&#39;equipage , look l&#39;equipage que j&#39;ai cr&eacute;e</p>\r\n', 1447518155, 123, 1),
(73, '<p>Erf va falloir que je corrige &ccedil;a...</p>\r\n', 1447518430, 1, 123),
(74, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Gaitan qui est Bras droit\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447518473, 13, 135),
(75, '<p>Yep , un petit controle sur les &quot;&lt; &gt;&quot; sera suffisant.</p>\r\n', 1447518524, 123, 1),
(76, '<p>Hey :) pourquoi ne rejoindrait tu pas mon &eacute;quipage avec mes camarades ont s&#39;ennuie et on cherche de nouveaux nakamas on t&#39;attend chez la Phoenix Team ;)</p>\r\n', 1447518653, 116, 132),
(77, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Gaitan qui est Bras droit\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447518750, 13, 136),
(78, '<p>We should gros</p>\r\n', 1447518885, 117, 115),
(79, '<p>Coucou :o</p>\r\n', 1447518917, 84, 136),
(80, '<p>je t&#39;aime XD&nbsp;</p>\r\n', 1447518936, 126, 140),
(81, '<p>Go fuck yourself</p>\r\n', 1447518955, 115, 117),
(82, '<p>Ok</p>\r\n', 1447518971, 117, 115),
(83, '<p>Moi aussi ?&nbsp;</p>\r\n', 1447518974, 140, 126),
(84, '<p>&lt;3&nbsp;</p>\r\n', 1447519040, 126, 140),
(85, 'Bienvenue dans l''équipe Les Grands Corsaires\n						  Vous avez été accepté par Sumeerfrio qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447519047, 13, 126),
(86, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Gaitan qui est Bras droit\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447519054, 13, 141),
(87, '<p>Voil&agrave; voil&agrave;, merci d&#39;avoir pr&eacute;venu.</p>\r\n', 1447519055, 1, 123),
(88, '<p>Viens faire la r&eacute;volution connardo</p>\r\n', 1447519062, 140, 126),
(89, '<p>Bonjour,</p>\r\n\r\n<p>Non merci, je ne recherches pas d&#39;&eacute;quipage pour l&#39;instant.</p>\r\n\r\n<p>Bonne soir&eacute;e</p>\r\n', 1447519118, 60, 116),
(90, 'Bienvenue dans l''équipe Les Grands Corsaires\n						  Vous avez été accepté par Sumeerfrio qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447519147, 13, 125),
(91, '<p>JAMAIS&nbsp;</p>\r\n', 1447519188, 126, 140),
(92, '<p>T&eacute;l&eacute;phone cochon</p>\r\n', 1447519220, 140, 126),
(93, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Gaitan qui est Bras droit\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447519265, 13, 130),
(94, '<p>De rien.</p>\r\n', 1447519273, 123, 1),
(95, '<h1><strong><em>je t&#39;emmerde</em></strong></h1>\r\n', 1447519302, 126, 140),
(96, '<p><img alt="heart" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/heart.png" style="height:23px; width:23px" title="heart" /></p>\r\n', 1447519327, 140, 126),
(97, '<p>viens chez nous&nbsp;</p>\r\n', 1447519434, 126, 135),
(98, '<p>viens chez nous ^^&nbsp;</p>\r\n', 1447519461, 126, 123),
(99, '<p><font color="#fff0f5"><span style="background-color:rgb(0, 0, 0)"><strong>Bonjour, je suis Gaitan charger de la relation client des DNK, que puis-je faire pour toi?</strong></span></font></p>\r\n', 1447519520, 71, 135),
(100, '<p>Slt petit con ses deltaveritas hert est smok.aks</p>\r\n', 1447519529, 135, 126),
(101, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Riyuma qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447519540, 13, 142),
(102, '<p>Pq tu parle mdr j&#39;ai rien demand&eacute; puis je suis plus chez dnk on m&#39;a virer</p>\r\n', 1447519580, 135, 71),
(103, '<p><span style="color:#FFF0F5"><span style="background-color:#000000">Ouais je sais Riyu s&#39;ennuyait alors il t&#39;a vir&eacute; :X</span></span></p>\r\n', 1447519645, 71, 135),
(104, '<p>je vais voir</p>\r\n', 1447519689, 123, 126),
(105, '<p>Oui ok tanpie</p>\r\n', 1447519712, 135, 71),
(106, '<p>ok</p>\r\n', 1447519779, 126, 123),
(107, '<p><span style="color:#FFF0F5"><span style="background-color:#000000">Du coup tu peux r&eacute;pondre &agrave; quelques questions?</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="color:#FFF0F5"><span style="background-color:#000000">Comment trouves-tu l&#39;ambiance des DNK?</span></span></p>\r\n\r\n<p><span style="color:#FFF0F5"><span style="background-color:#000000">Riyuma est-il un bon capitaine? Si non qui serait meilleur dans les membres actuels des DNK?</span></span></p>\r\n\r\n<p><span style="color:#FFF0F5"><span style="background-color:#000000">Regrettes-tu ton passage chez les DNKs?</span></span></p>\r\n', 1447519831, 71, 135),
(108, 'Bienvenue dans l''équipe Les Grands Corsaires\n						  Vous avez été accepté par Sumeerfrio qui est Bras droit\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447520065, 13, 94),
(109, '<p>Bonjour,</p>\r\n\r\n<p>Merci de ne pas flood, dans le cas contraire je serais oblig&eacute;e d&#39;agir en cons&eacute;quence.</p>\r\n\r\n<p style="text-align: right;">Coordialement</p>\r\n', 1447520104, 60, 135),
(110, '<p>L&#39;ambiance jsp on m&#39;a virer 2 mn apr&egrave;s riyuma cap nn psq il vir&eacute; pour rien et il se fous de la gueule qu&#39;elle personnes choisir pour New cap eh jsp gaitan peux &ecirc;tre</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447520165, 135, 71),
(111, '<p>Sas commence bien lol</p>\r\n', 1447520191, 135, 60),
(112, '<p>Cree un equipage fdp</p>\r\n', 1447520337, 65, 110),
(113, 'Bienvenue dans l''équipe Team Phoenix\n						  Vous avez été accepté par Pingouin qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447520369, 13, 138),
(114, '<p>wesh<br />\r\n&nbsp;</p>\r\n', 1447520549, 78, 148),
(115, '<p>Le changement de mot de passe ne marche pas, il y a un bug au niveau de l&#39;ancien mdp, il le trouve incorrect ( et je suis s&ucirc;r que je mets le bon ).</p>\r\n\r\n<p>Pour pr&eacute;venir.</p>\r\n', 1447520588, 146, 1),
(116, '<p>Je suis le immature qui parle que de cue comme tu dis</p>\r\n', 1447520703, 135, 60),
(117, '<p>d&eacute;ja tu te presente et ensuite rapelle moi encore pfd et tu va avoir tr&egrave;s tr&egrave;s mal au fessier en gros je vais t&#39;enculer a sec&nbsp;</p>\r\n', 1447520715, 110, 65),
(118, '<p>Ok merci</p>\r\n', 1447521226, 1, 146),
(119, '<p>FDP. Je t&#39;ai trait&eacute; tu va faire quoi maintenant?</p>\r\n', 1447521283, 65, 110),
(120, 'Bienvenue dans l''équipe Team Phoenix\n						  Vous avez été accepté par Pingouin qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447521513, 13, 1),
(121, '<p>R&eacute;pond omg</p>\r\n', 1447521871, 65, 110),
(122, '<p>Rejoins notre &eacute;quipage ! :D</p>\r\n', 1447521895, 116, 88),
(123, '<p>33333<strong><em>33333333333333<img alt="cheeky" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/tongue_smile.png" style="height:23px; width:23px" title="cheeky" />333333333333333333333WSH3</em></strong></p>\r\n', 1447521952, 148, 78),
(124, '<p>Bastiengoal normalement</p>\r\n', 1447522340, 51, 79),
(125, '<p>Je vais regarder x)</p>\r\n', 1447522442, 79, 51),
(126, '<p>Hey :) pourquoi ne rejoindrait tu pas mon &eacute;quipage avec mes camarades ont s&#39;ennuie et on cherche de nouveaux nakamas on t&#39;attend chez la Team Phoenix&nbsp; ;)</p>\r\n', 1447522751, 116, 149),
(127, 'Bienvenue dans l''équipe DarkUnited\n						  Vous avez été accepté par Darksidus qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447523443, 13, 151),
(128, '<p>Tu te souviens du travelot qui t&#39;a sucer et que t&#39;a pas payer?</p>\r\n', 1447523463, 65, 110),
(129, '<p>A putain si c&#39;est toi le gros boulanger de mes couilles tu va le sentir passer je tes deja pr&eacute;venue enculer mdr tout sof les insulte sur la famille batard&nbsp;</p>\r\n', 1447523488, 110, 65),
(130, '<p>Comment tu me compare &agrave; cette sous merde de boulanger ?</p>\r\n\r\n<p>Je suis le travelot et je veux mon argent</p>\r\n', 1447523558, 65, 110),
(131, '<p>Mdrrrr a putain comment te fait pour me retrouver toi &gt;_&lt; merde je savais que j&#39;aurais pas du remettre se nom ,mdr&nbsp;</p>\r\n\r\n<p>non mais srx <font color="#ff0000">TES QUI&nbsp;<img alt="angry" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/angry_smile.png" style="height:23px; width:23px" title="angry" /></font></p>\r\n', 1447523811, 110, 65),
(132, '<p>Si tu devine t&#39;aura un cadeau :$</p>\r\n', 1447523939, 65, 110),
(133, '<p>Putains on est pas sortie de l&#39;oberge mdr donne un indices biatch pck l&#39;info a tellment&nbsp;circuler pour le trav mdr&nbsp;</p>\r\n', 1447524084, 110, 65),
(134, '<p>Indice : Je suis un bg</p>\r\n', 1447524198, 65, 110),
(135, '<p>Imposible le seul BG que je connais c&#39;est le mec qui vie dans mon miroire&nbsp;</p>\r\n', 1447524327, 110, 65),
(136, 'Bienvenue dans l''équipe Team Phoenix\n						  Vous avez été accepté par Pingouin qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447524385, 13, 132),
(137, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Riyuma qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447524430, 13, 158),
(138, '<p>on peut pas aller connecter<br />\r\n&nbsp;</p>\r\n', 1447524659, 152, 1),
(139, '<p>viens dans mon equipage<br />\r\n&nbsp;</p>\r\n', 1447524737, 152, 135),
(140, '<p>Hey :) pourquoi ne rejoindrait tu pas mon &eacute;quipage avec mes camarades ont s&#39;ennuie et on cherche de nouveaux nakamas on t&#39;attend chez la Phoenix Team ;)</p>\r\n', 1447524784, 116, 155),
(141, 'Bienvenue dans l''équipe Les Grands Corsaires\n						  Vous avez été accepté par titi17470 qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447524869, 13, 144),
(142, '<p>:(</p>\r\n', 1447525094, 65, 110),
(143, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Riyuma qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447525264, 13, 148),
(144, '<p>M&ecirc;me pas t&#39;a pens&eacute; &agrave; un arabe qui t&#39;a p&eacute;t&eacute; le cul &agrave; l&#39;&eacute;poque</p>\r\n', 1447525301, 65, 110),
(145, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Riyuma qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447525591, 13, 161),
(146, '<p>Eh atend.</p>\r\n', 1447526051, 135, 152),
(147, '<p>Dis a Kishi que je veux bien le d&eacute;ban s&#39;il dit qu&#39;il a compris qu&#39;on est plus sur la v2 et qu&#39;on ne le laissera pas faire son chaud ici. Et que s&#39;il recommence &agrave; faire le malin cela sera d&eacute;finitif.</p>\r\n\r\n<p>On est dans un jeu virtuel, s&#39;il veut faire son bonhomme ce n&#39;est pas ici qu&#39;il peut le faire.</p>\r\n', 1447526168, 63, 51),
(148, 'Bienvenue dans l''équipe Team Phoenix\n						  Vous avez été accepté par Pingouin qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447526432, 13, 155),
(149, '<p>Hey :) pourquoi ne rejoindrait tu pas mon &eacute;quipage avec mes camarades ont s&#39;ennuie et on cherche de nouveaux nakamas on t&#39;attend chez la Phoenix Team ;)</p>\r\n', 1447526550, 116, 74),
(150, '<p>J&#39;ai c/c mais il voulait juste faire chier j&#39;pense</p>\r\n', 1447526975, 51, 63),
(151, '<p>[19:55:29] Joris: Dit lui que le seul qui fait le chaud ici c&#39;est lui, j&#39;ai m&ecirc;me pas enfreint leurs cgu et je suis ban, abus de pouvoir, aucune libert&eacute; d&#39;expression donc voil&agrave; si il veut faire le gentil cpas avec moi il se le met dans le cul son deban</p>\r\n', 1447527625, 51, 63),
(152, '<p>Hey :) pourquoi ne rejoindrait tu pas mon &eacute;quipage avec mes camarades ont s&#39;ennuie et on cherche de nouveaux nakamas on t&#39;attend chez la Phoenix Team ;)</p>\r\n', 1447527673, 116, 168),
(153, '<p>Ok il reste ban. xD</p>\r\n', 1447527718, 63, 51),
(154, '<p>D&eacute;sol&eacute; j&#39;attend de voir si mon ancien &eacute;quipage se reforme ou pas :)&nbsp;</p>\r\n', 1447527769, 168, 116),
(155, '<p>j ai postule chez toi</p>\r\n', 1447528102, 166, 83),
(156, 'Bienvenue dans l''équipe DarkUnited\n						  Vous avez été accepté par DarkSeray qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447528266, 13, 135),
(157, '<p>tu zizi dans l&#39;cul</p>\r\n', 1447528823, 177, 98),
(158, '<p>Hey N&eacute;gro ! c&#39;est Alex :D</p>\r\n', 1447528837, 179, 169),
(159, '<p>Merci de la proposition mais je prefere rester solo pour le moment ^^</p>\r\n', 1447528890, 74, 116),
(160, '<p>Hoy ! :D</p>\r\n', 1447529237, 169, 179),
(161, '<p>C&#39;est sympatoche le site l&agrave; :)</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447529274, 179, 169),
(162, '<p><span style="color:#0000CD"><em>Viens dans l&#39;&eacute;quipage des &quot; </em></span><em><strong>NewBesterBoss</strong></em><span style="color:#0000CD"><em> &quot;. C&#39;est un &eacute;quipage r&eacute;volutionnaire ;)</em></span></p>\r\n', 1447529328, 121, 173),
(163, '<p>postule dans mon &eacute;quipage si tu veux ^^</p>\r\n', 1447529369, 80, 166),
(164, '<p>Ouais, et &ccedil;a g&egrave;re sur tel :D</p>\r\n', 1447529491, 169, 179),
(165, '<p>vien plutot chez nous</p>\r\n', 1447529519, 135, 80),
(166, '<p>ils ont dit que &ccedil;a serai optimis&eacute; pour ... donc bon&nbsp;<img alt="smiley" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/regular_smile.png" style="height:23px; width:23px" title="smiley" /></p>\r\n', 1447529543, 179, 169),
(167, '<p>Je sais, et ils l&#39;ont bien fait ^.^</p>\r\n', 1447529669, 169, 179),
(168, '<p>je vais me faire une petite pr&eacute;sentation de moi sur le Forum.&nbsp;</p>\r\n', 1447529755, 179, 169),
(169, 'Bienvenue dans l''équipe Les Grands Corsaires\n						  Vous avez été accepté par titi17470 qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447529933, 13, 165),
(170, '<p>Okay ^.^</p>\r\n', 1447530136, 169, 179),
(171, '<p>A bah alors toi aussi tu joue a la V3 :D</p>\r\n', 1447530402, 181, 78),
(172, '<p>demain ... peut-&ecirc;tre</p>\r\n', 1447530432, 179, 169),
(173, '<p>Je pe etre cuisinier stp chef</p>\r\n', 1447531657, 148, 51),
(174, '<p>Je pe etre cuisinier stp chef</p>\r\n', 1447531657, 148, 51),
(175, '<p>Cc</p>\r\n', 1447531744, 166, 176),
(176, '<p>Un arabe BG ? :o :o c&#39;est possible sa XDDD&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>alors ja j&#39;ai qu&#39;elle que chose&nbsp;sois Madi la biatch des pr&egrave;s dois Kisuke l&#39;inculer des montagne&nbsp;</p>\r\n', 1447531929, 110, 65),
(177, '<p>J&#39;suis relou mais moyen de repasser marine alors stp? Tout les Ten sont marine :x</p>\r\n', 1447532182, 80, 1),
(178, '<p>Hey :) pourquoi ne rejoindrait tu pas mon &eacute;quipage avec mes camarades ont s&#39;ennuie et on cherche de nouveaux nakamas on t&#39;attend chez la Phoenix Team ;)</p>\r\n', 1447532200, 116, 147),
(179, '<p>Hey :) pourquoi ne rejoindrait tu pas mon &eacute;quipage avec mes camarades ont s&#39;ennuie et on cherche de nouveaux nakamas on t&#39;attend chez la Phoenix Team ;)</p>\r\n', 1447532389, 116, 159),
(180, '<p>Jai postuler ^^</p>\r\n', 1447532468, 159, 116),
(181, 'Bienvenue dans l''équipe Team Phoenix\n						  Vous avez été accepté par loup qui est Bras droit\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447532548, 13, 159),
(182, '<p>Y&#39;a d&#39;autre Ten sur le site ou pas encore? Parce que j&#39;ai cr&eacute;er un &eacute;quipage &quot;Tenryubito&quot; avec un dc quand ils ont ouvert le site pour reserver le blase :x</p>\r\n', 1447533042, 80, 105),
(183, 'Bienvenue dans l''équipe DarkUnited\n						  Vous avez été accepté par DarkSeray qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447533188, 13, 169),
(184, '<p>C&#39;est l&#39;incul&eacute; des montagnes alors</p>\r\n', 1447533945, 65, 110),
(185, '<h1>Mon papy&nbsp;<img alt="heart" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/heart.png" style="height:23px; width:23px" title="heart" />&nbsp;C&#39;PFR&nbsp;</h1>\r\n', 1447534479, 193, 110),
(186, '<p>mdr j&#39;avoue pauvre montagne XDD</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;sinon c&#39;est quoi se pseudo pourrie ? XD&nbsp;</p>\r\n', 1447534547, 110, 65),
(187, '<p>*-* mes pfr&nbsp;</p>\r\n', 1447534567, 110, 193),
(188, '<p>*_* accepte moi dans l&#39;equipage :$</p>\r\n', 1447534734, 193, 110),
(189, 'Bienvenue dans l''équipe Seireitei\n						  Vous avez été accepté par deteD qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447534876, 13, 193),
(190, '<p>c fait&nbsp;</p>\r\n', 1447534925, 110, 193),
(191, '<p>e.e meme pas tu me mets bd :( :(&nbsp;</p>\r\n', 1447535365, 193, 110),
(192, '<p>Il claque le pseudo mec ! :p</p>\r\n\r\n<p>Comment &ccedil;a va &nbsp;depuis le temps?&nbsp;</p>\r\n', 1447535718, 65, 110),
(193, '<p>C&#39;est sans&eacute; vouloire dire qu&#39;elle que chose ?&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Super et toi tu raconte quoi de beau ?&nbsp;</p>\r\n', 1447535783, 110, 65),
(194, '<p>Yo, tu peux me remettre revolutionnaire enfaite? J&#39;ai mon pote qui est r&eacute;vo et je peux pas rejoindre son &eacute;quipage x)</p>\r\n', 1447535860, 65, 1),
(195, '<p><em><span style="color:#FF0000"><strong>TEST</strong></span></em></p>\r\n', 1447535970, 172, 2),
(196, '<p>testsetset</p>\r\n', 1447536290, 2, 172),
(197, '<p>Bienvenue ;)</p>\r\n', 1447536349, 193, 116),
(198, '<p>Hey :) pourquoi ne rejoindrait tu pas mon &eacute;quipage avec mes camarades ont s&#39;ennuie et on cherche de nouveaux nakamas on t&#39;attend chez la Phoenix Team ;)</p>\r\n', 1447538109, 116, 199),
(199, 'Bienvenue dans l''équipe Team Phoenix\n						  Vous avez été accepté par loup qui est Bras droit\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447538143, 13, 199),
(200, '<p>Salut, sur le site ? merci ! :D</p>\r\n', 1447538283, 116, 193),
(201, '<p>Bah euh oui sur le site ya pas d&#39;autre endroit sinon xD</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>De rien *_*</p>\r\n', 1447538405, 193, 116),
(202, '<p>T&#39;es de quelle faction toi ?</p>\r\n', 1447538531, 116, 193),
(203, '<p>Seireitei et toi &nbsp;?&nbsp;</p>\r\n', 1447538699, 193, 116),
(204, '<p>moi c&#39;est Konoha mdrrrr :x</p>\r\n', 1447538762, 116, 193),
(205, 'Bienvenue dans l''équipe Team Phoenix\n						  Vous avez été accepté par loup qui est Bras droit\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447538992, 13, 201),
(206, '<p>connard :D</p>\r\n\r\n<p>essaye de recruter mais tu dis qu&#39;on veut une belle letre de motivation qui nous donne enie de les recruter ok omme sa on se remplie et si il vienne mtn ses sur quil resteron fidele vue quon sera leur premier equipage ok ;)</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447539023, 99, 68),
(207, '<p>Bonjour voila j aurais un requette a te demander</p>\r\n\r\n<p>pourait tu suprimer le compte Skyzo stp je souhaiterai garder ce compte la</p>\r\n\r\n<p>merci ^^</p>\r\n', 1447539100, 204, 1),
(208, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Riyuma qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447540763, 13, 173),
(209, '<p>Ahah okey xD et tu etais sous quel pseudo a la v2 &nbsp;?&nbsp;</p>\r\n', 1447541422, 193, 116),
(210, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Riyuma qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447541450, 13, 204),
(211, '<p>je m&#39;apel&eacute;e Trippin, je jouait pas vraiment car je suis arriv&eacute;e vers la fin du site alors j&#39;attendait un renouveau voil&agrave; tout :D</p>\r\n', 1447541794, 116, 193),
(212, '<p>Hey :) pourquoi ne rejoindrait tu pas mon &eacute;quipage avec mes camarades ont s&#39;ennuie et on cherche de nouveaux nakamas on t&#39;attend chez la Phoenix Team ;)</p>\r\n\r\n<p><img alt="" src="http://cdn.spawnsor.net/images/profile/team_c7f24aaf-original.png" /></p>\r\n', 1447541957, 116, 209),
(213, '<p>Ouais comment on fait haine pas cette version&nbsp;</p>\r\n', 1447542027, 209, 116),
(214, '<p>Clique sur &eacute;quipage :x et apr&egrave;s si tu c&#39;est lire le francais tout ira bien pour toi</p>\r\n', 1447542127, 116, 209),
(215, '<p>Ta accepter ?</p>\r\n', 1447542151, 208, 51),
(216, '<p>Tu me demande beaucoup d&#39;un coup ma couille</p>\r\n', 1447542226, 209, 116),
(217, '<p>Aller tu peut le faie mon... gland</p>\r\n', 1447542465, 116, 209),
(218, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Riyuma qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447542508, 13, 208),
(219, 'Bonjour, l''équipe Team Phoenix ne vous a pas accepté.\n						  Candidature traité par loup qui est Bras droit\n						  Vous pouvez dès à présent dès à présent chercher un autre équipage !..\n						  Bonne chance !', 1447542538, 13, 209),
(220, '<p>H&eacute;h&eacute;</p>\r\n', 1447542586, 116, 209),
(221, '<p><img alt="" src="http://web-tech.fr/wp-content/uploads/2012/04/trollface1.jpg" /></p>\r\n', 1447542634, 116, 209),
(222, '<p>moi je recrute on &nbsp;a fait partit du top 10 avec notre equipage sur la v2 mais on cherche des personne fideles et pret a pex a tout prix quand le mode pex arrivera si tu correspond a tout sa tu peu rejoindre notre euipage en fesant une petite belle lettre de motivation qui donne envie</p>\r\n', 1447542949, 99, 166),
(223, '<p>Okey bah enchant&eacute; alors &nbsp;;)</p>\r\n\r\n<p>Moi jy jouais depuis 3 ans a l&#39;ancienne version xD&nbsp;</p>\r\n\r\n<p>Sinon tas skype &nbsp;?:3</p>\r\n\r\n<p>T un pirate ou revolutionnaire en fait xD</p>\r\n', 1447543079, 193, 116),
(224, 'Bienvenue dans l''équipe Dragon Warriors\n						  Vous avez été accepté par D_Flash_Kwo qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447543142, 13, 166),
(225, '<p>je n&#39;est pas compris le lundi tu peut mieux expliquer ?</p>\r\n', 1447543180, 99, 166),
(226, '<p>Ouais ca fait longtemps xD</p>\r\n\r\n<p>ouais nono bob</p>\r\n\r\n<p>tien c&#39;est mon profil:</p>\r\n\r\n<p>http://minegame.fr/users/view/116</p>\r\n', 1447543293, 116, 193),
(227, '<p>Tres XDDD</p>\r\n\r\n<p>Nonobob attacher &nbsp;? France &nbsp;?&nbsp;</p>\r\n\r\n<p>Jsuis sur portable sa bug xD</p>\r\n', 1447543389, 193, 116),
(228, '<p>Hey :) pourquoi ne rejoindrait tu pas mon &eacute;quipage avec mes camarades ont s&#39;ennuie et on cherche de nouveaux nakamas on t&#39;attend chez la Phoenix Team ;)</p>\r\n', 1447543405, 116, 211),
(229, '<p>Hey :) pourquoi ne rejoindrait tu pas mon &eacute;quipage avec mes camarades ont s&#39;ennuie et on cherche de nouveaux nakamas on t&#39;attend chez la Phoenix Team ;)</p>\r\n', 1447543405, 116, 211),
(230, '<p>nan nono bob xD oui france<br />\r\n&nbsp;:p</p>\r\n\r\n<p>je suis marine x)</p>\r\n', 1447543470, 116, 193),
(231, '<p>Voila &nbsp;:3</p>\r\n\r\n<p>Ah mince xD</p>\r\n', 1447543572, 193, 116),
(232, '<p>merde j&#39;arrrive plus a me co a skype :s je te accepterait apr&egrave;s tkt ;)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>pourquoi ? :oo</p>\r\n', 1447543685, 116, 193),
(233, '<p>Haha okey jattendrai &nbsp;;)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pourquoi quoi &nbsp;? XD Ptin cest chiant on peut pas voir nos messages davant comme avant :(</p>\r\n', 1447543839, 193, 116),
(234, '<p>MDRRRR jsp je te dit que je suis marine tu fait &quot;hoooo&quot; voila pourquoi &quot;pourquoi&quot; xD</p>\r\n', 1447543925, 116, 193),
(235, '<p>Ah oui parce que je suis pirate XDDD on est ennemi &nbsp;:(</p>\r\n', 1447544059, 193, 116),
(236, '<p>Tu est co Riyum&#39;Euh?</p>\r\n', 1447545140, 208, 51),
(237, '<p>t la</p>\r\n', 1447550926, 208, 63),
(238, '<p>t la?</p>\r\n', 1447550951, 208, 2),
(239, 'Bienvenue dans l''équipe Shandora\n						  Vous avez été accepté par Karugara qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447555196, 13, 219),
(240, '<p>Yo tu vas bien ! (c&#39;est Lacreeeme sur Skype xD mtn j&#39;ai mis Ashwa sur skype)</p>\r\n\r\n<p>C&#39;etait pour te demander que je voulais faire un fanart, mais comme la rubrique n&#39;a pas encore ouvert, on peut faire un topic consacr&eacute; la dessus pour l&#39;instant ?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Merci :)</p>\r\n', 1447556707, 218, 1),
(241, '<p>Bonsoir d&#39;abod gg pour le site ! :) voila j&#39;ai eux un peu de mal a cr&eacute;e mon compte j&#39;ai pas fait attention j&#39;ai louper le code j&#39;ai tout refait vite fait mais j&#39;ai oublier de me mettre pirates tu peu me changer &ccedil;a s&#39;il te plais ? :x</p>\r\n', 1447558139, 222, 1),
(242, '<p>Salut Maniak ,&nbsp;&nbsp; ca&nbsp; vas ?<img alt="laugh" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/teeth_smile.png" style="height:23px; width:23px" title="laugh" /></p>\r\n', 1447573138, 223, 63),
(243, '<p>Viens&nbsp; dans mon equipage ^^)</p>\r\n', 1447574521, 223, 224),
(244, '<p>Bien merci, et toi ?</p>\r\n', 1447579470, 63, 223),
(245, '<p>Tranquille tranquille ^^)</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447579753, 223, 63),
(246, '<p>ouais<br />\r\n&nbsp;</p>\r\n', 1447579859, 78, 181),
(247, '<p>Viens chez bibi</p>\r\n', 1447580438, 97, 140),
(248, 'Bienvenue dans l''équipe NewBesterBoss\n						  Vous avez été accepté par LordDalassee qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447581344, 13, 135),
(249, '<p>Hey :) pourquoi ne rejoindrait tu pas mon &eacute;quipage avec mes camarades ont s&#39;ennuie et on cherche de nouveaux nakamas on t&#39;attend chez la Phoenix Team ;)</p>\r\n', 1447582798, 116, 228),
(250, '<p>Salut!</p>\r\n\r\n<p>Bien jou&eacute; pour votre avanc&eacute;e c&#39;est cool que un d&eacute;but de v3 sorte enfin!&nbsp;<img alt="smiley" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/regular_smile.png" style="height:23px; width:23px" title="smiley" /> Ca montre que vous avancez! Bonne continuation pour le d&eacute;veloppement du jeu, rien qu&#39;avec &ccedil;a on voit que vous pouvez vraiment faire de bonnes choses pour la suite&nbsp; <img alt="wink" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" />.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Et au fait, juste pour te pr&eacute;venir, y a une petite faute sur la page d&#39;inscription, quand on prend marine, c&#39;est pas &quot;ses pirates&quot; mais &quot;ces pirates&quot;.</p>\r\n', 1447583135, 229, 1),
(251, '<p>C&#39;est pas toi &agrave; qui j&#39;ai &eacute;changer Zanketsu vs un compte minecraft ? x)</p>\r\n', 1447583746, 171, 68),
(252, '<p>Quel &eacute;tait ton pseudo sur la v2 ?</p>\r\n', 1447584297, 125, 230),
(253, '<p>Darkray3</p>\r\n', 1447584374, 230, 125),
(254, '<p>Bjr</p>\r\n', 1447584400, 233, 51),
(255, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Riyuma qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447584404, 13, 225),
(256, '<p>Bjr</p>\r\n', 1447584447, 51, 233),
(257, '<p>T&#39;es trop fort</p>\r\n', 1447584551, 233, 51),
(258, '<p>MauroMauro &ccedil;a medit quelque chose xD</p>\r\n\r\n<p>Cpas papito &nbsp;? Paperboy &nbsp;?&nbsp;</p>\r\n', 1447584612, 193, 222),
(259, '<p>ouep ducoup j&#39;ai garder le pseudo :x</p>\r\n', 1447584627, 68, 171),
(260, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Riyuma qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447584643, 13, 233),
(261, '<p>yo vieux :)</p>\r\n', 1447584805, 235, 154),
(262, '<p>tu es exceed du meme nom que dans oprpg ???</p>\r\n', 1447584835, 235, 169),
(263, '<p>salut tu te rappelle de moi dans oprpg ?</p>\r\n', 1447584874, 235, 184),
(264, '<p>Oui ou nn&nbsp;</p>\r\n', 1447584886, 230, 125),
(265, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Riyuma qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447585423, 13, 175),
(266, '<p><em><span style="color:#0000CD">Tu peux m&#39;accepter ?</span></em></p>\r\n', 1447585539, 238, 67),
(267, '<p>vien &eacute;quipage xd</p>\r\n', 1447585758, 234, 80),
(268, 'Bienvenue dans l''équipe Team Phoenix\n						  Vous avez été accepté par Pingouin qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447586264, 13, 238),
(269, 'Bienvenue dans l''équipe Power Rangers Family\n						  Vous avez été accepté par CarolineSwan qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447586313, 13, 219),
(270, 'Bienvenue dans l''équipe Power Rangers Family\n						  Vous avez été accepté par CarolineSwan qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447586348, 13, 237),
(271, '<p>Viens chez nous :)</p>\r\n', 1447586378, 67, 239),
(272, '<p>bonjour,</p>\r\n\r\n<p>Mod&egrave;re ton langage sinon tu ne feras pas long feu ici. Te voil&agrave; pr&eacute;venu.</p>\r\n\r\n<p>Cordialement.</p>\r\n', 1447586492, 63, 234),
(273, '<p>ah ok xD</p>\r\n', 1447586498, 171, 68),
(274, 'Bienvenue dans l''équipe Ghost United\n						  Vous avez été accepté par suekko_senju qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447587724, 13, 143),
(275, 'Bienvenue dans l''équipe Team Phoenix\n						  Vous avez été accepté par loup qui est Bras droit\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447587981, 13, 227),
(276, '<p>? :/</p>\r\n', 1447588117, 80, 1),
(277, '<p>Pk pev est vip&nbsp;</p>\r\n', 1447588128, 230, 51),
(278, 'Bienvenue dans l''équipe Ghost United\n						  Vous avez été accepté par suekko_senju qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447588150, 13, 244),
(279, '<p>Attend ;)</p>\r\n', 1447588362, 1, 80),
(280, 'Bienvenue dans l''équipe Power Rangers Family\n						  Vous avez été accepté par CarolineSwan qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447588917, 13, 241),
(281, '<p>Salut ! &Eacute;tant un tr&egrave;s grand fan de Oprpg, je viens de m&#39;inscrire sur ce nouveau jeu. Alors pour commencer, bravo, &ccedil;a fait plaisir de voir une suite &agrave; ce jeu. Ensuite, j&#39;ai remarqu&eacute; un paquet de fautes dans vos News et que vous n&#39;avez pas encore de r&eacute;dacteur. Donc voil&agrave; je propose mes services pour r&eacute;diger les News et autres messages et pour g&eacute;rer tout ce qui touche &agrave; la r&eacute;daction. Voil&agrave; si vous &ecirc;tes int&eacute;ress&eacute;s vous pouvez me contacter sur Skype : cool_-drangon comme &ccedil;a je pourrais me pr&eacute;senter plus amplement :) Bonne continuation !</p>\r\n', 1447589048, 247, 1),
(282, '<p>?</p>\r\n', 1447589127, 1, 152),
(283, 'Bienvenue dans l''équipe Seireitei\n						  Vous avez été accepté par deteD qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447589183, 13, 213),
(284, '<p>Derni&egrave;re fois que je change...</p>\r\n', 1447589183, 1, 65),
(285, '<p>J&#39;ai rien supprim&eacute;.</p>\r\n', 1447589330, 1, 204),
(286, '<p>Tu peux le faire sur le forum pour le moment.;)</p>\r\n', 1447589355, 1, 218),
(287, '<p>Voil&agrave;</p>\r\n', 1447589437, 1, 222),
(288, '<p>Merci !</p>\r\n\r\n<p>C&#39;est cool d&#39;avoir des retours positif !&nbsp;<img alt="wink" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" /><br />\r\nMerci d&#39;avoir d&eacute;clarer cette faute on va corriger.</p>\r\n\r\n<p>Bonne journ&eacute;e.</p>\r\n', 1447589514, 1, 229),
(289, '<p>Pour le moment normalement Kalivia pourra corriger les fautes :P</p>\r\n', 1447589540, 1, 247),
(290, '<p><span style="color:#000080"><span style="background-color:#FFF0F5">Bleu</span></span><span style="color:#FFF0F5"><span style="background-color:#000000">Blanc</span></span><span style="color:#FF0000"><span style="background-color:#FFF0F5">Rouge</span></span></p>\r\n', 1447589820, 71, 51),
(291, 'Bienvenue dans l''équipe DarkUnited\n						  Vous avez été accepté par DarkSeray qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447589864, 13, 153),
(292, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Gaitan qui est Bras droit\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447590056, 13, 245),
(293, 'Bienvenue dans l''équipe DarkUnited\n						  Vous avez été accepté par FyFuZiK qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447590117, 13, 250),
(294, 'Bienvenue dans l''équipe Tengoku No Taiga\n						  Vous avez été accepté par SilverWing qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447590468, 13, 65),
(295, '<p>tu va reprendre quel version ducoup celle la ou celle d&#39;Enelos ? x)</p>\r\n', 1447590533, 68, 171),
(296, '<p>Ok pas de soucis :)</p>\r\n', 1447590662, 247, 1),
(297, '<p>Merci ! :D</p>\r\n', 1447590744, 222, 1),
(298, '<p>Non Mauroditmomo Wiper. Sur la v2 ^^ avec zoro ou d&#39;autres perso si tu veu que je te l&#39;ai site :p</p>\r\n', 1447590804, 222, 193),
(299, '<p>j&#39;attent de voir.</p>\r\n', 1447591517, 171, 68),
(300, '<p>Wsh c tu peu m accepter dans ton euipage c moi DarkRay je me suis cree un otre compt stp</p>\r\n', 1447591779, 153, 51),
(301, '<p>wtf sa ma mlmis sa : pendant 30seconde :*</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A PHP Error was encountered</p>\r\n\r\n<p>Severity: Warning</p>\r\n\r\n<p>Message: mysqli::real_connect(): (HY000/1045): Access denied for user &#39;root&#39;@&#39;localhost&#39; (using password: NO)</p>\r\n\r\n<p>Filename: mysqli/mysqli_driver.php</p>\r\n\r\n<p>Line Number: 161</p>\r\n\r\n<p>Backtrace:</p>\r\n\r\n<p>File: /home/vincent/onepiece/application/models/Users_model.php<br />\r\nLine: 4<br />\r\nFunction: database</p>\r\n\r\n<p>File: /home/vincent/onepiece/application/core/MY_Controller.php<br />\r\nLine: 9<br />\r\nFunction: model</p>\r\n\r\n<p>File: /home/vincent/onepiece/index.php<br />\r\nLine: 292<br />\r\nFunction: require_once</p>\r\n\r\n<h1>A Database Error Occurred</h1>\r\n\r\n<p>Unable to connect to your database server using the provided settings.</p>\r\n\r\n<p>Filename: core/Loader.php</p>\r\n\r\n<p>Line Number: 323</p>\r\n', 1447593605, 208, 1),
(302, '<p>okok :)</p>\r\n', 1447593705, 68, 171),
(303, '<p>Yep j&#39;ai vu t&#39;inqui&egrave;te, merci.</p>\r\n', 1447593875, 1, 208),
(304, '<p>Bah il y&nbsp;avait d&eacute;j&agrave; plus grand monde sur la v2 mais la manque shika et nes et d&#39;autre qui passe de temps en temps. :/</p>\r\n', 1447594002, 105, 80),
(305, '<p>Hier soir y&#39;avait ulqui mais il est juste pass&eacute; pour cracher sur le site :&#39;x</p>\r\n', 1447594164, 80, 105),
(306, '<p>Je te l&#39;ai dit en mp au cas ou sa serai des info sur la basede donnee j&#39;preferer de le dire en mp on sait jamais</p>\r\n', 1447594170, 208, 1),
(307, '<p>Ouep je l&#39;ai vu ahah</p>\r\n', 1447594544, 105, 80),
(308, '<p><strong>Comment &ecirc;tre VIP ?</strong></p>\r\n', 1447594718, 208, 147),
(309, 'Bonjour, l''équipe Les Grands Corsaires ne vous a pas accepté.\n						  Candidature traité par titi17470 qui est Capitaine\n						  Vous pouvez dès à présent dès à présent chercher un autre équipage !..\n						  Bonne chance !', 1447595055, 13, 230),
(310, '<p>Bonjour,</p>\r\n\r\n<p>On ne peut pas pour l&#39;instant. Bonne journ&eacute;e</p>\r\n', 1447595314, 147, 208),
(311, 'Bienvenue dans l''équipe La croisière s''amuse\n						  Vous avez été accepté par D.Jey qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447595556, 13, 216),
(312, '<p>Tla si oui accepte ma demande dan ton equipage je suis darkray mai jivai plus donc stp repond moi oui stp</p>\r\n', 1447595847, 153, 51),
(313, '<p>C&#39;est Juds ?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C etait toi qur skype non ? Meme t etais sur WoN</p>\r\n', 1447597080, 218, 123),
(314, '<p>Postule dans mon equipage :)</p>\r\n', 1447597166, 218, 222),
(315, '<p>Ouais, salut mec ! ;)</p>\r\n', 1447597247, 169, 235),
(316, 'Bonjour, l''équipe DarkNess Killeur ne vous a pas accepté.\n						  Candidature traité par Gaitan qui est Bras droit\n						  Vous pouvez dès à présent dès à présent chercher un autre équipage !..\n						  Bonne chance !', 1447597355, 13, 153),
(317, '<p>Nous recrutons dans notre &eacute;quipage qui a &eacute;tait dans la v2 dans le TOP 10 des &eacute;quipage rejoignez nous si vous voulez pour cela il nous faudra une belle lettre de motivation qui nous donne l&#39;envie de vous recruter !!!</p>\r\n', 1447598923, 99, 230),
(318, '<p>tu c quil fait la concurence<br />\r\n&nbsp;</p>\r\n', 1447600129, 78, 153),
(319, '<p>liste des co<br />\r\n&nbsp;</p>\r\n', 1447600225, 152, 1),
(320, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Gaitan qui est Bras droit\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447600272, 13, 153),
(321, '<p>&nbsp;Dumbeldort qui met vingt ans &agrave; me passer marine &ccedil;a fait trois fois j&#39;lui demande il l&#39;a pas encore fait :o)</p>\r\n', 1447601609, 80, 105),
(322, '<p>Il doit en avoir marre de faire &ccedil;a pour tout le monde mdr</p>\r\n', 1447602657, 105, 80),
(323, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Gaitan qui est Bras droit\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447602730, 13, 271),
(324, '<p>Ouai mais fait chier le truc aussi :x</p>\r\n\r\n<p>Il m&#39;a dit &quot;attends&quot;, c&#39;&eacute;tait il y a 4 heures :o)</p>\r\n', 1447602813, 80, 105),
(325, 'Bienvenue dans l''équipe Team Phoenix\n						  Vous avez été accepté par loup qui est Bras droit\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447603065, 13, 274),
(326, '<p>Mdr</p>\r\n\r\n<p>Moi c&#39;est l&#39;inverse, hier je dis &quot;merde je suis marine&quot; et dumbeldor me demande en quoi je veux qu&#39;il me change,&nbsp;je lui ai mis un gros vent(flemme d&#39;&eacute;crire) et donc je suis condamn&eacute; &agrave; &ecirc;tre un marine xD</p>\r\n', 1447603171, 105, 80),
(327, '<p>Ah ok parce qu&#39;il me semble te connaitre &nbsp;:o</p>\r\n', 1447603231, 193, 222),
(328, '<p>Haha xD Tu voulais passer en quoi ?</p>\r\n', 1447603295, 80, 105),
(329, '<p>Bienvenue &nbsp;;)</p>\r\n', 1447603383, 193, 213),
(330, '<p>Bah en vrai je m&#39;en bat un peu la race maintenant c&#39;est pas comme si j&#39;allais jouer donc bon ... :/</p>\r\n', 1447603460, 105, 80),
(331, '<p>Si ce jeux sort r&eacute;ellement un jour aussi :x, apr&egrave;s y&#39;a la v2.5 d&#39;oprpg qui est cens&eacute; sortir d&#39;en max une semaine, m&#39;enfin &agrave; tout les coups cette version sortira jamais aussi x&#39;D</p>\r\n', 1447603573, 80, 105),
(332, 'Bienvenue dans l''équipe Shandora\n						  Vous avez été accepté par Karugara qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447603758, 13, 250),
(333, '<p>Moi en vrai je veux juste un truc avec un tchat et les Une fonction &eacute;quipage pour pouvoir parler avec les Tens, c&#39;tout ce que je veux alors la actuellement &ccedil;a me suffit xD&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>mais gros je te laisse truc &agrave; faire &nbsp;^^</p>\r\n\r\n<p>tchouss gros ;)</p>\r\n', 1447603817, 105, 80),
(334, '<p>Ouai mais avec les deux versions &ccedil;&#39;va &ecirc;tre gal&egrave;re si on est pas tous ensemble :&#39;(</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tchu o/</p>\r\n', 1447603973, 80, 105);
INSERT INTO `privates_messages` (`id`, `content`, `date_time`, `id_author`, `id_dest`) VALUES
(335, 'Bienvenue dans l''équipe Shandora\n						  Vous avez été accepté par Karugara qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447604204, 13, 275),
(336, '<p>Chut, on dit rien.</p>\r\n', 1447604601, 171, 51),
(337, '<p>Salut je peux postul&eacute; dans ton &eacute;quipage ??</p>\r\n', 1447606187, 280, 218),
(338, '<p>Bien sur !</p>\r\n', 1447606243, 218, 280),
(339, 'Bienvenue dans l''équipe Shandora\n						  Vous avez été accepté par Karugara qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447606271, 13, 280),
(340, '<p>Salut, c&#39;est toi Titu ?&nbsp;<img alt="smiley" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/regular_smile.png" style="height:23px; width:23px" title="smiley" /></p>\r\n', 1447606541, 150, 270),
(341, '<p>Salut c&#39;est toi Zack ?&nbsp;<img alt="wink" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" /></p>\r\n', 1447606625, 150, 169),
(342, '<p>Salut titi , est-ce que je pourrais rejoindre ton &eacute;quipage stp ? ^^</p>\r\n', 1447606790, 276, 125),
(343, 'Bienvenue dans l''équipe Night~Blood\n						  Vous avez été accepté par Lucifer. qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447607238, 13, 282),
(344, '<p>Non est ce que tu peux me suprimer skyeo</p>\r\n\r\n<p>c est une demande</p>\r\n', 1447607291, 204, 1),
(345, '<p>je pense que l&#39;&eacute;quipe d&#39;enelos va pas faire grand chose et m&ecirc;me si il remettent oprpg v2 je suis pas certains qu&#39;ils vont pouvoir financer un serveur tr&egrave;s longtemps, mais si ils remettent la v2 j&#39;pense les ten vont rester sur la v2, et avoir un compte ici pour passer vite fait voir mais c&#39;tout</p>\r\n\r\n<p>tous ce qu&#39;on veut c&#39;est notre &eacute;quipage et un tchat, plus personne joue en vrai donc tu vois ... xD</p>\r\n\r\n<p>tema oprpg le temps que &ccedil;a a pris &agrave; max pour faire un jeu tout seul, mais au moins il avait un bon truc et tout seul, maintenant t&eacute;ma enelos team, 2 ans et juste un cahier des charges incomplet, faut pas se leurrer ...</p>\r\n\r\n<p>Et dumbledor c&#39;st bien il bosse et tout mais c&#39;pas oprpg, c&#39;est pas un d&eacute;faut (au contraire m&ecirc;me ahah) mais nous qui ne jouons plus et qui ne voulons plus jamais jouer, bah tout ce qu&#39;on veut c&#39;est notre compte, notre &eacute;quipage et surtout nos potos, et franchement les tchats &eacute;quipage puent la merde i&ccedil;i ...</p>\r\n\r\n<p>mais bon de toute mani&egrave;re les Ten etait mort on &eacute;tait 5 &agrave; parler et c&#39;tout tu vois donc m&ecirc;me si on doit rester ici &ccedil;a va pas &ecirc;tre bien compliqu&eacute;&nbsp;de r&eacute;unir le peu de ten qui reste ahah</p>\r\n\r\n<p>bon, j&#39;ai l&#39;impression de dire que dla merde et de tourner en rond bien jou&eacute; si t&#39;as lu cette merde ahah</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>mais apr&egrave;s shika j&#39;ai pas de nouvelle de lui depuis jeudi, c&#39;est peut-&ecirc;tre con ce que je dis, mais j&#39;esp&egrave;re qu&#39;il s&#39;est pas fait but&eacute; vu qu&#39;il habite &agrave; paris lol</p>\r\n', 1447607975, 105, 80),
(346, '<p>Salut c&#39;est mantala</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447608054, 78, 250),
(347, '<p>Mets moi pirates</p>\r\n', 1447608437, 227, 1),
(348, '<p>Enfaite nop</p>\r\n', 1447608465, 227, 1),
(349, '<p>Enfaite si sur est certains</p>\r\n', 1447608539, 227, 1),
(350, '<p>mai moi pirate stp je suis le pote de demones stp j aitai a la v2</p>\r\n', 1447608896, 148, 1),
(351, '<p>Je change plus d&eacute;sol&eacute; j&#39;ai trpp de demande, et il y a eu des abus.</p>\r\n', 1447609227, 1, 227),
(352, '<p>Je change plus, j&#39;ai trop de demande et il y a eu des abus.</p>\r\n', 1447609312, 1, 148),
(353, 'Bienvenue dans l''équipe Team Phoenix\n						  Vous avez été accepté par loup qui est Bras droit\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447609603, 13, 285),
(354, '<p>stp juste une fois pour moi je suis de la v2 stp dumbeldor stp</p>\r\n', 1447609721, 148, 1),
(355, '<p>#pavayp&eacute;day</p>\r\n\r\n<p>Ah ouai y&#39;a plus personne? C&#39;vrai que j&#39;ai stop depuis un moment moi, &ccedil;a fait genre...hum, 2 ans, putain d&eacute;j&agrave; 2ans x) la derni&egrave;re fois que j&#39;avais jou&eacute; j&#39;&eacute;tais &agrave; fond dans le jeux avec Hitsu/Jason xD</p>\r\n\r\n<p>Ah merde &ccedil;a craint</p>\r\n', 1447609760, 80, 105),
(356, '<p>&nbsp;c&#39;est mantala&nbsp;passe-moi ton num&eacute;ro de t&eacute;l&eacute;phone</p>\r\n', 1447610008, 286, 250),
(357, '<p>stp tla stp</p>\r\n', 1447610943, 148, 1),
(358, '<p>stp tla stp</p>\r\n', 1447610943, 148, 1),
(359, '<p>ouai &agrave; part shika benevolar nes et moi personne sur le tchat ...</p>\r\n\r\n<p>ulqui et zenlene tr&egrave;s rarement</p>\r\n\r\n<p>jason &ccedil;a fait surement aussi longtemps que toi qu&#39;on la pas vu :/</p>\r\n', 1447612820, 105, 80),
(360, '<p>&Eacute;tais-tu pr&eacute;sent sur la v2 ?</p>\r\n', 1447613100, 125, 276),
(361, '<p>&Eacute;tais-tu pr&eacute;sent sur la v2 ? Si oui, sous quel pseudo ?</p>\r\n', 1447613248, 125, 286),
(362, '<p>Ah ouai tout le monde c&#39;est barr&eacute;, mais j&#39;suis sur y&#39;en a plein qui vont revenir sur la v2.5 #believe xD</p>\r\n\r\n<p>On avait stop &agrave; peu pr&egrave;s en m&ecirc;me temps, faudra que je tente de lui envoyer un sms :x</p>\r\n', 1447613614, 80, 105),
(363, '<p>sais pas</p>\r\n', 1447613922, 83, 101),
(364, '<p>&ccedil;a serait le top les soir&eacute;es skype Ten comme &agrave; l&#39;anci&egrave;nne !&nbsp;<img alt="smiley" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/regular_smile.png" style="height:23px; width:23px" title="smiley" /></p>\r\n', 1447613923, 105, 80),
(365, '<p>M&#39;en branle</p>\r\n', 1447613934, 83, 166),
(366, '<p>Mon prix minimum en achat ou en vente de la yeezy?&nbsp;</p>\r\n', 1447613953, 90, 75),
(367, '<p>beh moi jveut les acheter et toi tu les vends donc jveut savoir tu les vend &agrave; cbm</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447614020, 75, 90),
(368, '<p>350e prix d&#39;amis&nbsp;</p>\r\n', 1447614041, 90, 75),
(369, '<p>je te fait confiance, jespere que c des vrais!!!</p>\r\n', 1447614071, 75, 90),
(370, '<p>Wsh j&#39;ai une t&ecirc;te &agrave; porter du faux?&nbsp;</p>\r\n', 1447614133, 90, 75),
(371, '<p>nan mais ma derni&egrave;re session active c&#39;&eacute;tait violent j&#39;&eacute;tais la h24 sur skype, bon le matin on &eacute;tait toujours les m&ecirc;me genre moi jason et faucon xD</p>\r\n\r\n<p>t&#39;&eacute;tais la quand on avais fait des try sur smiley ? c&#39;tait le gros bordel en vocal sur skype c&#39;&eacute;tait &eacute;norme xD</p>\r\n\r\n<p>le bon vieux temps ._.</p>\r\n', 1447614296, 80, 105),
(372, '<p>Ouep j&#39;&eacute;tais la premi&egrave;re fois qu&#39;il est tomb&eacute; ahah</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447614393, 105, 80),
(373, '<p>faucon&nbsp;<img alt="crying" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/cry_smile.png" style="height:23px; width:23px" title="crying" /></p>\r\n\r\n<p>on la voit plus non plus ...</p>\r\n', 1447614437, 105, 80),
(374, '<p>nan mais va falloir vous motiver &agrave; jouer bande de biatch, je veux que des ten dans le top 10 des futurs deux version non jouable du jeux :x</p>\r\n', 1447614475, 80, 105),
(375, '<p>tout le monde c&#39;est barr&eacute; &agrave; cause de la raz&nbsp; tpenses? ou juste qu&#39;ils voulaient plus jou&eacute; tout court</p>\r\n', 1447614608, 80, 105),
(376, '<p>non, mais ta une tete &agrave; vendre du faux</p>\r\n', 1447614710, 75, 90),
(377, '<p>ho possible :3</p>\r\n', 1447614756, 222, 193),
(378, '<p>Salut Titi c&#39;est moi Gold.Luffy ^^)</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447616111, 223, 125),
(379, '<p>Possible que tu delete mon compte pour que j&#39;en recr&eacute;er un en marine du coup ? J&#39;aimerais garder mon pseudo</p>\r\n', 1447616775, 80, 1),
(380, '<p>test 2</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>coucou? xD</p>\r\n', 1447617975, 72, 102),
(381, '<p>Bah &eacute;coute je peux pas t&#39;emp&ecirc;cher de r&ecirc;ver, mais vient pas pleurez quand tu verras Tenry&ucirc; remplis de level 2 ahah</p>\r\n\r\n<p>certains ouai mais l&#39;activit&eacute; de l&#39;&eacute;quipage avait d&eacute;j&agrave; baissait avant ... :/</p>\r\n', 1447618032, 105, 80),
(382, '<p>Yo olive &nbsp;c&#39;est moi &nbsp;Steph sa &nbsp;ft un bay comment &nbsp;tu vas ?</p>\r\n', 1447619568, 223, 60),
(383, '<p>yo sam:p</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447620249, 154, 235),
(384, '<p>XD enchant&eacute; &nbsp;;)</p>\r\n\r\n<p>Comment vas tu &nbsp;?:3</p>\r\n', 1447620673, 193, 222),
(385, '<p>De m&ecirc;me bien merci et toi ?</p>\r\n', 1447620734, 222, 193),
(386, '<p>Jooooooooooooooooo&#39;&nbsp;<img alt="heart" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/heart.png" style="height:23px; width:23px" title="heart" /></p>\r\n', 1447620896, 301, 130),
(387, '<p>Bien bien jai eu quelques blessures mais cpas grave xD</p>\r\n', 1447620897, 193, 222),
(388, '<p>si &ccedil;a va c&#39;est le principale :p</p>\r\n', 1447620949, 222, 193),
(389, '<p>Saluuuut tu veux int&eacute;grer les Seireitei &nbsp;?&nbsp;<img alt="wink" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" /></p>\r\n', 1447621138, 193, 154),
(390, '<p>de DeteD ? je serais fou avec toutes ses fautes xD</p>\r\n\r\n<p>mercipour l&#39;invit j&#39;prefere rester solo la ^^</p>\r\n', 1447621226, 154, 193),
(391, '<p>Laisse moi r&ecirc;ver *_*</p>\r\n\r\n<p>Ouai on verra bien si y&#39;en a qui revienne &agrave; la v2.5</p>\r\n', 1447621636, 80, 105),
(392, '<p>Mdrrrrr ya le correcteur auto *_*</p>\r\n\r\n<p>Okey n&#39;h&eacute;site pas &nbsp;:)</p>\r\n', 1447621885, 193, 154),
(393, '<p>C&#39;est toi Hakru ?&nbsp;<img alt="surprise" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/omg_smile.png" style="height:23px; width:23px" title="surprise" /></p>\r\n', 1447625419, 150, 154),
(394, '<p>Viens dans mon equipage Shandora et postule !</p>\r\n\r\n<p>Au passage belle avatar :o</p>\r\n', 1447629982, 218, 223),
(395, '<p><span style="color:#0000CD"><strong>C&#39;est mal foutu...</strong></span></p>\r\n', 1447630392, 102, 72),
(396, '<p>Salut !</p>\r\n\r\n<p>D&eacute;soler de te d&eacute;ranger , mais voila mon personnage n&#39;a aucun visage je ne sais pour quelle raison d&#39;ailleur ? xD</p>\r\n\r\n<p>Est-ce possible de suprimer un compte et de le recommencer?</p>\r\n', 1447630957, 302, 1),
(397, '<p>J&#39;viens de voir qu&#39;il y avais un tchat aide x) , d&eacute;soler du d&eacute;rangement .</p>\r\n', 1447631421, 302, 1),
(398, '<p>salut ,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>alors comment ce passe ce lancement de beta? je viens de le rejoindre je comprends pas encore le principe mais ca va venir XD</p>\r\n', 1447653612, 310, 63),
(399, '<p>Oui, et tu es ? ^.^&#39;</p>\r\n', 1447654696, 169, 150),
(400, '<p>Super et toi ?</p>\r\n', 1447657277, 60, 223),
(401, '<p>Non phil c&#39;est&nbsp; toi&nbsp; tu joue&nbsp; a la&nbsp; v3 ?</p>\r\n\r\n<p>:o</p>\r\n\r\n<p>&nbsp;c&#39;est moi loic ^^)</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447664344, 223, 237),
(402, '<p>Bah y a rien d&#39;autre que la partie communautaire pour le moment.</p>\r\n', 1447664990, 63, 310),
(403, '<p>Bah y a rien d&#39;autre que la partie communautaire pour le moment.</p>\r\n', 1447664990, 63, 310),
(404, '<p>Allo&nbsp; phil&nbsp; t&#39;es las ?</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447665173, 223, 237),
(405, '<p>C&#39;est Gr&eacute;goire <img alt="laugh" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/teeth_smile.png" style="height:23px; width:23px" title="laugh" /></p>\r\n', 1447667766, 150, 169),
(406, '<p>Tranquille&nbsp;&nbsp; alors&nbsp; c&#39;es comment&nbsp; d&#39;etre modo ? ^^)</p>\r\n\r\n<p>cest la dale ^^) <img alt="laugh" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/teeth_smile.png" style="height:23px; width:23px" title="laugh" /></p>\r\n', 1447669908, 223, 60),
(407, '<p>Merci mais je sais&nbsp; pas&nbsp; trop&nbsp; faut que j&#39;y reflechise car j&nbsp; veut creer&nbsp; mon proprope equipage et je veut rejoindre&nbsp; 2 equipages&nbsp;</p>\r\n', 1447669957, 223, 218),
(408, '<p>Salut Riyuma&nbsp; je peut rejoindre les Dnk ?</p>\r\n\r\n<p>sltp je&nbsp; vous admire trop&nbsp;</p>\r\n', 1447670464, 223, 51),
(409, '<p>Si tu veux ouep</p>\r\n', 1447671637, 51, 223),
(410, '<p>Je ne crois pas conna&icirc;tre de Loic, tu dois s&ucirc;rement confondre avec l&#39;autre Philippe, c&#39;est &agrave; dire Nelose, moi je suis le fr&egrave;re de CarolineSwan, IceDJack</p>\r\n', 1447671660, 237, 223),
(411, '<p>:o merci ^^)</p>\r\n\r\n<p>sa&nbsp; fait&nbsp; 9&nbsp; ans que je&nbsp; veut&nbsp; vous rejoindre</p>\r\n', 1447671705, 223, 51),
(412, '<p>Heu.... si&nbsp; tu&nbsp; le dit :x</p>\r\n\r\n<p>bon&nbsp; j&#39;ai une question&nbsp; tu ne serait pas Philipe Baka sur skype ?</p>\r\n', 1447671762, 223, 237),
(413, '<p>Ah non c&#39;est pas moi</p>\r\n', 1447671826, 237, 223),
(414, '<p>Ok ok U_u je&nbsp;&nbsp; te&nbsp; prit d&#39;effacer mes Mp xD</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447671882, 223, 237),
(415, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Riyuma qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447672068, 13, 194),
(416, '<p>Voilas ?</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447672283, 223, 51),
(417, '<p>C&#39;est bon&nbsp; j&#39;ai postuler ^^)</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447672919, 223, 51),
(418, '<p><span style="color:#00FF00">J&#39;avoue.</span> <span style="color:#800000">En plus d&#39;&ecirc;tre moche</span>, <span style="color:#00FF00">c&#39;est pas tellement intuitif.</span> <span style="color:#FFFF00">Peut &ecirc;tre l&#39;habitude de la V2</span>.. <span style="color:#FFA07A">Mais ca me fait chier de MP</span> <span style="color:#D3D3D3">ou r&eacute;pondre.</span> <span style="color:#00FFFF">Alors quand il y aura la partie jeu, j&#39;aurai encore moins envie. xD</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="color:#AFEEEE">Voil&agrave;, j&#39;esp&egrave;re avoir niquer tes yeux, si c&#39;est le cas, j&#39;aurai trouv&eacute; une utilit&eacute; a ce mode de MP</span><span style="color:#FFF0F5">.</span><span style="color:#00FFFF"> xD</span></p>\r\n', 1447674469, 72, 102),
(419, 'Bienvenue dans l''équipe DarkNess Killeur\n						  Vous avez été accepté par Riyuma qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447678120, 13, 223),
(420, '<p>Tu n&#39;as pas acc&egrave;s au forum secret ?</p>\r\n', 1447678308, 63, 51),
(421, '<p>Nop</p>\r\n', 1447678379, 51, 63),
(422, '<p>Dis moi sur quelles images tu bosses alors pour que je le dise dessus stp. Cela afin d&#39;&eacute;viter de bosser sur la m&ecirc;me chose.</p>\r\n', 1447678476, 63, 51),
(423, '<p>Dis moi sur quelles images tu bosses alors pour que je le dise dessus stp. Cela afin d&#39;&eacute;viter de bosser sur la m&ecirc;me chose.</p>\r\n', 1447678476, 63, 51),
(424, '<p><span style="font-family:georgia,serif">J&#39;d&eacute;bute, normalement la chapeau de Chopper, Le genre de casque d&#39;Ussop, les &eacute;p&eacute;es de Zoro, le bandeau de Zoro, la Coupe de Franky/Sandy et la chapeau/cheveux de luffy pour l&#39;instant j&#39;ai rien pr&eacute;vu d&#39;autre, j&#39;attends l&#39;avis &agrave; Dumbeldor d&egrave;s que j&#39;en refais je te mp ici&nbsp;</span></p>\r\n', 1447678647, 51, 63),
(425, '<p>oki, j&#39;avais fait le chapeau luffy mais je voulais le refaire car j&#39;&eacute;tais pas satisfait. Donc je vais faire autre chose si tu es dessus.</p>\r\n\r\n<p>Moi j&#39;ai fait baggy et le panda pour le moment.</p>\r\n', 1447678798, 63, 51),
(426, '<p>Oui ou non?</p>\r\n', 1447683198, 80, 1),
(427, '<p>Je vais d&eacute;velopper une fonction pour supprimer son compte&nbsp;<img alt="yes" src="http://minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" /></p>\r\n', 1447683320, 1, 80),
(428, '<p>Je vais d&eacute;velopper une fonction pour supprimer son compte ;) et non c&#39;est pas normal on essaye de r&eacute;soudre le probl&egrave;me.</p>\r\n', 1447683362, 1, 302),
(429, '<p>Je vais d&eacute;velopper une fonction pour supprimer son compte ;)</p>\r\n', 1447683392, 1, 148),
(430, '<p>http://img11.hostingpics.net/pics/639700LOL.png</p>\r\n', 1447683450, 102, 72),
(431, '<p>lol t&#39;es qui ?</p>\r\n', 1447690962, 123, 218),
(432, 'Bienvenue dans l''équipe Ghost United\n						  Vous avez été accepté par suekko_senju qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447690988, 13, 240),
(433, '<p>Ouais, c&#39;moi pourquoi ?</p>\r\n', 1447692198, 270, 150),
(434, '<p>Euh oui ^^ c&#39;est qui ? Et comment tu sais ?</p>\r\n', 1447693021, 154, 150),
(435, '<p>Ok merci pour la r&eacute;ponse . ;)</p>\r\n', 1447693080, 302, 1),
(436, '<p>salut tu est qui sur la v2<br />\r\n&nbsp;</p>\r\n', 1447693924, 78, 105),
(437, '<p>oui demones<br />\r\n&nbsp;</p>\r\n', 1447694051, 286, 125),
(438, 'Bienvenue dans l''équipe Dark Unity\n						  Vous avez été accepté par FyFuZiK qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447694551, 13, 78),
(439, '<p>Joooooooooooooo<img alt="heart" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/heart.png" style="height:23px; width:23px" title="heart" /><img alt="kiss" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/kiss.png" style="height:23px; width:23px" title="kiss" /></p>\r\n', 1447695596, 301, 233),
(440, '<p>T habites en Tunisie meme ? Cest Panda wan meme</p>\r\n', 1447696074, 218, 123),
(441, '<p>Pawpaaaaaaaaaaaw &lt;3 &lt;3</p>\r\n', 1447696264, 233, 301),
(442, '<p><strong>Salut, y&#39;a moyen d&#39;entrer dans la&nbsp;Power Rangers Family ?</strong></p>\r\n', 1447696299, 313, 97),
(443, 'Bienvenue dans l''équipe Dark Unity\n						  Vous avez été accepté par FyFuZiK qui est Capitaine\n						  Vous pouvez dès à présent profiter de votre nouvelle équipe, soyez fier !', 1447697455, 13, 314),
(444, '<p><strong>regardgeule de rayane la </strong></p>\r\n', 1447697583, 314, 78),
(445, '<p>ouai<br />\r\n&nbsp;</p>\r\n', 1447697646, 78, 314),
(446, '<h1>on parle de quoi<img alt="smiley" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/regular_smile.png" style="height:23px; width:23px" title="smiley" /></h1>\r\n', 1447697735, 314, 78),
(447, '<p>jsp<br />\r\n&nbsp;</p>\r\n', 1447697776, 78, 314),
(448, '<p>tu envoi<br />\r\n&nbsp;</p>\r\n', 1447698680, 78, 314),
(449, '<p>0782222138</p>\r\n', 1447698762, 314, 78),
(450, 'Bonjour, l''équipe Funny ne vous a pas accepté.\n						  Candidature traité par Maniak qui est Capitaine\n						  Vous pouvez dès à présent dès à présent chercher un autre équipage !..\n						  Bonne chance !', 1447699136, 13, 230),
(451, '<p>salut je suis nouveau et je te previens qu on viens de m&#39;insulter voila sont pseudo:deltaverita mercie d&#39;avance</p>\r\n', 1447699346, 314, 63),
(452, '<p>Bah c&#39;est cool mais c&#39;est normal quoi x)</p>\r\n', 1447699822, 60, 223),
(453, 'Bonjour, l''équipe Les Grands Corsaires ne vous a pas accepté.\n						  Candidature traité par titi17470 qui est Capitaine\n						  Vous pouvez dès à présent dès à présent chercher un autre équipage !..\n						  Bonne chance !', 1447700028, 13, 286),
(454, '<p>Pourquoi ?</p>\r\n', 1447700728, 105, 78),
(455, '<p>salut c&#39;est titi56 <img alt="wink" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" /></p>\r\n', 1447700827, 318, 125),
(456, '<p>dis moi stp<br />\r\n&nbsp;</p>\r\n', 1447701064, 78, 105),
(457, '<p>rejoin notre equipage a moi demon et fyfuzik</p>\r\n', 1447702857, 314, 67),
(458, '<p>est revient dans le tchat</p>\r\n', 1447702906, 314, 67),
(459, '<p>nop</p>\r\n', 1447703019, 105, 78),
(460, '<p>M&ecirc;me si ils reviennent ilsferont pas grand choses ... :/</p>\r\n', 1447703348, 105, 80),
(461, '<p>Wsh c moi FyFuZiK c mon deuxi&egrave;me compt mai il est marin c pour te demander si tu peu me mettre bd si tu me croit pas je vai sur l otre compt et je tenvoi un mp mai sava prendre un peu longtemps vu que je sui qur tel</p>\r\n', 1447703439, 285, 67),
(462, '<p>Ok, Ok, mais faut pas faire de betises :p</p>\r\n', 1447703683, 67, 285),
(463, '<p>Tinki&egrave;te pa je sui tr&egrave;s fidele demande a meufe si tu veu</p>\r\n', 1447703892, 285, 67),
(464, '<p>C&#39;est :.Mr.3.: je saispas si tu te souviens ^^&#39;</p>\r\n', 1447704517, 150, 154),
(465, '<p>C&#39;est :.Mr.3.: j&#39;sais pas si tu te souviens ^^&#39;</p>\r\n\r\n<p>C&#39;&eacute;tait surtout pour savoir si tu reprenais les Kings ?<img alt="smiley" src="http://minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/regular_smile.png" style="height:23px; width:23px" title="smiley" /></p>\r\n', 1447704580, 150, 270),
(466, '<p>SALOU</p>\r\n', 1447705066, 298, 13),
(467, '<p>Koukou</p>\r\n', 1447706225, 13, 298),
(468, '<p>slt ses moi clem</p>\r\n', 1447707061, 323, 170),
(469, '<p>slt ses moi clem</p>\r\n', 1447707069, 323, 170),
(470, '<p>bonsoir,</p>\r\n\r\n<p>Oki merci pour l&#39;info, je vais m&#39;en occuper.</p>\r\n\r\n<p>Cordialement.</p>\r\n', 1447707300, 63, 314),
(471, '<p>Oh ! Comment &ccedil;a va ?</p>\r\n', 1447707459, 125, 318),
(472, '<p>Avais-tu un compte sur la v2 ? Si oui, quel &eacute;tait le pseudo ?</p>\r\n', 1447707534, 125, 298);

-- --------------------------------------------------------

--
-- Structure de la table `privates_messages_appartenance`
--

CREATE TABLE IF NOT EXISTS `privates_messages_appartenance` (
  `id` int(11) NOT NULL,
  `id_msg` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `is_read` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=944 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `privates_messages_appartenance`
--

INSERT INTO `privates_messages_appartenance` (`id`, `id_msg`, `id_user`, `is_read`) VALUES
(1, 1, 1, 1),
(4, 2, 1, 1),
(5, 3, 1, 1),
(7, 4, 54, 1),
(8, 4, 51, 1),
(10, 5, 1, 1),
(11, 6, 1, 1),
(14, 7, 1, 1),
(15, 8, 51, 1),
(16, 8, 54, 1),
(17, 9, 1, 1),
(19, 10, 65, 1),
(20, 11, 65, 1),
(23, 12, 65, 1),
(24, 13, 13, 1),
(26, 14, 78, 1),
(27, 14, 76, 1),
(28, 15, 13, 1),
(29, 15, 81, 1),
(30, 16, 13, 1),
(32, 17, 13, 1),
(34, 18, 13, 1),
(36, 19, 13, 1),
(37, 19, 76, 0),
(38, 20, 13, 1),
(40, 21, 13, 1),
(42, 22, 13, 1),
(43, 22, 90, 1),
(48, 25, 13, 1),
(50, 26, 13, 1),
(51, 26, 97, 1),
(52, 27, 13, 1),
(54, 28, 101, 1),
(55, 28, 75, 1),
(56, 29, 13, 1),
(58, 30, 101, 1),
(60, 31, 75, 1),
(61, 31, 101, 1),
(62, 32, 101, 1),
(63, 32, 75, 1),
(64, 33, 75, 1),
(65, 33, 101, 1),
(66, 34, 75, 1),
(67, 34, 101, 1),
(68, 35, 75, 1),
(69, 35, 101, 1),
(70, 36, 101, 1),
(71, 36, 75, 1),
(72, 37, 80, 1),
(73, 37, 1, 1),
(74, 38, 13, 1),
(75, 38, 78, 1),
(76, 39, 1, 1),
(77, 39, 80, 1),
(78, 40, 101, 1),
(79, 40, 75, 1),
(80, 41, 13, 1),
(81, 41, 101, 1),
(82, 42, 80, 1),
(83, 42, 1, 1),
(84, 43, 78, 1),
(85, 43, 51, 1),
(86, 44, 51, 1),
(87, 44, 78, 1),
(88, 45, 78, 1),
(89, 45, 51, 1),
(90, 46, 75, 1),
(91, 46, 90, 1),
(92, 47, 80, 1),
(93, 47, 1, 1),
(94, 48, 1, 1),
(95, 48, 80, 1),
(96, 49, 71, 1),
(97, 49, 51, 1),
(98, 50, 80, 1),
(99, 50, 1, 1),
(100, 51, 113, 1),
(101, 51, 67, 1),
(102, 52, 51, 1),
(103, 52, 71, 1),
(104, 53, 71, 1),
(105, 53, 51, 1),
(106, 54, 13, 1),
(107, 54, 113, 1),
(108, 55, 13, 1),
(109, 55, 107, 1),
(110, 56, 116, 1),
(112, 57, 78, 1),
(113, 57, 1, 1),
(114, 58, 80, 1),
(115, 58, 51, 1),
(116, 59, 51, 1),
(117, 59, 80, 1),
(118, 60, 1, 1),
(119, 60, 78, 1),
(120, 61, 78, 1),
(121, 61, 1, 1),
(122, 62, 71, 1),
(123, 62, 84, 1),
(124, 63, 13, 1),
(125, 63, 115, 1),
(126, 64, 84, 1),
(127, 64, 71, 1),
(128, 65, 71, 1),
(129, 65, 84, 1),
(130, 66, 13, 1),
(131, 66, 105, 1),
(132, 67, 84, 1),
(133, 67, 71, 1),
(134, 68, 13, 1),
(135, 68, 116, 1),
(136, 69, 120, 1),
(139, 70, 120, 1),
(140, 71, 80, 1),
(141, 71, 1, 1),
(142, 72, 123, 1),
(143, 72, 1, 1),
(144, 73, 1, 1),
(145, 73, 123, 1),
(146, 74, 13, 1),
(148, 75, 123, 1),
(149, 75, 1, 1),
(150, 76, 116, 1),
(152, 77, 13, 1),
(153, 77, 136, 1),
(156, 79, 84, 1),
(157, 79, 136, 1),
(168, 85, 13, 1),
(170, 86, 13, 1),
(172, 87, 1, 1),
(173, 87, 123, 1),
(177, 89, 116, 1),
(178, 90, 13, 1),
(184, 93, 13, 1),
(186, 94, 123, 1),
(187, 94, 1, 1),
(195, 98, 123, 1),
(196, 99, 71, 1),
(200, 101, 13, 1),
(203, 102, 71, 1),
(204, 103, 71, 1),
(206, 104, 123, 1),
(207, 104, 126, 1),
(209, 105, 71, 1),
(210, 106, 126, 1),
(211, 106, 123, 1),
(212, 107, 71, 1),
(214, 108, 13, 1),
(215, 108, 94, 1),
(219, 110, 71, 1),
(222, 112, 65, 1),
(223, 112, 110, 1),
(224, 113, 13, 1),
(225, 113, 138, 1),
(226, 114, 78, 1),
(228, 115, 146, 1),
(229, 115, 1, 1),
(232, 117, 110, 1),
(233, 117, 65, 1),
(234, 118, 1, 1),
(235, 118, 146, 1),
(236, 119, 65, 1),
(237, 119, 110, 1),
(238, 120, 13, 1),
(239, 120, 1, 1),
(240, 121, 65, 1),
(241, 121, 110, 1),
(242, 122, 116, 1),
(243, 122, 88, 1),
(245, 123, 78, 1),
(246, 124, 51, 1),
(247, 124, 79, 1),
(248, 125, 79, 1),
(249, 125, 51, 1),
(250, 126, 116, 1),
(252, 127, 13, 1),
(253, 127, 151, 1),
(254, 128, 65, 1),
(255, 128, 110, 1),
(256, 129, 110, 1),
(257, 129, 65, 1),
(258, 130, 65, 1),
(259, 130, 110, 1),
(260, 131, 110, 1),
(261, 131, 65, 1),
(262, 132, 65, 1),
(263, 132, 110, 1),
(264, 133, 110, 1),
(265, 133, 65, 1),
(266, 134, 65, 1),
(267, 134, 110, 1),
(268, 135, 110, 1),
(269, 135, 65, 1),
(270, 136, 13, 1),
(272, 137, 13, 1),
(274, 138, 152, 1),
(275, 138, 1, 1),
(276, 139, 152, 1),
(278, 140, 116, 1),
(279, 140, 155, 1),
(280, 141, 13, 1),
(281, 141, 144, 1),
(282, 142, 65, 1),
(283, 142, 110, 1),
(284, 143, 13, 1),
(286, 144, 65, 1),
(287, 144, 110, 1),
(288, 145, 13, 1),
(289, 145, 161, 0),
(291, 146, 152, 1),
(292, 147, 63, 1),
(293, 147, 51, 1),
(294, 148, 13, 1),
(295, 148, 155, 1),
(296, 149, 116, 1),
(297, 149, 74, 1),
(298, 150, 51, 1),
(299, 150, 63, 1),
(300, 151, 51, 1),
(301, 151, 63, 1),
(302, 152, 116, 1),
(303, 152, 168, 1),
(304, 153, 63, 1),
(305, 153, 51, 1),
(306, 154, 168, 1),
(307, 154, 116, 1),
(310, 156, 13, 1),
(312, 157, 177, 1),
(314, 158, 179, 1),
(315, 158, 169, 1),
(316, 159, 74, 1),
(317, 159, 116, 1),
(318, 160, 169, 1),
(319, 160, 179, 1),
(320, 161, 179, 1),
(321, 161, 169, 1),
(322, 162, 121, 1),
(326, 164, 169, 1),
(327, 164, 179, 1),
(330, 166, 179, 1),
(331, 166, 169, 1),
(332, 167, 169, 1),
(333, 167, 179, 1),
(334, 168, 179, 1),
(335, 168, 169, 1),
(336, 169, 13, 1),
(338, 170, 169, 1),
(339, 170, 179, 1),
(340, 171, 181, 1),
(341, 171, 78, 1),
(342, 172, 179, 1),
(343, 172, 169, 1),
(345, 173, 51, 1),
(347, 174, 51, 1),
(350, 176, 110, 1),
(351, 176, 65, 1),
(352, 177, 80, 1),
(353, 177, 1, 1),
(354, 178, 116, 1),
(355, 178, 147, 1),
(356, 179, 116, 1),
(359, 180, 116, 1),
(360, 181, 13, 1),
(361, 181, 159, 1),
(362, 182, 80, 1),
(363, 182, 105, 1),
(364, 183, 13, 1),
(365, 183, 169, 1),
(366, 184, 65, 1),
(367, 184, 110, 1),
(369, 185, 110, 1),
(370, 186, 110, 1),
(371, 186, 65, 1),
(372, 187, 110, 1),
(375, 188, 110, 1),
(376, 189, 13, 1),
(378, 190, 110, 1),
(381, 191, 110, 1),
(382, 192, 65, 1),
(383, 192, 110, 1),
(384, 193, 110, 1),
(385, 193, 65, 1),
(386, 194, 65, 1),
(387, 194, 1, 1),
(388, 195, 172, 1),
(391, 196, 172, 1),
(393, 197, 116, 1),
(394, 198, 116, 1),
(395, 198, 199, 1),
(396, 199, 13, 1),
(397, 199, 199, 1),
(398, 200, 116, 1),
(401, 201, 116, 1),
(402, 202, 116, 1),
(405, 203, 116, 1),
(406, 204, 116, 1),
(408, 205, 13, 1),
(412, 207, 204, 1),
(413, 207, 1, 1),
(414, 208, 13, 1),
(417, 209, 116, 1),
(418, 210, 13, 1),
(419, 210, 204, 1),
(420, 211, 116, 1),
(422, 212, 116, 1),
(423, 212, 209, 1),
(424, 213, 209, 1),
(425, 213, 116, 1),
(426, 214, 116, 1),
(427, 214, 209, 1),
(428, 215, 208, 1),
(429, 215, 51, 1),
(430, 216, 209, 1),
(431, 216, 116, 1),
(432, 217, 116, 1),
(433, 217, 209, 0),
(434, 218, 13, 1),
(436, 219, 13, 1),
(437, 219, 209, 0),
(438, 220, 116, 1),
(439, 220, 209, 0),
(440, 221, 116, 1),
(441, 221, 209, 0),
(445, 223, 116, 1),
(446, 224, 13, 1),
(450, 226, 116, 1),
(453, 227, 116, 1),
(454, 228, 116, 1),
(456, 229, 116, 1),
(458, 230, 116, 1),
(461, 231, 116, 1),
(462, 232, 116, 1),
(463, 232, 193, 1),
(464, 233, 193, 1),
(465, 233, 116, 1),
(466, 234, 116, 1),
(467, 234, 193, 1),
(468, 235, 193, 1),
(469, 235, 116, 1),
(470, 236, 208, 1),
(471, 236, 51, 1),
(473, 237, 63, 1),
(475, 238, 2, 1),
(476, 239, 13, 1),
(477, 239, 219, 1),
(478, 240, 218, 1),
(479, 240, 1, 1),
(481, 241, 1, 1),
(483, 242, 63, 1),
(486, 244, 63, 1),
(489, 245, 63, 1),
(490, 246, 78, 1),
(491, 246, 181, 0),
(492, 247, 97, 1),
(493, 247, 140, 0),
(494, 248, 13, 1),
(495, 248, 135, 1),
(496, 249, 116, 1),
(497, 249, 228, 0),
(498, 250, 229, 1),
(499, 250, 1, 1),
(503, 252, 230, 1),
(504, 253, 230, 1),
(507, 254, 51, 1),
(508, 255, 13, 1),
(509, 255, 225, 0),
(510, 256, 51, 1),
(513, 257, 51, 1),
(514, 258, 193, 1),
(518, 260, 13, 1),
(520, 261, 235, 1),
(521, 261, 154, 1),
(522, 262, 235, 1),
(523, 262, 169, 1),
(524, 263, 235, 1),
(525, 263, 184, 0),
(526, 264, 230, 1),
(528, 265, 13, 1),
(530, 266, 238, 1),
(531, 266, 67, 1),
(532, 267, 234, 1),
(533, 267, 80, 1),
(534, 268, 13, 1),
(535, 268, 238, 1),
(536, 269, 13, 1),
(537, 269, 219, 1),
(538, 270, 13, 1),
(539, 270, 237, 1),
(540, 271, 67, 1),
(541, 271, 239, 1),
(542, 272, 63, 1),
(543, 272, 234, 1),
(546, 274, 13, 1),
(548, 275, 13, 1),
(549, 275, 227, 1),
(550, 276, 80, 1),
(551, 276, 1, 1),
(552, 277, 230, 1),
(553, 277, 51, 1),
(554, 278, 13, 1),
(556, 279, 1, 1),
(557, 279, 80, 1),
(558, 280, 13, 1),
(559, 280, 241, 1),
(560, 281, 247, 1),
(561, 281, 1, 1),
(562, 282, 1, 1),
(563, 282, 152, 1),
(564, 283, 13, 1),
(566, 284, 1, 1),
(567, 284, 65, 1),
(568, 285, 1, 1),
(569, 285, 204, 1),
(570, 286, 1, 1),
(571, 286, 218, 1),
(572, 287, 1, 1),
(574, 288, 1, 1),
(575, 288, 229, 0),
(576, 289, 1, 1),
(577, 289, 247, 1),
(578, 290, 71, 1),
(579, 290, 51, 1),
(580, 291, 13, 1),
(582, 292, 13, 1),
(583, 292, 245, 1),
(584, 293, 13, 1),
(585, 293, 250, 1),
(586, 294, 13, 1),
(587, 294, 65, 1),
(590, 296, 247, 1),
(591, 296, 1, 1),
(593, 297, 1, 1),
(595, 298, 193, 1),
(599, 300, 51, 1),
(601, 301, 1, 1),
(604, 303, 1, 1),
(606, 304, 105, 1),
(607, 304, 80, 1),
(608, 305, 80, 1),
(609, 305, 105, 1),
(611, 306, 1, 1),
(612, 307, 105, 1),
(613, 307, 80, 1),
(615, 308, 147, 1),
(616, 309, 13, 1),
(617, 309, 230, 0),
(618, 310, 147, 1),
(620, 311, 13, 1),
(621, 311, 216, 1),
(623, 312, 51, 1),
(624, 313, 218, 1),
(625, 313, 123, 1),
(626, 314, 218, 1),
(628, 315, 169, 1),
(629, 315, 235, 0),
(630, 316, 13, 1),
(632, 317, 99, 1),
(633, 317, 230, 0),
(634, 318, 78, 1),
(636, 319, 152, 1),
(637, 319, 1, 1),
(638, 320, 13, 1),
(640, 321, 80, 1),
(641, 321, 105, 1),
(642, 322, 105, 1),
(643, 322, 80, 1),
(644, 323, 13, 1),
(645, 323, 271, 1),
(646, 324, 80, 1),
(647, 324, 105, 1),
(648, 325, 13, 1),
(649, 325, 274, 1),
(650, 326, 105, 1),
(651, 326, 80, 1),
(652, 327, 193, 1),
(654, 328, 80, 1),
(655, 328, 105, 1),
(656, 329, 193, 1),
(658, 330, 105, 1),
(659, 330, 80, 1),
(660, 331, 80, 1),
(661, 331, 105, 1),
(662, 332, 13, 1),
(663, 332, 250, 1),
(664, 333, 105, 1),
(665, 333, 80, 1),
(666, 334, 80, 1),
(667, 334, 105, 1),
(668, 335, 13, 1),
(669, 335, 275, 1),
(671, 336, 51, 1),
(672, 337, 280, 1),
(673, 337, 218, 1),
(674, 338, 218, 1),
(675, 338, 280, 0),
(676, 339, 13, 1),
(677, 339, 280, 0),
(678, 340, 150, 1),
(679, 340, 270, 1),
(680, 341, 150, 1),
(681, 341, 169, 1),
(682, 342, 276, 1),
(683, 342, 125, 1),
(684, 343, 13, 1),
(685, 343, 282, 1),
(686, 344, 204, 1),
(687, 344, 1, 1),
(688, 345, 105, 1),
(689, 345, 80, 1),
(690, 346, 78, 1),
(691, 346, 250, 1),
(692, 347, 227, 1),
(693, 347, 1, 1),
(694, 348, 227, 1),
(695, 348, 1, 1),
(696, 349, 227, 1),
(697, 349, 1, 1),
(698, 350, 148, 1),
(699, 350, 1, 1),
(700, 351, 1, 1),
(701, 351, 227, 1),
(702, 352, 1, 1),
(703, 352, 148, 1),
(704, 353, 13, 1),
(706, 354, 148, 1),
(707, 354, 1, 1),
(708, 355, 80, 1),
(709, 355, 105, 1),
(710, 356, 286, 1),
(711, 356, 250, 1),
(712, 357, 148, 1),
(713, 357, 1, 1),
(714, 358, 148, 1),
(715, 358, 1, 1),
(716, 359, 105, 1),
(717, 359, 80, 1),
(718, 360, 125, 1),
(719, 360, 276, 0),
(721, 361, 286, 1),
(722, 362, 80, 1),
(723, 362, 105, 1),
(725, 363, 101, 0),
(726, 364, 105, 1),
(727, 364, 80, 1),
(729, 365, 166, 1),
(730, 366, 90, 1),
(731, 366, 75, 1),
(732, 367, 75, 1),
(733, 367, 90, 1),
(734, 368, 90, 1),
(735, 368, 75, 1),
(736, 369, 75, 1),
(737, 369, 90, 1),
(738, 370, 90, 1),
(739, 370, 75, 1),
(740, 371, 80, 1),
(741, 371, 105, 1),
(742, 372, 105, 1),
(743, 372, 80, 1),
(744, 373, 105, 1),
(745, 373, 80, 1),
(746, 374, 80, 1),
(747, 374, 105, 1),
(748, 375, 80, 1),
(749, 375, 105, 1),
(750, 376, 75, 1),
(751, 376, 90, 0),
(753, 377, 193, 1),
(755, 378, 125, 1),
(756, 379, 80, 1),
(757, 379, 1, 1),
(758, 380, 72, 1),
(759, 380, 102, 1),
(760, 381, 105, 1),
(761, 381, 80, 1),
(764, 383, 154, 1),
(765, 383, 235, 0),
(766, 384, 193, 1),
(769, 385, 193, 1),
(771, 386, 130, 0),
(772, 387, 193, 1),
(775, 388, 193, 1),
(776, 389, 193, 1),
(777, 389, 154, 1),
(778, 390, 154, 1),
(779, 390, 193, 1),
(780, 391, 80, 1),
(781, 391, 105, 1),
(782, 392, 193, 1),
(783, 392, 154, 1),
(784, 393, 150, 1),
(785, 393, 154, 1),
(786, 394, 218, 1),
(787, 394, 223, 1),
(788, 395, 102, 1),
(789, 395, 72, 1),
(790, 396, 302, 1),
(791, 396, 1, 1),
(792, 397, 302, 1),
(793, 397, 1, 1),
(794, 398, 310, 1),
(795, 398, 63, 1),
(796, 399, 169, 1),
(797, 399, 150, 1),
(799, 400, 223, 1),
(800, 401, 223, 1),
(801, 401, 237, 1),
(802, 402, 63, 1),
(803, 402, 310, 0),
(804, 403, 63, 1),
(805, 403, 310, 0),
(806, 404, 223, 1),
(807, 404, 237, 1),
(808, 405, 150, 1),
(809, 405, 169, 0),
(810, 406, 223, 1),
(812, 407, 223, 1),
(813, 407, 218, 1),
(814, 408, 223, 1),
(815, 408, 51, 1),
(816, 409, 51, 1),
(817, 409, 223, 1),
(818, 410, 237, 1),
(819, 410, 223, 1),
(820, 411, 223, 1),
(821, 411, 51, 1),
(822, 412, 223, 1),
(823, 412, 237, 1),
(824, 413, 237, 1),
(825, 413, 223, 1),
(826, 414, 223, 1),
(827, 414, 237, 0),
(828, 415, 13, 1),
(829, 415, 194, 0),
(830, 416, 223, 1),
(831, 416, 51, 1),
(832, 417, 223, 1),
(833, 417, 51, 1),
(834, 418, 72, 1),
(835, 418, 102, 1),
(836, 419, 13, 1),
(837, 419, 223, 0),
(838, 420, 63, 1),
(839, 420, 51, 1),
(840, 421, 51, 1),
(841, 421, 63, 1),
(842, 422, 63, 1),
(843, 422, 51, 1),
(844, 423, 63, 1),
(845, 423, 51, 1),
(846, 424, 51, 1),
(847, 424, 63, 1),
(848, 425, 63, 1),
(849, 425, 51, 1),
(850, 426, 80, 1),
(851, 426, 1, 1),
(852, 427, 1, 1),
(853, 427, 80, 1),
(854, 428, 1, 1),
(855, 428, 302, 1),
(856, 429, 1, 1),
(857, 429, 148, 0),
(858, 430, 102, 1),
(859, 430, 72, 1),
(860, 431, 123, 1),
(861, 431, 218, 1),
(862, 432, 13, 1),
(863, 432, 240, 0),
(864, 433, 270, 1),
(865, 433, 150, 1),
(866, 434, 154, 1),
(867, 434, 150, 1),
(868, 435, 302, 1),
(869, 435, 1, 1),
(870, 436, 78, 1),
(871, 436, 105, 1),
(872, 437, 286, 1),
(874, 438, 13, 1),
(875, 438, 78, 1),
(876, 439, 301, 1),
(877, 439, 233, 1),
(878, 440, 218, 1),
(879, 440, 123, 0),
(880, 441, 233, 1),
(881, 441, 301, 0),
(882, 442, 313, 1),
(883, 442, 97, 0),
(884, 443, 13, 1),
(887, 444, 78, 1),
(888, 445, 78, 1),
(891, 446, 78, 1),
(892, 447, 78, 1),
(894, 448, 78, 1),
(897, 449, 78, 1),
(898, 450, 13, 1),
(899, 450, 230, 0),
(901, 451, 63, 1),
(903, 452, 223, 0),
(904, 453, 13, 1),
(905, 453, 286, 0),
(906, 454, 105, 1),
(907, 454, 78, 1),
(908, 455, 318, 1),
(909, 455, 125, 1),
(910, 456, 78, 1),
(911, 456, 105, 1),
(913, 457, 67, 1),
(915, 458, 67, 1),
(916, 459, 105, 1),
(917, 459, 78, 0),
(918, 460, 105, 1),
(919, 460, 80, 0),
(920, 461, 285, 1),
(921, 461, 67, 1),
(922, 462, 67, 1),
(923, 462, 285, 1),
(924, 463, 285, 1),
(925, 463, 67, 1),
(926, 464, 150, 1),
(927, 464, 154, 0),
(928, 465, 150, 1),
(929, 465, 270, 0),
(931, 466, 13, 1),
(932, 467, 13, 1),
(933, 467, 298, 1),
(934, 468, 323, 1),
(935, 468, 170, 0),
(936, 469, 323, 1),
(937, 469, 170, 0),
(938, 470, 63, 1),
(939, 470, 314, 0),
(940, 471, 125, 1),
(941, 471, 318, 0),
(942, 472, 125, 1),
(943, 472, 298, 0);

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
  `date_time` int(12) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_tchats` int(11) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4253 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tchats_messages`
--

INSERT INTO `tchats_messages` (`id`, `message`, `date_time`, `is_block`, `id_tchats`, `id_users`) VALUES
(351, 'cc', 2147483647, 0, 2, 81),
(358, 'cc', 2147483647, 0, 2, 96),
(466, 'ou qon achaite 1 foué?', 2147483647, 0, 2, 75),
(922, 'A l''aide ', 2147483647, 0, 2, 135),
(1214, 'ok ', 2147483647, 0, 2, 166),
(1335, 'cc <img src="http://minegame.fr/assets/smileys/smile.gif" alt="smile" style="width: 19; height: 19; border: 0;" /> ... je sais cette question fais un peu noob mais comment on joue ? x)', 2147483647, 0, 2, 181),
(1361, 'Pour l''instant y a pas de jeu, c''est juste une bêta ^.^', 2147483647, 0, 2, 169),
(1392, 'D''accord merci ^^ vivement que je puisse detruire des marines :D ', 2147483647, 0, 2, 181),
(1834, 'Equipage Shandora recrute <img src="http://minegame.fr/assets/smileys/smile.gif" alt="smile" style="width: 19; height: 19; border: 0;" />', 2147483647, 0, 2, 218),
(1856, 'Pas mal et on peut modifier son perso parce que là je l''ai fais a l''arrache <br />\n', 2147483647, 0, 3, 202),
(1858, 'JasonKai_ &gt; Euh non mais t''en fais pas pour ca, y''a pas d''utilité pour l''instant a ca. Je crois qu''apres tu pourras changer etc... des persos One Piece, fruits du demons, <img src="http://minegame.fr/assets/smileys/wink.gif" alt="wink" style="width: 19; height: 19; border: 0;" />', 2147483647, 0, 3, 218),
(1860, 'JasonKai_ &gt; Postule pour Shandora <img src="http://minegame.fr/assets/smileys/smile.gif" alt="smile" style="width: 19; height: 19; border: 0;" />', 2147483647, 0, 3, 218),
(1879, '/recrute', 2147483647, 0, 3, 223),
(1880, 'xD , Je voulait tester si sa marchait encore .<br />\n<br />\nBon bref la Royal King recrute  venez.', 2147483647, 0, 3, 223),
(1891, 'Les Grands Corsaires sont de nouveau sur les mers ! Il cherche ses anciens compagnons en quête de nouveaux horizons.', 2147483647, 0, 3, 121),
(1906, 'Karugara &gt; Salle 3 pour ça.', 2147483647, 0, 2, 125),
(1907, 'Pingouin annonce que l''equipage Team Phoenix recrute ! (Marine)', 2147483647, 0, 3, 67),
(1916, 'Nous recrutons dans notre équipage qui a était dans la v2 dans le TOP 10 des équipage rejoignez nous si vous voulez pour cela il nous faudra une belle lettre de motivation qui nous donne l''envie de vous recruter !!!', 2147483647, 0, 3, 99),
(1991, 'On recrute Night~Blood <br />\nPGM les frères', 2147483647, 0, 3, 234),
(1995, 'Les &quot; NewBesterBoss &quot; recrute. Venez nombreux.', 2147483647, 0, 3, 139),
(2092, 'Cherche un équipage marine envoyé moi un message :D', 2147483647, 0, 3, 239),
(2101, 'Cherche un equipage pirate', 2147483647, 0, 3, 230),
(2272, 'http://minegame.fr/assets/img/avatarsJoueurs/125.png &gt; Je t''ai rien demandé toi calmes toi', 2147483647, 0, 2, 218),
(2286, 'Shandora recrute venez nombreux. Bonbons et confiserie a volonté', 2147483647, 0, 3, 218),
(2394, 'recrute', 2147483647, 0, 3, 203),
(2396, 'Nous recrutons ! (Marine)', 2147483647, 0, 3, 67),
(2510, 'La Hero association recrute des revolutionnaires .', 2147483647, 0, 3, 254),
(2517, 'Quelqu''un peux m''aider ?<br />\nLe visage de mon personnage ne s''affiche pas seulement ses cheveux . ', 2147483647, 0, 2, 254),
(2527, 'Hero &gt; C''est un bug d''avatar, ça sera bientôt réglé désolé!', 2147483647, 0, 2, 51),
(2538, 'Riyuma &gt; Ah dac alors pg .', 2147483647, 0, 2, 254),
(2553, 'Shandora recrute', 2147483647, 0, 3, 218),
(2875, 'Salut.<br />\n<br />\nComment j''augmente mon Niveau ?? Merci.<br />\n', 2147483647, 0, 2, 280),
(2885, 'IMAD.e.DDINE &gt; Pas possible pour l''instant, ce n''est qu''une version communautaire. <img src="http://minegame.fr/assets/smileys/smile.gif" alt="smile" style="width: 19; height: 19; border: 0;" />', 2147483647, 0, 2, 171),
(2888, 'Vends FDD (Fruit Du Demon) MP moi', 2147483647, 0, 3, 171),
(2889, 'Pas cher pr l''instant 1000 Berrys', 2147483647, 0, 3, 171),
(3010, 'Nous sommes le Meilleur, le plus grand, le plus beau, équipage de la Marine, venait chez nous <img src="http://minegame.fr/assets/smileys/smile.gif" alt="smile" style="width: 19; height: 19; border: 0;" />', 2147483647, 0, 3, 67),
(3031, 'Ont peux envoyer des images ou des screens sur le tchat?', 2147483647, 0, 2, 294),
(3037, 'RayaneDz &gt; Le lien, oui. Après, les images directement, j''suis pas sur :/', 2147483647, 0, 2, 67),
(3064, 'Kaneki &gt; comment ca y a des FDD ? Le jeu n a meme pas commence', 2147483647, 0, 3, 218),
(3076, 'Karugara &gt; Heu tu delire mec :x ', 2147483647, 0, 3, 223),
(3082, '     ', 2147483647, 0, 2, 153),
(3095, '==============================================================================================================================================================================================================================================================================================================================================================', 2147483647, 0, 2, 147),
(3127, 'King &gt; what xD', 2147483647, 0, 3, 218),
(3140, 'Karugara &gt; xD', 2147483647, 0, 3, 223),
(3151, 'On recrute ^^)<br />\n', 2147483647, 0, 3, 223),
(3192, 'je recrute ^^', 2147483647, 0, 3, 312),
(3193, 'pour le moment on peut pas pex?', 2147483647, 0, 2, 312),
(3298, 'Tom21 &gt; Il n''y a que la partie communautaire pour le moment. Le reste va arrivé plus tard.', 2147483647, 0, 2, 67),
(3320, 'Nous recrutons <img src="http://minegame.fr/assets/smileys/wink.gif" alt="wink" style="width: 19; height: 19; border: 0;" />', 2147483647, 0, 3, 67),
(3327, 'Nous recrutons dans notre équipage qui a était dans la v2 dans le TOP 10 des équipage rejoignez nous si vous voulez pour cela il nous faudra une belle lettre de motivation qui nous donne l''envie de vous recruter !!!', 2147483647, 0, 3, 99),
(3346, 'si vous vouler vous amuser rejoigner nous', 2147483647, 0, 3, 78),
(3396, '/recrute', 2147483647, 0, 3, 304),
(3397, 'ça ne marche plus :''( A l''heure actuelle je recrute n''importe qui donc venez dans l''équipage du futur meilleur pirate :D', 2147483647, 0, 3, 304),
(3746, 'c''est un event ? XD', 2147483647, 0, 1, 178),
(3747, 'Question pour les fans de DBZ :<br />\n<br />\nDans Dragon City (jeu), que fait le Dragon Chinois qui ressemble à Sheron :<br />\n1 - Il fait un kamehameha<br />\n2 - Il mange Sengoku avec son nuage magique<br />\n3 - Il chie des boules de cristal<br />\n4 - Il mange un ramen', 2147483647, 0, 1, 60),
(3748, 'Abyss &gt; Tu as tout deviné xD', 2147483647, 0, 1, 63),
(3749, 'kalivia euh dbz', 2147483647, 0, 1, 298),
(3750, 'Mais je suis fatigué...  Il est difficile de se réveiller après tant de temps d''hibernation... <br />\nJe pars faire une petite sieste, je serais là demain soir pour vous posez quelques questions. Le gagnant remportera quelques berrys.<br />\n<br />\nBonne nuit...', 2147483647, 0, 1, 13),
(3751, 'Kalivia &gt;. 1 2 3 4<br />\nJ''ai la bonne reponse ?', 2147483647, 0, 1, 67),
(3752, 'quel heure pandy? je taf jusqu''a 19h30 moi :(', 2147483647, 0, 1, 178),
(3753, 'il mange un ramen et après il chie des boules de cristal', 2147483647, 0, 1, 105),
(3754, 'Abyss &gt; Je ne sais pas combien de temps je vais dormir... Mais normalement je dors en moyenne 20 à 24h...', 2147483647, 0, 1, 13),
(3755, 'okay pandy :3 bonne nuit /o/', 2147483647, 0, 1, 178),
(3756, 'Abyss &gt; Merci, bonne nuit.', 2147483647, 0, 1, 13),
(3757, '*ZzzzzzzzzzzzZZzzzzzzz*', 2147483647, 0, 1, 13),
(3758, 'Pandaman &gt; Tu dort ou cette fois ci ?', 2147483647, 0, 1, 67),
(3759, 'Pingouin &gt; tu veux le reveiller ? :O', 2147483647, 0, 1, 1),
(3760, 'Dumbeldor &gt; OUIII', 2147483647, 0, 1, 298),
(3761, 'Il m''as pas repondu :(', 2147483647, 0, 1, 67),
(3762, 'Vous êtes méchant avec lui :s Demain il vous fera gagner des berry c''est comme ça qu''on le remercie ? :(', 2147483647, 0, 1, 1),
(3763, 'Dumbeldor &gt; Azy tu veux pas creer une arene a la vite fais ?', 2147483647, 0, 1, 298),
(3764, 'Saturz &gt; Nop, trop de paramètre qui rentre en compte. Mais promis j''essayerais de sortir quelques truc du jeu rapidement.', 2147483647, 0, 1, 1),
(3765, 'Dumbeldor &gt; OUAI merci', 2147483647, 0, 1, 298),
(3766, 'Toute facon, j''ai déjà essayer de le reveiller une fois, il est de tres mauvaise humeur, donc. Non.', 2147483647, 0, 1, 67),
(3767, 'Pingouin &gt; Faut éviter oui :D', 2147483647, 0, 1, 1),
(3768, 'Essayer demain soir de le réveiller on sait jamais faut éviter qu''il dorme trop !', 2147483647, 0, 1, 1),
(3769, ':o', 2147483647, 0, 1, 298),
(3770, 'Ok je le réveillerai vers 20h :D', 2147483647, 0, 1, 321),
(3771, ':o', 2147483647, 0, 1, 298),
(3772, 'Darksword &gt; Je te laisse essayer, a tes risques et péril :p', 2147483647, 0, 1, 1),
(3773, '22 heures de sommeil ?<br />\nHum... Faut voir.', 2147483647, 0, 1, 67),
(3774, 'qui fait quoi? ', 2147483647, 0, 1, 178),
(3775, 'Dumbeldor &gt; Prochaine maj dans max combien de temps ?', 2147483647, 0, 1, 298),
(3776, 'Dumbeldor &gt; Je suis prêt à en assumer les conséquences :$', 2147483647, 0, 1, 321),
(3777, 'fdfsd', 0, 0, 1, 1),
(3778, 'aaa', 0, 0, 1, 1),
(3779, 'dfd', 0, 0, 1, 1),
(3780, 'dfgfd', 0, 0, 1, 1),
(3781, 'fdsfsd', 0, 0, 1, 1),
(3782, 'aaaa', 0, 0, 1, 1),
(3783, 'dfg', 0, 0, 1, 1),
(3784, 'ff', 0, 0, 1, 1),
(3785, 'a', 0, 0, 1, 1),
(3786, 'fdsfd', 0, 0, 1, 13),
(3787, 'aaaaaaa', 0, 0, 1, 13),
(3788, 'fffffffffff', 0, 0, 1, 1),
(3789, 'gfdgf', 0, 0, 1, 13),
(3790, 'dfgf', 0, 0, 1, 13),
(3791, 'fgf', 0, 0, 1, 13),
(3792, 'dfgfd', 0, 0, 1, 13),
(3793, 'dfg', 0, 0, 1, 1),
(3794, 'gf', 0, 0, 1, 1),
(3795, 'df', 0, 0, 1, 13),
(3796, 'dfgf', 0, 0, 1, 13),
(3797, 'dsfds', 0, 0, 1, 13),
(3798, 'dfgf', 0, 0, 1, 13),
(3799, 'gfdgf', 0, 0, 1, 13),
(3800, 'dfgdf', 0, 0, 1, 1),
(3801, 'sdf', 0, 0, 1, 13),
(3802, 'fsd', 0, 0, 1, 13),
(3803, 'sdf', 0, 0, 1, 1),
(3804, 'dsfsd', 0, 0, 1, 13),
(3805, 'sdf', 0, 0, 1, 13),
(3806, 'sdf', 0, 0, 1, 13),
(3807, 'rf', 0, 0, 1, 13),
(3808, 'gh', 0, 0, 1, 13),
(3809, 'sfd', 0, 0, 1, 13),
(3810, 'fg', 0, 0, 1, 13),
(3811, 'df', 0, 0, 1, 13),
(3812, 'df', 0, 0, 1, 13),
(3813, 'fdsf', 0, 0, 1, 13),
(3814, 'dfg', 0, 0, 1, 1),
(3815, 'dfgfd', 0, 0, 1, 1),
(3816, 'aaa', 0, 0, 1, 1),
(3817, 'gf', 0, 0, 1, 1),
(3818, 'fd', 0, 0, 1, 1),
(3819, 'ff', 0, 0, 1, 1),
(3820, 'ff', 0, 0, 1, 34),
(3821, 'ccc', 0, 0, 1, 34),
(3822, 'ddf', 0, 0, 1, 1),
(3823, 'Salut', 0, 0, 1, 1),
(3824, 'Yo', 0, 0, 1, 1),
(3825, 'Koukou', 0, 0, 1, 34),
(3826, 'Koukou', 0, 0, 1, 34),
(3827, 'gf', 0, 0, 1, 34),
(3828, '<div class="tchat_message" id="msgT"> <div class="columns small-12"><div class="row"><div class="columns medium-2 small-3"><div><strong><a href="http://localhost/oprpg/users/view/13" class="VIP">Pandaman</a></strong></div><div class="message_tchat_milieu"><img data-pseudo="Pandaman" class="avatarTchat avatarTchat VIP" src="http://localhost/oprpg/assets/img/avatarsJoueurs/13.png"></img></div></div><div class="panel columns medium-10 small-9 messageTchat " id="VIP"><div class="message_tchat_haut" id="VIP"">PostÃ© Ã  3/1/2016 16:26:32</div><div class="message_tchat_milieu">Vincent vient de se connecter sur le tchat !</div><div class="message_tchat_bas"></div></div></div></div>', 0, 0, 1, 34),
(3829, 'Vincent vient de se connecter sur le tchat !', 0, 0, 1, 34),
(3830, 'Vincent vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3831, 'Vincent vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3832, 'Vincent > Test', 0, 0, 1, 34),
(3833, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3834, 'Test', 0, 0, 1, 1),
(3835, 'Dumbeldor > Yop', 0, 0, 1, 34),
(3836, 'Vincent vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3837, 'Ypop', 0, 0, 1, 34),
(3838, 'BIP', 0, 0, 1, 34),
(3839, 'BIP', 0, 0, 1, 1),
(3840, 'G', 0, 0, 1, 1),
(3841, 'G', 0, 0, 1, 1),
(3842, 'G', 0, 0, 1, 1),
(3843, 'Vincent vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3844, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3845, 'KOUKOU MES CHÃ‰RIES', 0, 0, 1, 34),
(3846, 'Vincent vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3847, 'test', 0, 0, 1, 34),
(3848, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3849, 'f', 0, 0, 1, 1),
(3850, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3851, 'dfs', 0, 0, 1, 1),
(3852, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3853, 'df', 0, 0, 1, 1),
(3854, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3855, 'sdfds', 0, 0, 1, 1),
(3856, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3857, 'fg', 0, 0, 1, 1),
(3858, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3859, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3860, 'fd', 0, 0, 1, 1),
(3861, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3862, 'dsfsd', 0, 0, 1, 1),
(3863, 'sdfds', 0, 0, 1, 1),
(3864, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3865, 'dfg', 0, 0, 1, 1),
(3866, 'dfgdf', 0, 0, 1, 1),
(3867, 'dfgfd', 0, 0, 1, 1),
(3868, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3869, 'df', 0, 0, 1, 1),
(3870, 'dfg', 0, 0, 1, 1),
(3871, 'gfd', 0, 0, 1, 1),
(3872, 'gfd', 0, 0, 1, 1),
(3873, 'Vincent vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3874, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3875, 'fdfds', 0, 0, 1, 1),
(3876, 'Vincent vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3877, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3878, 'dgf', 0, 0, 1, 34),
(3879, 'gfd', 0, 0, 1, 34),
(3880, 'Vincent vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3881, 'df', 0, 0, 1, 34),
(3882, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3883, 'gf', 0, 0, 1, 1),
(3884, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3885, 'fd', 0, 0, 1, 1),
(3886, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3887, 'gg', 0, 0, 1, 1),
(3888, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3889, 'ff', 0, 0, 1, 1),
(3890, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3891, 'dgdf', 0, 0, 1, 1),
(3892, 'fdsf', 0, 0, 1, 1),
(3893, 'dsfd', 0, 0, 1, 1),
(3894, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3895, 'fd', 0, 0, 1, 1),
(3896, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3897, 'df', 0, 0, 1, 1),
(3898, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3899, 'ghg', 0, 0, 1, 1),
(3900, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3901, 'gf', 0, 0, 1, 1),
(3902, 'dfgf', 0, 0, 1, 1),
(3903, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3904, 'fgf', 0, 0, 1, 1),
(3905, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3906, 'gfd', 0, 0, 1, 1),
(3907, 'aaaa', 0, 0, 1, 1),
(3908, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3909, 'rrrr', 0, 0, 1, 1),
(3910, 'Dumbeldor test', 0, 0, 1, 1),
(3911, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3912, 'Dumbeldor vient de se connecter sur le tchat !', 0, 0, 1, 13),
(3913, 'dsq', 0, 0, 1, 1),
(3914, 'test', 0, 0, 1, 1),
(3915, 'Cool', 0, 0, 1, 34),
(3916, 'Nickel', 0, 0, 1, 1),
(3917, 'ff', 1451919529, 0, 1, 34),
(3918, 'Vincent vient de se connecter sur le tchat !', 1451919661, 0, 1, 34),
(3919, 'test', 1451919663, 0, 1, 34),
(3920, 'Dumbeldor vient de se connecter sur le tchat !', 1451919667, 0, 1, 1),
(3921, 'Dumbeldor vient de se connecter sur le tchat !', 1451919692, 0, 1, 1),
(3922, 'fd', 1451919696, 0, 1, 1),
(3923, 'aa', 1451919699, 0, 1, 1),
(3924, 'sd', 1451919701, 0, 1, 34),
(3925, 'fd', 1451919704, 0, 1, 34),
(3926, 'dff', 1451919745, 0, 1, 1),
(3927, 'Dumbeldor vient de se connecter sur le tchat !', 1451919789, 0, 1, 1),
(3928, 'fd', 1451919792, 0, 1, 1),
(3929, 'Vincent vient de se connecter sur le tchat !', 1451919797, 0, 1, 34),
(3930, 'Dumbeldor vient de se connecter sur le tchat !', 1451919823, 0, 1, 13),
(3931, 'fd', 1451919825, 0, 1, 1),
(3932, 'Vincent vient de se connecter sur le tchat !', 1451919828, 0, 1, 13),
(3933, 'dfd', 1451919835, 0, 1, 34),
(3934, 'Dumbeldor vient de se connecter sur le tchat !', 1451919843, 0, 1, 13),
(3935, 'Dumbeldor vient de se connecter sur le tchat !', 1451919959, 0, 1, 13),
(3936, 'Vincent vient de se connecter sur le tchat !', 1451919962, 0, 1, 13),
(3937, 'dfd', 1451919966, 0, 1, 34),
(3938, 'dfd', 1451919973, 0, 1, 1),
(3939, 'Dumbeldor vient de se connecter sur le tchat !', 1451919974, 0, 1, 13),
(3940, 'f', 1451920411, 0, 1, 1),
(3941, 'Dumbeldor vient de se connecter sur le tchat !', 1451920436, 0, 1, 13),
(3942, 'Dumbeldor vient de se connecter sur le tchat !', 1451920438, 0, 1, 13),
(3943, 'dffd', 1451920439, 0, 1, 1),
(3944, 'Dumbeldor vient de se connecter sur le tchat !', 1451920774, 0, 1, 13),
(3945, 'Vincent vient de se connecter sur le tchat !', 1451920776, 0, 1, 13),
(3946, 'Dumbeldor vient de se connecter sur le tchat !', 1451920846, 0, 1, 13),
(3947, 'Vincent vient de se connecter sur le tchat !', 1451920849, 0, 1, 13),
(3948, 'Vincent vient de se connecter sur le tchat !', 1451920850, 0, 1, 13),
(3949, 'Vincent vient de se connecter sur le tchat !', 1451920852, 0, 1, 13),
(3950, 'Dumbeldor vient de se connecter sur le tchat !', 1451920889, 0, 1, 13),
(3951, 'Vincent vient de se connecter sur le tchat !', 1451920891, 0, 1, 13),
(3952, 'Dumbeldor vient de se connecter sur le tchat !', 1451920977, 0, 1, 13),
(3953, 'Vincent vient de se connecter sur le tchat !', 1451920980, 0, 1, 13),
(3954, 'dfsd', 1451920982, 0, 1, 34),
(3955, 'Dumbeldor vient de se connecter sur le tchat !', 1451921116, 0, 1, 13),
(3956, 'Vincent vient de se connecter sur le tchat !', 1451921118, 0, 1, 13),
(3957, 'Salut', 1451921124, 0, 1, 34),
(3958, 'Dumbeldor vient de se connecter sur le tchat !', 1451921315, 0, 1, 13),
(3959, 'Vincent vient de se connecter sur le tchat !', 1451921316, 0, 1, 13),
(3960, 'Vincent vient de se connecter sur le tchat !', 1451921402, 0, 1, 13),
(3961, 'Dumbeldor vient de se connecter sur le tchat !', 1451921405, 0, 1, 13),
(3962, 'Vincent vient de se connecter sur le tchat !', 1451921558, 0, 1, 13),
(3963, 'Dumbeldor vient de se connecter sur le tchat !', 1451921562, 0, 1, 13),
(3964, 'Vincent vient de se connecter sur le tchat !', 1451921694, 0, 1, 13),
(3965, 'Dumbeldor vient de se connecter sur le tchat !', 1451921698, 0, 1, 13),
(3966, 'dfd', 1451921701, 0, 1, 1),
(3967, 'sdfds', 1451921703, 0, 1, 34),
(3968, 'Vincent vient de se connecter sur le tchat !', 1451922019, 0, 1, 13),
(3969, 'Dumbeldor vient de se connecter sur le tchat !', 1451922023, 0, 1, 13),
(3970, 'df', 1451922027, 0, 1, 34),
(3971, 'Vincent vient de se connecter sur le tchat !', 1451922156, 0, 1, 13),
(3972, 'Dumbeldor vient de se connecter sur le tchat !', 1451922160, 0, 1, 13),
(3973, 'Dumbeldor vient de se connecter sur le tchat !', 1451922300, 0, 1, 13),
(3974, 'Vincent vient de se connecter sur le tchat !', 1451922301, 0, 1, 13),
(3975, 'Vincent vient de se connecter sur le tchat !', 1451922432, 0, 1, 13),
(3976, 'Dumbeldor vient de se connecter sur le tchat !', 1451922434, 0, 1, 13),
(3977, 'Vincent vient de se connecter sur le tchat !', 1451922570, 0, 1, 13),
(3978, 'Dumbeldor vient de se connecter sur le tchat !', 1451922593, 0, 1, 13),
(3979, 'KOUKOU\nSDDSFD', 1451922602, 0, 1, 1),
(3980, 'KOUKOU <br> kds', 1451922618, 0, 1, 1),
(3981, 'Vincent vient de se connecter sur le tchat !', 1451922731, 0, 1, 13),
(3982, 'dfd', 1451922732, 0, 1, 34),
(3983, 'fd', 1451922736, 0, 1, 34),
(3984, 'Dumbeldor vient de se connecter sur le tchat !', 1451922749, 0, 1, 13),
(3985, 'Vincent vient de se connecter sur le tchat !', 1451923591, 0, 1, 13),
(3986, 'Dumbeldor vient de se connecter sur le tchat !', 1451923602, 0, 1, 13),
(3987, 'fdfsd', 1451923606, 0, 1, 1),
(3988, 'Dumbeldor vient de se connecter sur le tchat !', 1451923761, 0, 1, 13),
(3989, 'Dumbeldor vient de se connecter sur le tchat !', 1451923778, 0, 1, 13),
(3990, 'Vincent vient de se connecter sur le tchat !', 1451923780, 0, 1, 13),
(3991, 'ds', 1451923824, 0, 1, 1),
(3992, 'Dumbeldor vient de se connecter sur le tchat !', 1451923911, 0, 1, 13),
(3993, 'Vincent vient de se connecter sur le tchat !', 1451923917, 0, 1, 13),
(3994, 'Vincent vient de se connecter sur le tchat !', 1451923920, 0, 1, 13),
(3995, 'aaaa', 1451923938, 0, 1, 1),
(3996, 'Dumbeldor vient de se connecter sur le tchat !', 1451924217, 0, 1, 13),
(3997, 'Vincent vient de se connecter sur le tchat !', 1451924220, 0, 1, 13),
(3998, 'Vincent vient de se connecter sur le tchat !', 1451924221, 0, 1, 13),
(3999, 'Vincent vient de se connecter sur le tchat !', 1451924299, 0, 1, 13),
(4000, 'Dumbeldor vient de se connecter sur le tchat !', 1451924446, 0, 1, 13),
(4001, 'Vincent vient de se connecter sur le tchat !', 1451924451, 0, 1, 13),
(4002, 'Vincent vient de se connecter sur le tchat !', 1451924452, 0, 1, 13),
(4003, 'Dumbeldor vient de se connecter sur le tchat !', 1451924528, 0, 1, 13),
(4004, 'Dumbeldor vient de se connecter sur le tchat !', 1451924529, 0, 1, 13),
(4005, 'Dumbeldor vient de se connecter sur le tchat !', 1451924562, 0, 1, 13),
(4006, 'Dumbeldor vient de se connecter sur le tchat !', 1451924563, 0, 1, 13),
(4007, 'Dumbeldor vient de se connecter sur le tchat !', 1451924563, 0, 1, 13),
(4008, 'Vincent vient de se connecter sur le tchat !', 1451924566, 0, 1, 13),
(4009, 'Vincent vient de se connecter sur le tchat !', 1451924566, 0, 1, 13),
(4010, 'Vincent vient de se connecter sur le tchat !', 1451924567, 0, 1, 13),
(4011, 'Vincent vient de se connecter sur le tchat !', 1451924568, 0, 1, 13),
(4012, 'Vincent vient de se connecter sur le tchat !', 1451924569, 0, 1, 13),
(4013, 'Vincent vient de se connecter sur le tchat !', 1451924570, 0, 1, 13),
(4014, 'Vincent vient de se connecter sur le tchat !', 1451924570, 0, 1, 13),
(4015, 'Vincent vient de se connecter sur le tchat !', 1451924570, 0, 1, 13),
(4016, 'Vincent vient de se connecter sur le tchat !', 1451924570, 0, 1, 13),
(4017, 'Vincent vient de se connecter sur le tchat !', 1451924643, 0, 1, 13),
(4018, 'Vincent vient de se connecter sur le tchat !', 1451924730, 0, 1, 13),
(4019, 'Vincent vient de se connecter sur le tchat !', 1451924731, 0, 1, 13),
(4020, 'Dumbeldor vient de se connecter sur le tchat !', 1451924735, 0, 1, 13),
(4021, 'Dumbeldor vient de se connecter sur le tchat !', 1451924738, 0, 1, 13),
(4022, 'Vincent vient de se connecter sur le tchat !', 1451924850, 0, 1, 13),
(4023, 'Vincent vient de se connecter sur le tchat !', 1451924851, 0, 1, 13),
(4024, 'Vincent vient de se connecter sur le tchat !', 1451924853, 0, 1, 13),
(4025, 'Dumbeldor vient de se connecter sur le tchat !', 1451924856, 0, 1, 13),
(4026, 'Dumbeldor vient de se connecter sur le tchat !', 1451924861, 0, 1, 13),
(4027, 'dfd', 1451924864, 0, 1, 1),
(4028, 'dfd', 1451924866, 0, 1, 34),
(4029, 'dfdfd', 1451924867, 0, 1, 34),
(4030, 'aaaaa', 1451924869, 0, 1, 34),
(4031, 'Dumbeldor vient de se connecter sur le tchat !', 1451924980, 0, 1, 13),
(4032, 'Vincent vient de se connecter sur le tchat !', 1451924989, 0, 1, 13),
(4033, 'Dumbeldor vient de se connecter sur le tchat !', 1451925110, 0, 1, 13),
(4034, 'Vincent vient de se connecter sur le tchat !', 1451925113, 0, 1, 13),
(4035, 'fd', 1451925187, 0, 1, 1),
(4036, 'Dumbeldor vient de se connecter sur le tchat !', 1451925208, 0, 1, 13),
(4037, 'fg', 1451925210, 0, 1, 1),
(4038, 'Vincent vient de se connecter sur le tchat !', 1451925212, 0, 1, 13),
(4039, 'g', 1451925212, 0, 1, 34),
(4040, 'dfd', 1451925217, 0, 1, 34),
(4041, 'dfd', 1451925220, 0, 1, 1),
(4042, 'Dumbeldor vient de se connecter sur le tchat !', 1451925335, 0, 1, 13),
(4043, 'Dumbeldor vient de se connecter sur le tchat !', 1451925336, 0, 1, 13),
(4044, 'Vincent vient de se connecter sur le tchat !', 1451925339, 0, 1, 13),
(4045, 'Vincent vient de se connecter sur le tchat !', 1451925340, 0, 1, 13),
(4046, 'fd', 1451925342, 0, 1, 34),
(4047, 'sdfsd', 1451925344, 0, 1, 1),
(4048, 'Dumbeldor vient de se connecter sur le tchat !', 1451925465, 0, 1, 13),
(4049, 'Vincent vient de se connecter sur le tchat !', 1451925469, 0, 1, 13),
(4050, 'Vincent vient de se connecter sur le tchat !', 1451925469, 0, 1, 13),
(4051, 'Dumbeldor vient de se connecter sur le tchat !', 1451925472, 0, 1, 13),
(4052, 'fg', 1451925508, 0, 1, 1),
(4053, 'fa', 1451925510, 0, 1, 34),
(4054, 'Dumbeldor vient de se connecter sur le tchat !', 1451925582, 0, 1, 13),
(4055, 'Dumbeldor vient de se connecter sur le tchat !', 1451925584, 0, 1, 13),
(4056, 'Vincent vient de se connecter sur le tchat !', 1451925586, 0, 1, 13),
(4057, 'Vincent vient de se connecter sur le tchat !', 1451925606, 0, 1, 13),
(4058, 'fd', 1451925803, 0, 1, 1),
(4059, 'df', 1451925874, 0, 1, 34),
(4060, 'df', 1451925876, 0, 1, 1),
(4061, 'test', 1451925902, 0, 1, 1),
(4062, 'test', 1451925904, 0, 1, 34),
(4063, 'dfd', 1451925908, 0, 1, 34),
(4064, '.', 1451925933, 0, 1, 1),
(4065, 'hg', 1451925936, 0, 1, 34),
(4066, 'gh', 1451925939, 0, 1, 1),
(4067, 'jh', 1451925942, 0, 1, 34),
(4068, 'hjh', 1451925973, 0, 1, 1),
(4069, 'ghjh', 1451925975, 0, 1, 34),
(4070, 'fd', 1451926047, 0, 1, 34),
(4071, 'fg', 1451926220, 0, 1, 1),
(4072, 'dsfd', 1451926227, 0, 1, 1),
(4073, 'dfd', 1451926233, 0, 1, 34),
(4074, 'fghg', 1451926430, 0, 1, 34),
(4075, 'jhgjh', 1451926433, 0, 1, 1),
(4076, 'ghdg', 1451926435, 0, 1, 34),
(4077, 'hgjgh', 1451926440, 0, 1, 34),
(4078, 'fd', 1451926509, 0, 1, 1),
(4079, 'ghgh', 1451927424, 0, 1, 34),
(4080, 'hg', 1451927429, 0, 1, 34),
(4081, 'gfhg', 1451927437, 0, 1, 1),
(4082, 'd', 1451927482, 0, 1, 34),
(4083, 'd', 1451927485, 0, 1, 1),
(4084, 'dfds', 1451927811, 0, 1, 1),
(4085, 'dfd', 1451927814, 0, 1, 34),
(4086, 'ds', 1451927886, 0, 1, 34),
(4087, '2', 1451927914, 0, 1, 1),
(4088, '1', 1451927916, 0, 1, 34),
(4089, '1', 1451927922, 0, 1, 34),
(4090, '2', 1451927925, 0, 1, 1),
(4091, 'f', 1451928003, 0, 1, 34),
(4092, 'fd', 1451928426, 0, 1, 1),
(4093, 'fdgd', 1451928430, 0, 1, 34),
(4094, 'dfgfd', 1451928432, 0, 1, 1),
(4095, 'dfgfd', 1451928439, 0, 1, 1),
(4096, 'dgf', 1451928443, 0, 1, 34),
(4097, 'dfd', 1451928539, 0, 1, 34),
(4098, 'ds', 1451928553, 0, 1, 34),
(4099, 'gfgdf', 1451928595, 0, 1, 1),
(4100, 'dfgdf', 1451928597, 0, 1, 34),
(4101, 'dfgdf', 1451928598, 0, 1, 1),
(4102, 'dfgfd', 1451928600, 0, 1, 1),
(4103, 'df', 1451928673, 0, 1, 34),
(4104, 'fd', 1451928772, 0, 1, 1),
(4105, 'df', 1451928777, 0, 1, 34),
(4106, 'sfd', 1451928783, 0, 1, 34),
(4107, 'fds', 1451928813, 0, 1, 34),
(4108, 'fsdfd', 1451928815, 0, 1, 1),
(4109, 'df', 1451928848, 0, 1, 1),
(4110, 'gg', 1451929024, 0, 1, 34),
(4111, 'hgf', 1451929028, 0, 1, 1),
(4112, 'fgh', 1451929037, 0, 1, 1),
(4113, 'fgh', 1451929041, 0, 1, 34),
(4114, 'fd', 1451929140, 0, 1, 34),
(4115, 'gfhfg', 1451929153, 0, 1, 34),
(4116, 'fghgf', 1451929154, 0, 1, 1),
(4117, 'fghgf', 1451929156, 0, 1, 1),
(4118, 'f', 1451929568, 0, 1, 34),
(4119, 'ghg', 1451929663, 0, 1, 34),
(4120, 'fghgf', 1451929665, 0, 1, 1),
(4121, 'sdf', 1451929745, 0, 1, 1),
(4122, 'f', 1451929816, 0, 1, 34),
(4123, 'hhghgf', 1451930048, 0, 1, 1),
(4124, 'fghgf', 1451930050, 0, 1, 34),
(4125, 'hgf', 1451930053, 0, 1, 1),
(4126, 'gfhgf', 1451930057, 0, 1, 1),
(4127, 'dfgfd', 1451930324, 0, 1, 1),
(4128, 'dfgfd', 1451930327, 0, 1, 34),
(4129, 'fd', 1451930335, 0, 1, 1),
(4130, 'ghf', 1451930486, 0, 1, 1),
(4131, 'jhgjgh', 1451930490, 0, 1, 34),
(4132, 'hgjhg', 1451930494, 0, 1, 1),
(4133, 'dfgf', 1451930951, 0, 1, 1),
(4134, 'dfgf', 1451930957, 0, 1, 34),
(4135, 'gfd', 1451930961, 0, 1, 1),
(4136, 'fd', 1451930966, 0, 1, 1),
(4137, 'gf', 1451931096, 0, 1, 1),
(4138, 'hfg', 1451931098, 0, 1, 34),
(4139, 'fghgf', 1451931101, 0, 1, 1),
(4140, 'fd', 1451931307, 0, 1, 34),
(4141, 'fd', 1451931309, 0, 1, 1),
(4142, 'fg', 1451931401, 0, 1, 1),
(4143, '.', 1451931471, 0, 1, 1),
(4144, 's', 1451931474, 0, 1, 34),
(4145, 'fgf', 1451931697, 0, 1, 1),
(4146, 'fd', 1451931762, 0, 1, 1),
(4147, 'df', 1451931763, 0, 1, 34),
(4148, 'gfg', 1451931866, 0, 1, 1),
(4149, 'gfhg', 1451931868, 0, 1, 34),
(4150, 'gfhfg', 1451931871, 0, 1, 1),
(4151, 'fd', 1451931948, 0, 1, 1),
(4152, 'gdfg', 1451932065, 0, 1, 1),
(4153, 'g', 1451932067, 0, 1, 34),
(4154, 'ds', 1451932137, 0, 1, 1),
(4155, 'fds', 1451932138, 0, 1, 34),
(4156, 'fd', 1451932653, 0, 1, 34),
(4157, 'gf', 1451932654, 0, 1, 1),
(4158, 'fd', 1451933220, 0, 1, 34),
(4159, 'sfd', 1451933228, 0, 1, 1),
(4160, 'sd', 1451933410, 0, 1, 34),
(4161, 'jhhhhhhhhhhhhhhhhhhhhhhh', 1451933840, 0, 1, 34),
(4162, 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', 1451933984, 0, 1, 34),
(4163, 'AAAAAAAAAAAAAAAAAA', 1451934350, 0, 1, 34),
(4164, 'AAAAAAAAAAAAAAAAAAA', 1451934558, 0, 1, 34),
(4165, 'j', 1451935230, 0, 1, 34),
(4166, 'df', 1451935266, 0, 1, 34),
(4167, 'sdf', 1451935270, 0, 1, 1),
(4168, 'hgf', 1451935408, 0, 1, 34),
(4169, 'hfg', 1451935409, 0, 1, 1),
(4170, 'fd', 1451935475, 0, 1, 34),
(4171, 'fd', 1451935477, 0, 1, 1),
(4172, 'sdfs', 1451935480, 0, 1, 34),
(4173, 'fds', 1451935483, 0, 1, 34),
(4174, 'fdsfd', 1451935486, 0, 1, 1),
(4175, 'kl', 1451935599, 0, 1, 34),
(4176, 'sd', 1451935718, 0, 1, 34),
(4177, 'gh', 1451936202, 0, 1, 34),
(4178, 'sdfsd', 1451936320, 0, 1, 1),
(4179, 'sdf', 1451936384, 0, 1, 34),
(4180, 'a', 1451936386, 0, 1, 34),
(4181, 'eee', 1451936388, 0, 1, 34),
(4182, 'a', 1451936391, 0, 1, 1),
(4183, 'dsdqs', 1451936394, 0, 1, 1),
(4184, 'a', 1451936395, 0, 1, 34),
(4185, 'd', 1451936402, 0, 1, 34),
(4186, 'DDDDDD', 1451936412, 0, 1, 1),
(4187, 'EEE', 1451936417, 0, 1, 34),
(4188, 'ZZZ', 1451936425, 0, 1, 34),
(4189, 'dsfd', 1451936551, 0, 1, 1),
(4190, 'gggg', 1451936556, 0, 1, 34),
(4191, 'fd', 1451936658, 0, 1, 34),
(4192, 'fd', 1451936755, 0, 1, 1),
(4193, 'gfg', 1451936763, 0, 1, 34),
(4194, 'sdfd', 1451936766, 0, 1, 34),
(4195, 'sdf', 1451936776, 0, 1, 1),
(4196, 'ads', 1451936783, 0, 1, 1),
(4197, 'dfd', 1451936785, 0, 1, 34),
(4198, 'gfd', 1451936856, 0, 1, 1),
(4199, 'gf', 1451936868, 0, 1, 34),
(4200, 'sdf', 1451936922, 0, 1, 1),
(4201, 'fd', 1451937002, 0, 1, 1),
(4202, 'fdsfs', 1451937006, 0, 1, 34),
(4203, 'ads', 1451937010, 0, 1, 34),
(4204, 'sdfsd', 1451937015, 0, 1, 1),
(4205, 'aaa', 1451937017, 0, 1, 1),
(4206, 'aaaaaaaaaaa', 1451937019, 0, 1, 34),
(4207, 'KOUKOU', 1451937053, 0, 1, 13),
(4208, 'Ã‡A VA BIEN ?', 1451937060, 0, 1, 13),
(4209, 'NICKEL :)', 1451937066, 0, 1, 13),
(4210, 'cOOL', 1451937072, 0, 1, 34),
(4211, 'fsd', 1451937076, 0, 1, 34),
(4212, 'fds', 1451937078, 0, 1, 13),
(4213, 'dsf', 1451937080, 0, 1, 1),
(4214, 'df', 1451937084, 0, 1, 13),
(4215, 'dsqd', 1451937086, 0, 1, 34),
(4216, 'aaaaaaaaa', 1451937088, 0, 1, 34),
(4217, 'ffffffff', 1451937090, 0, 1, 34),
(4218, 'fffffffff', 1451937093, 0, 1, 13),
(4219, 'fffffffff', 1451937095, 0, 1, 34),
(4220, 'aaaaaaaaaaaaaa', 1451937098, 0, 1, 34),
(4221, 'fffffffffffff', 1451937100, 0, 1, 34),
(4222, 'ffffffffff', 1451937104, 0, 1, 34),
(4223, 'eeeeeeeeeeeeeeeeeeeeeeeeeeee', 1451937107, 0, 1, 34),
(4224, 'sdfsdf', 1451937109, 0, 1, 13),
(4225, 'sdfsd', 1451937110, 0, 1, 13),
(4226, 'fsdfds', 1451937112, 0, 1, 13),
(4227, 'aaaaaaaaaa', 1451937114, 0, 1, 13),
(4228, 'ds', 1451937129, 0, 1, 13),
(4229, 'cx', 1451937132, 0, 1, 1),
(4230, 'cx', 1451937138, 0, 1, 13),
(4231, 'qsd', 1451937186, 0, 1, 13),
(4232, 'qsd', 1451937190, 0, 1, 1),
(4233, 'ds', 1451937198, 0, 1, 13),
(4234, 'qsd', 1451937199, 0, 1, 1),
(4235, 'gfd', 1451937280, 0, 1, 13),
(4236, 'df', 1451937366, 0, 1, 34),
(4237, 'df', 1451937374, 0, 1, 13),
(4238, 'df', 1451937378, 0, 1, 1),
(4239, 'sdf', 1451937380, 0, 1, 34),
(4240, 'df', 1451937385, 0, 1, 34),
(4241, 'df', 1451937388, 0, 1, 1),
(4242, 'dfd', 1451937392, 0, 1, 13),
(4243, 'fsd', 1451937404, 0, 1, 34),
(4244, 'sdf', 1451937407, 0, 1, 34),
(4245, 'fsd', 1451937410, 0, 1, 34),
(4246, 'sdf', 1451937451, 0, 1, 34),
(4247, 'sdf', 1451937511, 0, 1, 34),
(4248, 'sdf', 1451937515, 0, 1, 13),
(4249, 'sdfds', 1451937517, 0, 1, 13),
(4250, 'fd', 1451937594, 0, 1, 34),
(4251, 'sdf', 1451937602, 0, 1, 13),
(4252, 'aa', 1451937604, 0, 1, 13);

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
  `registration` int(15) NOT NULL,
  `last_action` int(15) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `is_kick` tinyint(1) NOT NULL,
  `messNumber` int(11) NOT NULL,
  `lvl` int(5) NOT NULL,
  `berry` int(20) NOT NULL DEFAULT '0',
  `avatar` mediumtext NOT NULL,
  `id_objects` int(11) NOT NULL,
  `id_users_types` int(11) NOT NULL,
  `id_crews_candidacy` int(11) NOT NULL,
  `id_lost_pass` int(10) NOT NULL,
  `id_faction` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=324 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `ban`, `pseudo`, `email`, `birthday`, `sexe`, `password`, `registration`, `last_action`, `ip`, `is_kick`, `messNumber`, `lvl`, `berry`, `avatar`, `id_objects`, `id_users_types`, `id_crews_candidacy`, `id_lost_pass`, `id_faction`) VALUES
(1, 0, 'Dumbeldor', 'vincentglize@hotmail.fr', '0000-00-00', NULL, '$2y$10$IEa/yx86U2McxcjbOvFztO42KXsfCCySz75rnHc7.MbejHj6ZPOJ6', 1433827274, 1451937585, '::1', 0, 205, 0, 0, '', 1, 24, 0, 0, 2),
(2, 0, 'Sumo', 'sumo@sumo.fr', '0000-00-00', NULL, '$2y$10$bf6tS8IrhdG9AtfIsllc/OGROZK0Sj6NYdcP05Aos/Kk4eq/acp2m', 1446927274, 1447700634, '93.182.192.37', 0, 4, 0, 0, '', 1, 22, 0, 0, 2),
(13, 0, 'Pandaman', 'lebg@lebg.fr', '0000-00-00', NULL, '$2y$10$IEa/yx86U2McxcjbOvFztO42KXsfCCySz75rnHc7.MbejHj6ZPOJ6', 1433827274, 1451937606, '::1', 0, -10, 0, 0, '', 1, 2, 0, 0, 1),
(34, 0, 'Vincent', 'omagad@gmail.fr', '0000-00-00', NULL, '$2y$10$IEa/yx86U2McxcjbOvFztO42KXsfCCySz75rnHc7.MbejHj6ZPOJ6', 1446927274, 1451937596, '::1', 0, 3, 0, 0, '', 1, 1, 0, 0, 1),
(46, 0, 'retest', 'sdfdsgfg@Kdslfd.fr', '0000-00-00', NULL, '$2y$10$rIEanCTG9ZrIkwCRDJic.e0rFwonXqFxqT8672mqG8lUBuKTha3Ym', 1447255827, 1447265098, '', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/3.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/7.png";s:4:"hair";s:35:"assets/img/avatars/man/hair/0/3.png";}', 1, 1, 0, 0, 2),
(51, 0, 'Riyuma', 'real-madrid-38080@hotmail.com', '0000-00-00', NULL, '$2y$10$FtF.mStVwLKXkQ0.p3VMlOTZLf7k9ngfzsiz5Od.z7y8PW2QzKOWS', 1447268627, 1447679669, '109.13.240.113', 0, 21, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/37.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/bleu/11.png";}', 1, 10, 0, 0, 3),
(53, 0, 'dumi', 'dumi@gmail.fr', '0000-00-00', NULL, '$2y$10$qIuI6HwMCZqxesVmhdzKZOQdMVhscDGbc5/Z/4968fPRSaELgq.Kq', 1447269620, 0, '', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/31.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/5.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/blanc/31.png";}', 1, 1, 0, 0, 2),
(54, 0, 'Trinity', 'kevinvaik@hotmail.com', '0000-00-00', NULL, '$2y$10$vqzo1hqxHbPAZn6hy44Vg.TUMuSH8KvG./ZGmmZ3QbSaL.LOrhIRy', 1447270164, 1447646356, '70.81.55.21', 0, 1, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/11.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/31.png";}', 1, 1, 0, 0, 2),
(58, 0, 'test', 'dfsdfds@fdslfds.fr', '0000-00-00', NULL, '$2y$10$xV6i2Cc9/eF6ilcS1kfbqeMLopnaSdStmTDdl91YY/Gi1oVbLWz6C', 1447271144, 0, '', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/32.png";}', 1, 1, 0, 0, 2),
(59, 0, 'Bella', 'bella@gmail.fr', '0000-00-00', NULL, '$2y$10$BY1r33bBxmNIcHeLA3kKOujINqXHqgCN6SMAzkeTmRhp8taCrFKDe', 1447276152, 1447276166, '', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Femme";s:4:"body";s:35:"assets/img/avatars/woman/body/2.png";s:4:"eyes";s:36:"assets/img/avatars/woman/eyes/14.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/5.png";s:4:"hair";s:41:"assets/img/avatars/woman/hair/jaune/8.png";}', 1, 1, 0, 0, 2),
(60, 0, 'Kalivia', 'boisson.olivia@gmail.com', '0000-00-00', NULL, '$2y$10$iXwpYiZZ0A4Rx.u3uAK6ueyjHo5TLWd2wU/PUXdJn31XknOkdNZIa', 1447276659, 1447697134, '95.170.32.75', 0, 15, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Femme";s:4:"body";s:35:"assets/img/avatars/woman/body/1.png";s:4:"eyes";s:36:"assets/img/avatars/woman/eyes/14.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:42:"assets/img/avatars/woman/hair/rouge/48.png";}', 1, 19, 0, 0, 3),
(61, 0, 'Sasuke', 'olive.depizza@gmail.com', '0000-00-00', NULL, '$2y$10$m8Gndb0/nAU4sGi4ql1EceZ2r/UgsTmQ3XBwCOLUspOQLPna23ZQq', 1447278097, 1447353951, '95.170.32.75', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/7.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/5.png";}', 1, 1, 0, 0, 3),
(62, 0, 'Mosu', 'badrogeorges@gmail.com', '0000-00-00', NULL, '$2y$10$4QukZ4aA8SDTNuhh0RtKa.BW/geeeWIM1k5VDU.dbQBuj3r4H3eXK', 1447278168, 1447598914, '93.182.192.37', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/5.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/5.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/vert/20.png";}', 1, 1, 0, 0, 3),
(63, 0, 'Maniak', 'maniac-77@hotmail.fr', '0000-00-00', NULL, '$2y$10$zMvQ.iAFYtdGOIRV1gKlTuRtQtBymnhPQJGXuBw7rNI4RwMNFBBgq', 1447294675, 1447698836, '82.244.229.213', 0, 1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/36.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/37.png";}', 1, 20, 0, 0, 1),
(64, 0, 'retestatest', 'fdfdsgf@fdgf.fr', '0000-00-00', NULL, '$2y$10$9dLAHMudRK./Hbb01aIYte8lYIjLkNqX4lOvO8EN0dkt97li2EO.O', 1447508639, 0, '', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/43.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/5.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/jaune/33.png";}', 1, 1, 0, 0, 2),
(65, 0, 'Ghib', 'gnj@outlook.fr', '0000-00-00', NULL, '$2y$10$HkCL4ICzGwhs29QYY/IW1.x.jTAGFGxatBi1k8eCoPkQNzq/vyZ5.', 1447509025, 1447696366, '82.242.25.243', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/10.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/36.png";}', 1, 1, 0, 0, 3),
(66, 0, 'Lotfi', 'lotfimatoug@hotmail.fr', '0000-00-00', NULL, '$2y$10$XsGBzZnSf.fECT3tHxDrBuFyU6LvtZM69h6VA90PzdKE797CqB76O', 1447510855, 1447693413, '78.199.120.12', 0, 6, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/4.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/5.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/15.png";}', 1, 1, 0, 0, 2),
(67, 0, 'Pingouin', 'lafondxavier@gmail.com', '0000-00-00', NULL, '$2y$10$/YZNsHzRZjJjqRbpOTOCvudjX2krOuWdUz9qGj4rni/xrgpEJX26u', 1447510930, 1447700652, '90.60.131.38', 0, 7, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/6.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:41:"assets/img/avatars/man/hair/marron/18.png";}', 1, 1, 0, 0, 2),
(68, 0, 'Zanketsu', 'hugodu766@gmail.com', '0000-00-00', NULL, '$2y$10$53XkbSwD.Mi5xlWgTarMquEMrUiFvgwFsjwnw1jAG4KtdrMwvY/F6', 1447510930, 1447697752, '92.152.148.112', 0, 13, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/rouge/7.png";}', 1, 1, 0, 0, 1),
(69, 0, 'JackDaniels', 'Sora_no_hai@outlook.fr', '0000-00-00', NULL, '$2y$10$vN7YHhUUMt26SZ/N0NxPWOpkJAEeip.i7diP7iKZumJ.HdHlWyUum', 1447511016, 1447597250, '90.57.174.73', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/5.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/8.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/1.png";}', 1, 1, 0, 0, 3),
(70, 0, 'HancokK', 'ledieudelamer@gmail.com', '0000-00-00', NULL, '$2y$10$.fVsXhaToKCgzXq5/asPzu.6TC0g/wN7iBltpUnp3GZFGfmGNVBRi', 1447511045, 1447694163, '92.139.103.72', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Femme";s:4:"body";s:35:"assets/img/avatars/woman/body/1.png";s:4:"eyes";s:35:"assets/img/avatars/woman/eyes/4.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:41:"assets/img/avatars/woman/hair/noir/18.png";}', 1, 1, 0, 0, 3),
(71, 0, 'Gaitan', 'cleretludo01@gmail.com', '0000-00-00', NULL, '$2y$10$seVmOxRRRtR18.N0pKptgurStAxTzAkANNJh24kcfbaCc2jn6Cgca', 1447511086, 1447692345, '2.11.251.98', 0, 2, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/13.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/7.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/1.png";}', 1, 1, 0, 0, 3),
(72, 0, 'Kira Kazuto', 'wkira28@gmail.com', '0000-00-00', NULL, '$2y$10$BMwgvDGPJ0Aejzhm/6mm..JA/R9dZvruwb04a.lpfIq0ZXfzFpaQ2', 1447511115, 1447699540, '92.92.50.108', 0, 1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/38.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/36.png";}', 1, 1, 0, 0, 3),
(73, 0, 'Benevolar', 'benevolar.nouveau.project@gmail.com', '0000-00-00', NULL, '$2y$10$W4dFinoDRbokK7BhRG8rjeKlMJJUm7wVR4Z1O8skuQScYFF6ghmES', 1447511159, 1447693875, '83.202.118.225', 0, 2, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/11.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/bleu/9.png";}', 1, 1, 0, 0, 2),
(74, 0, 'Elerion', 'elerion@yopmail.com', '0000-00-00', NULL, '$2y$10$MtEQ7CD/pliKhaOhdPDkUeKbv59YYuCSqkoWloDeG8BLVfcfJYNyG', 1447511209, 1447706204, '92.146.123.207', 0, 28, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/2.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:41:"assets/img/avatars/man/hair/orange/16.png";}', 1, 1, 0, 0, 2),
(75, 0, 'suekko_senju', 'benjamindoujar@yahoo.fr', '0000-00-00', NULL, '$2y$10$IAoRqNqU9xq8xy/YSeqoleGNQOhpvqCWnt28tX0aPjGabJLYHiiLG', 1447511216, 1447690192, '83.201.245.15', 0, -1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/20.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/7.png";s:4:"hair";s:41:"assets/img/avatars/man/hair/orange/33.png";}', 1, 1, 0, 0, 2),
(76, 0, 'trafalgar21', 'b.rage1@orange.fr', '0000-00-00', NULL, '$2y$10$qps7KhUX4DmMFMw6lficzeMFFxxboHZaQKP6gsLl4m3YcanyfjBDi', 1447511359, 1447656983, '90.4.246.241', 0, 27, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/29.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/bleu/25.png";}', 1, 1, 0, 0, 3),
(77, 0, 'Chronos', 'kajulien@hotmail.fr', '0000-00-00', NULL, '$2y$10$GkfRRDrxuYm1dAdQTWzlOOAgXW0j2uzj/pecbqQbV1uOZENPYGkxe', 1447511451, 1447589642, '82.241.173.176', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/7.png";}', 1, 1, 0, 0, 3),
(78, 0, 'Demones', 'Darksidus@gmx.fr', '0000-00-00', NULL, '$2y$10$i.o9WlX2OWdcUiaAJ1odPeVmTkEgfcf3vvjA5vDsl3Ao4JeA1XmLS', 1447511487, 1447694430, '82.216.179.2', 0, 7, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/3.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/15.png";}', 1, 1, 0, 0, 3),
(79, 0, 'Gecko', 'infinity.gekko@gmail.com', '0000-00-00', NULL, '$2y$10$DoindfGmfffAicJd/4DXy.p7/dQXu0g8QLamHwjT4iRwEk4hspfXq', 1447511608, 1447612517, '89.3.138.120', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/12.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/21.png";}', 1, 1, 0, 0, 2),
(80, 0, 'Zatan', 'zatanstark@yahoo.fr', '0000-00-00', NULL, '$2y$10$eFGBmG5L.ZIr2EcV9g.bPOwd2qXdEpO14dM5Lg/VnQdK8/wCfiBjm', 1447511633, 1447700092, '109.214.37.71', 0, 60, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/5.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/14.png";}', 1, 1, 0, 0, 1),
(81, 0, 'Vinceee', 'vincentroudot135@yahoo.fr', '0000-00-00', NULL, '$2y$10$NEp8IfucOYVu49.YuJbmiO/TOfycfWQgNSzZUStkg4QYcN2jTGQ4m', 1447511766, 1447619298, '86.217.127.152', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/11.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/7.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/21.png";}', 1, 1, 0, 0, 2),
(82, 0, 'Saintow', 'FairySnowBalls@hotmail.com', '0000-00-00', NULL, '$2y$10$Gmx/U/z.pMvdXDdHIumj/un/l8lurYl4A6Ggivi/3R09m.wVczCoq', 1447511814, 1447511825, '91.88.75.111', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/2.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/30.png";}', 1, 1, 0, 0, 2),
(83, 0, 'KenseiKun', 'a.guillaume178@gmail.com', '0000-00-00', NULL, '$2y$10$8ZCKEPzT2yF0NGL6MitEgu.rdAqgCmArwUcwa65.a5YlpAIc9JtL.', 1447511927, 1447613908, '90.1.211.188', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/7.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/blanc/1.png";}', 1, 1, 0, 0, 2),
(84, 0, 'Zogene', 'zogene.zogene@gmail.com', '0000-00-00', NULL, '$2y$10$getc9FUptYY.G/VO0HZCX.M2JgVAK2ldCk09WxXsvGKtmWqChzmUq', 1447512062, 1447705517, '176.182.37.155', 0, 3, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/18.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/22.png";}', 1, 1, 0, 0, 3),
(85, 0, 'SoraCF', 'jibrryl@gmail.fr', '0000-00-00', NULL, '$2y$10$3y2Rgxm/rN2wh1Wc.lymruIugZp7OW7jibkkrEZS7HKFTmfw1pPzS', 1447512075, 1447512098, '109.210.36.105', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/4.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/8.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/25.png";}', 1, 1, 0, 0, 2),
(86, 0, 'Dieu', 'pomme.pote@yahoo.fr', '0000-00-00', NULL, '$2y$10$oHmmQTJq9d4S/.vPOmTiROvzLDscHj3VUfPEDWkj44WQecYNq9.5K', 1447512100, 1447514509, '109.214.37.71', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/34.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/blanc/33.png";}', 1, 1, 0, 0, 3),
(87, 0, 'D.Feitan', 'olivieralfa@hotmail.fr', '0000-00-00', NULL, '$2y$10$/I4O/7WVi6aAgAJ2g6t/Yex8E0yEd3pqussJQ5ZgBndMqOe3iRnsW', 1447512223, 1447521732, '90.5.37.125', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/22.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/jaune/27.png";}', 1, 1, 0, 0, 3),
(88, 0, 'AkaFun', 'benrj9@hotmail.fr', '0000-00-00', NULL, '$2y$10$mWZWI7MvO1BeaFjqHTYgIevoAVcSTDbVj/seY5n2MakUyOTJHlTDi', 1447512409, 1447526789, '81.65.98.10', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/10.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/6.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/bleu/13.png";}', 1, 1, 0, 0, 2),
(89, 0, 'Toshiro.', 'lousynave@gmail.com', '0000-00-00', NULL, '$2y$10$NJC9kCbsu5dVk.LMH85T9.SblzgnnIizZUaV0AGyEIdXGFRZDYz.S', 1447512414, 1447651967, '92.147.37.149', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/33.png";}', 1, 1, 0, 0, 3),
(90, 0, 'Benkei', 'el_manouan@live.fr', '0000-00-00', NULL, '$2y$10$G9Gu3KdUP9as8lEyTzU3sOFiaFcTn0t9hmUhfTZ5SOXYkylwq99IC', 1447512421, 1447613906, '109.15.229.135', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/19.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/8.png";}', 1, 1, 0, 0, 2),
(91, 0, 'Gol D. Roger', 'zatan_stark@yahoo.fr', '0000-00-00', NULL, '$2y$10$js7s6hkN8eHTIm1y9sqMs.fZFT2rZZgTuXAkjY151lBXigtM/VBBy', 1447512443, 1447586308, '109.214.37.71', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/5.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/1.png";}', 1, 1, 0, 0, 1),
(92, 0, 'Mickey49', 'michaeljamin@laposte.net', '0000-00-00', NULL, '$2y$10$mu1JGdWrNlFAAnPgYdTgkek8EYP6lCPoxvj8ufwFMkG0/mB6K04Ce', 1447512537, 1447512550, '89.94.208.194', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/33.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/bleu/29.png";}', 1, 1, 0, 0, 1),
(93, 0, 'Jurojin', 'ccommunay@gmail.com', '0000-00-00', NULL, '$2y$10$CVNyBqdJNrQ7B6AuPxjIye/D356d.dIXQerk0bGJM9q72PZaXQEpa', 1447512618, 1447567862, '86.219.160.155', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/13.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/7.png";s:4:"hair";s:41:"assets/img/avatars/man/hair/marron/14.png";}', 1, 1, 0, 0, 3),
(94, 0, 'Glyff', 'kobal.games@gmail.com', '0000-00-00', NULL, '$2y$10$gXlAk2dhUCh4UAIUs3Irc.og4pFEP59NaGxW/so3TCNTkURrH739O', 1447512620, 1447694474, '92.145.41.11', 0, 7, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/16.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/10.png";}', 1, 1, 0, 0, 1),
(95, 0, 'Salbei', 'david@chalvia.fr', '0000-00-00', NULL, '$2y$10$ulmqj7.SoGwZRRJ3PycA1e56EpAIN5lPnDIhrx3WR0Hp.GOAqCSBm', 1447512627, 1447632073, '78.196.251.178', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/55.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:41:"assets/img/avatars/man/hair/marron/25.png";}', 1, 1, 0, 0, 2),
(96, 0, 'Nemesis', 'matthieutravers.mt@gmail.com', '0000-00-00', NULL, '$2y$10$QLcdJI2PLkePJMbma5opp.q0N8XCMjEVr6MRLQscV3wIln9vbWF9i', 1447512646, 1447601737, '88.140.229.101', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/20.png";}', 1, 1, 0, 0, 2),
(97, 0, 'CarolineSwan', 'Carolineswan@hotmail.fr', '0000-00-00', NULL, '$2y$10$oD3ahGkZHEU6rEGgktvP4.kdzbRZkqSRh9.542CO.cOnZU/bkE1wi', 1447512766, 1447690461, '93.22.66.17', 0, 1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Femme";s:4:"body";s:35:"assets/img/avatars/woman/body/1.png";s:4:"eyes";s:35:"assets/img/avatars/woman/eyes/8.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:42:"assets/img/avatars/woman/hair/jaune/29.png";}', 1, 1, 0, 0, 3),
(98, 0, 'Ess', 'essaid.hamani@icloud.com', '0000-00-00', NULL, '$2y$10$cblsOdlxBknQF0jqBwokHeamEa41EawxtNSpyEexJV1ZGP2pT01Q6', 1447512810, 1447694032, '88.190.36.228', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/31.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/bleu/33.png";}', 1, 1, 0, 0, 2),
(99, 0, 'D_Flash_Kwo', 'oprpg64@hotmail.fr', '0000-00-00', NULL, '$2y$10$2XPqs5jK.ARx/1ffbmRqFelAZbaBOC6r6R7EJOy2gxnvsblUVLCra', 1447512821, 1447690755, '85.31.145.36', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/17.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/20.png";}', 1, 1, 0, 0, 1),
(100, 0, 'Perceval', 'kadriano@hotmail.fr', '0000-00-00', NULL, '$2y$10$Bp4ydjswi2r6U4JPsCwoF.XvmT76flFUK2BYW5Oi3lJouuEa94VuS', 1447512872, 1447634976, '78.204.205.76', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/35.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/7.png";}', 1, 1, 0, 0, 1),
(101, 0, 'MiisterMiaou', 'cedrictheuriere51@gmail.com', '0000-00-00', NULL, '$2y$10$HXwtRzdBeiVgDcDymhStZOTgm05OH7aEAnMTIHUMNjXIUY5yF/df2', 1447513148, 1447514265, '109.222.247.5', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/18.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/12.png";}', 1, 1, 0, 0, 2),
(102, 0, 'Rising Crash', 'drake08pl@gmail.com', '0000-00-00', NULL, '$2y$10$VXhc1Bzc.B53OkA9lr6nHuEplhUlo11vZr1kqZG28TnWwrTMqlTc.', 1447513257, 1447690515, '93.22.6.4', 0, 6, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/blanc/33.png";}', 1, 1, 0, 0, 2),
(103, 0, 'Vince90', 'expero90@live.fr', '0000-00-00', NULL, '$2y$10$cAc/AyEPz.GnwGgiz.xz1uQCXPcybhyzBwyBWzia.qkUPdnJzdVcy', 1447513276, 1447691418, '86.192.153.222', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/4.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/36.png";}', 1, 1, 0, 0, 3),
(104, 0, 'Eusta$$.62', 'Shanks62340@gmail.com', '0000-00-00', NULL, '$2y$10$hfNUMesXAFc4IdZec/q9S.2uj95QY5023SMnE2hgH9Y45YoSuxVoW', 1447513314, 1447614695, '90.1.237.143', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/37.png";}', 1, 1, 0, 0, 3),
(105, 0, 'Escaliburne', 'escaliburnee@outlook.fr', '0000-00-00', NULL, '$2y$10$oYQlvhum8MoQFeojBBSrruZv2RTkJrSm4xD97zHfePoVvkzoQUSoS', 1447513407, 1447704488, '46.193.0.66', 0, 6, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Femme";s:4:"body";s:35:"assets/img/avatars/woman/body/1.png";s:4:"eyes";s:36:"assets/img/avatars/woman/eyes/63.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:41:"assets/img/avatars/woman/hair/bleu/22.png";}', 1, 1, 0, 0, 2),
(106, 0, 'nico62', 'n.dagbert@laposte.net', '0000-00-00', NULL, '$2y$10$UExfp9tfbZw.vqOzInDROu65.gJOSsINiDvDDQppFYOVwrYvfie9W', 1447513458, 1447513473, '109.16.241.251', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/42.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/12.png";}', 1, 1, 0, 0, 1),
(107, 0, 'XxWarfeuxX', 'terrydu64@hotmail.fr', '0000-00-00', NULL, '$2y$10$C.fBgfIAGp.8sl7dYTNenudf7E/hQ17s/m8eVogDbkIzFiOm0/vIu', 1447513546, 1447605992, '90.11.12.23', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/2.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/5.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/rouge/7.png";}', 1, 1, 0, 0, 1),
(108, 0, 'Hirako', 'qdjkhnjfnaekjhbnzeosbnol@yahoo.fr', '0000-00-00', NULL, '$2y$10$hregNKyoUvrYgbvIDKbiZ.w6KFcVvbc5TnYYGyWkyWT7u/UMeYxBu', 1447513618, 1447705707, '78.217.45.122', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/31.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/22.png";}', 1, 1, 0, 0, 3),
(109, 0, 'scra', 'albanbertolini@gmail.com', '0000-00-00', NULL, '$2y$10$fbngnQoPhFZYcXHLnjemH.DCk1RDqhhEdE3rFHZzHZsDXJMlmb/lG', 1447513618, 1447513625, '184.160.173.106', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/3.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:41:"assets/img/avatars/man/hair/orange/17.png";}', 1, 1, 0, 0, 2),
(110, 0, 'deteD', 'bayer-13@gmx.fr', '0000-00-00', NULL, '$2y$10$v6qw6y2jZ7A.cm.Gqyro.OSL9nNX95B50zRzjtq2TqxcAeL36ZPOi', 1447513941, 1447622886, '80.215.138.122', 0, 5, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/42.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/bleu/9.png";}', 1, 1, 0, 0, 1),
(111, 0, 'Byakuya', 'worldgohan@yahoo.fr', '0000-00-00', NULL, '$2y$10$Sx/wL4rVKTla5d0ByemSU.HQafLUo19w9a5qlo0rcIM0.gY6i.P/a', 1447514021, 1447514027, '109.214.37.71', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/5.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/bleu/33.png";}', 1, 1, 0, 0, 2),
(112, 0, 'Floki', 'Jacques.gendron@laposte.net', '0000-00-00', NULL, '$2y$10$9C6t7md1iJ1toc6ROSpeA.14eDY0FXPaPcYG1KLg5dIBEpjBu8SlS', 1447514043, 1447527941, '84.99.77.174', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/43.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/5.png";}', 1, 1, 0, 0, 1),
(113, 0, 'Skyzo', 'Dylan-tavignot@orange.fr', '0000-00-00', NULL, '$2y$10$ahDlpUkU9/59UXRVEQ88x.LW1TnxFtKxC7944qX2.8Db8JpXHOAFq', 1447514069, 1447579623, '83.199.87.93', 0, 1, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/5.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/2.png";}', 1, 1, 0, 0, 1),
(114, 0, 'Tozlife', 'sabri83200@hotmail.fr', '0000-00-00', NULL, '$2y$10$StlGJtZ/1WxYh9GdhlrZp.T849H3IudUosrDDf30Ce1Uql6efCm4G', 1447514123, 1447601100, '83.153.146.52', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/9.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/8.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/22.png";}', 1, 1, 0, 0, 1),
(115, 0, 'Makaveli', 'matzoum@gmail.com', '0000-00-00', NULL, '$2y$10$zVwujWd7fgje38pcA1JDMe6SbuiNAdBHea3P/7YLG8XK0o567H67G', 1447514364, 1447701558, '84.159.134.11', 0, 4, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/3.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/30.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/4.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/blanc/24.png";}', 1, 1, 0, 0, 3),
(116, 0, 'loup', 'srnoeropers@gmail.com', '0000-00-00', NULL, '$2y$10$I.VQhnvQ3gXYTmobDlmO9./iQ0TBR5PS9klbZY072cGAy67XBoBzO', 1447514947, 1447706234, '83.112.84.82', 0, -21, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/3.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/29.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/blanc/24.png";}', 1, 1, 0, 0, 2),
(117, 0, 'aceusumaki', 'matthias--@hotmail.fr', '0000-00-00', NULL, '$2y$10$tDlnUbYWJ70RstuKp1VoOeL3IBvUDXY08ZY7LbvtxtYduxysQ6jfS', 1447515013, 1447602945, '84.159.142.136', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/9.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/8.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/22.png";}', 1, 1, 0, 0, 1),
(118, 0, 'Erza Scarlet', 'nicolasaurore6@gmail.com', '0000-00-00', NULL, '$2y$10$M7i/iOFwQGhEALtsvmrjfuGVv5k.YgGNUa3Wp98qx/NZ8XdPzpBoO', 1447515131, 1447691358, '92.92.50.108', 0, 1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Femme";s:4:"body";s:35:"assets/img/avatars/woman/body/1.png";s:4:"eyes";s:35:"assets/img/avatars/woman/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:41:"assets/img/avatars/woman/hair/rouge/5.png";}', 1, 1, 0, 0, 1),
(119, 0, 'Jägermeißter', 'aceusumaki@hotmail.de', '0000-00-00', NULL, '$2y$10$8WPv8BDKaAzoB8bDrBCfTOjGFmkpU6R/sawbssFHcmOwa8yE6DEz.', 1447515283, 1447599817, '104.207.133.132', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/9.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/4.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/15.png";}', 1, 1, 0, 0, 2),
(120, 0, '12hunnagang', 'aymen-ham@live.ca', '0000-00-00', NULL, '$2y$10$b6bU7YzOLHHenl0SFX1kruUbgoAH6L/WZXIrR09dZLSREyO.IOdei', 1447516194, 1447595225, '38.74.29.149', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/11.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/8.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/32.png";}', 1, 1, 0, 0, 2),
(121, 0, 'Sumeerfrio', 'tomato85@orange.fr', '0000-00-00', NULL, '$2y$10$SJE3BHHzH.mx2KNt5NLob.vSgh8M7WHb416g48yzPvRINx900GE6e', 1447516390, 1447617643, '109.211.59.23', 0, 13, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/37.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:41:"assets/img/avatars/man/hair/marron/14.png";}', 1, 1, 0, 0, 1),
(122, 0, 'Undead', 'taner75020@hotmail.fr', '0000-00-00', NULL, '$2y$10$Bf.7Csnrl6Im.HZFjHVyyOb7Vyb.aQBp3REV217D6jYBezOOfas7u', 1447516537, 1447516565, '78.192.198.65', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/9.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/5.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/24.png";}', 1, 1, 0, 0, 1),
(123, 0, 'NewVint', 'reytzeyurtzurtz@hotmail.fr', '0000-00-00', NULL, '$2y$10$yscczlRYCmrp/4FCW1oZ6uLnPaciaryeGDt2m3ZBftCoBs5gnc1J6', 1447516545, 1447690933, '41.225.119.139', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/33.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/6.png";s:4:"hair";s:41:"assets/img/avatars/man/hair/orange/37.png";}', 1, 1, 0, 0, 3),
(124, 0, 'ShockWave', 'iyed456@live.fr', '0000-00-00', NULL, '$2y$10$4/FX3qseZo0CZbpuDdtoxeUMVE0OzIRIDh3y9RQukOebM39PrwCfC', 1447516609, 1447516679, '78.112.145.218', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/4.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/12.png";}', 1, 1, 0, 0, 1),
(125, 0, 'titi17470', 'j.roy576@laposte.net', '0000-00-00', NULL, '$2y$10$Ep8dcE3MUeDoZ.LHli3bPu7byn/K2YaUcLFvBSOjRnghp/t7WoPny', 1447516624, 1447707424, '37.160.68.65', 0, 11, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/23.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/1.png";}', 1, 1, 0, 0, 1),
(126, 0, 'Xtel', 'b.william.32@hotmail.fr', '0000-00-00', NULL, '$2y$10$4zu8M2879LL.JXRv4jt0Oug9QhLDD/XzzzULKcfNI0BqYBXHSWw6m', 1447516762, 1447662873, '78.230.91.18', 0, -1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/1.png";}', 1, 1, 0, 0, 1),
(127, 0, 'OneShot', 'charles.24.08.96@gmail.com', '0000-00-00', NULL, '$2y$10$F.XhmztSfWQ5gGUKQluTL.ru5zc0yU5hPNdgUpxY1aM99n3cujzVW', 1447517063, 1447517068, '83.204.28.136', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/36.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/34.png";}', 1, 1, 0, 0, 3),
(128, 0, 'Jorjo', 'jordy-1992@hotmail.fr', '0000-00-00', NULL, '$2y$10$hIfkPfckAzfpyJgjjyKf1uLEG14EXO/M3boRZdKmjCNbRAaOc3qgS', 1447517495, 1447577188, '88.172.209.91', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/56.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/blanc/20.png";}', 1, 1, 0, 0, 2),
(129, 0, 'Akainu', 'hichamhandballeur@gmail.com', '0000-00-00', NULL, '$2y$10$hEOQFi4bIk7aCiV3x2GQbe69n9e4R6x/Axg0qZTufbIDE.cockr2u', 1447517551, 1447517558, '81.64.0.86', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/bleu/38.png";}', 1, 1, 0, 0, 1),
(130, 1, 'Kishi', 'god.kish@gmail.com', '0000-00-00', NULL, '$2y$10$0uetuCFqEN8rI4DizKZbqeZopO0mdpm41WUu.cVxdsNlwYqD57646', 1447517588, 1447517597, '78.121.214.118', 0, 1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/13.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/37.png";}', 1, 0, 0, 0, 3),
(131, 0, 'renhizorKing', 'renhizor@gmail.com', '0000-00-00', NULL, '$2y$10$3SF2RUVWPIzMBSPECIDCUuifmML9SeYkiImKP8O8owAXNEV37BnhW', 1447517653, 1447517666, '5.50.182.225', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/23.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/32.png";}', 1, 1, 0, 0, 1),
(132, 0, 'Rukia', 'tsuna_kun@outlook.fr', '0000-00-00', NULL, '$2y$10$uY8ZGtILJMDKB/1pLjocyO6EtRQxM8O5JtJC7u7NRtJKo8.q5jeSO', 1447517888, 1447627509, '88.160.115.38', 0, -3, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Femme";s:4:"body";s:35:"assets/img/avatars/woman/body/1.png";s:4:"eyes";s:36:"assets/img/avatars/woman/eyes/60.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:41:"assets/img/avatars/woman/hair/noir/36.png";}', 1, 1, 0, 0, 2),
(133, 0, 'Rais', 'djojoj@hotmail.com', '0000-00-00', NULL, '$2y$10$5B/sKspOFmNLOXeTDY55v.F4OyehQoP.GPQ.H8eE6xf.kpkRhvwh6', 1447517937, 1447519137, '105.98.141.53', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/35.png";}', 1, 1, 0, 0, 1),
(134, 0, 'vfredc', 'ninjalfred@gmail.com', '0000-00-00', NULL, '$2y$10$blvcZybuOmSqkScJY1rs6uw2/09/lg6BgDYVpvNiJp.KZP9NFndzu', 1447517945, 1447588609, '82.245.251.78', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/19.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/33.png";}', 1, 1, 0, 0, 3),
(135, 0, 'hertz', 'stevenskarface@outlook.fr', '0000-00-00', NULL, '$2y$10$00SSykH4Zh/7eUi7oWCEdu9K9MEOeioj./.6Zl734hz8m4YX5jQ/W', 1447518099, 1447703203, '83.199.87.93', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/6.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/4.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/3.png";}', 1, 1, 0, 0, 3),
(136, 0, 'Saël', 'aldryn.oprpg@gmail.com', '0000-00-00', NULL, '$2y$10$jU8AYEHTpy3NcztT3RWt6.bjiUGMMKYlFD/Yqoett1Dy/86x3KfFy', 1447518129, 1447705318, '77.152.209.145', 0, 7, 1, 100, 'a:5:{s:4:"sexe";s:5:"Femme";s:4:"body";s:35:"assets/img/avatars/woman/body/1.png";s:4:"eyes";s:36:"assets/img/avatars/woman/eyes/57.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:41:"assets/img/avatars/woman/hair/blanc/7.png";}', 1, 1, 0, 0, 3),
(137, 0, 'Ushio', 'smain.jelloul47@gmail.com', '0000-00-00', NULL, '$2y$10$wif.n9OB1ezoPYh9VoE6LeyqV8kjue2DU1iaZFsDCUvc2flMP65vW', 1447518144, 1447690917, '89.88.6.252', 0, 2, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/9.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/4.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/26.png";}', 1, 1, 0, 0, 3),
(138, 0, 'HeraSan', 'yohan.delforge@hotmail.fr', '0000-00-00', NULL, '$2y$10$L7JEK66RQ7dqs99xYrKlYeGXn6rik8W3RX2JYYcNqQUFtzuXimzS2', 1447518158, 1447706899, '81.242.187.105', 0, 10, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/11.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/12.png";}', 1, 1, 0, 0, 2),
(139, 0, 'LordDalassee', 'domtom.gohier@orange.fr', '0000-00-00', NULL, '$2y$10$fmDEpyfv8KOmLQETy.IOmO0AIhJlbHVgHEhFv0vKZ/HprRFKOTmrG', 1447518374, 1447609439, '109.211.59.23', 0, 4, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/11.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/7.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/vert/26.png";}', 1, 1, 0, 0, 3),
(140, 0, 'Zaidou', 'akidou.nf@gmail.com', '0000-00-00', NULL, '$2y$10$x9m1mVjv5pc.QcdZJOIHjewNWQfQX6uCLXlyyWP1zwMqyABIfuzTi', 1447518691, 1447540538, '90.57.43.195', 0, 1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/2.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/blanc/38.png";}', 1, 1, 0, 0, 3),
(141, 0, 'Myngs', 'myngsoklm@gmail.com', '0000-00-00', NULL, '$2y$10$EHPUY438c7gfFLPinvSoge2N274/T8jfJRl.eUdEdTJRTWFRoOJkm', 1447518725, 1447587127, '109.17.81.165', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/19.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/6.png";}', 1, 1, 0, 0, 3),
(142, 0, 'Kem', 'kem12@outlook.com', '0000-00-00', NULL, '$2y$10$bep4u6UF0BHccPWCDubh5O..zNhRTEjieC4qXOl6tudVFNHRu2EIy', 1447519345, 1447616209, '95.136.239.144', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/2.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/33.png";}', 1, 1, 0, 0, 3),
(143, 0, 'KingKhaos', 'alexthony2@hotmail.fr', '0000-00-00', NULL, '$2y$10$57jnhfTO4k.dCep4iLjm8e16OXGip0wJEyf.uSNeBbnljHjOcg.7G', 1447519413, 1447701015, '78.224.96.126', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/48.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:41:"assets/img/avatars/man/hair/orange/10.png";}', 1, 1, 0, 0, 2),
(144, 0, 'Raiss', 'noobers2@outlook.fr', '0000-00-00', NULL, '$2y$10$9l6mBH.77fpbAIlimrsvV.zjnLrEhxLor0Cpbn0GcV01hxx/ASF4W', 1447519454, 1447699977, '105.98.252.115', 0, 1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/10.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/37.png";}', 1, 1, 0, 0, 1),
(145, 0, 'Marimo', 'nicolas_azard@yahoo.fr', '0000-00-00', NULL, '$2y$10$m94XPjGWlcqUjo8uDydWZ.6stQDsO.tYFUdkhc6hKLeAVCfugs1L.', 1447519765, 1447602924, '77.205.138.9', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/46.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/4.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/vert/29.png";}', 1, 1, 0, 0, 1),
(146, 0, 'DrakeUla', 'snoopy-dream@hotmail.fr', '0000-00-00', NULL, '$2y$10$JhlndrZyN62Rg0yRKv8koOx0FwTb6aJ2yeI3nNTTe.Twn6XEP7RWi', 1447519958, 1447581200, '90.12.95.144', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/18.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/bleu/33.png";}', 1, 1, 0, 0, 3),
(147, 0, 'Pev', 'p_ev@live.fr', '0000-00-00', NULL, '$2y$10$./N7p.E0GIlSRcFKf08y/uNLkEXPVHoGWZLQRJr0xL0r1SuMG0cqe', 1447520083, 1447685206, '84.248.156.8', 0, 6, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/5.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/blanc/13.png";}', 1, 2, 0, 0, 2),
(148, 0, 'DarkRay', 'FABO5@GMX.FR', '0000-00-00', NULL, '$2y$10$0FhHe9QrVZUP8.cKPhHDAOPqZ13JOWOt4K8B9a3Qz/pUn4eHylK72', 1447520478, 1447626634, '88.165.7.136', 0, 1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/18.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:41:"assets/img/avatars/man/hair/marron/18.png";}', 1, 1, 0, 0, 3),
(149, 0, 'S17', 'd.rain.oprpg@gmail.com', '0000-00-00', NULL, '$2y$10$n0CaVSbdqkLmpvjiVlUSSOczqhldueBipUBHvybn1bFTPOzmj/JEm', 1447520672, 1447626963, '80.12.51.147', 0, 1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/11.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/jaune/37.png";}', 1, 1, 0, 0, 2),
(150, 0, 'Uprising', 'gregsimsons@free.fr', '0000-00-00', NULL, '$2y$10$BtIZZ8izSf7RKELQiu7Av.kPNM.D4liNFZmH0BO5aQN9Kicbn19zq', 1447521085, 1447704460, '88.180.77.78', 0, 2, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/18.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/10.png";}', 1, 1, 0, 0, 3),
(151, 0, 'DarkSeray', 'ray.laf@gmx.fr', '0000-00-00', NULL, '$2y$10$ierUPEI0qqBIOv0zSKjryeQMZCQOC7yTpGECnafGICzJbetm4G.mm', 1447521566, 1447589841, '88.165.7.136', 0, 1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/18.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:41:"assets/img/avatars/man/hair/marron/18.png";}', 1, 1, 0, 0, 3),
(152, 0, 'Darksidus', 'Gto24@gmx.fr', '0000-00-00', NULL, '$2y$10$sQ6ndkJpxWeHtAQ7CFemnug1CwrR85AsfxJ95F0IMY71dqFIcKRpK', 1447521571, 1447601416, '82.216.179.2', 0, 1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/42.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:41:"assets/img/avatars/man/hair/marron/18.png";}', 1, 1, 0, 0, 3),
(153, 0, 'FyFuZiK', 'ray.laf1@gmx.fr', '0000-00-00', NULL, '$2y$10$fRBkJmFNuMRUWCj5mOsT1uOO/mu2reM.7tyA3zOCjQG9ALGiS6oYK', 1447522784, 1447704280, '88.165.7.136', 0, 21, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/38.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/bleu/11.png";}', 1, 1, 0, 0, 3),
(154, 0, 'Eyver', 'q.goujon@orange.fr', '0000-00-00', NULL, '$2y$10$03MQjHg/XBa5VZmMstIl9eAPJbQGn7OX3HCWRRpTaJSXu5vwBffKe', 1447523187, 1447700399, '82.250.212.240', 0, 10, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/25.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/5.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/14.png";}', 1, 1, 0, 0, 1),
(155, 0, 'ascedu55', 'nail.beggar@laposte.net', '0000-00-00', NULL, '$2y$10$kUPhtptd2T9Fn6xKdmXIveCljyppE0C6wDnfuTgl0wP6g/HMFJ/Wm', 1447523382, 1447705880, '92.147.3.218', 0, 4, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/5.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/36.png";}', 1, 1, 0, 0, 2),
(156, 0, 'Dark Luffy', 'floriangeffroy50800@gmail.com', '0000-00-00', NULL, '$2y$10$dpR/I/WjfAw08eTO7I4houAF2GUCF/s1juSKkKBd7tWsoo5TUA7Yq', 1447523538, 1447696306, '81.48.80.47', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/21.png";}', 1, 1, 0, 0, 1),
(157, 0, 'Feuze', 'R.L@GMX.FR', '0000-00-00', NULL, '$2y$10$2cbEFf3QdUA7hvhiiIkpweW4rWcuSjNnly/ZaSMregGIbZa3qsHra', 1447523546, 1447523569, '88.165.7.136', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/18.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/5.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/vert/29.png";}', 1, 1, 0, 0, 1),
(158, 0, 'Yhuzaki.', 'xxyhuzakigaming@gmail.com', '0000-00-00', NULL, '$2y$10$MYSo4DV.nRqvEdpIfhk3hu5D1.YkSFUFkNhk2uwIPIXDZI4MoBahu', 1447523792, 1447702495, '77.204.167.144', 0, 3, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/31.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/vert/31.png";}', 1, 1, 0, 0, 3),
(159, 0, 'Raychard', 'raychard78@gmail.com', '0000-00-00', NULL, '$2y$10$SfC2Pjy.3.liU4D3tuzblOUNVS9Q23/v46YCKAEB/mn88Ly6IYUcS', 1447524223, 1447540987, '66.249.93.182', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/16.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/18.png";}', 1, 1, 0, 0, 2),
(160, 0, 'Rised', 'guillaumepastre34@gmail.com', '0000-00-00', NULL, '$2y$10$SuGVzOA5hIsf0kt1Ti4t7ORS4EsUfmlwJfC7cjq5d7pkFZwXe4vZK', 1447524284, 1447524291, '88.184.174.124', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/31.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/vert/36.png";}', 1, 1, 0, 0, 3),
(161, 0, 'Cocco', 'blueberrys@live.fr', '0000-00-00', NULL, '$2y$10$DKpGD6/2Bstf.3o7ViENPuQxrDallBIvk0VXERMMGt7PNW62Aaoby', 1447525034, 1447525043, '2.9.96.234', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/jaune/15.png";}', 1, 1, 0, 0, 3),
(162, 0, 'Zaaaa', 'viveoprpg@gmail.com', '0000-00-00', NULL, '$2y$10$mO/XV98DTh3dYkF3tLo6cu3Px8cTb42d.WI9ay7jTa89YIPxRVG26', 1447525456, 1447525468, '31.34.157.22', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/2.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/33.png";}', 1, 1, 0, 0, 2),
(163, 0, 'Sophie', 'sofiduff@gmail.com', '0000-00-00', NULL, '$2y$10$.Zmq3321OzbeBAYV4Kzel.1pR4HdKjUNqHAsDLhr/QWNZtpOJthIK', 1447525583, 1447616067, '41.136.119.153', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Femme";s:4:"body";s:35:"assets/img/avatars/woman/body/1.png";s:4:"eyes";s:35:"assets/img/avatars/woman/eyes/4.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:41:"assets/img/avatars/woman/hair/rouge/6.png";}', 1, 1, 0, 0, 1);
INSERT INTO `users` (`id`, `ban`, `pseudo`, `email`, `birthday`, `sexe`, `password`, `registration`, `last_action`, `ip`, `is_kick`, `messNumber`, `lvl`, `berry`, `avatar`, `id_objects`, `id_users_types`, `id_crews_candidacy`, `id_lost_pass`, `id_faction`) VALUES
(164, 0, 'mike5018', 'wolfgangnicolas@gmail.com', '0000-00-00', NULL, '$2y$10$enI.yVnotX/xdhrmnLGAb.u8FrMJOQ8hsHAdFqctb8rCGG54KI2hi', 1447526463, 1447526472, '90.51.106.31', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/17.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/6.png";}', 1, 1, 0, 0, 3),
(165, 0, 'Eurus', 'lord.eurus@gmail.com', '0000-00-00', NULL, '$2y$10$2xosL0RpciYLrck33eqhDO/H.TjvqdSUUTOGhzzsEQHTwB3adL23i', 1447526844, 1447664088, '193.54.115.31', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/2.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/orange/5.png";}', 1, 1, 0, 0, 1),
(166, 0, 'deltaveritas', 'stevennikilarson@outlook.fr', '0000-00-00', NULL, '$2y$10$ogtVysOa13JAcncsdLJLwuiP2tzRgdqleTxbYxzk6ZJi.NL4IexoK', 1447527000, 1447701707, '83.199.87.93', 0, 1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/13.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/6.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/jaune/27.png";}', 1, 1, 0, 0, 1),
(167, 0, 'Taracas', 'taracas95@live.fr', '0000-00-00', NULL, '$2y$10$lge8fF13Wbv7yiYGGiC81.KoZdcY6NXBPyXGEjN.RNY0ruPjFf/5O', 1447527055, 1447700538, '82.244.171.62', 0, 1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Femme";s:4:"body";s:35:"assets/img/avatars/woman/body/1.png";s:4:"eyes";s:35:"assets/img/avatars/woman/eyes/2.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:42:"assets/img/avatars/woman/hair/marron/3.png";}', 1, 1, 0, 0, 1),
(168, 0, 'kana.kun', 'marine.kun@yopmail.fr', '0000-00-00', NULL, '$2y$10$WaOcv21AIES37i90OxKrKOEWYQ4WbSuAGmQAf0mcrTX8iVgryUVmm', 1447527478, 1447696469, '90.8.227.4', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Femme";s:4:"body";s:35:"assets/img/avatars/woman/body/2.png";s:4:"eyes";s:36:"assets/img/avatars/woman/eyes/49.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/7.png";s:4:"hair";s:42:"assets/img/avatars/woman/hair/jaune/46.png";}', 1, 1, 0, 0, 2),
(169, 0, 'Exceed', 'zack.fournier@gmail.com', '0000-00-00', NULL, '$2y$10$I2L9cFW6M3lFJueBl6O.EerKHCgYshoZCKgat4wLnJYNYUm31sf3a', 1447527547, 1447654659, '80.12.55.173', 0, 1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/5.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/13.png";}', 1, 1, 0, 0, 3),
(170, 0, 'sakeushi', 'Kakumor@gmail.com', '0000-00-00', NULL, '$2y$10$O.RJ2NGaaSq4q/.QsmIT2u5urBvsZ8PEvU4P82.11s9QuAjXvBeeO', 1447527751, 1447527761, '88.173.59.50', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/23.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/jaune/27.png";}', 1, 1, 0, 0, 1),
(171, 0, 'Kaneki', 'TheWeeTex@gmail.com', '0000-00-00', NULL, '$2y$10$C8VXAUUS0SHfgXAoBSHk6OBaS4HJj5FnjB40nPfnc6NPNI95Gvmzi', 1447527754, 1447706856, '82.235.182.66', 0, 66, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/11.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/blanc/4.png";}', 1, 1, 0, 0, 3),
(172, 0, 'SilverWing', 'maditake@yahoo.fr', '0000-00-00', NULL, '$2y$10$wcT3w7QJREoHRFQ4z5TtBeTXHykCMrMTnStCZtSmsqRkBymnhfPAG', 1447527865, 1447692637, '109.9.105.86', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/11.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/blanc/10.png";}', 1, 1, 0, 0, 3),
(173, 0, 'Sabo', 'titi17470@gmail.com', '0000-00-00', NULL, '$2y$10$0ck3oJ5103Vw7F.F9MuPzuAG87JbY3kD3tHZGjjj.V0Q6odw3TjaG', 1447528117, 1447606461, '82.251.1.57', 0, -1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/2.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/5.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/jaune/28.png";}', 1, 1, 0, 0, 3),
(174, 0, 'Darkid2', 'catmin@free.fr', '0000-00-00', NULL, '$2y$10$MFBqS1CS39VdPPs9F8bV/.lz.oOspYhmimIDmkRrJ6vdimWV83n6m', 1447528192, 1447613488, '88.173.59.50', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/17.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/20.png";}', 1, 1, 0, 0, 2),
(175, 0, 'Sneazz', 'sneazz20@live.fr', '0000-00-00', NULL, '$2y$10$RvJqtBHYd8ogtb.xf3ItHOvbOH0a0VFK3gI/veLtL0kLYWo8PY5AK', 1447528419, 1447698859, '79.88.148.14', 0, 6, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/7.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/14.png";}', 1, 1, 0, 0, 3),
(176, 0, 'ulquiorra13', 'clem13170@hotmail.fr', '0000-00-00', NULL, '$2y$10$PlOiQo1hghQdH0vkW0IR3u/2lrOtZJJR0Ar.6jKO3Sb3X0ClklF4S', 1447528680, 1447704469, '80.215.200.66', 0, 1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Femme";s:4:"body";s:35:"assets/img/avatars/woman/body/3.png";s:4:"eyes";s:36:"assets/img/avatars/woman/eyes/15.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/5.png";s:4:"hair";s:43:"assets/img/avatars/woman/hair/orange/50.png";}', 1, 1, 0, 0, 1),
(177, 0, 'Gintoki', 'dondake@hotmail.fr', '0000-00-00', NULL, '$2y$10$J1L8olLI4AZX4JQWcpta5O15crlFltw9LoxOPljuYj9.JXxFAbVG2', 1447528713, 1447706215, '176.183.100.229', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/23.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/blanc/27.png";}', 1, 1, 0, 0, 3),
(178, 0, 'Abyss', 'ludovic-leguen@outlook.fr', '0000-00-00', NULL, '$2y$10$XZ5sFRkVAZLoiASUo6o4dOoDDmn9H5Si/WQUCYGP3ueXcx9xZW.B.', 1447528720, 1447658904, '77.149.21.71', 0, 8, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/34.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/bleu/28.png";}', 1, 1, 0, 0, 2),
(179, 0, 'Ezalcops', 'alexandre.goulle@gmail.com', '0000-00-00', NULL, '$2y$10$ZINpAjtVPIwGQxTXMaE2duz4wfRT8FTWqc2QvuZ7K3pydzYPI.l9S', 1447528734, 1447586447, '90.17.140.58', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/35.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/bleu/21.png";}', 1, 1, 0, 0, 1),
(180, 0, 'Rylew', 'ryles.flahemgo@gmail.com', '0000-00-00', NULL, '$2y$10$7sBft1WKsu7HWYsK6LREy.N3KZbI8W7cLU2bw5MHKaus2qGlc1BZ6', 1447528844, 1447528849, '128.79.5.182', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/6.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/9.png";}', 1, 1, 0, 0, 2),
(181, 0, 'xxleighxx', 'xavier.p0603@hotmail.fr', '0000-00-00', NULL, '$2y$10$azdCDpR9rjqPff3x2g8CQuCfczLyHwiWYKvEDOx0Sg61/G0qznL4q', 1447528974, 1447579254, '90.34.216.137', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/14.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/15.png";}', 1, 1, 0, 0, 1),
(182, 0, 'kontorriano', 'illan708@hotmail.fr', '0000-00-00', NULL, '$2y$10$FLwGDlvSyY71o.bWFGsNpO4rpCMu0OiSHhQsEqoeH6uG2iwnAJJ/y', 1447529882, 1447674611, '86.218.5.71', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/11.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/3.png";}', 1, 1, 0, 0, 1),
(183, 0, 'your2pat', 'maurel888@gmail.com', '0000-00-00', NULL, '$2y$10$JhXqplUbVfEaaU4fgxRiou/sW2Mj7DXyiCg6KDQ4YyyArUS7owOlO', 1447530133, 1447700407, '46.193.64.189', 0, 2, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/3.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/17.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/22.png";}', 1, 1, 0, 0, 3),
(184, 0, 'Yume', 'corentin.vannier@outlook.fr', '0000-00-00', NULL, '$2y$10$nIYABJo1kxPRvuYXcCZL9.PpGBngAgKCQ5qPsb8Mly/cXVog38rXS', 1447530674, 1447530687, '92.152.245.219', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/5.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/21.png";}', 1, 1, 0, 0, 2),
(185, 0, 'abdoulmagid', 'abdoulmagid@hotmail.fr', '0000-00-00', NULL, '$2y$10$pNLDEqZtRdnKoYUsg3vCqOYLLPedQjA1NGgewdojmBrFBMvQfDsrO', 1447530920, 1447530938, '88.188.162.117', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/25.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:41:"assets/img/avatars/man/hair/orange/36.png";}', 1, 1, 0, 0, 1),
(186, 0, 'Mawloc', 'trygon17@live.fr', '0000-00-00', NULL, '$2y$10$BwdnnCixs5pPhfPq6lwj8.M5YX8cv7Io6JP4/z6rgIVvuYOvewcSK', 1447531009, 1447531016, '82.231.148.27', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/jaune/25.png";}', 1, 1, 0, 0, 3),
(187, 0, 'Umaru', 'reiichigo@hotmail.fr', '0000-00-00', NULL, '$2y$10$EXXtrR8bs.toIL67v6v0heCedfn1VKETSObMFq7fSqiNpONzk8Xea', 1447531152, 1447531160, '88.165.55.184', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/43.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:41:"assets/img/avatars/man/hair/marron/15.png";}', 1, 1, 0, 0, 2),
(188, 0, 'D.Jey', 'greco_95@hotmail.fr', '0000-00-00', NULL, '$2y$10$XbKggRshTHHU/Q/E4khWTuN5qV8azFBAqzvpou4fqpl32QRSX48Dm', 1447531615, 1447705034, '90.35.10.210', 0, 5, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/38.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/bleu/19.png";}', 1, 1, 0, 0, 3),
(189, 0, 'Zelef', 'raikoulgel@outlook.fr', '0000-00-00', NULL, '$2y$10$RLxuAv5dv5QMjX.Zz3erTuflWJUddXdaOXvKVH52chuHY5rQTzNee', 1447531847, 1447531869, '193.55.52.1', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Femme";s:4:"body";s:35:"assets/img/avatars/woman/body/1.png";s:4:"eyes";s:35:"assets/img/avatars/woman/eyes/7.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:41:"assets/img/avatars/woman/hair/noir/29.png";}', 1, 1, 0, 0, 1),
(190, 0, 'Kurokami', 'zgwalala@gmail.com', '0000-00-00', NULL, '$2y$10$DdVje3/5NewT1x1yB5upPO8L6EbHzaF5vxpEZYzYEM/OYOFjMJBl.', 1447532310, 1447702052, '91.180.11.142', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/42.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/15.png";}', 1, 1, 0, 0, 2),
(191, 0, 'Swallow', 'escene@outlook.fr', '0000-00-00', NULL, '$2y$10$EGvY4zwE8uQg2F5Nbu5DFOkEVzzq5jHuntX0dusJ4Ic8UFrowkjv2', 1447533129, 1447606600, '86.68.106.90', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Femme";s:4:"body";s:35:"assets/img/avatars/woman/body/2.png";s:4:"eyes";s:36:"assets/img/avatars/woman/eyes/60.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:42:"assets/img/avatars/woman/hair/rouge/48.png";}', 1, 1, 0, 0, 3),
(192, 0, 'Klaes', 'Dighters@hotmail.fr', '0000-00-00', NULL, '$2y$10$a1JoY1Q9YNrC9/4H5LAqsetpMHGOMaEe/LlrIrX6pdb0.KdZiUbr6', 1447534181, 1447689674, '86.72.139.81', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/18.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/38.png";}', 1, 1, 0, 0, 3),
(193, 0, 'Hiryu', 'ming.kelly@hotmail.fr', '0000-00-00', NULL, '$2y$10$zxb998Qra7MqjMm8TR8NBuLUHhuuno6DGyEPLfieoazrxSPm1iNBK', 1447534241, 1447699697, '86.68.106.90', 0, 8, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/9.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/bleu/11.png";}', 1, 1, 0, 0, 1),
(194, 0, 'Akimaru.', 'alexis.selin@orange.fr', '0000-00-00', NULL, '$2y$10$6f2xZylLULcd7SNKyIR6C.DqCeVt2s5voL1uTBeV1Str0T/ySkQPi', 1447534442, 1447614676, '81.50.164.102', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/40.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/7.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/38.png";}', 1, 1, 0, 0, 3),
(195, 0, 'Yuki', 'isabelle78570@live.fr', '0000-00-00', NULL, '$2y$10$b38wdJy9F.Of9tgb4lwhGerBwxqAlycTgT1RoFi2gPdKh36xLcNpC', 1447534613, 1447607945, '88.178.140.60', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Femme";s:4:"body";s:35:"assets/img/avatars/woman/body/2.png";s:4:"eyes";s:36:"assets/img/avatars/woman/eyes/25.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:43:"assets/img/avatars/woman/hair/marron/33.png";}', 1, 1, 0, 0, 1),
(196, 0, 'Jotaro93', 'dorient_fleur@yahoo.fr', '0000-00-00', NULL, '$2y$10$H.qCz37dtCXLPp/qzDonTuhZWCKTQPiAs9Z6Y89kOkgTc4RjaY46e', 1447534686, 1447534691, '82.235.81.176', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/2.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/10.png";}', 1, 1, 0, 0, 1),
(197, 0, 'ASL', 'ph.bruneton@laposte.net', '0000-00-00', NULL, '$2y$10$DXo0hxXOxqAVz3O4ZS6bAOW/DyXvkfghaFGbB64ikUCfRw0GSilMS', 1447535450, 1447535465, '77.197.59.2', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/4.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/22.png";}', 1, 1, 0, 0, 3),
(198, 0, 'Vanmed', 'elmessaoudi.mohamed@hotmail.fr', '0000-00-00', NULL, '$2y$10$E05arbwTjwNad34pN3gJHOV/DsUElypxBJH422Qac6Ftrw99Hg22O', 1447535647, 1447536211, '105.155.36.66', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/7.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/34.png";}', 1, 1, 0, 0, 2),
(199, 0, 'Red.W.Viper', 'gold.d.sting@gmail.com', '0000-00-00', NULL, '$2y$10$Vm9yuiV.gSFSptV5pFz7Z.XMAW9htG6GKTPY/E4MionFV838FG6/K', 1447536620, 1447698662, '78.239.136.249', 0, -9, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/18.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/20.png";}', 1, 1, 0, 0, 2),
(200, 0, 'Suawek', 'suawek@live.fr', '0000-00-00', NULL, '$2y$10$zbUuAQL5fUCMNYtIx19X2egGIh0KRWuy9bHv/JDr5RW1UjwNOyFXe', 1447537688, 1447537722, '88.189.249.186', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/13.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/12.png";}', 1, 1, 0, 0, 1),
(201, 0, 'Tarkhagal1', 'jimmylerosier50@gmail.com', '0000-00-00', NULL, '$2y$10$znmYPf0KkRf1eBM3ugh7QOOomSlbvD6j7x5d6iLWh8J0qr/UEsx9G', 1447538513, 1447656172, '77.129.239.14', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/11.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/8.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/jaune/18.png";}', 1, 1, 0, 0, 2),
(202, 0, 'JasonKai_', 'lolottejason@gmail.com', '0000-00-00', NULL, '$2y$10$0Ow7SXWYROMSXYoTZi90Rub5bTs9aXLEVKXNvF6lsc408DL/PpLnS', 1447538614, 1447674103, '81.64.249.77', 0, 1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/16.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/5.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/20.png";}', 1, 1, 0, 0, 1),
(203, 0, 'Nothing', 'kunikaze@hotmail.fr', '0000-00-00', NULL, '$2y$10$sNhIN2WFxloXOZDzPHmlSeacZD/OIfOae0Z4gQJeFQm4j5hDFa4Ru', 1447538972, 1447678399, '88.183.72.171', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/3.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/5.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/10.png";}', 1, 1, 0, 0, 2),
(204, 0, 'Skynette', 'd.tavignot@outlook.fr', '0000-00-00', NULL, '$2y$10$mcTiRPPloA1mFlKQi4G5veS/vFp1lGy6oqSvM.Y//IY4755To8dCa', 1447538982, 1447697755, '83.199.87.93', 0, 1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/11.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/rouge/7.png";}', 1, 1, 0, 0, 3),
(205, 0, 'Nestea', 'lucie.bm@hotmail.fr', '0000-00-00', NULL, '$2y$10$pM3ir4GrE1iduvwuXHoVOuH5..5rov1t.pE6fmfRjkvcH8W.lZQHK', 1447539071, 1447702771, '90.43.147.152', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Femme";s:4:"body";s:35:"assets/img/avatars/woman/body/1.png";s:4:"eyes";s:36:"assets/img/avatars/woman/eyes/54.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:41:"assets/img/avatars/woman/hair/noir/34.png";}', 1, 1, 0, 0, 1),
(206, 0, 'karyon', 'ewenlelf@gmail.com', '0000-00-00', NULL, '$2y$10$5oo0CtTXrI0dsvnqt0Qnv.s6/PB/eIXe.iUpmBu1u11ScMv1XHAt.', 1447540107, 1447676753, '92.135.40.20', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/5.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/bleu/19.png";}', 1, 1, 0, 0, 2),
(207, 0, 'Vector', 'heiye@hotmail.fr', '0000-00-00', NULL, '$2y$10$oQV29BFrZHqqtbR54yvFxO9Lyyp/kt1CbvmXOHPDXbzSJVME2BU5q', 1447540552, 1447697969, '78.209.8.154', 0, 2, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/30.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/blanc/24.png";}', 1, 1, 0, 0, 1),
(208, 0, 'Neptune', 'aminethegameur@gmail.com', '0000-00-00', NULL, '$2y$10$SFtE9xNr4iS.SIz6EI1LQ.VEq2sCNkm1/w2RgSa3WZ2SG/EtNE726', 1447541136, 1447693458, '62.147.133.232', 0, 16, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/11.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/22.png";}', 1, 1, 0, 0, 3),
(209, 0, 'Xenitys', 'bourgeais.medhi@outlook.fr', '0000-00-00', NULL, '$2y$10$SRvSHcxkfvsxR5zj1I3hYuZctuiALSSUe8glr.2bs9wfyUREcZ7z2', 1447541713, 1447541727, '90.12.241.174', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/48.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/4.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/bleu/19.png";}', 1, 1, 0, 0, 2),
(210, 0, 'ToBooosh', 'thomasuzumaki7@live.fr', '0000-00-00', NULL, '$2y$10$SSmGmDkqhlol1zfx3RIdPe6hy2Kr4jmcOZffcI2w7rlFlraElKDi6', 1447543069, 1447543073, '90.0.77.39', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/35.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/jaune/16.png";}', 1, 1, 0, 0, 2),
(211, 0, 'YUMA', 'ismaelfaria@outlook.fr', '0000-00-00', NULL, '$2y$10$otEhamXMJpKcJmeLPudpWumAYm3ueakc3dG7S57g3wdVivyCfNF0.', 1447543119, 1447543131, '176.183.220.161', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/4.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/37.png";}', 1, 1, 0, 0, 2),
(212, 0, 'Lip', 'titihube3@aol.com', '0000-00-00', NULL, '$2y$10$G82P5UGGZm/zmedGIqHyO.xYeWmxk4SKQdGZ7rykNh1YBtLER6fmG', 1447543185, 1447584359, '93.22.66.17', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/37.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/bleu/19.png";}', 1, 1, 0, 0, 1),
(213, 0, 'Monkey.D.Turner', 'etienne_unternehr@hotmail.fr', '0000-00-00', NULL, '$2y$10$z9fmlyadrhvcCBaxKi/D.OAifvcyVZpcwa1ElBq2a.uG4Lw3ryLLe', 1447547624, 1447698182, '81.57.131.74', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/11.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/3.png";}', 1, 1, 0, 0, 1),
(214, 0, 'DoYassir', 'elansari.yassir@gmail.com', '0000-00-00', NULL, '$2y$10$.3qPbqJI.4foYMFbdFVcqu0BHnfIjjM1.hg1UVCJL76s/deI.WQhm', 1447548844, 1447548862, '45.218.174.103', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/rouge/7.png";}', 1, 1, 0, 0, 2),
(215, 0, 'Dethklok', 'devilgt666@gmail.com', '0000-00-00', NULL, '$2y$10$ihjryuBhyaeOAH/UG0gRHe8XrGf0XFCBlEx5W9T8izO0EDB4YsdmW', 1447550008, 1447688629, '70.82.216.10', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/10.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/13.png";}', 1, 1, 0, 0, 1),
(216, 0, 'New', 'raios97300@gmail.com', '0000-00-00', NULL, '$2y$10$ZjQ2DF6w.dDsKiwxbXD3k.ZMjlldZOZlQSnm4J8hy84ilOmXmHd5O', 1447550391, 1447630266, '92.49.111.151', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/25.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/5.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/24.png";}', 1, 1, 0, 0, 3),
(217, 0, 'ShanksLeFou', 'nessimdu25@live.fr', '0000-00-00', NULL, '$2y$10$1J5pbLaAqvMlmhmK7i4ge.z2uHi/FMq5Jvm.XH5iuFBdobbZB7Ap6', 1447551670, 1447624106, '78.250.65.67', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/42.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/22.png";}', 1, 1, 0, 0, 2),
(218, 0, 'Karugara', 'capuccino.chaud@hotmail.com', '0000-00-00', NULL, '$2y$10$EcCrxjajOo0fJq79IqTUPe8jsdqeuhSPmIb7zpqzdebelxhVQ2Q6i', 1447551819, 1447696025, '78.250.145.56', 0, 16, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/5.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/11.png";}', 1, 1, 0, 0, 3),
(219, 0, 'rayku', 'petitjean.th58@gmail.com', '0000-00-00', NULL, '$2y$10$r0lcg/dn9VQfnMACDp1yNePq.nGkUO0tLsvZ9Mi7ikgknu2ikwuwC', 1447552075, 1447583570, '90.56.19.17', 0, 2, 1, 100, 'a:5:{s:4:"sexe";s:5:"Femme";s:4:"body";s:35:"assets/img/avatars/woman/body/1.png";s:4:"eyes";s:36:"assets/img/avatars/woman/eyes/11.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:41:"assets/img/avatars/woman/hair/blanc/6.png";}', 1, 1, 0, 0, 3),
(220, 0, 'Geenji', 'mehdi.cherfii@laposte.net', '0000-00-00', NULL, '$2y$10$rqVCQ5NbZ6nw50ypfCfQL.PkQLtdNwqNPfDiaNBXD7N9YpLeVT6sa', 1447553587, 1447553598, '78.240.124.58', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/7.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/13.png";}', 1, 1, 0, 0, 2),
(221, 0, 'knocks', 'wesleyanicet@gmail.com', '0000-00-00', NULL, '$2y$10$BGAKmDP5c21XOplTjuLqleefVc8liyKRgyUcW9Bj7zY05XZ0Vfh0q', 1447557352, 1447609857, '94.124.222.7', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/23.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/32.png";}', 1, 1, 0, 0, 3),
(222, 0, 'Wiper.', 'mauroditmomo@laposte.net', '0000-00-00', NULL, '$2y$10$ex5DH4i1za60oD1F6beaxO7XGamVIyn3TRwMLHehbtfxxiqkGY80u', 1447557729, 1447693904, '82.247.211.155', 0, 1, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/6.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:41:"assets/img/avatars/man/hair/marron/14.png";}', 1, 1, 0, 0, 1),
(223, 0, 'King', 'stephaneloickingue@yahoo.fr', '0000-00-00', NULL, '$2y$10$Exa/BlxmZ3cTLNGJP/GmnO5//m4sYbanpwrc1rBi7KWb0rPLMckCa', 1447571156, 1447668800, '41.205.7.223', 0, 6, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/3.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/42.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/5.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/blanc/23.png";}', 1, 1, 0, 0, 3),
(224, 0, 'Jonokov', 'ryan.guillot@hotmail.fr', '0000-00-00', NULL, '$2y$10$CJ6TR.z0YOGJoYsPYCFgsuNu9axu3FfRCD4GbtKQ1Ru.irN/H0fZu', 1447574188, 1447599212, '88.168.35.115', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/11.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/jaune/27.png";}', 1, 1, 0, 0, 1),
(225, 0, 'Insomnia', 'luffy03390@live.fr', '0000-00-00', NULL, '$2y$10$cJ8AjDjZgZDb8pDWv74S7uyfm5n57MV8Ppel9AhaIg91fRWjrbZDe', 1447574498, 1447692153, '77.198.131.212', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/44.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:41:"assets/img/avatars/man/hair/orange/24.png";}', 1, 1, 0, 0, 3),
(226, 0, 'Kazeshin', 'flavien.soanen@laposte.net', '0000-00-00', NULL, '$2y$10$2gG/pgWoPIoV8506QmEMIeFPorIMnS4d2fnUyy1ijyahKCrlCB1eO', 1447580386, 1447580393, '81.57.158.27', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/10.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/6.png";}', 1, 1, 0, 0, 3),
(227, 0, 'akashi', 'hsyayx@gmx.fr', '0000-00-00', NULL, '$2y$10$t4AEVKM/.Um922Vn7Sn7duqY6kTc5WejRtx/WlHVJH98Bbqeo4m.G', 1447580436, 1447693962, '82.216.179.2', 0, 2, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/31.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/jaune/25.png";}', 1, 1, 0, 0, 2),
(228, 0, 'Aito', 'dofussbh@gmail.com', '0000-00-00', NULL, '$2y$10$Gu5iy110ISNS.KUA9aTxqOVuxqdROT4omYXvt2AP7a4afieObSCQS', 1447580779, 1447580784, '2.13.110.202', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/7.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/blanc/20.png";}', 1, 1, 0, 0, 2),
(229, 0, 'Djarkad', 'selimlucas@yahoo.fr', '0000-00-00', NULL, '$2y$10$Thj7IKLWULSckyduPBK.ZuwTVX4wbp4HQT/i9g1aR6Z2KhAwvd7/.', 1447582118, 1447582552, '77.146.137.162', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/3.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/9.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/8.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/14.png";}', 1, 1, 0, 0, 3),
(230, 0, 'RayFuZiK', 'oprpg@gmx.fr', '0000-00-00', NULL, '$2y$10$hxd2sMAdzkOQCtJU3rCa4.mLWaAsB6EhGZNIMDVpsadbC2qTuTL.y', 1447583193, 1447587942, '88.165.7.136', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/18.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/bleu/11.png";}', 1, 1, 0, 0, 1),
(231, 0, 'JohnDix', 'JohnMsss@hotmail.com', '0000-00-00', NULL, '$2y$10$qsQOYXPg2Ep2wvezVVx6t.U7lmvJiX8NktygIzvZ2pf8TGoO6xjgu', 1447583209, 1447669369, '88.121.60.70', 0, 22, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/16.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/vert/9.png";}', 1, 1, 0, 0, 3),
(232, 0, 'Slhugo123', 'silvalimahugo@gmail.com', '0000-00-00', NULL, '$2y$10$7J2zmBuGVS2yA8lE5PBPl.QE/cTCf4vTbPy4Mt/uuHev5nW0fDnIK', 1447583864, 1447596876, '93.5.200.2', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/18.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/12.png";}', 1, 1, 0, 0, 1),
(233, 0, 'Kakwa', 'joris.plan@gmail.com', '0000-00-00', NULL, '$2y$10$Lq7X.RABS54uSOMHYFj2buBBnO7aPyDrUlYF7fSLUlDCIBv93nyF.', 1447584217, 1447700420, '78.121.214.118', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/40.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/37.png";}', 1, 1, 0, 0, 3),
(234, 0, 'Lucifer.', 'sayah99@hotmail.fr', '0000-00-00', NULL, '$2y$10$iIDak6uj6ouwRze5FdpoNeFD4gVmiyDSvrdrm0Q4Ecqxy0ozt/urq', 1447584358, 1447697434, '86.195.73.31', 0, 24, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/17.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/rouge/2.png";}', 1, 1, 0, 0, 1),
(235, 0, 'MONKEY.D.SAM', 'gigirol49@hotmail.com', '0000-00-00', NULL, '$2y$10$drvFO/EuDVCb/yfOc673M.SUuseO.K4WVGFp/SY.8MlqaePCji52i', 1447584433, 1447584448, '84.6.104.197', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/18.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/rouge/7.png";}', 1, 1, 0, 0, 1),
(236, 0, 'Boune', 'boune-clem@live.fr', '0000-00-00', NULL, '$2y$10$m0pgKHnvT6BYb8qctrF.g.L/dqSofI9enHHovxRobA.XQgZcaa8Yq', 1447584490, 1447584500, '78.127.202.203', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/6.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/37.png";}', 1, 1, 0, 0, 1),
(237, 0, 'PhilippeSama', 'icedjack97@gmail.com', '0000-00-00', NULL, '$2y$10$gDMkrak6Nj6QYsb9aBHXaud/eyuNYxhM5S52zzZddZTG/dS7SOPZa', 1447585284, 1447671558, '93.22.66.17', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/38.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/bleu/19.png";}', 1, 1, 0, 0, 3),
(238, 0, '.Destinity.', 'tomatoketchup85@yahoo.fr', '0000-00-00', NULL, '$2y$10$S2Ne4bcF7Ie8ns7hm4qo5.IqxhPFVnnUk7NUPQUq0IPAr08hH9K9O', 1447585367, 1447615529, '109.211.59.23', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/11.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/34.png";}', 1, 1, 0, 0, 2),
(239, 0, 'Sinaloa', 'jsolmon@orange.fr', '0000-00-00', NULL, '$2y$10$T4i0dWHjvyjPoG34fRi3nuFNG5b2m8lgfnKyCINqzz3S/DPugWss6', 1447585750, 1447595799, '83.112.84.68', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/38.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/jaune/1.png";}', 1, 1, 0, 0, 2),
(240, 0, 'Smooker', 'geoffrey.figuet@Hotmail.fr', '0000-00-00', NULL, '$2y$10$P.JK7Mq025IWx.CsT6DRKO640iYp2YBKmYtOKYqIpAorL031pjqUm', 1447585954, 1447631422, '80.12.51.233', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/1.png";}', 1, 1, 0, 0, 2),
(241, 0, 'Dytsugaya', 'mathieuantiq@hotmail.fr', '0000-00-00', NULL, '$2y$10$leiu81ppcu8fcxQGXEq9A.wYr41zi0vxsA6cBerHtvyEl5AWcEOuK', 1447586311, 1447694547, '92.133.226.167', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/2.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/32.png";}', 1, 1, 0, 0, 3),
(242, 0, 'bizniou', 'baptiste.tresaugue@hotmail.fr', '0000-00-00', NULL, '$2y$10$tAVJ4s63JSZpVd/QiSTkxui7TTQlUmV27Q.kpmOLzLGKvb4515E4m', 1447586533, 1447586540, '78.215.52.126', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/8.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/8.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/vert/10.png";}', 1, 1, 0, 0, 1),
(243, 0, 'Hik@ru', 'valentin.boisson@yahoo.fr', '0000-00-00', NULL, '$2y$10$1ex2Wol6yyUFVxPH/u1sEeQ.Tyu1kJ3LV9EzLAbKDZ.5zma3AzTGu', 1447586628, 1447586665, '95.170.32.75', 0, 2, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/30.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/26.png";}', 1, 1, 0, 0, 1),
(244, 0, 'Sneazzy', 'hugo334@live.fr', '0000-00-00', NULL, '$2y$10$F9BkM4RLu8MLt18j/tiEjev3Gq8lInY1KPbr.rsMFkBxeO49R9KjW', 1447588034, 1447695453, '79.88.148.14', 0, 2, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/6.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/14.png";}', 1, 1, 0, 0, 2),
(245, 0, 'Luffy', 'yassinebouderbal@gmail.com', '0000-00-00', NULL, '$2y$10$lhfzzKxCJUErQLbPjcZjZuzl3pk86iCTbOOZSZQoBcibu3iOX/4Um', 1447588238, 1447588250, '62.147.133.232', 0, 1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/42.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/jaune/15.png";}', 1, 1, 0, 0, 3),
(246, 0, 'Reiken', 'hamza--achour@outlook.fr', '0000-00-00', NULL, '$2y$10$xhQYLIx8RzTiycDnmCu4g.VdTQ5/qg5Z0249Fr1kUenHKS152/EMW', 1447588448, 1447588456, '93.1.32.127', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/14.png";}', 1, 1, 0, 0, 1),
(247, 0, 'Neykiiz', 'julien1998@msn.com', '0000-00-00', NULL, '$2y$10$hqmF.AyUzHfAdtknBzak/eM7HnilGIit6RhTd0rf3Q7utPvssscVS', 1447588645, 1447691997, '176.146.19.207', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/3.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:41:"assets/img/avatars/man/hair/marron/32.png";}', 1, 1, 0, 0, 2),
(248, 0, 'bills', 'billele.achour@gmail.com', '0000-00-00', NULL, '$2y$10$hbR.bP77dG2ExvD1sdPCheIU1dMxpCmVHqZGhxyEaTp/ZhwNz5vG2', 1447589317, 1447589335, '93.1.32.127', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/7.png";}', 1, 1, 0, 0, 1),
(249, 0, 'Corazon', 'stefano.mezguini@gmail.com', '0000-00-00', NULL, '$2y$10$RBkgAdQkdJ7OqXOm4igRMOjtHLInsxIbXEMuuI1OTMXlLR28/7fya', 1447589829, 1447589840, '89.93.92.174', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/48.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/jaune/16.png";}', 1, 1, 0, 0, 2),
(250, 0, 'Silver', 'adam69@hotmail.fr', '0000-00-00', NULL, '$2y$10$7syxvZn4lPG5P2Bjp.VE5eKme9m2af7QeoaI9r0jBySgeyZSERyQG', 1447589887, 1447632456, '82.238.78.189', 0, 1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/16.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/6.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/5.png";}', 1, 1, 0, 0, 3),
(251, 0, 'Nami', 'nono86120@outlook.fr', '0000-00-00', NULL, '$2y$10$nG669w175XMFjzasQGVlUuXCXogsfRosL1FqWBsnEUhUNfNs80S6.', 1447591604, 1447591626, '62.147.133.232', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Femme";s:4:"body";s:35:"assets/img/avatars/woman/body/1.png";s:4:"eyes";s:36:"assets/img/avatars/woman/eyes/45.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/8.png";s:4:"hair";s:41:"assets/img/avatars/woman/hair/jaune/6.png";}', 1, 1, 0, 0, 3),
(252, 0, 'Nafelyo', 'bnatsu527@gmail.com', '0000-00-00', NULL, '$2y$10$WI2Ce1DBTDSYshzC1clEJOYrjqUQlSIKu8XgQiCHRDxUtFnHE4ya.', 1447592763, 1447592780, '83.156.75.53', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/11.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/blanc/36.png";}', 1, 1, 0, 0, 1),
(253, 0, 'sephiroth51', 'sephiroth51100@gmail.com', '0000-00-00', NULL, '$2y$10$MBsz8zvu2oevktudKkWxUuEa2A5rtumY/qoo9hu6vlY/2ofC5dz42', 1447592815, 1447702144, '77.148.186.89', 0, 4, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/37.png";}', 1, 1, 0, 0, 1),
(254, 0, 'Hero', 'almaces.txt@gmail.com', '0000-00-00', NULL, '$2y$10$PYZ7G7Z/9ATRk.CmRgs.Fe/KhRbYC66l3IFwkESsPWKcwkrLi1od6', 1447594102, 1447672662, '41.224.166.195', 0, 5, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/37.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/2.png";}', 1, 1, 0, 0, 3),
(255, 1, 'ta.mere.salope', 'onepiece02@outlook.fr', '0000-00-00', NULL, '$2y$10$qToWPV1TK.yaGmJ5RFw3E.Yyz/kUKvmnbbjd5jIOt655PYhKtDJsW', 1447595212, 1447595225, '83.199.87.93', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/2.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/1.png";}', 1, 0, 0, 0, 1),
(256, 0, 'Red', 'djibdu62@hotmail.fr', '0000-00-00', NULL, '$2y$10$/N5Y3iDAprZOEpvbqHyflOVqNpLSgCDBxDtoX7.RmaP5bfKDsDtFS', 1447595246, 1447682166, '82.242.88.170', 0, 2, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/13.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/22.png";}', 1, 1, 0, 0, 2),
(257, 0, 'Calysta', 'chloefrad1@outlook.fr', '0000-00-00', NULL, '$2y$10$Gtsf/HnSEdOUURt/LbsEYOC8NwfLiEZmGO.6QPcpBnBVpPeXjeIO2', 1447595596, 1447595613, '37.162.250.220', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Femme";s:4:"body";s:35:"assets/img/avatars/woman/body/1.png";s:4:"eyes";s:36:"assets/img/avatars/woman/eyes/14.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:41:"assets/img/avatars/woman/hair/noir/31.png";}', 1, 1, 0, 0, 1),
(258, 1, 'ta.mere', 'stevenni555555@outlook.fr', '0000-00-00', NULL, '$2y$10$oMtxmYN7AhMt7Bn1w8V6C.bnnLadH0087Hk7BSpRWfaWd4z1W4Qj2', 1447595655, 1447595661, '83.199.87.93', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/10.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/8.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/10.png";}', 1, 0, 0, 0, 2),
(259, 0, 'ttt', 'testfdgf@gfgf.fr', '0000-00-00', NULL, '$2y$10$w8iyI3jgNZHYC8STEGSBnOMu.fp5cxJNbPR/slNyU8AMcGvcamSu.', 1447597023, 0, '', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/2.png";}', 1, 1, 0, 0, 1),
(260, 0, 'Trackks', 'trackks@hotmail.fr', '0000-00-00', NULL, '$2y$10$vgzmGFByFiloUN8kSE45veEaw5wRBws1hDThaRYofL8q9Yi5TYvnK', 1447597265, 1447597272, '81.57.216.225', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/10.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/18.png";}', 1, 1, 0, 0, 3),
(261, 0, 'skyron', 'jeromelissoir@gmail.com', '0000-00-00', NULL, '$2y$10$3iVM6rvx5bT858j4NIu85eMIf07.G7ftHl8DurAAjDb5QwvVRvy02', 1447597624, 1447597689, '87.67.244.62', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/1.png";}', 1, 1, 0, 0, 1),
(262, 0, 'Flandre''sDevil', 'luffyduWTF@gmail.com', '0000-00-00', NULL, '$2y$10$pUxRdrPJ.o1Rf8bWCu/KserKBoETA3nJLSpfZluKsYpmGLJosqsEu', 1447598210, 1447697853, '86.210.2.189', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Femme";s:4:"body";s:35:"assets/img/avatars/woman/body/1.png";s:4:"eyes";s:36:"assets/img/avatars/woman/eyes/14.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:42:"assets/img/avatars/woman/hair/jaune/13.png";}', 1, 1, 0, 0, 3),
(263, 0, 'shinishi', 'kudo_2cro@live.fr', '0000-00-00', NULL, '$2y$10$BPV4gMohje38s/J5DkmMI.tuF3KzRaPgnGTibDzDwaUrATI10F1n2', 1447599418, 1447707389, '82.229.250.73', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/14.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/8.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/18.png";}', 1, 1, 0, 0, 3),
(264, 0, 'Nachal', 'pierre.touguet@gmail.com', '0000-00-00', NULL, '$2y$10$O3GFlWrtvl713l5IWrQpAu86rf2YW2SMkQHCEzkgGiRyWly7LpDce', 1447600147, 1447684039, '82.227.215.8', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/14.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/22.png";}', 1, 1, 0, 0, 1),
(265, 0, 'OlipLeCorbeau', 'olip.lecorbeau@gmail.com', '0000-00-00', NULL, '$2y$10$YdyXh7j7chQDwli8g6eyNO6.dO0yiT1nt4SXdKY4T48DBLeFbW/0W', 1447600225, 1447600241, '88.139.52.60', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/1.png";}', 1, 1, 0, 0, 1),
(266, 0, '☢ sђυкυη ', 'YHUZWECMWA@gmail.com', '0000-00-00', NULL, '$2y$10$r6ZIQUx.W4ba5OH6pxN5s.wBEEIsHK4diDMRf0egx81VB3iOQi5la', 1447600557, 0, '', 0, 0, 1, 100, '', 1, 1, 0, 0, 3),
(267, 0, 'Ryuma', 'RyumaCorleone@gmail.com', '0000-00-00', NULL, '$2y$10$JuOyuJqe2VanLu0VH6G.L.ED3q6h2DTqGlJ8EpWBlpr236ZU66T82', 1447601073, 1447693917, '78.209.142.56', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/18.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/7.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/34.png";}', 1, 1, 0, 0, 3),
(268, 0, 'Tempete', 'Tedfaya_973@live.fr', '0000-00-00', NULL, '$2y$10$yBeitBYLJ9Xavht23JtljevbtQA4I1HFiILIF3LlM2HvZ6zlOiIDK', 1447601439, 1447601452, '92.49.109.212', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/42.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/6.png";}', 1, 1, 0, 0, 2),
(269, 0, 'dieu56', 'alan.lef@hotmail.fr', '0000-00-00', NULL, '$2y$10$a9bNrxwhyovtDkczkeR9XOAPlhPGZRrTDR3lansWs58jONRybuyki', 1447601686, 1447601693, '86.214.182.23', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/19.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/7.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/17.png";}', 1, 1, 0, 0, 2),
(270, 0, 'Astra', 'victoria.wendy@hotmail.fr', '0000-00-00', NULL, '$2y$10$T/tCuzRsF9Z71nHoNl2DBeX.WnBNxr9R3ejhdPC5l7kp7Y59wc6cy', 1447601811, 1447692170, '82.247.102.200', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Femme";s:4:"body";s:35:"assets/img/avatars/woman/body/2.png";s:4:"eyes";s:36:"assets/img/avatars/woman/eyes/39.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:41:"assets/img/avatars/woman/hair/noir/34.png";}', 1, 1, 0, 0, 3),
(271, 0, 'Gandalf', 'Gandalf_du_67@hotmail.fr', '0000-00-00', NULL, '$2y$10$h7qdY/806cpZKyzhjlHHC.vJNtSn81njRQxVi4heiIq1T2I.ouQo6', 1447601849, 1447691097, '109.217.193.174', 0, -1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/2.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/5.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/blanc/23.png";}', 1, 1, 0, 0, 3),
(272, 0, 'Bahamm', 'fab.du22.1996@gmail.com', '0000-00-00', NULL, '$2y$10$bdm2XAsH9iqEitsAJkBhfemQQZQxiMZCjphTCWYjFkdMydIJBkjYS', 1447601896, 1447601906, '2.2.167.51', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/10.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/18.png";}', 1, 1, 0, 0, 1),
(273, 0, 'Izaak', 'valtofus@sfr.fr', '0000-00-00', NULL, '$2y$10$NWaGJqD9DHH9Qofkfhj6NuNSeMpEpa1Ou8H1VT2RBnWexDB9X5s/O', 1447602093, 1447610368, '77.150.78.85', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/4.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/8.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/22.png";}', 1, 1, 0, 0, 1),
(274, 0, 'Entei', 'heindy99@hotmail.fr', '0000-00-00', NULL, '$2y$10$bYsrBm1/b4ECHYahadNgc..4bWQGc/TFvqesZ7q.87iY6VMM9QMxO', 1447602177, 1447602186, '109.30.101.162', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/42.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:41:"assets/img/avatars/man/hair/marron/14.png";}', 1, 1, 0, 0, 2),
(275, 0, 'temari', 'stevenskarface123@live.fr', '0000-00-00', NULL, '$2y$10$Kxfu06xz4ydRUZcVkourMe8bL0L.TaZDrv.CU4o53k.ZhBednKq.O', 1447603429, 1447703625, '83.199.87.93', 0, 1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/27.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/5.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/24.png";}', 1, 1, 0, 0, 3);
INSERT INTO `users` (`id`, `ban`, `pseudo`, `email`, `birthday`, `sexe`, `password`, `registration`, `last_action`, `ip`, `is_kick`, `messNumber`, `lvl`, `berry`, `avatar`, `id_objects`, `id_users_types`, `id_crews_candidacy`, `id_lost_pass`, `id_faction`) VALUES
(276, 0, 'NeveLup', 'phanguy5@gmail.com', '0000-00-00', NULL, '$2y$10$Z23xmJgLAM2ioCXyResOO.usMsHhZgTFyNpMXlfukfmpjuQw5aHdK', 1447604757, 1447604807, '77.146.204.145', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/8.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/1.png";}', 1, 1, 0, 0, 1),
(277, 0, 'Okama_Sutra', 'patrick.azard@hotmail.fr', '0000-00-00', NULL, '$2y$10$UMTZLwwl3snH.j6JM7E83.H/NQNQD4mlJBcRm/o5Y6K9giCeNtzxK', 1447604886, 1447623445, '77.205.138.9', 0, -2, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/56.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/rose/22.png";}', 1, 1, 0, 0, 3),
(278, 0, 'Veerus', 'martin.signollet@gmail.com', '0000-00-00', NULL, '$2y$10$y4qVG0ObZJZLENmUhaCjmOHeqsNnJfKTSZhT7HFmMvE7/phOaNIZW', 1447605693, 1447605713, '86.221.212.164', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/53.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/5.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/rose/27.png";}', 1, 1, 0, 0, 3),
(279, 0, 'Allen.W', 'sanjidu76@hotmail.fr', '0000-00-00', NULL, '$2y$10$nWrMa1H3GG1nKMg5WBx8zOfHWQX3q2a.I4zpMVV8FuUazS3C4aN7S', 1447605697, 1447605701, '90.51.129.140', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/9.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/21.png";}', 1, 1, 0, 0, 3),
(280, 0, 'IMAD.e.DDINE', 'lilmad1996@hotmail.fr', '0000-00-00', NULL, '$2y$10$q38yRF88S/Zb2ZPwFgt2KeGjgIe0s70BjWRpNhlC5UBymcNsWtA8C', 1447605763, 1447605771, '105.101.48.2', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/34.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/5.png";s:4:"hair";s:41:"assets/img/avatars/man/hair/marron/25.png";}', 1, 1, 0, 0, 3),
(281, 0, 'Slurp', 'sayahjtm@yopmail.com', '0000-00-00', NULL, '$2y$10$Nu3xUxPPfA2tbHN51AejkeeA.hsSv6bOaAGTpk6Im4RSdrDMtxSHG', 1447606630, 1447606657, '62.34.123.192', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/11.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/27.png";}', 1, 1, 0, 0, 2),
(282, 0, 'Satan', 'chris50ntm@yopmail.com', '0000-00-00', NULL, '$2y$10$k/XmZGliPzz6yZSnAgXiaekmVYr1.ivyC7xjqMbG3KbDfUrQQi.k.', 1447607163, 1447697423, '86.195.73.31', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/18.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/26.png";}', 1, 1, 0, 0, 1),
(283, 0, 'Kayaba', 'lepaddock35@gmail.com', '0000-00-00', NULL, '$2y$10$I1ggLQUm3iKxArjdxsAKzutUebpi.OV5J1wbMsH0CEQLHecQft.Tq', 1447607306, 1447607324, '78.121.214.118', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/27.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/1.png";}', 1, 1, 0, 0, 2),
(284, 0, 'Not-Afraid', 'thomgigi11@yahoo.fr', '0000-00-00', NULL, '$2y$10$g5JWwmj2ymrA3L2kSH0pmeWvA/fRnyF9rtUoY0TPLSc3JpWsQAoOO', 1447607743, 1447607760, '78.252.106.6', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/3.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/22.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/8.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/25.png";}', 1, 1, 0, 0, 2),
(285, 0, 'TigerShey', 'oprpg2@gmx.fr', '0000-00-00', NULL, '$2y$10$DnBj3P7BzGRamuCrKZwpT./SD1n.DWXwpC6DfTs/JmiPdvI/aCaYm', 1447609438, 1447703090, '88.165.7.136', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/18.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/5.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/32.png";}', 1, 1, 0, 0, 2),
(286, 0, 'Tetsuya', 'demones671@gmail.com', '0000-00-00', NULL, '$2y$10$sd14ZfJPgiAwZNAT3ySxzObY7WGEMkmzDrDewbFDuU3AI02iOvXni', 1447609699, 1447694018, '82.216.179.2', 0, 1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/41.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/15.png";}', 1, 1, 0, 0, 1),
(287, 0, 'Holeobow', 'mimostarti@gmail.com', '0000-00-00', NULL, '$2y$10$9crkGhXA81HF37mn/Typ5esy3lDRkKKatX.MTqc7TaDKCk56TZity', 1447610599, 1447610610, '78.194.88.37', 0, 1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/7.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/22.png";}', 1, 1, 0, 0, 3),
(288, 0, 'Crystal', 'christelle.maug@gmail.com', '0000-00-00', NULL, '$2y$10$/eoCGfFpZtjKfoPYOyktReHJCZtPtUylvZiuJzInWumJJuDntc33S', 1447610967, 0, '', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Femme";s:4:"body";s:35:"assets/img/avatars/woman/body/2.png";s:4:"eyes";s:36:"assets/img/avatars/woman/eyes/48.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/5.png";s:4:"hair";s:41:"assets/img/avatars/woman/hair/noir/32.png";}', 1, 1, 0, 0, 1),
(289, 0, 'luffy759', 'floriane.plouviez@gmail.com', '0000-00-00', NULL, '$2y$10$lLuPKKc5KV/qGaaH4iXq1uRoBB5Lz.JK.YIjq2O.itkPsqr8prU/q', 1447611283, 1447621069, '90.35.233.170', 0, 1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/2.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/bleu/4.png";}', 1, 1, 0, 0, 3),
(290, 0, 'Deus', 'zakzak30150@gmail.com', '0000-00-00', NULL, '$2y$10$o3XyfHXwrOsNn2oI9oLGvOyPf.muLMyqOVo7FZ85pjyCRsCEIKj7u', 1447611428, 1447611435, '78.211.55.28', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/13.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/marron/1.png";}', 1, 1, 0, 0, 2),
(291, 0, 'Opacho', 'rhinopacho@gmail.com', '0000-00-00', NULL, '$2y$10$xAGXy4c3UDLIO47s7qnPXeGuahGZYLA9/Pfv3B6/95drKS5qUk5P.', 1447611530, 1447611535, '77.195.183.246', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/38.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/37.png";}', 1, 1, 0, 0, 1),
(292, 0, 'Berek40', 'maloes40@free.fr', '0000-00-00', NULL, '$2y$10$1NFjE56fU6mKwelnoWFDm.4FoM1r2r4lxc4b73SGJKdLkDzu16jYm', 1447614762, 1447614777, '78.210.144.90', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/7.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/8.png";}', 1, 1, 0, 0, 3),
(293, 0, 'Valmek', 'lebossdu00@gmail.com', '0000-00-00', NULL, '$2y$10$.G.646fP0PpI4AL49UCnLOo/iNvUPXs.d8Tn4C6DPMIp/rI2k5BbK', 1447616174, 1447625646, '88.171.92.146', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/49.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/38.png";}', 1, 1, 0, 0, 3),
(294, 0, 'RayaneDz', 'rayanedz123@outlook.fr', '0000-00-00', NULL, '$2y$10$ZS/AYa8e/1mf5yc9b00BlOV/eBjtvcAC/RKLUxMVD47f2PbZ.QaWW', 1447616604, 1447705165, '38.121.250.106', 0, 1, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/56.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/15.png";}', 1, 1, 0, 0, 2),
(295, 0, 'Djay²', 'Icomeback95@gmail.com', '0000-00-00', NULL, '$2y$10$lWjOKR08M.l9owNylGt1sOB98hGOsTJYaByVpb55pnwEXfiSU1zUG', 1447617211, 1447617231, '78.250.130.82', 0, 2, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/42.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/8.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/jaune/7.png";}', 1, 1, 0, 0, 2),
(296, 0, 'Tenyasha.', 'Kitafukaari91@hotmail.fr', '0000-00-00', NULL, '$2y$10$4JTq2iHMF2fZ6.13EXTIaOqawTsx.QN9Hz14n1wBplX.m/fifFBzS', 1447618464, 1447672273, '88.160.88.196', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/23.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/4.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/21.png";}', 1, 1, 0, 0, 3),
(297, 0, 'Aspros', 'melvynderleyn@gmail.com', '0000-00-00', NULL, '$2y$10$WHxa/5VXUjv5xfTkFwxNkeRIU4Zp71pjlB/hqXar9jv5SSQjY40vC', 1447618630, 1447662151, '83.192.141.220', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/6.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/26.png";}', 1, 1, 0, 0, 2),
(298, 0, 'Saturz', 'maknono30@hotmail.fr', '0000-00-00', NULL, '$2y$10$OAQNHioV9Aj5AwLHYdO/OO1K9Vrvii.TzFLqcfk99RAGSZpkD57BG', 1447618687, 1447703733, '109.30.101.162', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/2.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/1.png";}', 1, 1, 0, 0, 1),
(299, 0, 'Yaga', 'yagy@yopmail.fr', '0000-00-00', NULL, '$2y$10$u0uYCNEF8kKop9NXw7BXSOW9QguCAEtSwCzB4gG7MKBVlmShJLyO2', 1447618906, 1447618913, '46.193.143.31', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/6.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/14.png";}', 1, 1, 0, 0, 1),
(300, 0, 'BlaackDAce', 'bda1605@gmail.com', '0000-00-00', NULL, '$2y$10$4S8i2u.514Qt8SbrG9N/j.ckLsVCEHy0GlKW.SCyRZ.Sji.Xgpbhe', 1447619323, 1447619328, '93.15.161.182', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/3.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/9.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/37.png";}', 1, 1, 0, 0, 2),
(301, 0, 'Haurae', 'pauline.mtu@outlook.fr', '0000-00-00', NULL, '$2y$10$jM1W8HthQr77WJLj0Q8VL.pEwP/XorRSQTfyoDX7.d0uE2286hVA2', 1447620824, 1447695517, '109.22.127.201', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Femme";s:4:"body";s:35:"assets/img/avatars/woman/body/2.png";s:4:"eyes";s:36:"assets/img/avatars/woman/eyes/51.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:41:"assets/img/avatars/woman/hair/noir/13.png";}', 1, 1, 0, 0, 3),
(302, 0, 'Ichimonji', 'bebech27@hotmail.com', '0000-00-00', NULL, '$2y$10$Ef1wZe0.rgfnNuwZcaAhtuytcVD.BFMRb8/XHdk/TQYn3Q.6qi53S', 1447621837, 1447693037, '166.62.201.111', 0, 1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/jaune/8.png";}', 1, 1, 0, 0, 1),
(303, 0, 'Isaya', 'felicia.ta2@gmail.com', '0000-00-00', NULL, '$2y$10$71Rb9CsyaaSc7gHQbhXhaOY7519O4jgRFfNWrIPBrcSG09aBhSQ5K', 1447623771, 1447691140, '86.68.106.90', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/9.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/23.png";}', 1, 1, 0, 0, 1),
(304, 0, 'Malthus', 'alaingld@hotmail.fr', '0000-00-00', NULL, '$2y$10$jJjZ8ZFNkaKfO9pi7TcZQO6SNvvHp8S8nWEAIQsXnvz8K28quuz0i', 1447624662, 1447700184, '93.15.245.158', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/5.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/blanc/6.png";}', 1, 1, 0, 0, 1),
(305, 0, 'D.odin', 'crombez.theo@yahoo.fr', '0000-00-00', NULL, '$2y$10$eywr4u3MjQeDwMDUqA07R.L9ARQlttRT8GrP4h.IE7FT4uKBqdTOO', 1447627248, 1447627263, '176.145.112.151', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/23.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/7.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/22.png";}', 1, 1, 0, 0, 1),
(306, 0, 'Eleyox', 'mreleyox@gmail.com', '0000-00-00', NULL, '$2y$10$LoHepGjPyv49TM2HmKZS3eIwAzlQlqSITtcq5VfJeo4FzN7Imvjja', 1447629766, 1447629803, '83.112.82.250', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/27.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/blanc/19.png";}', 1, 1, 0, 0, 1),
(307, 0, 'Kakaki', 'lracbourbonnais@hotmail.com', '0000-00-00', NULL, '$2y$10$OZQe8BGwMN2EjFTzqtF3.ugvtLtkzXm9NYiv6zVhTF.04m8J/uFLW', 1447632064, 1447688490, '74.56.27.14', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/20.png";}', 1, 1, 0, 0, 1),
(308, 0, 'FNC Soap', 'gauthier62223@gmail.com', '0000-00-00', NULL, '$2y$10$35aw/5a9fqIlRCprBlInEeFy/gSEs3m3R9zDuUbPJAKO9CjMkwrRy', 1447635737, 1447696353, '86.228.25.53', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/1.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/bleu/9.png";}', 1, 1, 0, 0, 2),
(309, 0, 'ekinair', 'jobr91@gmail.com', '0000-00-00', NULL, '$2y$10$wZMJ1tX0DupqiIo8GUGF3ud.ZMn9Tz35jDH6BtrGIPWbIoxgqbNOy', 1447653013, 1447653038, '86.212.38.94', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/16.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/36.png";}', 1, 1, 0, 0, 1),
(310, 0, 'zenlene', 'fabtheone@hotmail.fr', '0000-00-00', NULL, '$2y$10$yNY6uoSH3XwPjcMTmnnG9ufVdX.zGvqwzvejbXu2jaUTYnFlWCiqq', 1447653168, 1447653180, '86.71.132.47', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/31.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/7.png";}', 1, 1, 0, 0, 1),
(311, 0, 'Systanos', 'jonathan.steel1986@hotmail.fr', '0000-00-00', NULL, '$2y$10$BWyDa1qmi.212BmhMWHGeuz4AxGSOcMyTg2/yNIRfy224IbUPuW3G', 1447661401, 1447661414, '77.156.242.170', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/11.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/14.png";}', 1, 1, 0, 0, 3),
(312, 0, 'Tom21', 't.agincourt@yahoo.fr', '0000-00-00', NULL, '$2y$10$z8OzBIvMJtLMYrT47I5x6.mvRYg3ig4e76UWQd/Hbn7Rq6.p2esgO', 1447679596, 1447679607, '82.232.213.184', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/11.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/4.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/14.png";}', 1, 1, 0, 0, 1),
(313, 0, 'Smokerboom', 'walter.guissard@hotmail.com', '0000-00-00', NULL, '$2y$10$hwsnbSPj145I11xO9Y3lKuwI3QYLyM0g1MKsBSMQ2FnutbV54TLYC', 1447682498, 1447695691, '217.136.14.74', 0, 4, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/3.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/10.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/vert/19.png";}', 1, 1, 0, 0, 2),
(314, 0, 'DArcK ANgel', 'enes348@hotmail.fr', '0000-00-00', NULL, '$2y$10$iSwDSIx.Y0tLxNvMk9EIS.5QzK7P33QrLuLCy3ZbJMBCgn37bCOOS', 1447688297, 1447697337, '80.9.136.128', 0, 1, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/17.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/bleu/33.png";}', 1, 1, 0, 0, 3),
(315, 0, 'D.Light', 'd.light3713@gmail.com', '0000-00-00', NULL, '$2y$10$pVKRLh8XtQ7RwW3X2KEqa.teykomlh8N/31WilFjPDYVptWSRCYfi', 1447690234, 1447690248, '90.60.131.38', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Femme";s:4:"body";s:35:"assets/img/avatars/woman/body/1.png";s:4:"eyes";s:36:"assets/img/avatars/woman/eyes/13.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:41:"assets/img/avatars/woman/hair/bleu/25.png";}', 1, 1, 0, 0, 3),
(316, 0, 'luffi90', 'luffi90@live.fr', '0000-00-00', NULL, '$2y$10$Trawr.RdiccJoxcfv8Hjq.Upu7l5Qe0dPKQOoW5HOEDFd.yGtGOk.', 1447691636, 1447691650, '86.192.153.222', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/37.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:41:"assets/img/avatars/man/hair/marron/20.png";}', 1, 1, 0, 0, 2),
(317, 0, 'Nazhiro', 'dorian11000@live.fr', '0000-00-00', NULL, '$2y$10$XRsuhpGVzCqLfc/7CUFSauxIMNgp76xaZfwjuipdROiqULffhZUNG', 1447700291, 1447700304, '81.220.30.217', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/44.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/rouge/31.png";}', 1, 1, 0, 0, 1),
(318, 0, 'Synaxys', 'synaxys@outlook.fr', '0000-00-00', NULL, '$2y$10$8vQACyG7G8LEU9P2bzDdNecVXGF0szYXapOitDWTLMeBF.sEKPI5C', 1447700439, 1447700458, '84.98.160.181', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/53.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/35.png";}', 1, 1, 0, 0, 2),
(319, 0, 'ROI', 'jellal.fern@gmx.fr', '0000-00-00', NULL, '$2y$10$TavUKM53vZB14wZc2RWnT.BWsa5lpQ9mhR4/EUsP1yPM1Bqp64B32', 1447703116, 1447703121, '88.137.58.76', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/18.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/9.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/jaune/16.png";}', 1, 1, 0, 0, 3),
(320, 0, 'Morgoth', 'balrogdemorgothe@gmail.com', '0000-00-00', NULL, '$2y$10$ZsIx7Z.IQ7Z6KvJvWhRMfuob7iyHepz5Up8ceIpWy3FemaLJVAitO', 1447703219, 1447703227, '83.155.28.90', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/18.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/21.png";}', 1, 1, 0, 0, 2),
(321, 0, 'Darksword', 'sasuke.uchiwa40@hotmail.fr', '0000-00-00', NULL, '$2y$10$vL2HF4w64MbPgQ42tFFsX.uzdeAkGNhL7VQ4DtgdT32RPJocuI0ei', 1447704590, 1447704597, '93.15.245.158', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/13.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/3.png";s:4:"hair";s:39:"assets/img/avatars/man/hair/noir/22.png";}', 1, 1, 0, 0, 2),
(322, 0, 'Suoh_Nagare', 'flameknight35@gmail.com', '0000-00-00', NULL, '$2y$10$lEXC98AOV8e7nzo9BsTqtuKptheEKMFVZZUYgs/6tBJqUA.6eGcR6', 1447705430, 1447705439, '109.88.40.170', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/33.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/2.png";s:4:"hair";s:40:"assets/img/avatars/man/hair/blanc/20.png";}', 1, 1, 0, 0, 2),
(323, 0, 'kazuto', 'clementcoinu@laposte.net', '0000-00-00', NULL, '$2y$10$8Sh/UW63GgFfsk5mqeqy4eKTmLsVW59ZDpI.ZTd4nparos8g0rnsS', 1447706761, 1447706788, '89.158.131.143', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/1.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/37.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:41:"assets/img/avatars/man/hair/orange/25.png";}', 1, 1, 0, 0, 3);

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
-- Structure de la table `users_types`
--

CREATE TABLE IF NOT EXISTS `users_types` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `is_block` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

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
-- Index pour la table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `charactere`
--
ALTER TABLE `charactere`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_charactere_x` (`x`);

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
  ADD KEY `FK_crews_id_crews_banks` (`id_crews_banks`),
  ADD KEY `fk_crews_faction` (`id_faction`);

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
-- Index pour la table `lost_pass`
--
ALTER TABLE `lost_pass`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`x`,`y`),
  ADD KEY `FK_maps_id` (`id`);

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
-- Index pour la table `monster`
--
ALTER TABLE `monster`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mouths`
--
ALTER TABLE `mouths`
  ADD PRIMARY KEY (`id`);

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
-- Index pour la table `nose`
--
ALTER TABLE `nose`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `FK_privates_messages_id_users` (`id_author`),
  ADD KEY `FK_privates_messages_id_users_1` (`id_dest`);

--
-- Index pour la table `privates_messages_appartenance`
--
ALTER TABLE `privates_messages_appartenance`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `FK_users_id_objects` (`id_objects`),
  ADD KEY `FK_users_id_users_types` (`id_users_types`),
  ADD KEY `fk_users_id_faction` (`id_faction`);

--
-- Index pour la table `users_bag`
--
ALTER TABLE `users_bag`
  ADD PRIMARY KEY (`id`,`id_bags`),
  ADD KEY `FK_users_bag_id_bags` (`id_bags`);

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
-- AUTO_INCREMENT pour la table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1629;
--
-- AUTO_INCREMENT pour la table `charactere`
--
ALTER TABLE `charactere`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT pour la table `crews_banks`
--
ALTER TABLE `crews_banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT pour la table `crews_candidacy`
--
ALTER TABLE `crews_candidacy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=94;
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
-- AUTO_INCREMENT pour la table `faction`
--
ALTER TABLE `faction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `forums_categories`
--
ALTER TABLE `forums_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=134;
--
-- AUTO_INCREMENT pour la table `forums_topics`
--
ALTER TABLE `forums_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=274;
--
-- AUTO_INCREMENT pour la table `forums_topics_messages`
--
ALTER TABLE `forums_topics_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12177;
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
-- AUTO_INCREMENT pour la table `lost_pass`
--
ALTER TABLE `lost_pass`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `monster`
--
ALTER TABLE `monster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `mouths`
--
ALTER TABLE `mouths`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `news_comments`
--
ALTER TABLE `news_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `nose`
--
ALTER TABLE `nose`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=473;
--
-- AUTO_INCREMENT pour la table `privates_messages_appartenance`
--
ALTER TABLE `privates_messages_appartenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=944;
--
-- AUTO_INCREMENT pour la table `tchats`
--
ALTER TABLE `tchats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `tchats_messages`
--
ALTER TABLE `tchats_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4253;
--
-- AUTO_INCREMENT pour la table `tchats_types`
--
ALTER TABLE `tchats_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=324;
--
-- AUTO_INCREMENT pour la table `users_types`
--
ALTER TABLE `users_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
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
-- Contraintes pour la table `charactere`
--
ALTER TABLE `charactere`
  ADD CONSTRAINT `FK_charactere_x` FOREIGN KEY (`x`) REFERENCES `maps` (`x`);

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
  ADD CONSTRAINT `FK_crews_id_crews_types` FOREIGN KEY (`id_crews_types`) REFERENCES `crews_types` (`id`),
  ADD CONSTRAINT `fk_crews_faction` FOREIGN KEY (`id_faction`) REFERENCES `faction` (`id`);

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
-- Contraintes pour la table `maps`
--
ALTER TABLE `maps`
  ADD CONSTRAINT `FK_maps_id` FOREIGN KEY (`id`) REFERENCES `maps_types` (`id`);

--
-- Contraintes pour la table `maps_monster`
--
ALTER TABLE `maps_monster`
  ADD CONSTRAINT `FK_maps_monster_id` FOREIGN KEY (`id`) REFERENCES `monster` (`id`),
  ADD CONSTRAINT `FK_maps_monster_id_maps_types` FOREIGN KEY (`id_maps_types`) REFERENCES `maps_types` (`id`);

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
  ADD CONSTRAINT `FK_privates_messages_id_users` FOREIGN KEY (`id_author`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_privates_messages_id_users_1` FOREIGN KEY (`id_dest`) REFERENCES `users` (`id`);

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
-- Contraintes pour la table `tickets_messages`
--
ALTER TABLE `tickets_messages`
  ADD CONSTRAINT `FK_tickets_messages_id_tickets_sujets` FOREIGN KEY (`id_tickets_sujets`) REFERENCES `tickets_sujets` (`id`),
  ADD CONSTRAINT `FK_tickets_messages_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_users_id_objects` FOREIGN KEY (`id_objects`) REFERENCES `objects` (`id`),
  ADD CONSTRAINT `FK_users_id_users_types` FOREIGN KEY (`id_users_types`) REFERENCES `users_types` (`id`),
  ADD CONSTRAINT `fk_users_id_faction` FOREIGN KEY (`id_faction`) REFERENCES `faction` (`id`);

--
-- Contraintes pour la table `users_bag`
--
ALTER TABLE `users_bag`
  ADD CONSTRAINT `FK_users_bag_id` FOREIGN KEY (`id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_users_bag_id_bags` FOREIGN KEY (`id_bags`) REFERENCES `bags` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
