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
-- Table structure for table `mapea_map_mapea_configured_control`
--

DROP TABLE IF EXISTS `mapea_map_mapea_configured_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapea_map_mapea_configured_control` (
  `mapea_map_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `mapea_configured_control_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  PRIMARY KEY (`mapea_map_id`,`mapea_configured_control_id`),
  KEY `IDX_F14A7C9A971464BE` (`mapea_map_id`),
  KEY `IDX_F14A7C9A920E6406` (`mapea_configured_control_id`),
  CONSTRAINT `FK_F14A7C9A920E6406` FOREIGN KEY (`mapea_configured_control_id`) REFERENCES `mapea_configured_control` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_F14A7C9A971464BE` FOREIGN KEY (`mapea_map_id`) REFERENCES `mapea_map` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapea_map_mapea_configured_control`
--

LOCK TABLES `mapea_map_mapea_configured_control` WRITE;
/*!40000 ALTER TABLE `mapea_map_mapea_configured_control` DISABLE KEYS */;
INSERT INTO `mapea_map_mapea_configured_control` VALUES ('8fb277ca-e25d-4296-8d42-4b0f965715b9','07c4fbf6-6bc0-46d5-afd8-daeaf68b43a3'),('8fb277ca-e25d-4296-8d42-4b0f965715b9','12a997a1-7e2d-43bc-a3a1-300ed905b2aa'),('8fb277ca-e25d-4296-8d42-4b0f965715b9','1fd0f2e1-1dc9-4d27-84ce-523b11f5d6ed'),('8fb277ca-e25d-4296-8d42-4b0f965715b9','288fc0d4-199b-42b3-989d-3e80dc3aa837'),('f7a0a77e-3762-4e42-9c80-2ca1ad886218','4bf35c69-2149-48f9-8c65-1d497fcbf5d7'),('f7a0a77e-3762-4e42-9c80-2ca1ad886218','5e1a7219-cab5-4b5a-bdf2-2f5ddbe35ba8'),('f7a0a77e-3762-4e42-9c80-2ca1ad886218','79e36499-689f-49a7-a133-b7d85654fcd1'),('f7a0a77e-3762-4e42-9c80-2ca1ad886218','f702a762-8cbb-423f-b29f-003a344a52c2');
/*!40000 ALTER TABLE `mapea_map_mapea_configured_control` ENABLE KEYS */;
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
