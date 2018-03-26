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
-- Table structure for table `user_general`
--

DROP TABLE IF EXISTS `user_general`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_general` (
  `User_ID` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `First_Name` varchar(12) NOT NULL,
  `Mid_Name` varchar(10) DEFAULT NULL,
  `Last_Name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`User_ID`),
  UNIQUE KEY `User_ID_UNIQUE` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_general`
--

LOCK TABLES `user_general` WRITE;
/*!40000 ALTER TABLE `user_general` DISABLE KEYS */;
INSERT INTO `user_general` VALUES ('aboydao','l7f6MDFHSJb8','Alwin','X','Boyda'),('AdminAaya','AdminHiHun','Sukrit','','Bedi'),('ahesserb','7qL34K','Adham','L','Hesser'),('aladena','RV5wEnWsAwyJ','Ara','','Laden'),('amaccaffertyg','1nu6bekqH5O','Aggy','','MacCafferty'),('avynehall7','CoBTtqCOBn','Amata','','Vynehall'),('bcallerf','E0lRRZ','Bartlett','','Caller'),('bderricoatj','ETcvUuL','Brittaney','M','Derricoat'),('bgodwyn8','G4mFwkLS4','Brigg','T','Godwyn'),('breisensteing','wanJyxNHW','Britney','V','Reisenstein'),('byantsurevm','yNe1Rj8jX','Barny','','Yantsurev'),('cbaudet4','2WqkMPACR','Cynde','D','Baudet'),('cgonet6','MNkl7joQu15d','Clementia','','Gonet'),('cmaccallum7','fFvx96QCk5','Cyrillus','','MacCallum'),('cmattys6','aokTgk9z','Cicely','','Mattys'),('cmetha','4JVX7POdG','Chickie','','Meth'),('cruzick','37y5sq','Colly','C','Ruzic'),('csouthwood0','heUnAYOH','Cross','M','Southwood'),('cstedmanf','evRPN6SCv','Chelsy','S','Stedman'),('ctrevaskisd','nbatOjHcT','Cyrille','','Trevaskis'),('dthomase','C9m6ffXA976m','Dottie','H','Thomas'),('ecollingtonn','TSR9ERXESJdO','Eldridge','','Collington'),('ejanjicc','LWVpPjb2y','Ely','','Janjic'),('ekiosseld','hiPQGJ','Elianora','B','Kiossel'),('ewiburnb','ZQq9MUNBb','Esra','P','Wiburn'),('fhunt5','Tehkmh9s7lv','Flossie','','Hunt'),('fmccarterh','caZASAQcOB','Filippo','J','McCarter'),('hchallens8','nIqsrs8HZU','Homerus','O','Challens'),('hmargreme','BcU7sCy6yX','Herrick','','Margrem'),('iballin9','cT5FsRBY','Ileana','','Ballin'),('jcamies1','y35F97K6Qwo','Jerrilee','','Camies'),('jratcliffej','gOnxlpO','Jo','','Ratcliffe'),('kbaum9','Jr26tF0PwM','Koren','','Baum'),('kdaeth2','KPD032Ni','Kitti','D','Aeth'),('kgilffillan0','TcclWFP','Kennett','A','Gilffillan'),('kreihilll','1AlX9YCurdxA','Kora','','Reihill'),('ksteward1','xuxLT0F','Kylen','','Steward'),('ldeamerh','sTQvpKyafKsT','Liana','','Deamer'),('mbusch3','gdBJaS05yP','Marigold','','Busch'),('mgrahami','PNXENVe','Moss','','Graham'),('mmclaughlin2','XW95Yep','Monty','','McLaughlin'),('nlynnitt4','nlS7qdOjBU','Nerita','E','Lynnitt'),('saloshkino','Vm727a2crb','Sheilah','F','Aloshkin'),('scurnnokm','Kh7BILf','Sher','M','Curnnok'),('stuppeny5','jKdT2YPyEH','Selestina','','Tuppeny'),('thamby3','cyvdCwPUSU3','Timothee','','Hamby'),('tschlagc','Exdwnj2OHhSN','Thedric','','Schlag'),('wmcarleyk','kSTg1KXvd01M','Weston','','McArley'),('wselbornen','K7FfmUMy','Waldemar','','Selborne'),('wtatel','YEmyXW','Warden','','Tate'),('znussi','EdyEXtdN','Zebadiah','I','Nuss');
/*!40000 ALTER TABLE `user_general` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-03 17:03:02
