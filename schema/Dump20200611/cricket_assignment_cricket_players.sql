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
-- Table structure for table `cricket_players`
--

DROP TABLE IF EXISTS `cricket_players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cricket_players` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jersey_number` int(11) NOT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_id` int(10) unsigned NOT NULL,
  `played_matches` int(11) NOT NULL,
  `runs` int(11) NOT NULL,
  `best_score` int(11) NOT NULL,
  `fifties` int(11) NOT NULL,
  `hundreds` int(11) NOT NULL,
  `wickets` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cricket_players_team_id_foreign` (`team_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricket_players`
--

LOCK TABLES `cricket_players` WRITE;
/*!40000 ALTER TABLE `cricket_players` DISABLE KEYS */;
INSERT INTO `cricket_players` VALUES (1,'Sachin','Tendulkar','sachin.jpg',111,'IND',1,10,1000,123,5,2,2,NULL,NULL),(2,'Dhoni','MS','dhoni.jpg',121,'IND',1,8,530,101,3,1,0,NULL,NULL),(3,'Aaron ','James Finch','aaron.jpg',219,'AUS',2,10,500,58,2,0,6,NULL,NULL),(4,'Alex','Tyson Carey','alex.jpg',220,'AUS',2,7,380,70,1,0,4,NULL,NULL),(5,'EOIN ','MORGAN','eoin.jpg',310,'ENG',3,15,1100,145,2,1,3,NULL,NULL),(6,'Ben','Stokes','ben.jpg',332,'ENG',3,11,885,170,3,2,0,NULL,NULL),(9,'Rohit','Sharma','rohit.jpg',108,'IND',1,11,1998,138,21,4,2,NULL,NULL),(10,'Jonny','Bairstow','jonny.png',369,'ENG',3,10,445,157,2,1,0,NULL,NULL),(11,'Virat','Kohli','kohli.jpg',171,'IND',1,177,5412,113,36,5,6,NULL,NULL),(12,'Hardik','Pandya','pandya.jpg',169,'IND',1,66,1068,154,3,1,1,NULL,NULL),(13,'K.L ','Rahul','rahul.jpg',181,'IND',1,67,1977,138,13,1,0,NULL,NULL),(14,'Rishabh','Pant','rishabh.jpg',186,'IND',1,54,1736,162,11,1,5,NULL,NULL),(15,'Jasprit','Bumrah','bumrah.jpg',192,'IND',1,77,2183,21,0,0,0,NULL,NULL),(16,'Mohammed','Shami','shami.jpg',153,'IND',1,49,1547,25,0,0,5,NULL,NULL),(17,'Ravindra','Jadeja','Jadeja.jpg',133,'IND',1,170,1927,122,0,1,4,NULL,NULL),(18,'Dinesh','Karthik','karthik.jpg',176,'IND',1,182,3654,129,0,18,0,NULL,NULL),(19,'Mark','Wood','mark.jpg',333,'ENG',3,15,1508,57,2,0,0,NULL,NULL),(20,'Liam','Dawson','liam.jpg',371,'ENG',3,3,84,42,1,0,2,NULL,NULL),(21,'Tom','Curran','curran.jpg',362,'ENG',3,20,198,102,0,1,5,NULL,NULL),(22,'Jos','Buttler','buttler.jpg',315,'ENG',3,45,1386,150,9,1,2,NULL,NULL),(24,'Liam','Plunkett','plunkett.jpg',357,'ENG',3,7,225,37,0,0,1,NULL,NULL),(25,'Jofra','Archer','archer.jpg',359,'ENG',3,21,616,18,0,0,3,NULL,NULL),(26,'Jason','Roy','roy.jpg',321,'ENG',3,8,179,133,1,1,2,NULL,NULL),(27,'Moeen','Ali','moeen.jpg',389,'ENG',3,16,297,165,3,1,0,NULL,NULL),(37,'Steve','Smith','smith.jpg',203,'AUS',2,81,2022,128,8,1,5,NULL,NULL),(38,'David','Warner','warner.jpg',257,'AUS',2,126,4706,142,44,4,0,NULL,NULL),(39,'Glenn','Maxwell','maxwell.jpg',259,'AUS',2,69,1397,161,6,1,1,NULL,NULL),(40,'Mitchell','Starc','starc.jpg',265,'AUS',2,27,693,17,0,0,4,NULL,NULL),(45,'Pat','Cummins','cummins.jpg',248,'AUS',2,16,499,21,0,0,2,NULL,NULL),(46,'Kane','Richardson','richardson.jpg',216,'AUS',2,14,443,17,0,0,3,NULL,NULL),(47,'Adam','Zampa','zampa.jpg',234,'AUS',2,11,278,48,0,0,1,NULL,NULL),(48,'Nathan Lyon','Nathan','nathan.jpg',291,'AUS',2,2,48,30,0,0,1,NULL,NULL),(49,'Marcus','Stoinis','stoinis.jpg',273,'AUS',2,29,473,52,1,0,0,NULL,NULL),(50,'Chris','Gayle','gayle.jpg',991,'WI',4,125,4484,151,28,6,0,NULL,NULL),(51,'Jason','Holder','holder.jpg',944,'WI',4,11,38,16,0,0,1,NULL,NULL),(52,'Shimron','Hetmyer','hetmyer.jpg',986,'WI',4,5,90,75,1,0,0,NULL,NULL),(53,'Carlos','Brathwaite','brathwaite.jpg',975,'WI',4,16,181,43,0,0,1,NULL,NULL),(54,'Nicholas','Pooran','pooran.jpg',942,'WI',4,7,168,48,0,0,3,NULL,NULL),(55,'Sheldon','Cottrell','cottrell.jpg',964,'WI',4,27,738,20,0,0,1,NULL,NULL),(56,'Oshane','Thomas','oshane-thomas.jpg',931,'WI',4,4,79,15,0,0,4,NULL,NULL),(57,'Fabian','Allen','fabian-allen.jpg',965,'WI',4,13,67,9,0,0,3,NULL,NULL),(58,'Sunil','Ambris','ambris.jpg',951,'WI',4,13,447,101,2,1,0,NULL,NULL),(59,'Kemar','Roach','roach.jpg',945,'WI',4,11,284,28,0,0,1,NULL,NULL),(60,'Shannon','Gabriel','gabriel.jpg',915,'WI',4,2,56,18,0,0,1,NULL,NULL);
/*!40000 ALTER TABLE `cricket_players` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-11 17:23:18
