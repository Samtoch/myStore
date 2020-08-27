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
-- Table structure for table `product_group`
--

DROP TABLE IF EXISTS `product_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_group` (
  `product_group` varchar(5) NOT NULL,
  `group_desc` varchar(45) NOT NULL,
  `group_code` varchar(5) NOT NULL,
  `record_status` varchar(1) NOT NULL,
  `group_no` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` varchar(11) DEFAULT NULL,
  `user_created` varchar(15) DEFAULT NULL,
  UNIQUE KEY `group_code_UNIQUE` (`group_code`),
  UNIQUE KEY `group_no_UNIQUE` (`group_no`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_group`
--

LOCK TABLES `product_group` WRITE;
/*!40000 ALTER TABLE `product_group` DISABLE KEYS */;
INSERT INTO `product_group` VALUES ('BULB','LED BULBS','BULB','O',6,'2017-02-11','emeka@yahoo.com'),('TEL','LEDs','c','O',5,'2017-02-11','TEL'),('CCCC','CCCCCCCC','CCCC','O',18,'2017-02-11','emeka@yahoo.com'),('CUP','PLASTIC CUP','CUP1','O',7,'2017-02-11','emeka@yahoo.com'),('DDD','DDDDD','DDDD','O',12,'2017-02-11','emeka@yahoo.com'),('DRINK','SOFT DRINK','DRINK','O',2,NULL,NULL),('FFFF','FFFFFFFFFF','FFFF','O',13,'2017-02-11','emeka@yahoo.com'),('HHHH','HHHHHHHHHH','HHHH','O',19,'2017-02-11','emeka@yahoo.com'),('BEDS','MASTER BED','MBED','O',8,'2017-02-11','emeka@yahoo.com'),('MILK','POWDERED MILK','MILK','O',1,NULL,NULL),('NNNN','NNNNNNNNN','NNNN','O',17,'2017-02-11','emeka@yahoo.com'),('PPP','PPPPP','PPPP','O',16,'2017-02-11','emeka@yahoo.com'),('RRRR','RRRRRRRRRRR','RRRR','O',9,'2017-02-11','emeka@yahoo.com'),('SHOE','FORIEN SHOES','SHOE1','0',4,'2017-02-09','SAMTECH'),('SOAP','FORIGN SOAPS','SOAP','O',3,NULL,NULL),('TTTT','TTTTTTTTTTTT','TTTT','O',10,'2017-02-11','emeka@yahoo.com'),('UUUU','UUUUUUUUUUU','UUUU','O',15,'2017-02-11','emeka@yahoo.com'),('WWW','WWWWWWW','WWWW','O',11,'2017-02-11','emeka@yahoo.com');
/*!40000 ALTER TABLE `product_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-25  1:55:16
