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
-- Table structure for table `mapea_control`
--

DROP TABLE IF EXISTS `mapea_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapea_control` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `mapea_core_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configurable` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8B19C6BAAEB876C4` (`mapea_core_id`),
  CONSTRAINT `FK_8B19C6BAAEB876C4` FOREIGN KEY (`mapea_core_id`) REFERENCES `mapea_core` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapea_control`
--

LOCK TABLES `mapea_control` WRITE;
/*!40000 ALTER TABLE `mapea_control` DISABLE KEYS */;
INSERT INTO `mapea_control` VALUES ('081ff3bd-6a84-475f-851b-faae120721c8','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Panzoombar','Añade una barra de desplazamiento para acercarse/alejarse del mapa.','mapajs.addControls(new M.control.Panzoombar())',0),('13c09ca3-a503-40e4-802b-1ebe8db70639','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Panzoombar','Añade una barra de desplazamiento para acercarse/alejarse del mapa.','mapajs.addControls(new M.control.Panzoombar())',0),('196baac8-48db-4828-8c18-633e6571643a','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','OverviewMap','añade un mapa de ubicación, donde se representa la capa base a una escala menor.','mapajs.addControls(new M.control.OverviewMap())',0),('2ca6747b-35ac-4aa6-9c79-5803fdd59d14','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','OverviewMap','añade un mapa de ubicación, donde se representa la capa base a una escala menor.','mapajs.addControls(new M.control.OverviewMap())',0),('3d27c18e-80e7-4f95-8624-f1ec77509253','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Location','Añade un botón de centrado en la posición del usuario. Se le puede indicar si se desea posicionamiento continuo (tracking, por defecto a true) y alta precisión (highAccuracy,  por defecto a false)','mapajs.addControls(new M.control.location())',1),('3fe3b863-eb87-481a-acaf-d8f7a8b35eff','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','ScaleLine','Añada escala gráfica','mapajs.addControls(new M.control.ScaleLine())',0),('592b11fc-0c29-49ff-821f-0fe0a4d7d896','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','GetFeatureInfo','Añade la herramienta de consulta de información sobre capas WMS a través de su servicio getFeatureInfo. Por defecto, espera Html como formato de respuesta. Otros formatos soportados son \'gml\' y \'plain\'. Admite también un buffer en pixeles opcional','mapajs.addControls(new M.control.GetFeatureInfo())',1),('953e0227-733e-467f-9add-7c58105aa252','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Scale','Añade escala numérica','mapajs.addControls(new M.control.Scale())',0),('97b3e243-7d3d-443d-8ea6-5009a15f70e2','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','LayerSwitcher','Incluye un árbol de contenidos (TOC) replegable al mapa. En ese árbol se mostrarán las capas según el nombre público que se les haya dado en su construcción. Para las capas WMS, mostrará además la leyenda que la operación GetLegendGraphic.','mapajs.addControls(new M.control.LayerSwitcher())',0),('a5400517-ce7e-4037-8131-2cdc51826d15','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Mouse','muestra las coordenadas de la posición donde se encuentre el puntero del ratón.','mapajs.addControls(new M.control.Mouse())',0),('bd26de54-f154-4819-882f-fbee9d66daf2','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Location','Añade un botón de centrado en la posición del usuario. Se le puede indicar si se desea posicionamiento continuo (tracking, por defecto a true) y alta precisión (highAccuracy, por defecto a false)','mapajs.addControls(new M.control.location())',1),('cb5adf6d-cc92-40e6-b81c-8ade19b9be88','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','GetFeatureInfo','Añade la herramienta de consulta de información sobre capas WMS a través de su servicio getFeatureInfo. Por defecto, espera Html como formato de respuesta. Otros formatos soportados son \'gml\' y \'plain\'. Admite también un buffer en pixeles opcional','mapajs.addControls(new M.control.GetFeatureInfo())',1),('ce8fc09a-508b-43e8-baf7-1cbbdb6d39e9','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Mouse','muestra las coordenadas de la posición donde se encuentre el puntero del ratón.','mapajs.addControls(new M.control.Mouse())',0),('d5b0759e-ae72-402f-8ab3-7711c537ed7d','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Scale','Añade escala numérica','mapajs.addControls(new M.control.Scale())',0),('e304bd2c-9043-42dc-a7e1-3641bd19100d','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','ScaleLine','Añada escala gráfica','mapajs.addControls(new M.control.ScaleLine())',0),('ecaa4b6b-52a2-4248-9399-69d4d2311960','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','LayerSwitcher','Incluye un árbol de contenidos (TOC) replegable al mapa. En ese árbol se mostrarán las capas según el nombre público que se les haya dado en su construcción. Para las capas WMS, mostrará además la leyenda que la operación GetLegendGraphic.','mapajs.addControls(new M.control.LayerSwitcher())',0);
/*!40000 ALTER TABLE `mapea_control` ENABLE KEYS */;
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
