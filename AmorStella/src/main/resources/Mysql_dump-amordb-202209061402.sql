-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: amordb
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `bidx` int NOT NULL AUTO_INCREMENT,
  `btitle` varchar(50) DEFAULT NULL,
  `bpw` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `userid` varchar(20) DEFAULT NULL,
  `hit` decimal(20,0) DEFAULT NULL,
  `parent` varchar(10) DEFAULT NULL,
  `file1` varchar(100) DEFAULT NULL,
  `file2` varchar(100) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `regdate` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `sch_name` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`bidx`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (3,'btitle','bpw','userid',10,'0','file1','file2','content','2022-09-02 13:25:27',NULL,NULL,NULL,NULL),(4,'테스트 제목',NULL,NULL,0,NULL,NULL,NULL,'테스트 내용입니다!','2022-09-05 18:02:02','테스트맨','01011112222','테스트 학교','pppp@hanmail.net'),(5,'테스트 제목',NULL,NULL,0,NULL,NULL,NULL,'테스트 내용입니다!','2022-09-05 18:02:10','테스트맨','01011112222','테스트 학교','pppp@hanmail.net'),(6,'테스트 제목',NULL,NULL,0,NULL,NULL,NULL,'테스트 내용입니다!','2022-09-05 18:03:01','테스트맨','01011112222','테스트 학교','pppp@hanmail.net'),(7,'테스트 제목',NULL,NULL,0,NULL,NULL,NULL,'테스트 내용입니다!','2022-09-05 18:03:15','테스트맨','01011112222','테스트 학교','pppp@hanmail.net'),(8,'테스트 문의',NULL,NULL,0,NULL,NULL,NULL,'테스트 문의의 내용입니다.','2022-09-06 09:25:21','테스트 담당자','01011111111','테스트학교','test1@test.com'),(9,'테스트 문의',NULL,NULL,0,NULL,NULL,NULL,'테스트 문의의 내용입니다.','2022-09-06 09:27:17','테스트 담당자','01011111111','테스트학교','test1@test.com');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like`
--

DROP TABLE IF EXISTS `like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `like` (
  `lidx` int NOT NULL AUTO_INCREMENT,
  `bidx` decimal(10,0) DEFAULT NULL,
  `userId` varchar(20) DEFAULT NULL,
  `ldate` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`lidx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like`
--

LOCK TABLES `like` WRITE;
/*!40000 ALTER TABLE `like` DISABLE KEYS */;
/*!40000 ALTER TABLE `like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `ridx` int NOT NULL AUTO_INCREMENT,
  `idx` decimal(10,0) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `userid` varchar(20) DEFAULT NULL,
  `rdate` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ridx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `uidx` int NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) DEFAULT NULL,
  `pw` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `grade` varchar(5) DEFAULT NULL,
  `upoint` varchar(20) DEFAULT NULL,
  `cert` varchar(5) DEFAULT NULL,
  `regdate` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `aff_sch` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uidx`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (8,'poxdkr','$2a$10$FjkC8CJjniTsz4qr7ydzBuXcfAN.O38yVDDw5a7F/pq7Vg34.QsXC','1','0','none','2022-09-02 15:26:41','friend',NULL),(10,'','$2a$10$Xf3Y4aXeQZgBBNxzbjurE.H2OvZ0eANth6Z.WE3JTq9ys4BUidJme','1','0','none','2022-09-05 11:23:14','friend',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'amordb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-06 14:02:22
