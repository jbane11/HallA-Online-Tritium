-- MySQL dump 10.14  Distrib 5.5.64-MariaDB, for Linux (x86_64)
--
-- Host: halladb    Database: triton-work
-- ------------------------------------------------------
-- Server version	5.1.73-log

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
-- Table structure for table `TargetInfo`
--

DROP TABLE IF EXISTS `TargetInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TargetInfo` (
  `time` date NOT NULL,
  `name` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `encoder` int(11) NOT NULL,
  `encoder_err` int(11) NOT NULL,
  `density_par_0` float DEFAULT '1',
  `density_err_0` float NOT NULL DEFAULT '0',
  `density_par_1` float DEFAULT '0',
  `density_err_1` float DEFAULT '0',
  `density_par_2` float DEFAULT '0',
  `density_err_2` float DEFAULT '0',
  `thickness` float(8,4) NOT NULL DEFAULT '0.0000',
  `thick_err` float(8,4) NOT NULL DEFAULT '0.0000',
  `A` int(3) NOT NULL DEFAULT '0',
  `Z` int(3) NOT NULL DEFAULT '0',
  `amu` float(8,3) NOT NULL DEFAULT '0.000',
  `tarid` int(4) DEFAULT '-1',
  `up_wall` float(10,6) DEFAULT NULL,
  `down_wall` float(10,6) DEFAULT NULL,
  PRIMARY KEY (`time`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TargetInfo`
--

LOCK TABLES `TargetInfo` WRITE;
/*!40000 ALTER TABLE `TargetInfo` DISABLE KEYS */;
INSERT INTO `TargetInfo` VALUES ('2018-01-01','Tritium','gas',33106235,200000,1,0.003,-0.00535333,0.00200933,6.6e-05,7.0652e-05,0.0851,0.0008,3,1,3.016,2,0.208000,0.343000),('2018-01-01','Deuterium','gas',29367355,200000,1,0.003,-0.0067,0.00071,0.000116,2.9e-05,0.1422,0.0008,2,1,2.014,1,0.215000,0.294000),('2018-01-01','Hydrogen','gas',25610043,200000,1,0.006,-0.009,0.0012,0.00017,4.7e-05,0.0708,0.0004,1,1,1.010,0,0.311000,0.330000),('2018-01-01','Helium-3','gas',21875520,200000,1,0.003,-0.0051,0.00064,0.0001036,2.5e-05,0.0534,0.0006,3,2,3.016,3,0.203000,0.328000),('2018-01-01','Empty Cell','solid',18119995,200000,1,0,0,0,0,0,0.0000,0.0000,27,13,26.980,7,0.254000,0.279000),('2018-01-01','Dummy','solid',15175217,500,1,0,0,0,0,0,0.6990,0.0012,27,13,26.980,8,1.248000,1.248000),('2018-01-01','Multifoils','solid',14394929,500,1,0,0,0,0,0,0.0000,0.0000,12,6,12.010,-1,0.000000,0.000000),('2018-01-01','Carbon Hole','solid',13108119,200000,1,0,0,0,0,0,0.0000,0.0000,12,6,12.010,-1,0.000000,0.000000),('2018-01-01','Raster Target','solid',12444209,500,1,0,0,0,0,0,0.0000,0.0000,0,0,0.000,-1,0.000000,0.000000),('2018-01-01','Thick Aluminum','solid',11728945,500,1,0,0,0,0,0,1.3700,0.0070,27,13,26.980,-1,0.000000,0.000000),('2018-01-01','Carbon','solid',11013681,500,1,0,0,0,0,0,0.0883,0.0002,12,6,12.010,6,0.000000,0.000000),('2018-01-01','Titanium','solid',10298417,500,1,0,0,0,0,0,0.4081,0.0008,48,22,47.876,9,0.000000,0.000000),('2018-01-01','BeO','solid',9583153,500,1,0,0,0,0,0,0.0000,0.0000,0,0,0.000,-1,0.000000,0.000000),('2018-01-01','Home (No Target)','solid',0,500,1,0,0,0,0,0,0.0000,0.0000,0,0,0.000,-1,0.000000,0.000000),('2018-08-01','Tritium','gas',32973114,200000,1,0.003,-0.00535333,0.00200933,6.6e-05,7.0652e-05,0.0851,0.0008,3,1,3.016,2,0.257000,0.276000),('2018-08-01','Deuterium','gas',29234234,200000,1,0.003,-0.0067,0.00071,0.000116,2.9e-05,0.1422,0.0008,2,1,2.014,1,0.215000,0.294000),('2018-08-01','Hydrogen','gas',25495354,200000,1,0.006,-0.009,0.0012,0.00017,4.7e-05,0.0708,0.0004,1,1,1.010,0,0.311000,0.330000),('2018-08-01','Helium-3','gas',21756474,200000,1,0.003,-0.0051,0.00064,0.0001036,2.5e-05,0.0534,0.0006,3,2,3.016,3,0.203000,0.328000),('2018-08-01','Empty Cell','solid',18017594,200000,1,0,0,0,0,0,0.0000,0.0000,27,13,26.980,7,0.254000,0.279000),('2018-08-01','Dummy','solid',15042096,500,1,0,0,0,0,0,0.6990,0.0012,27,13,26.980,8,1.248000,1.248000),('2018-08-01','Multifoils','solid',14241329,500,1,0,0,0,0,0,0.0000,0.0000,12,6,12.010,-1,0.000000,0.000000),('2018-08-01','Carbon Hole','solid',12954519,200000,1,0,0,0,0,0,0.0000,0.0000,12,6,12.010,-1,0.000000,0.000000),('2018-08-01','Raster Target','solid',12290609,500,1,0,0,0,0,0,0.0000,0.0000,0,0,0.000,-1,0.000000,0.000000),('2018-08-01','Thick Aluminum','solid',11575345,500,1,0,0,0,0,0,1.3700,0.0070,27,13,26.980,-1,0.000000,0.000000),('2018-08-01','Carbon','solid',10860081,500,1,0,0,0,0,0,0.0883,0.0002,12,6,12.010,6,0.000000,0.000000),('2018-08-01','Titanium','solid',10144817,500,1,0,0,0,0,0,0.4081,0.0008,48,22,47.876,9,0.000000,0.000000),('2018-08-01','BeO','solid',9429553,500,1,0,0,0,0,0,0.0000,0.0000,0,0,0.000,-1,0.000000,0.000000),('2018-08-01','Home (No Target)','solid',0,500,1,0,0,0,0,0,0.0000,0.0000,0,0,0.000,-1,0.000000,0.000000);
/*!40000 ALTER TABLE `TargetInfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-09  0:00:09
