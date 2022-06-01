-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: final
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

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop` (
  `shop_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `img` varchar(255) NOT NULL,
  `type` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  `activity` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`shop_id`),
  UNIQUE KEY `shop_id_UNIQUE` (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (1,'测试书',999,'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/1732799885/O1CN01KilHVg2MtNrRiVkjt_!!1732799885.jpg_250x250.jpg_.webp','测试1','2022-04-28 22:22:46',1),(2,'测试书',999,'https://img.alicdn.com/bao/uploaded/i2/1650569048/O1CN01EXRywl2Gi2DmOGQIp_!!0-item_pic.jpg_200x200q90.jpg_.webp','测试1','2022-04-28 18:11:22',0),(3,'测试书',999,'https://img.alicdn.com/bao/uploaded/i2/1650569048/O1CN01EXRywl2Gi2DmOGQIp_!!0-item_pic.jpg_200x200q90.jpg_.webp','测试2','2022-04-28 18:14:13',0),(4,'测试书',999,'https://img.alicdn.com/bao/uploaded/i2/1650569048/O1CN01EXRywl2Gi2DmOGQIp_!!0-item_pic.jpg_200x200q90.jpg_.webp','测试2','2022-04-28 18:16:44',0),(5,'测试书',999,'https://g-search1.alicdn.com/img/bao/uploaded/i4/i4/712156420/O1CN01FY2KsV1xIPUacNtNh_!!712156420.jpg_250x250.jpg_.webp','测试2','2022-04-28 18:16:56',1),(6,'测试书',999,'https://img.alicdn.com/bao/uploaded/i2/1650569048/O1CN01EXRywl2Gi2DmOGQIp_!!0-item_pic.jpg_200x200q90.jpg_.webp','测试2','2022-04-28 18:19:18',0),(7,'测试书',999,'https://img.alicdn.com/bao/uploaded/i2/1650569048/O1CN01EXRywl2Gi2DmOGQIp_!!0-item_pic.jpg_200x200q90.jpg_.webp','测试2','2022-04-28 18:21:22',0),(8,'测试书',999,'https://img.alicdn.com/bao/uploaded/i1/59900580/O1CN01rz3Yee1G9gLkwziK5_!!59900580.jpg_200x200q90.jpg_.webp','测试2','2022-04-28 18:22:48',1),(9,'测试书',999,'https://img.alicdn.com/bao/uploaded/i2/1650569048/O1CN01EXRywl2Gi2DmOGQIp_!!0-item_pic.jpg_200x200q90.jpg_.webp','测试2','2022-04-28 18:22:59',0);
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

-- Dump completed on 2022-05-27 14:36:18
