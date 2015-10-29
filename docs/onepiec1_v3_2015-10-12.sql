-- MySQL dump 10.13  Distrib 5.5.45, for Linux (x86_64)
--
-- Host: localhost    Database: onepiec1_v3
-- ------------------------------------------------------
-- Server version	5.5.45-cll

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
  `name` varchar(25) NOT NULL,
  `money` int(11) NOT NULL,
  `page` text,
  `file` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_crews_types` int(11) NOT NULL,
  `id_crews_banks` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_crews_id_crews_types` (`id_crews_types`),
  KEY `FK_crews_id_crews_banks` (`id_crews_banks`),
  CONSTRAINT `FK_crews_id_crews_banks` FOREIGN KEY (`id_crews_banks`) REFERENCES `crews_banks` (`id`),
  CONSTRAINT `FK_crews_id_crews_types` FOREIGN KEY (`id_crews_types`) REFERENCES `crews_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crews`
--

LOCK TABLES `crews` WRITE;
/*!40000 ALTER TABLE `crews` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crews_banks`
--

LOCK TABLES `crews_banks` WRITE;
/*!40000 ALTER TABLE `crews_banks` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crews_grades`
--

LOCK TABLES `crews_grades` WRITE;
/*!40000 ALTER TABLE `crews_grades` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crews_types`
--

LOCK TABLES `crews_types` WRITE;
/*!40000 ALTER TABLE `crews_types` DISABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forums_categories`
--

LOCK TABLES `forums_categories` WRITE;
/*!40000 ALTER TABLE `forums_categories` DISABLE KEYS */;
INSERT INTO `forums_categories` VALUES (1,'Salle secrète','Salle secrète réservé au staff !','',0,1),(2,'Messages officiels','Tous les messages officiels sont postés ici !','',0,2),(3,'Présentation des membres','C\'est dans cette section que chaque membre du site pourra faire une petite présentation de lui-même.','',0,4),(4,'Aide','Si vous avez besoin d\'aide et que personne ne vous répond sur le t\'chat, cette section vous correspond!','',0,5),(5,'Général','Parlez de tout et de rien',NULL,0,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forums_topics`
--

LOCK TABLES `forums_topics` WRITE;
/*!40000 ALTER TABLE `forums_topics` DISABLE KEYS */;
INSERT INTO `forums_topics` VALUES (5,'Bienvenue sur le forum',0,2,1),(6,'Je t\'emmerdes, Vince.',0,2,1),(7,'Méchant',0,3,1),(8,'Test',0,3,1),(9,'\'1=1 Hello world',0,3,1),(10,'Méchant',0,3,1),(11,'test 3',0,3,1),(12,'1er topic',0,3,1),(13,'2ème topic',0,3,1),(14,'1er topic',0,3,1),(15,'2ème topic',0,3,1),(16,'1er topic',0,3,1),(17,'2ème topic',0,3,1),(18,'test',0,3,1),(19,'#~~éç\"\'(éç\"(à_)12341fdsfsd',0,2,1),(20,'test',0,3,1),(21,'test',0,1,1),(22,'#jefaislesac!',0,3,1),(23,'La faute',0,4,1),(24,'Forum fini',0,2,1),(25,'Maniak teste.',0,2,1),(26,'Bienvenue Maniak',0,1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forums_topics_messages`
--

LOCK TABLES `forums_topics_messages` WRITE;
/*!40000 ALTER TABLE `forums_topics_messages` DISABLE KEYS */;
INSERT INTO `forums_topics_messages` VALUES (3,'Salut le staff,\n\nBienvenue sur le forum de la V3 !\nJ\'espère que de votre côté vous avancez :s\n\nA bientôt',1438470455,0,5,10),(4,'Et je t\'aime fort',1438495624,0,6,19),(5,'Je vais pas te donner l\'accès au forum privé toi :o',1438498789,0,6,10),(6,'Je suis le méchant',1438500924,0,7,18),(7,'La violence c\'est mal m\'voyer !',1438501275,0,6,18),(8,'Je test',1438501404,0,8,18),(10,'Toto',1438502387,0,6,20),(11,'TEST',1438502407,0,6,20),(12,'\'1=1',1438502435,0,6,20),(13,'Test',1438502485,0,9,20),(14,'Reponse',1438502493,0,9,20),(15,'C\'est toi qui a supprimé mon topic\n\nC\'est moi le méchant ici !',1438504018,0,9,18),(16,'Je suis de retour !',1438504101,0,10,18),(17,'haaaaaaaaaa',1438504183,0,10,18),(18,'rerre',1438504278,0,11,18),(19,'nooo',1438504292,0,11,18),(20,'1er message du 1er topic',1438504357,0,12,18),(21,'2ème message du 1er topic',1438504373,0,12,18),(22,'1er message du 1er topic',1438504394,0,13,18),(23,'2ème message du 2ème topic',1438504409,0,13,18),(24,'1er message du 1er topic',1438504474,0,14,18),(25,'2ème message du 1er topic',1438504484,0,14,18),(26,'1er message du 1er topic',1438504500,0,15,18),(27,'1er message du 1er topic',1438504534,0,16,18),(28,'2ème message du 1er topic',1438504540,0,16,18),(29,'1er message du 2ème topic',1438504566,0,17,18),(30,'2ème message du 2ème topic',1438504578,0,17,18),(31,'Ok',1438504834,0,6,18),(32,'3ème message',1438504880,0,17,18),(33,'Pevounet qui essaye de hack mon forum, c\'est MEUGNON TOUT PLEIN <3',1438545691,0,6,10),(34,'Tu es trop méchant toi pfff',1438552165,0,7,10),(35,'test',1438556129,0,18,10),(36,'retest',1438556133,0,18,10),(37,'Ceci est un test',1438583187,0,19,18),(38,'Clairegoutte est une commune française située dans le département de la Haute-Saône en région Franche-Comté.\n\nLe village prend place dans un espace rustique, dominé par la forêt du Chérimont qui couvre plus de la moitié de son territoire. La ruralité de cet espace est contrebalancée par un réseau routier dense facilitant les déplacements vers les villes voisines, permettant à plus de 85 % des Clairegouttois de travailler hors de la commune. La commune est au carrefour des trois départements de la Haute-Saône, du Doubs et du Territoire de Belfort.\n\nFondée durant le Moyen Âge, Clairegoutte a été marquée par le protestantisme, courant fortement présent dans le pays de Montbéliard. Un bénéfique XVIIIe siècle et l\'influence de l\'exploitation des houillères proches pendant les deux siècles suivants firent de Clairegoutte un centre artisanal prospère dont plusieurs demeures témoignent encore. Le village possède un cœur historique à l\'architecture originale et préservée, dont deux ensembles inscrits au patrimoine historique ; un lotissement a été construit en périphérie.\nClairegoutte est une commune française située dans le département de la Haute-Saône en région Franche-Comté.\n\nLe village prend place dans un espace rustique, dominé par la forêt du Chérimont qui couvre plus de la moitié de son territoire. La ruralité de cet espace est contrebalancée par un réseau routier dense facilitant les déplacements vers les villes voisines, permettant à plus de 85 % des Clairegouttois de travailler hors de la commune. La commune est au carrefour des trois départements de la Haute-Saône, du Doubs et du Territoire de Belfort.\n\nFondée durant le Moyen Âge, Clairegoutte a été marquée par le protestantisme, courant fortement présent dans le pays de Montbéliard. Un bénéfique XVIIIe siècle et l\'influence de l\'exploitation des houillères proches pendant les deux siècles suivants firent de Clairegoutte un centre artisanal prospère dont plusieurs demeures témoignent encore. Le village possède un cœur historique à l\'architecture originale et préservée, dont deux ensembles inscrits au patrimoine historique ; un lotissement a été construit en périphérie.\nClairegoutte est une commune française située dans le département de la Haute-Saône en région Franche-Comté.\n\nLe village prend place dans un espace rustique, dominé par la forêt du Chérimont qui couvre plus de la moitié de son territoire. La ruralité de cet espace est contrebalancée par un réseau routier dense facilitant les déplacements vers les villes voisines, permettant à plus de 85 % des Clairegouttois de travailler hors de la commune. La commune est au carrefour des trois départements de la Haute-Saône, du Doubs et du Territoire de Belfort.\n\nFondée durant le Moyen Âge, Clairegoutte a été marquée par le protestantisme, courant fortement présent dans le pays de Montbéliard. Un bénéfique XVIIIe siècle et l\'influence de l\'exploitation des houillères proches pendant les deux siècles suivants firent de Clairegoutte un centre artisanal prospère dont plusieurs demeures témoignent encore. Le village possède un cœur historique à l\'architecture originale et préservée, dont deux ensembles inscrits au patrimoine historique ; un lotissement a été construit en périphérie.\nClairegoutte est une commune française située dans le département de la Haute-Saône en région Franche-Comté.\n\nLe village prend place dans un espace rustique, dominé par la forêt du Chérimont qui couvre plus de la moitié de son territoire. La ruralité de cet espace est contrebalancée par un réseau routier dense facilitant les déplacements vers les villes voisines, permettant à plus de 85 % des Clairegouttois de travailler hors de la commune. La commune est au carrefour des trois départements de la Haute-Saône, du Doubs et du Territoire de Belfort.\n\nFondée durant le Moyen Âge, Clairegoutte a été marquée par le protestantisme, courant fortement présent dans le pays de Montbéliard. Un bénéfique XVIIIe siècle et l\'influence de l\'exploitation des houillères proches pendant les deux siècles suivants firent de Clairegoutte un centre artisanal prospère dont plusieurs demeures témoignent encore. Le village possède un cœur historique à l\'architecture originale et préservée, dont deux ensembles inscrits au patrimoine historique ; un lotissement a été construit en périphérie.\nClairegoutte est une commune française située dans le département de la Haute-Saône en région Franche-Comté.\n\nLe village prend place dans un espace rustique, dominé par la forêt du Chérimont qui couvre plus de la moitié de son territoire. La ruralité de cet espace est contrebalancée par un réseau routier dense facilitant les déplacements vers les villes voisines, permettant à plus de 85 % des Clairegouttois de travailler hors de la commune. La commune est au carrefour des trois départements de la Haute-Saône, du Doubs et du Territoire de Belfort.\n\nFondée durant le Moyen Âge, Clairegoutte a été marquée par le protestantisme, courant fortement présent dans le pays de Montbéliard. Un bénéfique XVIIIe siècle et l\'influence de l\'exploitation des houillères proches pendant les deux siècles suivants firent de Clairegoutte un centre artisanal prospère dont plusieurs demeures témoignent encore. Le village possède un cœur historique à l\'architecture originale et préservée, dont deux ensembles inscrits au patrimoine historique ; un lotissement a été construit en périphérie.\nClairegoutte est une commune française située dans le département de la Haute-Saône en région Franche-Comté.\n\nLe village prend place dans un espace rustique, dominé par la forêt du Chérimont qui couvre plus de la moitié de son territoire. La ruralité de cet espace est contrebalancée par un réseau routier dense facilitant les déplacements vers les villes voisines, permettant à plus de 85 % des Clairegouttois de travailler hors de la commune. La commune est au carrefour des trois départements de la Haute-Saône, du Doubs et du Territoire de Belfort.\n\nFondée durant le Moyen Âge, Clairegoutte a été marquée par le protestantisme, courant fortement présent dans le pays de Montbéliard. Un bénéfique XVIIIe siècle et l\'influence de l\'exploitation des houillères proches pendant les deux siècles suivants firent de Clairegoutte un centre artisanal prospère dont plusieurs demeures témoignent encore. Le village possède un cœur historique à l\'architecture originale et préservée, dont deux ensembles inscrits au patrimoine historique ; un lotissement a été construit en périphérie.\nClairegoutte est une commune française située dans le département de la Haute-Saône en région Franche-Comté.\n\nLe village prend place dans un espace rustique, dominé par la forêt du Chérimont qui couvre plus de la moitié de son territoire. La ruralité de cet espace est contrebalancée par un réseau routier dense facilitant les déplacements vers les villes voisines, permettant à plus de 85 % des Clairegouttois de travailler hors de la commune. La commune est au carrefour des trois départements de la Haute-Saône, du Doubs et du Territoire de Belfort.\n\nFondée durant le Moyen Âge, Clairegoutte a été marquée par le protestantisme, courant fortement présent dans le pays de Montbéliard. Un bénéfique XVIIIe siècle et l\'influence de l\'exploitation des houillères proches pendant les deux siècles suivants firent de Clairegoutte un centre artisanal prospère dont plusieurs demeures témoignent encore. Le village possède un cœur historique à l\'architecture originale et préservée, dont deux ensembles inscrits au patrimoine historique ; un lotissement a été construit en périphérie.\nClairegoutte est une commune française située dans le département de la Haute-Saône en région Franche-Comté.\n\nLe village prend place dans un espace rustique, dominé par la forêt du Chérimont qui couvre plus de la moitié de son territoire. La ruralité de cet espace est contrebalancée par un réseau routier dense facilitant les déplacements vers les villes voisines, permettant à plus de 85 % des Clairegouttois de travailler hors de la commune. La commune est au carrefour des trois départements de la Haute-Saône, du Doubs et du Territoire de Belfort.\n\nFondée durant le Moyen Âge, Clairegoutte a été marquée par le protestantisme, courant fortement présent dans le pays de Montbéliard. Un bénéfique XVIIIe siècle et l\'influence de l\'exploitation des houillères proches pendant les deux siècles suivants firent de Clairegoutte un centre artisanal prospère dont plusieurs demeures témoignent encore. Le village possède un cœur historique à l\'architecture originale et préservée, dont deux ensembles inscrits au patrimoine historique ; un lotissement a été construit en périphérie.\nClairegoutte est une commune française située dans le département de la Haute-Saône en région Franche-Comté.\n\nLe village prend place dans un espace rustique, dominé par la forêt du Chérimont qui couvre plus de la moitié de son territoire. La ruralité de cet espace est contrebalancée par un réseau routier dense facilitant les déplacements vers les villes voisines, permettant à plus de 85 % des Clairegouttois de travailler hors de la commune. La commune est au carrefour des trois départements de la Haute-Saône, du Doubs et du Territoire de Belfort.\n\nFondée durant le Moyen Âge, Clairegoutte a été marquée par le protestantisme, courant fortement présent dans le pays de Montbéliard. Un bénéfique XVIIIe siècle et l\'influence de l\'exploitation des houillères proches pendant les deux siècles suivants firent de Clairegoutte un centre artisanal prospère dont plusieurs demeures témoignent encore. Le village possède un cœur historique à l\'architecture originale et préservée, dont deux ensembles inscrits au patrimoine historique ; un lotissement a été construit en périphérie.\nClairegoutte est une commune française située dans le département de la Haute-Saône en région Franche-Comté.\n\nLe village prend place dans un espace rustique, dominé par la forêt du Chérimont qui couvre plus de la moitié de son territoire. La ruralité de cet espace est contrebalancée par un réseau routier dense facilitant les déplacements vers les villes voisines, permettant à plus de 85 % des Clairegouttois de travailler hors de la commune. La commune est au carrefour des trois départements de la Haute-Saône, du Doubs et du Territoire de Belfort.\n\nFondée durant le Moyen Âge, Clairegoutte a été marquée par le protestantisme, courant fortement présent dans le pays de Montbéliard. Un bénéfique XVIIIe siècle et l\'influence de l\'exploitation des houillères proches pendant les deux siècles suivants firent de Clairegoutte un centre artisanal prospère dont plusieurs demeures témoignent encore. Le village possède un cœur historique à l\'architecture originale et préservée, dont deux ensembles inscrits au patrimoine historique ; un lotissement a été construit en périphérie.',1438583228,0,19,18),(39,'Ho, je n\'avais pas vu les rangs',1438583263,0,6,18),(40,'test',1438583570,0,20,18),(41,'C\'est bizarre l\'affichage de la réponse le cadre de réponse colle le header ',1438624524,0,5,25),(42,'C\'est pas gentil ça. Je veux participer un peu :(',1438663018,0,6,19),(43,'Bah participe mon con :P',1438697268,0,6,10),(44,'Tu baises les ménagères, bien, tu dois avoir le cul qui brille.',1438697536,0,10,22),(45,'test88888',1438697670,0,5,18),(46,'Clash ici :s',1438710117,0,10,10),(47,'test',1438710205,0,21,10),(48,'Maintenant si le topic fait plus de 30 messages alors sa découpe en plusieurs page ;) ',1438720444,0,5,10),(49,'Test avec des caractères spéciaux',1438720848,0,22,25),(50,'#zboob',1438720870,0,22,10),(51,'C\'est \"aucun topic écrit\" pas \"écris\" sac :p',1438721204,0,23,25),(52,'Ouais ouais ouais ouais ouais ouais ouais faut que je test le ban sur toi du coup ;)',1438721282,0,23,10),(53,'Salut,\n\nJuste pour dire que le gros du forum est fini...\nVoilà voilà.',1438733148,0,24,10),(54,'ça marche !',1438904150,0,23,25),(55,'Voilà, vous avez maintenant le nombre de vos messages.',1441112821,0,24,10),(56,'coucou',1441115779,0,25,28),(57,'Ake koukou toi',1441116008,0,25,10),(58,'Je souhaite la bienvenue dans le staff v3 à Maniak ! ',1441117500,0,26,10),(59,'test',1441144808,1,25,10),(60,'Merci ;)',1441144814,0,26,28),(61,'retest',1441144822,1,25,10),(62,'Merci ;)',1441144838,1,26,28),(63,'Merci ;)',1441144838,1,26,28),(64,'Tu es le premier membre du staff v3 sur le site xD',1441225461,0,26,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forums_topics_types`
--

LOCK TABLES `forums_topics_types` WRITE;
/*!40000 ALTER TABLE `forums_topics_types` DISABLE KEYS */;
INSERT INTO `forums_topics_types` VALUES (1,'ouvert'),(2,'fermer'),(3,'sondage');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (2,'Une deuxième news',0,'Une deuxième news </br> Pour voir l\'odre des news </br> NANANANANANA',0,10),(3,'Troisième news',0,'Allleeez </br> Petite news au calme </br> Je suis dans mon jacouzie tu es dans ta ... </br> JALOUSIE',0,10),(4,'Salut le staff',0,'Salut le staff,<br/><br/>\n\nJ\'espère que la première version de la V3 vous satisfait.<br />\nPour le moment il n\'y a aucun design, et c\'est normal pour le moment ! ;) <br />\nVous pouvez naviguez sur le site, si vous avez des soucis contactez moi. <br />\nEssayez donc de créer votre compte, de vous connecter, de me MP, etc...\n<br />\n<br />\nHave fun !',0,10),(5,'V3 IS COMING',1435415275,'Salut mes chéries, <br /> <br />\nJ\'ai rajouté le système de date (Wouaw c\'est beau on voit que j\'ai écrit ça le 27 juin :P) <br />\nJ\'ai aussi rajouter le système de commentaire pour chaque news ! Alors n\'hésitez pas a vous déchainez !! :D <br /> <br />\nJ\'ai bien bossé pour l\'anniv de Pev ! :P <br /> <br />\nHave fun !',0,10),(6,'Allez au taff',1437569388,'AU TAFF \nAU TAFF\n\nAU TAFF\n\n\nAU TAFFFFFFFFFFFFF :o',0,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_comments`
--

LOCK TABLES `news_comments` WRITE;
/*!40000 ALTER TABLE `news_comments` DISABLE KEYS */;
INSERT INTO `news_comments` VALUES (1,1435415363,'Yearl ça marche </br>\nIzi izi',0,10,5),(2,1435416183,'Journal !',0,15,5),(4,1435416952,'C\'est bon tu y arrives ?',0,10,5),(6,1435417657,'Pagination :(',0,15,5),(7,1435417824,'J\'écris sur ton message',0,15,5),(8,1435417870,'10',0,15,5),(9,1435417982,'test',0,10,5),(10,1435418140,'pas 5 mais 2',0,15,2),(12,1435421512,'J\'écris à 5',0,15,5),(13,1435421533,'J\'écris à 3',0,15,3),(14,1435425342,'Tu écris à 5 ?\nBon bah j\'écris à 6 x)',0,10,5);
/*!40000 ALTER TABLE `news_comments` ENABLE KEYS */;
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
-- Table structure for table `perso_avatars`
--

DROP TABLE IF EXISTS `perso_avatars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perso_avatars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `id_personnages` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_perso_avatars_id_personnages` (`id_personnages`),
  CONSTRAINT `FK_perso_avatars_id_personnages` FOREIGN KEY (`id_personnages`) REFERENCES `personnages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perso_avatars`
--

LOCK TABLES `perso_avatars` WRITE;
/*!40000 ALTER TABLE `perso_avatars` DISABLE KEYS */;
/*!40000 ALTER TABLE `perso_avatars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnages`
--

DROP TABLE IF EXISTS `personnages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personnages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `descr` text,
  `is_block` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnages`
--

LOCK TABLES `personnages` WRITE;
/*!40000 ALTER TABLE `personnages` DISABLE KEYS */;
INSERT INTO `personnages` VALUES (1,'Lufffy','D-monkey','Le roi des pirates',1),(2,'test','testfirst','un test',0);
/*!40000 ALTER TABLE `personnages` ENABLE KEYS */;
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
  `is_read` tinyint(1) NOT NULL,
  `is_trash` tinyint(1) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_users_1` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_privates_messages_id_users` (`id_users`),
  KEY `FK_privates_messages_id_users_1` (`id_users_1`),
  CONSTRAINT `FK_privates_messages_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_privates_messages_id_users_1` FOREIGN KEY (`id_users_1`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privates_messages`
--

LOCK TABLES `privates_messages` WRITE;
/*!40000 ALTER TABLE `privates_messages` DISABLE KEYS */;
INSERT INTO `privates_messages` VALUES (3,'Petit message de test <br /> allez a plus tard mon choux',0,1,0,10,11),(4,'dfdfd',0,1,0,10,11),(5,'dffd',0,1,1,10,10),(6,'tedsfd',0,1,1,11,10),(7,'fdfdgf',0,1,1,10,10),(8,'dfsfdfd',0,1,1,10,10),(9,'Je vais te tuer et voler ton corps de son tombeau !',0,1,1,15,10),(10,'Évite pas mes messages, je t\'aurais !!!!',0,1,0,15,10),(11,':o J\'ai peur maintenant !!',0,1,1,10,15),(12,'Un jours, je t\'aurais !',0,1,0,15,10),(13,'Tu as raison d\'avoir peur, être inférieur !',0,1,0,15,10),(14,'Comment oses tu me parler ainsi ?',0,1,1,10,15),(15,'dfdfd',0,1,1,10,10),(16,'dfdfddffgf',0,1,1,10,10),(17,'Voilà corrigé',0,1,1,10,15),(18,'Tu codes comme tu écris ton propre nom, mal :)',0,1,1,15,10),(19,'Pourquoi donc je reste sur oprpg si c\'est pour lire des conneries comme ça ? :\'(',0,1,0,10,15),(20,'Salut ma beauté <3',0,1,0,10,14),(21,'On dit :\n\"Je vous pris de m\'excuser pour les désagréments, mais maintenant, il ne devrait plus y avoir de problème.\n\nMerci pour votre compréhension\n\n\nDumbeldor\"',0,1,1,15,10),(22,'draaaaaaaaaaaaa Cortex des pyramides',0,1,0,10,15),(23,'test',0,1,1,10,10),(24,'Salut bb,<br />\nTu es là ? :D',0,1,1,10,15),(25,'On va tester ça en faisant du ping-pong\n\n\n   _________\n 0 |   |  °| 0\n | |   |   | |\n   ---------\n',0,1,1,15,15),(26,'On va tester ça en faisant du ping-pong \n\n   _________\n 0 |   |  °| 0\n | |   |   | |\n   --------- ',0,1,1,15,10),(27,'Ouais mais je sais pas jouer au ping pong virtuel moi :\'( <br />\n0 | | °| 0 | | | | | --------- ',0,1,0,10,15),(28,'Surtout quand ça déforme ton message ...',0,1,1,15,10),(29,'Nan mon système de messagerie est parfait ! <br />\nIl déforme rien du tout ! :\'(',0,1,0,10,15),(30,'Journal\n\nEncore des tests à faire ou je peux déco ?',0,1,1,15,10),(31,'Déco c\'est bon trk\nMerci !',0,1,0,10,15),(34,'test',0,1,1,10,10),(35,'test',0,1,1,10,10),(36,'Petite réponse pour test ;)\n\n				-----------------------------------------------Réponse------------------------------------------\n				Tu as raison d\'avoir peur, être inférieur !',1435443523,1,1,10,10),(37,'Test de la réponse + de la date :)\nHave fun !\n\n				-----------------------------------------------Réponse------------------------------------------\n				Un jours, je t\'aurais !',1435443638,1,0,10,15),(38,'\n\n				-----------------------------------------------Réponse------------------------------------------\ntestitttttttiiii',1435446255,1,0,11,10),(39,'GG\n\n				-----------------------------------------------Réponse------------------------------------------\n				\n\n				-----------------------------------------------Réponse------------------------------------------\ntestitttttttiiii',1435446330,1,0,10,11),(40,'KOUKOU TU VEUX VOIR MA BITE ?\n\n<3',1435446568,1,0,10,11),(41,'Un truc me chiffone\n\n				-----------------------------------------------Réponse------------------------------------------\n				Test de la réponse + de la date :)\n                               Je suis un vilain garçon\nHave fun !\n\n				-----------------------------------------------Réponse------------------------------------------\n				Un jours, je t\'aurais !',1435474112,1,0,15,10),(42,'Quoi donc ?\n\n				-----------------------------------------------Réponse------------------------------------------\n				Un truc me chiffone\n\n				-----------------------------------------------Réponse------------------------------------------\n				Test de la réponse + de la date :)\n                               Je suis un vilain garçon\nHave fun !\n\n				-----------------------------------------------Réponse------------------------------------------\n				Un jours, je t\'aurais !',1435664083,0,0,10,15),(43,'Méchant !',1438188725,1,0,10,18),(44,'Test',1438191808,1,0,10,10),(45,'Les messages restent indéfiniment où il y a une limite de temps ?',1438415341,1,0,18,10),(46,'Indefiniment\n\n				-----------------------------------------------Réponse------------------------------------------\n				Les messages restent indéfiniment où il y a une limite de temps ?',1438471349,1,0,10,10),(47,'Test',1438502585,1,0,20,10),(48,'Hello',1438502676,1,0,20,20),(49,'Test test\n\n				-----------------------------------------------Réponse------------------------------------------\n				Test',1438584416,0,0,10,20),(50,'Test message privé',1438624479,1,0,25,10),(51,'test\n\n				-----------------------------------------------Réponse------------------------------------------\n				Test message privé',1438697120,1,1,10,25),(52,'Salut beau gosse <3',1438725197,0,1,10,19),(53,'Je t\'aime fort Vince. Désolé d\'avoir fait le con :(\n\nJ\'espère que tu me pardonnera D:',1440224687,1,0,19,10),(54,'Oui je te pardonne t\'inquiète pas. Tu es cool comme mec, mais comme modérateur tu dois faire des progrès.\n\n				-----------------------------------------------Réponse------------------------------------------\n				Je t\'aime fort Vince. Désolé d\'avoir fait le con :(\n\nJ\'espère que tu me pardonnera D:',1441113872,1,1,10,19),(55,'Salut chérie !!!!! <3',1441115258,1,0,10,28),(56,'merci pour l\'acceuil. xD\n\n				-----------------------------------------------Réponse------------------------------------------\n				Salut chérie !!!!! <3',1441115888,1,0,28,10),(57,':P\n\n				-----------------------------------------------Réponse------------------------------------------\n				merci pour l\'acceuil. xD\n\n				-----------------------------------------------Réponse------------------------------------------\n				Salut chérie !!!!! <3',1441115992,1,0,10,28),(58,'C\'est plutôt que j\'ai trop d\'histoire sur OPRPG pour en être un bon modo x)',1441136950,1,0,19,10),(59,'^^\n\n				-----------------------------------------------Réponse------------------------------------------\n				C\'est plutôt que j\'ai trop d\'histoire sur OPRPG pour en être un bon modo x)',1441144799,0,0,10,19);
/*!40000 ALTER TABLE `privates_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `id_user` int(11) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('db4b2de10d542403897824fcddf6a4d5',0,'46.193.141.24','Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0',1443731233,''),('c2f35d841c3cdd7158858a6905073d2f',0,'46.193.141.24','Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0',1443731284,'');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
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
  `is_block` tinyint(1) NOT NULL,
  `id_tchats_types` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tchats_id_tchats_types` (`id_tchats_types`),
  CONSTRAINT `FK_tchats_id_tchats_types` FOREIGN KEY (`id_tchats_types`) REFERENCES `tchats_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tchats`
--

LOCK TABLES `tchats` WRITE;
/*!40000 ALTER TABLE `tchats` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tchats_messages`
--

LOCK TABLES `tchats_messages` WRITE;
/*!40000 ALTER TABLE `tchats_messages` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tchats_types`
--

LOCK TABLES `tchats_types` WRITE;
/*!40000 ALTER TABLE `tchats_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `tchats_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tech_ennemies`
--

DROP TABLE IF EXISTS `tech_ennemies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tech_ennemies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `descr` text,
  `is_block` tinyint(1) NOT NULL,
  `id_tech_types` int(11) NOT NULL,
  `id_ennemies` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tech_ennemies_id_tech_types` (`id_tech_types`),
  KEY `FK_tech_ennemies_id_ennemies` (`id_ennemies`),
  CONSTRAINT `FK_tech_ennemies_id_ennemies` FOREIGN KEY (`id_ennemies`) REFERENCES `ennemies` (`id`),
  CONSTRAINT `FK_tech_ennemies_id_tech_types` FOREIGN KEY (`id_tech_types`) REFERENCES `tech_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tech_ennemies`
--

LOCK TABLES `tech_ennemies` WRITE;
/*!40000 ALTER TABLE `tech_ennemies` DISABLE KEYS */;
/*!40000 ALTER TABLE `tech_ennemies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tech_perso`
--

DROP TABLE IF EXISTS `tech_perso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tech_perso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `descr` text,
  `is_block` tinyint(1) NOT NULL,
  `id_personnages` int(11) NOT NULL,
  `id_tech_types` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tech_perso_id_personnages` (`id_personnages`),
  KEY `FK_tech_perso_id_tech_types` (`id_tech_types`),
  CONSTRAINT `FK_tech_perso_id_personnages` FOREIGN KEY (`id_personnages`) REFERENCES `personnages` (`id`),
  CONSTRAINT `FK_tech_perso_id_tech_types` FOREIGN KEY (`id_tech_types`) REFERENCES `tech_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tech_perso`
--

LOCK TABLES `tech_perso` WRITE;
/*!40000 ALTER TABLE `tech_perso` DISABLE KEYS */;
/*!40000 ALTER TABLE `tech_perso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tech_types`
--

DROP TABLE IF EXISTS `tech_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tech_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tech_types`
--

LOCK TABLES `tech_types` WRITE;
/*!40000 ALTER TABLE `tech_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `tech_types` ENABLE KEYS */;
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
  `is_kick` tinyint(1) NOT NULL,
  `messNumber` int(11) NOT NULL,
  `id_personnages` int(11) NOT NULL,
  `id_levels` int(11) NOT NULL,
  `id_objects` int(11) NOT NULL,
  `id_users_types` int(11) NOT NULL,
  `id_users_ranks` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_users_id_personnages` (`id_personnages`),
  KEY `FK_users_id_levels` (`id_levels`),
  KEY `FK_users_id_objects` (`id_objects`),
  KEY `FK_users_id_users_types` (`id_users_types`),
  KEY `FK_users_id_users_ranks` (`id_users_ranks`),
  CONSTRAINT `FK_users_id_levels` FOREIGN KEY (`id_levels`) REFERENCES `levels` (`id`),
  CONSTRAINT `FK_users_id_objects` FOREIGN KEY (`id_objects`) REFERENCES `objects` (`id`),
  CONSTRAINT `FK_users_id_personnages` FOREIGN KEY (`id_personnages`) REFERENCES `personnages` (`id`),
  CONSTRAINT `FK_users_id_users_types` FOREIGN KEY (`id_users_types`) REFERENCES `users_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (10,0,'Dumbeldor','vincentglize@hotmail.fr','0000-00-00',NULL,'592c6815731dbe783453db69a60461294bf9ffbe8f0a61cea640d492bd8edba9b7de9c690ef66552bf0334e0ec6811c109cd6b913f91d79b53b2ab986afdccd3',0,37,1,1,1,6,6),(11,0,'test','test@test.fr','0000-00-00',NULL,'822b039ea55fd409e2a0714408bb1a2019f86d536954c3354f3e9a6ffe6b3fe94898519dda6add948cdd394b849fdfad4c80cfd211bdba360199fbe4bebdffb9',0,0,1,1,1,1,0),(12,0,'ttt','t@t.fr','0000-00-00',NULL,'219810b025e577865192c35f9f7a7f46864e98794a8f9b41f3bb73aa675023f8f299daf9812fb6567ecdaf8ed7e972b7d9f335ed15e70dd9908b51410634ab36',0,0,1,1,1,1,0),(13,0,'lebg','lebg@lebg.fr','0000-00-00',NULL,'28dc62537cce4d7c96eae5dc92f98a84abb6d078f741a57bccc4ce7ce24cb425e89249ae87974afca8b0fb95e0d8aa77fdd3d94a4f97f088603071170cb879b1',0,0,1,1,1,1,0),(14,0,'Atchoum','atchoumestunnaim@hotmail.com','0000-00-00',NULL,'424a502e30cafb4a393fc4228ea9bad05006df9ec452e304929af4bddc7dcb02c9fcc55f0e1422167147f8467f404598b3507c7de9bb84a2bdd21061fa801936',0,0,1,1,1,1,0),(15,0,'Voledesmorts','jesuisunmechant@hotmail.com','0000-00-00',NULL,'96dd74403a86f694ea9c1e59c22dc5bb8e9baae55af500d2a212239953c4eca2aac9dc62c0bf0b4e3ee14d8ea977a285ce17fffde9f396f5d37efc389336fa62',0,0,1,1,1,1,0),(17,0,'Enelos','go_tchou@hotmail.fr','0000-00-00',NULL,'8d83b330e92c3fffb7d63a9d6dab373e97e0d1a6a5a2456570f3f98d629ea3436514d70d77327b96491936f91ef2fe55415a900e627da24694ec85f6d0831501',0,0,1,1,1,1,0),(18,0,'Méchant','carjesuislemechant@gmail.com','0000-00-00',NULL,'df14471f72e3cdd33c344619c45fac6451b0eb6865da737b3b4dcb631736ca52455e34ea9bb7b2e4ee68acf5cc0219cb909faed6442b5ab7f5cb08083bea5a58',0,0,1,1,1,1,0),(19,0,'Trinity','kevinvaik@hotmail.com','0000-00-00',NULL,'9570755c957c635e91095f232c25c63d84fae2173a60fa17a54947191c0fccb650d535810a474e3ab96126530707bd1aea04ecea39079bc9ca3e5de06918d2e2',0,0,1,1,1,1,0),(20,0,'Pev','pev.arfan@gmail.com','0000-00-00',NULL,'fb18e02a3391f66c9d5ccd5f0f43d163a9a59438e98bd4935fa9de515ba45bb0eef259f0642296392c6e91b4e4f3d8865ba89f6630b7dfae221469c346605118',0,0,1,1,1,1,0),(21,0,'Yoniko','gout_brule@hotmail.com','0000-00-00',NULL,'c4a0b6c9217510e5d4cf0c6a26c1adc78f88e0d450642ace2d01e65ad291a914faec8ca00f665e9de107c65a7885c667e4b5865b70d4d33693d95f42fce0cf05',0,0,1,1,1,1,0),(22,0,'Mello','bokax46@hotmail.com','0000-00-00',NULL,'b18053da156ea1daf5bbf37881840ebcede1ba771f7b519f7b72acb7f312bac3db7d11508887c82d1bd8c6c88e9bbc5e4f778680012c184ce4c3316a49f1c4b3',0,0,1,1,1,1,0),(23,0,'Perceval','kadriano@hotmail.fr','0000-00-00',NULL,'837caef52210b51a1f1a61a79408adc9c57ece6dccb36a43e4cda888debe810de48a104681652e2d51cdab0a671d4a75f31cce4eaa6fff67d7996200e44d86c8',0,0,1,1,1,1,0),(24,0,'Alé@#','a@a.com','0000-00-00',NULL,'74090d4d8479c76a7abc916de3ddc1716d18d9135e28316ae3fc5f05851712aa0025a6341a94adafa5da5870a528d18442b957930fcca7c5b7a92a832aa26445',0,0,1,1,1,1,0),(25,0,'Perceval1','kamen@yopmail.com','0000-00-00',NULL,'473ed6e4875a7d32b7743f2111717d6b9cefe61b9dcd279c2fa8c0c1967a2abe6961120d8d9d9d52960b567c5270e870d26e7fcc32b31316fb6f42d92ab96301',0,0,1,1,1,1,0),(26,0,'Tintin','yoniko@outlook.com','0000-00-00',NULL,'96946d3ecd307d0c93b4453a10e71912992190e2b2b64428d3200a7041e7e95a77851edff3f02d5874cc3bc36bece774edbf2f56a8fc2242954013a221359785',0,0,1,1,1,1,0),(27,0,'Salbei','david@chalvia.fr','0000-00-00',NULL,'f0cbeba50b3c2132eb977a0155760a10c4727359d89fe3a58c16f9aa2ab3e59cf67a9478aa463fe297c409885ce500c7de7a80d4b393c09b5a34bf699e37ae15',0,0,1,1,1,1,0),(28,0,'Maniak','christophe.botte@outlook.com','0000-00-00',NULL,'794b05270fe733a7bad007a60685d13d55e17e9dc4ee1dae8f8cf1fc6cc132d3fb85160c958f4f801c1a8957c91afbc3501f998be3f6bc8ee64e4f0cf2a2ec73',0,2,1,1,1,4,4),(29,0,'Nelose','tobi2596@live.fr','0000-00-00',NULL,'8a94e3cc57927548dec602b0902a9fcad68b5f479d6e7c1021e36a020db6a792e1c556e627dd3f7694a2fdd04a97bf8ca916206a7360fbcc49b77bb982ac6895',0,0,2,1,1,1,0),(30,0,'Password','oubliermotdepasse@gmail.com','0000-00-00',NULL,'80c08d8f436dd6e12de05c54acf0fc32343a366f98cf0c7a9f4c7642bd71580f8c567b3af50e3c0f636a1bcf8f2c28094eb7f3fdf786210df6ed71b67a266759',0,0,1,1,1,1,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_avatars`
--

DROP TABLE IF EXISTS `users_avatars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_avatars` (
  `id` int(11) NOT NULL,
  `id_perso_avatars` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id_perso_avatars`),
  KEY `FK_users_avatars_id_perso_avatars` (`id_perso_avatars`),
  CONSTRAINT `FK_users_avatars_id` FOREIGN KEY (`id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_users_avatars_id_perso_avatars` FOREIGN KEY (`id_perso_avatars`) REFERENCES `perso_avatars` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_avatars`
--

LOCK TABLES `users_avatars` WRITE;
/*!40000 ALTER TABLE `users_avatars` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_avatars` ENABLE KEYS */;
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
-- Table structure for table `users_ranks`
--

DROP TABLE IF EXISTS `users_ranks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_ranks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_ranks`
--

LOCK TABLES `users_ranks` WRITE;
/*!40000 ALTER TABLE `users_ranks` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_ranks` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_types`
--

LOCK TABLES `users_types` WRITE;
/*!40000 ALTER TABLE `users_types` DISABLE KEYS */;
INSERT INTO `users_types` VALUES (1,'Membre',1),(2,'Rédacteur',1),(3,'Designer',1),(4,'Modérateur',1),(5,'Co-Administrateur',1),(6,'Administrateur',1);
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

-- Dump completed on 2015-10-12  3:30:53
