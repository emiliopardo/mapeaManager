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
-- Table structure for table `mapea_plugin`
--

DROP TABLE IF EXISTS `mapea_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapea_plugin` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `mapea_core_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `javascript` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `style` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configurable` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2DBF1C4EAEB876C4` (`mapea_core_id`),
  CONSTRAINT `FK_2DBF1C4EAEB876C4` FOREIGN KEY (`mapea_core_id`) REFERENCES `mapea_core` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapea_plugin`
--

LOCK TABLES `mapea_plugin` WRITE;
/*!40000 ALTER TABLE `mapea_plugin` DISABLE KEYS */;
INSERT INTO `mapea_plugin` VALUES ('0cc53913-4fa4-4032-8278-81d9f7b68419','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Measurebar','http://localhost:8080/mapea/plugins/measurebar/measurebar.ol.min.js','http://localhost:8080/mapea/plugins/measurebar/measurebar.min.css','Herramienta de medición de áreas y distancias','mapajs.addPlugin(new M.plugin.Measurebar())',0),('356c0c4e-032e-4b1f-a319-e45bc7533a9d','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Geosearch','http://localhost:8080/mapea/plugins/geosearch/geosearch.ol.min.js','http://localhost:8080/mapea/plugins/geosearch/geosearch.min.css','Buscador de elementos espaciales a través de un servicio de Geobúsquedas','mapajs.addPlugin(new M.plugin.Geosearch())',1),('435b45e4-07e7-4d9f-a1f9-8016e53d8ecb','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Searchstreet','http://localhost:8080/mapea/plugins/searchstreet/searchstreet.ol.min.js','http://localhost:8080/mapea/plugins/searchstreet/searchstreet.min.css','Buscador de vías y portales','mapajs.addPlugin(new M.plugin.Searchstreet())',1),('4b03075b-74c7-46fe-9642-75406eb49b5c','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Geosearchbylocation','http://localhost:8080/mapea/plugins/geosearchbylocation/geosearchbylocation.ol.min.js','http://localhost:8080/mapea/plugins/geosearchbylocation/geosearchbylocation.min.css','Buscador de elementos espaciales a través de un servicio de Geobúsquedas basado en la ubicación del usuario','mapajs.addPlugin(new M.plugin.Geosearchbylocation())',1),('4c9c82c9-8c29-4a28-bdfb-529cd8eecdf0','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','WFST Controls','http://localhost:8080/mapea/plugins/wfstcontrols/wfstcontrols.ol.min.js','http://localhost:8080/mapea/plugins/wfstcontrols/wfstcontrols.min.css','Herramientas de edición WFST','mapajs.addPlugin(new M.plugin.WFSTControls())',1),('90bf7aea-ab32-4ed9-a74c-b927084fa217','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Geosearchbylocation','http://localhost:8080/mapea/plugins/geosearchbylocation/geosearchbylocation.ol.min.js','http://localhost:8080/mapea/plugins/geosearchbylocation/geosearchbylocation.min.css','Buscador de elementos espaciales a través de un servicio de Geobúsquedas basado en la ubicación del usuario','mapajs.addPlugin(new M.plugin.Geosearchbylocation())',1),('a0860378-fa3b-45fa-aa6c-7f454ee9c9e3','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Printer','http://localhost:8080/mapea/plugins/printer/printer.ol.min.js','http://localhost:8080/mapea/plugins/printer/printer.min.css','Impresión en alta resolución del mapa','mapajs.addPlugin(new M.plugin.Printer())',1),('adeabdc0-bcf9-4efa-a677-3bb01d17a6ad','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','AttributeTable','http://localhost:8080/mapea/plugins/attributetable/attributetable.ol.min.js','http://localhost:8080/mapea/plugins/attributetable/attributetable.min.css','Muestra los elementos de las capas vectoriales en una tabla','mapajs.addPlugin(new M.plugin.AttributeTable())',1),('b025be24-08b3-439f-b27a-453c8c618147','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','WFST Controls','http://localhost:8080/mapea/plugins/wfstcontrols/wfstcontrols.ol.min.js','http://localhost:8080/mapea/plugins/wfstcontrols/wfstcontrols.min.css','Controles para editar servicios WFS-T','mapajs.addPlugin(new M.plugin.WFSTControls())',1),('bde768c3-a6c9-4aee-97b4-9e5ab3e787bd','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Measurebar','http://localhost:8080/mapea/plugins/measurebar/measurebar.ol.min.js','http://localhost:8080/mapea/plugins/measurebar/measurebar.min.css','Herramienta de medición de áreas y distancias','mapajs.addPlugin(new M.plugin.Measurebar())',0),('c37ccb1b-a0e1-49f3-83a0-784c15ed4b34','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Geosearch','http://localhost:8080/mapea/plugins/geosearch/geosearch.ol.min.js','http://localhost:8080/mapea/plugins/geosearch/geosearch.min.css','Buscador de elementos espaciales a través de un servicio de Geobúsquedas','mapajs.addPlugin(new M.plugin.Geosearch())',1),('c49672fe-b4e9-4a69-82ca-118015c02b88','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Searchstreet','http://localhost:8080/mapea/plugins/searchstreet/searchstreet.ol.min.js','http://localhost:8080/mapea/plugins/searchstreet/searchstreet.min.css','Buscador de vías y portales','mapajs.addPlugin(new M.plugin.Searchstreet())',1),('e1f82231-e8a2-4c00-83a9-32bde54e7777','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Printer','http://localhost:8080/mapea/plugins/printer/printer.ol.min.js','http://localhost:8080/mapea/plugins/printer/printer.min.css','Impresión en alta resolución del mapa','mapajs.addPlugin(new M.plugin.Printer())',1),('e76a3c59-f3d7-4ede-b5c5-6c4f420c5f08','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','AttributeTable','http://localhost:8080/mapea/plugins/attributetable/attributetable.ol.min.js','http://localhost:8080/mapea/plugins/attributetable/attributetable.min.css','Muestra los elementos de las capas vectoriales en una tabla','mapajs.addPlugin(new M.plugin.AttributeTable())',1);
/*!40000 ALTER TABLE `mapea_plugin` ENABLE KEYS */;
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
