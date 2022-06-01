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
-- Table structure for table `advertisement`
--

DROP TABLE IF EXISTS `advertisement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advertisement` (
  `date` datetime NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisement`
--

LOCK TABLES `advertisement` WRITE;
/*!40000 ALTER TABLE `advertisement` DISABLE KEYS */;
INSERT INTO `advertisement` VALUES ('2022-04-28 08:23:52','https://gtms02.alicdn.com/tps/i2/TB10vPXKpXXXXacXXXXvKyzTVXX-520-280.jpg'),('2022-04-28 08:24:00','https://gtms03.alicdn.com/tps/i3/TB1gXd1JXXXXXapXpXXvKyzTVXX-520-280.jpg'),('2022-04-28 08:24:08','https://gtms01.alicdn.com/tps/i1/TB1r4h8JXXXXXXoXXXXvKyzTVXX-520-280.jpg');
/*!40000 ALTER TABLE `advertisement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `user_id` int NOT NULL,
  `shop_id` int NOT NULL,
  `num` int NOT NULL DEFAULT '1',
  `shop_desc` varchar(255) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,1,2,'原味10袋，',17);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection`
--

DROP TABLE IF EXISTS `collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection` (
  `user_id` int NOT NULL,
  `shop_id` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection`
--

LOCK TABLES `collection` WRITE;
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
INSERT INTO `collection` VALUES (1,3,13),(1,1,14),(1,8,15);
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail`
--

DROP TABLE IF EXISTS `detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail` (
  `shop_id` int NOT NULL,
  `detailImg` varchar(255) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail`
--

LOCK TABLES `detail` WRITE;
/*!40000 ALTER TABLE `detail` DISABLE KEYS */;
INSERT INTO `detail` VALUES (1,'https://img.alicdn.com/imgextra/i2/4046559811/O1CN01AQak2b2MLUW8XDPcp_!!4046559811.jpg_430x430q90.jpg',1),(1,'https://img.alicdn.com/imgextra/i4/4046559811/O1CN01cww4uP2MLUWBbtOFF_!!4046559811.jpg_430x430q90.jpg',2),(1,'https://img.alicdn.com/imgextra/i2/4046559811/O1CN01lYehQW2MLUHN7sg4R_!!4046559811.jpg_430x430q90.jpg',3),(1,'https://img.alicdn.com/imgextra/i2/4046559811/O1CN01AQak2b2MLUW8XDPcp_!!4046559811.jpg_430x430q90.jpg',4),(1,'https://picasso.alicdn.com/imgextra/O1CNA1AdUdMR2MLUYXQ7pE1_!!4046559811-0-psf.jpg_430x430q90.jpg',5),(2,'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i3/2939572214/O1CN015ih7Qs1SE3dZwmsSH_!!2939572214.jpg_430x430q90.jpg',6),(2,'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i2/2939572214/O1CN01iI8L7W1SE3dnppIUs_!!2939572214.jpg_430x430q90.jpg',7),(2,'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i2/2939572214/O1CN01dCF5DD1SE3drmUj5n_!!2939572214.jpg_430x430q90.jpg',8),(2,'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i4/2939572214/O1CN010oVPrz1SE3dgMO5cf_!!2939572214.jpg_430x430q90.jpg',9),(2,'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i1/2939572214/O1CN01KWcnBG1SE3dqafMnA_!!2939572214.jpg_430x430q90.jpg',10),(3,'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i3/3978789820/O1CN018eDRWg2MPc7hgoPwR_!!3978789820.jpg_430x430q90.jpg',11),(3,'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i4/3978789820/O1CN01x5rlEp2MPc7inLSHJ_!!3978789820.jpg_430x430q90.jpg',12),(3,'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i4/3978789820/O1CN01oMUaAV2MPc7evQ6lc_!!3978789820.jpg_430x430q90.jpg',13),(3,'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i4/3978789820/O1CN01NWXbtF2MPc7acd3I1_!!3978789820.jpg_430x430q90.jpg',14),(3,'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i3/3978789820/O1CN01SWDrtH2MPc7grCv95_!!3978789820.jpg_430x430q90.jpg',15),(4,'https://img.alicdn.com/imgextra/i4/3511754089/O1CN01IzfEc51g4oBzpFrzP_!!0-item_pic.jpg_430x430q90.jpg',16),(4,'https://img.alicdn.com/imgextra/i1/3511754089/O1CN01JA0W9H1g4oC8p32t9_!!3511754089.jpg_430x430q90.jpg',17),(4,'https://img.alicdn.com/imgextra/i4/3511754089/O1CN01GqQx5T1g4oC3mhQp2_!!3511754089.jpg_430x430q90.jpg',18),(4,'https://img.alicdn.com/imgextra/i3/3511754089/O1CN011htCZz1g4oC3mhy4n_!!3511754089.jpg_430x430q90.jpg',19),(4,'https://img.alicdn.com/imgextra/i2/3511754089/O1CN01z28Tta1g4oC5IDZiN_!!3511754089.jpg_430x430q90.jpg',20),(5,'https://img.alicdn.com/imgextra/i2/2204163643281/O1CN011ODhiU1a6kErsN52X_!!0-item_pic.jpg_430x430q90.jpg',21),(5,'https://img.alicdn.com/imgextra/i4/2204163643281/O1CN01trW4eZ1a6kElAV9rk_!!2204163643281.jpg_430x430q90.jpg',22),(5,'https://img.alicdn.com/imgextra/i2/2204163643281/O1CN01X5fMuK1a6kEw3RSnI_!!2204163643281.jpg_430x430q90.jpg',23),(5,'https://img.alicdn.com/imgextra/i1/2204163643281/O1CN01YS9zLZ1a6kEqQJJ5m_!!2204163643281.jpg_430x430q90.jpg',24),(5,'https://img.alicdn.com/imgextra/i3/2204163643281/O1CN01H80VT11a6kEmf0eWK_!!2204163643281.jpg_430x430q90.jpg',25),(6,'https://img.alicdn.com/imgextra/i4/2209558754680/O1CN01WwdpmY1kRUKhlwbb7_!!0-item_pic.jpg_430x430q90.jpg',26),(6,'https://img.alicdn.com/imgextra/i3/2209558754680/O1CN013b3HXL1kRUKqmWq26_!!0-item_pic.jpg_430x430q90.jpg',27),(6,'https://img.alicdn.com/imgextra/i1/2209558754680/O1CN01pBGtGx1kRUKp7CfSA_!!2209558754680.jpg_430x430q90.jpg',28),(6,'https://img.alicdn.com/imgextra/i4/2209558754680/O1CN013fEn2p1kRUKkVwIni_!!2209558754680.jpg_430x430q90.jpg',29),(6,'https://img.alicdn.com/imgextra/i3/2209558754680/O1CN01Zlse431kRUKrv7FvO_!!2209558754680.jpg_430x430q90.jpg',30),(7,'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i3/2210291351615/O1CN01LCiTha1NniPDoVCCq_!!2210291351615.jpg_430x430q90.jpg',31),(7,'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i1/2210291351615/O1CN01vMDY3H1NniLVwPFgo_!!2210291351615.jpg_430x430q90.jpg',32),(7,'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i3/2210291351615/O1CN01ISubrR1NniLGBGCUb_!!2210291351615.jpg_430x430q90.jpg',33),(7,'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i1/2210291351615/O1CN01T4VFpN1NniOacaX4Q_!!2210291351615.jpg_430x430q90.jpg',34),(7,'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i3/2210291351615/O1CN01Sjz3oD1NniLht0wuk_!!2210291351615.jpg_430x430q90.jpg',35),(8,'https://img.alicdn.com/imgextra/i1/3499491468/O1CN0116y9AL1MiO5tREuxc_!!0-item_pic.jpg_430x430q90.jpg',36),(8,'https://img.alicdn.com/imgextra/i2/3499491468/O1CN01gbJ0Ex1MiO5kgaPbw_!!3499491468.jpg_430x430q90.jpg',37),(8,'https://img.alicdn.com/imgextra/i3/3499491468/O1CN01n0v6yj1MiO5nmpnk3_!!3499491468.jpg_430x430q90.jpg',38),(8,'https://img.alicdn.com/imgextra/i2/3499491468/O1CN01JnMgbx1MiO5ioqPYS_!!3499491468.jpg_430x430q90.jpg',39),(8,'https://img.alicdn.com/imgextra/i2/3499491468/O1CN01xW5rjc1MiO5qMpFvY_!!3499491468.jpg_430x430q90.jpg',40),(9,'https://picasso.alicdn.com/imgextra/O1CNA1dgj1Za1WzT6wyxPU4_!!2208796342859-0-psf.jpg_430x430q90.jpg',41),(9,'https://img.alicdn.com/imgextra/i4/2208796342859/O1CN01aRcjzt1WzT6pSDgOb_!!2208796342859.jpg_430x430q90.jpg',42),(9,'https://img.alicdn.com/imgextra/i1/2208796342859/O1CN01hbmnEB1WzT6h1ebI2_!!2208796342859.jpg_430x430q90.jpg',43),(9,'https://img.alicdn.com/imgextra/i3/2208796342859/O1CN01u5lcXo1WzT6sdWNou_!!2208796342859.jpg_430x430q90.jpg',44),(9,'https://img.alicdn.com/imgextra/i2/2208796342859/O1CN01STgKAz1WzT6fSuoEA_!!2208796342859.jpg_430x430q90.jpg',45),(10,'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i1/3463862654/O1CN01cO8LUs1VTZuUr8FHx_!!3463862654.jpg_430x430q90.jpg',46),(10,'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i1/3463862654/O1CN01NFIQt11VTZsst82JZ_!!3463862654.jpg_430x430q90.jpg',47),(10,'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i4/3463862654/O1CN01afT3Rj1VTZqudukyV_!!3463862654.jpg_430x430q90.jpg',48),(10,'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i3/3463862654/O1CN01Dc3zkw1VTZu2jShV0_!!3463862654.jpg_430x430q90.jpg',49),(10,'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i4/3463862654/O1CN0164TdoG1VTZrCqSInb_!!3463862654.jpg_430x430q90.jpg',50),(11,'https://img.alicdn.com/imgextra/i2/2207993211984/O1CN01nAK76G1QWiXkyZFk0_!!2207993211984.jpg_430x430q90.jpg',51),(11,'https://img.alicdn.com/imgextra/i1/2207993211984/O1CN01TedMxN1QWiXcOKc0K_!!2207993211984.jpg_430x430q90.jpg',52),(11,'https://img.alicdn.com/imgextra/i3/2207993211984/O1CN01sfbKVf1QWiXZy9P8p_!!2207993211984.jpg_430x430q90.jpg',53),(11,'https://img.alicdn.com/imgextra/i2/2207993211984/O1CN01nAK76G1QWiXkyZFk0_!!2207993211984.jpg_430x430q90.jpg',54),(11,'https://img.alicdn.com/imgextra/i1/2207993211984/O1CN01H38Y4T1QWiXjR7JHc_!!2207993211984.jpg_430x430q90.jpg',55);
/*!40000 ALTER TABLE `detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footprint`
--

DROP TABLE IF EXISTS `footprint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `footprint` (
  `user_id` int NOT NULL,
  `shop_id` int NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footprint`
--

LOCK TABLES `footprint` WRITE;
/*!40000 ALTER TABLE `footprint` DISABLE KEYS */;
INSERT INTO `footprint` VALUES (1,2,'2022-05-20 23:27:36'),(1,3,'2022-05-20 23:11:32'),(1,1,'2022-05-18 20:47:07'),(1,8,'2022-05-18 20:47:40'),(1,4,'2022-05-14 16:55:24');
/*!40000 ALTER TABLE `footprint` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (1,'	脆升升薯条25袋香脆蜂蜜黄油味薯条片零食品小包装脆脆生生 ',28.6,'https://img.alicdn.com/imgextra/i2/4046559811/O1CN01AQak2b2MLUW8XDPcp_!!4046559811.jpg_430x430q90.jpg','零食','2022-04-28 22:22:46',1),(2,'	黑金蟹香咸蛋黄糯米锅巴黑米糯乌米肉松蟹黄解馋零食小吃休闲食品 ',19.8,'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i3/2939572214/O1CN015ih7Qs1SE3dZwmsSH_!!2939572214.jpg_430x430q90.jpg','零食','2022-04-28 18:11:22',0),(3,'三顿半|快饮速溶咖啡 拿铁美式冻干黑咖啡粉60颗*2克 ',309,'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i3/3978789820/O1CN018eDRWg2MPc7hgoPwR_!!3978789820.jpg_430x430q90.jpg','超即溶咖啡','2022-04-28 18:14:13',0),(4,'	FAXIEN日系潮牌字母印花休闲短裤男士2021夏季新款宽松运动五分裤 ',118,'https://img.alicdn.com/imgextra/i4/3511754089/O1CN01IzfEc51g4oBzpFrzP_!!0-item_pic.jpg_430x430q90.jpg','服装','2022-04-28 18:16:44',0),(5,'夏季休闲运动套装男士冰丝短袖t恤短裤一整套2022新款潮流两件套',26.9,'https://img.alicdn.com/imgextra/i2/2204163643281/O1CN011ODhiU1a6kErsN52X_!!0-item_pic.jpg_430x430q90.jpg','服装','2022-04-28 18:16:56',1),(6,'	水果麻薯椰丝球椰蓉球糯米糍干吃汤圆小包装传统糕点充饥零食小吃 ',13.9,'https://img.alicdn.com/imgextra/i4/2209558754680/O1CN01WwdpmY1kRUKhlwbb7_!!0-item_pic.jpg_430x430q90.jpg','零食','2022-04-28 18:19:18',0),(7,'Tims咖啡小甜圈冻干速溶咖啡粉冷萃黑咖啡冰美式意式',63.8,'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i3/2210291351615/O1CN01LCiTha1NniPDoVCCq_!!2210291351615.jpg_430x430q90.jpg','超即溶咖啡','2022-04-28 18:21:22',0),(8,'	防晒衣男士夏季韩版潮流超薄冰丝户外外套2022新款夹克透气防晒服 ',29.9,'https://img.alicdn.com/imgextra/i1/3499491468/O1CN0116y9AL1MiO5tREuxc_!!0-item_pic.jpg_430x430q90.jpg','服装','2022-04-28 18:22:48',1),(9,'柠檬共和国低温冷藏鸭屎香雨林茉莉鲜柠檬茶饮品 ',108,'https://picasso.alicdn.com/imgextra/O1CNA1dgj1Za1WzT6wyxPU4_!!2208796342859-0-psf.jpg_430x430q90.jpg','饮品','2022-05-30 18:22:59',0),(10,'	韩国真露烧酒葡萄西柚李子女士微醺低度非清酒13度360ml*6瓶包邮 ',83,'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i1/3463862654/O1CN01cO8LUs1VTZuUr8FHx_!!3463862654.jpg_430x430q90.jpg','饮品','2022-05-30 18:12:59',0),(11,'香港道地无糖茶饮料乌龙茶红茶绿茶玄米茶零糖五种口味',99,'https://img.alicdn.com/imgextra/i2/2207993211984/O1CN01nAK76G1QWiXkyZFk0_!!2207993211984.jpg_430x430q90.jpg','饮品','2022-05-30 18:52:59',0),(12,'班尼路工装裤男休闲裤春夏季薄款弹力长裤子束脚哈伦9分运动潮牌',65.75,'https://img.pddpic.com/gaudit-image/2021-10-25/1a55d44ceda60ff8af5cad49b20fa7aa.jpeg','测试3','2022-05-30 18:32:59',0);
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specifications`
--

LOCK TABLES `specifications` WRITE;
/*!40000 ALTER TABLE `specifications` DISABLE KEYS */;
INSERT INTO `specifications` VALUES (1,'口味','蜂蜜黄油10袋',1),(1,'口味','原味10袋',2),(1,'口味','烧烤味10袋',3),(1,'口味','番茄味10袋',4),(1,'口味','黑胡椒味10袋',5),(2,'口味','【蟹黄锅巴】麻辣味500g',6),(2,'口味','【蟹黄锅巴】麻辣味500g',7),(3,'口味','60颗 拿铁',8),(3,'口味','60颗 美式',9),(3,'口味','60颗 拿铁美式混合装',10),(4,'大小','均码',11),(4,'颜色','卡其色M',12),(4,'颜色','卡其色L',13),(4,'颜色','卡其色XL',14),(4,'颜色','卡其色2XL',15),(4,'颜色','黑色M',16),(4,'颜色','黑色L',17),(4,'颜色','黑色XL',18),(4,'颜色','黑色2XL',19),(5,'大小','M',20),(5,'大小','L',21),(5,'大小','XL',22),(5,'大小','2XL',23),(5,'大小','3XL',24),(5,'大小','4XL',25),(5,'大小','5XL',26),(5,'颜色','雪山白短袖+白短裤【套装】',27),(5,'颜色','雪山黑短袖+黑短裤【套装】',28),(5,'颜色','雪山白短袖+黑短裤【套装】',29),(5,'颜色','雪山白短袖【单件/上衣】',30),(5,'颜色','雪山黑短袖【单件/上衣】',31),(6,'口味','椰丝麻薯团子20包+送冰皮蛋糕10个',32),(6,'口味','椰丝麻薯团子20个+送干吃汤圆20个',33),(6,'口味','椰丝麻薯团子20个+长条夹心麻薯20包',34),(6,'口味','椰丝麻薯团子20个+送奶盖沙琪玛20个',35),(7,'口味','【新品】意式2盒~共计24颗 ~ 送冻干咖啡3颗',36),(7,'口味','【2盒】深烘2盒~共计24颗 ~ 送冻干咖啡3颗',37),(7,'口味','【2盒】榛果2盒~共计24颗  ~ 送冻干咖啡3颗',38),(7,'口味','【2盒】中烘2盒~共计24颗 ~ 送冻干咖啡3颗',39),(7,'口味','【2盒】深烘1盒+榛果1盒~共计24颗  ~ 送冻干咖啡3颗',40),(7,'口味','【2盒】深烘1盒+意式1盒~共计24颗 ~ 送冻干咖啡3颗',41),(7,'口味','【2盒】意式1盒+榛果1盒~共计24颗 ~ 送冻干咖啡3颗',42),(7,'口味','【2盒】中烘1盒+深烘1盒~共计24颗  ~ 送冻干咖啡3颗',43),(7,'口味','【2盒】中烘1盒+榛果1盒~共计24颗 ~ 送冻干咖啡3颗',44),(7,'口味','【2盒】意式1盒+中烘1盒~共计24颗 ~ 送冻干咖啡3颗',45),(8,'大小','M',46),(8,'大小','L',47),(8,'大小','XL',48),(8,'大小','XXL',49),(8,'大小','XXXL',78),(8,'大小','XXXXL',79),(8,'颜色','A1白色',80),(8,'颜色','A1粉色',81),(8,'颜色','A1黑色',82),(8,'颜色','A1灰色',83),(8,'颜色','A1蓝色',84),(8,'颜色','A2白色',85),(8,'颜色','A2粉色',86),(8,'颜色','A2黑色',87),(8,'颜色','A2灰色',88),(8,'颜色','A2蓝色',89),(8,'颜色','A3白色',90),(8,'颜色','A3粉色',91),(8,'颜色','A3灰色',92),(8,'颜色','A3蓝色',93),(8,'颜色','K06黑色',94),(8,'颜色','1818白色',95),(8,'颜色','1818灰色',96),(8,'颜色','1818天蓝',97),(8,'颜色','501粉色',98),(8,'颜色','501黑色',99),(8,'颜色','501灰色',100),(8,'颜色','501绿色',101),(8,'颜色','501上白下蓝',102),(8,'颜色','501上蓝下白',103),(8,'颜色','K06红色',104),(8,'颜色','1188蒲公英黑色',105),(9,'口味','鸭屎香300ml*8',106),(9,'口味','雨林茉莉300ml*8',107),(10,'版本','混合果味6瓶【新人推荐】',108),(10,'版本','青葡萄果味6瓶',109),(10,'版本','西柚味6瓶-清新',110),(10,'版本','草莓味6瓶-香甜',111),(10,'版本','李子味6瓶-浓郁',112),(10,'版本','3种果味6瓶-直播间',113),(10,'颜色','颜色',114),(11,'口味','五种口味各三瓶',115),(11,'口味','纤解茶15瓶整箱',116),(11,'口味','解茶15瓶整箱',117),(11,'口味','解绿茶15瓶整箱',118),(11,'口味','玄米茶15瓶整箱',119),(11,'口味','乌龙茶15瓶整箱',120);
/*!40000 ALTER TABLE `specifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'c197833','$2a$10$9i0CtHO0fGFzDqeIGmkQi.5Z5KvQPmnDI/BRYszQnxbw8s6KQWl8C');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_address` (
  `user_id` int NOT NULL,
  `number` varchar(25) NOT NULL,
  `address` varchar(255) NOT NULL,
  `name` varchar(45) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `address_default` int NOT NULL DEFAULT '0',
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_address`
--

LOCK TABLES `user_address` WRITE;
/*!40000 ALTER TABLE `user_address` DISABLE KEYS */;
INSERT INTO `user_address` VALUES (1,'17328602161','广东机电职业技术学院456123','陈杰麟',1,1),(10,'17328602161','广东省广州市南沙区东涌镇','麟',2,0),(1,'17328602161','广东省,广州市,南沙区东涌镇仁益大街','麟',3,0);
/*!40000 ALTER TABLE `user_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_order`
--

DROP TABLE IF EXISTS `user_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_order` (
  `user_id` int NOT NULL,
  `shop_id` int NOT NULL,
  `date` datetime NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `state` int NOT NULL,
  `num` int NOT NULL,
  `address_id` int DEFAULT NULL,
  `shop_desc` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_order`
--

LOCK TABLES `user_order` WRITE;
/*!40000 ALTER TABLE `user_order` DISABLE KEYS */;
INSERT INTO `user_order` VALUES (1,3,'2022-05-26 17:09:36',104,2,2,NULL,'45码，蓝，'),(1,3,'2022-05-26 17:10:28',105,2,5,NULL,'45码，蓝，'),(1,3,'2022-05-26 17:11:45',106,2,1,NULL,'45码，蓝，'),(1,3,'2022-05-26 17:12:29',107,1,5,NULL,'45码，黄，'),(1,3,'2022-05-28 21:28:35',108,3,1,NULL,'44码，红，'),(1,3,'2022-05-28 21:31:05',109,3,1,NULL,'44码，蓝，'),(1,3,'2022-05-28 21:34:59',110,1,1,NULL,'44码，蓝，'),(1,3,'2022-05-28 21:36:56',111,4,1,NULL,'44码，蓝，'),(1,3,'2022-05-28 21:37:38',112,4,1,NULL,'20码，黄，'),(1,1,'2022-06-01 12:18:07',116,1,1,NULL,'原味10袋，');
/*!40000 ALTER TABLE `user_order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-01 20:48:33
