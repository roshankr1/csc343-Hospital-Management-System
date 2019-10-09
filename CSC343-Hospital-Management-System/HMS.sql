-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: HMS_0049
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.16.04.2

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
-- Table structure for table `Ambulance`
--

DROP TABLE IF EXISTS `Ambulance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ambulance` (
  `AmbulanceId` varchar(10) NOT NULL,
  `DriverID` varchar(10) NOT NULL,
  `PlateNo` varchar(10) NOT NULL,
  `Location` varchar(150) NOT NULL,
  `Available` enum('Y','N') DEFAULT 'Y',
  PRIMARY KEY (`AmbulanceId`),
  KEY `DriverID` (`DriverID`),
  CONSTRAINT `Ambulance_ibfk_1` FOREIGN KEY (`DriverID`) REFERENCES `Driver` (`DriverID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ambulance`
--

LOCK TABLES `Ambulance` WRITE;
/*!40000 ALTER TABLE `Ambulance` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ambulance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Appointment`
--

DROP TABLE IF EXISTS `Appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Appointment` (
  `PatientId` varchar(10) NOT NULL,
  `StaffId` varchar(10) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Status` enum('Pending','Done') DEFAULT NULL,
  `Duration` time NOT NULL,
  PRIMARY KEY (`PatientId`,`StaffId`,`Date`,`Time`),
  KEY `StaffId` (`StaffId`),
  CONSTRAINT `Appointment_ibfk_1` FOREIGN KEY (`PatientId`) REFERENCES `Patient` (`Id`),
  CONSTRAINT `Appointment_ibfk_2` FOREIGN KEY (`StaffId`) REFERENCES `Staff` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Appointment`
--

LOCK TABLES `Appointment` WRITE;
/*!40000 ALTER TABLE `Appointment` DISABLE KEYS */;
INSERT INTO `Appointment` VALUES ('P1','S1','2019-03-23','15:00:00','Pending','02:00:00'),('P4','S1','2019-03-27','12:00:00','Pending','01:00:00');
/*!40000 ALTER TABLE `Appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bed`
--

DROP TABLE IF EXISTS `Bed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bed` (
  `BedNo` varchar(10) NOT NULL,
  `RecordId` varchar(10) DEFAULT NULL,
  `Room` varchar(10) NOT NULL,
  PRIMARY KEY (`BedNo`),
  KEY `RecordId` (`RecordId`),
  CONSTRAINT `Bed_ibfk_1` FOREIGN KEY (`RecordId`) REFERENCES `Record` (`RecordId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bed`
--

LOCK TABLES `Bed` WRITE;
/*!40000 ALTER TABLE `Bed` DISABLE KEYS */;
INSERT INTO `Bed` VALUES ('B1',NULL,'Room1'),('B10',NULL,'Room1'),('B2',NULL,'Room1'),('B20',NULL,'Room2'),('B3',NULL,'Room1'),('B4',NULL,'Room1'),('B5',NULL,'Room1'),('B6',NULL,'Room1');
/*!40000 ALTER TABLE `Bed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Driver`
--

DROP TABLE IF EXISTS `Driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Driver` (
  `DriverID` varchar(10) NOT NULL,
  `DriverName` varchar(30) NOT NULL,
  `DL` varchar(30) NOT NULL,
  `Address` varchar(150) NOT NULL,
  `ContactNo` varchar(15) NOT NULL,
  PRIMARY KEY (`DriverID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Driver`
--

LOCK TABLES `Driver` WRITE;
/*!40000 ALTER TABLE `Driver` DISABLE KEYS */;
/*!40000 ALTER TABLE `Driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inventory`
--

DROP TABLE IF EXISTS `Inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Inventory` (
  `ItemId` varchar(10) NOT NULL,
  `ItemName` varchar(30) NOT NULL,
  `Quantity` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inventory`
--

LOCK TABLES `Inventory` WRITE;
/*!40000 ALTER TABLE `Inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `Inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Login`
--

DROP TABLE IF EXISTS `Login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Login` (
  `UserId` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Type` enum('Staff','Admin') DEFAULT 'Staff',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Login`
--

LOCK TABLES `Login` WRITE;
/*!40000 ALTER TABLE `Login` DISABLE KEYS */;
INSERT INTO `Login` VALUES ('Admin','Admin','Admin'),('S1','prtk','Staff');
/*!40000 ALTER TABLE `Login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OperationTheatre`
--

DROP TABLE IF EXISTS `OperationTheatre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OperationTheatre` (
  `OTID` varchar(10) NOT NULL,
  `OTName` varchar(30) NOT NULL,
  `RecordId` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`OTID`),
  KEY `RecordId` (`RecordId`),
  CONSTRAINT `OperationTheatre_ibfk_1` FOREIGN KEY (`RecordId`) REFERENCES `Record` (`RecordId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OperationTheatre`
--

LOCK TABLES `OperationTheatre` WRITE;
/*!40000 ALTER TABLE `OperationTheatre` DISABLE KEYS */;
/*!40000 ALTER TABLE `OperationTheatre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patient`
--

DROP TABLE IF EXISTS `Patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Patient` (
  `Id` varchar(10) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `Age` int(5) NOT NULL,
  `Gender` enum('M','F') DEFAULT 'M',
  `ContactNo` varchar(15) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patient`
--

LOCK TABLES `Patient` WRITE;
/*!40000 ALTER TABLE `Patient` DISABLE KEYS */;
INSERT INTO `Patient` VALUES ('P1','A','A',20,'F','1234567890'),('P2','V','V',20,'M','9876678901'),('P3','Eddy','Eddy',19,'M','1234567890'),('P4','Ed','Ed',18,'M','1111111111');
/*!40000 ALTER TABLE `Patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Prescription`
--

DROP TABLE IF EXISTS `Prescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Prescription` (
  `RecordId` varchar(10) NOT NULL,
  `Medicine` varchar(30) NOT NULL,
  PRIMARY KEY (`RecordId`,`Medicine`),
  CONSTRAINT `Prescription_ibfk_1` FOREIGN KEY (`RecordId`) REFERENCES `Record` (`RecordId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Prescription`
--

LOCK TABLES `Prescription` WRITE;
/*!40000 ALTER TABLE `Prescription` DISABLE KEYS */;
INSERT INTO `Prescription` VALUES ('R3','Paracetamol');
/*!40000 ALTER TABLE `Prescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Record`
--

DROP TABLE IF EXISTS `Record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Record` (
  `RecordId` varchar(10) NOT NULL,
  `PatientId` varchar(10) NOT NULL,
  `Date` date NOT NULL,
  `Disease` varchar(30) DEFAULT NULL,
  `Status` enum('Undergoing','Completed') DEFAULT 'Undergoing',
  PRIMARY KEY (`RecordId`),
  KEY `PatientId` (`PatientId`),
  CONSTRAINT `Record_ibfk_1` FOREIGN KEY (`PatientId`) REFERENCES `Patient` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Record`
--

LOCK TABLES `Record` WRITE;
/*!40000 ALTER TABLE `Record` DISABLE KEYS */;
INSERT INTO `Record` VALUES ('R1','P1','2019-03-21',NULL,'Undergoing'),('R2','P1','2019-03-21',NULL,'Undergoing'),('R3','P4','2019-03-26','Dengue','Undergoing'),('R4','P1','2019-03-26',NULL,'Undergoing');
/*!40000 ALTER TABLE `Record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RecordDoctor`
--

DROP TABLE IF EXISTS `RecordDoctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RecordDoctor` (
  `RecordId` varchar(10) NOT NULL,
  `DoctorId` varchar(10) NOT NULL,
  PRIMARY KEY (`RecordId`,`DoctorId`),
  KEY `DoctorId` (`DoctorId`),
  CONSTRAINT `RecordDoctor_ibfk_1` FOREIGN KEY (`RecordId`) REFERENCES `Record` (`RecordId`),
  CONSTRAINT `RecordDoctor_ibfk_2` FOREIGN KEY (`DoctorId`) REFERENCES `Staff` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RecordDoctor`
--

LOCK TABLES `RecordDoctor` WRITE;
/*!40000 ALTER TABLE `RecordDoctor` DISABLE KEYS */;
INSERT INTO `RecordDoctor` VALUES ('R2','S1'),('R3','S1'),('R4','S1');
/*!40000 ALTER TABLE `RecordDoctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Staff`
--

DROP TABLE IF EXISTS `Staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Staff` (
  `Id` varchar(10) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `Type` enum('Consultant','Intern','Nurse') DEFAULT NULL,
  `Dept` varchar(20) NOT NULL,
  `ContactNo` varchar(15) NOT NULL,
  `Room` varchar(10) DEFAULT NULL,
  `StartTime` varchar(20) NOT NULL,
  `EndTime` varchar(20) NOT NULL,
  `Days` varchar(7) DEFAULT '1111111',
  `Availability` enum('Yes','No') DEFAULT 'Yes',
  `Gender` enum('M','F') NOT NULL DEFAULT 'M',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Staff`
--

LOCK TABLES `Staff` WRITE;
/*!40000 ALTER TABLE `Staff` DISABLE KEYS */;
INSERT INTO `Staff` VALUES ('S1','Pratik','Parmar','Consultant','Neuro','7780813063','117','10:0:00','17:0:00','1111100','Yes','M'),('S2','','','Consultant','','','','0:0:00','0:0:00','0000000','Yes','M'),('S3','Vaibhav','Vashisht','Consultant','Cardio','9876543210','130','10:0:00','17:0:00','1010110','No','M'),('S4','neo','neo','Consultant','Neuro','234567890','121','11:0:00','16:0:00','1110110','No','M');
/*!40000 ALTER TABLE `Staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Symptoms`
--

DROP TABLE IF EXISTS `Symptoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Symptoms` (
  `RecordId` varchar(10) NOT NULL,
  `Symptom` varchar(30) NOT NULL,
  PRIMARY KEY (`RecordId`,`Symptom`),
  CONSTRAINT `Symptoms_ibfk_1` FOREIGN KEY (`RecordId`) REFERENCES `Record` (`RecordId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Symptoms`
--

LOCK TABLES `Symptoms` WRITE;
/*!40000 ALTER TABLE `Symptoms` DISABLE KEYS */;
INSERT INTO `Symptoms` VALUES ('R2','Bodyache'),('R2','Cold'),('R2','Fever'),('R2','Headache'),('R3','Cough'),('R3','Fever'),('R4','');
/*!40000 ALTER TABLE `Symptoms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-26 12:59:15
