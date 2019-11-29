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
-- Table structure for table `mapea_plugin_config`
--

DROP TABLE IF EXISTS `mapea_plugin_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapea_plugin_config` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `mapea_plugin_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8D56EC1DA1EC9697` (`mapea_plugin_id`),
  CONSTRAINT `FK_8D56EC1DA1EC9697` FOREIGN KEY (`mapea_plugin_id`) REFERENCES `mapea_plugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapea_plugin_config`
--

LOCK TABLES `mapea_plugin_config` WRITE;
/*!40000 ALTER TABLE `mapea_plugin_config` DISABLE KEYS */;
INSERT INTO `mapea_plugin_config` VALUES ('0b64d885-ea71-4a20-bfe6-3ba8450bb7dd','4b03075b-74c7-46fe-9642-75406eb49b5c','Búsquedas SIGC , 5000 metros','{ \"distance\":\"5000\", \"core\": \"sigc\", \"url\": \"http://geobusquedas-sigc.juntadeandalucia.es/\", \"handler\": \"/search\"}'),('2269d310-4b0b-468d-811c-ea7160fe4694','356c0c4e-032e-4b1f-a319-e45bc7533a9d','Geosearch core de Fuentes y Manantiales','{\"core\": \"fuentesymanantiales\", \"url\": \"http://geobusquedas-sigc.juntadeandalucia.es/geobusquedas\", \"handler\": \"/search\"}'),('53cf0a19-a3fb-4837-9e68-784b2c18069f','bde768c3-a6c9-4aee-97b4-9e5ab3e787bd','No parametrizable','default'),('77c5ccb6-5c7d-41e0-9d98-5a1e710154a1','b025be24-08b3-439f-b27a-453c8c618147','Configuración Completa WFST','[\"drawfeature\",\"modifyfeature\",\"deletefeature\",\"editattribute\"],\'nombreCapaWFS\''),('8f0359f7-dad8-4da1-9e01-0a1e0ebe6acd','a0860378-fa3b-45fa-aa6c-7f454ee9c9e3','Configuración de Impresión básica','{\r\n  \"params\": {\r\n    \"pages\": {\r\n      \"creditos\": \"Impresión generada a través de Mapea\"\r\n    },\r\n    \"layout\": {\r\n      \"outputFilename\": \"mapea_${yyyy-MM-dd_hhmmss}\"\r\n    },\r\n  },\r\n  \'options\': {\r\n      \'layout\': \'imagen apaisada\',\r\n      \'format\': \'png\',\r\n      \'dpi\': \'127\'\r\n    }\r\n}'),('914701f9-d7d4-4c48-8e38-f966a063ba13','4b03075b-74c7-46fe-9642-75406eb49b5c','Búsquedas ISE , 5000 metros','{\"distance\":\"5000\", \"core\": \"sedes\", \"url\": \"http://geobusquedas-sigc.juntadeandalucia.es/geobusquedas\", \"handler\": \"/search\"}'),('957b459c-e0f6-43a5-a953-16a907729e2f','4b03075b-74c7-46fe-9642-75406eb49b5c','Búsquedas Fuentes y manantiales, 5000 metros','{ \"distance\":\"5000\", \"core\":\"fuentesymanantiales\", \"url\":\"http://geobusquedas-sigc.juntadeandalucia.es/geobusquedas\", \"handler\":\"search\"}'),('9c1ff3b6-8d67-41fc-9f15-76bfe2be1d29','356c0c4e-032e-4b1f-a319-e45bc7533a9d','Geosearch core SIGC','{ \"core\": \"sigc\",  \"url\": \"http://geobusquedas-sigc.juntadeandalucia.es/\",  \"handler\": \"/search\"}'),('b400d335-8e57-494a-8fb9-3d8d47884179','0cc53913-4fa4-4032-8278-81d9f7b68419','No parametrizable','default'),('bdd079b5-6538-4434-8355-5e03e4f29838','e76a3c59-f3d7-4ede-b5c5-6c4f420c5f08','Número de elementos por pagina 8','{ \"pages\": \"8\"}'),('be816bfa-298d-4929-92ea-07d86bd7632f','356c0c4e-032e-4b1f-a319-e45bc7533a9d','Geosearch core ISE','{\"core\": \"sedes\", \"url\": \"http://geobusquedas-sigc.juntadeandalucia.es/geobusquedas\", \"handler\": \"/search\"}'),('e711b378-da4b-4f4d-ac62-a531da595848','435b45e4-07e7-4d9f-a1f9-8016e53d8ecb','Buscador de Calles Sevilla Capital','{ \"locality\": \"41091\"}');
/*!40000 ALTER TABLE `mapea_plugin_config` ENABLE KEYS */;
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
