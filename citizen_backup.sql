-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: db_relationships
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `citizen`
--

DROP TABLE IF EXISTS `citizen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citizen` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone_number` varchar(100) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citizen`
--

LOCK TABLES `citizen` WRITE;
/*!40000 ALTER TABLE `citizen` DISABLE KEYS */;
INSERT INTO `citizen` VALUES (1,'citizen_1','123street 1Av calgary','205-333-7865','2020-01-02'),(2,'citizen_2','12street 4Av calgary','205-223-7005','2000-01-06');
/*!40000 ALTER TABLE `citizen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_account`
--

DROP TABLE IF EXISTS `tax_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tax_account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `citizen_id` int(10) unsigned DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `account_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tax_account_FK` (`citizen_id`),
  CONSTRAINT `tax_account_FK` FOREIGN KEY (`citizen_id`) REFERENCES `citizen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_account`
--

LOCK TABLES `tax_account` WRITE;
/*!40000 ALTER TABLE `tax_account` DISABLE KEYS */;
INSERT INTO `tax_account` VALUES (1,1,'2012-02-16',123);
/*!40000 ALTER TABLE `tax_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_car`
--

DROP TABLE IF EXISTS `tax_car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tax_car` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `citizen_id` int(10) unsigned DEFAULT NULL,
  `release_year` varchar(5) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `make` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tax_car_FK` (`citizen_id`),
  CONSTRAINT `tax_car_FK` FOREIGN KEY (`citizen_id`) REFERENCES `citizen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_car`
--

LOCK TABLES `tax_car` WRITE;
/*!40000 ALTER TABLE `tax_car` DISABLE KEYS */;
INSERT INTO `tax_car` VALUES (1,1,'2020','BT50','Mazda'),(2,1,'2012','Cherry QQ','Cherry'),(3,1,'2011','Yaris','Toyota'),(4,1,'2018','F-40','Ford');
/*!40000 ALTER TABLE `tax_car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_relationships'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-19  0:04:14
