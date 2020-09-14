CREATE DATABASE  IF NOT EXISTS `cricket_assignment` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cricket_assignment`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: cricket_assignment
-- ------------------------------------------------------
-- Server version	5.7.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cricket_matches`
--

DROP TABLE IF EXISTS `cricket_matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cricket_matches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `teamA` int(10) unsigned NOT NULL,
  `teamB` int(10) unsigned NOT NULL,
  `date` date NOT NULL,
  `winner` int(10) unsigned NOT NULL,
  `man_of_match` int(10) unsigned NOT NULL,
  `venue` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cricket_matches_teama_foreign` (`teamA`),
  KEY `cricket_matches_teamb_foreign` (`teamB`),
  KEY `cricket_matches_winner_foreign` (`winner`),
  KEY `cricket_matches_man_of_match_foreign` (`man_of_match`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricket_matches`
--

LOCK TABLES `cricket_matches` WRITE;
/*!40000 ALTER TABLE `cricket_matches` DISABLE KEYS */;
INSERT INTO `cricket_matches` VALUES (1,3,4,'2019-05-30',3,6,'Kennington Oval, London',NULL,NULL),(2,2,1,'2019-06-05',1,18,'The Rose Bowl, Southampton',NULL,NULL),(3,3,1,'2019-06-30',1,11,'Edgbaston, Birmingham',NULL,NULL);
/*!40000 ALTER TABLE `cricket_matches` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-11 17:23:19
