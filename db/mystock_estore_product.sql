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
-- Table structure for table `estore_product`
--

DROP TABLE IF EXISTS `estore_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estore_product` (
  `item_refno` varchar(16) NOT NULL,
  `item` varchar(15) NOT NULL,
  `item_desc` varchar(45) NOT NULL,
  `product` varchar(5) NOT NULL,
  `record_status` varchar(1) NOT NULL DEFAULT 'O',
  `item_status` varchar(10) DEFAULT 'NEW',
  `total_qty` int(11) DEFAULT '0',
  `qty_left` int(11) DEFAULT NULL,
  `cost_price` decimal(10,2) DEFAULT '0.00',
  `selling_price` decimal(10,2) DEFAULT '0.00',
  `manufacturer` varchar(45) DEFAULT NULL,
  `expiry_date` varchar(10) DEFAULT NULL,
  `user_created` varchar(20) DEFAULT NULL,
  `date_created` varchar(12) DEFAULT NULL,
  `serial_no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`item_refno`),
  UNIQUE KEY `product_no_UNIQUE` (`serial_no`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estore_product`
--

LOCK TABLES `estore_product` WRITE;
/*!40000 ALTER TABLE `estore_product` DISABLE KEYS */;
INSERT INTO `estore_product` VALUES ('COKE101080101','COKE2','CAN COKE','COKE','O','OLD',24,0,2.00,3.00,'COCA COLA','2017-08-09','SAMTECH','',7),('DON NEWDRINK0225','DON SIMON','DONE SIMON MULTI FRUITS','DRINK','O','NEW',12,0,6.00,7.00,'NAIJA DON SIMON','2017-06-08','mik@gmail.com','2017-02-25',27),('FANT101080801','FANTA','CAN FANTA','COKE','O','NEW',72,0,1.50,3.00,'COCA COLA','2017-01-25','EMEKA',NULL,8),('FANT101090201','FANTA','CAN FANTA','FANTA','O','NEW',36,26,1.20,3.00,'COCA COLA','2017-01-25','EMMA',NULL,9),('FLORNEWBULB0225','FLORESENCE TUBE','GREEN FLORESENCE TUBE ','BULB','O','NEW',36,36,20.00,25.00,'GHANA ELECTRONICS','2017-04-30','chinwe@gmail.com','2017-02-25',28),('JACK1DRINK0110','JACKET','INDIAN JACKET','DRINK','O','NEW',56,56,8889.00,89999.00,'INDIAN COTTON','2017-01-10','FRANK','2017-01-10',24),('LUX_1DRINK0110','LUX_','LUX SOAP OLD STOCK','DRINK','O','NEW',67,66,999887.00,667.00,'LUX ACCRA','2017-01-10','FRANK','2017-01-10',25),('RUSH101090901','RUSH','RUSH ENERGY DRINK','DRINK','O','NEW',100,70,1.00,2.00,'RUSH GHANA','2017-09-01','FRANK',NULL,11),('RUSH501090901','RUSH','RUSH ENERGY DRINK NIGERIA','DRINK','O','NEW',300,300,2.00,4.00,'RUSH NIGERIA','2017-01-10','FRANK',NULL,12),('SING1DRINK011','SINGLET','BLUE SINGLET','DRINK','O','NEW',2,2,2.00,3.00,'NIGERIA','2017-01-10','FRANK','2017-01-10',23),('SOAP203040901','OMO','OMO CLEAN','DRINK','O','NEW',22,11,2.00,4.00,'ACCRA MADE','2017-01-18','FRANK','2017-40-09',20),('SOAP203045901','aaaaaa','ssssssssssssss','DRINK','O','NEW',22,22,1.00,2.00,'sssssssssssssssssssss','2017-01-09','FRANK',NULL,18),('SOAP203088901','SOAP','DETOL SOAP','DRINK','O','1',50,50,3.00,4.00,'DETOL GHANA','2017-01-04','FRANK',NULL,13),('SOAP203090001','RRRRR','RRRRRRRRRRR','DRINK','O','NEW',45,45,4.00,5.00,'RRRRRRRRRRR','2017-01-17','FRANK',NULL,15),('SOAP203090901','PPPP','OOOOOOOOOO','DRINK','O','2',39,39,2.00,4.00,'UUUUUUUUU','2017-01-13','FRANK',NULL,14),('SOAP203095901','OKER','OKEREKWU','DRINK','O','OLD',30,30,2.00,3.00,'OKE','2017-01-09','FRANK',NULL,16),('SOAP203096901','CCEC','CCC DESC','CCPR','O','NEW',3,3,10.00,23.00,'CCC MAN','2017-02-21','TOCHI','2017-01-01',17),('SOAP203098901','SPOON','KITCHEN SPOON','DRINK','O','OLD',50,50,5.00,7.00,'CHINA SPOON','2017-01-09','FRANK','2017-37-09',19),('SPRI101090901','SPRIT','CAN SPRIT','DRINK','O','NEW',36,36,1.00,2.00,'COCA COLA','2017-01-25','UZOR',NULL,10),('SPRIOLDBULB0222','SPRING BED','GHANA SPRING BEDS','BULB','O','OLD',50,50,2000.00,2500.00,'GHANA SPB','2017-01-18','emeka@yahoo.com','2017-02-22',26),('TOV1DRINK110','STOVE','KEROSENE STOVE','DRINK','O','NEW',34,33,3.00,11.00,'STOVE COMPANY','2017-05-12','FRANK','2017-01-10',22);
/*!40000 ALTER TABLE `estore_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-07 10:42:13
