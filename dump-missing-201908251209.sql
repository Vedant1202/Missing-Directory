-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: missing
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.37-MariaDB

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
-- Table structure for table `missing`
--

DROP TABLE IF EXISTS `missing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `missing` (
  `mid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(191) NOT NULL,
  `lname` varchar(191) DEFAULT NULL,
  `uid` mediumint(8) unsigned NOT NULL,
  `medications` text,
  `prescribed_by` text,
  `conditions` text,
  `height` int(10) unsigned DEFAULT NULL,
  `weight` smallint(5) unsigned DEFAULT NULL,
  `identifications` text,
  `eye_color` varchar(100) DEFAULT NULL,
  `skin_color` varchar(100) DEFAULT NULL,
  `hair_color` varchar(100) DEFAULT NULL,
  `date_created` bigint(20) unsigned NOT NULL,
  `address` text,
  `city` varchar(191) DEFAULT NULL,
  `age` smallint(5) unsigned DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `languages_known` varchar(191) DEFAULT NULL,
  `med_hist` text,
  `other_med` text,
  `fam_phone` varchar(20) DEFAULT NULL,
  `pol_phone` varchar(20) NOT NULL,
  `pol_address` varchar(191) NOT NULL,
  `profimg` varchar(191) NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `missing_fk` (`uid`),
  CONSTRAINT `missing_fk` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `missing`
--

LOCK TABLES `missing` WRITE;
/*!40000 ALTER TABLE `missing` DISABLE KEYS */;
INSERT INTO `missing` VALUES (1,'Lost','1',22,'paracetamol, cough syrup','doctor X','extreme fever, cluastrophobia',170,65,'tattoo on right arm, piercing in left ear','hazel','fair','brown',1566407322,'Mumbai, India','Mumbai',14,'male','vader','Indian','English, Hindi','typhoid in aug 2017',NULL,'9876543101','9712345011','Mumbai','E:/HackerEarth/Missing/WebApp/backend/files/missing/user-blue.png'),(2,'Lost','2',22,'paracetamol','doctor y','cold',170,70,'birthmark on left knee','brown','fair','black',1566407325,'Pune, India','Pune',17,'female',NULL,'Indian','Tamil','malaria in dec 2018',NULL,'9765432100','9876123450','Pune','E:/HackerEarth/Missing/WebApp/backend/files/missing/user-blue.png'),(3,'Lost','3',22,'','','',170,70,'stitches on right shoulder','brown','fair','black',1566407328,'Mumbai, India','Mumbai',23,'female',NULL,'Indian','Hindi',NULL,NULL,'9876543210','9543218760','Mumbai','E:/HackerEarth/Missing/WebApp/backend/files/missing/user-blue.png'),(4,'Vedant','Nandoskar',22,'Crocin','Doctor A, Deonar, Mumbai','Sickness',178,90,'Birth mark on left knee','Brown','Fair','Black',1566633647,'Chembur, Mumbai','Mumbai',20,'Male','vednandoskar@gmail.com','Indian','English, Hindi, Marathi','Cholera','None','9876545678','9876543210','Chembur, Mumbai','E:/HackerEarth/Missing/WebApp/backend/files/missing/ts.jpg'),(5,'Vedant','Nandoskar',22,'','','',0,0,'','','','',1566633746,'Mumbai','',20,'Male','vednandoskar@gmail.com','','','','','','9876567897','987678909876','E:/HackerEarth/Missing/WebApp/backend/files/missing/user-blue.png'),(6,'Vedant','Nandoskar',22,'','','',0,0,'','','','',1566633837,'Mumbai','',20,'Male','vednandoskar@gmail.com','','','','','','9876567897','987678909876','E:/HackerEarth/Missing/WebApp/backend/files/missing/ts.jpg'),(7,'Vedant','Nandoskar',22,'','','',0,0,'','','','',1566633919,'Chembur, Mumbai','Mumbai',16,'Male','vednandoskar@gmail.com','','','','','','8976567389','0987361298','E:/HackerEarth/Missing/WebApp/backend/files/missing/ts.jpg'),(8,'Vedant','Nandoskar',22,'','','',0,0,'','','','',1566634004,'Chembur, Mumbai','Mumbai',16,'Male','vednandoskar@gmail.com','','','','','','8976567389','0987361298','E:/HackerEarth/Missing/WebApp/backend/files/missing/ts.jpg'),(9,'Vedant','Nandoskar',22,'','','',0,0,'','','','',1566634097,'Chembur, Mumbai','Mumbai',20,'Male','vednandoskar@gmail.com','','','','','','98763219893','09876532718','E:/HackerEarth/Missing/WebApp/backend/files/missing/ts.jpg'),(10,'Rishi','Pandya',22,'Sleeping','Doctor','Backache, Cross legs',178,90,'','Black','Fair','Black',1566634551,'Matunga, Mumbai','Mumbai',20,'Male','Chikshi','Indian','English, Hindi, Gujrati','Cancer','Modi supporter','9876562178','8765678921','Pune','E:/HackerEarth/Missing/WebApp/backend/files/missing/ts.jpg'),(12,'ved','dnsjak',22,'asd','das','das',123,12,'ads','das','das','das',1566711077,'ads','dsa',123,'Male','njkasn','dsa','ads','das','das','21343','98765','daslk','E:/HackerEarth/Missing/WebApp/backend/files/missing/ts.jpg'),(13,'ved','dnsjak',22,'asd','das','das',123,12,'ads','das','das','das',1566711316,'ads','dsa',123,'Male','njkasn','dsa','ads','das','das','21343','98765','daslk','E:/HackerEarth/Missing/WebApp/backend/files/missing/ts.jpg'),(14,'ved','dnsjak',22,'asd','das','das',123,12,'ads','das','das','das',1566711427,'ads','dsa',123,'Male','njkasn','dsa','ads','das','das','21343','98765','daslk','E:/HackerEarth/Missing/WebApp/backend/files/missing/ts.jpg'),(15,'ved','dnsjak',22,'asd','das','das',123,12,'ads','das','das','das',1566711452,'ads','dsa',123,'Male','njkasn','dsa','ads','das','das','21343','98765','daslk','E:/HackerEarth/Missing/WebApp/backend/files/missing/ts.jpg'),(16,'ved','dnsjak',22,'asd','das','das',123,12,'ads','das','das','das',1566711505,'ads','dsa',123,'Male','njkasn','dsa','ads','das','das','21343','98765','daslk','E:/HackerEarth/Missing/WebApp/backend/files/missing/ts.jpg'),(17,'ved','dnsjak',22,'asd','das','das',123,12,'ads','das','das','das',1566711624,'ads','dsa',123,'Male','njkasn','dsa','ads','das','das','21343','98765','daslk','E:/HackerEarth/Missing/WebApp/backend/files/missing/ts.jpg'),(18,'ved','dnsjak',22,'asd','das','das',123,12,'ads','das','das','das',1566713946,'ads','dsa',123,'Male','njkasn','dsa','ads','das','das','21343','98765','daslk','E:/HackerEarth/Missing/WebApp/backend/files/missing/user-blue.png'),(19,'ved','dnsjak',22,'asd','das','das',123,12,'ads','das','das','das',1566714012,'ads','dsa',123,'Male','njkasn','dsa','ads','das','das','21343','98765','daslk','E:/HackerEarth/Missing/WebApp/backend/files/missing/user-blue.png'),(20,'ved','dnsjak',22,'asd','das','das',123,12,'ads','das','das','das',1566714046,'ads','dsa',123,'Male','njkasn','dsa','ads','das','das','21343','98765','daslk','E:/HackerEarth/Missing/WebApp/backend/files/missing/user-blue.png');
/*!40000 ALTER TABLE `missing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `missing_update`
--

DROP TABLE IF EXISTS `missing_update`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `missing_update` (
  `mid` mediumint(8) unsigned NOT NULL,
  `timestamp` bigint(20) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL,
  KEY `missing_update_fk` (`mid`),
  KEY `missing_update_fk_1` (`uid`),
  CONSTRAINT `missing_update_fk` FOREIGN KEY (`mid`) REFERENCES `missing` (`mid`),
  CONSTRAINT `missing_update_fk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `missing_update`
--

LOCK TABLES `missing_update` WRITE;
/*!40000 ALTER TABLE `missing_update` DISABLE KEYS */;
/*!40000 ALTER TABLE `missing_update` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `rid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL,
  `date_created` bigint(20) unsigned NOT NULL,
  `location` varchar(100) NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL,
  `description` text,
  `mid` mediumint(8) unsigned NOT NULL,
  `time` varchar(100) NOT NULL,
  PRIMARY KEY (`rid`),
  KEY `report_fk` (`mid`),
  KEY `report_fk_1` (`uid`),
  CONSTRAINT `report_fk` FOREIGN KEY (`mid`) REFERENCES `missing` (`mid`),
  CONSTRAINT `report_fk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,1,1566638104,'Kurla',22,'Found sleeping',10,'14:58');
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_update`
--

DROP TABLE IF EXISTS `report_update`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_update` (
  `rid` mediumint(8) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL,
  `timestamp` bigint(20) unsigned NOT NULL,
  KEY `report_update_fk` (`rid`),
  KEY `report_update_fk_1` (`uid`),
  CONSTRAINT `report_update_fk` FOREIGN KEY (`rid`) REFERENCES `report` (`rid`),
  CONSTRAINT `report_update_fk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_update`
--

LOCK TABLES `report_update` WRITE;
/*!40000 ALTER TABLE `report_update` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_update` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session` (
  `sid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `skey` varchar(191) NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL,
  `status` smallint(6) NOT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `session` (`skey`),
  KEY `session_fk` (`uid`),
  CONSTRAINT `session_fk` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES (1,'hellow',1,0),(4,'hellowo',4,0),(5,'cd62aba0c6e8454298a236e5fde142c0',13,0),(6,'d4e727da6e924dbba5960bcfac283019',15,0),(7,'3fe10bbfd6cf4c8f9e18f8d321b93c296134ad7b640d4a9ea3f5a3b1647e4829',16,0),(10,'bd9ef788a4ce44f59a3d713a371acde4547bf7d656884622988bcddf730b7772',22,1);
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp`
--

DROP TABLE IF EXISTS `tp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp` (
  `haha` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp`
--

LOCK TABLES `tp` WRITE;
/*!40000 ALTER TABLE `tp` DISABLE KEYS */;
INSERT INTO `tp` VALUES ('lol'),('lol'),('lol');
/*!40000 ALTER TABLE `tp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(191) NOT NULL,
  `fname` varchar(191) NOT NULL,
  `lname` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(191) NOT NULL,
  `type` varchar(100) NOT NULL,
  `last_updated` bigint(20) unsigned NOT NULL,
  `address` text,
  `date_created` bigint(20) unsigned NOT NULL,
  `age` smallint(5) unsigned NOT NULL,
  `bdate` varchar(100) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `user_un` (`username`),
  UNIQUE KEY `user_email` (`email`),
  UNIQUE KEY `user_phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'ved13','sample','user user','gaga23','9876543212','pbkdf2:sha256:50000$4SKyFwMm$b242a3a3455e7b546bd604dcd451688097a560ea6eb13afd7cae5dcb47b1fc6f','general',1234567,'chembur mumbai',23443657,0,''),(4,'ved1','sample','user','gaga2','9876543211','abcd','general',1234567,'chembur mumbai',23443657,0,''),(7,'ved10','sample','user','gaga232','9876543214','pbkdf2:sha256:50000$ADrbbrwM$f19c6e08b9dcb00e5a81b7cb92ccc95aaddbd93adf1c9da3d4edbd9be38b224b','general',1234567,'chembur mumbai',23443657,0,''),(9,'ved101','sample','user','gaga2323','9876543213','pbkdf2:sha256:50000$d3PLXMia$41056cc799c31b1b7ecf4ae129d4700bfb8e29b0ebed111fdef6b51017c3d672','general',1234567,'chembur mumbai',23443657,0,''),(11,'ved102','sample','user','gaga2322','9876543223','pbkdf2:sha256:50000$ijtsACqj$6e6f0da19c7b4ecfd465e0bdd6aa950f75be38da1cb00e4ea33414666a63ad5b','general',1234567,'chembur mumbai',23443657,0,''),(12,'ved103','sample','user','gaga2324','9876543243','pbkdf2:sha256:50000$DZBSO9Lw$9706303bff373ea4d151447303defe8748fd4c5556e470f58cd8be0e0a4aedfe','general',1234567,'chembur mumbai',23443657,0,''),(13,'ved104','sample','user','gaga2325','9876543253','pbkdf2:sha256:50000$3A1Gu4nP$a7cf351212f3e100b6ef4825468cb3ab1494c09066fa8f6075c046d46fc0ce54','general',1234567,'chembur mumbai',23443657,0,''),(15,'ved105','sample','user','gaga2326','9876543254','pbkdf2:sha256:50000$GxPTAD4z$4f06c9fe18e8301bcd9c9e512aa40f82a123b93f50fc0c48f46942eafa319b5c','general',1234567,'chembur mumbai',23443657,0,''),(16,'ved106','sample','user','gaga2327','9876543256','pbkdf2:sha256:50000$atG2wyhV$9a4b8df7c1cdee0f55ef5613d3310f6aaa0dedeb59ea5d76b2324d2f0b1d8df3','general',1234567,'chembur mumbai',23443657,0,''),(17,'ved107','sample','user','gaga2328','9876543257','pbkdf2:sha256:50000$9rk3MQJn$680d80bb94ffd52d06b5944f498e7e00a0cf8a1e534a31ec12ca8aa201afbc05','general',1234567,'chembur mumbai',23443657,0,''),(22,'ved1090','fname','lname','ved@lllol.c','9876543210','pbkdf2:sha256:50000$3GALpeY4$a09b29c7e6bf186fae1de004794504bed33b5696e3c6800e1363914c616d14ac','general',1566328376,'Mumbai',1566328376,21,'1998-01-02');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watching`
--

DROP TABLE IF EXISTS `watching`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watching` (
  `uid` mediumint(8) unsigned NOT NULL,
  `mid` mediumint(8) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  KEY `watching_fk` (`mid`),
  KEY `watching_fk_1` (`uid`),
  CONSTRAINT `watching_fk` FOREIGN KEY (`mid`) REFERENCES `missing` (`mid`),
  CONSTRAINT `watching_fk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watching`
--

LOCK TABLES `watching` WRITE;
/*!40000 ALTER TABLE `watching` DISABLE KEYS */;
/*!40000 ALTER TABLE `watching` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'missing'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-25 12:09:59
