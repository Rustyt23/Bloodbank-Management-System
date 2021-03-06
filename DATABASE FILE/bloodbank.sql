-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: admin
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `role` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (2,'admin','admin','admin','admin'),(5,'rustyt','uuuuuu','Rustyt rooser','donor');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announce`
--

DROP TABLE IF EXISTS `announce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announce` (
  `id` int NOT NULL AUTO_INCREMENT,
  `announcement` varchar(50) NOT NULL,
  `bloodneed` varchar(3) NOT NULL,
  `dat` date NOT NULL,
  `organizer` varchar(50) NOT NULL,
  `requirements` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announce`
--

LOCK TABLES `announce` WRITE;
/*!40000 ALTER TABLE `announce` DISABLE KEYS */;
INSERT INTO `announce` VALUES (1,'DEMO ANNOUNCEMENT','B+','2018-06-24','Helping Hands','Weight at least 50kg, No alcohol intake in 24hrs prior to donation, light meal should be taken before donation, be in good health, must be 18 years old and must have at least 3 month interval than the last donation.'),(2,'URGENT CASE: Serious Accident Condition','B-','2021-03-26','City Hospital','Must be in good health and feeling very well. Must weigh at least 110 lbs.'),(3,'B+ Required soon as possible','B+','2021-10-26','urwashi','B+ blood is required.');
/*!40000 ALTER TABLE `announce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blood`
--

DROP TABLE IF EXISTS `blood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blood` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `weight` int NOT NULL,
  `bloodgroup` varchar(3) NOT NULL,
  `address` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `bloodqty` int NOT NULL,
  `collection` date NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `distribution` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood`
--

LOCK TABLES `blood` WRITE;
/*!40000 ALTER TABLE `blood` DISABLE KEYS */;
INSERT INTO `blood` VALUES (8,'bruno den','M','1991-05-26',88,'O+','demo address','8555555545',360,'2016-05-08',NULL,NULL),(9,'Tom Filler','M','1988-06-14',69,'AB+','Deo Adr','7854447854',312,'2020-12-30',NULL,NULL),(10,'Elizabeth','F','1990-02-12',59,'AB-','San Andrq','8555554585',310,'2020-12-30',NULL,NULL),(11,'Shyaron','F','1996-02-02',60,'B+','Demo Address','7878787850',360,'2020-12-29',NULL,NULL),(12,'Harry Den','M','1997-01-05',70,'B+','Demo','8521112450',310,'2020-12-29',NULL,NULL),(13,'Tony Stank','M','1980-03-03',79,'B+','CA','8547778500',312,'2020-12-27',NULL,NULL),(14,'Stephen Strange','M','1990-12-24',69,'O+','Demo','8545554700',310,'2020-12-27',NULL,NULL),(15,'Steve Trevor','M','1995-06-15',75,'O-','Demo Addresss','7454447410',311,'2021-01-05',NULL,NULL),(16,'Martin','M','1986-11-11',85,'AB+','demo','8545557854',310,'2021-01-05',NULL,NULL),(17,'Russo','M','1975-05-05',80,'O-','demooo','7454447854',360,'2021-01-02',NULL,NULL),(19,'meet','M','2002-08-26',55,'AB+','pik','87938656',44,'2021-10-26',NULL,NULL),(20,'Vishal Singh','m','2006-10-26',55,'B+','weegb','7526963258',88,'2021-10-25',NULL,NULL),(21,'Rustyt Rooser','M','2021-11-08',56,'B+','4881 Taylor Street','7562920676',223,'2021-11-15',NULL,NULL),(22,'Rustyt Rooser','M','2021-11-07',33,'B+','4881 Taylor Street','7562920676',333,'2021-11-16','approved',NULL),(23,'Rustyt Rooser','M','2021-11-03',33,'O+','4881 Taylor Street','7562920676',33,'2021-11-15',NULL,NULL),(24,'Rustyt Rooser','M','2000-11-03',33,'O+','4881 Taylor Street','7562920676',33,'2021-11-15',NULL,NULL),(25,'Rustyt Rooser','M','2000-11-03',33,'O+','4881 Taylor Street','7562920676',3333,'2021-11-15',NULL,NULL),(26,'Rustyt Rooser','M','2021-11-07',33,'O+','4881 Taylor Street','7562920676',33,'2021-11-16','Approved',NULL);
/*!40000 ALTER TABLE `blood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor`
--

DROP TABLE IF EXISTS `donor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `guardiansname` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `weight` int NOT NULL,
  `bloodgroup` varchar(3) NOT NULL,
  `email` varchar(55) DEFAULT NULL,
  `address` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor`
--

LOCK TABLES `donor` WRITE;
/*!40000 ALTER TABLE `donor` DISABLE KEYS */;
INSERT INTO `donor` VALUES (33,'Rustyt Rooser','Hdhdhs','m','2021-11-07',33,'B+','rustytrooser@gmail.com','4881 Taylor Street','7562920676','demo','urueud'),(34,'Rustyt Rooser','Hdhdhs','M','2021-11-15',656,'B+','rustytrooser@gmail.com','4881 Taylor Street','7562920676','Jejd','jdjejdjdj'),(35,'Rustyt Rooser','Hdhdhs','M','2021-11-15',656,'B+','rustytrooser@gmail.com','4881 Taylor Street','7562920676','Jejd','jejejw'),(36,'Rustyt rooser','Vikash singh','M','2000-11-10',55,'B+','rustytrooser@gmail.com','4881 Taylor Street','7562920676','rustyt','      '),(37,'Rustyt rooser','Vikash singh','M','2000-11-10',55,'B+','rustytrooser@gmail.com','4881 Taylor Street','7562920676','rustyt','uuuuuu');
/*!40000 ALTER TABLE `donor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `patient_id` varchar(50) NOT NULL,
  `donor_id` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `patient_id` int NOT NULL AUTO_INCREMENT,
  `medical_history` varchar(200) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `blood_grp` varchar(5) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `username` varchar(29) NOT NULL,
  `name` varchar(29) NOT NULL,
  `weight` varchar(29) NOT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'','4881 Taylor Street','rustytrooser@gmail.com','2021-11-10','O+','7562920676','M','Uuu','Rustyt Rooser','33'),(2,'','4881 Taylor Street','rustytrooser@gmail.com','2021-11-10','O+','7562920676','M','Uuu','Rustyt Rooser','33');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-10 10:08:07
