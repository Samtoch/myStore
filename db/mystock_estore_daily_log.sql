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
-- Table structure for table `estore_daily_log`
--

DROP TABLE IF EXISTS `estore_daily_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estore_daily_log` (
  `itemseqid` varchar(16) NOT NULL,
  `item_ref` varchar(16) NOT NULL,
  `item_name` varchar(20) DEFAULT NULL,
  `entry_seq` int(11) NOT NULL AUTO_INCREMENT,
  `selling_price` decimal(10,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `qty_sold` int(11) DEFAULT NULL,
  `total_amt` decimal(10,2) DEFAULT NULL,
  `difference` decimal(10,2) DEFAULT NULL,
  `maker` varchar(20) DEFAULT NULL,
  `auth_stat` varchar(1) DEFAULT NULL,
  `trn_date` varchar(10) DEFAULT NULL,
  `qty_left` int(10) DEFAULT NULL,
  `cost_price` decimal(10,2) DEFAULT NULL,
  `period_code` varchar(3) DEFAULT NULL,
  `fin_year` varchar(4) DEFAULT NULL,
  `delete_stat` varchar(1) DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `product` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`itemseqid`),
  UNIQUE KEY `entry_seq_UNIQUE` (`entry_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=1012 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estore_daily_log`
--

LOCK TABLES `estore_daily_log` WRITE;
/*!40000 ALTER TABLE `estore_daily_log` DISABLE KEYS */;
INSERT INTO `estore_daily_log` VALUES ('001COKE0224103','COKE101080101','COKE2',102,NULL,3.00,1,3.00,NULL,'mik@gmail.com',NULL,'2015-02-27',5,2.00,NULL,NULL,NULL,NULL,'COKE'),('001COKE0224107','COKE101080101','COKE2',106,3.00,10.00,1,3.00,7.00,'emeka@yahoo.com','A','2016-02-27',50,2.00,'M02','2017',NULL,NULL,'COKE'),('001COKE02251001','COKE101080101','COKE2',1001,3.00,1.00,1,3.00,-2.00,'mik@gmail.com','A','2017-02-01',23,2.00,'M02','2017',NULL,NULL,'COKE'),('001COKE02271011','COKE101080101','COKE2',1006,3.00,3.00,12,36.00,0.00,'chinwe@gmail.com','A','2017-02-27',11,2.00,'M02','2017',NULL,'2017-02-27 09:54:40','COKE'),('001COKE03041012','COKE101080101','COKE2',1007,NULL,3.00,3,9.00,NULL,'chinwe@gmail.com','A','2017-03-04',8,2.00,'M03','2017',NULL,'2017-03-04 21:06:18','COKE'),('001COKE03041013','COKE101080101','COKE2',1008,NULL,3.00,4,12.00,NULL,'chinwe@gmail.com','A','2017-03-04',4,2.00,'M03','2017',NULL,'2017-03-04 21:36:36','COKE'),('001COKE03041016','COKE101080101','COKE2',1010,3.00,1.00,2,6.00,-4.00,'chinwe@gmail.com','A','2017-03-04',2,2.00,'M03','2017',NULL,'2017-03-04 23:29:21','COKE'),('001COKE03041017','COKE101080101','COKE2',1011,3.00,5.00,2,6.00,4.00,'chinwe@gmail.com','A','2017-03-04',0,2.00,'M03','2017',NULL,'2017-03-04 23:29:37','COKE'),('001DON 02251003','DON NEWDRINK0225','DON SIMON',1003,NULL,7.00,1,7.00,NULL,'mik@gmail.com','A','2017-02-25',0,6.00,'M02','2017',NULL,'2017-02-25 12:22:00','DRINK'),('001FANT0224105','FANT101080801','FANTA',104,NULL,3.00,1000,3000.00,NULL,'emeka@yahoo.com','A',NULL,5,1.50,'M02','2017',NULL,NULL,'COKE'),('001FANT0224106','FANT101090201','FANTA',105,NULL,3.90,999,6.00,NULL,'emeka@yahoo.com','A',NULL,5,1.20,'M02','2017',NULL,NULL,'FANTA'),('001FANT02251006','FANT101080801','FANTA',1004,NULL,3.00,60,180.00,NULL,'chinwe@gmail.com','A','2017-02-25',12,1.50,'M02','2017',NULL,'2017-02-25 18:46:12','COKE'),('001FANT02251009','FANT101080801','FANTA',1005,NULL,3.00,12,36.00,NULL,'chinwe@gmail.com','A','2017-02-25',0,1.50,'M02','2017',NULL,'2017-02-25 18:46:59','COKE'),('001FANT03041015','FANT101090201','FANTA',1009,NULL,5.00,10,50.00,NULL,'chinwe@gmail.com','A','2017-03-04',26,1.20,'M03','2017',NULL,'2017-03-04 22:29:26','FANTA'),('001JACK0224108','JACK1DRINK0110','JACKET',107,NULL,100.00,8,800.00,NULL,'emeka@yahoo.com','A',NULL,5,8889.00,'M02','2017',NULL,NULL,'DRINK'),('001LUX_0225115','LUX_1DRINK0110','LUX_',112,NULL,667.00,1,667.00,NULL,'mik@gmail.com','A',NULL,66,999887.00,'M02','2017',NULL,NULL,'DRINK'),('001RUSH0224104','RUSH101090901','RUSH',103,NULL,2.50,200,500.00,NULL,'emeka@yahoo.com','A',NULL,5,1.00,'M02','2017',NULL,NULL,'DRINK'),('001RUSH0225109','RUSH101090901','RUSH',108,NULL,2.00,20,40.00,NULL,'mik@gmail.com','A',NULL,80,1.00,'M25','2017',NULL,NULL,'DRINK'),('001RUSH0225111','RUSH101090901','RUSH',109,NULL,2.60,10,NULL,NULL,'mik@gmail.com','A',NULL,70,1.00,'M25','2017',NULL,NULL,'DRINK'),('001SOAP0225112','SOAP203040901','OMO',110,NULL,4.00,10,NULL,NULL,'mik@gmail.com','A',NULL,12,2.00,'M02','2017',NULL,NULL,'DRINK'),('001SOAP0225113','SOAP203040901','OMO',111,NULL,4.00,1,NULL,NULL,'mik@gmail.com','A',NULL,11,2.00,'M02','2017',NULL,NULL,'DRINK'),('001TOV102251002','TOV1DRINK110','STOVE',1002,NULL,11.00,1,NULL,NULL,'mik@gmail.com','A','2017-02-25',33,3.00,'M02','2017',NULL,'2017-02-25 01:36:56','DRINK');
/*!40000 ALTER TABLE `estore_daily_log` ENABLE KEYS */;
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