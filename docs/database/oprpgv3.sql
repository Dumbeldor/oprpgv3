-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 11 Novembre 2015 à 19:31
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
('c3e899187927bf4e29517f6f823edabf1471f76c', 0, '::1', 1447018369, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434373031383131333b),
('78f4069d2dc3c2812b4d63d4dcf4e4bcf6ae6ca4', 0, '::1', 1447265181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434373236353138313b),
('820baf955bb4663b1d037b22fe3b4ac939137e72', 1, '::1', 1447266520, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434373236363237343b69647c733a313a2231223b62616e7c733a313a2230223b70736575646f7c733a393a2244756d62656c646f72223b656d61696c7c733a32333a2276696e63656e74676c697a6540686f746d61696c2e6672223b62697274686461797c733a31303a22303030302d30302d3030223b736578657c4e3b69735f6b69636b7c733a313a2230223b6c766c7c733a313a2230223b69645f6f626a656374737c733a313a2231223b69645f75736572735f74797065737c733a323a223234223b72616e6b7c733a31343a2241646d696e697374726174657572223b66616374696f6e7c733a313a2232223b6661634e616d657c733a363a224d6172696e65223b7c4e3b617574687c623a313b637265774e616d657c733a393a2253746172666f756c61223b6372657749647c733a323a223534223b6372657752616e6b7c733a393a22436170697461696e65223b637265777c733a393a2253746172666f756c61223b),
('30cbf838965436eaba75b44947365d0cd5f5c7e2', 34, '::1', 1447266536, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434373236363531333b69647c733a323a223334223b62616e7c733a313a2230223b70736575646f7c733a373a2256696e63656e74223b656d61696c7c733a31353a226f6d6167616440676d61696c2e6672223b62697274686461797c733a31303a22303030302d30302d3030223b736578657c4e3b69735f6b69636b7c733a313a2230223b6c766c7c733a313a2230223b69645f6f626a656374737c733a313a2231223b69645f75736572735f74797065737c733a313a2232223b72616e6b7c733a333a22564950223b66616374696f6e7c733a313a2231223b6661634e616d657c733a363a22506972617465223b637265774e616d657c733a343a2254657374223b6372657749647c733a323a223531223b6372657752616e6b7c733a393a22436170697461696e65223b617574687c623a313b);

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
  `page` text,
  `file` varchar(255) NOT NULL,
  `date_time` int(12) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_crews_types` int(11) NOT NULL,
  `id_crews_banks` int(11) NOT NULL,
  `id_faction` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `crews`
--

INSERT INTO `crews` (`id`, `name`, `money`, `page`, `file`, `date_time`, `is_block`, `id_crews_types`, `id_crews_banks`, `id_faction`) VALUES
(51, 'Test', 0, NULL, '', 1447258410, 0, 1, 5, 1),
(54, 'Starfoula', 0, NULL, '', 1447265735, 0, 1, 8, 2);

-- --------------------------------------------------------

--
-- Structure de la table `crews_banks`
--

CREATE TABLE IF NOT EXISTS `crews_banks` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `crews_banks`
--

INSERT INTO `crews_banks` (`id`) VALUES
(4),
(5),
(6),
(7),
(8);

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
(54, 1, 5),
(51, 34, 5);

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
  `is_crew` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `forums_categories`
--

INSERT INTO `forums_categories` (`id`, `name`, `descr`, `types`, `is_block`, `sequence`, `is_crew`) VALUES
(1, 'Salle secrète', 'Salle secrète réservé au staff !', '', 0, 1, 0),
(2, 'Messages officiels', 'Tous les messages officiels sont postés ici !', '', 0, 2, 0),
(3, 'Présentation des membres', 'C''est dans cette section que chaque membre du site pourra faire une petite présentation de lui-même.', '', 0, 6, 0),
(4, 'Aide', 'Si vous avez besoin d''aide et que personne ne vous répond sur le t''chat, cette section vous correspond!', '', 0, 8, 0),
(5, 'Général', 'Parlez de tout et de rien.<br>\nEn rapport plus ou moins loin du jeu.', NULL, 0, 3, 0),
(6, 'Rumeurs', 'Toutes les rumeurs sur le site', NULL, 1, 6, 0),
(7, 'Diplomatie inter-équipages', 'Recrutez des membres et proposez des alliances entre équipages... ou même la guerre!', NULL, 1, 7, 0),
(8, 'Animations', 'Participez ou organisez des concours afin d''animer la communauté!', NULL, 0, 5, 0),
(9, 'Commerce', 'Vendez à d''autres joueurs tous les objets que vous avez en trop !', NULL, 1, 9, 0),
(10, 'Discussions scans', 'Exprimez-vous sur les scans', NULL, 0, 10, 0),
(11, 'Tomes français', 'Exprimez-vous sur les épisodes sortis en France', NULL, 0, 11, 0),
(12, 'Vos idées', 'Proposez vos idées, elles seront peut-être réalisées', NULL, 0, 12, 0),
(13, 'Astuces & tactiques', 'Partagez vos astuces entre membres', NULL, 1, 13, 0),
(14, 'Bugs', 'Vous avez rencontré un bug ou une faille? Signalez-le ici!', NULL, 0, 14, 0),
(15, 'Pirate', 'Le forum privé des Pirates !', NULL, 1, 4, 0),
(16, 'Marine', 'Le forum privé des Marines', NULL, 1, 4, 0),
(17, 'Révolutionnaire', 'Le forum privé des Révolutionnaires', NULL, 1, 4, 0),
(50, 'Staffoula', 'Forum privé de l''équipage Staffoula', NULL, 0, 50, 1),
(51, 'Test', 'Forum privé de l''équipage Test', NULL, 0, 50, 1),
(52, 'dfdsfd', 'Forum privé de l''équipage dfdsfd', NULL, 0, 50, 1),
(53, 'dsfdgdfgf', 'Forum privé de l''équipage dsfdgdfgf', NULL, 0, 50, 1),
(54, 'Starfoula', 'Forum privé de l''équipage Starfoula', NULL, 0, 50, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `forums_topics`
--

INSERT INTO `forums_topics` (`id`, `name`, `is_block`, `id_forums_categories`, `id_forums_topics_types`) VALUES
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
(16, 'Todo', 0, 1, 1),
(17, 'Todo', 0, 1, 4),
(18, 'sdfsf', 0, 5, 1),
(19, 'sdfdsg', 0, 5, 1),
(20, 'sdfsdgfdfgfdgfd', 0, 5, 1),
(22, 'Todo', 0, 1, 1),
(52, 'Bienvenue sur votre forum', 0, 50, 1),
(53, 'Bienvenue sur votre forum', 0, 51, 1),
(54, 'Bienvenue sur votre forum', 0, 52, 1),
(55, 'Premier topic', 0, 16, 1),
(56, 'Bienvenue sur votre forum', 0, 53, 1),
(57, 'Bienvenue Pirate', 0, 15, 1),
(58, 'Bienvenue Révolutionnaire', 0, 17, 1),
(61, 'BDH n°1', 0, 8, 1),
(62, '[V2.5] Propositions des idées', 0, 5, 1),
(63, 'Bienvenue sur votre forum', 0, 54, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `forums_topics_messages`
--

INSERT INTO `forums_topics_messages` (`id`, `message`, `date_time`, `is_block`, `id_forums_topics`, `id_users`) VALUES
(3, 'Premier message', 1446207986, 0, 3, 13),
(4, 'Premier message', 1446207986, 0, 4, 13),
(5, 'Premier message', 1446207986, 0, 5, 13),
(6, 'Premier message', 1446207986, 0, 6, 13),
(7, 'Premier message', 1446207986, 0, 7, 13),
(8, 'Premier message', 1446207986, 0, 8, 13),
(9, 'Premier message', 1446207986, 0, 9, 13),
(10, 'Premier message', 1446207986, 0, 10, 13),
(11, 'Premier message', 1446207986, 0, 11, 13),
(12, 'Premier message', 1446207986, 0, 12, 13),
(13, 'Premier message', 1446207986, 0, 13, 13),
(14, 'Premier message', 1446207986, 0, 14, 13),
(15, 'Premier message', 1446207986, 0, 15, 13),
(39, '<p>test</p>\r\n', 1446941841, 0, 3, 13),
(40, '<p>test</p>\r\n', 1446989074, 0, 3, 1),
(42, '<p>TODO List (avant ouverture)<br />\r\n============================<br />\r\n<br />\r\nIndex : /home/accueil<br />\r\nNOK - Devrait &ecirc;tre juste le nom de domaine (/)<br />\r\nNOK - Manque du contenu dans dans le content<br />\r\nOK - boutons : &quot;connection&quot; &gt; &quot;connexion&quot; en fran&ccedil;ais<br />\r\nOK - Le debug est affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n<br />\r\nInscription : /users/create<br />\r\nOK - Div pseudo n&#39;est pas du bon style<br />\r\nNOK - Password : pas de test de faible/moyen/fort s&eacute;curis&eacute;<br />\r\nOK - Div email n&#39;est pas du bon style<br />\r\n<strong>NOK - Bug quand tu charges les cheveux (le corps disparais)</strong><br />\r\nNOK - Bug : on ne peut pas r&eacute;cup&eacute;rer les yeux par d&eacute;faut<br />\r\nOK - Il manque cruellement de diff&eacute;rence entre les styles<br />\r\nOK -&gt; Est-ce necessaire de cr&eacute;er son propre avatar ?<br />\r\nOK - Le debug est affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\nNOK - Le bouton est moche<br />\r\n<br />\r\nOK Error &agrave; la validation du formulaire d&#39;inscription :<br />\r\nOK Fatal error: Call to undefined function imagecreatetruecolor() in /var/www/onepiece/application/models/Users_model.php on line 217<br />\r\n<br />\r\nConnexion : /users/connect<br />\r\nOK - Div pseudo n&#39;est pas du bon style<br />\r\nOK - Il manque le lien &quot;j&#39;ai oubli&eacute; mon mdp&quot;<br />\r\nOK - Le debug est affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\nOK - Le bouton est moche<br />\r\n<br />\r\nNews : /<br />\r\nNOK - La sidebar est moche<br />\r\nOK - Dans la sidebar &quot;Accueil&quot; &gt; &quot;News&quot;<br />\r\nOK - Il faudrait nettoyer toute les news et commentaires<br />\r\nOK - La pagination manque d&#39;espace et de style<br />\r\nNOK - Les news devrait &ecirc;tre tronqu&eacute;es &agrave; 200 caract&egrave;res<br />\r\nNOK - Le nb comment doit &ecirc;tre affich&eacute; en fin de news<br />\r\nOK - Manque r&eacute;seaux sociaux en fin de news (avec nb partage)<br />\r\nOK - Il faudrait une bulle de notif sur des icones (comment, fb, twitter)<br />\r\nOK - Le debug est affich&eacute; (activ&eacute;)<br />\r\nOK - Le footer est vide<br />\r\n<br />\r\nSidebar :<br />\r\nOK - Fans/Fanart : pas de redirection<br />\r\nOK - Fans/Fanfics : pas de redirection<br />\r\nOK - Fans/Fanmovs : pas de redirection (n&eacute;cessaire?)<br />\r\nOK - Communaut&eacute;/Livre d&#39;or : pas de redirection<br />\r\nOK - Communaut&eacute;/Classement : pas de redirection<br />\r\nOK &gt; Faire une page de &quot;coming soon&quot;<br />\r\nNOK - MonCompte devrait avoir un dropdon avec messagerie/sac<br />\r\n<br />\r\nAnnuaire : /users<br />\r\nOK - Il y a trop d&#39;espace entre le titre et Le nombre de joueur inscrits<br />\r\nOK - Il manque les zones de filtres (coming soon?)<br />\r\nNOK - Les id n&#39;ont rien &agrave; faire ici<br />\r\nOK - Le d&eacute;bug est affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\nOK - Le footer est vide<br />\r\n<br />\r\nProfils public : /users/view/10<br />\r\nOK - L&#39;avatar ne s&#39;affiche pas<br />\r\n<strong>NOK - Envoyer un message devrait &ecirc;tre un icon</strong><br />\r\nOK - Le debug est affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\nOK - Le footer est vide<br />\r\n<br />\r\nListe connect&eacute;s : /users/liste<br />\r\nNOK - Faute de fran&ccedil;ais au lieu d&#39;anglais dans le nom<br />\r\nOK - Error : Table &#39;onepiecev3.sessions&#39; doesn&#39;t exist<br />\r\n<br />\r\nFAQ : /forum/t/21<br />\r\nNOK - Devrait &ecirc;tre une page ind&eacute;pendante et pas un topic<br />\r\nNOK &gt; Refaire<br />\r\n<br />\r\nStaff : /users/staff<br />\r\nOK - L&#39;affichage est d&eacute;gueulasse :p<br />\r\nOK - Le footer est vide<br />\r\nOK - Le debug est affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n<br />\r\nForum : /forum<br />\r\n- La mosa&iuml;que est inutile : les cat&eacute;gories doivent prendre la longueur<br />\r\n- Il y a trop de cat&eacute;gories :<br />\r\n&gt; Messages officiel : ok<br />\r\n&gt; G&eacute;n&eacute;ral : ok<br />\r\n&gt; Pr&eacute;sentation membre : &agrave; supprimer<br />\r\n&gt; Aides : pas sur de l&#39;utilit&eacute;<br />\r\n&gt; Rumeurs : &agrave; supprimer<br />\r\n&gt; Diplomatie inter-&eacute;quipage : inutile actuellement<br />\r\n&gt; Animation : pourquoi pas<br />\r\n&gt; Commerce : &agrave; supprimer<br />\r\n&gt; Discussions scan : &agrave; supprimer<br />\r\n&gt; Tomes fran&ccedil;ais : &agrave; supprimer<br />\r\n&gt; Vos id&eacute;es : -&gt; Boite &agrave; id&eacute;e<br />\r\n&gt; Astuces et tactiques : &agrave; supprimer<br />\r\n&gt; Bugs : &agrave; supprimer pour le support<br />\r\n&gt; Hello Worlds : &agrave; supprimer<br />\r\n- Par cat&eacute;gorie : revoir l&#39;affichage du dernier message<br />\r\n- Pas n&eacute;cessaire d&#39;afficher le dernier topics comment&eacute; dans les cat&eacute;gories (DUM : Pas d&#39;accord)<br />\r\n- Debug affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n- Footer vide<br />\r\n<br />\r\nTopics : /forum/c/5<br />\r\n- Route &agrave; revoir<br />\r\n- Le bouton de retour est inutile<br />\r\n- Le bouton de cr&eacute;ation de topic est d&eacute;gueulasse : faire un icon<br />\r\n<br />\r\nNouveau topic : /forum/create_topic<br />\r\n- Il y a trop d&#39;option de mise en forme pour le message<br />\r\n- Le bouton est moche<br />\r\n- debug affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n- Footer vide<br />\r\n<br />\r\nAffichage d&#39;un topic : /forum/t/27<br />\r\n- Le bouton &quot;nouveau topic dans cette cat&eacute;gorie&quot; : inutile<br />\r\n- Le bouton &quot;r&eacute;pondre&quot; devrait &ecirc;tre un icon<br />\r\n- Il n&#39;y a pas la possibilit&eacute; d&#39;avoir d&#39;ancre pour un message<br />\r\n- Footer vide<br />\r\n- debug affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n<br />\r\nR&eacute;ponse &agrave; un topic : /forum/answer<br />\r\n- On devrait pas pouvoir citer plus d&#39;une citation<br />\r\n<strong>- Les edit se cumulent, devraient &ecirc;tre ind&eacute;pendants du corps des messages</strong><br />\r\n- Footer vide<br />\r\n- debug affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n<br />\r\nTchat : /tchat<br />\r\n<strong>- Navigation entre les tchats par onglet c&#39;ets mieux</strong><br />\r\n- Tchat : Commerce &gt; &agrave; supprimer<br />\r\n- Description des tchats &agrave; faire<br />\r\n<strong>- Les avatars s&#39;&eacute;crasent en responsive</strong><br />\r\n- J&#39;ai horreur des smiley (mais c&#39;est personnel)<br />\r\n- Footer vide<br />\r\n- debug affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n<br />\r\nQuitter un &eacute;quipage : /crews/leave<br />\r\n- Probl&egrave;me d&#39;affichage de div<br />\r\n- Footer vide<br />\r\n- debug affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n<br />\r\nDissoudre un &eacute;quipage : /...<br />\r\n- Il faudrait une confirmation<br />\r\n<br />\r\nEquipage : /crews/index<br />\r\n- Pas n&eacute;cessaire de pointer sur &quot;index&quot; dans le route<br />\r\n- Le h1 est trop long<br />\r\n<strong>- Manque d&#39;ergonomie dans la page<br />\r\n- Peut-&ecirc;tre qu&#39;afficher ses candidatures en attente sur la page principale serait bien ?</strong><br />\r\n<br />\r\nEquipage Liste : /crews/liste<br />\r\n- Faute de fran&ccedil;ais dans la route<br />\r\n- Pr&eacute;voir une pagination !<br />\r\n<strong>- Afficher le nom de l&#39;&eacute;quipage, le drapeau et le d&eacute;but de sa description</strong><br />\r\n<br />\r\nEquipage Profil : /crews/view/54<br />\r\n- Les berry sont propres &agrave; l&#39;&eacute;quipage pas la peine de les montrer<br />\r\n- Rejoindre un &eacute;quipage devrait se faire par bouton icon<br />\r\n<br />\r\nEquipage candidature : /crews/c/54<br />\r\n- Tu devrais rapeller le nom de l&#39;&eacute;quipage ou tu postules en h1 (Candid: Starfoul)<br />\r\n- Bouton envoyer d&eacute;gueulasse<br />\r\n- Pas de confirmation lors de l&#39;envoi et on reste bloqu&eacute; sur la page<br />\r\n<br />\r\nEquipage Accueil du sien : /crews/index<br />\r\n- Liste des candid &gt; par bouton icon<br />\r\n- Modifier text &gt; par bouton icon<br />\r\n- G&eacute;rer rang membres &gt; par bouton icon<br />\r\n- &quot;Donner le lead&quot; &agrave; retirer<br />\r\n- Forum &gt; par bouton icon<br />\r\n- Quitter &eacute;quipage &gt; par bouton icon<br />\r\n<br />\r\nMonCompte : /account<br />\r\n- Navigation par icon + text serait mieux<br />\r\n<br />\r\nMessagerie : /messaging<br />\r\n- Re&ccedil;us/Envois pas au m&ecirc;me niveau que la page de mon compte<br />\r\n- Ergonomie &agrave; revoir<br />\r\n- Nouveau / Supprimer / R&eacute;pondre : par bouton icon<br />\r\n- Il faudrait que les messages avec la m&ecirc;me personne soit sur un m&ecirc;me &quot;flux&quot;<br />\r\n- Quand on veut &quot;tout supprimer&quot;, passer par une confirmation<br />\r\n<br />\r\nMessagerie r&eacute;ponse : /messaging/write/...<br />\r\n- On devrait pouvoir &eacute;crire par d&eacute;faut au dessus de la citation<br />\r\n- Bouton d&#39;envoi d&eacute;gueulasse<br />\r\n<br />\r\n<br />\r\nTODO Dev<br />\r\n============================<br />\r\n<br />\r\nRenommer /users/list -&gt; /users/connected<br />\r\nRenommer /users/index -&gt; /users/directory</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&Eacute;dit&eacute; par Dumbeldor le 08/11/2015 &agrave; 00h43</em></p>\r\n', 1446989722, 0, 22, 1),
(46, 'Votre forum privé vien d''être mis en ligne.\r\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\r\n						  Bon jeu.', 1446991689, 0, 52, 13),
(48, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447258570, 0, 54, 13),
(49, 'Premier message du forum des marines !', 5487412, 0, 55, 13),
(53, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447263925, 0, 56, 13),
(54, '<p>dfd</p>\r\n', 1447263940, 0, 56, 46),
(55, 'Bienvenue dans votre forum privé noble pirate !', 5487412, 0, 57, 13),
(56, 'Bienvenue dans le forum privé des révolutionnaire !<br>\r\nBon jeu !', 5487412, 0, 58, 13),
(57, '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href="http://img11.hostingpics.net/pics/552854BDH.png"><img alt="" src="http://img11.hostingpics.net/pics/552854BDH.png" style="height:300px; width:700px" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Bonjour et bienvenu dans le BDH &eacute;dition Duo gagnant n&deg;1 !</strong></tt></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p><tt>Quel est donc le BDH ? Le BDH est un tournoi opposant des &eacute;quipes de combattants dans des combats &agrave; mort!</tt></p>\r\n\r\n<p><tt>Comment ce d&eacute;roulerons les combats ? Quels sont les r&egrave;gles ? Comment formez une &eacute;quipe ?</tt></p>\r\n\r\n<p><tt>Ne vous affolez pas, je vais vous expliquez en d&eacute;tail le d&eacute;roulement de cette animation ainsi que les r&egrave;gles &agrave; suivre pour participer.</tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt>Le BDH &eacute;dition Duo est un tournoi ou s&#39;affrontent des &eacute;quipes de 2 combattants, chaque joueurs peut choisir jusqu&#39;&agrave; 4 combattant pour les repr&eacute;senter.</tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><tt><span style="color:#FF0000">- Les personnages choisit doivent &ecirc;tre tir&eacute; d&#39;un univers &quot;manga&quot; ou &quot;anim&eacute;&quot; dans la limite du raisonnable. (pas de hentai)</span></tt></strong></p>\r\n\r\n<p><strong><tt><span style="color:#FF0000">- Les joueurs doivent cr&eacute;e eux-m&ecirc;me l&#39;avatar qui repr&eacute;sentera leur personnage ou me donner assez de renseignements pour pouvoir le cr&eacute;e.</span></tt></strong></p>\r\n\r\n<p><strong><span style="color:#FF0000"><tt>- Pas de double compte et je vous demande de voter pour le personnage et non pour le joueur en question</tt>.&nbsp;<img alt="cool" src="http://dev.minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/shades_smile.png" style="height:23px; width:23px" title="cool" /></span></strong></p>\r\n\r\n<p><strong><span style="color:#FF0000"><tt>- La triche est autoris&eacute; seulement pour me faire gagner!</tt>&nbsp;<img alt="yes" src="http://dev.minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" /></span></strong></p>\r\n\r\n<p><strong><span style="color:#FF0000"><tt>- La taille pour l&#39;avatar est de 125x250 merci de respecter les dimensions.</tt></span></strong></p>\r\n\r\n<p><strong><tt><span style="color:#FF0000">- Impossible de choisir un personnage d&eacute;j&agrave; attribu&eacute; &agrave; un autre joueur.</span></tt></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<img src="http://img15.hostingpics.net/pics/386215Kakashi2.png" />&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;<strong> L&#39;&eacute;quipe du <span style="color:#FF0000">br&ucirc;lant </span>et de <span style="color:#FFD700">l&#39;&eacute;lectrique&nbsp;</span>!&nbsp;&nbsp;</strong>&nbsp; &nbsp; &nbsp; &nbsp;<img src="http://img15.hostingpics.net/pics/529614Roy5.png" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; <img src="http://img15.hostingpics.net/pics/199310Sasuke.png" />&nbsp;&nbsp; &nbsp; &nbsp;<strong>&nbsp; &nbsp;L&#39;&eacute;quipe Om&eacute;ga Blazer!</strong>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src="http://img15.hostingpics.net/pics/786265Vegeta.png" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt>Voici mes deux &eacute;quipes, l&#39;une est compos&eacute; de <strong>Kakashi et Roy</strong>, l&#39;autre de <strong>Sasuke&nbsp;et Vegeta</strong>!</tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><tt><span style="color:#000000">Les inscriptions sont ouverte pour une dur&eacute;e approximative d&#39;une semaine.</span></tt></strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><span style="font-size:8px">&Eacute;dit&eacute; par Riyuma le 11/11/2015 &agrave; 08h24</span></em></p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447265560, 0, 61, 1),
(58, '<blockquote>\r\n<pre>\r\n<span style="color:#000000"><strong><span class="marker"><span style="background-color:#FFFF00">Suite &agrave; la fermeture de la V2 (minegame) Dumbeldor a \r\ntout de m&ecirc;me propos&eacute; une re-cr&eacute;ation du topic d&#39;Enelos\r\n concernant les id&eacute;es et futurs modifications qui seront \r\napport&eacute; &agrave; la mise &agrave; jours de One Piece Rpg (V2.5)</span></span>\r\n\r\n<span class="marker"><span style="background-color:#FFFF00">Je vous repr&eacute;sente donc le topic comme je peux, \r\nen esp&eacute;rant n&#39;avoir oublier aucune id&eacute;e \r\nqui avait &eacute;t&eacute; &eacute;mis sur Minegame (V2).</span></span></strong></span></pre>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="color:#000000"><tt>Bon, je pense qu&#39;on a laiss&eacute; le topic sur la proposition assez longtemps pour voir que globalement vous &eacute;tiez pour une raz et une am&eacute;lioration de la V2. </tt></span></p>\r\n\r\n<p><span style="color:#000000"><tt>Ce topic va cette fois-ci servir &agrave; proposer vos id&eacute;es. Mais les choses doivent se faire de la mani&egrave;re la plus propre et ordonn&eacute;e possible.&nbsp;</tt></span></p>\r\n\r\n<p><tt><span style="color:#000000">Tout d&#39;abord nous allons nous concentrer sur </span><strong><span style="color:#FF8C00">les id&eacute;es r&eacute;alisables &agrave; court terme.</span></strong></tt></p>\r\n\r\n<p><span style="color:#000000"><tt>Par court terme j&#39;entends par l&agrave;, les id&eacute;es que l&#39;on peut r&eacute;aliser tr&egrave;s rapidement, dans l&#39;imm&eacute;diat ou disons en 1 semaine ou 2 maximum.</tt></span></p>\r\n\r\n<p><span style="color:#000000"><tt>Un autre topic sera cr&eacute;e une fois la V2.5 ouverte, pour les id&eacute;es &agrave; long terme et &agrave; court terme si vous en avez d&#39;autres, mais pour l&#39;instant restons concentr&eacute;s sur les id&eacute;es &agrave; court terme.</tt></span></p>\r\n\r\n<p><span style="color:#000000"><tt>Comme je l&#39;ai pr&eacute;cis&eacute; au-dessus, tout doit &ecirc;tre fait de mani&egrave;re ordonn&eacute;e, et vous devez suivre le sch&eacute;ma suivant :</tt></span></p>\r\n\r\n<p><strong><tt><span style="color:#008000">- Localisation : Vous devez indiquer ou votre id&eacute;e doit &ecirc;tre modifi&eacute;e. Cela nous permet de nous rendre compte de chaque &eacute;l&eacute;ment qui pourrait &ecirc;tre &agrave; modifier dans l&#39;id&eacute;e.</span></tt></strong></p>\r\n\r\n<p><strong><tt><span style="color:#008000">- Id&eacute;e : L&agrave; c&#39;est le moment o&ugrave; vous devez expliquer votre id&eacute;e, essayez d&#39;&ecirc;tre le plus clair possible. Ne faites pas 20 lignes si vous pouvez en faire 2, mais soyez clairs. Cette partie ne concerne que l&#39;id&eacute;e, et non pas pourquoi cette id&eacute;e doit &ecirc;tre accept&eacute;e.</span></tt></strong></p>\r\n\r\n<p><strong><tt><span style="color:#008000">- Autre(facultatif) : Tout ce que vous pouvez dire de plus qui ne concerne pas l&#39;id&eacute;e en elle-m&ecirc;me, mais qui y est li&eacute; comme des arguments pour faire valider votre id&eacute;e par exemple.</span></tt></strong></p>\r\n\r\n<p><strong><span style="color:#000000"><tt>Je ne vais pas non plus vous demander 50 000 informations, je pense que &ccedil;a reste assez clair comme &ccedil;a, je vais vous donne un exemple histoire de bien vous montrer la marche &agrave; suivre :</tt></span></strong></p>\r\n\r\n<p><br />\r\n<tt><em>- Localisation : Sur les &icirc;les, chez tous les marchands</em></tt></p>\r\n\r\n<p><tt><em>- Id&eacute;e : Changer les prix des objets et potions</em></tt></p>\r\n\r\n<p><tt><em>- Autre : Les prix sont trop chers par rapport &agrave; ce que l&#39;on gagne, et par rapport au prix de vente constat&eacute; &agrave; Jaya.</em></tt></p>\r\n\r\n<p><br />\r\n<tt>Voil&agrave; un exemple tout b&ecirc;te de modification.</tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong><span style="color:#FF0000"><em><ins>La V2 sur onepiece-rpg.fr n&#39;est pas encore ouverte</ins>, et nous ne pouvons l&#39;ouvrir actuellement &eacute;tant donn&eacute; que nous travaillons dessus. Utilisez donc la V3 communautaire&nbsp;sur minegame.fr si vous avez besoin d&#39;utiliser une base concernant vos id&eacute;es.</em></span></strong></tt></p>\r\n\r\n<p><tt><strong><span style="color:#FF0000"><em>Ce topic n&#39;est pas l&agrave; pour donner vos avis sur les id&eacute;es propos&eacute;es, sinon le topic risque de se diriger dans tous les sens, donc pour la moindre question ou si vous voulez parler de certaines id&eacute;es, vous pouvez cr&eacute;er un nouveau topic pour tous. Ca fait encore un topic en plus, mais &ccedil;a restera je pense plus clair.</em></span></strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><span style="font-size:8px">&Eacute;dit&eacute; par Riyuma le 09/11/2015 &agrave; 12h01</span></em></p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447265651, 0, 62, 1),
(59, '<p>&nbsp;</p>\r\n\r\n<div style="background:#eee; border:1px solid #ccc; padding:5px 10px"><tt><span style="color:#000000">Id&eacute;es Riyuma</span></tt></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><tt><strong>Mettre en place le Design qu</strong></tt><tt><strong>&#39;avais fait Gekko en maquette. (il convient &agrave; une V2)</strong></tt></li>\r\n	<li><tt><strong>Modifier les troph&eacute;es, Suzuran a normalement tout cr&eacute;e pour pouvoir en profiter.</strong></tt></li>\r\n	<li><tt><strong>Changer quelques d&eacute;fis, en rajouter et en supprimer quelques-uns.</strong></tt></li>\r\n	<li><tt><strong>Remettre la chasse actuel bien meilleur que l&#39;ancienne.</strong></tt></li>\r\n	<li><tt><strong>R&eacute;-activer le changement de ratio.</strong></tt></li>\r\n	<li><tt><strong>Ouverture de l&#39;&eacute;quipage des r&eacute;volutionnaires.&nbsp;</strong></tt></li>\r\n	<li><tt><strong>Ajouter 1 GE par &icirc;le dont 2 marrons (Smiley &amp; Hannyabal) + Modification des tactiques.</strong></tt></li>\r\n	<li><tt><strong>Modification des comp&eacute;tences, ajout des comp&eacute;tences &quot;Malus&quot; : Le joueurs gagne 20% de pv mais</strong></tt>&nbsp;<tt><strong>perd 20% de force etc... j&#39;peux faire un tableau.</strong></tt></li>\r\n	<li><tt><strong>Si Suzuran a effectuer un travail sur les CPU/&icirc;les en couleur ils faut les int&eacute;grer au jeu.</strong></tt></li>\r\n	<li><tt><strong>Une nouvelle DDM plus &quot;attractive&quot; ?</strong></tt></li>\r\n	<li><tt><strong>Un seul et m&ecirc;me serveur</strong></tt></li>\r\n	<li><tt><strong>Envoi de popo en masse (au lieu de une par une)</strong></tt></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Localit&eacute; : Oprpg /o/ , &eacute;quipage<br />\r\n<br />\r\nId&eacute;e : Que le capitaine puisse emprunter de l&#39;argent &agrave; une banque, pour dire de pouvoir avoir quelques places, la somme arrive directement dans le tr&eacute;sor et dois &ecirc;tre rembourser sinon l&#39;&eacute;quipage subit un malus de point<br />\r\n<br />\r\nAutre : J&#39;aime les chats, si &ccedil;a peut t&#39;aider :*</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Localit&eacute; : Mon compte&nbsp;<br />\r\n<br />\r\nId&eacute;e : Envoyer des potions et des objets de forge en masse</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Localit&eacute; : DDM<br />\r\n<br />\r\nId&eacute;e : Chaque &eacute;quipage choisit un h&eacute;ros &agrave; la cr&eacute;ation de celui-ci entre 7 personnages, plus l&#39;&eacute;quipage prend de l&#39;exp plus l&#39;h&eacute;ros monte de level.<br />\r\nUne fois une &icirc;le capturer le h&eacute;ros ce pose sur l&#39;&icirc;le, au d&eacute;but il est pas super fort mais impossible &agrave; g&eacute;rer seul. Si le h&eacute;ros ce trouve en difficult&eacute; il mp automatiquement tous les membres connect&eacute; de l&#39;&eacute;quipage genre &quot;On m&#39;attaque, je demande de l&#39;aide&quot;.<br />\r\nCe h&eacute;ros est modifiable par le capitaine, on peut soit lui donner de la vitalit&eacute; soit de la puissance.<br />\r\nLe m&eacute;decin peut soigner le h&eacute;ros mais seulement lui.<br />\r\n<br />\r\nAutre : Dans le futur, pourquoi pas propos&eacute; une &eacute;volution pour le h&eacute;ros comme passer d&#39;un h&eacute;ros Zoro &agrave; un h&eacute;ros Mihawk&nbsp;</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Localisation : partout partout :$<br />\r\n<br />\r\nId&eacute;e : Qu&#39;on puisse tomber sur un cpu &quot;or&quot; quand on pex, celui-ci sera plus dur &agrave; affronter mais on peut lui donner des gains/drop sup&eacute;rieur au reste selon sa raret&eacute;.</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Localisation : D&eacute;fis<br />\r\n<br />\r\nPremier classement kills : Le personnage Z&eacute;phir<br />\r\nAvoir &eacute;t&eacute; connect&eacute; 14 jours d&#39;affil&eacute; : Titre &quot;Sqouatteur&quot;<br />\r\nTrouver le costume de Moria dans un &quot;cadeau sombre&quot; : Moria<br />\r\n(On ne peut drop des cadeaux sombre que sur les GE de Thriller Bark et FT)<br />\r\nPareil pour Perona , Ryuma et OZ, d&eacute;blocable seulement gr&acirc;ce aux cadeaux sombre. (le classement : Perona &gt; Ryuma &gt; Moria &gt; Oz)<br />\r\nAvoir vaincu 50 Ace en ar&egrave;ne : personnage Barbe noire&nbsp;<br />\r\nAvoir effectuer 30 allopass : personnage Banquier&nbsp;<br />\r\nAvoir changer de personnage 50 fois : Mr2<br />\r\n<br />\r\nJ&#39;peux en faire encore mais bon faut voir les &quot;int&eacute;ressant&quot;&nbsp;</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="background:#eee; border:1px solid #ccc; padding:5px 10px"><tt>Id&eacute;es Benevolar<em>&nbsp;</em></tt></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>localit&eacute; : Little Garden<br />\r\n<br />\r\nid&eacute;e : proposer chaque jour un familier al&eacute;atoire qui sera vendu plus cher au g&eacute;ant.<br />\r\n<br />\r\nautre : g&eacute;n&eacute;ralement soit on vend tout soit on fait une collection, &ccedil;a serait bien pour donner un peu plus d&#39;int&eacute;r&ecirc;t &agrave; la chasse</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>localit&eacute; : Wiskey Peak<br />\r\n<br />\r\nid&eacute;e : modifier les formules qui permettent de cuisiner (quitte &agrave; rajouter de nouveaux ingr&eacute;dients tel que des familiers ou modifier le taux de drop de certains)<br />\r\n<br />\r\nautre : Actuellement cuisiner c&#39;est de l&#39;arnaque &agrave; part pour les jambons et encore les pollenargent sont super rare.</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Localit&eacute; : pex<br />\r\n<br />\r\nid&eacute;e : faire en sorte qu&#39;on puisse se battre &agrave; la fois sur l&#39;&icirc;le de notre niveau mais aussi sur les &icirc;les pr&eacute;c&eacute;dentes (avec un gain d&#39;exp inf&eacute;rieur) et faire en sorte que chaque &icirc;le ait son lot d&#39;objet &agrave; drop.<br />\r\n<br />\r\nautre : j&#39;ai pas mis les pieds &agrave; Water Seven depuis des lustres.</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Un pi&egrave;ge pourra &ecirc;tre plac&eacute; sur une des cases de la grille. Si un animal passe dessus il peut &ecirc;tre captur&eacute; (plusieurs types de pi&egrave;ge pour plusieurs couleur de familier). Il y aura un nombre de pi&egrave;ge max &agrave; placer sur la grille qui varie en fonction de notre niveau de p&ecirc;che/chasse (une nouvelle barre qui se remplie avec la capture de familier). Au bout de X niveaux de p&ecirc;che on d&eacute;bloque des pi&egrave;ges de niveau sup&eacute;rieur et des app&acirc;ts (&ccedil;a renforce les chances que l&#39;animal se d&eacute;place dans notre direction ou celui du pi&egrave;ge si on d&eacute;cide de combiner pi&egrave;ge + app&acirc;t)</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="background:#eee; border:1px solid #ccc; padding:5px 10px"><tt>Id&eacute;es des autres joueurs<strong> </strong></tt></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Localit&eacute; : Section &eacute;quipage, toutes les iles<br />\r\n<br />\r\nId&eacute;e : Donn&eacute; un sens au place dans l&#39;&eacute;quipage exemple: chasseur, lorsqu&#39;il attrape un animal cela donne des points a son &eacute;quipage<br />\r\nm&eacute;decin, peut faire boire directement une popo a son camarade<br />\r\ncharpentier, peut faire construire un bateau avec l&#39;accord de son capitaine<br />\r\n...<br />\r\n<br />\r\nAutre : Ce serait pas mal si, en tant que capitaine, ont pourrait &quot;mute&quot; certaine personne sur la salle 1.?</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Localit&eacute;: Ar&egrave;ne de GOA<br />\r\n<br />\r\nId&eacute;e: Mon id&eacute;e mes venu comme &ccedil;a. Dans l&#39;ar&egrave;ne de Goa, c&#39;est bien en &eacute;quipage, mais &agrave; la fin de l&#39;ar&egrave;ne,il ne se passe rien au niveau des points d&#39;&eacute;quipage.<br />\r\nDonc j&#39;ai penser aux nombres de survivants du m&ecirc;me &eacute;quipage pourraient donner les points &agrave; l&#39;&eacute;quipage. Par exemple, il reste 10 membres de l&#39;&eacute;quipage &agrave; la fin de l&#39;ar&egrave;ne, cela va donc donner 10 points &agrave; l&#39;&eacute;quipage.J&#39;esp&egrave;re avoir &eacute;t&eacute; assez clair.<br />\r\n<br />\r\n<br />\r\nLocalit&eacute;: Pex (et peut &ecirc;tre Mon compte)<br />\r\n<br />\r\nId&eacute;e: A chaque fois qu&#39;on utilise une attaque elle gagne de &quot;l&#39;exp&eacute;rience&quot; et quand elle en a gagn&eacute; assez on d&eacute;bloque l&#39;attaque suivante plus forte de la m&ecirc;me cat&eacute;gorie (avant on les d&eacute;bloquait en montant de niveau et c&#39;&eacute;tait fixe) la barre de progression serait soit en pex soit dans les r&eacute;putations<br />\r\n<br />\r\n(Peut &ecirc;tre aussi appliqu&eacute; en JcJ et en Ge)<br />\r\n<br />\r\n<br />\r\nLocalit&eacute; : &Eacute;quipage<br />\r\n<br />\r\nId&eacute;e : Nous pr&eacute;venir quand quelqu&#39;un quitte l&#39;&eacute;quipage pour &eacute;viter de chercher :/<br />\r\n<br />\r\nAutre : Juste comme &ccedil;a...</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong><strong>Localisation&nbsp;: Sur une &icirc;le , je verrais bien Sabaody (Ou Skipiea pour que &ccedil;a soit accessible &agrave; plus de monde)<br />\r\n<br />\r\nId&eacute;e&nbsp;: L&#39;id&eacute;e &ccedil;a serait tout simplement qu&#39;un PNJ propose des qu&ecirc;tes/missions r&eacute;guli&egrave;rement, genre 1 fois par semaine avec un certain degr&eacute; de difficult&eacute;s. Puis selon la difficult&eacute; les r&eacute;compenses seront diff&eacute;rentes (Personnage,berrys,objets etc...)<br />\r\n<br />\r\n<em>Exemple de missions :</em>&nbsp;<br />\r\n- Faire X prime en X temps<br />\r\n- Chasser X fois un familier&nbsp;<br />\r\n- Faire X Kill en X temps<br />\r\n- Ramener X objets/Ingr&eacute;dients au PNJ<br />\r\n<br />\r\nAutre&nbsp;: Il me semble qu&#39;une personne avait d&eacute;j&agrave; propos&eacute; une id&eacute;e similaire il y a quelque temps qui avait &eacute;t&eacute; laisser &agrave; l&#39;abandon.</strong></strong></tt><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><span style="font-size:8px">&Eacute;dit&eacute; par Riyuma le 09/11/2015 &agrave; 12h48</span></em></p>\r\n\r\n<p>&nbsp;</p>\r\n', 1447265671, 0, 62, 1),
(60, 'Votre forum privé vien d''être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\n						  Bon jeu.', 1447265735, 0, 63, 13),
(61, '<p>test</p>\r\n', 1447265744, 0, 63, 1),
(63, '<p>test</p>\r\n', 1447265998, 0, 53, 34),
(65, '<p>sdfsdf</p>\r\n', 1447266011, 0, 53, 34);

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `news`
--

INSERT INTO `news` (`id`, `title`, `date_time`, `message`, `is_block`, `id_users`) VALUES
(19, 'Première news', 1446979552, '<p>Salut,</p>\r\n\r\n<p>Une petite news pour dire que la v3 ouvre bient&ocirc;t sur minegame.fr.<br />\r\nC&#39;est pas la v3 &quot;officiel&quot; de oprpg, mais c&#39;est pas gr&acirc;ve...</p>\r\n\r\n<p>Bonne journ&eacute;e.</p>\r\n', 0, 13);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `last_connection` int(15) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `is_kick` tinyint(1) NOT NULL,
  `messNumber` int(11) NOT NULL,
  `lvl` int(5) NOT NULL,
  `berry` int(20) NOT NULL DEFAULT '0',
  `avatar` text NOT NULL,
  `id_objects` int(11) NOT NULL,
  `id_users_types` int(11) NOT NULL,
  `id_crews_candidacy` int(11) NOT NULL,
  `id_lost_pass` int(10) NOT NULL,
  `id_faction` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `ban`, `pseudo`, `email`, `birthday`, `sexe`, `password`, `registration`, `last_connection`, `ip`, `is_kick`, `messNumber`, `lvl`, `berry`, `avatar`, `id_objects`, `id_users_types`, `id_crews_candidacy`, `id_lost_pass`, `id_faction`) VALUES
(1, 0, 'Dumbeldor', 'vincentglize@hotmail.fr', '0000-00-00', NULL, '$2y$10$IEa/yx86U2McxcjbOvFztO42KXsfCCySz75rnHc7.MbejHj6ZPOJ6', 1433827274, 1447260957, '', 0, 109, 0, 0, '', 1, 24, 0, 0, 2),
(2, 0, 'Sumo', 'sumo@sumo.fr', '0000-00-00', NULL, '$2y$10$bf6tS8IrhdG9AtfIsllc/OGROZK0Sj6NYdcP05Aos/Kk4eq/acp2m', 1446927274, 1446927274, '', 0, 0, 0, 0, '', 1, 21, 0, 0, 2),
(13, 0, 'Pandaman', 'lebg@lebg.fr', '0000-00-00', NULL, '$2y$10$IEa/yx86U2McxcjbOvFztO42KXsfCCySz75rnHc7.MbejHj6ZPOJ6', 1433827274, 1446979447, '', 0, -1, 0, 0, '', 1, 1, 0, 0, 1),
(34, 0, 'Vincent', 'omagad@gmail.fr', '0000-00-00', NULL, '$2y$10$IEa/yx86U2McxcjbOvFztO42KXsfCCySz75rnHc7.MbejHj6ZPOJ6', 1446927274, 1447265989, '', 0, 3, 0, 0, '', 1, 2, 0, 0, 1),
(35, 0, 'sdfjksdohlgdfuih', 'tejfsddsf@fgdgd.fr', '0000-00-00', NULL, '$2y$10$8c.YhZXuReJMPZ37ySLpquPPUCg4FjfQg.FT8yoYrUib/UVs21fWa', 1447099507, 0, '', 0, 0, 1, 0, '', 1, 1, 0, 0, 1),
(36, 0, 'sdfjksdohlgdfuihqsdqs', 'tejfsdfddsf@fgdgd.fr', '0000-00-00', NULL, '$2y$10$4dlo7XNHyRpH.Osz14ik.Oz8F7IWPHdeeklGv.mWZSf7uB608Si3K', 1447099710, 0, '', 0, 0, 1, 0, '', 1, 1, 0, 0, 1),
(37, 0, 'sdfjksdohlgdfuihqsdqssfds', 'tejfssdfsdfddsf@fgdgd.fr', '0000-00-00', NULL, '$2y$10$tFrjCWvZ53LJt5u8h..s..2GG5c3J3sJBl7ZfeRIAjs/y.lfbMo6e', 1447099795, 0, '', 0, 0, 1, 0, '', 1, 1, 0, 0, 1),
(38, 0, 'sdfjksdohlgdfuisdfhqsdqss', 'fdfsdfsd@sdfds.fr', '0000-00-00', NULL, '$2y$10$9VjnItjRVBx5VwbVuT9xiuTr0DkJXG9ETnaeEdvJ.kKgnoYuUS3Gy', 1447099827, 0, '', 0, 0, 1, 0, '', 1, 1, 0, 0, 1),
(39, 0, 'sdfjksdohlgdfsdfuisdfhqsd', 'dsfds@dsfds.fr', '0000-00-00', NULL, '$2y$10$UZf5Y2IC51.jSOTk.fk36OsCOH7C9mS79o/t7u1I1b3ahjwC4l2OK', 1447100076, 0, '', 0, 0, 1, 0, '', 1, 1, 0, 0, 1),
(40, 0, 'sdfsdfsgfd', 'sdfds@dsfdsqws.fr', '0000-00-00', NULL, '$2y$10$TlXHZeqIFzTRFZSy4QU3RuoZl5kbeClOpt0LTlBfocVXPqyuZ..Ui', 1447100123, 0, '', 0, 0, 1, 0, '', 1, 1, 0, 0, 1),
(42, 0, 'sdfsdfsgfdfds', 'fdgf@ds.fr', '0000-00-00', NULL, '$2y$10$cKukJAUjzayD0eOqzo5ch.V6507u7Da58eIVoXvM0gP5RjqaPOqQy', 1447100204, 0, '', 0, 0, 1, 0, '{"sexe":"Homme","body":"assets\\/img\\/avatars\\/man\\/body\\/2.png","eyes":"assets\\/img\\/avatars\\/man\\/eyes\\/11.png","mouths":"assets\\/img\\/avatars\\/mouths\\/5.png","hair":"assets\\/img\\/avatars\\/man\\/hair\\/rouge\\/11.png"}', 1, 1, 0, 0, 1),
(43, 0, 'sdfdsfdgf', 'fdgdfgf@dfss.fr', '0000-00-00', NULL, '$2y$10$U/WMznn5yy0xfozMCXX2k.NW.QFAY/2Mcl1e7kWsgEVva7dyPE04e', 1447100683, 0, '', 0, 0, 1, 0, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/11.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/5.png";s:4:"hair";s:41:"assets/img/avatars/man/hair/marron/13.png";}', 1, 1, 0, 0, 1),
(44, 0, 'dsfsfsd', 'fdgdgf@fdsfd.fr', '0000-00-00', NULL, '$2y$10$QY9WUjssLf3h/tpHAu0MMOoutE81NBKKtivKkjcQZQAZ3oc4UVkV2', 1447252062, 0, '', 0, 0, 1, 0, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/0.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/0.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/0.png";s:4:"hair";s:35:"assets/img/avatars/man/hair/0/0.png";}', 1, 1, 0, 0, 1),
(45, 0, 'sdfsd', 'fdsgfg@sqjskd.fr', '0000-00-00', NULL, '$2y$10$m/anD3Qg78plpEE6nEODhObXHiQJloM2llYGJBVHsf5EpkY5mvrpS', 1447252297, 0, '', 0, 0, 1, 0, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/11.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:35:"assets/img/avatars/man/hair/0/2.png";}', 1, 1, 0, 0, 1),
(46, 0, 'retest', 'sdfdsgfg@Kdslfd.fr', '0000-00-00', NULL, '$2y$10$rIEanCTG9ZrIkwCRDJic.e0rFwonXqFxqT8672mqG8lUBuKTha3Ym', 1447255827, 1447265098, '', 0, 0, 1, 100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:33:"assets/img/avatars/man/eyes/3.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/7.png";s:4:"hair";s:35:"assets/img/avatars/man/hair/0/3.png";}', 1, 1, 0, 0, 2),
(48, 0, 'aaa', 'fdsgdsgf@xn--gskfd-msa.fr', '0000-00-00', NULL, '$2y$10$gLZqV/lmqPJdVUkTikJ.d.93HIczHk.S3nI7mHiiyBR.aQkU9Fh0K', 1447255988, 0, '', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/11.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/2.png";}', 1, 1, 0, 0, 2),
(49, 0, 'aaa2', 'fdsgdfdsgf@xn--gskfd-msa.fr', '0000-00-00', NULL, '$2y$10$GxoP6TaJKW4f4QQDE9MPye9iSQ1qLTW4g.N8.BJnJQIAMSApUq5T.', 1447256031, 0, '', 0, 0, 1, 1100, 'a:5:{s:4:"sexe";s:5:"Homme";s:4:"body";s:33:"assets/img/avatars/man/body/2.png";s:4:"eyes";s:34:"assets/img/avatars/man/eyes/11.png";s:6:"mouths";s:31:"assets/img/avatars/mouths/1.png";s:4:"hair";s:38:"assets/img/avatars/man/hair/noir/2.png";}', 1, 1, 0, 0, 2);

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
(1, 'Membre', 1),
(2, 'VIP', 1),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT pour la table `crews_banks`
--
ALTER TABLE `crews_banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
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
-- AUTO_INCREMENT pour la table `faction`
--
ALTER TABLE `faction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `forums_categories`
--
ALTER TABLE `forums_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT pour la table `forums_topics`
--
ALTER TABLE `forums_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT pour la table `forums_topics_messages`
--
ALTER TABLE `forums_topics_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
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
-- AUTO_INCREMENT pour la table `mouths`
--
ALTER TABLE `mouths`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `news_comments`
--
ALTER TABLE `news_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `privates_messages_appartenance`
--
ALTER TABLE `privates_messages_appartenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tchats`
--
ALTER TABLE `tchats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `tchats_messages`
--
ALTER TABLE `tchats_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
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
