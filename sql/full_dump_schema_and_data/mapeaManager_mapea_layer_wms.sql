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
-- Table structure for table `mapea_layer_wms`
--

DROP TABLE IF EXISTS `mapea_layer_wms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapea_layer_wms` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `layer_wmsurl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `layer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `layer_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `layer_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `layer_style` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `layer_legend` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapea_layer_wms`
--

LOCK TABLES `mapea_layer_wms` WRITE;
/*!40000 ALTER TABLE `mapea_layer_wms` DISABLE KEYS */;
INSERT INTO `mapea_layer_wms` VALUES ('09b2a2f7-7662-43a9-805a-5134739dcc0f','http://www.ideandalucia.es/wms/ortofoto2016?','ortofotografia_2016_infrarrojo','Ortofotografía Infrarroja de Andalucía (Año 2016)','Ortofotografía Infrarroja de Andalucía (Año 2016)',NULL,NULL),('09d589d9-8bb7-4356-8453-bd53b6c25eee','http://www.ideandalucia.es/wms/mta10r_2001-2013?','mta10_raster_2013','Mapa Topográfico de Andalucía año 2013 (color poligonos transparentes)','Mapa Topográfico de Andalucía año 2013 (color poligonos transparentes)','Ráster 2013. Color polígonos transparentes',NULL),('336783b0-dafd-41e3-98dd-210f829aab8e','http://www.ideandalucia.es/services/DERA_g9_transport_com/wms?','g09_14_RedCarreteras','Red de Carreteras','Red de Carreteras de Andalucía',NULL,NULL),('56e888a5-87aa-4720-a7db-9cac944d3c70','http://www.ideandalucia.es/wms/ortofoto2016?','ortofotografia_2016_rgb','Ortofotografía Color de Andalucía (Año 2016)','Ortofotografía Color de Andalucía (Año 2016)',NULL,NULL),('6ff52fa4-c4b9-4a36-bc0b-60674490d2a7','http://www.ideandalucia.es/wms/mta10r_2001-2013?','mta10_raster_2013','Mapa Topográfico de Andalucía año 2013 (Monocromo Negro)','Ráster 2013. Monocromo negro','Ráster 2013. Monocromo negro',NULL),('83c222f9-cc67-4c88-97a5-b251cbd315d6','http://www.ideandalucia.es/wms/ortofoto2016?','ortofotografia_2016_pancromatico','Ortofotografía Pancromática de Andalucía (Año 2016)','Ortofotografía Pancromática de Andalucía (Año 2016)',NULL,NULL),('b16660ca-1bb6-4bef-8ad5-de5f814bb53f','http://www.ideandalucia.es/services/DERA_g7_sistema_urbano/wms?','g07_04_Manzana','Sistema Urbano','Sistema Urbano (Manzanas)',NULL,NULL),('d077af03-e6b6-49a5-81ae-4e1da2cea4ae','http://www.ideandalucia.es/wms/mta10r_2001-2013?','mta10_raster_2013','Mapa Topográfico de Andalucía año 2013 (color)','Mapa Topográfico de Andalucía año 2013 (color)','Ráster 2013. Color polígonos sólidos',NULL),('e11ce3ea-393a-432a-a7b8-2c874c4b4332','http://www.ideandalucia.es/wms/mta10r_2001-2013?','mta10_raster_2013','Mapa Topográfico de Andalucía año 2013 (Monocromo Gris)','Mapa Topográfico de Andalucía año 2013 (Monocromo Gris)','Ráster 2013. Monocromo gris',NULL);
/*!40000 ALTER TABLE `mapea_layer_wms` ENABLE KEYS */;
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
