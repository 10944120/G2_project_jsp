CREATE DATABASE  IF NOT EXISTS `mmm` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mmm`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mmm
-- ------------------------------------------------------
-- Server version	8.0.29

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


DROP TABLE IF EXISTS `good`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `good` (
  `id` int NOT NULL AUTO_INCREMENT,
  `div class` varchar(45) DEFAULT NULL,
  `a href` varchar(45) DEFAULT NULL,
  `img src` varchar(45) DEFAULT NULL,
  `div class2` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `count` varchar(45) DEFAULT NULL,
  `introduction` varchar(80) DEFAULT NULL,
  `add` varchar(10) NOT NULL,
  `date` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  `total` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `good`
--

INSERT INTO `good` VALUES (1,'col-4','eyes.jsp','../assets/images/eyes.png','bord-txt','割雙眼皮','60000','100','你單眼皮太醜了，割個雙眼皮才好找對象！','1','20220622','下午12:00','0');
INSERT INTO `good` VALUES (2,'col-4','breast.jsp','../assets/images/breast.png','bord-txt','隆乳','400000','100','愛生氣的你，隆了乳就不易生氣，因為胸部起來！','2','20220622','下午12:00','0');
INSERT INTO `good` VALUES (3,'col-4','pull.jsp','../assets/images/pull.png','bord-txt','拉皮','150000','100','你臉上的皺紋都可以夾死蚊子了，還在等什麼！','1','20220622','下午12:00','0');
INSERT INTO `good` VALUES (4,'col-4','inject.jsp','../assets/images/inject.png','bord-txt','消脂針','10000','100','欸…這是雙下巴還是游泳圈，是不是該來消個脂？','1','20220622','下午12:00','0');
INSERT INTO `good` VALUES (5,'col-4','losefat.jsp','../assets/images/losefat.png','bord-txt','抽脂','160000','100','最動聽的，不是「我愛你」，而是「你瘦了」','1','20220622','下午12:00','0');
INSERT INTO `good` VALUES (6,'col-4','nose.jsp','../assets/images/nose.png','bord-txt','隆鼻','100000','100','顏值隨時鼻別人高','1','20220622','下午12:00','0');


