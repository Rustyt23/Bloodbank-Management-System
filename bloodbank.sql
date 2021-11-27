-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: bloodbank
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
INSERT INTO `announce` VALUES (1,'ANNOUNCEMENT','B+','2018-06-24','Helping Hands','Anyone can donate'),(2,'URGENT','B-','2021-03-26','City Hospital','Need asap'),(3,'B+ as soon as possible','B+','2021-10-26','urwashi','B+ blood is required.');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood`
--

LOCK TABLES `blood` WRITE;
/*!40000 ALTER TABLE `blood` DISABLE KEYS */;
INSERT INTO `blood` VALUES (8,'bro','M','1999-05-26',88,'O+','demo address','8555555545',360,'2016-05-08',NULL,NULL),(19,'meet','M','2002-08-26',55,'AB+','pik','87938656',44,'2021-10-26',NULL,NULL),(20,'Vishal Singh','m','2006-10-26',55,'B+','weegb','7526963258',88,'2021-10-25',NULL,NULL),(21,'Rustyt Rooser','M','2021-11-08',56,'B+','4881 Taylor Street','7562920676',223,'2021-11-15',NULL,NULL),(22,'Rustyt Rooser','M','2021-11-07',33,'B+','4881 Taylor Street','7562920676',333,'2021-11-16','approved',NULL),(23,'Rustyt Rooser','M','2021-11-03',33,'O+','4881 Taylor Street','7562920676',33,'2021-11-15',NULL,NULL),(24,'Rustyt Rooser','M','2000-11-03',33,'O+','4881 Taylor Street','7562920676',33,'2021-11-15',NULL,NULL),(25,'Rustyt Rooser','M','2000-11-03',33,'O+','4881 Taylor Street','7562920676',3333,'2021-11-15',NULL,NULL),(26,'Rustyt Rooser','M','2021-11-07',33,'O+','4881 Taylor Street','7562920676',33,'2021-11-16','Approved',NULL),(27,'Bittu','M','2000-11-16',65,'O+','48,indore','7562920676',500,'2021-11-17',NULL,NULL);
/*!40000 ALTER TABLE `blood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor`
--

DROP TABLE IF EXISTS `donor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donor` (
  `name` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `weight` int NOT NULL,
  `bloodgroup` varchar(3) NOT NULL,
  `email` varchar(55) NOT NULL,
  `address` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor`
--

LOCK TABLES `donor` WRITE;
/*!40000 ALTER TABLE `donor` DISABLE KEYS */;
INSERT INTO `donor` VALUES ('Rustyt rooser','M','2000-11-10',55,'B+','rustytjrooser@gmail.com','4881 Taylor Street','7562920676','rustyt'),('Rustyt Rooses','M','2021-11-15',656,'B+','rustytkkrooser@gmail.com','4881 Taylor Street','7562920676','jejejw'),('Rustyt Rooser','m','2021-11-07',33,'B+','rustytrjooser@gmail.com','4881 Taylor Street','7562920676','urueud'),('Rustyt rooser','M','2000-11-10',57,'AB+','rustytrnmhooser@gmail.com','4881 Taylor Street','7562920676','rustyt'),('Rustyt Rooser','M','2021-11-15',656,'B+','rustytrnooser@gmail.com','4881 Taylor Street','7562920676','jdjejdjdj'),('Rustyt Rooser','M','2021-11-15',66,'O+','rustytroosehhhhhr@gmail.com','4881 Taylor Street','7562920676','vvvvvv');
/*!40000 ALTER TABLE `donor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(50) NOT NULL,
  `donor_name` varchar(50) NOT NULL,
  `donor_email` varchar(50) NOT NULL,
  `patient_email` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `bloodGrp` varchar(4) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(50) NOT NULL,
  `donor_name` varchar(50) NOT NULL,
  `donor_email` varchar(50) NOT NULL,
  `patient_email` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `bloodGrp` varchar(4) NOT NULL,
  `patient_blood` varchar(4) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (77,'Vicky','Rustyt Rooses','rustytkkrooser@gmail.com','rustyt@rustyt.cloudns.ph','33','2021-11-13 10:48:05','B+','O+'),(78,'Vicky','Rustyt Rooser','rustytroosehhhhhr@gmail.com','rustyt@rustyt.cloudns.ph','33','2021-11-13 11:08:07','O+','O+'),(79,'Rustyt Rooser','Rustyt rooser','rustytrnmhooser@gmail.com','rustytkrooser@gmail.com','333','2021-11-14 13:47','O+','O+'),(80,'Rustyt Rooser','Rustyt rooser','rustytrnmhooser@gmail.com','rustytkrooser@gmail.com','333','2021-11-14 13:48:36','O+','O+'),(81,'Vicky','Rustyt rooser','rustytrnmhooser@gmail.com','rustyt@rustyt.cloudns.ph','336','2021-11-14 13:49:08','O+','O+'),(82,'Vicky','Rustyt rooser','rustytrnmhooser@gmail.com','rustyt@rustyt.cloudns.ph','33','2021-11-14 17:56','O+','O+'),(83,'Vicky','Rustyt rooser','rustytrnmhooser@gmail.com','rustyt@rustyt.cloudns.ph','33','2021-11-14 17:56','O+','O+'),(84,'Hari','Rustyt rooser','rustytjrooser@gmail.com','y@y.com','339','2021-11-14 15:15','B+','AB+');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `medical_history` varchar(200) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `blood_grp` varchar(5) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `name` varchar(29) NOT NULL,
  `weight` varchar(29) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES ('','79, Decent colon','rustyt@rustyt.cloudns.ph','2021-11-15','O+','6562649764','M','Vicky','33'),('','4881 Taylor Street','rustytkrooser@gmail.com','2021-11-10','O+','7562920676','M','Rustyt Rooser','33'),('No Medical History','79, Decent colony','y@y.com','2021-11-14','AB+','3268976461','M','Hari','66');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `role` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin@admin','admin','admin','admin'),('rustyt@rustyt.me','uuuuuu','Rustyt rooser','donor');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-27 18:29:54
