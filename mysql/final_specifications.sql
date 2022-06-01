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
-- Table structure for table `specifications`
--

DROP TABLE IF EXISTS `specifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specifications` (
  `shop_id` int NOT NULL,
  `body` varchar(45) NOT NULL,
  `choose` varchar(45) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `shop_id` (`shop_id`),
  CONSTRAINT `specifications_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specifications`
--

LOCK TABLES `specifications` WRITE;
/*!40000 ALTER TABLE `specifications` DISABLE KEYS */;
INSERT INTO `specifications` VALUES (3,'大小','30码',1),(3,'大小','45码',2),(3,'大小','44码',3),(3,'大小','43码',4),(3,'大小','42码',5),(3,'大小','41码',6),(3,'大小','20码',7),(3,'颜色','红',8),(3,'颜色','黄',9),(3,'颜色','蓝',10),(3,'颜色','绿',11),(3,'颜色','紫',12),(3,'颜色','黑',13),(3,'颜色','白',14),(5,'大小','30码',15),(5,'大小','44码',16),(5,'大小','43码',17),(5,'大小','42码',18),(5,'大小','41码',19),(5,'大小','45码',20),(5,'大小','20码',21),(6,'大小','30码',22),(6,'大小','45码',23),(6,'大小','44码',24),(6,'大小','43码',25),(6,'大小','42码',26),(6,'大小','20码',27),(6,'大小','41码',28),(7,'大小','30码',29),(7,'大小','45码',30),(7,'大小','44码',31),(7,'大小','43码',32),(7,'大小','42码',33),(7,'大小','41码',34),(7,'大小','20码',35),(8,'大小','30码',36),(8,'大小','45码',37),(8,'大小','44码',38),(8,'大小','43码',39),(8,'大小','42码',40),(8,'大小','41码',41),(8,'大小','20码',42),(9,'大小','30码',43),(9,'大小','45码',44),(9,'大小','44码',45),(9,'大小','43码',46),(9,'大小','41码',47),(9,'大小','42码',48),(9,'大小','20码',49);
/*!40000 ALTER TABLE `specifications` ENABLE KEYS */;
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
