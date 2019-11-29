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
-- Table structure for table `mapea_control_config`
--

DROP TABLE IF EXISTS `mapea_control_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapea_control_config` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `mapea_control_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_39A5E17157436675` (`mapea_control_id`),
  CONSTRAINT `FK_39A5E17157436675` FOREIGN KEY (`mapea_control_id`) REFERENCES `mapea_control` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapea_control_config`
--

LOCK TABLES `mapea_control_config` WRITE;
/*!40000 ALTER TABLE `mapea_control_config` DISABLE KEYS */;
INSERT INTO `mapea_control_config` VALUES ('19d5e54e-b39e-402b-b08f-65ad8f5c6c5a','2ca6747b-35ac-4aa6-9c79-5803fdd59d14','No parametrizable','default'),('24f92eb0-d492-4f91-8585-fcfdbe77f341','a5400517-ce7e-4037-8131-2cdc51826d15','No parametrizable','default'),('42482a1d-9a84-4afa-bfbd-f3ee9d69a0d4','592b11fc-0c29-49ff-821f-0fe0a4d7d896','GetFeatureInfo en formato HTML y con un buffer de 1000 pixeles','\'html\', {buffer: 1000}'),('4413e904-fee2-4b1e-aa84-34bc7c50fee7','cb5adf6d-cc92-40e6-b81c-8ade19b9be88','GetFeatureInfo en formato HTML y con un buffer de 1000 pixeles','\'html\',  {buffer: 1000}'),('4541ed5f-4b84-42bf-a0da-88e653f24cb7','081ff3bd-6a84-475f-851b-faae120721c8','No parametrizable','default'),('471ae2bf-b647-415a-9a0d-328533f89d95','ecaa4b6b-52a2-4248-9399-69d4d2311960','No parametrizable','default'),('53aef65f-2c9b-48c7-8fa5-6242c6304a3b','e304bd2c-9043-42dc-a7e1-3641bd19100d','No parametrizable','default'),('592cd1bf-0e01-4ade-bc18-e95c3c010e52','bd26de54-f154-4819-882f-fbee9d66daf2','Configuración traking false, highAccuracy false','false,false'),('5d2eb401-5b66-47a3-8ac6-ce043da6db18','cb5adf6d-cc92-40e6-b81c-8ade19b9be88','GetFeatureInfo en formato GML y con un buffer de 1000 metros','\'gml\',  {buffer: 1000}'),('66c571a6-03aa-4b4a-be09-1f40c0da0391','ce8fc09a-508b-43e8-baf7-1cbbdb6d39e9','No parametrizable','default'),('7a7102b6-2865-4225-9e72-b4705362d27a','3d27c18e-80e7-4f95-8624-f1ec77509253','Configuración traking false, highAccuracy false','false,false'),('8d569a5e-afbd-4a32-a308-fdf4a80ae9e2','97b3e243-7d3d-443d-8ea6-5009a15f70e2','No parametrizable','default'),('8ea99068-a02c-451c-aef3-2af9c6160448','d5b0759e-ae72-402f-8ab3-7711c537ed7d','No parametrizable','default'),('98b35269-2844-436f-bc73-d2334c2cac92','953e0227-733e-467f-9add-7c58105aa252','No parametrizable','default'),('a4d4b526-4066-47d5-9c4b-c0ef7e9d41ac','592b11fc-0c29-49ff-821f-0fe0a4d7d896','GetFeatureInfo en formato GML y con un buffer de 1000 metros','\'gml\', {buffer: 1000}'),('d2d9df18-6c1c-4fa1-85e6-79fa85aab99b','3d27c18e-80e7-4f95-8624-f1ec77509253','Configuración traking true highAccuracy true','true,true'),('d8010080-a442-4aa6-ab73-48441e749557','bd26de54-f154-4819-882f-fbee9d66daf2','Configuración traking true highAccuracy true','true,true'),('d9fdb5f4-3b7c-4000-bd8f-f1cfed122f98','196baac8-48db-4828-8c18-633e6571643a','No parametrizable','default'),('e5a22890-93f5-4f0c-aa29-30e963df0fd8','3d27c18e-80e7-4f95-8624-f1ec77509253','Configuración traking true highAccuracy false','true,false'),('e9cb4d60-34de-4db1-a422-ec196d2d74db','13c09ca3-a503-40e4-802b-1ebe8db70639','No parametrizable','default'),('f2a78194-fa9b-465b-9912-0e95737522e6','bd26de54-f154-4819-882f-fbee9d66daf2','Configuración traking true highAccuracy false','true,false'),('f9535d69-67d6-46ed-94f1-a82b0a68f49e','3fe3b863-eb87-481a-acaf-d8f7a8b35eff','No parametrizable','default');
/*!40000 ALTER TABLE `mapea_control_config` ENABLE KEYS */;
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
