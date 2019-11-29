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
-- Table structure for table `mapea_configured_plugin`
--

DROP TABLE IF EXISTS `mapea_configured_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapea_configured_plugin` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `plugin_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `plugin_config_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_621BD02214CE312A` (`plugin_config_id`),
  KEY `IDX_621BD022EC942BCF` (`plugin_id`),
  CONSTRAINT `FK_621BD02214CE312A` FOREIGN KEY (`plugin_config_id`) REFERENCES `mapea_plugin_config` (`id`),
  CONSTRAINT `FK_621BD022EC942BCF` FOREIGN KEY (`plugin_id`) REFERENCES `mapea_plugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapea_configured_plugin`
--

LOCK TABLES `mapea_configured_plugin` WRITE;
/*!40000 ALTER TABLE `mapea_configured_plugin` DISABLE KEYS */;
INSERT INTO `mapea_configured_plugin` VALUES ('1ea64127-4170-4804-8617-a0f2f18ffb82','bde768c3-a6c9-4aee-97b4-9e5ab3e787bd','53cf0a19-a3fb-4837-9e68-784b2c18069f','Measurebar_v5.0.0'),('1f6f19e8-2eae-4d2c-8807-5a5e4a119031','356c0c4e-032e-4b1f-a319-e45bc7533a9d','9c1ff3b6-8d67-41fc-9f15-76bfe2be1d29','geosearch_sigc'),('bee69ade-b40b-454d-8dfb-b33c0edf6ae9','0cc53913-4fa4-4032-8278-81d9f7b68419','b400d335-8e57-494a-8fb9-3d8d47884179','Measurebar_v4.3.0');
/*!40000 ALTER TABLE `mapea_configured_plugin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-29 12:33:58
