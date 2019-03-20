-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: drinkcapcap
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `battery_order`
--

DROP TABLE IF EXISTS `battery_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `battery_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `battery_num` int(11) NOT NULL,
  `openid` varchar(255) NOT NULL,
  `done` tinyint(1) NOT NULL,
  `done_time` datetime DEFAULT NULL,
  `freeTime` varchar(255) DEFAULT NULL,
  `userLocation` varchar(255) DEFAULT NULL,
  `realLocation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `battery_order`
--

LOCK TABLES `battery_order` WRITE;
/*!40000 ALTER TABLE `battery_order` DISABLE KEYS */;
INSERT INTO `battery_order` VALUES (1,'2019-03-16 00:00:00',13,'test_openid_1',1,'2019-03-16 17:50:35',NULL,NULL,NULL),(2,'2019-03-16 00:00:00',3,'test_openid_2',1,'2019-03-16 00:00:00',NULL,NULL,NULL),(3,'2019-03-16 00:00:00',20,'test_openid_2',0,NULL,NULL,NULL,NULL),(4,'2019-03-16 00:00:00',50,'test_openid_4',1,'2019-03-16 00:00:00',NULL,NULL,NULL),(5,'2019-03-16 00:00:00',50,'test_openid_5',1,'2019-03-16 00:00:00',NULL,NULL,NULL),(6,'2019-03-16 00:00:00',56,'test_openid_6',1,'2019-03-16 00:00:00',NULL,NULL,NULL),(7,'2019-03-16 17:08:21',9,'test_openid_7',1,'2019-03-16 17:49:43',NULL,NULL,NULL);
/*!40000 ALTER TABLE `battery_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `battery_point`
--

DROP TABLE IF EXISTS `battery_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `battery_point` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) NOT NULL,
  `battery_val` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `battery_point`
--

LOCK TABLES `battery_point` WRITE;
/*!40000 ALTER TABLE `battery_point` DISABLE KEYS */;
INSERT INTO `battery_point` VALUES (1,'test_openid_1',12),(2,'test_openid_2',2),(3,'test_openid_3',0),(6,'test_openid_4',0);
/*!40000 ALTER TABLE `battery_point` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_log`
--

DROP TABLE IF EXISTS `data_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `data_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `do_time` datetime NOT NULL,
  `do_name` varchar(255) NOT NULL,
  `do_type` varchar(255) DEFAULT NULL,
  `interface_id` int(11) NOT NULL,
  `do_result` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='鏁版嵁娴佹按';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_log`
--

LOCK TABLES `data_log` WRITE;
/*!40000 ALTER TABLE `data_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doll_paper`
--

DROP TABLE IF EXISTS `doll_paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `doll_paper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) NOT NULL,
  `doll_paper_val` int(11) DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `effect_time` int(11) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doll_paper`
--

LOCK TABLES `doll_paper` WRITE;
/*!40000 ALTER TABLE `doll_paper` DISABLE KEYS */;
/*!40000 ALTER TABLE `doll_paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drink_control`
--

DROP TABLE IF EXISTS `drink_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `drink_control` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drink_control`
--

LOCK TABLES `drink_control` WRITE;
/*!40000 ALTER TABLE `drink_control` DISABLE KEYS */;
INSERT INTO `drink_control` VALUES (1,1,1,20),(2,1,1,20),(3,1,2,10),(4,2,3,15),(5,2,4,8),(6,3,5,20),(7,3,6,15),(8,4,7,15),(9,4,8,15),(10,5,9,10),(11,5,10,5),(12,6,11,10),(13,6,12,5),(14,7,13,15);
/*!40000 ALTER TABLE `drink_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drink_order`
--

DROP TABLE IF EXISTS `drink_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `drink_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cup_id` int(11) DEFAULT NULL,
  `openid` varchar(255) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `done` tinyint(1) NOT NULL DEFAULT '0',
  `done_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drink_order`
--

LOCK TABLES `drink_order` WRITE;
/*!40000 ALTER TABLE `drink_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `drink_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drink_ticket`
--

DROP TABLE IF EXISTS `drink_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `drink_ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `effect_time` int(11) DEFAULT NULL,
  `done` tinyint(1) NOT NULL,
  `valid` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drink_ticket`
--

LOCK TABLES `drink_ticket` WRITE;
/*!40000 ALTER TABLE `drink_ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `drink_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'__any__',1),(2,'鍥涘濂堕潚',1),(3,'__any__',2),(4,'鐗涘ザ鐑т粰鑽?,2),(5,'__any__',3),(6,'灏忚妺鍦嗙儳浠欒崏',3),(7,'__any__',4),(8,'铚傝湝鏌氬瓙鑼?,4),(9,'__any__',5),(10,'骞藉叞鎷块搧',5),(11,'__any__',6),(12,'鐔婄尗濂剁洊鑼?,6),(13,'__any__',7);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(255) DEFAULT NULL,
  `other_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (1,'鐩婄鍫?,'涓崡澶у搴?),(2,'鐩婄鍫?,'鍚庢箹灏忓尯搴?),(3,'涔︿害鐑т粰鑽?,'涓崡澶у搴?),(4,'铚滈洩鍐板煄','涓崡澶у搴?),(5,'鑼堕鎮﹁壊','闈掑勾璺琛岃搴?),(6,'闃块噷灞辫础鑼?,'涓崡澶у搴?),(7,'鐢樿寳鍩?,'鍚庢箹灏忓尯搴?);
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-20 23:50:51
