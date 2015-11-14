-- MySQL dump 10.13  Distrib 5.6.27, for Linux (x86_64)
--
-- Host: localhost    Database: onepiecev3
-- ------------------------------------------------------
-- Server version	5.6.27-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bags`
--

DROP TABLE IF EXISTS `bags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_bags_types` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_bags_id_bags_types` (`id_bags_types`),
  CONSTRAINT `FK_bags_id_bags_types` FOREIGN KEY (`id_bags_types`) REFERENCES `bags_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bags`
--

LOCK TABLES `bags` WRITE;
/*!40000 ALTER TABLE `bags` DISABLE KEYS */;
/*!40000 ALTER TABLE `bags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bags_objects`
--

DROP TABLE IF EXISTS `bags_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bags_objects` (
  `id` int(11) NOT NULL,
  `id_objects` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id_objects`),
  KEY `FK_bags_objects_id_objects` (`id_objects`),
  CONSTRAINT `FK_bags_objects_id` FOREIGN KEY (`id`) REFERENCES `bags` (`id`),
  CONSTRAINT `FK_bags_objects_id_objects` FOREIGN KEY (`id_objects`) REFERENCES `objects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bags_objects`
--

LOCK TABLES `bags_objects` WRITE;
/*!40000 ALTER TABLE `bags_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `bags_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bags_types`
--

DROP TABLE IF EXISTS `bags_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bags_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `size` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bags_types`
--

LOCK TABLES `bags_types` WRITE;
/*!40000 ALTER TABLE `bags_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `bags_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cages`
--

DROP TABLE IF EXISTS `cages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cages_types` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_cages_id_cages_types` (`id_cages_types`),
  CONSTRAINT `FK_cages_id_cages_types` FOREIGN KEY (`id_cages_types`) REFERENCES `cages_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cages`
--

LOCK TABLES `cages` WRITE;
/*!40000 ALTER TABLE `cages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cages_pets`
--

DROP TABLE IF EXISTS `cages_pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cages_pets` (
  `id` int(11) NOT NULL,
  `id_pets` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id_pets`),
  KEY `FK_cages_pets_id_pets` (`id_pets`),
  CONSTRAINT `FK_cages_pets_id` FOREIGN KEY (`id`) REFERENCES `cages` (`id`),
  CONSTRAINT `FK_cages_pets_id_pets` FOREIGN KEY (`id_pets`) REFERENCES `pets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cages_pets`
--

LOCK TABLES `cages_pets` WRITE;
/*!40000 ALTER TABLE `cages_pets` DISABLE KEYS */;
/*!40000 ALTER TABLE `cages_pets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cages_types`
--

DROP TABLE IF EXISTS `cages_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cages_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `file` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cages_types`
--

LOCK TABLES `cages_types` WRITE;
/*!40000 ALTER TABLE `cages_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `cages_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cages_users`
--

DROP TABLE IF EXISTS `cages_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cages_users` (
  `id` int(11) NOT NULL,
  `id_cages` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id_cages`),
  KEY `FK_cages_users_id_cages` (`id_cages`),
  CONSTRAINT `FK_cages_users_id` FOREIGN KEY (`id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_cages_users_id_cages` FOREIGN KEY (`id_cages`) REFERENCES `cages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cages_users`
--

LOCK TABLES `cages_users` WRITE;
/*!40000 ALTER TABLE `cages_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `cages_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captcha`
--

DROP TABLE IF EXISTS `captcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `captcha` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `session_id` varchar(50) NOT NULL,
  `time` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captcha`
--

LOCK TABLES `captcha` WRITE;
/*!40000 ALTER TABLE `captcha` DISABLE KEYS */;
INSERT INTO `captcha` VALUES (28,'SApzp8r','024dd2e4b4096ef822ec767067a3d5aed0707041',1447500374),(29,'ec2EE8w','1733def7bbd76b6c73dbe885209036ddd952bcd2',1447500932);
/*!40000 ALTER TABLE `captcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chests`
--

DROP TABLE IF EXISTS `chests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_chests_types` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_chests_id_chests_types` (`id_chests_types`),
  CONSTRAINT `FK_chests_id_chests_types` FOREIGN KEY (`id_chests_types`) REFERENCES `chests_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chests`
--

LOCK TABLES `chests` WRITE;
/*!40000 ALTER TABLE `chests` DISABLE KEYS */;
/*!40000 ALTER TABLE `chests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chests_objects`
--

DROP TABLE IF EXISTS `chests_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chests_objects` (
  `id` int(11) NOT NULL,
  `id_objects` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id_objects`),
  KEY `FK_chests_objects_id_objects` (`id_objects`),
  CONSTRAINT `FK_chests_objects_id` FOREIGN KEY (`id`) REFERENCES `chests` (`id`),
  CONSTRAINT `FK_chests_objects_id_objects` FOREIGN KEY (`id_objects`) REFERENCES `objects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chests_objects`
--

LOCK TABLES `chests_objects` WRITE;
/*!40000 ALTER TABLE `chests_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `chests_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chests_types`
--

DROP TABLE IF EXISTS `chests_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chests_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `size` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chests_types`
--

LOCK TABLES `chests_types` WRITE;
/*!40000 ALTER TABLE `chests_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `chests_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `idUser` int(11) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('2b492e678e1e6fb8878adc3edcb66b1d8afaae72',0,'83.170.73.249',1447496450,'__ci_last_regenerate|i:1447496450;'),('b36bd00abdad8385e121ce6db92ba0e5b8ce8487',0,'83.170.73.249',1447496450,'__ci_last_regenerate|i:1447496450;'),('6de6dc5a5fd029da08a8a19aa34473a787496413',0,'84.248.156.8',1447497449,'__ci_last_regenerate|i:1447497409;'),('c9ac18e34fcf525acdba1889a54dc5d32232e9c5',51,'109.13.240.113',1447498084,'__ci_last_regenerate|i:1447498064;id|s:2:\"51\";ban|s:1:\"0\";pseudo|s:6:\"Riyuma\";email|s:29:\"real-madrid-38080@hotmail.com\";birthday|s:10:\"0000-00-00\";sexe|N;is_kick|s:1:\"0\";lvl|s:1:\"1\";id_objects|s:1:\"1\";id_users_types|s:2:\"10\";rank|s:9:\"Animateur\";faction|s:1:\"3\";facName|s:16:\"Révolutionnaire\";crewName|s:16:\"DarkNess Killeur\";crewId|s:2:\"56\";crewRank|s:9:\"Capitaine\";auth|b:1;'),('bf5cff91a01d832fd811a000c46e96d7395ca6d5',0,'95.170.32.75',1447498530,'__ci_last_regenerate|i:1447498530;'),('6378a5c87b88d45521f6e84213772e82685835cf',0,'93.182.192.37',1447498803,'__ci_last_regenerate|i:1447498730;'),('625ae8cbf38f5df85695f76fd2b000dc3a671205',63,'82.244.229.213',1447506246,'__ci_last_regenerate|i:1447499357;id|s:2:\"63\";ban|s:1:\"0\";pseudo|s:6:\"Maniak\";email|s:20:\"maniac-77@hotmail.fr\";birthday|s:10:\"0000-00-00\";sexe|N;is_kick|s:1:\"0\";lvl|s:1:\"1\";id_objects|s:1:\"1\";id_users_types|s:2:\"20\";rank|s:11:\"Modérateur\";faction|s:1:\"1\";facName|s:6:\"Pirate\";crewName|s:5:\"Funny\";crewId|s:2:\"57\";crewRank|s:9:\"Capitaine\";auth|b:1;'),('024dd2e4b4096ef822ec767067a3d5aed0707041',0,'78.230.147.45',1447500374,'__ci_last_regenerate|i:1447500248;'),('1733def7bbd76b6c73dbe885209036ddd952bcd2',0,'23.101.61.176',1447500932,'__ci_last_regenerate|i:1447500932;'),('9856a8ad7f1377bda537d3a38e3876444c7bae47',60,'95.170.32.75',1447506249,'__ci_last_regenerate|i:1447502887;id|s:2:\"60\";ban|s:1:\"0\";pseudo|s:7:\"Kalivia\";email|s:24:\"boisson.olivia@gmail.com\";birthday|s:10:\"0000-00-00\";sexe|N;is_kick|s:1:\"0\";lvl|s:1:\"1\";id_objects|s:1:\"1\";id_users_types|s:2:\"19\";rank|s:12:\"Modératrice\";faction|s:1:\"2\";facName|s:6:\"Marine\";crewName|s:9:\"Starfoula\";crewId|s:2:\"54\";crewRank|s:10:\"Bras droit\";auth|b:1;'),('54f528a27dd38679a9aa2f9cffc84f45fb688b2e',1,'78.230.147.45',1447506130,'__ci_last_regenerate|i:1447506116;id|s:1:\"1\";ban|s:1:\"0\";pseudo|s:9:\"Dumbeldor\";email|s:23:\"vincentglize@hotmail.fr\";birthday|s:10:\"0000-00-00\";sexe|N;is_kick|s:1:\"0\";lvl|s:1:\"0\";id_objects|s:1:\"1\";id_users_types|s:2:\"24\";rank|s:14:\"Administrateur\";faction|s:1:\"2\";facName|s:6:\"Marine\";crewName|s:9:\"Starfoula\";crewId|s:2:\"54\";crewRank|s:9:\"Capitaine\";auth|b:1;');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coffres_comptes`
--

DROP TABLE IF EXISTS `coffres_comptes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coffres_comptes` (
  `id` int(11) NOT NULL,
  `id_chests` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id_chests`),
  KEY `FK_coffres_comptes_id_chests` (`id_chests`),
  CONSTRAINT `FK_coffres_comptes_id` FOREIGN KEY (`id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_coffres_comptes_id_chests` FOREIGN KEY (`id_chests`) REFERENCES `chests` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coffres_comptes`
--

LOCK TABLES `coffres_comptes` WRITE;
/*!40000 ALTER TABLE `coffres_comptes` DISABLE KEYS */;
/*!40000 ALTER TABLE `coffres_comptes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crews`
--

DROP TABLE IF EXISTS `crews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(51) NOT NULL,
  `money` int(11) NOT NULL,
  `page` text,
  `file` varchar(255) NOT NULL,
  `date_time` int(12) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_crews_types` int(11) NOT NULL,
  `id_crews_banks` int(11) NOT NULL,
  `id_faction` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_crews_id_crews_types` (`id_crews_types`),
  KEY `FK_crews_id_crews_banks` (`id_crews_banks`),
  KEY `fk_crews_faction` (`id_faction`),
  CONSTRAINT `FK_crews_id_crews_banks` FOREIGN KEY (`id_crews_banks`) REFERENCES `crews_banks` (`id`),
  CONSTRAINT `FK_crews_id_crews_types` FOREIGN KEY (`id_crews_types`) REFERENCES `crews_types` (`id`),
  CONSTRAINT `fk_crews_faction` FOREIGN KEY (`id_faction`) REFERENCES `faction` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crews`
--

LOCK TABLES `crews` WRITE;
/*!40000 ALTER TABLE `crews` DISABLE KEYS */;
INSERT INTO `crews` VALUES (51,'Test',0,NULL,'',1447258410,0,1,5,1),(54,'Starfoula',0,NULL,'',1447265735,0,1,8,2),(56,'DarkNess Killeur',0,'<p><tt><strong>QUI NOUS SOMMES? DARKNESS! QUE VOULONS NOUS? LA VTCOIRE! POUR QUI CE BATTONS NOUS? RIYUMA!</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n','',1447271752,0,1,10,3),(57,'Funny',0,NULL,'',1447294795,0,1,11,1);
/*!40000 ALTER TABLE `crews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crews_banks`
--

DROP TABLE IF EXISTS `crews_banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crews_banks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crews_banks`
--

LOCK TABLES `crews_banks` WRITE;
/*!40000 ALTER TABLE `crews_banks` DISABLE KEYS */;
INSERT INTO `crews_banks` VALUES (4),(5),(6),(7),(8),(9),(10),(11);
/*!40000 ALTER TABLE `crews_banks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crews_banks_objects`
--

DROP TABLE IF EXISTS `crews_banks_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crews_banks_objects` (
  `id` int(11) NOT NULL,
  `id_objects` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id_objects`),
  KEY `FK_crews_banks_objects_id_objects` (`id_objects`),
  CONSTRAINT `FK_crews_banks_objects_id` FOREIGN KEY (`id`) REFERENCES `crews_banks` (`id`),
  CONSTRAINT `FK_crews_banks_objects_id_objects` FOREIGN KEY (`id_objects`) REFERENCES `objects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crews_banks_objects`
--

LOCK TABLES `crews_banks_objects` WRITE;
/*!40000 ALTER TABLE `crews_banks_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `crews_banks_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crews_boats`
--

DROP TABLE IF EXISTS `crews_boats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crews_boats` (
  `id` int(11) NOT NULL,
  `id_crews` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id_crews`),
  KEY `FK_crews_boats_id_crews` (`id_crews`),
  CONSTRAINT `FK_crews_boats_id` FOREIGN KEY (`id`) REFERENCES `crews_equipments` (`id`),
  CONSTRAINT `FK_crews_boats_id_crews` FOREIGN KEY (`id_crews`) REFERENCES `crews` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crews_boats`
--

LOCK TABLES `crews_boats` WRITE;
/*!40000 ALTER TABLE `crews_boats` DISABLE KEYS */;
/*!40000 ALTER TABLE `crews_boats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crews_candidacy`
--

DROP TABLE IF EXISTS `crews_candidacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crews_candidacy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `texte` text NOT NULL,
  `date_time` int(12) NOT NULL,
  `candidacy` tinyint(1) NOT NULL DEFAULT '0',
  `id_users` int(11) NOT NULL,
  `id_crews` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_crews_candidacy_id_users` (`id_users`),
  KEY `FK_crews_candidacy_id_crews` (`id_crews`),
  CONSTRAINT `FK_crews_candidacy_id_crews` FOREIGN KEY (`id_crews`) REFERENCES `crews` (`id`),
  CONSTRAINT `FK_crews_candidacy_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crews_candidacy`
--

LOCK TABLES `crews_candidacy` WRITE;
/*!40000 ALTER TABLE `crews_candidacy` DISABLE KEYS */;
/*!40000 ALTER TABLE `crews_candidacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crews_equipments`
--

DROP TABLE IF EXISTS `crews_equipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crews_equipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_crews_equipments_types` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_crews_equipments_id_crews_equipments_types` (`id_crews_equipments_types`),
  CONSTRAINT `FK_crews_equipments_id_crews_equipments_types` FOREIGN KEY (`id_crews_equipments_types`) REFERENCES `crews_equipments_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crews_equipments`
--

LOCK TABLES `crews_equipments` WRITE;
/*!40000 ALTER TABLE `crews_equipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `crews_equipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crews_equipments_types`
--

DROP TABLE IF EXISTS `crews_equipments_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crews_equipments_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crews_equipments_types`
--

LOCK TABLES `crews_equipments_types` WRITE;
/*!40000 ALTER TABLE `crews_equipments_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `crews_equipments_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crews_grades`
--

DROP TABLE IF EXISTS `crews_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crews_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `file` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crews_grades`
--

LOCK TABLES `crews_grades` WRITE;
/*!40000 ALTER TABLE `crews_grades` DISABLE KEYS */;
INSERT INTO `crews_grades` VALUES (1,'En attente','',0),(2,'Matelot','',0),(3,'Cuisinier','',0),(4,'Bras droit','',0),(5,'Capitaine','',0);
/*!40000 ALTER TABLE `crews_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crews_types`
--

DROP TABLE IF EXISTS `crews_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crews_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `file` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crews_types`
--

LOCK TABLES `crews_types` WRITE;
/*!40000 ALTER TABLE `crews_types` DISABLE KEYS */;
INSERT INTO `crews_types` VALUES (1,'Pirate','',0),(2,'Marine','',0);
/*!40000 ALTER TABLE `crews_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crews_users`
--

DROP TABLE IF EXISTS `crews_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crews_users` (
  `id` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_crews_grades` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id_users`,`id_crews_grades`),
  KEY `FK_crews_users_id_users` (`id_users`),
  KEY `FK_crews_users_id_crews_grades` (`id_crews_grades`),
  CONSTRAINT `FK_crews_users_id` FOREIGN KEY (`id`) REFERENCES `crews` (`id`),
  CONSTRAINT `FK_crews_users_id_crews_grades` FOREIGN KEY (`id_crews_grades`) REFERENCES `crews_grades` (`id`),
  CONSTRAINT `FK_crews_users_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crews_users`
--

LOCK TABLES `crews_users` WRITE;
/*!40000 ALTER TABLE `crews_users` DISABLE KEYS */;
INSERT INTO `crews_users` VALUES (54,1,5),(51,34,5),(56,51,5),(54,60,4),(57,63,5);
/*!40000 ALTER TABLE `crews_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ennemies`
--

DROP TABLE IF EXISTS `ennemies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ennemies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `firstname` varchar(25) DEFAULT NULL,
  `file` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ennemies`
--

LOCK TABLES `ennemies` WRITE;
/*!40000 ALTER TABLE `ennemies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ennemies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faction`
--

DROP TABLE IF EXISTS `faction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faction`
--

LOCK TABLES `faction` WRITE;
/*!40000 ALTER TABLE `faction` DISABLE KEYS */;
INSERT INTO `faction` VALUES (1,'Pirate'),(2,'Marine'),(3,'Révolutionnaire');
/*!40000 ALTER TABLE `faction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forums_categories`
--

DROP TABLE IF EXISTS `forums_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forums_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(35) NOT NULL,
  `descr` varchar(255) NOT NULL,
  `types` varchar(25) DEFAULT NULL,
  `is_block` tinyint(1) NOT NULL,
  `sequence` int(4) NOT NULL,
  `is_crew` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forums_categories`
--

LOCK TABLES `forums_categories` WRITE;
/*!40000 ALTER TABLE `forums_categories` DISABLE KEYS */;
INSERT INTO `forums_categories` VALUES (1,'Salle secrète','Salle secrète réservé au staff !','',0,1,0),(2,'Messages officiels','Tous les messages officiels sont postés ici !','',0,2,0),(3,'Présentation des membres','C\'est dans cette section que chaque membre du site pourra faire une petite présentation de lui-même.','',0,6,0),(4,'Aide','Si vous avez besoin d\'aide et que personne ne vous répond sur le t\'chat, cette section vous correspond!','',0,8,0),(5,'Général','Parlez de tout et de rien.<br>\nEn rapport plus ou moins loin du jeu.',NULL,0,3,0),(6,'Rumeurs','Toutes les rumeurs sur le site',NULL,1,6,0),(7,'Diplomatie inter-équipages','Recrutez des membres et proposez des alliances entre équipages... ou même la guerre!',NULL,1,7,0),(8,'Animations','Participez ou organisez des concours afin d\'animer la communauté!',NULL,0,5,0),(9,'Commerce','Vendez à d\'autres joueurs tous les objets que vous avez en trop !',NULL,1,9,0),(10,'Discussions scans','Exprimez-vous sur les scans',NULL,0,10,0),(11,'Tomes français','Exprimez-vous sur les épisodes sortis en France',NULL,0,11,0),(12,'Vos idées','Proposez vos idées, elles seront peut-être réalisées',NULL,0,12,0),(13,'Astuces & tactiques','Partagez vos astuces entre membres',NULL,1,13,0),(14,'Bugs','Vous avez rencontré un bug ou une faille? Signalez-le ici!',NULL,0,14,0),(15,'Pirate','Le forum privé des Pirates !',NULL,1,4,0),(16,'Marine','Le forum privé des Marines',NULL,1,4,0),(17,'Révolutionnaire','Le forum privé des Révolutionnaires',NULL,1,4,0),(50,'Staffoula','Forum privé de l\'équipage Staffoula',NULL,0,50,1),(51,'Test','Forum privé de l\'équipage Test',NULL,0,50,1),(52,'dfdsfd','Forum privé de l\'équipage dfdsfd',NULL,0,50,1),(53,'dsfdgdfgf','Forum privé de l\'équipage dsfdgdfgf',NULL,0,50,1),(54,'Starfoula','Forum privé de l\'équipage Starfoula',NULL,0,50,1),(55,'DarkNess Killeur','Forum privé de l\'équipage DarkNess Killeur',NULL,0,50,1),(56,'DarkNess Killeur','Forum privé de l\'équipage DarkNess Killeur',NULL,0,50,1),(57,'Funny','Forum privé de l\'équipage Funny',NULL,0,50,1);
/*!40000 ALTER TABLE `forums_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forums_topics`
--

DROP TABLE IF EXISTS `forums_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forums_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(35) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_forums_categories` int(11) NOT NULL,
  `id_forums_topics_types` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_forums_topics_id_forums_categories` (`id_forums_categories`),
  KEY `FK_forums_topics_id_forums_topics_types` (`id_forums_topics_types`),
  CONSTRAINT `FK_forums_topics_id_forums_categories` FOREIGN KEY (`id_forums_categories`) REFERENCES `forums_categories` (`id`),
  CONSTRAINT `FK_forums_topics_id_forums_topics_types` FOREIGN KEY (`id_forums_topics_types`) REFERENCES `forums_topics_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forums_topics`
--

LOCK TABLES `forums_topics` WRITE;
/*!40000 ALTER TABLE `forums_topics` DISABLE KEYS */;
INSERT INTO `forums_topics` VALUES (3,'Salle secrète',0,1,1),(4,'Premier Topic',0,3,1),(5,'Premier Topic',0,4,1),(6,'Premier Topic',0,5,1),(7,'Premier Topic',0,6,1),(8,'Premier Topic',0,7,1),(9,'Premier Topic',0,8,1),(10,'Premier Topic',0,9,1),(11,'Premier Topic',0,10,1),(12,'Premier Topic',0,11,1),(13,'Premier Topic',0,12,1),(14,'Premier Topic',0,13,1),(15,'Premier Topic',0,14,1),(16,'Todo',0,1,1),(17,'Todo',0,1,4),(18,'sdfsf',0,5,1),(19,'sdfdsg',0,5,1),(20,'sdfsdgfdfgfdgfd',0,5,1),(22,'Todo',0,1,1),(52,'Bienvenue sur votre forum',0,50,1),(53,'Bienvenue sur votre forum',0,51,1),(54,'Bienvenue sur votre forum',0,52,1),(55,'Premier topic',0,16,1),(56,'Bienvenue sur votre forum',0,53,1),(57,'Bienvenue Pirate',0,15,1),(58,'Bienvenue Révolutionnaire',0,17,1),(61,'BDH n°1',0,8,1),(62,'[V2.5] Propositions des idées',0,5,1),(63,'Bienvenue sur votre forum',0,54,1),(64,'Bienvenue sur votre forum',1,55,1),(65,'Bienvenue sur votre forum',0,56,1),(66,'Règles de bonne conduite',0,56,4),(67,'Le Double Post [DNK]',0,56,1),(68,'aa',0,56,1),(69,'Bienvenue sur votre forum',0,57,1),(70,'fdsf',1,5,1),(71,'fdsf',1,5,1),(72,'gfdgdf',1,1,1),(73,'[Recrutement] DarkNess Killeur',0,17,1),(74,'Le Double Post [DNK]',0,56,1),(75,'Règles de bonne conduite',0,56,4),(76,'Test',1,56,1),(77,'aaaaa',1,17,1),(78,'Tic...tac...bip - Reprise',0,8,1),(79,'La phrase infinie',0,8,1),(80,'Conditions générales d\'utilisation',0,1,1),(81,'Conditions générales d\'utilisation',0,2,4);
/*!40000 ALTER TABLE `forums_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forums_topics_messages`
--

DROP TABLE IF EXISTS `forums_topics_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forums_topics_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` longtext NOT NULL,
  `date_time` int(12) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_forums_topics` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id_forums_topics`,`id_users`),
  KEY `FK_forums_topics_messages_id_forums_topics` (`id_forums_topics`),
  KEY `FK_forums_topics_messages_id_users` (`id_users`),
  CONSTRAINT `FK_forums_topics_messages_id_forums_topics` FOREIGN KEY (`id_forums_topics`) REFERENCES `forums_topics` (`id`),
  CONSTRAINT `FK_forums_topics_messages_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forums_topics_messages`
--

LOCK TABLES `forums_topics_messages` WRITE;
/*!40000 ALTER TABLE `forums_topics_messages` DISABLE KEYS */;
INSERT INTO `forums_topics_messages` VALUES (3,'Premier message',1446207986,0,3,13),(4,'Premier message',1446207986,0,4,13),(5,'Premier message',1446207986,0,5,13),(6,'Premier message',1446207986,0,6,13),(7,'Premier message',1446207986,0,7,13),(8,'Premier message',1446207986,0,8,13),(9,'Premier message',1446207986,0,9,13),(10,'Premier message',1446207986,0,10,13),(11,'Premier message',1446207986,0,11,13),(12,'Premier message',1446207986,0,12,13),(13,'Premier message',1446207986,0,13,13),(14,'Premier message',1446207986,0,14,13),(15,'Premier message',1446207986,0,15,13),(39,'<p>test</p>\r\n',1446941841,0,3,13),(40,'<p>test</p>\r\n',1446989074,0,3,1),(42,'<p>TODO List (avant ouverture)<br />\r\n============================<br />\r\n<br />\r\nIndex : /home/accueil<br />\r\nNOK - Devrait &ecirc;tre juste le nom de domaine (/)<br />\r\nNOK - Manque du contenu dans dans le content<br />\r\nOK - boutons : &quot;connection&quot; &gt; &quot;connexion&quot; en fran&ccedil;ais<br />\r\nOK - Le debug est affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n<br />\r\nInscription : /users/create<br />\r\nOK - Div pseudo n&#39;est pas du bon style<br />\r\nNOK - Password : pas de test de faible/moyen/fort s&eacute;curis&eacute;<br />\r\nOK - Div email n&#39;est pas du bon style<br />\r\n<strong>NOK - Bug quand tu charges les cheveux (le corps disparais)</strong><br />\r\nNOK - Bug : on ne peut pas r&eacute;cup&eacute;rer les yeux par d&eacute;faut<br />\r\nOK - Il manque cruellement de diff&eacute;rence entre les styles<br />\r\nOK -&gt; Est-ce necessaire de cr&eacute;er son propre avatar ?<br />\r\nOK - Le debug est affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\nNOK - Le bouton est moche<br />\r\n<br />\r\nOK Error &agrave; la validation du formulaire d&#39;inscription :<br />\r\nOK Fatal error: Call to undefined function imagecreatetruecolor() in /var/www/onepiece/application/models/Users_model.php on line 217<br />\r\n<br />\r\nConnexion : /users/connect<br />\r\nOK - Div pseudo n&#39;est pas du bon style<br />\r\nOK - Il manque le lien &quot;j&#39;ai oubli&eacute; mon mdp&quot;<br />\r\nOK - Le debug est affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\nOK - Le bouton est moche<br />\r\n<br />\r\nNews : /<br />\r\nNOK - La sidebar est moche<br />\r\nOK - Dans la sidebar &quot;Accueil&quot; &gt; &quot;News&quot;<br />\r\nOK - Il faudrait nettoyer toute les news et commentaires<br />\r\nOK - La pagination manque d&#39;espace et de style<br />\r\nNOK - Les news devrait &ecirc;tre tronqu&eacute;es &agrave; 200 caract&egrave;res<br />\r\nNOK - Le nb comment doit &ecirc;tre affich&eacute; en fin de news<br />\r\nOK - Manque r&eacute;seaux sociaux en fin de news (avec nb partage)<br />\r\nOK - Il faudrait une bulle de notif sur des icones (comment, fb, twitter)<br />\r\nOK - Le debug est affich&eacute; (activ&eacute;)<br />\r\nOK - Le footer est vide<br />\r\n<br />\r\nSidebar :<br />\r\nOK - Fans/Fanart : pas de redirection<br />\r\nOK - Fans/Fanfics : pas de redirection<br />\r\nOK - Fans/Fanmovs : pas de redirection (n&eacute;cessaire?)<br />\r\nOK - Communaut&eacute;/Livre d&#39;or : pas de redirection<br />\r\nOK - Communaut&eacute;/Classement : pas de redirection<br />\r\nOK &gt; Faire une page de &quot;coming soon&quot;<br />\r\nNOK - MonCompte devrait avoir un dropdon avec messagerie/sac<br />\r\n<br />\r\nAnnuaire : /users<br />\r\nOK - Il y a trop d&#39;espace entre le titre et Le nombre de joueur inscrits<br />\r\nOK - Il manque les zones de filtres (coming soon?)<br />\r\nNOK - Les id n&#39;ont rien &agrave; faire ici<br />\r\nOK - Le d&eacute;bug est affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\nOK - Le footer est vide<br />\r\n<br />\r\nProfils public : /users/view/10<br />\r\nOK - L&#39;avatar ne s&#39;affiche pas<br />\r\n<strong>NOK - Envoyer un message devrait &ecirc;tre un icon</strong><br />\r\nOK - Le debug est affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\nOK - Le footer est vide<br />\r\n<br />\r\nListe connect&eacute;s : /users/liste<br />\r\nNOK - Faute de fran&ccedil;ais au lieu d&#39;anglais dans le nom<br />\r\nOK - Error : Table &#39;onepiecev3.sessions&#39; doesn&#39;t exist<br />\r\n<br />\r\nFAQ : /forum/t/21<br />\r\nNOK - Devrait &ecirc;tre une page ind&eacute;pendante et pas un topic<br />\r\nNOK &gt; Refaire<br />\r\n<br />\r\nStaff : /users/staff<br />\r\nOK - L&#39;affichage est d&eacute;gueulasse :p<br />\r\nOK - Le footer est vide<br />\r\nOK - Le debug est affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n<br />\r\nForum : /forum<br />\r\n- La mosa&iuml;que est inutile : les cat&eacute;gories doivent prendre la longueur<br />\r\n- Il y a trop de cat&eacute;gories :<br />\r\n&gt; Messages officiel : ok<br />\r\n&gt; G&eacute;n&eacute;ral : ok<br />\r\n&gt; Pr&eacute;sentation membre : &agrave; supprimer<br />\r\n&gt; Aides : pas sur de l&#39;utilit&eacute;<br />\r\n&gt; Rumeurs : &agrave; supprimer<br />\r\n&gt; Diplomatie inter-&eacute;quipage : inutile actuellement<br />\r\n&gt; Animation : pourquoi pas<br />\r\n&gt; Commerce : &agrave; supprimer<br />\r\n&gt; Discussions scan : &agrave; supprimer<br />\r\n&gt; Tomes fran&ccedil;ais : &agrave; supprimer<br />\r\n&gt; Vos id&eacute;es : -&gt; Boite &agrave; id&eacute;e<br />\r\n&gt; Astuces et tactiques : &agrave; supprimer<br />\r\n&gt; Bugs : &agrave; supprimer pour le support<br />\r\n&gt; Hello Worlds : &agrave; supprimer<br />\r\n- Par cat&eacute;gorie : revoir l&#39;affichage du dernier message<br />\r\n- Pas n&eacute;cessaire d&#39;afficher le dernier topics comment&eacute; dans les cat&eacute;gories (DUM : Pas d&#39;accord)<br />\r\n- Debug affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n- Footer vide<br />\r\n<br />\r\nTopics : /forum/c/5<br />\r\n- Route &agrave; revoir<br />\r\n- Le bouton de retour est inutile<br />\r\n- Le bouton de cr&eacute;ation de topic est d&eacute;gueulasse : faire un icon<br />\r\n<br />\r\nNouveau topic : /forum/create_topic<br />\r\n- Il y a trop d&#39;option de mise en forme pour le message<br />\r\n- Le bouton est moche<br />\r\n- debug affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n- Footer vide<br />\r\n<br />\r\nAffichage d&#39;un topic : /forum/t/27<br />\r\n- Le bouton &quot;nouveau topic dans cette cat&eacute;gorie&quot; : inutile<br />\r\n- Le bouton &quot;r&eacute;pondre&quot; devrait &ecirc;tre un icon<br />\r\n- Il n&#39;y a pas la possibilit&eacute; d&#39;avoir d&#39;ancre pour un message<br />\r\n- Footer vide<br />\r\n- debug affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n<br />\r\nR&eacute;ponse &agrave; un topic : /forum/answer<br />\r\n- On devrait pas pouvoir citer plus d&#39;une citation<br />\r\n<strong>- Les edit se cumulent, devraient &ecirc;tre ind&eacute;pendants du corps des messages</strong><br />\r\n- Footer vide<br />\r\n- debug affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n<br />\r\nTchat : /tchat<br />\r\n<strong>- Navigation entre les tchats par onglet c&#39;ets mieux</strong><br />\r\n- Tchat : Commerce &gt; &agrave; supprimer<br />\r\n- Description des tchats &agrave; faire<br />\r\n<strong>- Les avatars s&#39;&eacute;crasent en responsive</strong><br />\r\n- J&#39;ai horreur des smiley (mais c&#39;est personnel)<br />\r\n- Footer vide<br />\r\n- debug affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n<br />\r\nQuitter un &eacute;quipage : /crews/leave<br />\r\n- Probl&egrave;me d&#39;affichage de div<br />\r\n- Footer vide<br />\r\n- debug affich&eacute; (d&eacute;sactiv&eacute;)<br />\r\n<br />\r\nDissoudre un &eacute;quipage : /...<br />\r\n- Il faudrait une confirmation<br />\r\n<br />\r\nEquipage : /crews/index<br />\r\n- Pas n&eacute;cessaire de pointer sur &quot;index&quot; dans le route<br />\r\n- Le h1 est trop long<br />\r\n<strong>- Manque d&#39;ergonomie dans la page<br />\r\n- Peut-&ecirc;tre qu&#39;afficher ses candidatures en attente sur la page principale serait bien ?</strong><br />\r\n<br />\r\nEquipage Liste : /crews/liste<br />\r\n- Faute de fran&ccedil;ais dans la route<br />\r\n- Pr&eacute;voir une pagination !<br />\r\n<strong>- Afficher le nom de l&#39;&eacute;quipage, le drapeau et le d&eacute;but de sa description</strong><br />\r\n<br />\r\nEquipage Profil : /crews/view/54<br />\r\n- Les berry sont propres &agrave; l&#39;&eacute;quipage pas la peine de les montrer<br />\r\n- Rejoindre un &eacute;quipage devrait se faire par bouton icon<br />\r\n<br />\r\nEquipage candidature : /crews/c/54<br />\r\n- Tu devrais rapeller le nom de l&#39;&eacute;quipage ou tu postules en h1 (Candid: Starfoul)<br />\r\n- Bouton envoyer d&eacute;gueulasse<br />\r\n- Pas de confirmation lors de l&#39;envoi et on reste bloqu&eacute; sur la page<br />\r\n<br />\r\nEquipage Accueil du sien : /crews/index<br />\r\n- Liste des candid &gt; par bouton icon<br />\r\n- Modifier text &gt; par bouton icon<br />\r\n- G&eacute;rer rang membres &gt; par bouton icon<br />\r\n- &quot;Donner le lead&quot; &agrave; retirer<br />\r\n- Forum &gt; par bouton icon<br />\r\n- Quitter &eacute;quipage &gt; par bouton icon<br />\r\n<br />\r\nMonCompte : /account<br />\r\n- Navigation par icon + text serait mieux<br />\r\n<br />\r\nMessagerie : /messaging<br />\r\n- Re&ccedil;us/Envois pas au m&ecirc;me niveau que la page de mon compte<br />\r\n- Ergonomie &agrave; revoir<br />\r\n- Nouveau / Supprimer / R&eacute;pondre : par bouton icon<br />\r\n- Il faudrait que les messages avec la m&ecirc;me personne soit sur un m&ecirc;me &quot;flux&quot;<br />\r\n- Quand on veut &quot;tout supprimer&quot;, passer par une confirmation<br />\r\n<br />\r\nMessagerie r&eacute;ponse : /messaging/write/...<br />\r\n- On devrait pouvoir &eacute;crire par d&eacute;faut au dessus de la citation<br />\r\n- Bouton d&#39;envoi d&eacute;gueulasse<br />\r\n<br />\r\n<br />\r\nTODO Dev<br />\r\n============================<br />\r\n<br />\r\nRenommer /users/list -&gt; /users/connected<br />\r\nRenommer /users/index -&gt; /users/directory</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&Eacute;dit&eacute; par Dumbeldor le 08/11/2015 &agrave; 00h43</em></p>\r\n',1446989722,0,22,1),(46,'Votre forum privé vien d\'être mis en ligne.\r\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie \"forum\", dans le cas contraire ils pourront le consulter uniquement via au lien dans l\'index de l\'équipage !\r\n						  Bon jeu.',1446991689,0,52,13),(48,'Votre forum privé vien d\'être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie \"forum\", dans le cas contraire ils pourront le consulter uniquement via au lien dans l\'index de l\'équipage !\n						  Bon jeu.',1447258570,0,54,13),(49,'Premier message du forum des marines !',5487412,0,55,13),(53,'Votre forum privé vien d\'être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie \"forum\", dans le cas contraire ils pourront le consulter uniquement via au lien dans l\'index de l\'équipage !\n						  Bon jeu.',1447263925,0,56,13),(54,'<p>dfd</p>\r\n',1447263940,0,56,46),(55,'Bienvenue dans votre forum privé noble pirate !',5487412,0,57,13),(56,'Bienvenue dans le forum privé des révolutionnaire !<br>\r\nBon jeu !',5487412,0,58,13),(57,'<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href=\"http://img11.hostingpics.net/pics/552854BDH.png\"><img alt=\"\" src=\"http://img11.hostingpics.net/pics/552854BDH.png\" style=\"height:300px; width:700px\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Bonjour et bienvenu dans le BDH &eacute;dition Duo gagnant n&deg;1 !</strong></tt></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p><tt>Quel est donc le BDH ? Le BDH est un tournoi opposant des &eacute;quipes de combattants dans des combats &agrave; mort!</tt></p>\r\n\r\n<p><tt>Comment ce d&eacute;roulerons les combats ? Quels sont les r&egrave;gles ? Comment formez une &eacute;quipe ?</tt></p>\r\n\r\n<p><tt>Ne vous affolez pas, je vais vous expliquez en d&eacute;tail le d&eacute;roulement de cette animation ainsi que les r&egrave;gles &agrave; suivre pour participer.</tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt>Le BDH &eacute;dition Duo est un tournoi ou s&#39;affrontent des &eacute;quipes de 2 combattants, chaque joueurs peut choisir jusqu&#39;&agrave; 4 combattant pour les repr&eacute;senter.</tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><tt><span style=\"color:#FF0000\">- Les personnages choisit doivent &ecirc;tre tir&eacute; d&#39;un univers &quot;manga&quot; ou &quot;anim&eacute;&quot; dans la limite du raisonnable. (pas de hentai)</span></tt></strong></p>\r\n\r\n<p><strong><tt><span style=\"color:#FF0000\">- Les joueurs doivent cr&eacute;e eux-m&ecirc;me l&#39;avatar qui repr&eacute;sentera leur personnage ou me donner assez de renseignements pour pouvoir le cr&eacute;e.</span></tt></strong></p>\r\n\r\n<p><strong><span style=\"color:#FF0000\"><tt>- Pas de double compte et je vous demande de voter pour le personnage et non pour le joueur en question</tt>.&nbsp;<img alt=\"cool\" src=\"http://dev.minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/shades_smile.png\" style=\"height:23px; width:23px\" title=\"cool\" /></span></strong></p>\r\n\r\n<p><strong><span style=\"color:#FF0000\"><tt>- La triche est autoris&eacute; seulement pour me faire gagner!</tt>&nbsp;<img alt=\"yes\" src=\"http://dev.minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/thumbs_up.png\" style=\"height:23px; width:23px\" title=\"yes\" /></span></strong></p>\r\n\r\n<p><strong><span style=\"color:#FF0000\"><tt>- La taille pour l&#39;avatar est de 125x250 merci de respecter les dimensions.</tt></span></strong></p>\r\n\r\n<p><strong><tt><span style=\"color:#FF0000\">- Impossible de choisir un personnage d&eacute;j&agrave; attribu&eacute; &agrave; un autre joueur.</span></tt></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<img src=\"http://img15.hostingpics.net/pics/386215Kakashi2.png\" />&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;<strong> L&#39;&eacute;quipe du <span style=\"color:#FF0000\">br&ucirc;lant </span>et de <span style=\"color:#FFD700\">l&#39;&eacute;lectrique&nbsp;</span>!&nbsp;&nbsp;</strong>&nbsp; &nbsp; &nbsp; &nbsp;<img src=\"http://img15.hostingpics.net/pics/529614Roy5.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; <img src=\"http://img15.hostingpics.net/pics/199310Sasuke.png\" />&nbsp;&nbsp; &nbsp; &nbsp;<strong>&nbsp; &nbsp;L&#39;&eacute;quipe Om&eacute;ga Blazer!</strong>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src=\"http://img15.hostingpics.net/pics/786265Vegeta.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt>Voici mes deux &eacute;quipes, l&#39;une est compos&eacute; de <strong>Kakashi et Roy</strong>, l&#39;autre de <strong>Sasuke&nbsp;et Vegeta</strong>!</tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><tt><span style=\"color:#000000\">Les inscriptions sont ouverte pour une dur&eacute;e approximative d&#39;une semaine.</span></tt></strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><span style=\"font-size:8px\">&Eacute;dit&eacute; par Riyuma le 11/11/2015 &agrave; 08h24</span></em></p>\r\n\r\n<p>&nbsp;</p>\r\n',1447265560,0,61,51),(58,'<blockquote>\r\n<pre>\r\n<span style=\"color:#000000\"><strong><span class=\"marker\"><span style=\"background-color:#FFFF00\">Suite &agrave; la fermeture de la V2 (minegame) Dumbeldor a \r\ntout de m&ecirc;me propos&eacute; une re-cr&eacute;ation du topic d&#39;Enelos\r\n concernant les id&eacute;es et futurs modifications qui seront \r\napport&eacute; &agrave; la mise &agrave; jours de One Piece Rpg (V2.5)</span></span>\r\n\r\n<span class=\"marker\"><span style=\"background-color:#FFFF00\">Je vous repr&eacute;sente donc le topic comme je peux, \r\nen esp&eacute;rant n&#39;avoir oublier aucune id&eacute;e \r\nqui avait &eacute;t&eacute; &eacute;mis sur Minegame (V2).</span></span></strong></span></pre>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#000000\"><tt>Bon, je pense qu&#39;on a laiss&eacute; le topic sur la proposition assez longtemps pour voir que globalement vous &eacute;tiez pour une raz et une am&eacute;lioration de la V2. </tt></span></p>\r\n\r\n<p><span style=\"color:#000000\"><tt>Ce topic va cette fois-ci servir &agrave; proposer vos id&eacute;es. Mais les choses doivent se faire de la mani&egrave;re la plus propre et ordonn&eacute;e possible.&nbsp;</tt></span></p>\r\n\r\n<p><tt><span style=\"color:#000000\">Tout d&#39;abord nous allons nous concentrer sur </span><strong><span style=\"color:#FF8C00\">les id&eacute;es r&eacute;alisables &agrave; court terme.</span></strong></tt></p>\r\n\r\n<p><span style=\"color:#000000\"><tt>Par court terme j&#39;entends par l&agrave;, les id&eacute;es que l&#39;on peut r&eacute;aliser tr&egrave;s rapidement, dans l&#39;imm&eacute;diat ou disons en 1 semaine ou 2 maximum.</tt></span></p>\r\n\r\n<p><span style=\"color:#000000\"><tt>Un autre topic sera cr&eacute;e une fois la V2.5 ouverte, pour les id&eacute;es &agrave; long terme et &agrave; court terme si vous en avez d&#39;autres, mais pour l&#39;instant restons concentr&eacute;s sur les id&eacute;es &agrave; court terme.</tt></span></p>\r\n\r\n<p><span style=\"color:#000000\"><tt>Comme je l&#39;ai pr&eacute;cis&eacute; au-dessus, tout doit &ecirc;tre fait de mani&egrave;re ordonn&eacute;e, et vous devez suivre le sch&eacute;ma suivant :</tt></span></p>\r\n\r\n<p><strong><tt><span style=\"color:#008000\">- Localisation : Vous devez indiquer ou votre id&eacute;e doit &ecirc;tre modifi&eacute;e. Cela nous permet de nous rendre compte de chaque &eacute;l&eacute;ment qui pourrait &ecirc;tre &agrave; modifier dans l&#39;id&eacute;e.</span></tt></strong></p>\r\n\r\n<p><strong><tt><span style=\"color:#008000\">- Id&eacute;e : L&agrave; c&#39;est le moment o&ugrave; vous devez expliquer votre id&eacute;e, essayez d&#39;&ecirc;tre le plus clair possible. Ne faites pas 20 lignes si vous pouvez en faire 2, mais soyez clairs. Cette partie ne concerne que l&#39;id&eacute;e, et non pas pourquoi cette id&eacute;e doit &ecirc;tre accept&eacute;e.</span></tt></strong></p>\r\n\r\n<p><strong><tt><span style=\"color:#008000\">- Autre(facultatif) : Tout ce que vous pouvez dire de plus qui ne concerne pas l&#39;id&eacute;e en elle-m&ecirc;me, mais qui y est li&eacute; comme des arguments pour faire valider votre id&eacute;e par exemple.</span></tt></strong></p>\r\n\r\n<p><strong><span style=\"color:#000000\"><tt>Je ne vais pas non plus vous demander 50 000 informations, je pense que &ccedil;a reste assez clair comme &ccedil;a, je vais vous donne un exemple histoire de bien vous montrer la marche &agrave; suivre :</tt></span></strong></p>\r\n\r\n<p><br />\r\n<tt><em>- Localisation : Sur les &icirc;les, chez tous les marchands</em></tt></p>\r\n\r\n<p><tt><em>- Id&eacute;e : Changer les prix des objets et potions</em></tt></p>\r\n\r\n<p><tt><em>- Autre : Les prix sont trop chers par rapport &agrave; ce que l&#39;on gagne, et par rapport au prix de vente constat&eacute; &agrave; Jaya.</em></tt></p>\r\n\r\n<p><br />\r\n<tt>Voil&agrave; un exemple tout b&ecirc;te de modification.</tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong><span style=\"color:#FF0000\"><em><ins>La V2 sur onepiece-rpg.fr n&#39;est pas encore ouverte</ins>, et nous ne pouvons l&#39;ouvrir actuellement &eacute;tant donn&eacute; que nous travaillons dessus. Utilisez donc la V3 communautaire&nbsp;sur minegame.fr si vous avez besoin d&#39;utiliser une base concernant vos id&eacute;es.</em></span></strong></tt></p>\r\n\r\n<p><tt><strong><span style=\"color:#FF0000\"><em>Ce topic n&#39;est pas l&agrave; pour donner vos avis sur les id&eacute;es propos&eacute;es, sinon le topic risque de se diriger dans tous les sens, donc pour la moindre question ou si vous voulez parler de certaines id&eacute;es, vous pouvez cr&eacute;er un nouveau topic pour tous. Ca fait encore un topic en plus, mais &ccedil;a restera je pense plus clair.</em></span></strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><span style=\"font-size:8px\">&Eacute;dit&eacute; par Riyuma le 09/11/2015 &agrave; 12h01</span></em></p>\r\n\r\n<p>&nbsp;</p>\r\n',1447265651,0,62,51),(59,'<p>&nbsp;</p>\r\n\r\n<div style=\"background:#eee; border:1px solid #ccc; padding:5px 10px\"><tt><span style=\"color:#000000\">Id&eacute;es Riyuma</span></tt></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><tt><strong>Mettre en place le Design qu</strong></tt><tt><strong>&#39;avais fait Gekko en maquette. (il convient &agrave; une V2)</strong></tt></li>\r\n	<li><tt><strong>Modifier les troph&eacute;es, Suzuran a normalement tout cr&eacute;e pour pouvoir en profiter.</strong></tt></li>\r\n	<li><tt><strong>Changer quelques d&eacute;fis, en rajouter et en supprimer quelques-uns.</strong></tt></li>\r\n	<li><tt><strong>Remettre la chasse actuel bien meilleur que l&#39;ancienne.</strong></tt></li>\r\n	<li><tt><strong>R&eacute;-activer le changement de ratio.</strong></tt></li>\r\n	<li><tt><strong>Ouverture de l&#39;&eacute;quipage des r&eacute;volutionnaires.&nbsp;</strong></tt></li>\r\n	<li><tt><strong>Ajouter 1 GE par &icirc;le dont 2 marrons (Smiley &amp; Hannyabal) + Modification des tactiques.</strong></tt></li>\r\n	<li><tt><strong>Modification des comp&eacute;tences, ajout des comp&eacute;tences &quot;Malus&quot; : Le joueurs gagne 20% de pv mais</strong></tt>&nbsp;<tt><strong>perd 20% de force etc... j&#39;peux faire un tableau.</strong></tt></li>\r\n	<li><tt><strong>Si Suzuran a effectuer un travail sur les CPU/&icirc;les en couleur ils faut les int&eacute;grer au jeu.</strong></tt></li>\r\n	<li><tt><strong>Une nouvelle DDM plus &quot;attractive&quot; ?</strong></tt></li>\r\n	<li><tt><strong>Un seul et m&ecirc;me serveur</strong></tt></li>\r\n	<li><tt><strong>Envoi de popo en masse (au lieu de une par une)</strong></tt></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Localit&eacute; : Oprpg /o/ , &eacute;quipage<br />\r\n<br />\r\nId&eacute;e : Que le capitaine puisse emprunter de l&#39;argent &agrave; une banque, pour dire de pouvoir avoir quelques places, la somme arrive directement dans le tr&eacute;sor et dois &ecirc;tre rembourser sinon l&#39;&eacute;quipage subit un malus de point<br />\r\n<br />\r\nAutre : J&#39;aime les chats, si &ccedil;a peut t&#39;aider :*</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Localit&eacute; : Mon compte&nbsp;<br />\r\n<br />\r\nId&eacute;e : Envoyer des potions et des objets de forge en masse</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Localit&eacute; : DDM<br />\r\n<br />\r\nId&eacute;e : Chaque &eacute;quipage choisit un h&eacute;ros &agrave; la cr&eacute;ation de celui-ci entre 7 personnages, plus l&#39;&eacute;quipage prend de l&#39;exp plus l&#39;h&eacute;ros monte de level.<br />\r\nUne fois une &icirc;le capturer le h&eacute;ros ce pose sur l&#39;&icirc;le, au d&eacute;but il est pas super fort mais impossible &agrave; g&eacute;rer seul. Si le h&eacute;ros ce trouve en difficult&eacute; il mp automatiquement tous les membres connect&eacute; de l&#39;&eacute;quipage genre &quot;On m&#39;attaque, je demande de l&#39;aide&quot;.<br />\r\nCe h&eacute;ros est modifiable par le capitaine, on peut soit lui donner de la vitalit&eacute; soit de la puissance.<br />\r\nLe m&eacute;decin peut soigner le h&eacute;ros mais seulement lui.<br />\r\n<br />\r\nAutre : Dans le futur, pourquoi pas propos&eacute; une &eacute;volution pour le h&eacute;ros comme passer d&#39;un h&eacute;ros Zoro &agrave; un h&eacute;ros Mihawk&nbsp;</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Localisation : partout partout :$<br />\r\n<br />\r\nId&eacute;e : Qu&#39;on puisse tomber sur un cpu &quot;or&quot; quand on pex, celui-ci sera plus dur &agrave; affronter mais on peut lui donner des gains/drop sup&eacute;rieur au reste selon sa raret&eacute;.</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Localisation : D&eacute;fis<br />\r\n<br />\r\nPremier classement kills : Le personnage Z&eacute;phir<br />\r\nAvoir &eacute;t&eacute; connect&eacute; 14 jours d&#39;affil&eacute; : Titre &quot;Sqouatteur&quot;<br />\r\nTrouver le costume de Moria dans un &quot;cadeau sombre&quot; : Moria<br />\r\n(On ne peut drop des cadeaux sombre que sur les GE de Thriller Bark et FT)<br />\r\nPareil pour Perona , Ryuma et OZ, d&eacute;blocable seulement gr&acirc;ce aux cadeaux sombre. (le classement : Perona &gt; Ryuma &gt; Moria &gt; Oz)<br />\r\nAvoir vaincu 50 Ace en ar&egrave;ne : personnage Barbe noire&nbsp;<br />\r\nAvoir effectuer 30 allopass : personnage Banquier&nbsp;<br />\r\nAvoir changer de personnage 50 fois : Mr2<br />\r\n<br />\r\nJ&#39;peux en faire encore mais bon faut voir les &quot;int&eacute;ressant&quot;&nbsp;</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"background:#eee; border:1px solid #ccc; padding:5px 10px\"><tt>Id&eacute;es Benevolar<em>&nbsp;</em></tt></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>localit&eacute; : Little Garden<br />\r\n<br />\r\nid&eacute;e : proposer chaque jour un familier al&eacute;atoire qui sera vendu plus cher au g&eacute;ant.<br />\r\n<br />\r\nautre : g&eacute;n&eacute;ralement soit on vend tout soit on fait une collection, &ccedil;a serait bien pour donner un peu plus d&#39;int&eacute;r&ecirc;t &agrave; la chasse</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>localit&eacute; : Wiskey Peak<br />\r\n<br />\r\nid&eacute;e : modifier les formules qui permettent de cuisiner (quitte &agrave; rajouter de nouveaux ingr&eacute;dients tel que des familiers ou modifier le taux de drop de certains)<br />\r\n<br />\r\nautre : Actuellement cuisiner c&#39;est de l&#39;arnaque &agrave; part pour les jambons et encore les pollenargent sont super rare.</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Localit&eacute; : pex<br />\r\n<br />\r\nid&eacute;e : faire en sorte qu&#39;on puisse se battre &agrave; la fois sur l&#39;&icirc;le de notre niveau mais aussi sur les &icirc;les pr&eacute;c&eacute;dentes (avec un gain d&#39;exp inf&eacute;rieur) et faire en sorte que chaque &icirc;le ait son lot d&#39;objet &agrave; drop.<br />\r\n<br />\r\nautre : j&#39;ai pas mis les pieds &agrave; Water Seven depuis des lustres.</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Un pi&egrave;ge pourra &ecirc;tre plac&eacute; sur une des cases de la grille. Si un animal passe dessus il peut &ecirc;tre captur&eacute; (plusieurs types de pi&egrave;ge pour plusieurs couleur de familier). Il y aura un nombre de pi&egrave;ge max &agrave; placer sur la grille qui varie en fonction de notre niveau de p&ecirc;che/chasse (une nouvelle barre qui se remplie avec la capture de familier). Au bout de X niveaux de p&ecirc;che on d&eacute;bloque des pi&egrave;ges de niveau sup&eacute;rieur et des app&acirc;ts (&ccedil;a renforce les chances que l&#39;animal se d&eacute;place dans notre direction ou celui du pi&egrave;ge si on d&eacute;cide de combiner pi&egrave;ge + app&acirc;t)</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"background:#eee; border:1px solid #ccc; padding:5px 10px\"><tt>Id&eacute;es des autres joueurs<strong> </strong></tt></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Localit&eacute; : Section &eacute;quipage, toutes les iles<br />\r\n<br />\r\nId&eacute;e : Donn&eacute; un sens au place dans l&#39;&eacute;quipage exemple: chasseur, lorsqu&#39;il attrape un animal cela donne des points a son &eacute;quipage<br />\r\nm&eacute;decin, peut faire boire directement une popo a son camarade<br />\r\ncharpentier, peut faire construire un bateau avec l&#39;accord de son capitaine<br />\r\n...<br />\r\n<br />\r\nAutre : Ce serait pas mal si, en tant que capitaine, ont pourrait &quot;mute&quot; certaine personne sur la salle 1.?</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong>Localit&eacute;: Ar&egrave;ne de GOA<br />\r\n<br />\r\nId&eacute;e: Mon id&eacute;e mes venu comme &ccedil;a. Dans l&#39;ar&egrave;ne de Goa, c&#39;est bien en &eacute;quipage, mais &agrave; la fin de l&#39;ar&egrave;ne,il ne se passe rien au niveau des points d&#39;&eacute;quipage.<br />\r\nDonc j&#39;ai penser aux nombres de survivants du m&ecirc;me &eacute;quipage pourraient donner les points &agrave; l&#39;&eacute;quipage. Par exemple, il reste 10 membres de l&#39;&eacute;quipage &agrave; la fin de l&#39;ar&egrave;ne, cela va donc donner 10 points &agrave; l&#39;&eacute;quipage.J&#39;esp&egrave;re avoir &eacute;t&eacute; assez clair.<br />\r\n<br />\r\n<br />\r\nLocalit&eacute;: Pex (et peut &ecirc;tre Mon compte)<br />\r\n<br />\r\nId&eacute;e: A chaque fois qu&#39;on utilise une attaque elle gagne de &quot;l&#39;exp&eacute;rience&quot; et quand elle en a gagn&eacute; assez on d&eacute;bloque l&#39;attaque suivante plus forte de la m&ecirc;me cat&eacute;gorie (avant on les d&eacute;bloquait en montant de niveau et c&#39;&eacute;tait fixe) la barre de progression serait soit en pex soit dans les r&eacute;putations<br />\r\n<br />\r\n(Peut &ecirc;tre aussi appliqu&eacute; en JcJ et en Ge)<br />\r\n<br />\r\n<br />\r\nLocalit&eacute; : &Eacute;quipage<br />\r\n<br />\r\nId&eacute;e : Nous pr&eacute;venir quand quelqu&#39;un quitte l&#39;&eacute;quipage pour &eacute;viter de chercher :/<br />\r\n<br />\r\nAutre : Juste comme &ccedil;a...</strong></tt></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><tt><strong><strong>Localisation&nbsp;: Sur une &icirc;le , je verrais bien Sabaody (Ou Skipiea pour que &ccedil;a soit accessible &agrave; plus de monde)<br />\r\n<br />\r\nId&eacute;e&nbsp;: L&#39;id&eacute;e &ccedil;a serait tout simplement qu&#39;un PNJ propose des qu&ecirc;tes/missions r&eacute;guli&egrave;rement, genre 1 fois par semaine avec un certain degr&eacute; de difficult&eacute;s. Puis selon la difficult&eacute; les r&eacute;compenses seront diff&eacute;rentes (Personnage,berrys,objets etc...)<br />\r\n<br />\r\n<em>Exemple de missions :</em>&nbsp;<br />\r\n- Faire X prime en X temps<br />\r\n- Chasser X fois un familier&nbsp;<br />\r\n- Faire X Kill en X temps<br />\r\n- Ramener X objets/Ingr&eacute;dients au PNJ<br />\r\n<br />\r\nAutre&nbsp;: Il me semble qu&#39;une personne avait d&eacute;j&agrave; propos&eacute; une id&eacute;e similaire il y a quelque temps qui avait &eacute;t&eacute; laisser &agrave; l&#39;abandon.</strong></strong></tt><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><span style=\"font-size:8px\">&Eacute;dit&eacute; par Riyuma le 09/11/2015 &agrave; 12h48</span></em></p>\r\n\r\n<p>&nbsp;</p>\r\n',1447265671,0,62,51),(60,'Votre forum privé vien d\'être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie \"forum\", dans le cas contraire ils pourront le consulter uniquement via au lien dans l\'index de l\'équipage !\n						  Bon jeu.',1447265735,0,63,13),(61,'<p>test</p>\r\n',1447265744,0,63,1),(63,'<p>test</p>\r\n',1447265998,0,53,34),(65,'<p>sdfsdf</p>\r\n',1447266011,0,53,34),(67,'Votre forum privé vien d\'être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie \"forum\", dans le cas contraire ils pourront le consulter uniquement via au lien dans l\'index de l\'équipage !\n						  Bon jeu.',1447269188,1,64,13),(68,'Votre forum privé vien d\'être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie \"forum\", dans le cas contraire ils pourront le consulter uniquement via au lien dans l\'index de l\'équipage !\n						  Bon jeu.',1447271752,0,65,13),(69,'Votre forum privé vien d\'être mis en ligne.\n					      Gardez un topic minimum ouvert pour que vos membres puissent le voir directement dans la partie \"forum\", dans le cas contraire ils pourront le consulter uniquement via au lien dans l\'index de l\'équipage !\n						  Bon jeu.',1447294795,0,69,13),(70,'<p>effs</p>\r\n',1447329841,1,3,63),(71,'<p>fdsfd</p>\r\n',1447329880,1,70,63),(72,'<p>fdsfd</p>\r\n',1447329880,1,71,63),(73,'<p>Test</p>\r\n',1447330004,1,70,1),(74,'<?php écho \'test\'; ?>',1447330038,1,70,1),(75,'<p>test</p>\r\n',1447331591,1,22,1),(76,'<p>gfdgdgfd</p>\r\n',1447331605,1,72,1),(77,'<p>dfgfdgfd</p>\r\n',1447331609,1,72,1),(78,'<p><code><span style=\"font-family:georgia,serif\">Que ce qui m&#39;aime me suive&nbsp;<img alt=\"heart\" src=\"http://dev.minegame.fr/assets/js/ckeditorVIP/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /></span></code></p>\r\n\r\n<p><code><span style=\"font-family:georgia,serif\">Outre les anciens <strong>DNK </strong>vous pourrez postuler en fournissant <strong>une lettre de motivation</strong>.&nbsp;</span></code></p>\r\n\r\n<p><code><span style=\"font-family:georgia,serif\">Lvl 0&nbsp;mini lel</span></code></p>\r\n<p></p><em><span style=\"font-size:8px\">Édité par Riyuma le 12/11/2015 à 13h49</span></em></p>',1447332530,0,73,51),(79,'',1447332685,1,73,51),(80,'',1447332695,1,73,51),(81,'',1447332703,1,73,51),(82,'',1447332712,1,73,51),(83,'',1447332730,1,73,51),(84,'',1447332738,1,73,51),(85,'',1447332747,1,73,51),(86,'',1447332757,1,73,51),(87,'',1447332765,1,73,51),(88,'<ul>\r\n	<li><strong><span style=\"color:#FF0000\">Pour qu&#39;un post soit compter il doit &ecirc;tre s&eacute;par&eacute; d&#39;une heure avec l&#39;ancien post</span></strong></li>\r\n	<li><strong><span style=\"color:#FF0000\">Il est interdit de spam</span></strong></li>\r\n	<li><strong><span style=\"color:#FF0000\">Insulter est conseill&eacute;&nbsp;</span></strong></li>\r\n	<li><strong><span style=\"color:#FF0000\">Les points reste basique</span></strong></li>\r\n</ul>\r\n\r\n<p><strong><span style=\"color:#000000\">Bon jeu bande de fils de pouple!</span></strong></p>\r\n',1447333166,0,74,51),(89,'<ol>\r\n	<li><tt><strong><span style=\"color:#FF0000\">Le parlag cent fote c&#39;import&#39;en f&ecirc;t 1 &eacute;ffaur</span></strong></tt></li>\r\n	<li><tt><strong><span style=\"color:#FF0000\">Il est conseill&eacute; de vanner Zogene sur le fait qu&#39;il sera encore puceau &agrave; 40 ans</span></strong></tt></li>\r\n	<li><tt><strong><span style=\"color:#FF0000\">On supporte le Real Madrid et Lyon merci de respecter cette r&egrave;gle primordiale&nbsp;</span></strong></tt></li>\r\n	<li><tt><strong><span style=\"color:#FF0000\">Ne jamais rien donn&eacute; &agrave; Eustass</span></strong></tt></li>\r\n	<li><tt><strong><span style=\"color:#FF0000\">Vous pouvez spoil Kmy c&#39;est m&ecirc;me conseill&eacute;</span></strong></tt></li>\r\n</ol>\r\n\r\n<p><strong>Amen!</strong></p>\r\n',1447333592,0,75,51),(90,'<p><span style=\"font-size:36px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; New n&deg;1 :&nbsp;</span><em><strong><span style=\"font-size:24px\">Le commencement</span></strong></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"background:#eee;border:1px solid #ccc;padding:5px 10px;\"><span style=\"font-size:24px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;<span style=\"color:#FF0000\"><strong>Pr&eacute;sentation</strong></span></span></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\">Bonjour et bienvenu sur le jeu &quot;MineGame&quot; qui est la suite du c&eacute;l&egrave;bre site one-piece-rpg. (Le nom du jeu est provisoire et sera susceptible de changer dans les prochains jours.</span></p>\r\n\r\n<p><span style=\"font-size:15.555556297302246px\">Tout d&#39;abord le projet &quot;minegame&quot; est r&eacute;alis&eacute; par des fans pour&nbsp;des fans, le staff travail b&eacute;n&eacute;volement pour vous cr&eacute;e un jeu complet, additif et plaisant visuellement. Nous sommes des amateurs avide d&#39;apprendre de nouvelle chose pour vous en faire profiter.</span></p>\r\n\r\n<p><span style=\"font-size:15.555556297302246px\">Parlons maintenant du jeu en lui-m&ecirc;me, la sortie officielle est pr&eacute;vu pour le 12/11/2015 dans la soir&eacute;e et vous sera pr&eacute;senter sous la forme communautaire, ce qui signifie qu&#39;un forum, un tchat et bien d&#39;autres fonctionnalit&eacute;s vous sera proposer mais pas de r&eacute;el &quot;jeu&quot;. Les prochaines semaines risque de beaucoup bouger et verra le site &eacute;voluer, on esp&egrave;re, positivement.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"background:#eee;border:1px solid #ccc;padding:5px 10px;\"><span style=\"font-size:24px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"color:#FF0000\"><strong>Staff</strong></span></span></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span style=\"font-size:18px\"><span style=\"color:#FF0000\">Dumbeldor&nbsp;(Admin):</span><em><span style=\"color:#000000\">&nbsp;</span></em></span></strong><em><span style=\"font-size:18px\"><span style=\"color:#000000\">Il est le chef du projet et un d&eacute;veloppeur extr&ecirc;mement dou&eacute;, sans lui le site n&#39;aurai s&ucirc;rement jamais vu le jour.</span></span></em></p>\r\n\r\n<p><strong><span style=\"color:#FF8C00\"><span style=\"font-size:18px\">Sumo (Co-admin) : </span></span></strong><span style=\"font-size:18px\"><span style=\"color:#000000\"><em>C&#39;est vraiment une fille g&eacute;niale, elle s&#39;occupe du Dev&#39; et de la bonne ambiance au sein de l&#39;&eacute;quipe, elle fait des merguez comme personne.</em></span></span></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"><span style=\"color:#008080\">Riyuma (Animateur) :&nbsp;</span></span></strong><span style=\"font-size:18px\"><em><span style=\"color:#000000\">Il va s&#39;occuper de l&#39;animation du site, de vous faire patienter comme il peut jusqu&#39;&agrave; que le jeu en lui-m&ecirc;me n&#39;arrive. Tr&egrave;s dou&eacute; pour faire des topics, beau et myst&eacute;rieux, &agrave; n&#39;en pas dout&eacute; notre meilleur recrue.</span></em></span></p>\r\n\r\n<p><span style=\"font-size:17.77777862548828px\"><strong><span style=\"color:#00FF00\">Maniak (Mod&eacute;rateur) :</span>&nbsp;</strong></span><span style=\"font-size:17.77777862548828px\"><span style=\"color:#000000\"><em>Ayant d&eacute;j&agrave; fait ses preuves sur la V2 de onepiece-rpg il &eacute;tait &eacute;vident pour nous de le r&eacute;cup&eacute;rer parmi nous. Il&nbsp;aide aussi gr&acirc;ce &agrave; ses talent en pixel art.</em></span></span><span style=\"font-size:17.77777862548828px\"><span style=\"color:#000000\"><em>&nbsp;Attention, le sh&eacute;rif du site.</em></span></span></p>\r\n\r\n<p><span style=\"color:#00FF00\"><span style=\"font-size:18px\"><strong>Kalivia (Mod&eacute;ratrice) :</strong></span></span><span style=\"font-size:18px\"><span style=\"color:#000000\"><em>&nbsp;Le quotas nous obligeant &agrave; prendre une fille, c&#39;est tomb&eacute; sur elle... Plus s&eacute;rieusement, elle est l&agrave; pour faire r&eacute;gner l&#39;ordre et donner un coup de main en pixel art. (Oui elle aussi)</em></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span style=\"font-size:22px\"><tt>En esp&eacute;rant vous retrouvez sur le jeu, l&#39;&eacute;quipe du site vous souhaite d&#39;agr&eacute;ables moments.</tt></span></strong></p>\r\n\r\n<p><span style=\"color:#4B0082\"><em><strong><span style=\"font-size:22px\"><tt><span style=\"background-color:#FAEBD7\">#LeStaff</span></tt></span></strong></em></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"http://img11.hostingpics.net/pics/123632Comm.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style=\"font-size:8px\">Édité par Riyuma le 12/11/2015 à 15h38</span></em></p>',1447337423,1,76,51),(91,'<p style=\"text-align:center\">&nbsp; &nbsp; &nbsp; &nbsp;<span style=\"font-size:28px\"> &nbsp;New n&deg;1 :</span><span style=\"font-size:22px\">&nbsp;<em><strong>Le commencement</strong></em></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"background-color: rgb(238, 238, 238); border: 1px solid rgb(204, 204, 204); padding: 5px 10px; text-align: center; background-position: initial initial; background-repeat: initial initial;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"font-size:22px\"><span style=\"color:#FF0000\">&nbsp; &nbsp; &nbsp;<strong>Pr&eacute;sentation</strong></span></span></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bonjour et bienvenu sur le jeu &quot;MineGame&quot; qui est la suite du c&eacute;l&egrave;bre site one-piece-rpg. (Le nom du jeu est provisoire et sera susceptible de changer dans les prochains jours.</p>\r\n\r\n<p>Tout d&#39;abord le projet &quot;minegame&quot; est r&eacute;alis&eacute; par des fans pour&nbsp;des fans, le staff travail b&eacute;n&eacute;volement pour vous cr&eacute;e un jeu complet, additif et plaisant visuellement. Nous sommes des amateurs avide d&#39;apprendre de nouvelle chose pour vous en faire profiter.</p>\r\n\r\n<p>Parlons maintenant du jeu en lui-m&ecirc;me, la sortie officielle est pr&eacute;vu pour le 12/11/2015 dans la soir&eacute;e et vous sera pr&eacute;senter sous la forme communautaire, ce qui signifie qu&#39;un forum, un tchat et bien d&#39;autres fonctionnalit&eacute;s vous sera proposer mais pas de r&eacute;el &quot;jeu&quot;. Les prochaines semaines risque de beaucoup bouger et verra le site &eacute;voluer, on esp&egrave;re, positivement.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"background-color: rgb(238, 238, 238); border: 1px solid rgb(204, 204, 204); padding: 5px 10px; text-align: center; background-position: initial initial; background-repeat: initial initial;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"font-size:22px\"><span style=\"color:#FF0000\"><strong>Staff</strong></span></span></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#FF0000\"><strong>Dumbeldor&nbsp;(Admin):<em>&nbsp;</em></strong></span><em>Il est le chef du projet et un d&eacute;veloppeur extr&ecirc;mement dou&eacute;, sans lui le site n&#39;aurai s&ucirc;rement jamais vu le jour.</em></p>\r\n\r\n<p><span style=\"color:#FF8C00\"><strong>Sumo (Co-admin) : </strong></span><em>C&#39;est vraiment une fille g&eacute;niale, elle s&#39;occupe du Dev&#39; et de la bonne ambiance au sein de l&#39;&eacute;quipe, il fait des merguez comme personne.</em></p>\r\n\r\n<p><span style=\"color:#008080\"><strong>Riyuma (Animateur) :&nbsp;</strong></span><em>Il va s&#39;occuper de l&#39;animation du site, de vous faire patienter comme il peut jusqu&#39;&agrave; que le jeu en lui-m&ecirc;me n&#39;arrive. Tr&egrave;s dou&eacute; pour faire des topics, beau et myst&eacute;rieux, &agrave; n&#39;en pas dout&eacute; notre meilleur recrue.</em></p>\r\n\r\n<p><span style=\"color:#00FF00\"><strong>Maniak (Mod&eacute;rateur) :&nbsp;</strong></span><em>Ayant d&eacute;j&agrave; fait ses preuves sur la V2 de onepiece-rpg il &eacute;tait &eacute;vident pour nous de le r&eacute;cup&eacute;rer parmi nous. Il&nbsp;aide aussi gr&acirc;ce &agrave; ses talent en pixel art.</em><em>&nbsp;Attention, le sh&eacute;rif du site.</em></p>\r\n\r\n<p><span style=\"color:#00FF00\"><strong>Kalivia (Mod&eacute;ratrice) :</strong></span><em><span style=\"color:#00FF00\">&nbsp;</span>Le quotas nous obligeant &agrave; prendre une fille, c&#39;est tomb&eacute; sur elle... Plus s&eacute;rieusement, elle est l&agrave; pour faire r&eacute;gner l&#39;ordre et donner un coup de main en pixel art. (Oui elle aussi)</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><tt>En esp&eacute;rant vous retrouvez sur le jeu, l&#39;&eacute;quipe du site vous souhaite d&#39;agr&eacute;ables moments.</tt></strong></p>\r\n\r\n<p><span style=\"color:#4B0082\"><span style=\"font-size:14px\"><em><strong><tt>#LeStaff</tt></strong></em></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"http://img11.hostingpics.net/pics/123632Comm.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&Eacute;dit&eacute; par Riyuma le 12/11/2015 &agrave; 15h11</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&Eacute;dit&eacute; par Riyuma le 12/11/2015 &agrave; 15h11</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><span style=\"font-size:8px\">&Eacute;dit&eacute; par Riyuma le 12/11/2015 &agrave; 15h18</span></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><span style=\"font-size:8px\">&Eacute;dit&eacute; par Riyuma le 12/11/2015 &agrave; 15h19</span></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><span style=\"font-size:8px\">&Eacute;dit&eacute; par Riyuma le 12/11/2015 &agrave; 15h20</span></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><span style=\"font-size:8px\">&Eacute;dit&eacute; par Riyuma le 12/11/2015 &agrave; 15h20</span></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><span style=\"font-size:8px\">&Eacute;dit&eacute; par Riyuma le 12/11/2015 &agrave; 15h23</span></em></p>\r\n\r\n<p>&nbsp;</p>\r\n<p></p><em><span style=\"font-size:8px\">Édité par Riyuma le 12/11/2015 à 15h23</span></em></p>',1447337770,1,77,51),(92,'<p>Salut,</p>\r\n\r\n<p>l&#39;animation se nomme : Tic... Tac...Bip<br />\r\nLe but est d&#39;arriver &agrave; 0. C&#39;est tr&egrave;s simple comme r&egrave;gle !&nbsp;<img alt=\"wink\" src=\"http://dev.minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/wink_smile.png\" style=\"height:23px; width:23px\" title=\"wink\" /></p>\r\n\r\n<hr />\r\n<blockquote>\r\n<p><em><u>Exemple&nbsp;</u>:<br />\r\nA : 5000<br />\r\nB : 4999<br />\r\nC : 4998<br />\r\nA : ...<br />\r\nC&#39;est vraiment simple.<br />\r\nLe premier arriver &agrave; 0 gagne:&nbsp;<br />\r\nS1 = berrys (somme ind&eacute;termin&eacute;e)<br />\r\nS2 = Idem</em></p>\r\n</blockquote>\r\n\r\n<p><strong>Commen&ccedil;ons : 1000</strong></p>\r\n\r\n<hr />\r\n<p>Bon jeu !</p>\r\n',1447349603,0,78,1),(93,'<p>Salut,<br />\r\n<br />\r\nUn petit jeu simple et sympa, il suffit de continuer la phrase du poste juste au dessus. Par exemple trucmuche poste &quot;Il &eacute;tait une fois ....&quot;, une autre personne r&eacute;pond &quot;... un jeune pirate....&quot; et etc...<br />\r\n<br />\r\nDonc je commence :<br />\r\n<br />\r\nIl &eacute;tait une fois ...</p>\r\n',1447349661,0,79,1),(94,'<p>Une petite fille</p>\r\n',1447349717,0,79,54),(95,'<p><strong>Morte.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Fin</em></p>\r\n',1447350727,0,79,51),(96,'<p>Tu es animateur ?&nbsp;<img alt=\"sad\" src=\"http://dev.minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/sad_smile.png\" style=\"height:23px; width:23px\" title=\"sad\" /></p>\r\n',1447353822,0,79,1),(97,'<div>\r\n<div style=\"border: 1px solid rgb(204, 204, 204); padding: 5px 10px; text-align: center; background: rgb(238, 238, 238);\"><span style=\"color:#808080\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:26px\"><strong>Conditions g&eacute;n&eacute;rales d&#39;utilisation</strong></span></span></span></div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n</div>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif\">En vous inscrivants sur le site dev.minegame.fr, vous acceptez que les mod&eacute;rateurs ou les administrateurs du site aient acc&egrave;s &agrave; vos donn&eacute;es personnelles comme votre adresse IP, votre adresse mail,... Vous acceptez &eacute;galement le fait qu&#39;en cas d&#39;abus de votre part aux r&egrave;gles mentionn&eacute;es &nbsp;ci-dessous, les membres de l&#39;&eacute;quipes de mod&eacute;ration ou d&#39;administration aient le droit de vous bannir de fa&ccedil;on temporaire ou d&eacute;finitive de ce site.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><strong>Vie en communaut&eacute; :</strong></span><span style=\"font-size:12px\"><strong>&nbsp;</strong></span></span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">- Evitez le langage SMS, privil&eacute;giez l&#39;&eacute;criture dans un fran&ccedil;ais correct. Il faut que votre &eacute;criture soit un minimum compr&eacute;hensible afin que les autres joueurs puissent vous comprendre.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">- La langue officielle &nbsp;de ce site est le fran&ccedil;ais, veuillez communiquer dans cette langue uniquement afin de rester compr&eacute;hensible. Si vous ne parlez pas le fran&ccedil;ais, utilisez Google Traduction ou un autre site du genre afin de pouvoir communiquer.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">- Il est formellement interdit de faire de la propagande pour un quelconque parti politique ou une quelconque &nbsp;religion. Veuillez respecter les croyances de chacun. Bien entendu, en parler n&#39;est pas interdit du moment que la discution ne d&eacute;borde pas.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">- Aucun propos raciste, homophobe, antis&eacute;mite ou discriminatoire ne sera tol&eacute;r&eacute; ici. Veuillez respecter chaque joueur afin de garder un bonne ambiance au sein de la communaut&eacute;.&nbsp;</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">- La p&eacute;dophilie, la pornographie ou toute d&eacute;bauche sexuelle est formellement interdite. Nous sommes sur un jeu, avec des mineurs ! La p&eacute;dophilie est punie par la loi, tout auteur de message p&eacute;dophile pourra &ecirc;tre poursuivi en justice.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">- Le Caps Lock (&eacute;crire tout en majuscule) est fortement d&eacute;conseill&eacute;. Tout comme le langage SMS, lire un message &eacute;crit enti&egrave;rement en majuscule n&#39;est pas agr&eacute;able. Nous vous demandons donc de vous appliquer un minimum.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">- Nous d&eacute;clinons toute responsablilit&eacute; en cas de rencontres IRL (rencontres r&eacute;elles). Les rencontres IRL sont des initiatives priv&eacute;es hors du site donc qui ne nous concernent pas.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><strong>Messages :</strong></span></span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">- Lorsque vous &eacute;crivez un message sur le forum, le tchat ou en priv&eacute;, veuillez respecter les r&egrave;gle ci-dessus.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">- Le flood &nbsp;(poster plein de messages &agrave; la suite) est interdit. Veuillez faire en sorte que le forum et le tchat restent lisible et agr&eacute;able. Si vous floodez, vous serez avertis par un mod&eacute;rateur ou un administrateur et si les avertissements ne vous suffisent pas, vous serez bannis temporairement du site.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">- La publicit&eacute; est interdite, tout auteur de message publicitaire verra son message effac&eacute;.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">- Veuillez ne jamais donner vos informations personnelles &agrave; qui que ce soit (adresse, num&eacute;ro de t&eacute;l&eacute;phone,...). Vous ne savez pas qui se cache derri&egrave;re un &eacute;cran, une personne peut se faire passer pour une autre.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">- Ne donnez jamais votre mot de passe, en cas de vol de compte, nous d&eacute;clinons toute responsabilit&eacute;. Si vous donnez votre mot de passe, on part du principe que vous donnez votre compte. Et si vous donnez votre compte, ce n&#39;est plus un vol.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">- Les mod&eacute;rateurs et administrateurs ont le droit de modification ou de suppression de votre message en cas de manquement aux r&egrave;gles.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong><span style=\"font-size:18px\">Comptes :</span></strong>&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif\">- Les doubles comptes sont fortement d&eacute;conseill&eacute;s. Si vous avez un fr&egrave;re ou une soeur qui veut jouer, &nbsp;il peut se cr&eacute;er un compte lui aussi bien entendu &agrave; condition qu&#39;il n&#39;y ait pas d&#39;entre aide ou de triche. N&eacute;anmoins, &eacute;vitez d&#39;avoir trop de comptes. Sachez qu&#39;aucune interaction au niveau du jeu entre DC ne sera tol&eacute;r&eacute;. En cas de manquement &agrave; cette r&egrave;gle, les comptes en question se verront supprim&eacute;s.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif\">- En cas de vol de compte, veuillez contacter le support. Si jamais vous avez donn&eacute; votre mot de passe, tout r&eacute;sponsablilit&eacute; de la part du staff sera d&eacute;clin&eacute;e.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif\">- Un compte ne peut avoir qu&#39;un propri&eacute;taire, le propri&eacute;taire de l&#39;email du compte. Nous d&eacute;clinons toute responsabilit&eacute; en cas de vol de compte si plusieurs personnes y avaient acc&egrave;s. En cas de manquement aux r&egrave;gles, c&#39;est le joueur &agrave; qui appartient le compte qui sera tenu responsable.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif\">- La monnaie de ce jeu est le berry. L&#39;achat d&#39;un compte avec de l&#39;argent r&eacute;el (allopass, carte bancaire, paypal, paysafecard,...) ou contre des comptes ou objets d&#39;un autre jeu est interdit. Tout message de vente ne respectant pas cette r&egrave;gle sera supprim&eacute;, et son auteur sera banni temporairement du site. Si n&eacute;anmoins vous achetez un compte avec de l&#39;argent r&eacute;el sans que nous le remarquions, nous d&eacute;clinons toute responsablilit&eacute; en cas d&#39;arnaque. Si nous apprenons que vous avez vendu ou achetez un compte contre quelque chose hors de ce jeu, vous serez sanctionn&eacute;s.</span></p>\r\n\r\n<p style=\"text-align:right\"><span style=\"font-family:arial,helvetica,sans-serif\"><em>Le Staff</em></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n<p></p><em><span style=\"font-size:8px\">Édité par Kalivia le 12/11/2015 à 20h53</span></em></p>',1447354662,0,80,60),(98,'<p style=\"text-align:center\"><span style=\"font-family:arial,helvetica,sans-serif\"><u><span style=\"font-size:26px\"><strong>Conditions g&eacute;n&eacute;rales d&#39;utilisation</strong></span></u></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif\">En vous inscrivants sur le site dev.minegame.fr, vous acceptez que les mod&eacute;rateurs ou les administrateurs du site aient acc&egrave;s &agrave; vos donn&eacute;es personnelles comme votre adresse IP, votre adresse mail,... Vous acceptez &eacute;galement le fait qu&#39;en cas d&#39;abus de votre part aux r&egrave;gles mentionn&eacute;es &nbsp;ci-dessous, les membres de l&#39;&eacute;quipes de mod&eacute;ration ou d&#39;administration aient le droit de vous bannir de fa&ccedil;on temporaire ou d&eacute;finitive de ce site.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><strong>Vie en communaut&eacute; :</strong></span><span style=\"font-size:12px\"><strong>&nbsp;</strong></span></span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">- Evitez le langage SMS, privil&eacute;giez l&#39;&eacute;criture dans un fran&ccedil;ais correct. Il faut que votre &eacute;criture soit un minimum compr&eacute;hensible afin que les autres joueurs puissent vous comprendre.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">- La langue officielle &nbsp;de ce site est le fran&ccedil;ais, veuillez communiquer dans cette langue uniquement afin de rester compr&eacute;hensible. Si vous ne parlez pas le fran&ccedil;ais, utilisez Google Traduction ou un autre site du genre afin de pouvoir communiquer.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">- Il est formellement interdit de faire de la propagande pour un quelconque parti politique ou une quelconque &nbsp;religion. Veuillez respecter les croyances de chacun. Bien entendu, en parler n&#39;est pas interdit du moment que la discution ne d&eacute;borde pas.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">- Aucun propos raciste, homophobe, antis&eacute;mite ou discriminatoire ne sera tol&eacute;r&eacute; ici. Veuillez respecter chaque joueur afin de garder un bonne ambiance au sein de la communaut&eacute;.&nbsp;</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">- La p&eacute;dophilie, la pornographie ou toute d&eacute;bauche sexuelle est formellement interdite. Nous sommes sur un jeu, avec des mineurs ! La p&eacute;dophilie est punie par la loi, tout auteur de message p&eacute;dophile pourra &ecirc;tre poursuivi en justice.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">- Le Caps Lock (&eacute;crire tout en majuscule) est fortement d&eacute;conseill&eacute;. Tout comme le langage SMS, lire un message &eacute;crit enti&egrave;rement en majuscule n&#39;est pas agr&eacute;able. Nous vous demandons donc de vous appliquer un minimum.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">- Nous d&eacute;clinons toute responsablilit&eacute; en cas de rencontres IRL (rencontres r&eacute;elles). Les rencontres IRL sont des initiatives priv&eacute;es hors du site donc qui ne nous concernent pas.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><strong>Messages :</strong></span></span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">- Lorsque vous &eacute;crivez un message sur le forum, le tchat ou en priv&eacute;, veuillez respecter les r&egrave;gles ci-dessus.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">- Le flood &nbsp;(poster plein de messages &agrave; la suite) est interdit. Veuillez faire en sorte que le forum et le tchat restent lisible et agr&eacute;able. Si vous floodez, vous serez avertis par un mod&eacute;rateur ou un administrateur et si les avertissements ne vous suffisent pas, vous serez bannis temporairement du site.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">- La publicit&eacute; est interdite, tout auteur de message publicitaire verra son message effac&eacute;.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">- Veuillez ne jamais donner vos informations personnelles &agrave; qui que ce soit (adresse, num&eacute;ro de t&eacute;l&eacute;phone,...). Vous ne savez pas qui se cache derri&egrave;re un &eacute;cran, une personne peut se faire passer pour une autre.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">- Ne donnez jamais votre mot de passe, en cas de vol de compte, nous d&eacute;clinons toute responsabilit&eacute;. Si vous donnez votre mot de passe, on part du principe que vous donnez votre compte. Et si vous donnez votre compte, ce n&#39;est plus un vol.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">- Les mod&eacute;rateurs et administrateurs ont le droit de modification ou de suppression de votre message en cas de manquement aux r&egrave;gles.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong><span style=\"font-size:18px\">Comptes :</span></strong>&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif\">- Les doubles comptes sont fortement d&eacute;conseill&eacute;s. Si vous avez un fr&egrave;re ou une soeur qui veut jouer, &nbsp;il peut se cr&eacute;er un compte lui aussi bien entendu &agrave; condition qu&#39;il n&#39;y ait pas d&#39;entre aide ou de triche. N&eacute;anmoins, &eacute;vitez d&#39;avoir trop de comptes. Sachez qu&#39;aucune interaction au niveau du jeu entre DC ne sera tol&eacute;r&eacute;. En cas de manquement &agrave; cette r&egrave;gle, les comptes en question se verront supprim&eacute;s.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif\">- En cas de vol de compte, veuillez contacter le support. Si jamais vous avez donn&eacute; votre mot de passe, tout r&eacute;sponsablilit&eacute; de la part du staff sera d&eacute;clin&eacute;e.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif\">- Un compte ne peut avoir qu&#39;un propri&eacute;taire, le propri&eacute;taire de l&#39;email du compte. Nous d&eacute;clinons toute responsabilit&eacute; en cas de vol de compte si plusieurs personnes y avaient acc&egrave;s. En cas de manquement aux r&egrave;gles, c&#39;est le joueur &agrave; qui appartient le compte qui sera tenu responsable.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif\">- La monnaie de ce jeu est le berry. L&#39;achat d&#39;un compte avec de l&#39;argent r&eacute;el (allopass, carte bancaire, paypal, paysafecard,...) ou contre des comptes ou objets d&#39;un autre jeu est interdit. Tout message de vente ne respectant pas cette r&egrave;gle sera supprim&eacute;, et son auteur sera banni temporairement du site. Si n&eacute;anmoins vous achetez un compte avec de l&#39;argent r&eacute;el sans que nous le remarquions, nous d&eacute;clinons toute responsablilit&eacute; en cas d&#39;arnaque. Si nous apprenons que vous avez vendu ou achetez un compte contre quelque chose hors de ce jeu, vous serez sanctionn&eacute;s.</span></p>\r\n\r\n<p style=\"text-align:right\"><span style=\"font-family:arial,helvetica,sans-serif\"><em>Le Staff</em></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n<p></p><em><span style=\"font-size:8px\">Édité par Dumbeldor le 12/11/2015 à 20h19</span></em></p>',1447355529,0,81,1),(99,'<p>Nickel merci !&nbsp;<img alt=\"kiss\" src=\"http://dev.minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/kiss.png\" style=\"height:23px; width:23px\" title=\"kiss\" /></p>\r\n',1447355846,0,80,1),(100,'<p><tt><span style=\"font-size:18px\">Oui, j&#39;essaye de garder mon job dsl.&nbsp;<img alt=\"laugh\" src=\"http://dev.minegame.fr/assets/js/ckeditorVIP/plugins/smiley/images/teeth_smile.png\" style=\"height:23px; width:23px\" title=\"laugh\" /></span></tt></p>\r\n',1447356297,0,79,51),(101,'<p>Mouef mouef,</p>\r\n\r\n<p>Bon on recommence :</p>\r\n\r\n<blockquote>\r\n<p>Il &eacute;tait une fois un pirate....</p>\r\n</blockquote>\r\n',1447358121,0,79,1);
/*!40000 ALTER TABLE `forums_topics_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forums_topics_types`
--

DROP TABLE IF EXISTS `forums_topics_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forums_topics_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forums_topics_types`
--

LOCK TABLES `forums_topics_types` WRITE;
/*!40000 ALTER TABLE `forums_topics_types` DISABLE KEYS */;
INSERT INTO `forums_topics_types` VALUES (1,'ouvert'),(2,'fermer'),(3,'sondage'),(4,'post-it');
/*!40000 ALTER TABLE `forums_topics_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `islands`
--

DROP TABLE IF EXISTS `islands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `islands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `islands`
--

LOCK TABLES `islands` WRITE;
/*!40000 ALTER TABLE `islands` DISABLE KEYS */;
/*!40000 ALTER TABLE `islands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kick`
--

DROP TABLE IF EXISTS `kick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kick` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cause` varchar(25) NOT NULL,
  `zone` varchar(25) NOT NULL,
  `date_time` datetime NOT NULL,
  `id_users` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id_users`),
  KEY `FK_kick_id_users` (`id_users`),
  CONSTRAINT `FK_kick_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kick`
--

LOCK TABLES `kick` WRITE;
/*!40000 ALTER TABLE `kick` DISABLE KEYS */;
/*!40000 ALTER TABLE `kick` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levels`
--

DROP TABLE IF EXISTS `levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levels`
--

LOCK TABLES `levels` WRITE;
/*!40000 ALTER TABLE `levels` DISABLE KEYS */;
INSERT INTO `levels` VALUES (1,1,1);
/*!40000 ALTER TABLE `levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lieux_ennemis`
--

DROP TABLE IF EXISTS `lieux_ennemis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lieux_ennemis` (
  `id` int(11) NOT NULL,
  `id_ennemies` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id_ennemies`),
  KEY `FK_lieux_ennemis_id_ennemies` (`id_ennemies`),
  CONSTRAINT `FK_lieux_ennemis_id` FOREIGN KEY (`id`) REFERENCES `places` (`id`),
  CONSTRAINT `FK_lieux_ennemis_id_ennemies` FOREIGN KEY (`id_ennemies`) REFERENCES `ennemies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lieux_ennemis`
--

LOCK TABLES `lieux_ennemis` WRITE;
/*!40000 ALTER TABLE `lieux_ennemis` DISABLE KEYS */;
/*!40000 ALTER TABLE `lieux_ennemis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lost_pass`
--

DROP TABLE IF EXISTS `lost_pass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lost_pass` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tooken` varchar(255) NOT NULL,
  `date_time` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lost_pass`
--

LOCK TABLES `lost_pass` WRITE;
/*!40000 ALTER TABLE `lost_pass` DISABLE KEYS */;
INSERT INTO `lost_pass` VALUES (1,'gjgjgjgjhgjhg',1445488);
/*!40000 ALTER TABLE `lost_pass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mouths`
--

DROP TABLE IF EXISTS `mouths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mouths` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `is_block` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mouths`
--

LOCK TABLES `mouths` WRITE;
/*!40000 ALTER TABLE `mouths` DISABLE KEYS */;
INSERT INTO `mouths` VALUES (1,'1',0),(2,'2',0),(3,'3',0),(4,'4',0),(5,'5',0),(6,'6',0),(7,'7',0),(8,'8',0),(9,'9',0);
/*!40000 ALTER TABLE `mouths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `date_time` int(15) NOT NULL,
  `message` text NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_users` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_news_id_users` (`id_users`),
  CONSTRAINT `FK_news_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (19,'Première news',1446979552,'<p>Salut,</p>\r\n\r\n<p>Une petite news pour vous pr&eacute;venir que MineGame va bient&ocirc;t ouvrir ses portes !<br />\r\nJe tiens &agrave; dire que nous recherchons encore un nom sympathique donc nous sommes &agrave; votre &eacute;coute si vous avez des id&eacute;es !</p>\r\n\r\n<p>Bonne journ&eacute;e.</p>\r\n',0,13),(20,'V3 is coming',1447338228,'<p style=\"text-align:center\"><span style=\"font-size:28px\">New n&deg;1 :</span><span style=\"font-size:22px\">&nbsp;<em><strong>Le commencement</strong></em></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"border: 1px solid rgb(204, 204, 204); padding: 5px 10px; text-align: center; background: rgb(238, 238, 238);\"><span style=\"font-size:22px\"><span style=\"color:#FF0000\"><strong>Pr&eacute;sentation</strong></span></span></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bonjour et bienvenu sur le jeu &quot;MineGame&quot; qui est la suite du c&eacute;l&egrave;bre site one-piece-rpg. (Le nom du jeu est provisoire et sera susceptible de changer dans les prochains jours.)</p>\r\n\r\n<p>Tout d&#39;abord le projet &quot;minegame&quot; est r&eacute;alis&eacute; par des fans pour&nbsp;des fans, le staff travail b&eacute;n&eacute;volement pour vous cr&eacute;e un jeu complet, additif et plaisant visuellement. Nous sommes des amateurs avide d&#39;apprendre de nouvelle chose pour vous en faire profiter.</p>\r\n\r\n<p>Parlons maintenant du jeu en lui-m&ecirc;me, la sortie officielle est pr&eacute;vu pour le 12/11/2015 dans la soir&eacute;e et vous sera pr&eacute;senter sous la forme communautaire, ce qui signifie qu&#39;un forum, un tchat et bien d&#39;autres fonctionnalit&eacute;s vous sera proposer mais pas de r&eacute;el &quot;jeu&quot;. Les prochaines semaines risque de beaucoup bouger et verra le site &eacute;voluer, on esp&egrave;re, positivement.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"border: 1px solid rgb(204, 204, 204); padding: 5px 10px; text-align: center; background: rgb(238, 238, 238);\"><span style=\"font-size:22px\"><span style=\"color:#FF0000\"><strong>Staff</strong></span></span></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#FF0000\"><strong>Dumbeldor&nbsp;(Admin):<em>&nbsp;</em></strong></span><em>Il est le chef du projet et un d&eacute;veloppeur extr&ecirc;mement dou&eacute;, sans lui le site n&#39;aurai s&ucirc;rement jamais vu le jour.</em></p>\r\n\r\n<p><span style=\"color:#FF8C00\"><strong>Sumo (Co-admin) : </strong></span><em>Il s&#39;occupe du Dev&#39; de la s&eacute;curit&eacute;&nbsp;et de la bonne ambiance au sein de l&#39;&eacute;quipe, il fait des merguez comme personne.</em></p>\r\n\r\n<p><span style=\"color:#00FF00\"><strong>Maniak (Mod&eacute;rateur) :&nbsp;</strong></span><em>Ayant d&eacute;j&agrave; fait ses preuves sur la V2 de onepiece-rpg il &eacute;tait &eacute;vident pour nous de le r&eacute;cup&eacute;rer parmi nous. Il&nbsp;aide aussi gr&acirc;ce &agrave; ses talent en pixel art.</em><em>&nbsp;Attention, le sh&eacute;rif du site.</em></p>\r\n\r\n<p><span style=\"color:#00FF00\"><strong>Kalivia (Mod&eacute;ratrice) :</strong></span><em><span style=\"color:#00FF00\">&nbsp;</span>Le quotas nous obligeant &agrave; prendre une fille, c&#39;est tomb&eacute; sur elle... Plus s&eacute;rieusement, elle est l&agrave; pour faire r&eacute;gner l&#39;ordre et donner un coup de main en pixel art. (Oui elle aussi)</em></p>\r\n\r\n<p><span style=\"color:#008080\"><strong>Riyuma (Animateur) :&nbsp;</strong></span><em>Il va s&#39;occuper de l&#39;animation du site, de vous faire patienter comme il peut jusqu&#39;&agrave; que le jeu en lui-m&ecirc;me n&#39;arrive. Tr&egrave;s dou&eacute; pour faire des topics, beau et myst&eacute;rieux, &agrave; n&#39;en pas dout&eacute; notre meilleur recrue.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><tt>En esp&eacute;rant vous retrouvez sur le jeu, l&#39;&eacute;quipe du site vous souhaite d&#39;agr&eacute;ables moments.</tt></strong></p>\r\n\r\n<p><span style=\"color:#4B0082\"><span style=\"font-size:14px\"><em><strong><tt>#LeStaff</tt></strong></em></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"http://img11.hostingpics.net/pics/123632Comm.png\" /></p>\r\n',0,1);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_comments`
--

DROP TABLE IF EXISTS `news_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_time` int(15) NOT NULL,
  `message` text NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_news` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_news_comments_id_users` (`id_users`),
  KEY `FK_news_comments_id_news` (`id_news`),
  CONSTRAINT `FK_news_comments_id_news` FOREIGN KEY (`id_news`) REFERENCES `news` (`id`),
  CONSTRAINT `FK_news_comments_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_comments`
--

LOCK TABLES `news_comments` WRITE;
/*!40000 ALTER TABLE `news_comments` DISABLE KEYS */;
INSERT INTO `news_comments` VALUES (1,1447277214,'<pre>\r\n<big><strong>Tu voudras un Besherelle pour No&euml;l ? <img alt=\"laugh\" src=\"http://dev.minegame.fr/assets/js/ckeditorUsers/plugins/smiley/images/teeth_smile.png\" style=\"height:23px; width:23px\" title=\"laugh\" /></strong></big></pre>\r\n',0,60,19),(2,1447277469,'<p><tt>Bient&ocirc;t la sortie *-*&nbsp;</tt></p>\r\n',0,51,19),(3,1447336782,'<p>Tu vas pas rester mod&eacute;ratrice longtemps Olivia...&nbsp;<img alt=\"sad\" src=\"http://dev.minegame.fr/assets/js/ckeditorStaff/plugins/smiley/images/sad_smile.png\" style=\"height:23px; width:23px\" title=\"sad\" /></p>\r\n',0,1,19);
/*!40000 ALTER TABLE `news_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nose`
--

DROP TABLE IF EXISTS `nose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nose` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `is_block` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nose`
--

LOCK TABLES `nose` WRITE;
/*!40000 ALTER TABLE `nose` DISABLE KEYS */;
/*!40000 ALTER TABLE `nose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objects`
--

DROP TABLE IF EXISTS `objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_objects_types` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_objects_id_objects_types` (`id_objects_types`),
  CONSTRAINT `FK_objects_id_objects_types` FOREIGN KEY (`id_objects_types`) REFERENCES `objects_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objects`
--

LOCK TABLES `objects` WRITE;
/*!40000 ALTER TABLE `objects` DISABLE KEYS */;
INSERT INTO `objects` VALUES (1,'Epée en bois','Une épée en bois',1,1);
/*!40000 ALTER TABLE `objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objects_types`
--

DROP TABLE IF EXISTS `objects_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objects_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objects_types`
--

LOCK TABLES `objects_types` WRITE;
/*!40000 ALTER TABLE `objects_types` DISABLE KEYS */;
INSERT INTO `objects_types` VALUES (1,'arme',1);
/*!40000 ALTER TABLE `objects_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pets`
--

DROP TABLE IF EXISTS `pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `file` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_pets_types` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_pets_id_pets_types` (`id_pets_types`),
  CONSTRAINT `FK_pets_id_pets_types` FOREIGN KEY (`id_pets_types`) REFERENCES `pets_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pets`
--

LOCK TABLES `pets` WRITE;
/*!40000 ALTER TABLE `pets` DISABLE KEYS */;
/*!40000 ALTER TABLE `pets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pets_types`
--

DROP TABLE IF EXISTS `pets_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pets_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pets_types`
--

LOCK TABLES `pets_types` WRITE;
/*!40000 ALTER TABLE `pets_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `pets_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `places` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `block` tinyint(1) NOT NULL,
  `id_levels` int(11) NOT NULL,
  `id_islands` int(11) NOT NULL,
  `id_places_types` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_places_id_levels` (`id_levels`),
  KEY `FK_places_id_islands` (`id_islands`),
  KEY `FK_places_id_places_types` (`id_places_types`),
  CONSTRAINT `FK_places_id_islands` FOREIGN KEY (`id_islands`) REFERENCES `islands` (`id`),
  CONSTRAINT `FK_places_id_levels` FOREIGN KEY (`id_levels`) REFERENCES `levels` (`id`),
  CONSTRAINT `FK_places_id_places_types` FOREIGN KEY (`id_places_types`) REFERENCES `places_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places_quiz`
--

DROP TABLE IF EXISTS `places_quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `places_quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `ans1` text NOT NULL,
  `ans2` text NOT NULL,
  `ans3` text NOT NULL,
  `ans4` text NOT NULL,
  `id_places` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_places_quiz_id_places` (`id_places`),
  CONSTRAINT `FK_places_quiz_id_places` FOREIGN KEY (`id_places`) REFERENCES `places` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places_quiz`
--

LOCK TABLES `places_quiz` WRITE;
/*!40000 ALTER TABLE `places_quiz` DISABLE KEYS */;
/*!40000 ALTER TABLE `places_quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places_types`
--

DROP TABLE IF EXISTS `places_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `places_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places_types`
--

LOCK TABLES `places_types` WRITE;
/*!40000 ALTER TABLE `places_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `places_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privates_messages`
--

DROP TABLE IF EXISTS `privates_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privates_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `date_time` int(15) NOT NULL,
  `id_author` int(11) NOT NULL,
  `id_dest` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_privates_messages_id_users` (`id_author`),
  KEY `FK_privates_messages_id_users_1` (`id_dest`),
  CONSTRAINT `FK_privates_messages_id_users` FOREIGN KEY (`id_author`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_privates_messages_id_users_1` FOREIGN KEY (`id_dest`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privates_messages`
--

LOCK TABLES `privates_messages` WRITE;
/*!40000 ALTER TABLE `privates_messages` DISABLE KEYS */;
INSERT INTO `privates_messages` VALUES (1,'<p>Wallah tu es mod&eacute;ratrice :3</p>\r\n',1447336384,1,60),(2,'<p>Je viens de voir ;) Tu n&#39;as plus&nbsp;qu&#39;&agrave; m&#39;offrir de la nourriture et tu seras un Dieu vivant ! ^_^</p>\r\n',1447349481,60,1),(3,'<p>Non c&#39;est &agrave; toi de me faire une offrande !</p>\r\n',1447349711,1,60),(4,'<p>J&#39;te bz :o</p>\r\n',1447350207,54,51),(5,'<p>En offrande tu veux les CGU avant la sortie ? XD</p>\r\n',1447350554,60,1),(6,'<p>Ah oui poste &ccedil;a dans le forum priv&eacute; stp</p>\r\n',1447350772,1,60),(7,'<p>Du staff ?</p>\r\n',1447350806,60,1),(8,'<p>SMGB :o</p>\r\n',1447351043,51,54),(9,'<p>Oui</p>\r\n',1447352873,1,60);
/*!40000 ALTER TABLE `privates_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privates_messages_appartenance`
--

DROP TABLE IF EXISTS `privates_messages_appartenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privates_messages_appartenance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_msg` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `is_read` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privates_messages_appartenance`
--

LOCK TABLES `privates_messages_appartenance` WRITE;
/*!40000 ALTER TABLE `privates_messages_appartenance` DISABLE KEYS */;
INSERT INTO `privates_messages_appartenance` VALUES (1,1,1,1),(4,2,1,1),(5,3,1,1),(7,4,54,1),(8,4,51,1),(10,5,1,1),(11,6,1,1),(14,7,1,1),(15,8,51,1),(16,8,54,1),(17,9,1,1);
/*!40000 ALTER TABLE `privates_messages_appartenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tchats`
--

DROP TABLE IF EXISTS `tchats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tchats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `descr` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_tchats_types` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tchats_id_tchats_types` (`id_tchats_types`),
  CONSTRAINT `FK_tchats_id_tchats_types` FOREIGN KEY (`id_tchats_types`) REFERENCES `tchats_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tchats`
--

LOCK TABLES `tchats` WRITE;
/*!40000 ALTER TABLE `tchats` DISABLE KEYS */;
INSERT INTO `tchats` VALUES (1,'Général','Vous avez envie de discuter, déconner, s\'amuser alors c\'est par ici !',0,1),(2,'Aide','Ici vous pouvez demander de l\'aide !',0,1),(3,'Commerce','Vous cherchez quelques choses / vendez ? C\'est par ici !',0,1);
/*!40000 ALTER TABLE `tchats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tchats_messages`
--

DROP TABLE IF EXISTS `tchats_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tchats_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` longtext NOT NULL,
  `date_time` datetime NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_tchats` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id_tchats`,`id_users`),
  KEY `FK_tchats_messages_id_tchats` (`id_tchats`),
  KEY `FK_tchats_messages_id_users` (`id_users`),
  CONSTRAINT `FK_tchats_messages_id_tchats` FOREIGN KEY (`id_tchats`) REFERENCES `tchats` (`id`),
  CONSTRAINT `FK_tchats_messages_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tchats_messages`
--

LOCK TABLES `tchats_messages` WRITE;
/*!40000 ALTER TABLE `tchats_messages` DISABLE KEYS */;
INSERT INTO `tchats_messages` VALUES (133,'Ouioui','2015-11-12 14:10:20',0,1,51),(135,'Et oui, je te censure xD','2015-11-12 17:53:14',0,1,63),(136,'J\'ai la musique en tête du coup xD','2015-11-12 17:53:52',0,1,51),(137,'OUuuUUuuH! LA COUPE DE CHEVEUX FANTÔMEEEE!!!! ~','2015-11-12 18:39:08',0,1,54),(138,'Lol','2015-11-12 18:40:03',0,1,60),(139,'Je sais même pas comment j\'ai fais ça (rofl)','2015-11-12 18:40:37',0,1,54),(140,'','2015-11-12 18:40:37',0,1,54),(141,'Swag ta coupe','2015-11-12 18:41:32',0,1,1),(142,'Je vais la virer des choix','2015-11-12 18:41:39',0,1,1),(143,'Au moins je vais être spécial à la sortie. :D','2015-11-12 18:42:29',0,1,54),(144,' C\'edt une coiffure pas transparente du coup sa fait sa si tu la mets pas en 1et (une histoire de calque)','2015-11-12 18:44:32',0,1,60),(145,'Vincent ?','2015-11-12 18:48:15',0,1,60),(146,'Vincentime<br />\n<br />\nMDRRRRRR ','2015-11-12 18:49:04',0,1,51),(147,'T\'oublieras pas de réinitialiser le tchat, j\'referai la vanne comme ça','2015-11-12 18:50:48',0,1,51),(148,'Quoi ?','2015-11-12 18:51:36',0,1,1),(149,'Juste pour sa... Je lui avait faitr conv Kings Pirates x)','2015-11-12 18:51:45',0,1,60),(150,'Nan en fait c\'est bon je t\'ai MP','2015-11-12 18:52:15',0,1,60),(151,'Je vais recompiler php risque de lag','2015-11-12 18:52:32',0,1,1),(152,'Ok... Sinon je suis sur phone je posterais bientot :p','2015-11-12 18:54:15',0,1,60),(153,'Ok','2015-11-12 18:55:21',0,1,1),(154,'On ouvre ce soir...<br />\nJe voulais ouvrir hier soir mais la compilation de php a prit trop de temps ^^\' Et là je suis en cours. Reste à régler un petit soucis l\'inscription et sur les messages envoyé auto','2015-11-13 15:29:18',0,1,1),(155,'D\'acc','2015-11-13 15:51:44',0,1,51),(157,'http://img15.hostingpics.net/pics/263791corps12.png<br />\nyeux Baggy','2015-11-13 19:32:06',0,1,63),(158,'Bien^^','2015-11-13 20:33:11',0,1,51),(159,'gg','2015-11-14 01:02:44',0,1,60),(160,'l\'autre connard à effacé mes posts xD','2015-11-14 02:05:38',0,1,54),(161,'http://img11.hostingpics.net/pics/346914chapeaubaggy.png<br />\nchapeau baggy','2015-11-14 11:49:57',0,1,63),(164,'Avec les yeux, cela donne ceci:<br />\nhttp://img11.hostingpics.net/pics/424509chapeaubaggy2.png','2015-11-14 11:51:57',0,1,63),(165,'bon on voit pas sont tatouage &quot;os&quot; avec le fond blanc xD','2015-11-14 11:54:04',0,1,63),(166,'Yo','2015-11-14 13:57:08',0,1,1);
/*!40000 ALTER TABLE `tchats_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tchats_types`
--

DROP TABLE IF EXISTS `tchats_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tchats_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `descr` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tchats_types`
--

LOCK TABLES `tchats_types` WRITE;
/*!40000 ALTER TABLE `tchats_types` DISABLE KEYS */;
INSERT INTO `tchats_types` VALUES (1,'Tchat','Tchat',0);
/*!40000 ALTER TABLE `tchats_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets_messages`
--

DROP TABLE IF EXISTS `tickets_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` longtext,
  `date_time` int(11) DEFAULT NULL,
  `id_users` int(11) NOT NULL,
  `id_tickets_sujets` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tickets_messages_id_users` (`id_users`),
  KEY `FK_tickets_messages_id_tickets_sujets` (`id_tickets_sujets`),
  CONSTRAINT `FK_tickets_messages_id_tickets_sujets` FOREIGN KEY (`id_tickets_sujets`) REFERENCES `tickets_sujets` (`id`),
  CONSTRAINT `FK_tickets_messages_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets_messages`
--

LOCK TABLES `tickets_messages` WRITE;
/*!40000 ALTER TABLE `tickets_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets_sujets`
--

DROP TABLE IF EXISTS `tickets_sujets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets_sujets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sujet` mediumtext,
  `statut` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets_sujets`
--

LOCK TABLES `tickets_sujets` WRITE;
/*!40000 ALTER TABLE `tickets_sujets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets_sujets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `id_faction` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `FK_users_id_objects` (`id_objects`),
  KEY `FK_users_id_users_types` (`id_users_types`),
  KEY `fk_users_id_faction` (`id_faction`),
  CONSTRAINT `FK_users_id_objects` FOREIGN KEY (`id_objects`) REFERENCES `objects` (`id`),
  CONSTRAINT `FK_users_id_users_types` FOREIGN KEY (`id_users_types`) REFERENCES `users_types` (`id`),
  CONSTRAINT `fk_users_id_faction` FOREIGN KEY (`id_faction`) REFERENCES `faction` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,0,'Dumbeldor','vincentglize@hotmail.fr','0000-00-00',NULL,'$2y$10$IEa/yx86U2McxcjbOvFztO42KXsfCCySz75rnHc7.MbejHj6ZPOJ6',1433827274,1447505819,'78.230.147.45',0,115,0,0,'',1,24,0,0,2),(2,0,'Sumo','sumo@sumo.fr','0000-00-00',NULL,'$2y$10$bf6tS8IrhdG9AtfIsllc/OGROZK0Sj6NYdcP05Aos/Kk4eq/acp2m',1446927274,1447498678,'93.182.192.37',0,0,0,0,'',1,21,0,0,2),(13,0,'Pandaman','lebg@lebg.fr','0000-00-00',NULL,'$2y$10$IEa/yx86U2McxcjbOvFztO42KXsfCCySz75rnHc7.MbejHj6ZPOJ6',1433827274,1446979447,'',0,-2,0,0,'',1,1,0,0,1),(34,0,'Vincent','omagad@gmail.fr','0000-00-00',NULL,'$2y$10$IEa/yx86U2McxcjbOvFztO42KXsfCCySz75rnHc7.MbejHj6ZPOJ6',1446927274,1447265989,'',0,3,0,0,'',1,2,0,0,1),(46,0,'retest','sdfdsgfg@Kdslfd.fr','0000-00-00',NULL,'$2y$10$rIEanCTG9ZrIkwCRDJic.e0rFwonXqFxqT8672mqG8lUBuKTha3Ym',1447255827,1447265098,'',0,0,1,100,'a:5:{s:4:\"sexe\";s:5:\"Homme\";s:4:\"body\";s:33:\"assets/img/avatars/man/body/2.png\";s:4:\"eyes\";s:33:\"assets/img/avatars/man/eyes/3.png\";s:6:\"mouths\";s:31:\"assets/img/avatars/mouths/7.png\";s:4:\"hair\";s:35:\"assets/img/avatars/man/hair/0/3.png\";}',1,1,0,0,2),(51,0,'Riyuma','real-madrid-38080@hotmail.com','0000-00-00',NULL,'$2y$10$FtF.mStVwLKXkQ0.p3VMlOTZLf7k9ngfzsiz5Od.z7y8PW2QzKOWS',1447268627,1447491904,'109.13.240.113',0,3,1,100,'a:5:{s:4:\"sexe\";s:5:\"Homme\";s:4:\"body\";s:33:\"assets/img/avatars/man/body/1.png\";s:4:\"eyes\";s:34:\"assets/img/avatars/man/eyes/37.png\";s:6:\"mouths\";s:31:\"assets/img/avatars/mouths/2.png\";s:4:\"hair\";s:39:\"assets/img/avatars/man/hair/bleu/11.png\";}',1,10,0,0,3),(53,0,'dumi','dumi@gmail.fr','0000-00-00',NULL,'$2y$10$qIuI6HwMCZqxesVmhdzKZOQdMVhscDGbc5/Z/4968fPRSaELgq.Kq',1447269620,0,'',0,0,1,1100,'a:5:{s:4:\"sexe\";s:5:\"Homme\";s:4:\"body\";s:33:\"assets/img/avatars/man/body/2.png\";s:4:\"eyes\";s:34:\"assets/img/avatars/man/eyes/31.png\";s:6:\"mouths\";s:31:\"assets/img/avatars/mouths/5.png\";s:4:\"hair\";s:40:\"assets/img/avatars/man/hair/blanc/31.png\";}',1,1,0,0,2),(54,0,'Trinity','kevinvaik@hotmail.com','0000-00-00',NULL,'$2y$10$vqzo1hqxHbPAZn6hy44Vg.TUMuSH8KvG./ZGmmZ3QbSaL.LOrhIRy',1447270164,1447463109,'70.81.55.21',0,1,1,1100,'a:5:{s:4:\"sexe\";s:5:\"Homme\";s:4:\"body\";s:33:\"assets/img/avatars/man/body/1.png\";s:4:\"eyes\";s:34:\"assets/img/avatars/man/eyes/11.png\";s:6:\"mouths\";s:31:\"assets/img/avatars/mouths/2.png\";s:4:\"hair\";s:40:\"assets/img/avatars/man/hair/rouge/31.png\";}',1,1,0,0,2),(58,0,'test','dfsdfds@fdslfds.fr','0000-00-00',NULL,'$2y$10$xV6i2Cc9/eF6ilcS1kfbqeMLopnaSdStmTDdl91YY/Gi1oVbLWz6C',1447271144,0,'',0,0,1,1100,'a:5:{s:4:\"sexe\";s:5:\"Homme\";s:4:\"body\";s:33:\"assets/img/avatars/man/body/2.png\";s:4:\"eyes\";s:33:\"assets/img/avatars/man/eyes/1.png\";s:6:\"mouths\";s:31:\"assets/img/avatars/mouths/3.png\";s:4:\"hair\";s:40:\"assets/img/avatars/man/hair/rouge/32.png\";}',1,1,0,0,2),(59,0,'Bella','bella@gmail.fr','0000-00-00',NULL,'$2y$10$BY1r33bBxmNIcHeLA3kKOujINqXHqgCN6SMAzkeTmRhp8taCrFKDe',1447276152,1447276166,'',0,0,1,1100,'a:5:{s:4:\"sexe\";s:5:\"Femme\";s:4:\"body\";s:35:\"assets/img/avatars/woman/body/2.png\";s:4:\"eyes\";s:36:\"assets/img/avatars/woman/eyes/14.png\";s:6:\"mouths\";s:31:\"assets/img/avatars/mouths/5.png\";s:4:\"hair\";s:41:\"assets/img/avatars/woman/hair/jaune/8.png\";}',1,1,0,0,2),(60,0,'Kalivia','boisson.olivia@gmail.com','0000-00-00',NULL,'$2y$10$iXwpYiZZ0A4Rx.u3uAK6ueyjHo5TLWd2wU/PUXdJn31XknOkdNZIa',1447276659,1447498550,'95.170.32.75',0,1,1,1100,'a:5:{s:4:\"sexe\";s:5:\"Femme\";s:4:\"body\";s:35:\"assets/img/avatars/woman/body/1.png\";s:4:\"eyes\";s:36:\"assets/img/avatars/woman/eyes/14.png\";s:6:\"mouths\";s:31:\"assets/img/avatars/mouths/3.png\";s:4:\"hair\";s:42:\"assets/img/avatars/woman/hair/rouge/48.png\";}',1,19,0,0,2),(61,0,'Sasuke','olive.depizza@gmail.com','0000-00-00',NULL,'$2y$10$m8Gndb0/nAU4sGi4ql1EceZ2r/UgsTmQ3XBwCOLUspOQLPna23ZQq',1447278097,1447353951,'95.170.32.75',0,0,1,100,'a:5:{s:4:\"sexe\";s:5:\"Homme\";s:4:\"body\";s:33:\"assets/img/avatars/man/body/1.png\";s:4:\"eyes\";s:33:\"assets/img/avatars/man/eyes/7.png\";s:6:\"mouths\";s:31:\"assets/img/avatars/mouths/2.png\";s:4:\"hair\";s:38:\"assets/img/avatars/man/hair/noir/5.png\";}',1,1,0,0,3),(62,0,'Mosu','badrogeorges@gmail.com','0000-00-00',NULL,'$2y$10$4QukZ4aA8SDTNuhh0RtKa.BW/geeeWIM1k5VDU.dbQBuj3r4H3eXK',1447278168,1447354709,'93.182.192.37',0,0,1,100,'a:5:{s:4:\"sexe\";s:5:\"Homme\";s:4:\"body\";s:33:\"assets/img/avatars/man/body/1.png\";s:4:\"eyes\";s:33:\"assets/img/avatars/man/eyes/5.png\";s:6:\"mouths\";s:31:\"assets/img/avatars/mouths/5.png\";s:4:\"hair\";s:39:\"assets/img/avatars/man/hair/vert/20.png\";}',1,1,0,0,3),(63,0,'Maniak','maniac-77@hotmail.fr','0000-00-00',NULL,'$2y$10$zMvQ.iAFYtdGOIRV1gKlTuRtQtBymnhPQJGXuBw7rNI4RwMNFBBgq',1447294675,1447499361,'82.244.229.213',0,1,1,100,'a:5:{s:4:\"sexe\";s:5:\"Homme\";s:4:\"body\";s:33:\"assets/img/avatars/man/body/2.png\";s:4:\"eyes\";s:34:\"assets/img/avatars/man/eyes/36.png\";s:6:\"mouths\";s:31:\"assets/img/avatars/mouths/2.png\";s:4:\"hair\";s:39:\"assets/img/avatars/man/hair/noir/37.png\";}',1,20,0,0,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_bag`
--

DROP TABLE IF EXISTS `users_bag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_bag` (
  `id` int(11) NOT NULL,
  `id_bags` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id_bags`),
  KEY `FK_users_bag_id_bags` (`id_bags`),
  CONSTRAINT `FK_users_bag_id` FOREIGN KEY (`id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_users_bag_id_bags` FOREIGN KEY (`id_bags`) REFERENCES `bags` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_bag`
--

LOCK TABLES `users_bag` WRITE;
/*!40000 ALTER TABLE `users_bag` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_bag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_types`
--

DROP TABLE IF EXISTS `users_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `is_block` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_types`
--

LOCK TABLES `users_types` WRITE;
/*!40000 ALTER TABLE `users_types` DISABLE KEYS */;
INSERT INTO `users_types` VALUES (0,'Ban',1),(1,'Membre',1),(2,'VIP',1),(9,'Animatrice',1),(10,'Animateur',1),(15,'Rédactrice',1),(16,'Rédacteur',1),(17,'Designeuse',1),(18,'Designer',1),(19,'Modératrice',1),(20,'Modérateur',1),(21,'Co-Administratrice',1),(22,'Co-Administrateur',1),(23,'Administratrice',1),(24,'Administrateur',1);
/*!40000 ALTER TABLE `users_types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-14 14:04:16
