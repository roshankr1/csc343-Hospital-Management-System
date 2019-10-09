-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: LMS_0049
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
-- Table structure for table `Author`
--

DROP TABLE IF EXISTS `Author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Author` (
  `Id` varchar(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `PaperId` varchar(20) DEFAULT NULL,
  `BookId` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `BookId` (`BookId`),
  KEY `PaperId` (`PaperId`),
  CONSTRAINT `Author_ibfk_1` FOREIGN KEY (`BookId`) REFERENCES `Book` (`Id`),
  CONSTRAINT `Author_ibfk_2` FOREIGN KEY (`PaperId`) REFERENCES `Paper` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Author`
--

LOCK TABLES `Author` WRITE;
/*!40000 ALTER TABLE `Author` DISABLE KEYS */;
INSERT INTO `Author` VALUES ('A1','Author1',NULL,'B1'),('A10','Author10',NULL,'B2'),('A11','Author11',NULL,'B2'),('A12','Author12',NULL,'B2'),('A13','Author13',NULL,'B2'),('A14','Author14',NULL,'B2'),('A15','Author15',NULL,'B2'),('A16','Author16',NULL,'B2'),('A17','Author17',NULL,'B2'),('A18','Author18',NULL,'B2'),('A19','Author19',NULL,'B2'),('A2','Author2',NULL,'B1'),('A20','Author20',NULL,'B2'),('A3','Author3',NULL,'B2'),('A4','Author4',NULL,'B1'),('A5','Author5',NULL,'B1'),('A6','Author6',NULL,'B2'),('A7','Author7',NULL,'B2'),('A8','Author8',NULL,'B2'),('A9','Author9',NULL,'B2');
/*!40000 ALTER TABLE `Author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Book`
--

DROP TABLE IF EXISTS `Book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Book` (
  `Id` varchar(20) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Year` varchar(10) DEFAULT NULL,
  `Isbn` varchar(30) DEFAULT NULL,
  `Pages` int(11) DEFAULT '0',
  `UserId` varchar(20) DEFAULT NULL,
  `PublisherId` varchar(20) DEFAULT NULL,
  `Issue_date` date DEFAULT NULL,
  `Discipline` enum('CSE','ME','CE','Math','Phy','EE','Hindi') NOT NULL,
  `Return_date` date DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `UserId` (`UserId`),
  KEY `PublisherId` (`PublisherId`),
  CONSTRAINT `Book_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `User` (`Id`),
  CONSTRAINT `Book_ibfk_2` FOREIGN KEY (`PublisherId`) REFERENCES `Publisher` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Book`
--

LOCK TABLES `Book` WRITE;
/*!40000 ALTER TABLE `Book` DISABLE KEYS */;
INSERT INTO `Book` VALUES ('B1','Book1','2018','12324',204,'U101','P2','2019-02-25','CSE','2019-02-25'),('B10','Book10','2017','1324',1011,NULL,'P1',NULL,'CSE','2019-02-25'),('B100','Book100','2017','1324',10101,NULL,'P1',NULL,'CSE','2019-02-25'),('B101','Book101','2017','1324',10202,NULL,'P2',NULL,'CSE',NULL),('B102','Book102','2017','1324',10303,NULL,'P3',NULL,'CSE',NULL),('B103','Book103','2017','1324',10404,NULL,'P4',NULL,'CSE',NULL),('B104','Book104','2017','1324',10505,NULL,'P5',NULL,'CSE','2019-02-24'),('B105','Book105','2017','1324',10606,NULL,'P1',NULL,'CSE',NULL),('B106','Book106','2017','1324',10707,NULL,'P2',NULL,'CSE','2019-02-25'),('B107','Book107','2017','1324',10808,NULL,'P3',NULL,'CSE',NULL),('B108','Book108','2017','1324',10909,NULL,'P4',NULL,'CSE',NULL),('B109','Book109','2017','1324',11010,NULL,'P5',NULL,'CSE',NULL),('B11','Book11','2017','1324',1112,NULL,'P2',NULL,'CSE',NULL),('B110','Book110','2017','1324',11111,NULL,'P1',NULL,'CSE',NULL),('B111','Book111','2017','1324',11212,NULL,'P2',NULL,'CSE',NULL),('B112','Book112','2017','1324',11313,NULL,'P3',NULL,'CSE',NULL),('B113','Book113','2017','1324',11414,NULL,'P4',NULL,'CSE',NULL),('B114','Book114','2017','1324',11515,NULL,'P5',NULL,'CSE',NULL),('B115','Book115','2017','1324',11616,NULL,'P1',NULL,'CSE',NULL),('B116','Book116','2017','1324',11717,NULL,'P2',NULL,'CSE',NULL),('B117','Book117','2017','1324',11818,NULL,'P3',NULL,'CSE',NULL),('B118','Book118','2017','1324',11919,NULL,'P4',NULL,'CSE',NULL),('B119','Book119','2017','1324',12020,NULL,'P5',NULL,'CSE',NULL),('B12','Book12','2017','1324',1213,NULL,'P3',NULL,'CSE',NULL),('B120','Book120','2017','1324',12121,NULL,'P1',NULL,'CSE',NULL),('B121','Book121','2017','1324',12222,NULL,'P2',NULL,'CSE',NULL),('B122','Book122','2017','1324',12323,NULL,'P3',NULL,'CSE',NULL),('B123','Book123','2017','1324',12424,NULL,'P4',NULL,'CSE',NULL),('B124','Book124','2017','1324',12525,NULL,'P5',NULL,'CSE',NULL),('B125','Book125','2017','1324',12626,NULL,'P1',NULL,'CSE',NULL),('B126','Book126','2017','1324',12727,NULL,'P2',NULL,'CSE',NULL),('B127','Book127','2017','1324',12828,NULL,'P3',NULL,'CSE',NULL),('B128','Book128','2017','1324',12929,NULL,'P4',NULL,'CSE',NULL),('B129','Book129','2017','1324',13030,NULL,'P5',NULL,'CSE',NULL),('B13','Book13','2017','1324',1314,NULL,'P4',NULL,'CSE',NULL),('B130','Book130','2017','1324',13131,NULL,'P1',NULL,'CSE',NULL),('B131','Book131','2017','1324',13232,NULL,'P2',NULL,'CSE',NULL),('B132','Book132','2017','1324',13333,NULL,'P3',NULL,'CSE',NULL),('B133','Book133','2017','1324',13434,NULL,'P4',NULL,'CSE',NULL),('B134','Book134','2017','1324',13535,NULL,'P5',NULL,'CSE',NULL),('B135','Book135','2017','1324',13636,NULL,'P1',NULL,'CSE',NULL),('B136','Book136','2017','1324',13737,NULL,'P2',NULL,'CSE',NULL),('B137','Book137','2017','1324',13838,NULL,'P3',NULL,'CSE',NULL),('B138','Book138','2017','1324',13939,NULL,'P4',NULL,'CSE',NULL),('B139','Book139','2017','1324',14040,NULL,'P5',NULL,'CSE',NULL),('B14','Book14','2017','1324',1415,NULL,'P5',NULL,'CSE',NULL),('B140','Book140','2017','1324',14141,NULL,'P1',NULL,'CSE',NULL),('B141','Book141','2017','1324',14242,NULL,'P2',NULL,'CSE',NULL),('B142','Book142','2017','1324',14343,NULL,'P3',NULL,'CSE',NULL),('B143','Book143','2017','1324',14444,NULL,'P4',NULL,'CSE',NULL),('B144','Book144','2017','1324',14545,NULL,'P5',NULL,'CSE',NULL),('B145','Book145','2017','1324',14646,NULL,'P1',NULL,'CSE',NULL),('B146','Book146','2017','1324',14747,NULL,'P2',NULL,'CSE',NULL),('B147','Book147','2017','1324',14848,NULL,'P3',NULL,'CSE',NULL),('B148','Book148','2017','1324',14949,NULL,'P4',NULL,'CSE',NULL),('B149','Book149','2017','1324',15050,NULL,'P5',NULL,'CSE',NULL),('B15','Book15','2017','1324',1516,NULL,'P1',NULL,'CSE',NULL),('B150','Book150','2017','1324',15151,NULL,'P1',NULL,'CSE',NULL),('B151','Book151','2017','1324',15252,NULL,'P2',NULL,'CSE',NULL),('B152','Book152','2017','1324',15353,NULL,'P3',NULL,'CSE',NULL),('B153','Book153','2017','1324',15454,NULL,'P4',NULL,'CSE',NULL),('B154','Book154','2017','1324',15555,NULL,'P5',NULL,'CSE',NULL),('B155','Book155','2017','1324',15656,NULL,'P1',NULL,'CSE',NULL),('B156','Book156','2017','1324',15757,NULL,'P2',NULL,'CSE',NULL),('B157','Book157','2017','1324',15858,NULL,'P3',NULL,'CSE',NULL),('B158','Book158','2017','1324',15959,NULL,'P4',NULL,'CSE',NULL),('B159','Book159','2017','1324',16060,NULL,'P5',NULL,'CSE',NULL),('B16','Book16','2017','1324',1617,NULL,'P2',NULL,'CSE',NULL),('B160','Book160','2017','1324',16161,NULL,'P1',NULL,'CSE',NULL),('B161','Book161','2017','1324',16262,NULL,'P2',NULL,'CSE',NULL),('B162','Book162','2017','1324',16363,NULL,'P3',NULL,'CSE',NULL),('B163','Book163','2017','1324',16464,NULL,'P4',NULL,'CSE',NULL),('B164','Book164','2017','1324',16565,NULL,'P5',NULL,'CSE',NULL),('B165','Book165','2017','1324',16666,NULL,'P1',NULL,'CSE',NULL),('B166','Book166','2017','1324',16767,NULL,'P2',NULL,'CSE',NULL),('B167','Book167','2017','1324',16868,NULL,'P3',NULL,'CSE',NULL),('B168','Book168','2017','1324',16969,NULL,'P4',NULL,'CSE',NULL),('B169','Book169','2017','1324',17070,NULL,'P5',NULL,'CSE',NULL),('B17','Book17','2017','1324',1718,NULL,'P3',NULL,'CSE',NULL),('B170','Book170','2017','1324',17171,NULL,'P1',NULL,'CSE',NULL),('B171','Book171','2017','1324',17272,NULL,'P2',NULL,'CSE',NULL),('B172','Book172','2017','1324',17373,NULL,'P3',NULL,'CSE',NULL),('B173','Book173','2017','1324',17474,NULL,'P4',NULL,'CSE',NULL),('B174','Book174','2017','1324',17575,NULL,'P5',NULL,'CSE',NULL),('B175','Book175','2017','1324',17676,NULL,'P1',NULL,'CSE',NULL),('B176','Book176','2017','1324',17777,NULL,'P2',NULL,'CSE',NULL),('B177','Book177','2017','1324',17878,NULL,'P3',NULL,'CSE',NULL),('B178','Book178','2017','1324',17979,NULL,'P4',NULL,'CSE',NULL),('B179','Book179','2017','1324',18080,NULL,'P5',NULL,'CSE',NULL),('B18','Book18','2017','1324',1819,NULL,'P4',NULL,'CSE',NULL),('B180','Book180','2017','1324',18181,NULL,'P1',NULL,'CSE',NULL),('B181','Book181','2017','1324',18282,NULL,'P2',NULL,'CSE',NULL),('B182','Book182','2017','1324',18383,NULL,'P3',NULL,'CSE',NULL),('B183','Book183','2017','1324',18484,NULL,'P4',NULL,'CSE',NULL),('B184','Book184','2017','1324',18585,NULL,'P5',NULL,'CSE',NULL),('B185','Book185','2017','1324',18686,NULL,'P1',NULL,'CSE',NULL),('B186','Book186','2017','1324',18787,NULL,'P2',NULL,'CSE',NULL),('B187','Book187','2017','1324',18888,NULL,'P3',NULL,'CSE',NULL),('B188','Book188','2017','1324',18989,NULL,'P4',NULL,'CSE',NULL),('B189','Book189','2017','1324',19090,NULL,'P5',NULL,'CSE',NULL),('B19','Book19','2017','1324',1920,NULL,'P5',NULL,'CSE',NULL),('B190','Book190','2017','1324',19191,NULL,'P1',NULL,'CSE',NULL),('B191','Book191','2017','1324',19292,NULL,'P2',NULL,'CSE',NULL),('B192','Book192','2017','1324',19393,NULL,'P3',NULL,'CSE',NULL),('B193','Book193','2017','1324',19494,NULL,'P4',NULL,'CSE',NULL),('B194','Book194','2017','1324',19595,NULL,'P5',NULL,'CSE',NULL),('B195','Book195','2017','1324',19696,NULL,'P1',NULL,'CSE',NULL),('B196','Book196','2017','1324',19797,NULL,'P2',NULL,'CSE',NULL),('B197','Book197','2017','1324',19898,NULL,'P3',NULL,'CSE',NULL),('B198','Book198','2017','1324',19999,NULL,'P4',NULL,'CSE',NULL),('B199','Book199','2017','1324',20100,NULL,'P5',NULL,'CSE',NULL),('B2','Book2','2018','12324',407,NULL,'P3',NULL,'CSE',NULL),('B20','Book20','2017','1324',2021,NULL,'P1',NULL,'CSE',NULL),('B200','Book200','2017','1324',20201,NULL,'P1',NULL,'CSE',NULL),('B201','DBMS','2019','12324',324,NULL,'P1',NULL,'CSE',NULL),('B21','Book21','2017','1324',2122,NULL,'P2',NULL,'CSE',NULL),('B22','Book22','2017','1324',2223,NULL,'P3',NULL,'CSE',NULL),('B23','Book23','2017','1324',2324,NULL,'P4',NULL,'CSE',NULL),('B24','Book24','2017','1324',2425,NULL,'P5',NULL,'CSE',NULL),('B25','Book25','2017','1324',2526,NULL,'P1',NULL,'CSE',NULL),('B26','Book26','2017','1324',2627,NULL,'P2',NULL,'CSE',NULL),('B27','Book27','2017','1324',2728,NULL,'P3',NULL,'CSE',NULL),('B28','Book28','2017','1324',2829,NULL,'P4',NULL,'CSE',NULL),('B29','Book29','2017','1324',2930,NULL,'P5',NULL,'CSE',NULL),('B3','Book3','2018','12324',610,NULL,'P4',NULL,'CSE',NULL),('B30','Book30','2017','1324',3031,NULL,'P1',NULL,'CSE',NULL),('B31','Book31','2017','1324',3132,NULL,'P2',NULL,'CSE',NULL),('B32','Book32','2017','1324',3233,NULL,'P3',NULL,'CSE',NULL),('B33','Book33','2017','1324',3334,NULL,'P4',NULL,'CSE',NULL),('B34','Book34','2017','1324',3435,NULL,'P5',NULL,'CSE',NULL),('B35','Book35','2017','1324',3536,NULL,'P1',NULL,'CSE',NULL),('B36','Book36','2017','1324',3637,NULL,'P2',NULL,'CSE',NULL),('B37','Book37','2017','1324',3738,NULL,'P3',NULL,'CSE',NULL),('B38','Book38','2017','1324',3839,NULL,'P4',NULL,'CSE',NULL),('B39','Book39','2017','1324',3940,NULL,'P5',NULL,'CSE',NULL),('B4','Book4','2018','12324',813,NULL,'P5',NULL,'CSE',NULL),('B40','Book40','2017','1324',4041,NULL,'P1',NULL,'CSE',NULL),('B41','Book41','2017','1324',4142,NULL,'P2',NULL,'CSE',NULL),('B42','Book42','2017','1324',4243,NULL,'P3',NULL,'CSE',NULL),('B43','Book43','2017','1324',4344,NULL,'P4',NULL,'CSE',NULL),('B44','Book44','2017','1324',4445,NULL,'P5',NULL,'CSE',NULL),('B45','Book45','2017','1324',4546,NULL,'P1',NULL,'CSE',NULL),('B46','Book46','2017','1324',4647,NULL,'P2',NULL,'CSE',NULL),('B47','Book47','2017','1324',4748,NULL,'P3',NULL,'CSE',NULL),('B48','Book48','2017','1324',4849,NULL,'P4',NULL,'CSE',NULL),('B49','Book49','2017','1324',4950,NULL,'P5',NULL,'CSE',NULL),('B5','Book5','2018','12324',1016,NULL,'P6',NULL,'CSE',NULL),('B50','Book50','2017','1324',5051,NULL,'P1',NULL,'CSE',NULL),('B51','Book51','2017','1324',5152,NULL,'P2',NULL,'CSE',NULL),('B52','Book52','2017','1324',5253,NULL,'P3',NULL,'CSE',NULL),('B53','Book53','2017','1324',5354,NULL,'P4',NULL,'CSE',NULL),('B54','Book54','2017','1324',5455,NULL,'P5',NULL,'CSE',NULL),('B55','Book55','2017','1324',5556,NULL,'P1',NULL,'CSE',NULL),('B56','Book56','2017','1324',5657,NULL,'P2',NULL,'CSE',NULL),('B57','Book57','2017','1324',5758,NULL,'P3',NULL,'CSE',NULL),('B58','Book58','2017','1324',5859,NULL,'P4',NULL,'CSE',NULL),('B59','Book59','2017','1324',5960,NULL,'P5',NULL,'CSE',NULL),('B6','Book6','2018','12324',1219,NULL,'P7',NULL,'CSE',NULL),('B60','Book60','2017','1324',6061,NULL,'P1',NULL,'CSE',NULL),('B61','Book61','2017','1324',6162,NULL,'P2',NULL,'CSE',NULL),('B62','Book62','2017','1324',6263,NULL,'P3',NULL,'CSE',NULL),('B63','Book63','2017','1324',6364,NULL,'P4',NULL,'CSE',NULL),('B64','Book64','2017','1324',6465,NULL,'P5',NULL,'CSE',NULL),('B65','Book65','2017','1324',6566,NULL,'P1',NULL,'CSE',NULL),('B66','Book66','2017','1324',6667,NULL,'P2',NULL,'CSE',NULL),('B67','Book67','2017','1324',6768,NULL,'P3',NULL,'CSE',NULL),('B68','Book68','2017','1324',6869,NULL,'P4',NULL,'CSE',NULL),('B69','Book69','2017','1324',6970,NULL,'P5',NULL,'CSE',NULL),('B7','Book7','2018','12324',1422,NULL,'P8',NULL,'CSE',NULL),('B70','Book70','2017','1324',7071,NULL,'P1',NULL,'CSE',NULL),('B71','Book71','2017','1324',7172,NULL,'P2',NULL,'CSE',NULL),('B72','Book72','2017','1324',7273,NULL,'P3',NULL,'CSE',NULL),('B73','Book73','2017','1324',7374,NULL,'P4',NULL,'CSE',NULL),('B74','Book74','2017','1324',7475,NULL,'P5',NULL,'CSE',NULL),('B75','Book75','2017','1324',7576,NULL,'P1',NULL,'CSE',NULL),('B76','Book76','2017','1324',7677,NULL,'P2',NULL,'CSE',NULL),('B77','Book77','2017','1324',7778,NULL,'P3',NULL,'CSE',NULL),('B78','Book78','2017','1324',7879,NULL,'P4',NULL,'CSE',NULL),('B79','Book79','2017','1324',7980,NULL,'P5',NULL,'CSE',NULL),('B8','Book8','2018','12324',1625,NULL,'P9',NULL,'CSE',NULL),('B80','Book80','2017','1324',8081,NULL,'P1',NULL,'CSE',NULL),('B81','Book81','2017','1324',8182,NULL,'P2',NULL,'CSE',NULL),('B82','Book82','2017','1324',8283,NULL,'P3',NULL,'CSE',NULL),('B83','Book83','2017','1324',8384,NULL,'P4',NULL,'CSE',NULL),('B84','Book84','2017','1324',8485,NULL,'P5',NULL,'CSE',NULL),('B85','Book85','2017','1324',8586,NULL,'P1',NULL,'CSE',NULL),('B86','Book86','2017','1324',8687,NULL,'P2',NULL,'CSE',NULL),('B87','Book87','2017','1324',8788,NULL,'P3',NULL,'CSE',NULL),('B88','Book88','2017','1324',8889,NULL,'P4',NULL,'CSE',NULL),('B89','Book89','2017','1324',8990,NULL,'P5',NULL,'CSE',NULL),('B9','Book9','2018','12324',1828,NULL,'P10',NULL,'CSE',NULL),('B90','Book90','2017','1324',9091,NULL,'P1',NULL,'CSE',NULL),('B91','Book91','2017','1324',9192,NULL,'P2',NULL,'CSE',NULL),('B92','Book92','2017','1324',9293,NULL,'P3',NULL,'CSE',NULL),('B93','Book93','2017','1324',9394,NULL,'P4',NULL,'CSE',NULL),('B94','Book94','2017','1324',9495,NULL,'P5',NULL,'CSE',NULL),('B95','Book95','2017','1324',9596,NULL,'P1',NULL,'CSE',NULL),('B96','Book96','2017','1324',9697,NULL,'P2',NULL,'CSE',NULL),('B97','Book97','2017','1324',9798,NULL,'P3',NULL,'CSE',NULL),('B98','Book98','2017','1324',9899,NULL,'P4',NULL,'CSE',NULL),('B99','Book99','2017','1324',10000,NULL,'P5',NULL,'CSE',NULL);
/*!40000 ALTER TABLE `Book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BookTag`
--

DROP TABLE IF EXISTS `BookTag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BookTag` (
  `BookId` varchar(20) NOT NULL,
  `TagId` varchar(20) NOT NULL,
  PRIMARY KEY (`BookId`,`TagId`),
  KEY `TagId` (`TagId`),
  CONSTRAINT `BookTag_ibfk_1` FOREIGN KEY (`BookId`) REFERENCES `Book` (`Id`),
  CONSTRAINT `BookTag_ibfk_2` FOREIGN KEY (`TagId`) REFERENCES `Tag` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BookTag`
--

LOCK TABLES `BookTag` WRITE;
/*!40000 ALTER TABLE `BookTag` DISABLE KEYS */;
/*!40000 ALTER TABLE `BookTag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Message`
--

DROP TABLE IF EXISTS `Message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Message` (
  `Id` varchar(20) NOT NULL,
  `Text` varchar(200) NOT NULL,
  `UserId` varchar(20) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `UserId` (`UserId`),
  CONSTRAINT `Message_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `User` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Message`
--

LOCK TABLES `Message` WRITE;
/*!40000 ALTER TABLE `Message` DISABLE KEYS */;
/*!40000 ALTER TABLE `Message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Paper`
--

DROP TABLE IF EXISTS `Paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Paper` (
  `Id` varchar(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `PeriodicalId` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `PeriodicalId` (`PeriodicalId`),
  CONSTRAINT `Paper_ibfk_1` FOREIGN KEY (`PeriodicalId`) REFERENCES `Periodical` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Paper`
--

LOCK TABLES `Paper` WRITE;
/*!40000 ALTER TABLE `Paper` DISABLE KEYS */;
INSERT INTO `Paper` VALUES ('Pap1','DBMS Normalization','Per1');
/*!40000 ALTER TABLE `Paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Periodical`
--

DROP TABLE IF EXISTS `Periodical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Periodical` (
  `Id` varchar(20) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Year` varchar(10) DEFAULT NULL,
  `Volume` int(11) NOT NULL,
  `Isbn` varchar(30) NOT NULL,
  `UserId` varchar(20) DEFAULT NULL,
  `PublisherId` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `UserId` (`UserId`),
  KEY `PublisherId` (`PublisherId`),
  CONSTRAINT `Periodical_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `User` (`Id`),
  CONSTRAINT `Periodical_ibfk_2` FOREIGN KEY (`PublisherId`) REFERENCES `Publisher` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Periodical`
--

LOCK TABLES `Periodical` WRITE;
/*!40000 ALTER TABLE `Periodical` DISABLE KEYS */;
INSERT INTO `Periodical` VALUES ('Per1','Time','2019',1,'213435',NULL,'P1');
/*!40000 ALTER TABLE `Periodical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PeriodicalTag`
--

DROP TABLE IF EXISTS `PeriodicalTag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PeriodicalTag` (
  `PeriodicalId` varchar(20) NOT NULL,
  `TagId` varchar(20) NOT NULL,
  PRIMARY KEY (`PeriodicalId`,`TagId`),
  KEY `TagId` (`TagId`),
  CONSTRAINT `PeriodicalTag_ibfk_1` FOREIGN KEY (`PeriodicalId`) REFERENCES `Periodical` (`Id`),
  CONSTRAINT `PeriodicalTag_ibfk_2` FOREIGN KEY (`TagId`) REFERENCES `Tag` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PeriodicalTag`
--

LOCK TABLES `PeriodicalTag` WRITE;
/*!40000 ALTER TABLE `PeriodicalTag` DISABLE KEYS */;
/*!40000 ALTER TABLE `PeriodicalTag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Publisher`
--

DROP TABLE IF EXISTS `Publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Publisher` (
  `Id` varchar(30) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Publisher`
--

LOCK TABLES `Publisher` WRITE;
/*!40000 ALTER TABLE `Publisher` DISABLE KEYS */;
INSERT INTO `Publisher` VALUES ('P1','Wiley'),('P10','Pub10'),('P2','Pub2'),('P3','Pub3'),('P4','Pub4'),('P5','Pub5'),('P6','Pub6'),('P7','Pub7'),('P8','Pub8'),('P9','Pub9');
/*!40000 ALTER TABLE `Publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reserve`
--

DROP TABLE IF EXISTS `Reserve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reserve` (
  `UserId` varchar(20) NOT NULL,
  `BookId` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`UserId`,`BookId`),
  KEY `BookId` (`BookId`),
  CONSTRAINT `Reserve_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `User` (`Id`),
  CONSTRAINT `Reserve_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `Book` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reserve`
--

LOCK TABLES `Reserve` WRITE;
/*!40000 ALTER TABLE `Reserve` DISABLE KEYS */;
INSERT INTO `Reserve` VALUES ('U101','B1','2019-02-25');
/*!40000 ALTER TABLE `Reserve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tag`
--

DROP TABLE IF EXISTS `Tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tag` (
  `Id` varchar(20) NOT NULL,
  `Value` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tag`
--

LOCK TABLES `Tag` WRITE;
/*!40000 ALTER TABLE `Tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `Id` varchar(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `User_Type` enum('Student','Faculty','Staff','Guest') NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('U1','User1','u1','user1','user1@lms0049.com','Faculty'),('U10','User10','u10','user10','user10@lms0049.com','Staff'),('U100','User100','u100','user100','user100@lms0049.com','Student'),('U101','Pratik Parmar','prtk','pratik','pratik@lms0049.com','Student'),('U11','User11','u11','user11','user11@lms0049.com','Guest'),('U12','User12','u12','user12','user12@lms0049.com','Student'),('U13','User13','u13','user13','user13@lms0049.com','Faculty'),('U14','User14','u14','user14','user14@lms0049.com','Staff'),('U15','User15','u15','user15','user15@lms0049.com','Guest'),('U16','User16','u16','user16','user16@lms0049.com','Student'),('U17','User17','u17','user17','user17@lms0049.com','Faculty'),('U18','User18','u18','user18','user18@lms0049.com','Staff'),('U19','User19','u19','user19','user19@lms0049.com','Guest'),('U2','User2','u2','user2','user2@lms0049.com','Staff'),('U20','User20','u20','user20','user20@lms0049.com','Student'),('U21','User21','u21','user21','user21@lms0049.com','Faculty'),('U22','User22','u22','user22','user22@lms0049.com','Staff'),('U23','User23','u23','user23','user23@lms0049.com','Guest'),('U24','User24','u24','user24','user24@lms0049.com','Student'),('U25','User25','u25','user25','user25@lms0049.com','Faculty'),('U26','User26','u26','user26','user26@lms0049.com','Staff'),('U27','User27','u27','user27','user27@lms0049.com','Guest'),('U28','User28','u28','user28','user28@lms0049.com','Student'),('U29','User29','u29','user29','user29@lms0049.com','Faculty'),('U3','User3','u3','user3','user3@lms0049.com','Guest'),('U30','User30','u30','user30','user30@lms0049.com','Staff'),('U31','User31','u31','user31','user31@lms0049.com','Guest'),('U32','User32','u32','user32','user32@lms0049.com','Student'),('U33','User33','u33','user33','user33@lms0049.com','Faculty'),('U34','User34','u34','user34','user34@lms0049.com','Staff'),('U35','User35','u35','user35','user35@lms0049.com','Guest'),('U36','User36','u36','user36','user36@lms0049.com','Student'),('U37','User37','u37','user37','user37@lms0049.com','Faculty'),('U38','User38','u38','user38','user38@lms0049.com','Staff'),('U39','User39','u39','user39','user39@lms0049.com','Guest'),('U4','User4','u4','user4','user4@lms0049.com','Student'),('U40','User40','u40','user40','user40@lms0049.com','Student'),('U41','User41','u41','user41','user41@lms0049.com','Faculty'),('U42','User42','u42','user42','user42@lms0049.com','Staff'),('U43','User43','u43','user43','user43@lms0049.com','Guest'),('U44','User44','u44','user44','user44@lms0049.com','Student'),('U45','User45','u45','user45','user45@lms0049.com','Faculty'),('U46','User46','u46','user46','user46@lms0049.com','Staff'),('U47','User47','u47','user47','user47@lms0049.com','Guest'),('U48','User48','u48','user48','user48@lms0049.com','Student'),('U49','User49','u49','user49','user49@lms0049.com','Faculty'),('U5','User5','u5','user5','user5@lms0049.com','Faculty'),('U50','User50','u50','user50','user50@lms0049.com','Staff'),('U51','User51','u51','user51','user51@lms0049.com','Guest'),('U52','User52','u52','user52','user52@lms0049.com','Student'),('U53','User53','u53','user53','user53@lms0049.com','Faculty'),('U54','User54','u54','user54','user54@lms0049.com','Staff'),('U55','User55','u55','user55','user55@lms0049.com','Guest'),('U56','User56','u56','user56','user56@lms0049.com','Student'),('U57','User57','u57','user57','user57@lms0049.com','Faculty'),('U58','User58','u58','user58','user58@lms0049.com','Staff'),('U59','User59','u59','user59','user59@lms0049.com','Guest'),('U6','User6','u6','user6','user6@lms0049.com','Staff'),('U60','User60','u60','user60','user60@lms0049.com','Student'),('U61','User61','u61','user61','user61@lms0049.com','Faculty'),('U62','User62','u62','user62','user62@lms0049.com','Staff'),('U63','User63','u63','user63','user63@lms0049.com','Guest'),('U64','User64','u64','user64','user64@lms0049.com','Student'),('U65','User65','u65','user65','user65@lms0049.com','Faculty'),('U66','User66','u66','user66','user66@lms0049.com','Staff'),('U67','User67','u67','user67','user67@lms0049.com','Guest'),('U68','User68','u68','user68','user68@lms0049.com','Student'),('U69','User69','u69','user69','user69@lms0049.com','Faculty'),('U7','User7','u7','user7','user7@lms0049.com','Guest'),('U70','User70','u70','user70','user70@lms0049.com','Staff'),('U71','User71','u71','user71','user71@lms0049.com','Guest'),('U72','User72','u72','user72','user72@lms0049.com','Student'),('U73','User73','u73','user73','user73@lms0049.com','Faculty'),('U74','User74','u74','user74','user74@lms0049.com','Staff'),('U75','User75','u75','user75','user75@lms0049.com','Guest'),('U76','User76','u76','user76','user76@lms0049.com','Student'),('U77','User77','u77','user77','user77@lms0049.com','Faculty'),('U78','User78','u78','user78','user78@lms0049.com','Staff'),('U79','User79','u79','user79','user79@lms0049.com','Guest'),('U8','User8','u8','user8','user8@lms0049.com','Student'),('U80','User80','u80','user80','user80@lms0049.com','Student'),('U81','User81','u81','user81','user81@lms0049.com','Faculty'),('U82','User82','u82','user82','user82@lms0049.com','Staff'),('U83','User83','u83','user83','user83@lms0049.com','Guest'),('U84','User84','u84','user84','user84@lms0049.com','Student'),('U85','User85','u85','user85','user85@lms0049.com','Faculty'),('U86','User86','u86','user86','user86@lms0049.com','Staff'),('U87','User87','u87','user87','user87@lms0049.com','Guest'),('U88','User88','u88','user88','user88@lms0049.com','Student'),('U89','User89','u89','user89','user89@lms0049.com','Faculty'),('U9','User9','u9','user9','user9@lms0049.com','Faculty'),('U90','User90','u90','user90','user90@lms0049.com','Staff'),('U91','User91','u91','user91','user91@lms0049.com','Guest'),('U92','User92','u92','user92','user92@lms0049.com','Student'),('U93','User93','u93','user93','user93@lms0049.com','Faculty'),('U94','User94','u94','user94','user94@lms0049.com','Staff'),('U95','User95','u95','user95','user95@lms0049.com','Guest'),('U96','User96','u96','user96','user96@lms0049.com','Student'),('U97','User97','u97','user97','user97@lms0049.com','Faculty'),('U98','User98','u98','user98','user98@lms0049.com','Staff'),('U99','User99','u99','user99','user99@lms0049.com','Guest');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-25  0:58:15
