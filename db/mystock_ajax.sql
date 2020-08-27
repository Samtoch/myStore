CREATE DATABASE  IF NOT EXISTS `mystock` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mystock`;
-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: mystock
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Table structure for table `ajax`
--

DROP TABLE IF EXISTS `ajax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ajax` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `engine` varchar(255) NOT NULL DEFAULT '',
  `browser` varchar(255) NOT NULL DEFAULT '',
  `platform` varchar(255) NOT NULL DEFAULT '',
  `version` float NOT NULL DEFAULT '0',
  `grade` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ajax`
--

LOCK TABLES `ajax` WRITE;
/*!40000 ALTER TABLE `ajax` DISABLE KEYS */;
INSERT INTO `ajax` VALUES (1,'Trident','Internet Explorer 4.0','Win 95+',4,'X'),(2,'Trident','Internet Explorer 5.0','Win 95+',5,'C'),(3,'Trident','Internet Explorer 5.5','Win 95+',5.5,'A'),(4,'Trident','Internet Explorer 6','Win 98+',6,'A'),(5,'Trident','Internet Explorer 7','Win XP SP2+',7,'A'),(6,'Trident','AOL browser (AOL desktop)','Win XP',6,'A'),(7,'Gecko','Firefox 1.0','Win 98+ / OSX.2+',1.7,'A'),(8,'Gecko','Firefox 1.5','Win 98+ / OSX.2+',1.8,'A'),(9,'Gecko','Firefox 2.0','Win 98+ / OSX.2+',1.8,'A'),(10,'Gecko','Firefox 3.0','Win 2k+ / OSX.3+',1.9,'A'),(11,'Gecko','Camino 1.0','OSX.2+',1.8,'A'),(12,'Gecko','Camino 1.5','OSX.3+',1.8,'A'),(13,'Gecko','Netscape 7.2','Win 95+ / Mac OS 8.6-9.2',1.7,'A'),(14,'Gecko','Netscape Browser 8','Win 98SE+',1.7,'A'),(15,'Gecko','Netscape Navigator 9','Win 98+ / OSX.2+',1.8,'A'),(16,'Gecko','Mozilla 1.0','Win 95+ / OSX.1+',1,'A'),(17,'Gecko','Mozilla 1.1','Win 95+ / OSX.1+',1.1,'A'),(18,'Gecko','Mozilla 1.2','Win 95+ / OSX.1+',1.2,'A'),(19,'Gecko','Mozilla 1.3','Win 95+ / OSX.1+',1.3,'A'),(20,'Gecko','Mozilla 1.4','Win 95+ / OSX.1+',1.4,'A'),(21,'Gecko','Mozilla 1.5','Win 95+ / OSX.1+',1.5,'A'),(22,'Gecko','Mozilla 1.6','Win 95+ / OSX.1+',1.6,'A'),(23,'Gecko','Mozilla 1.7','Win 98+ / OSX.1+',1.7,'A'),(24,'Gecko','Mozilla 1.8','Win 98+ / OSX.1+',1.8,'A'),(25,'Gecko','Seamonkey 1.1','Win 98+ / OSX.2+',1.8,'A'),(26,'Gecko','Epiphany 2.20','Gnome',1.8,'A'),(27,'Webkit','Safari 1.2','OSX.3',125.5,'A'),(28,'Webkit','Safari 1.3','OSX.3',312.8,'A'),(29,'Webkit','Safari 2.0','OSX.4+',419.3,'A'),(30,'Webkit','Safari 3.0','OSX.4+',522.1,'A'),(31,'Webkit','OmniWeb 5.5','OSX.4+',420,'A'),(32,'Webkit','iPod Touch / iPhone','iPod',420.1,'A'),(33,'Webkit','S60','S60',413,'A'),(34,'Presto','Opera 7.0','Win 95+ / OSX.1+',6,'A'),(35,'Presto','Opera 7.0','Win 95+ / OSX.1+',23,'A'),(36,'Presto','Opera 7.5','Win 95+ / OSX.2+',44,'A'),(37,'Presto','Opera 8.0','Win 95+ / OSX.2+',43,'A'),(38,'Presto','Opera 8.5','Win 95+ / OSX.2+',432,'A'),(39,'Presto','Opera 9.0','Win 95+ / OSX.3+',667,'A'),(40,'Presto','Opera 9.2','Win 88+ / OSX.3+',2,'A'),(41,'Presto','Opera 9.5','Win 88+ / OSX.3+',5,'A'),(42,'Presto','Opera for Wii','Wii',6,'A'),(43,'Presto','Nokia N800','N800',7,'A'),(44,'Presto','Nintendo DS browser','Nintendo DS',8.5,'C/A<sup>1</sup>'),(45,'KHTML','Konqureror 3.1','KDE 3.1',3.1,'C'),(46,'KHTML','Konqureror 3.3','KDE 3.3',3.3,'A'),(47,'KHTML','Konqureror 3.5','KDE 3.5',3.5,'A'),(48,'Tasman','Internet Explorer 4.5','Mac OS 8-9',5,'X'),(49,'Tasman','Internet Explorer 5.1','Mac OS 7.6-9',1,'C'),(50,'Tasman','Internet Explorer 5.2','Mac OS 8-X',1,'C'),(51,'Misc','NetFront 3.1','Embedded devices',67,'C'),(52,'Misc','NetFront 3.4','Embedded devices',87,'A'),(53,'Misc','Dillo 0.8','Embedded devices',66,'X'),(54,'Misc','Links','Text only',87,'X'),(55,'Misc','Lynx','Text only',88,'X'),(56,'Misc','IE Mobile','Windows Mobile 6',766,'C'),(57,'Misc','PSP browser','PSP',89,'C'),(58,'Other browsers','All others','-',76,'U');
/*!40000 ALTER TABLE `ajax` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-07 10:42:12
