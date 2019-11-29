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
-- Table structure for table `mapea_map`
--

DROP TABLE IF EXISTS `mapea_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapea_map` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `owner_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `subcategory_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `mapea_core_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `category_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `zoom` int(11) DEFAULT NULL,
  `bbox` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_extent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `projection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'EPSG:25830*m',
  `center` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` longtext COLLATE utf8mb4_unicode_ci,
  `resolutions` longtext COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B8E5AE1A7E3C61F9` (`owner_id`),
  KEY `IDX_B8E5AE1A5DC6FE57` (`subcategory_id`),
  KEY `IDX_B8E5AE1AAEB876C4` (`mapea_core_id`),
  KEY `IDX_B8E5AE1A12469DE2` (`category_id`),
  CONSTRAINT `FK_B8E5AE1A12469DE2` FOREIGN KEY (`category_id`) REFERENCES `map_category` (`id`),
  CONSTRAINT `FK_B8E5AE1A5DC6FE57` FOREIGN KEY (`subcategory_id`) REFERENCES `map_sub_category` (`id`),
  CONSTRAINT `FK_B8E5AE1A7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `fos_user` (`id`),
  CONSTRAINT `FK_B8E5AE1AAEB876C4` FOREIGN KEY (`mapea_core_id`) REFERENCES `mapea_core` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapea_map`
--

LOCK TABLES `mapea_map` WRITE;
/*!40000 ALTER TABLE `mapea_map` DISABLE KEYS */;
INSERT INTO `mapea_map` VALUES ('8fb277ca-e25d-4296-8d42-4b0f965715b9','7f823767-22f3-4f31-a74d-f8d69021a11d','5ccf77a6-0455-4207-87ed-6404ff291251','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','1f3df6b5-559e-486d-b744-3bf7b06cbdb4',0,NULL,NULL,'EPSG:25830*m',NULL,NULL,NULL,'Red de comunicaciones','En este mapa se muestra la Ortofotografía digital de Andalucía con el sistema urbano y la red de carreteras'),('f7a0a77e-3762-4e42-9c80-2ca1ad886218','3d9e1792-5dc8-42c5-bc37-8b5285f49248','ebaddb75-99c6-4fb3-ba9e-c297184a6bca','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','1f3df6b5-559e-486d-b744-3bf7b06cbdb4',0,NULL,NULL,'EPSG:25830*m',NULL,NULL,NULL,'mapawmc','Mapa con WMC');
/*!40000 ALTER TABLE `mapea_map` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-29 12:33:56
