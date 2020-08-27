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
-- Table structure for table `news_table`
--

DROP TABLE IF EXISTS `news_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_table` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `date` varchar(10) DEFAULT NULL,
  `description` varchar(1000) NOT NULL DEFAULT '',
  `detail` text,
  `category` varchar(100) NOT NULL DEFAULT '',
  `image` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_table`
--

LOCK TABLES `news_table` WRITE;
/*!40000 ALTER TABLE `news_table` DISABLE KEYS */;
INSERT INTO `news_table` VALUES (61,'kkkkkkkkkkkkkkkkkkkkkk','2017-01-16','ooooooooooooooooooooooo','jjjjjjjjjjjjjjjjjjjccccccccccccccccccccrestored NigeriaÃ?Â¢??s sanity, territorial integrity, says Buhari  Read more at: http://www.vanguardngr.com/2017/01/we-ve-restored-nigerias-sanity-territorial-integrity-says-buhari/  ','Africa','http://trc.taboola.com/vanguardmedialimited/log/3/click?pi=%2F2017%2F01%2Fwe-ve-restored-nigerias-sanity-territorial-integrity-says-buhari&ri=92897b23ba5a9eed91a6ea187e90163e&sd=v2_8f86da832a0f3f8622a527b0c3aef012_e56a5923-0570-435e-a1e5-a102068adde2_1484495597_1484495597_CIi3jgYQuvI_GLDa1JaaKyABKAM&ui=e56a5923-0570-435e-a1e5-a102068adde2&it=text&ii=6830000080500144027&pt=text&li=rbox-t2m&url=http%3A%2F%2Fwww.vanguardngr.com%2F2017%2F01%2Fosinbajo-lead-fg-fact-finding-team-tompolos-home-base-ndelta-areas%2F&vi=1484495596848&r=27&ppb=CJ4D&cpb=Eg4yNDEtOTMtUkVMRUFTRRikASAAKhlhbS50YWJvb2xhc3luZGljYXRpb24uY29tMgh3YXRlcjQ1MQ'),(62,'Procedure for Uninstalling Oracle ','2017/01/16','Manual Oracle Uninstalation Guide','Uninstall all Oracle components using the Oracle Universal Installer (OUI).\r\nRun regedit.exe and delete the HKEY_LOCAL_MACHINE/SOFTWARE/Oracle key. This contains registry entires for all Oracle products.\r\nIf you are running 64-bit Windows, you should also delete the HKEY_LOCAL_MACHINE/SOFTWARE/Wow6432Node/Oracle key if it exists.\r\nDelete any references to Oracle services left behind in the following part of the registry (HKEY_LOCAL_MACHINE/SYSTEM/CurrentControlSet/Services/Ora*). It should be pretty obvious which ones relate to Oracle.\r\nReboot your machine.','World','https://oracle-base.com/articles/12c/multitenant-manage-users-and-privileges-for-cdb-and-pdb-12cr1'),(64,'Procedure for Uninstalling Oracle ','2017/01/16','Manual gggggggggggggggggg','https://oracle-base.com/articles/12c/multitenant-manage-users-and-privileges-for-cdb-and-pdb-12cr1','World','https://oracle-base.com/articles/12c/multitenant-manage-users-and-privileges-for-cdb-and-pdb-12cr1'),(65,'Procedure for Uninstalling Oracle ','2017/01/16','Manual uninstal','Manual Oracle Uninstall\r\nA number of people have contacted me regarding problems uninstalling Oracle products. The two methods listed below should only be used as a last resort and will remove *all* Oracle software allowing a re-install. If you make any mistakes they can be quite destructive so be careful.\r\n','World','https://oracle-base.com/articles/12c/multitenant-manage-users-and-privileges-for-cdb-and-pdb-12cr1'),(66,'Procedure for Uninstalling Oracle ','2017/01/16','Manual uninstallation Guide','Manual Oracle Uninstall\r\nA number of people have contacted me regarding problems uninstalling Oracle products. The two methods listed below should only be used as a last resort and will remove *all* Oracle software allowing a re-install. If you make any mistakes they can be quite destructive so be careful.\r\n','World','https://oracle-base.com/articles/12c/multitenant-manage-users-and-privileges-for-cdb-and-pdb-12cr1'),(67,'Procedure for Uninstalling Oracle ','2017/01/16','Manual uninstallation Guide','Manual Oracle Uninstall\r\nA number of people have contacted me regarding problems uninstalling Oracle products. The two methods listed below should only be used as a last resort and will remove *all* Oracle software allowing a re-install. If you make any mistakes they can be quite destructive so be careful.\r\n','World','https://oracle-base.com/articles/12c/multitenant-manage-users-and-privileges-for-cdb-and-pdb-12cr1'),(68,'Procedure for Uninstalling Oracle ','2017/01/16','Manual Oracle Uninstalation Guide','In the past I\'ve had many problems uninstalling all Oracle products from Windows systems. Here\'s my last resort method:\r\n\r\nUninstall all Oracle components using the Oracle Universal Installer (OUI).\r\nRun regedit.exe and delete the HKEY_LOCAL_MACHINE/SOFTWARE/Oracle key. This contains registry entires for all Oracle products.\r\nIf you are running 64-bit Windows, you should also delete the HKEY_LOCAL_MACHINE/SOFTWARE/Wow6432Node/Oracle key if it exists.\r\nDelete any references to Oracle services left behind in the following part of the registry (HKEY_LOCAL_MACHINE/SYSTEM/CurrentControlSet/Services/Ora*). It should be pretty obvious which ones relate to Oracle.\r\nReboot your machine.\r\nDelete the \"C:\\Oracle\" directory, or whatever directory is your ORACLE_BASE.\r\nDelete the \"C:\\Program Files\\Oracle\" directory.\r\nIf you are running 64-bit Wiindows, you should also delete the \"C:\\Program Files (x86)\\Oracle\" directory.\r\nRemove any Oracle-related subdirectories from the \"C:\\ProgramData\\Microsoft\\Windows\\Start Menu\\Programs\\\" directory.\r\nEmpty the contents of your \"C:\\temp\" directory.\r\nEmpty your recycle bin. ','World','http://d19lga30codh7.cloudfront.net/wp-content/uploads/2017/01/PRESIDENT-BUHARI-ATTENDS-2017-ARMED-FORCES-DAY-6A.jpg'),(69,'Procedure for Uninstalling Oracle ','2017/01/16','Manual Oracle Uninstalation Guide','In the past I\'ve had many problems uninstalling all Oracle products from Windows systems. Here\'s my last resort method:\r\n\r\nUninstall all Oracle components using the Oracle Universal Installer (OUI).\r\nRun regedit.exe and delete the HKEY_LOCAL_MACHINE/SOFTWARE/Oracle key. This contains registry entires for all Oracle products.','Sports','http://d19lga30codh7.cloudfront.net/wp-content/uploads/2017/01/PRESIDENT-BUHARI-ATTENDS-2017-ARMED-FORCES-DAY-6A.jpg'),(70,'Procedure for Uninstalling Oracle ','2017/01/16','Manual Oracle Uninstalation Guide','In the past I\'ve had many problems uninstalling all Oracle products from Windows systems. Here\'s my last resort method:\r\n\r\nUninstall all Oracle components using the Oracle Universal Installer (OUI).\r\nRun regedit.exe and delete the HKEY_LOCAL_MACHINE/SOFTWARE/Oracle key. This contains registry entires for all Oracle products.','Sports','http://d19lga30codh7.cloudfront.net/wp-content/uploads/2017/01/PRESIDENT-BUHARI-ATTENDS-2017-ARMED-FORCES-DAY-6A.jpg'),(71,'mmmmmmmmmmmmmmm','2017/01/25','nnnnnnnnnnnnnnnnnnnnnnnnn','oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo  ','World','pppppppppppppppppppp');
/*!40000 ALTER TABLE `news_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-07 10:42:14
