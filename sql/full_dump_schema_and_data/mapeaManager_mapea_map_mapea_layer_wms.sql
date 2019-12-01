-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: mapeaManager
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `mapea_map_mapea_layer_wms`
--

DROP TABLE IF EXISTS `mapea_map_mapea_layer_wms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapea_map_mapea_layer_wms` (
  `mapea_map_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `mapea_layer_wms_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  PRIMARY KEY (`mapea_map_id`,`mapea_layer_wms_id`),
  KEY `IDX_4650376D971464BE` (`mapea_map_id`),
  KEY `IDX_4650376D1A82007F` (`mapea_layer_wms_id`),
  CONSTRAINT `FK_4650376D1A82007F` FOREIGN KEY (`mapea_layer_wms_id`) REFERENCES `mapea_layer_wms` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_4650376D971464BE` FOREIGN KEY (`mapea_map_id`) REFERENCES `mapea_map` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapea_map_mapea_layer_wms`
--

LOCK TABLES `mapea_map_mapea_layer_wms` WRITE;
/*!40000 ALTER TABLE `mapea_map_mapea_layer_wms` DISABLE KEYS */;
INSERT INTO `mapea_map_mapea_layer_wms` VALUES ('8fb277ca-e25d-4296-8d42-4b0f965715b9','336783b0-dafd-41e3-98dd-210f829aab8e'),('8fb277ca-e25d-4296-8d42-4b0f965715b9','83c222f9-cc67-4c88-97a5-b251cbd315d6'),('8fb277ca-e25d-4296-8d42-4b0f965715b9','b16660ca-1bb6-4bef-8ad5-de5f814bb53f');
/*!40000 ALTER TABLE `mapea_map_mapea_layer_wms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-29 12:33:57