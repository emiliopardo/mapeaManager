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
-- Table structure for table `mapea_configured_control`
--

DROP TABLE IF EXISTS `mapea_configured_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapea_configured_control` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `control_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `control_config_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CF524F0552D887E3` (`control_config_id`),
  KEY `IDX_CF524F0532BEC70E` (`control_id`),
  CONSTRAINT `FK_CF524F0532BEC70E` FOREIGN KEY (`control_id`) REFERENCES `mapea_control` (`id`),
  CONSTRAINT `FK_CF524F0552D887E3` FOREIGN KEY (`control_config_id`) REFERENCES `mapea_control_config` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapea_configured_control`
--

LOCK TABLES `mapea_configured_control` WRITE;
/*!40000 ALTER TABLE `mapea_configured_control` DISABLE KEYS */;
INSERT INTO `mapea_configured_control` VALUES ('07c4fbf6-6bc0-46d5-afd8-daeaf68b43a3','13c09ca3-a503-40e4-802b-1ebe8db70639','e9cb4d60-34de-4db1-a422-ec196d2d74db','Panzoombar_v4.3.0'),('12a997a1-7e2d-43bc-a3a1-300ed905b2aa','3fe3b863-eb87-481a-acaf-d8f7a8b35eff','f9535d69-67d6-46ed-94f1-a82b0a68f49e','ScaleLine_v4.3.0'),('1fd0f2e1-1dc9-4d27-84ce-523b11f5d6ed','ecaa4b6b-52a2-4248-9399-69d4d2311960','471ae2bf-b647-415a-9a0d-328533f89d95','LayerSwitcher_v4.3.0'),('288fc0d4-199b-42b3-989d-3e80dc3aa837','a5400517-ce7e-4037-8131-2cdc51826d15','24f92eb0-d492-4f91-8585-fcfdbe77f341','Mouse_v4.3.0'),('2dec496a-bc24-47b5-bca7-e2c5f5a7418d','2ca6747b-35ac-4aa6-9c79-5803fdd59d14','19d5e54e-b39e-402b-b08f-65ad8f5c6c5a','OverviewMap_v5.0.0'),('3e04f5d5-bc2e-487d-80d7-d6081a1d661e','d5b0759e-ae72-402f-8ab3-7711c537ed7d','8ea99068-a02c-451c-aef3-2af9c6160448','Scale_v4.3.0'),('4bf35c69-2149-48f9-8c65-1d497fcbf5d7','97b3e243-7d3d-443d-8ea6-5009a15f70e2','8d569a5e-afbd-4a32-a308-fdf4a80ae9e2','LayerSwitcher_v5.0.0'),('5e1a7219-cab5-4b5a-bdf2-2f5ddbe35ba8','ce8fc09a-508b-43e8-baf7-1cbbdb6d39e9','66c571a6-03aa-4b4a-be09-1f40c0da0391','Mouse_v5.0.0'),('79e36499-689f-49a7-a133-b7d85654fcd1','081ff3bd-6a84-475f-851b-faae120721c8','4541ed5f-4b84-42bf-a0da-88e653f24cb7','Panzoombar_v5.0.0'),('8a7763fd-ee8c-4ccc-8330-b0ed5b9aa560','cb5adf6d-cc92-40e6-b81c-8ade19b9be88','4413e904-fee2-4b1e-aa84-34bc7c50fee7','getfeatureInfo_html'),('8be79e9f-7ea5-44be-bf78-1a0d44c69f5c','196baac8-48db-4828-8c18-633e6571643a','d9fdb5f4-3b7c-4000-bd8f-f1cfed122f98','OverviewMap_v4.3.0'),('b2cd6a96-eb7e-4da8-9a4f-7bf67acd7c8d','cb5adf6d-cc92-40e6-b81c-8ade19b9be88','5d2eb401-5b66-47a3-8ac6-ce043da6db18','getfeatureInfo_gml'),('c116c449-9892-4a1f-a278-46da4aabe6fa','953e0227-733e-467f-9add-7c58105aa252','98b35269-2844-436f-bc73-d2334c2cac92','Scale_v5.0.0'),('f702a762-8cbb-423f-b29f-003a344a52c2','e304bd2c-9043-42dc-a7e1-3641bd19100d','53aef65f-2c9b-48c7-8fa5-6242c6304a3b','ScaleLine_v5.0.0');
/*!40000 ALTER TABLE `mapea_configured_control` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-29 12:33:54
