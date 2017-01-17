CREATE DATABASE  IF NOT EXISTS `Termostato` /*!40100 DEFAULT CHARACTER SET utf16 */;
USE `Termostato`;
-- MySQL dump 10.13  Distrib 5.7.13, for linux-glibc2.5 (x86_64)
--
-- Host: 192.168.245.253    Database: Termostato
-- ------------------------------------------------------
-- Server version	5.5.53-0+deb7u1

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
-- Table structure for table `NoICE`
--

DROP TABLE IF EXISTS `NoICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NoICE` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `sensor_num` int(3) NOT NULL,
  `r_noice` float NOT NULL,
  `recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`num`,`sensor_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NoICE`
--

LOCK TABLES `NoICE` WRITE;
/*!40000 ALTER TABLE `NoICE` DISABLE KEYS */;
/*!40000 ALTER TABLE `NoICE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cond_t0`
--

DROP TABLE IF EXISTS `cond_t0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cond_t0` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `sensor_num` int(3) NOT NULL,
  `term_t0` float NOT NULL,
  `recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`num`,`sensor_num`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cond_t0`
--

LOCK TABLES `cond_t0` WRITE;
/*!40000 ALTER TABLE `cond_t0` DISABLE KEYS */;
INSERT INTO `cond_t0` VALUES (1,1,14,'2016-11-14 15:00:34'),(2,1,17.5,'2016-11-14 15:00:34'),(3,1,19.5,'2016-11-14 15:00:34');
/*!40000 ALTER TABLE `cond_t0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cond_t1`
--

DROP TABLE IF EXISTS `cond_t1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cond_t1` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `sensor_num` int(3) NOT NULL,
  `term_t1` float NOT NULL,
  `recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`num`,`sensor_num`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cond_t1`
--

LOCK TABLES `cond_t1` WRITE;
/*!40000 ALTER TABLE `cond_t1` DISABLE KEYS */;
INSERT INTO `cond_t1` VALUES (1,2,14.5,'2016-11-14 15:08:23'),(2,2,17.5,'2016-11-14 15:08:23'),(3,2,19.5,'2016-11-14 15:08:23');
/*!40000 ALTER TABLE `cond_t1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cond_t2`
--

DROP TABLE IF EXISTS `cond_t2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cond_t2` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `sensor_num` int(3) NOT NULL,
  `term_t2` float NOT NULL,
  `recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`num`,`sensor_num`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cond_t2`
--

LOCK TABLES `cond_t2` WRITE;
/*!40000 ALTER TABLE `cond_t2` DISABLE KEYS */;
INSERT INTO `cond_t2` VALUES (1,3,14.5,'2016-11-14 15:09:09'),(2,3,17.5,'2016-11-14 15:09:09'),(3,3,19.5,'2016-11-14 15:09:09');
/*!40000 ALTER TABLE `cond_t2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cond_t3`
--

DROP TABLE IF EXISTS `cond_t3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cond_t3` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `sensor_num` int(3) NOT NULL,
  `term_t3` float NOT NULL,
  `recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`num`,`sensor_num`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cond_t3`
--

LOCK TABLES `cond_t3` WRITE;
/*!40000 ALTER TABLE `cond_t3` DISABLE KEYS */;
INSERT INTO `cond_t3` VALUES (1,4,14.5,'2016-11-14 15:10:05'),(2,4,17.5,'2016-11-14 15:10:05'),(3,4,19.5,'2016-11-14 15:10:05');
/*!40000 ALTER TABLE `cond_t3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cond_t4`
--

DROP TABLE IF EXISTS `cond_t4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cond_t4` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `sensor_num` int(3) NOT NULL,
  `term_t4` float NOT NULL,
  `recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`num`,`sensor_num`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cond_t4`
--

LOCK TABLES `cond_t4` WRITE;
/*!40000 ALTER TABLE `cond_t4` DISABLE KEYS */;
INSERT INTO `cond_t4` VALUES (1,5,14.5,'2016-11-14 15:10:56'),(2,5,17.5,'2016-11-14 15:10:56'),(3,5,19.5,'2016-11-14 15:10:56');
/*!40000 ALTER TABLE `cond_t4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t0_sensor`
--

DROP TABLE IF EXISTS `t0_sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t0_sensor` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `tempc` float NOT NULL,
  `recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=16115 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t0_sensor`
--

LOCK TABLES `t0_sensor` WRITE;
/*!40000 ALTER TABLE `t0_sensor` DISABLE KEYS */;
/*!40000 ALTER TABLE `t0_sensor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t1_sensor`
--

DROP TABLE IF EXISTS `t1_sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t1_sensor` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `tempc` float NOT NULL,
  `recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t1_sensor`
--

LOCK TABLES `t1_sensor` WRITE;
/*!40000 ALTER TABLE `t1_sensor` DISABLE KEYS */;
INSERT INTO `t1_sensor` VALUES (1,19.03,'2016-12-18 22:23:34'),(2,19.37,'2016-12-18 22:38:07');
/*!40000 ALTER TABLE `t1_sensor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t2_sensor`
--

DROP TABLE IF EXISTS `t2_sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t2_sensor` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `tempc` float NOT NULL,
  `recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t2_sensor`
--

LOCK TABLES `t2_sensor` WRITE;
/*!40000 ALTER TABLE `t2_sensor` DISABLE KEYS */;
INSERT INTO `t2_sensor` VALUES (1,19.03,'2016-12-18 22:23:34'),(2,19.37,'2016-12-18 22:38:07');
/*!40000 ALTER TABLE `t2_sensor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t3_sensor`
--

DROP TABLE IF EXISTS `t3_sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t3_sensor` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `tempc` float NOT NULL,
  `recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t3_sensor`
--

LOCK TABLES `t3_sensor` WRITE;
/*!40000 ALTER TABLE `t3_sensor` DISABLE KEYS */;
INSERT INTO `t3_sensor` VALUES (1,19.03,'2016-12-18 22:23:34'),(2,19.37,'2016-12-18 22:38:07');
/*!40000 ALTER TABLE `t3_sensor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t4_sensor`
--

DROP TABLE IF EXISTS `t4_sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t4_sensor` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `tempc` float NOT NULL,
  `recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t4_sensor`
--

LOCK TABLES `t4_sensor` WRITE;
/*!40000 ALTER TABLE `t4_sensor` DISABLE KEYS */;
INSERT INTO `t4_sensor` VALUES (1,19.03,'2016-12-18 22:23:34'),(2,19.37,'2016-12-18 22:38:07');
/*!40000 ALTER TABLE `t4_sensor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weekday_t0`
--

DROP TABLE IF EXISTS `weekday_t0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekday_t0` (
  `num` int(11) NOT NULL,
  `day` varchar(15) NOT NULL,
  `H00` int(1) NOT NULL,
  `H00_5` int(1) NOT NULL,
  `H01` int(1) NOT NULL,
  `H01_5` int(1) NOT NULL,
  `H02` int(1) NOT NULL,
  `H02_5` int(1) NOT NULL,
  `H03` int(1) NOT NULL,
  `H03_5` int(1) NOT NULL,
  `H04` int(1) NOT NULL,
  `H04_5` int(1) NOT NULL,
  `H05` int(1) NOT NULL,
  `H05_5` int(1) NOT NULL,
  `H06` int(1) NOT NULL,
  `H06_5` int(1) NOT NULL,
  `H07` int(1) NOT NULL,
  `H07_5` int(1) NOT NULL,
  `H08` int(1) NOT NULL,
  `H08_5` int(1) NOT NULL,
  `H09` int(1) NOT NULL,
  `H09_5` int(1) NOT NULL,
  `H10` int(1) NOT NULL,
  `H10_5` int(1) NOT NULL,
  `H11` int(1) NOT NULL,
  `H11_5` int(1) NOT NULL,
  `H12` int(1) NOT NULL,
  `H12_5` int(1) NOT NULL,
  `H13` int(1) NOT NULL,
  `H13_5` int(1) NOT NULL,
  `H14` int(1) NOT NULL,
  `H14_5` int(1) NOT NULL,
  `H15` int(1) NOT NULL,
  `H15_5` int(1) NOT NULL,
  `H16` int(1) NOT NULL,
  `H16_5` int(1) NOT NULL,
  `H17` int(1) NOT NULL,
  `H17_5` int(1) NOT NULL,
  `H18` int(1) NOT NULL,
  `H18_5` int(1) NOT NULL,
  `H19` int(1) NOT NULL,
  `H19_5` int(1) NOT NULL,
  `H20` int(1) NOT NULL,
  `H20_5` int(1) NOT NULL,
  `H21` int(1) NOT NULL,
  `H21_5` int(1) NOT NULL,
  `H22` int(1) NOT NULL,
  `H22_5` int(1) NOT NULL,
  `H23` int(1) NOT NULL,
  `H23_5` int(1) NOT NULL,
  `H24` int(1) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weekday_t0`
--

LOCK TABLES `weekday_t0` WRITE;
/*!40000 ALTER TABLE `weekday_t0` DISABLE KEYS */;
INSERT INTO `weekday_t0` VALUES (1,'Monday',2,2,2,2,2,2,2,2,2,2,2,3,3,2,2,3,3,3,2,2,2,2,2,2,3,3,3,3,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2),(2,'Tuesday',2,2,2,2,2,2,2,2,2,2,2,3,3,2,2,3,3,3,2,2,2,2,2,2,3,3,3,3,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2),(3,'Wednesday',2,2,2,2,2,2,2,2,2,2,2,3,3,2,2,3,3,3,2,2,2,2,2,2,3,3,3,3,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2),(4,'Thursday',2,2,2,2,2,2,2,2,2,2,2,3,3,2,2,3,3,3,2,2,2,2,2,2,3,3,3,3,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2),(5,'Friday',2,2,2,2,2,2,2,2,2,2,2,3,3,2,2,3,3,3,2,2,2,2,2,2,3,3,3,3,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2),(6,'Saturday',2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,2,2,2,3,3,3,3,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2,2),(7,'Sunday',2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,2,2,2,3,3,3,3,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2,2);
/*!40000 ALTER TABLE `weekday_t0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weekday_t1`
--

DROP TABLE IF EXISTS `weekday_t1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekday_t1` (
  `num` int(11) NOT NULL,
  `day` varchar(15) NOT NULL,
  `H00` int(1) NOT NULL,
  `H00_5` int(1) NOT NULL,
  `H01` int(1) NOT NULL,
  `H01_5` int(1) NOT NULL,
  `H02` int(1) NOT NULL,
  `H02_5` int(1) NOT NULL,
  `H03` int(1) NOT NULL,
  `H03_5` int(1) NOT NULL,
  `H04` int(1) NOT NULL,
  `H04_5` int(1) NOT NULL,
  `H05` int(1) NOT NULL,
  `H05_5` int(1) NOT NULL,
  `H06` int(1) NOT NULL,
  `H06_5` int(1) NOT NULL,
  `H07` int(1) NOT NULL,
  `H07_5` int(1) NOT NULL,
  `H08` int(1) NOT NULL,
  `H08_5` int(1) NOT NULL,
  `H09` int(1) NOT NULL,
  `H09_5` int(1) NOT NULL,
  `H10` int(1) NOT NULL,
  `H10_5` int(1) NOT NULL,
  `H11` int(1) NOT NULL,
  `H11_5` int(1) NOT NULL,
  `H12` int(1) NOT NULL,
  `H12_5` int(1) NOT NULL,
  `H13` int(1) NOT NULL,
  `H13_5` int(1) NOT NULL,
  `H14` int(1) NOT NULL,
  `H14_5` int(1) NOT NULL,
  `H15` int(1) NOT NULL,
  `H15_5` int(1) NOT NULL,
  `H16` int(1) NOT NULL,
  `H16_5` int(1) NOT NULL,
  `H17` int(1) NOT NULL,
  `H17_5` int(1) NOT NULL,
  `H18` int(1) NOT NULL,
  `H18_5` int(1) NOT NULL,
  `H19` int(1) NOT NULL,
  `H19_5` int(1) NOT NULL,
  `H20` int(1) NOT NULL,
  `H20_5` int(1) NOT NULL,
  `H21` int(1) NOT NULL,
  `H21_5` int(1) NOT NULL,
  `H22` int(1) NOT NULL,
  `H22_5` int(1) NOT NULL,
  `H23` int(1) NOT NULL,
  `H23_5` int(1) NOT NULL,
  `H24` int(1) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weekday_t1`
--

LOCK TABLES `weekday_t1` WRITE;
/*!40000 ALTER TABLE `weekday_t1` DISABLE KEYS */;
INSERT INTO `weekday_t1` VALUES (1,'Monday',2,2,2,2,2,2,2,2,2,2,2,3,3,2,2,3,3,3,2,2,2,2,2,2,3,3,3,3,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2),(2,'Tuesday',2,2,2,2,2,2,2,2,2,2,2,3,3,2,2,3,3,3,2,2,2,2,2,2,3,3,3,3,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2),(3,'Wednesday',2,2,2,2,2,2,2,2,2,2,2,3,3,2,2,3,3,3,2,2,2,2,2,2,3,3,3,3,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2),(4,'Thursday',2,2,2,2,2,2,2,2,2,2,2,3,3,2,2,3,3,3,2,2,2,2,2,2,3,3,3,3,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2),(5,'Friday',2,2,2,2,2,2,2,2,2,2,2,3,3,2,2,3,3,3,2,2,2,2,2,2,3,3,3,3,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2),(6,'Saturday',2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,2,2,2,3,3,3,3,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2,2),(7,'Sunday',2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,2,2,2,3,3,3,3,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2,2);
/*!40000 ALTER TABLE `weekday_t1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weekday_t2`
--

DROP TABLE IF EXISTS `weekday_t2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekday_t2` (
  `num` int(11) NOT NULL,
  `day` varchar(15) NOT NULL,
  `H00` int(1) NOT NULL,
  `H00_5` int(1) NOT NULL,
  `H01` int(1) NOT NULL,
  `H01_5` int(1) NOT NULL,
  `H02` int(1) NOT NULL,
  `H02_5` int(1) NOT NULL,
  `H03` int(1) NOT NULL,
  `H03_5` int(1) NOT NULL,
  `H04` int(1) NOT NULL,
  `H04_5` int(1) NOT NULL,
  `H05` int(1) NOT NULL,
  `H05_5` int(1) NOT NULL,
  `H06` int(1) NOT NULL,
  `H06_5` int(1) NOT NULL,
  `H07` int(1) NOT NULL,
  `H07_5` int(1) NOT NULL,
  `H08` int(1) NOT NULL,
  `H08_5` int(1) NOT NULL,
  `H09` int(1) NOT NULL,
  `H09_5` int(1) NOT NULL,
  `H10` int(1) NOT NULL,
  `H10_5` int(1) NOT NULL,
  `H11` int(1) NOT NULL,
  `H11_5` int(1) NOT NULL,
  `H12` int(1) NOT NULL,
  `H12_5` int(1) NOT NULL,
  `H13` int(1) NOT NULL,
  `H13_5` int(1) NOT NULL,
  `H14` int(1) NOT NULL,
  `H14_5` int(1) NOT NULL,
  `H15` int(1) NOT NULL,
  `H15_5` int(1) NOT NULL,
  `H16` int(1) NOT NULL,
  `H16_5` int(1) NOT NULL,
  `H17` int(1) NOT NULL,
  `H17_5` int(1) NOT NULL,
  `H18` int(1) NOT NULL,
  `H18_5` int(1) NOT NULL,
  `H19` int(1) NOT NULL,
  `H19_5` int(1) NOT NULL,
  `H20` int(1) NOT NULL,
  `H20_5` int(1) NOT NULL,
  `H21` int(1) NOT NULL,
  `H21_5` int(1) NOT NULL,
  `H22` int(1) NOT NULL,
  `H22_5` int(1) NOT NULL,
  `H23` int(1) NOT NULL,
  `H23_5` int(1) NOT NULL,
  `H24` int(1) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weekday_t2`
--

LOCK TABLES `weekday_t2` WRITE;
/*!40000 ALTER TABLE `weekday_t2` DISABLE KEYS */;
INSERT INTO `weekday_t2` VALUES (1,'Monday',2,2,2,2,2,2,2,2,2,2,2,3,3,2,2,3,3,3,2,2,2,2,2,2,3,3,3,3,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2),(2,'Tuesday',2,2,2,2,2,2,2,2,2,2,2,3,3,2,2,3,3,3,2,2,2,2,2,2,3,3,3,3,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2),(3,'Wednesday',2,2,2,2,2,2,2,2,2,2,2,3,3,2,2,3,3,3,2,2,2,2,2,2,3,3,3,3,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2),(4,'Thursday',2,2,2,2,2,2,2,2,2,2,2,3,3,2,2,3,3,3,2,2,2,2,2,2,3,3,3,3,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2),(5,'Friday',2,2,2,2,2,2,2,2,2,2,2,3,3,2,2,3,3,3,2,2,2,2,2,2,3,3,3,3,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2),(6,'Saturday',2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,2,2,2,3,3,3,3,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2,2),(7,'Sunday',2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,2,2,2,3,3,3,3,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2,2);
/*!40000 ALTER TABLE `weekday_t2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weekday_t3`
--

DROP TABLE IF EXISTS `weekday_t3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekday_t3` (
  `num` int(11) NOT NULL,
  `day` varchar(15) NOT NULL,
  `H00` int(1) NOT NULL,
  `H00_5` int(1) NOT NULL,
  `H01` int(1) NOT NULL,
  `H01_5` int(1) NOT NULL,
  `H02` int(1) NOT NULL,
  `H02_5` int(1) NOT NULL,
  `H03` int(1) NOT NULL,
  `H03_5` int(1) NOT NULL,
  `H04` int(1) NOT NULL,
  `H04_5` int(1) NOT NULL,
  `H05` int(1) NOT NULL,
  `H05_5` int(1) NOT NULL,
  `H06` int(1) NOT NULL,
  `H06_5` int(1) NOT NULL,
  `H07` int(1) NOT NULL,
  `H07_5` int(1) NOT NULL,
  `H08` int(1) NOT NULL,
  `H08_5` int(1) NOT NULL,
  `H09` int(1) NOT NULL,
  `H09_5` int(1) NOT NULL,
  `H10` int(1) NOT NULL,
  `H10_5` int(1) NOT NULL,
  `H11` int(1) NOT NULL,
  `H11_5` int(1) NOT NULL,
  `H12` int(1) NOT NULL,
  `H12_5` int(1) NOT NULL,
  `H13` int(1) NOT NULL,
  `H13_5` int(1) NOT NULL,
  `H14` int(1) NOT NULL,
  `H14_5` int(1) NOT NULL,
  `H15` int(1) NOT NULL,
  `H15_5` int(1) NOT NULL,
  `H16` int(1) NOT NULL,
  `H16_5` int(1) NOT NULL,
  `H17` int(1) NOT NULL,
  `H17_5` int(1) NOT NULL,
  `H18` int(1) NOT NULL,
  `H18_5` int(1) NOT NULL,
  `H19` int(1) NOT NULL,
  `H19_5` int(1) NOT NULL,
  `H20` int(1) NOT NULL,
  `H20_5` int(1) NOT NULL,
  `H21` int(1) NOT NULL,
  `H21_5` int(1) NOT NULL,
  `H22` int(1) NOT NULL,
  `H22_5` int(1) NOT NULL,
  `H23` int(1) NOT NULL,
  `H23_5` int(1) NOT NULL,
  `H24` int(1) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weekday_t3`
--

LOCK TABLES `weekday_t3` WRITE;
/*!40000 ALTER TABLE `weekday_t3` DISABLE KEYS */;
INSERT INTO `weekday_t3` VALUES (1,'Monday',2,2,2,2,2,2,2,2,2,2,2,3,3,2,2,3,3,3,2,2,2,2,2,2,3,3,3,3,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2),(2,'Tuesday',2,2,2,2,2,2,2,2,2,2,2,3,3,2,2,3,3,3,2,2,2,2,2,2,3,3,3,3,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2),(3,'Wednesday',2,2,2,2,2,2,2,2,2,2,2,3,3,2,2,3,3,3,2,2,2,2,2,2,3,3,3,3,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2),(4,'Thursday',2,2,2,2,2,2,2,2,2,2,2,3,3,2,2,3,3,3,2,2,2,2,2,2,3,3,3,3,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2),(5,'Friday',2,2,2,2,2,2,2,2,2,2,2,3,3,2,2,3,3,3,2,2,2,2,2,2,3,3,3,3,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2),(6,'Saturday',2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,2,2,2,3,3,3,3,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2,2),(7,'Sunday',2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,2,2,2,3,3,3,3,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,2,2,2);
/*!40000 ALTER TABLE `weekday_t3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weekday_t4`
--

DROP TABLE IF EXISTS `weekday_t4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekday_t4` (
  `num` int(11) NOT NULL,
  `day` varchar(15) NOT NULL,
  `H00` int(1) NOT NULL,
  `H00_5` int(1) NOT NULL,
  `H01` int(1) NOT NULL,
  `H01_5` int(1) NOT NULL,
  `H02` int(1) NOT NULL,
  `H02_5` int(1) NOT NULL,
  `H03` int(1) NOT NULL,
  `H03_5` int(1) NOT NULL,
  `H04` int(1) NOT NULL,
  `H04_5` int(1) NOT NULL,
  `H05` int(1) NOT NULL,
  `H05_5` int(1) NOT NULL,
  `H06` int(1) NOT NULL,
  `H06_5` int(1) NOT NULL,
  `H07` int(1) NOT NULL,
  `H07_5` int(1) NOT NULL,
  `H08` int(1) NOT NULL,
  `H08_5` int(1) NOT NULL,
  `H09` int(1) NOT NULL,
  `H09_5` int(1) NOT NULL,
  `H10` int(1) NOT NULL,
  `H10_5` int(1) NOT NULL,
  `H11` int(1) NOT NULL,
  `H11_5` int(1) NOT NULL,
  `H12` int(1) NOT NULL,
  `H12_5` int(1) NOT NULL,
  `H13` int(1) NOT NULL,
  `H13_5` int(1) NOT NULL,
  `H14` int(1) NOT NULL,
  `H14_5` int(1) NOT NULL,
  `H15` int(1) NOT NULL,
  `H15_5` int(1) NOT NULL,
  `H16` int(1) NOT NULL,
  `H16_5` int(1) NOT NULL,
  `H17` int(1) NOT NULL,
  `H17_5` int(1) NOT NULL,
  `H18` int(1) NOT NULL,
  `H18_5` int(1) NOT NULL,
  `H19` int(1) NOT NULL,
  `H19_5` int(1) NOT NULL,
  `H20` int(1) NOT NULL,
  `H20_5` int(1) NOT NULL,
  `H21` int(1) NOT NULL,
  `H21_5` int(1) NOT NULL,
  `H22` int(1) NOT NULL,
  `H22_5` int(1) NOT NULL,
  `H23` int(1) NOT NULL,
  `H23_5` int(1) NOT NULL,
  `H24` int(1) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weekday_t4`
--

LOCK TABLES `weekday_t4` WRITE;
/*!40000 ALTER TABLE `weekday_t4` DISABLE KEYS */;
/*!40000 ALTER TABLE `weekday_t4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'Termostato'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-17 22:50:22
