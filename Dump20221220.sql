CREATE DATABASE  IF NOT EXISTS `bbk` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bbk`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: bbk
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bicycle`
--

DROP TABLE IF EXISTS `bicycle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bicycle` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Cyclist_Id` int NOT NULL,
  `Model` varchar(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Cyclist_Id` (`Cyclist_Id`),
  CONSTRAINT `bicycle_ibfk_1` FOREIGN KEY (`Cyclist_Id`) REFERENCES `cyclist` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bicycle`
--

LOCK TABLES `bicycle` WRITE;
/*!40000 ALTER TABLE `bicycle` DISABLE KEYS */;
INSERT INTO `bicycle` VALUES (1,3,'GT38'),(2,1,'GT11'),(3,2,'BMX16'),(4,4,'GT01'),(5,5,'BMX15');
/*!40000 ALTER TABLE `bicycle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Volunteer_Id` int NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Class_Time` time NOT NULL,
  `Class_date` date NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Volunteer_Id` (`Volunteer_Id`),
  CONSTRAINT `class_ibfk_1` FOREIGN KEY (`Volunteer_Id`) REFERENCES `volunteer` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,5,'Advice','12:00:00','2022-10-29'),(2,4,'Brakes','12:00:00','2022-10-05'),(3,1,'Gears','12:00:00','2022-10-12'),(4,2,'Wheels','12:00:00','2022-10-19'),(5,3,'Handles','12:30:00','2022-10-26'),(6,4,'Saddle','12:30:00','2022-11-04'),(7,5,'Child seats','12:30:00','2022-11-08'),(8,2,'Acceleration','12:30:00','2022-11-19'),(9,3,'On the road','12:30:00','2022-12-05'),(10,1,'On mountains','12:30:00','2022-12-11'),(11,2,'Tour de france','12:30:00','2022-12-18'),(12,3,'On mountains','12:30:00','2022-12-21');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cyclist`
--

DROP TABLE IF EXISTS `cyclist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cyclist` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Forename` varchar(20) NOT NULL,
  `Surname` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `MobileNo` varchar(11) NOT NULL,
  `DateOfBirth` date NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Email` (`Email`,`MobileNo`,`DateOfBirth`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cyclist`
--

LOCK TABLES `cyclist` WRITE;
/*!40000 ALTER TABLE `cyclist` DISABLE KEYS */;
INSERT INTO `cyclist` VALUES (1,'Bella','Hadid','bellahadid@hotmail.com','07467897836','1989-03-11'),(2,'Yasmeen','Gauri','yas23@gmail.com','07683593383','1991-07-06'),(3,'Kate','Moss','katemoss@hotmail.com','07383739279','1989-12-02'),(4,'Alek','Wek','alekwek@hotmail.com','07395839636','2000-12-27'),(5,'Shalom','Harlow','shalomharlow@hotmail.com','07374148738','1999-01-30');
/*!40000 ALTER TABLE `cyclist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cyclist_class`
--

DROP TABLE IF EXISTS `cyclist_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cyclist_class` (
  `Cyclist_Id` int NOT NULL,
  `Class_Id` int NOT NULL,
  PRIMARY KEY (`Cyclist_Id`,`Class_Id`),
  KEY `Class_Id` (`Class_Id`),
  CONSTRAINT `cyclist_class_ibfk_1` FOREIGN KEY (`Cyclist_Id`) REFERENCES `cyclist` (`Id`),
  CONSTRAINT `cyclist_class_ibfk_2` FOREIGN KEY (`Class_Id`) REFERENCES `class` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cyclist_class`
--

LOCK TABLES `cyclist_class` WRITE;
/*!40000 ALTER TABLE `cyclist_class` DISABLE KEYS */;
INSERT INTO `cyclist_class` VALUES (2,1),(5,1),(4,2),(5,2),(1,3),(3,3),(4,3),(1,4),(3,4),(1,5),(3,5);
/*!40000 ALTER TABLE `cyclist_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fault`
--

DROP TABLE IF EXISTS `fault`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fault` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Repair_Id` int NOT NULL,
  `Description` varchar(200) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Repair_Id` (`Repair_Id`),
  CONSTRAINT `fault_ibfk_1` FOREIGN KEY (`Repair_Id`) REFERENCES `repair` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fault`
--

LOCK TABLES `fault` WRITE;
/*!40000 ALTER TABLE `fault` DISABLE KEYS */;
INSERT INTO `fault` VALUES (1,3,'Frame of the bike weakened due to crack'),(2,1,'Chain fallen off bike'),(3,4,'Handles snapped'),(4,5,'Saddle is slippery'),(5,7,'Wheel is punctured'),(6,2,'Wheel is old'),(7,11,'Broken frame'),(8,9,'Snapped handles'),(9,10,'Chain is rusty'),(10,8,'Saddle can no longer support'),(11,6,'Wheel not working');
/*!40000 ALTER TABLE `fault` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fault_volunteer`
--

DROP TABLE IF EXISTS `fault_volunteer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fault_volunteer` (
  `Fault_Id` int NOT NULL,
  `Volunteer_Id` int NOT NULL,
  `Fault_date` date NOT NULL,
  `Fault_Comment` varchar(200) NOT NULL,
  `time_taken` int NOT NULL,
  PRIMARY KEY (`Fault_Id`,`Volunteer_Id`),
  KEY `Volunteer_Id` (`Volunteer_Id`),
  CONSTRAINT `fault_volunteer_ibfk_1` FOREIGN KEY (`Fault_Id`) REFERENCES `fault` (`Id`),
  CONSTRAINT `fault_volunteer_ibfk_2` FOREIGN KEY (`Volunteer_Id`) REFERENCES `volunteer` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fault_volunteer`
--

LOCK TABLES `fault_volunteer` WRITE;
/*!40000 ALTER TABLE `fault_volunteer` DISABLE KEYS */;
INSERT INTO `fault_volunteer` VALUES (1,3,'2022-11-02','Replace frame',300),(2,4,'2022-11-08','Fix and screw chain',30),(3,2,'2022-11-12','Screw new handles and replace wheels',120),(4,1,'2022-11-19','Saddle restore needed',60),(5,5,'2022-12-03','Wheel replacement',240),(6,5,'2022-12-04','Wheel replacement',240),(7,3,'2022-12-10','Replace frame',280),(8,5,'2022-12-17','screw new handles',45),(9,2,'2023-01-04','Fit new chain',30),(10,1,'2023-01-14','Saddle replacement',90),(11,4,'2023-01-23','Wheel replacement',240);
/*!40000 ALTER TABLE `fault_volunteer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part`
--

DROP TABLE IF EXISTS `part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `part` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Repair_Id` int NOT NULL,
  `Part_name` varchar(10) NOT NULL,
  `Cost` decimal(10,2) NOT NULL,
  `Quantity` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Repair_Id` (`Repair_Id`),
  CONSTRAINT `part_ibfk_1` FOREIGN KEY (`Repair_Id`) REFERENCES `repair` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part`
--

LOCK TABLES `part` WRITE;
/*!40000 ALTER TABLE `part` DISABLE KEYS */;
INSERT INTO `part` VALUES (1,3,'Frame',70.00,1),(2,1,'Chain',30.00,1),(3,4,'Handle',50.00,2),(4,5,'Saddle',20.00,1),(5,2,'Wheel',55.00,2),(6,6,'Wheel',55.00,2),(7,11,'Frame',75.00,1),(8,9,'Handle',55.00,2),(9,10,'Chain',30.00,1),(10,8,'Saddle',30.00,1),(11,7,'Wheel',55.00,2);
/*!40000 ALTER TABLE `part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repair`
--

DROP TABLE IF EXISTS `repair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repair` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Bicycle_Id` int NOT NULL,
  `Repair_date` date NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Bicycle_Id` (`Bicycle_Id`),
  CONSTRAINT `repair_ibfk_1` FOREIGN KEY (`Bicycle_Id`) REFERENCES `bicycle` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repair`
--

LOCK TABLES `repair` WRITE;
/*!40000 ALTER TABLE `repair` DISABLE KEYS */;
INSERT INTO `repair` VALUES (1,1,'2022-11-02'),(2,2,'2022-11-08'),(3,3,'2022-11-12'),(4,4,'2022-11-19'),(5,5,'2022-12-03'),(6,5,'2022-12-04'),(7,2,'2022-12-10'),(8,3,'2022-12-17'),(9,4,'2023-01-04'),(10,1,'2023-01-14'),(11,5,'2023-01-23');
/*!40000 ALTER TABLE `repair` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volunteer`
--

DROP TABLE IF EXISTS `volunteer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `volunteer` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Forename` varchar(20) NOT NULL,
  `Surname` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `MobileNo` varchar(11) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Email` (`Email`,`MobileNo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volunteer`
--

LOCK TABLES `volunteer` WRITE;
/*!40000 ALTER TABLE `volunteer` DISABLE KEYS */;
INSERT INTO `volunteer` VALUES (1,'Chuck','Bass','chuck55@hotmail.com','07625374926'),(2,'Dan','Humphery','Dan34@gmail.com','07592583629'),(3,'Blair','Waldorf','blair222@gmail.com','07369233058'),(4,'Georgina','Sparks','gg36@gmail.com','07393627329'),(5,'Serena','Woodsen','serena4@hotmail.com','07340263827');
/*!40000 ALTER TABLE `volunteer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bbk'
--

--
-- Dumping routines for database 'bbk'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-20 14:05:50
