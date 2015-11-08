-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Dim 08 Novembre 2015 à 22:59
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
-- Structure de la table `Avatar`
--

CREATE TABLE IF NOT EXISTS `Avatar` (
  `id` int(11) NOT NULL,
  `id_mouths` int(11) NOT NULL,
  `id_hair` int(11) NOT NULL,
  `id_nose` int(11) NOT NULL,
  `id_eyes` int(11) NOT NULL,
  `id_body` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Structure de la table `body`
--

CREATE TABLE IF NOT EXISTS `body` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `is_block` tinyint(1) DEFAULT NULL
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
('19604aa814a395b3acc3209ea359ddf6ea022750', 1, '::1', 1446991706, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434363939313432303b69647c733a313a2231223b62616e7c733a313a2230223b70736575646f7c733a393a2244756d62656c646f72223b656d61696c7c733a32333a2276696e63656e74676c697a6540686f746d61696c2e6672223b62697274686461797c733a31303a22303030302d30302d3030223b736578657c4e3b69735f6b69636b7c733a313a2230223b6c766c7c733a313a2230223b69645f6f626a656374737c733a313a2231223b69645f75736572735f74797065737c733a323a223234223b72616e6b7c733a31343a2241646d696e697374726174657572223b7c4e3b617574687c623a313b637265774e616d657c733a393a2253746166666f756c61223b6372657749647c733a323a223530223b6372657752616e6b7c733a393a22436170697461696e65223b637265777c733a393a2253746166666f756c61223b),
('c3e899187927bf4e29517f6f823edabf1471f76c', 0, '::1', 1447018369, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434373031383131333b);

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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `crews`
--

INSERT INTO `crews` (`id`, `name`, `money`, `page`, `file`, `date_time`, `is_block`, `id_crews_types`, `id_crews_banks`) VALUES
(50, 'Staffoula', 0, NULL, '', 1446991689, 0, 1, 4);

-- --------------------------------------------------------

--
-- Structure de la table `crews_banks`
--

CREATE TABLE IF NOT EXISTS `crews_banks` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `crews_banks`
--

INSERT INTO `crews_banks` (`id`) VALUES
(4);

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
(50, 1, 5);

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
-- Structure de la table `eyes`
--

CREATE TABLE IF NOT EXISTS `eyes` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `sexe` tinyint(1) NOT NULL,
  `color` varchar(50) NOT NULL,
  `is_block` tinyint(1) DEFAULT NULL
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `forums_categories`
--

INSERT INTO `forums_categories` (`id`, `name`, `descr`, `types`, `is_block`, `sequence`, `is_crew`) VALUES
(1, 'Salle secrète', 'Salle secrète réservé au staff !', '', 0, 1, 0),
(2, 'Messages officiels', 'Tous les messages officiels sont postés ici !', '', 0, 2, 0),
(3, 'Présentation des membres', 'C''est dans cette section que chaque membre du site pourra faire une petite présentation de lui-même.', '', 0, 5, 0),
(4, 'Aide', 'Si vous avez besoin d''aide et que personne ne vous répond sur le t''chat, cette section vous correspond!', '', 0, 8, 0),
(5, 'Général', 'Parlez de tout et de rien.<br>\nEn rapport plus ou moins loin du jeu.', NULL, 0, 3, 0),
(6, 'Rumeurs', 'Toutes les rumeurs sur le site', NULL, 1, 6, 0),
(7, 'Diplomatie inter-équipages', 'Recrutez des membres et proposez des alliances entre équipages... ou même la guerre!', NULL, 1, 7, 0),
(8, 'Animations', 'Participez ou organisez des concours afin d''animer la communauté!', NULL, 0, 4, 0),
(9, 'Commerce', 'Vendez à d''autres joueurs tous les objets que vous avez en trop !', NULL, 1, 9, 0),
(10, 'Discussions scans', 'Exprimez-vous sur les scans', NULL, 0, 10, 0),
(11, 'Tomes français', 'Exprimez-vous sur les épisodes sortis en France', NULL, 0, 11, 0),
(12, 'Vos idées', 'Proposez vos idées, elles seront peut-être réalisées', NULL, 0, 12, 0),
(13, 'Astuces & tactiques', 'Partagez vos astuces entre membres', NULL, 1, 13, 0),
(14, 'Bugs', 'Vous avez rencontré un bug ou une faille? Signalez-le ici!', NULL, 0, 14, 0),
(50, 'Staffoula', 'Forum privé de l''équipage Staffoula', NULL, 0, 50, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

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
(21, 'sdfsdfdsgfd', 1, 5, 1),
(22, 'Todo', 0, 1, 1),
(52, 'Bienvenue sur votre forum', 0, 50, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

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
(41, '<p>gdfgdfgdfgfdgfd</p>\r\n', 1446989554, 1, 21, 1),
(42, '<p>TODO List (avant ouverture)<br />\r\n============================<br />\r\n<br />\r\nIndex : /home/accueil<br />\r\nNOK - Devrait &ecirc;tre juste le nom de domaine (/)<br />\r\nNOK - Manque du contenu dans dans le content<br />\r\nOK - boutons : &quot;connection&quot; &gt; &quot;connexion&quot; en fran&ccedil;ais<br />\r\nOK - Le debug est affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n<br />\r\nInscription : /users/create<br />\r\nOK - Div pseudo n&#39;est pas du bon style<br />\r\nNOK - Password : pas de test de faible/moyen/fort s&eacute;curis&eacute;<br />\r\nOK - Div email n&#39;est pas du bon style<br />\r\n<strong>NOK - Bug quand tu charges les cheveux (le corps disparais)</strong><br />\r\nNOK - Bug : on ne peut pas r&eacute;cup&eacute;rer les yeux par d&eacute;faut<br />\r\nOK - Il manque cruellement de diff&eacute;rence entre les styles<br />\r\nOK -&gt; Est-ce necessaire de cr&eacute;er son propre avatar ?<br />\r\nOK - Le debug est affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\nNOK - Le bouton est moche<br />\r\n<br />\r\nOK Error &agrave; la validation du formulaire d&#39;inscription :<br />\r\nOK Fatal error: Call to undefined function imagecreatetruecolor() in /var/www/onepiece/application/models/Users_model.php on line 217<br />\r\n<br />\r\nConnexion : /users/connect<br />\r\nOK - Div pseudo n&#39;est pas du bon style<br />\r\nOK - Il manque le lien &quot;j&#39;ai oubli&eacute; mon mdp&quot;<br />\r\nOK - Le debug est affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\nOK - Le bouton est moche<br />\r\n<br />\r\nNews : /<br />\r\nNOK - La sidebar est moche<br />\r\nOK - Dans la sidebar &quot;Accueil&quot; &gt; &quot;News&quot;<br />\r\nOK - Il faudrait nettoyer toute les news et commentaires<br />\r\nOK - La pagination manque d&#39;espace et de style<br />\r\nNOK - Les news devrait &ecirc;tre tronqu&eacute;es &agrave; 200 caract&egrave;res<br />\r\nNOK - Le nb comment doit &ecirc;tre affich&eacute; en fin de news<br />\r\nOK - Manque r&eacute;seaux sociaux en fin de news (avec nb partage)<br />\r\nOK - Il faudrait une bulle de notif sur des icones (comment, fb, twitter)<br />\r\nOK - Le debug est affich&eacute; (activ&eacute;)<br />\r\nOK - Le footer est vide<br />\r\n<br />\r\nSidebar :<br />\r\nOK - Fans/Fanart : pas de redirection<br />\r\nOK - Fans/Fanfics : pas de redirection<br />\r\nOK - Fans/Fanmovs : pas de redirection (n&eacute;cessaire?)<br />\r\nOK - Communaut&eacute;/Livre d&#39;or : pas de redirection<br />\r\nOK - Communaut&eacute;/Classement : pas de redirection<br />\r\nOK &gt; Faire une page de &quot;coming soon&quot;<br />\r\nNOK - MonCompte devrait avoir un dropdon avec messagerie/sac<br />\r\n<br />\r\nAnnuaire : /users<br />\r\nOK - Il y a trop d&#39;espace entre le titre et Le nombre de joueur inscrits<br />\r\nOK - Il manque les zones de filtres (coming soon?)<br />\r\nNOK - Les id n&#39;ont rien &agrave; faire ici<br />\r\nOK - Le d&eacute;bug est affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\nOK - Le footer est vide<br />\r\n<br />\r\nProfils public : /users/view/10<br />\r\nOK - L&#39;avatar ne s&#39;affiche pas<br />\r\n<strong>NOK - Envoyer un message devrait &ecirc;tre un icon</strong><br />\r\nOK - Le debug est affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\nOK - Le footer est vide<br />\r\n<br />\r\nListe connect&eacute;s : /users/liste<br />\r\nNOK - Faute de fran&ccedil;ais au lieu d&#39;anglais dans le nom<br />\r\nOK - Error : Table &#39;onepiecev3.sessions&#39; doesn&#39;t exist<br />\r\n<br />\r\nFAQ : /forum/t/21<br />\r\nNOK - Devrait &ecirc;tre une page ind&eacute;pendante et pas un topic<br />\r\nNOK &gt; Refaire<br />\r\n<br />\r\nStaff : /users/staff<br />\r\nOK - L&#39;affichage est d&eacute;gueulasse :p<br />\r\nOK - Le footer est vide<br />\r\nOK - Le debug est affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n<br />\r\nForum : /forum<br />\r\n- La mosa&iuml;que est inutile : les cat&eacute;gories doivent prendre la longueur<br />\r\n- Il y a trop de cat&eacute;gories :<br />\r\n&gt; Messages officiel : ok<br />\r\n&gt; G&eacute;n&eacute;ral : ok<br />\r\n&gt; Pr&eacute;sentation membre : &agrave; supprimer<br />\r\n&gt; Aides : pas sur de l&#39;utilit&eacute;<br />\r\n&gt; Rumeurs : &agrave; supprimer<br />\r\n&gt; Diplomatie inter-&eacute;quipage : inutile actuellement<br />\r\n&gt; Animation : pourquoi pas<br />\r\n&gt; Commerce : &agrave; supprimer<br />\r\n&gt; Discussions scan : &agrave; supprimer<br />\r\n&gt; Tomes fran&ccedil;ais : &agrave; supprimer<br />\r\n&gt; Vos id&eacute;es : -&gt; Boite &agrave; id&eacute;e<br />\r\n&gt; Astuces et tactiques : &agrave; supprimer<br />\r\n&gt; Bugs : &agrave; supprimer pour le support<br />\r\n&gt; Hello Worlds : &agrave; supprimer<br />\r\n- Par cat&eacute;gorie : revoir l&#39;affichage du dernier message<br />\r\n- Pas n&eacute;cessaire d&#39;afficher le dernier topics comment&eacute; dans les cat&eacute;gories (DUM : Pas d&#39;accord)<br />\r\n- Debug affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n- Footer vide<br />\r\n<br />\r\nTopics : /forum/c/5<br />\r\n- Route &agrave; revoir<br />\r\n- Le bouton de retour est inutile<br />\r\n- Le bouton de cr&eacute;ation de topic est d&eacute;gueulasse : faire un icon<br />\r\n<br />\r\nNouveau topic : /forum/create_topic<br />\r\n- Il y a trop d&#39;option de mise en forme pour le message<br />\r\n- Le bouton est moche<br />\r\n- debug affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n- Footer vide<br />\r\n<br />\r\nAffichage d&#39;un topic : /forum/t/27<br />\r\n- Le bouton &quot;nouveau topic dans cette cat&eacute;gorie&quot; : inutile<br />\r\n- Le bouton &quot;r&eacute;pondre&quot; devrait &ecirc;tre un icon<br />\r\n- Il n&#39;y a pas la possibilit&eacute; d&#39;avoir d&#39;ancre pour un message<br />\r\n- Footer vide<br />\r\n- debug affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n<br />\r\nR&eacute;ponse &agrave; un topic : /forum/answer<br />\r\n- On devrait pas pouvoir citer plus d&#39;une citation<br />\r\n<strong>- Les edit se cumulent, devraient &ecirc;tre ind&eacute;pendants du corps des messages</strong><br />\r\n- Footer vide<br />\r\n- debug affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n<br />\r\nTchat : /tchat<br />\r\n<strong>- Navigation entre les tchats par onglet c&#39;ets mieux</strong><br />\r\n- Tchat : Commerce &gt; &agrave; supprimer<br />\r\n- Description des tchats &agrave; faire<br />\r\n<strong>- Les avatars s&#39;&eacute;crasent en responsive</strong><br />\r\n- J&#39;ai horreur des smiley (mais c&#39;est personnel)<br />\r\n- Footer vide<br />\r\n- debug affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n<br />\r\nQuitter un &eacute;quipage : /crews/leave<br />\r\n- Probl&egrave;me d&#39;affichage de div<br />\r\n- Footer vide<br />\r\n- debug affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n<br />\r\nDissoudre un &eacute;quipage : /...<br />\r\n- Il faudrait une confirmation<br />\r\n<br />\r\nEquipage : /crews/index<br />\r\n- Pas n&eacute;cessaire de pointer sur &quot;index&quot; dans le route<br />\r\n- Le h1 est trop long<br />\r\n<strong>- Manque d&#39;ergonomie dans la page<br />\r\n- Peut-&ecirc;tre qu&#39;afficher ses candidatures en attente sur la page principale serait bien ?</strong><br />\r\n<br />\r\nEquipage Liste : /crews/liste<br />\r\n- Faute de fran&ccedil;ais dans la route<br />\r\n- Pr&eacute;voir une pagination !<br />\r\n<strong>- Afficher le nom de l&#39;&eacute;quipage, le drapeau et le d&eacute;but de sa description</strong><br />\r\n<br />\r\nEquipage Profil : /crews/view/54<br />\r\n- Les berry sont propres &agrave; l&#39;&eacute;quipage pas la peine de les montrer<br />\r\n- Rejoindre un &eacute;quipage devrait se faire par bouton icon<br />\r\n<br />\r\nEquipage candidature : /crews/c/54<br />\r\n- Tu devrais rapeller le nom de l&#39;&eacute;quipage ou tu postules en h1 (Candid: Starfoul)<br />\r\n- Bouton envoyer d&eacute;gueulasse<br />\r\n- Pas de confirmation lors de l&#39;envoi et on reste bloqu&eacute; sur la page<br />\r\n<br />\r\nEquipage Accueil du sien : /crews/index<br />\r\n- Liste des candid &gt; par bouton icon<br />\r\n- Modifier text &gt; par bouton icon<br />\r\n- G&eacute;rer rang membres &gt; par bouton icon<br />\r\n- &quot;Donner le lead&quot; &agrave; retirer<br />\r\n- Forum &gt; par bouton icon<br />\r\n- Quitter &eacute;quipage &gt; par bouton icon<br />\r\n<br />\r\nMonCompte : /account<br />\r\n- Navigation par icon + text serait mieux<br />\r\n<br />\r\nMessagerie : /messaging<br />\r\n- Re&ccedil;us/Envois pas au m&ecirc;me niveau que la page de mon compte<br />\r\n- Ergonomie &agrave; revoir<br />\r\n- Nouveau / Supprimer / R&eacute;pondre : par bouton icon<br />\r\n- Il faudrait que les messages avec la m&ecirc;me personne soit sur un m&ecirc;me &quot;flux&quot;<br />\r\n- Quand on veut &quot;tout supprimer&quot;, passer par une confirmation<br />\r\n<br />\r\nMessagerie r&eacute;ponse : /messaging/write/...<br />\r\n- On devrait pouvoir &eacute;crire par d&eacute;faut au dessus de la citation<br />\r\n- Bouton d&#39;envoi d&eacute;gueulasse<br />\r\n<br />\r\n<br />\r\nTODO Dev<br />\r\n============================<br />\r\n<br />\r\nRenommer /users/list -&gt; /users/connected<br />\r\nRenommer /users/index -&gt; /users/directory</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&Eacute;dit&eacute; par Dumbeldor le 08/11/2015 &agrave; 00h43</em></p>\r\n', 1446989722, 0, 22, 1),
(46, 'Votre forum privé vien d''être mis en ligne.\r\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie "forum", dans le cas contraire ils pourront le consulter uniquement via au lien dans l''index de l''équipage !\r\n						  Bon jeu.', 1446991689, 0, 52, 13);

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
-- Structure de la table `hair`
--

CREATE TABLE IF NOT EXISTS `hair` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `is_block` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `lvl` int(5) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `sexe` tinyint(1) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `registration` int(15) NOT NULL,
  `last_connection` int(15) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `is_kick` tinyint(1) NOT NULL,
  `messNumber` int(11) NOT NULL,
  `id_objects` int(11) NOT NULL,
  `id_users_types` int(11) NOT NULL,
  `id_crews_candidacy` int(11) NOT NULL,
  `id_lost_pass` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `ban`, `pseudo`, `lvl`, `email`, `birthday`, `sexe`, `password`, `registration`, `last_connection`, `ip`, `is_kick`, `messNumber`, `id_objects`, `id_users_types`, `id_crews_candidacy`, `id_lost_pass`) VALUES
(1, 0, 'Dumbeldor', 0, 'vincentglize@hotmail.fr', '0000-00-00', NULL, '$2y$10$IEa/yx86U2McxcjbOvFztO42KXsfCCySz75rnHc7.MbejHj6ZPOJ6', 1433827274, 1446989056, '', 0, 107, 1, 24, 0, 0),
(2, 0, 'Sumo', 0, 'sumo@sumo.fr', '0000-00-00', NULL, '$2y$10$bf6tS8IrhdG9AtfIsllc/OGROZK0Sj6NYdcP05Aos/Kk4eq/acp2m', 1446927274, 1446927274, '', 0, 0, 1, 21, 0, 0),
(13, 0, 'Pandaman', 0, 'lebg@lebg.fr', '0000-00-00', NULL, '$2y$10$IEa/yx86U2McxcjbOvFztO42KXsfCCySz75rnHc7.MbejHj6ZPOJ6', 1433827274, 1446979447, '', 0, 0, 1, 1, 0, 0),
(34, 0, 'Vincent', 0, 'omagad@gmail.fr', '0000-00-00', NULL, '$2y$10$IEa/yx86U2McxcjbOvFztO42KXsfCCySz75rnHc7.MbejHj6ZPOJ6', 1446927274, 1446927274, '', 0, 4, 1, 2, 0, 0);

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
-- Index pour la table `Avatar`
--
ALTER TABLE `Avatar`
  ADD PRIMARY KEY (`id`,`id_mouths`,`id_hair`,`id_nose`,`id_eyes`,`id_body`),
  ADD KEY `FK_Avatar_id_mouths` (`id_mouths`),
  ADD KEY `FK_Avatar_id_hair` (`id_hair`),
  ADD KEY `FK_Avatar_id_nose` (`id_nose`),
  ADD KEY `FK_Avatar_id_eyes` (`id_eyes`),
  ADD KEY `FK_Avatar_id_body` (`id_body`);

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
-- Index pour la table `body`
--
ALTER TABLE `body`
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
-- Index pour la table `eyes`
--
ALTER TABLE `eyes`
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
-- Index pour la table `hair`
--
ALTER TABLE `hair`
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
  ADD KEY `FK_users_id_users_types` (`id_users_types`);

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
-- AUTO_INCREMENT pour la table `body`
--
ALTER TABLE `body`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT pour la table `crews_banks`
--
ALTER TABLE `crews_banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
-- AUTO_INCREMENT pour la table `eyes`
--
ALTER TABLE `eyes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `forums_categories`
--
ALTER TABLE `forums_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT pour la table `forums_topics`
--
ALTER TABLE `forums_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT pour la table `forums_topics_messages`
--
ALTER TABLE `forums_topics_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT pour la table `forums_topics_types`
--
ALTER TABLE `forums_topics_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `hair`
--
ALTER TABLE `hair`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT pour la table `users_types`
--
ALTER TABLE `users_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Avatar`
--
ALTER TABLE `Avatar`
  ADD CONSTRAINT `FK_Avatar_id` FOREIGN KEY (`id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_Avatar_id_body` FOREIGN KEY (`id_body`) REFERENCES `body` (`id`),
  ADD CONSTRAINT `FK_Avatar_id_eyes` FOREIGN KEY (`id_eyes`) REFERENCES `eyes` (`id`),
  ADD CONSTRAINT `FK_Avatar_id_hair` FOREIGN KEY (`id_hair`) REFERENCES `hair` (`id`),
  ADD CONSTRAINT `FK_Avatar_id_mouths` FOREIGN KEY (`id_mouths`) REFERENCES `mouths` (`id`),
  ADD CONSTRAINT `FK_Avatar_id_nose` FOREIGN KEY (`id_nose`) REFERENCES `nose` (`id`);

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
  ADD CONSTRAINT `FK_users_id_users_types` FOREIGN KEY (`id_users_types`) REFERENCES `users_types` (`id`);

--
-- Contraintes pour la table `users_bag`
--
ALTER TABLE `users_bag`
  ADD CONSTRAINT `FK_users_bag_id` FOREIGN KEY (`id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_users_bag_id_bags` FOREIGN KEY (`id_bags`) REFERENCES `bags` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
