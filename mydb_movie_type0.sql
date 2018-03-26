-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Dumping data for table `movie_type`
--

LOCK TABLES `movie_type` WRITE;
/*!40000 ALTER TABLE `movie_type` DISABLE KEYS */;
INSERT INTO `movie_type` VALUES (1,2200,1,'English','3D'),(2,2200,1,'English','3D'),(3,1515,1,'Hindi','2D'),(3,1845,1,'Hindi','2D'),(4,1130,4,'Tamil','2D'),(4,1500,4,'Tamil','2D'),(5,1130,1,'Tamil','2D'),(5,1500,1,'Tamil','2D'),(5,1830,1,'Tamil','2D'),(5,2145,1,'Tamil','2D'),(5,1130,5,'Tamil','2D'),(5,1500,5,'Tamil','2D'),(5,1830,5,'Tamil','2D'),(5,2200,5,'Tamil','2D'),(5,1130,2,'Tamil','2D'),(5,1500,2,'Tamil','2D'),(5,1830,2,'Tamil','2D'),(5,2200,2,'Tamil','2D'),(6,1130,3,'Tamil','2D'),(6,1500,3,'Tamil','2D'),(6,1830,3,'Tamil','2D'),(6,2200,3,'Tamil','2D'),(7,1145,1,'Telegu','2D'),(7,1515,1,'Telegu','2D'),(8,1845,1,'Malayalam','2D'),(9,900,1,'English','3D'),(9,1515,1,'English','3D'),(9,2200,1,'English','3D'),(9,900,2,'English','3D'),(9,1500,2,'English','3D'),(9,1130,1,'Tamil','3D'),(9,1830,1,'Tamil','3D'),(9,2200,2,'Tamil','3D'),(9,1130,2,'Tamil','3D'),(9,1830,2,'Tamil','3D');
/*!40000 ALTER TABLE `movie_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-03 17:12:59
