-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: final
-- ------------------------------------------------------
-- Server version	8.0.28

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
  `choose` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specifications`
--

LOCK TABLES `specifications` WRITE;
/*!40000 ALTER TABLE `specifications` DISABLE KEYS */;
INSERT INTO `specifications` VALUES (3,'大小','30码'),(3,'大小','45码'),(3,'大小','44码'),(3,'大小','43码'),(3,'大小','42码'),(3,'大小','41码'),(3,'大小','20码'),(4,'大小','30码'),(4,'大小','45码'),(4,'大小','44码'),(4,'大小','42码'),(4,'大小','43码'),(4,'大小','41码'),(4,'大小','20码'),(5,'大小','30码'),(5,'大小','44码'),(5,'大小','43码'),(5,'大小','42码'),(5,'大小','41码'),(5,'大小','45码'),(5,'大小','20码'),(6,'大小','30码'),(6,'大小','45码'),(6,'大小','44码'),(6,'大小','43码'),(6,'大小','42码'),(6,'大小','20码'),(6,'大小','41码'),(7,'大小','30码'),(7,'大小','45码'),(7,'大小','44码'),(7,'大小','43码'),(7,'大小','42码'),(7,'大小','41码'),(7,'大小','20码'),(8,'大小','30码'),(8,'大小','45码'),(8,'大小','44码'),(8,'大小','43码'),(8,'大小','42码'),(8,'大小','41码'),(8,'大小','20码'),(9,'大小','30码'),(9,'大小','45码'),(9,'大小','44码'),(9,'大小','43码'),(9,'大小','41码'),(9,'大小','42码'),(9,'大小','20码');
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

-- Dump completed on 2022-05-02 23:58:44
