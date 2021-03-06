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
-- Table structure for table `fos_group`
--

DROP TABLE IF EXISTS `fos_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fos_group` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `name` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4B019DDB5E237E06` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fos_group`
--

LOCK TABLES `fos_group` WRITE;
/*!40000 ALTER TABLE `fos_group` DISABLE KEYS */;
INSERT INTO `fos_group` VALUES ('352d1401-3511-46d9-a018-0de1f56eaddc','Super Administrador','a:1:{i:0;s:16:\"ROLE_SUPER_ADMIN\";}'),('696957bd-9ab3-4fd5-a753-572ba19ca938','Usuario','a:1:{i:0;s:9:\"ROLE_USER\";}'),('8537713f-92fe-4e23-8e18-ec182b1edddc','Editor','a:1:{i:0;s:11:\"ROLE_EDITOR\";}'),('8e0dbf7a-6fda-4902-8f9e-f18592a2b5e7','Publicador','a:1:{i:0;s:15:\"ROLE_PUBLICADOR\";}'),('9f18f7f5-7157-4cbd-ab36-ce1350b83f50','Administrador','a:1:{i:0;s:18:\"ROLE_ADMINISTRADOR\";}');
/*!40000 ALTER TABLE `fos_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fos_user`
--

DROP TABLE IF EXISTS `fos_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fos_user` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fos_user`
--

LOCK TABLES `fos_user` WRITE;
/*!40000 ALTER TABLE `fos_user` DISABLE KEYS */;
INSERT INTO `fos_user` VALUES ('03d9a9ff-aed8-4160-8fb0-d05a5ff05f22','publicador','publicador','publicador@publicador.es','publicador@publicador.es',1,NULL,'$2y$10$kfoY2TA9xFpkph6VqlU8MOEuTb10sMJKdOLDt7PTrUj9bsJKDp/jq','2019-12-03 11:05:27',NULL,NULL,'a:0:{}'),('3d9e1792-5dc8-42c5-bc37-8b5285f49248','superadmin','superadmin','superadmin@superadmin.es','superadmin@superadmin.es',1,NULL,'$2y$10$CiSjBeARMcathVs0xCSXW.bV/4C/TrWw5feuguVuu2Tp2muLSyRuS','2019-12-03 18:08:33',NULL,NULL,'a:0:{}'),('7f823767-22f3-4f31-a74d-f8d69021a11d','admin','admin','admin@admin.es','admin@admin.es',1,NULL,'$2y$10$njggTcqozdKxhQMpYwWz7eN0IIYzvSE.5OkvQ9IYIndBFQSUfmAdm','2019-12-03 11:13:53',NULL,NULL,'a:0:{}'),('a40b7eac-b55e-489a-9ac3-3a3329b55600','user','user','user@user.es','user@user.es',1,NULL,'$2y$10$N5VDq3vCGGhwvzPPDOqIAuSwalA.Pwp66/nLwn.9JsRX5JTY3Nube','2019-12-03 17:34:51',NULL,NULL,'a:0:{}'),('d4307506-b0aa-4aa6-bfaf-0258863c4184','editor','editor','editor@editor.es','editor@editor.es',1,NULL,'$2y$10$eOo8QtCg/yby2rZz4wdH6eeHpR8dK3QGAOj51u4.Cl0mzsF3VYmsK','2019-12-03 11:01:53',NULL,NULL,'a:0:{}');
/*!40000 ALTER TABLE `fos_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fos_user_user_group`
--

DROP TABLE IF EXISTS `fos_user_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fos_user_user_group` (
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `group_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `IDX_B3C77447A76ED395` (`user_id`),
  KEY `IDX_B3C77447FE54D947` (`group_id`),
  CONSTRAINT `FK_B3C77447A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`),
  CONSTRAINT `FK_B3C77447FE54D947` FOREIGN KEY (`group_id`) REFERENCES `fos_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fos_user_user_group`
--

LOCK TABLES `fos_user_user_group` WRITE;
/*!40000 ALTER TABLE `fos_user_user_group` DISABLE KEYS */;
INSERT INTO `fos_user_user_group` VALUES ('03d9a9ff-aed8-4160-8fb0-d05a5ff05f22','8e0dbf7a-6fda-4902-8f9e-f18592a2b5e7'),('3d9e1792-5dc8-42c5-bc37-8b5285f49248','352d1401-3511-46d9-a018-0de1f56eaddc'),('7f823767-22f3-4f31-a74d-f8d69021a11d','9f18f7f5-7157-4cbd-ab36-ce1350b83f50'),('a40b7eac-b55e-489a-9ac3-3a3329b55600','696957bd-9ab3-4fd5-a753-572ba19ca938'),('d4307506-b0aa-4aa6-bfaf-0258863c4184','8537713f-92fe-4e23-8e18-ec182b1edddc');
/*!40000 ALTER TABLE `fos_user_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_category`
--

DROP TABLE IF EXISTS `map_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_category` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_category`
--

LOCK TABLES `map_category` WRITE;
/*!40000 ALTER TABLE `map_category` DISABLE KEYS */;
INSERT INTO `map_category` VALUES ('1f3df6b5-559e-486d-b744-3bf7b06cbdb4','Cartografía','Productos y servicios cartográfico'),('7711e8fd-ffd0-458c-b941-77534a19cde7','Georreferenciación','Principales conjuntos de datos geocodificados');
/*!40000 ALTER TABLE `map_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_sub_category`
--

DROP TABLE IF EXISTS `map_sub_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_sub_category` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `category_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_24D67A7612469DE2` (`category_id`),
  CONSTRAINT `FK_24D67A7612469DE2` FOREIGN KEY (`category_id`) REFERENCES `map_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_sub_category`
--

LOCK TABLES `map_sub_category` WRITE;
/*!40000 ALTER TABLE `map_sub_category` DISABLE KEYS */;
INSERT INTO `map_sub_category` VALUES ('5ccf77a6-0455-4207-87ed-6404ff291251','1f3df6b5-559e-486d-b744-3bf7b06cbdb4','Datos Espaciales de Referencia','Datos Espaciales de Referencia'),('8f2f7fcf-f544-42c3-baa3-11fdce15dddc','7711e8fd-ffd0-458c-b941-77534a19cde7','Clasificación del Grado de Urbanización','La Clasificación del Grado de Urbanización es una clasificación que busca caracterizar la intensidad del asentamiento en celdas de la malla estadística de 1 km2 donde reside población. A partir de la densidad de población, se definen distintas categorías de áreas basándose en criterios de contigüidad geográfica, densidad y umbrales de población según la metodología descrita por EUROSTAT para la asignación de las tipologías territoriales en malla estadística: Centros urbanos, Agrupaciones urbanas y Celdas de malla rurales.'),('a719d7e2-fa87-4a74-8d82-f7aacbe692b5','7711e8fd-ffd0-458c-b941-77534a19cde7','Distribución Espacial de la Población en Andalucía','La información que se representa en estos mapas proviene del Base de Datos Longitudinal de Población de Andalucía (BDLPA) a fecha de 1 de enero del año de referencia y ha sido georreferenciada partiendo de la localización de la dirección postal donde reside cada uno de los habitantes de Andalucía. Para facilitar la representación de la información y para preservar el secreto estadístico se ha trazado una malla regular con celdas de 250 m de lado, donde ha quedado agregada toda la información que corresponde en cada caso. La información que no se ha podido georreferenciar ha sido estimada utilizando técnicas de análisis espacial. Se ofrece información sobre Población (población total, por sexo, nacionalidad o grupos de edad), Afiliación a la Seguridad Social (afiliación total, por sexo o relación laboral), Pensiones contributivas de la Seguridad Social (perceptores de pensiones contributivas, por sexo, por tipo, así como ingresos por pensiones de jubilación, viudedad, jubilación y viudedad, incapacidad u otro tipo de pensiones) y Demandantes de empleo del Servicio Andaluz de Empleo (demandantes de empleo total, por sexo).'),('d1da790d-271d-4525-ba6d-d3ff4c881b79','1f3df6b5-559e-486d-b744-3bf7b06cbdb4','Ortofotografías Digitales de Andalucía','Las Ortofotografías Digitales de Andalucía son productos cartográficos resultantes del tratamiento digital de fotografías aéreas. El producto está constituido por una serie de recubrimientos completos de la Comunidad Autónoma, para un período de tiempo que abarca desde el año 1956 hasta 2016.'),('e7dd2ee0-62ef-4efa-a4b2-b682a92d6e79','1f3df6b5-559e-486d-b744-3bf7b06cbdb4','Mapas Generales','Mapas Generales'),('ebaddb75-99c6-4fb3-ba9e-c297184a6bca','1f3df6b5-559e-486d-b744-3bf7b06cbdb4','Base Cartográfica de Andalucía 1:10.000 - BCA10','La Base Cartográfica de Andalucía 1:10.000 (BCA10) está constituida por los conjuntos de datos espaciales de carácter topográfico, restituidos mediante técnicas fotogramétricas a partir de vuelos PNOA y que componen los elementos estructurantes del territorio: relieve, infraestructuras de comunicación, red hidrográfica, construcciones, poblamiento, parcelario, aparente toponimia, etc. Se concibe como un producto para ser explotado mediante herramientas SIG o de tratamiento cartográfico, ya sea para su conversión en mapas o como datos a ser integrados en un proceso de análisis espacial.');
/*!40000 ALTER TABLE `map_sub_category` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `mapea_configured_control` VALUES ('07c4fbf6-6bc0-46d5-afd8-daeaf68b43a3','13c09ca3-a503-40e4-802b-1ebe8db70639','e9cb4d60-34de-4db1-a422-ec196d2d74db','Panzoombar_v4.3.0'),('12a997a1-7e2d-43bc-a3a1-300ed905b2aa','3fe3b863-eb87-481a-acaf-d8f7a8b35eff','f9535d69-67d6-46ed-94f1-a82b0a68f49e','ScaleLine_v4.3.0'),('1fd0f2e1-1dc9-4d27-84ce-523b11f5d6ed','ecaa4b6b-52a2-4248-9399-69d4d2311960','471ae2bf-b647-415a-9a0d-328533f89d95','LayerSwitcher_v4.3.0'),('288fc0d4-199b-42b3-989d-3e80dc3aa837','a5400517-ce7e-4037-8131-2cdc51826d15','24f92eb0-d492-4f91-8585-fcfdbe77f341','Mouse_v4.3.0'),('2dec496a-bc24-47b5-bca7-e2c5f5a7418d','2ca6747b-35ac-4aa6-9c79-5803fdd59d14','19d5e54e-b39e-402b-b08f-65ad8f5c6c5a','OverviewMap_v5.0.0'),('3e04f5d5-bc2e-487d-80d7-d6081a1d661e','d5b0759e-ae72-402f-8ab3-7711c537ed7d','8ea99068-a02c-451c-aef3-2af9c6160448','Scale_v4.3.0'),('4bf35c69-2149-48f9-8c65-1d497fcbf5d7','97b3e243-7d3d-443d-8ea6-5009a15f70e2','8d569a5e-afbd-4a32-a308-fdf4a80ae9e2','LayerSwitcher_v5.0.0'),('5e1a7219-cab5-4b5a-bdf2-2f5ddbe35ba8','ce8fc09a-508b-43e8-baf7-1cbbdb6d39e9','66c571a6-03aa-4b4a-be09-1f40c0da0391','Mouse_v5.0.0'),('79e36499-689f-49a7-a133-b7d85654fcd1','081ff3bd-6a84-475f-851b-faae120721c8','4541ed5f-4b84-42bf-a0da-88e653f24cb7','Panzoombar_v5.0.0'),('8a7763fd-ee8c-4ccc-8330-b0ed5b9aa560','cb5adf6d-cc92-40e6-b81c-8ade19b9be88','4413e904-fee2-4b1e-aa84-34bc7c50fee7','getfeatureInfo_html'),('8be79e9f-7ea5-44be-bf78-1a0d44c69f5c','196baac8-48db-4828-8c18-633e6571643a','d9fdb5f4-3b7c-4000-bd8f-f1cfed122f98','OverviewMap_v4.3.0'),('b2cd6a96-eb7e-4da8-9a4f-7bf67acd7c8d','cb5adf6d-cc92-40e6-b81c-8ade19b9be88','5d2eb401-5b66-47a3-8ac6-ce043da6db18','getfeatureInfo_gml'),('c116c449-9892-4a1f-a278-46da4aabe6fa','953e0227-733e-467f-9add-7c58105aa252','98b35269-2844-436f-bc73-d2334c2cac92','Scale_v5.0.0'),('e7a1b008-23b9-4f51-87a0-8a35c037a6bc','bd26de54-f154-4819-882f-fbee9d66daf2','592cd1bf-0e01-4ade-bc18-e95c3c010e52','localtion_bad_resolution'),('f702a762-8cbb-423f-b29f-003a344a52c2','e304bd2c-9043-42dc-a7e1-3641bd19100d','53aef65f-2c9b-48c7-8fa5-6242c6304a3b','ScaleLine_v5.0.0');
/*!40000 ALTER TABLE `mapea_configured_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapea_configured_control_map_sub_category`
--

DROP TABLE IF EXISTS `mapea_configured_control_map_sub_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapea_configured_control_map_sub_category` (
  `mapea_configured_control_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `map_sub_category_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  PRIMARY KEY (`mapea_configured_control_id`,`map_sub_category_id`),
  KEY `IDX_6B6C8BC8920E6406` (`mapea_configured_control_id`),
  KEY `IDX_6B6C8BC88C5D376B` (`map_sub_category_id`),
  CONSTRAINT `FK_6B6C8BC88C5D376B` FOREIGN KEY (`map_sub_category_id`) REFERENCES `map_sub_category` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_6B6C8BC8920E6406` FOREIGN KEY (`mapea_configured_control_id`) REFERENCES `mapea_configured_control` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapea_configured_control_map_sub_category`
--

LOCK TABLES `mapea_configured_control_map_sub_category` WRITE;
/*!40000 ALTER TABLE `mapea_configured_control_map_sub_category` DISABLE KEYS */;
INSERT INTO `mapea_configured_control_map_sub_category` VALUES ('07c4fbf6-6bc0-46d5-afd8-daeaf68b43a3','8f2f7fcf-f544-42c3-baa3-11fdce15dddc'),('07c4fbf6-6bc0-46d5-afd8-daeaf68b43a3','a719d7e2-fa87-4a74-8d82-f7aacbe692b5'),('07c4fbf6-6bc0-46d5-afd8-daeaf68b43a3','d1da790d-271d-4525-ba6d-d3ff4c881b79'),('07c4fbf6-6bc0-46d5-afd8-daeaf68b43a3','ebaddb75-99c6-4fb3-ba9e-c297184a6bca'),('8a7763fd-ee8c-4ccc-8330-b0ed5b9aa560','8f2f7fcf-f544-42c3-baa3-11fdce15dddc'),('8a7763fd-ee8c-4ccc-8330-b0ed5b9aa560','a719d7e2-fa87-4a74-8d82-f7aacbe692b5'),('8a7763fd-ee8c-4ccc-8330-b0ed5b9aa560','d1da790d-271d-4525-ba6d-d3ff4c881b79'),('8a7763fd-ee8c-4ccc-8330-b0ed5b9aa560','ebaddb75-99c6-4fb3-ba9e-c297184a6bca');
/*!40000 ALTER TABLE `mapea_configured_control_map_sub_category` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `mapea_configured_plugin` VALUES ('1ea64127-4170-4804-8617-a0f2f18ffb82','bde768c3-a6c9-4aee-97b4-9e5ab3e787bd','53cf0a19-a3fb-4837-9e68-784b2c18069f','Measurebar_v5.0.0'),('1f6f19e8-2eae-4d2c-8807-5a5e4a119031','356c0c4e-032e-4b1f-a319-e45bc7533a9d','9c1ff3b6-8d67-41fc-9f15-76bfe2be1d29','geosearch_sigc'),('9f9c5fd7-1c94-4a3e-ab85-be71bb8d0ea1','c37ccb1b-a0e1-49f3-83a0-784c15ed4b34','81c43bde-a29f-4c09-beb6-ba2b6e5efdc0','geosearch ise'),('bee69ade-b40b-454d-8dfb-b33c0edf6ae9','0cc53913-4fa4-4032-8278-81d9f7b68419','b400d335-8e57-494a-8fb9-3d8d47884179','Measurebar_v4.3.0');
/*!40000 ALTER TABLE `mapea_configured_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapea_configured_plugin_map_sub_category`
--

DROP TABLE IF EXISTS `mapea_configured_plugin_map_sub_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapea_configured_plugin_map_sub_category` (
  `mapea_configured_plugin_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `map_sub_category_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  PRIMARY KEY (`mapea_configured_plugin_id`,`map_sub_category_id`),
  KEY `IDX_1409FA5A56D55B2F` (`mapea_configured_plugin_id`),
  KEY `IDX_1409FA5A8C5D376B` (`map_sub_category_id`),
  CONSTRAINT `FK_1409FA5A56D55B2F` FOREIGN KEY (`mapea_configured_plugin_id`) REFERENCES `mapea_configured_plugin` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_1409FA5A8C5D376B` FOREIGN KEY (`map_sub_category_id`) REFERENCES `map_sub_category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapea_configured_plugin_map_sub_category`
--

LOCK TABLES `mapea_configured_plugin_map_sub_category` WRITE;
/*!40000 ALTER TABLE `mapea_configured_plugin_map_sub_category` DISABLE KEYS */;
INSERT INTO `mapea_configured_plugin_map_sub_category` VALUES ('1f6f19e8-2eae-4d2c-8807-5a5e4a119031','a719d7e2-fa87-4a74-8d82-f7aacbe692b5');
/*!40000 ALTER TABLE `mapea_configured_plugin_map_sub_category` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `mapea_control` VALUES ('081ff3bd-6a84-475f-851b-faae120721c8','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Panzoombar','Añade una barra de desplazamiento para acercarse/alejarse del mapa.','mapajs.addControls([\'Panzoombar\'])',0),('13c09ca3-a503-40e4-802b-1ebe8db70639','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Panzoombar','Añade una barra de desplazamiento para acercarse/alejarse del mapa.','mapajs.addControls([\'Panzoombar\'])',0),('196baac8-48db-4828-8c18-633e6571643a','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','OverviewMap','añade un mapa de ubicación, donde se representa la capa base a una escala menor.','mapajs.addControls([\'OverviewMap\'])',0),('2ca6747b-35ac-4aa6-9c79-5803fdd59d14','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','OverviewMap','añade un mapa de ubicación, donde se representa la capa base a una escala menor.','mapajs.addControls([\'OverviewMap\'])',0),('3d27c18e-80e7-4f95-8624-f1ec77509253','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Location','Añade un botón de centrado en la posición del usuario. Se le puede indicar si se desea posicionamiento continuo (tracking, por defecto a true) y alta precisión (highAccuracy,  por defecto a false)','mapajs.addControls(new M.control.Location())',1),('3fe3b863-eb87-481a-acaf-d8f7a8b35eff','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','ScaleLine','Añada escala gráfica','mapajs.addControls([\'scaleLine\'])',0),('592b11fc-0c29-49ff-821f-0fe0a4d7d896','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','GetFeatureInfo','Añade la herramienta de consulta de información sobre capas WMS a través de su servicio getFeatureInfo. Por defecto, espera Html como formato de respuesta. Otros formatos soportados son \'gml\' y \'plain\'. Admite también un buffer en pixeles opcional','mapajs.addControls(new M.control.GetFeatureInfo())',1),('953e0227-733e-467f-9add-7c58105aa252','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Scale','Añade escala numérica','mapajs.addControls([\'scale\'])',0),('97b3e243-7d3d-443d-8ea6-5009a15f70e2','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','LayerSwitcher','Incluye un árbol de contenidos (TOC) replegable al mapa. En ese árbol se mostrarán las capas según el nombre público que se les haya dado en su construcción. Para las capas WMS, mostrará además la leyenda que la operación GetLegendGraphic.','mapajs.addControls([\'layerSwitcher\'])',0),('a5400517-ce7e-4037-8131-2cdc51826d15','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Mouse','muestra las coordenadas de la posición donde se encuentre el puntero del ratón.','mapajs.addControls([\'Mouse\'])',0),('bd26de54-f154-4819-882f-fbee9d66daf2','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Location','Añade un botón de centrado en la posición del usuario. Se le puede indicar si se desea posicionamiento continuo (tracking, por defecto a true) y alta precisión (highAccuracy, por defecto a false)','mapajs.addControls(new M.control.Location())',1),('cb5adf6d-cc92-40e6-b81c-8ade19b9be88','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','GetFeatureInfo','Añade la herramienta de consulta de información sobre capas WMS a través de su servicio getFeatureInfo. Por defecto, espera Html como formato de respuesta. Otros formatos soportados son \'gml\' y \'plain\'. Admite también un buffer en pixeles opcional','mapajs.addControls(new M.control.GetFeatureInfo())',1),('ce8fc09a-508b-43e8-baf7-1cbbdb6d39e9','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Mouse','muestra las coordenadas de la posición donde se encuentre el puntero del ratón.','mapajs.addControls([\'Mouse\'])',0),('d5b0759e-ae72-402f-8ab3-7711c537ed7d','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Scale','Añade escala numérica','mapajs.addControls([\'scale\'])',0),('e304bd2c-9043-42dc-a7e1-3641bd19100d','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','ScaleLine','Añada escala gráfica','mapajs.addControls([\'scaleLine\'])',0),('ecaa4b6b-52a2-4248-9399-69d4d2311960','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','LayerSwitcher','Incluye un árbol de contenidos (TOC) replegable al mapa. En ese árbol se mostrarán las capas según el nombre público que se les haya dado en su construcción. Para las capas WMS, mostrará además la leyenda que la operación GetLegendGraphic.','mapajs.addControls([\'layerSwitcher\'])',0);
/*!40000 ALTER TABLE `mapea_control` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `mapea_control_config` VALUES ('19d5e54e-b39e-402b-b08f-65ad8f5c6c5a','2ca6747b-35ac-4aa6-9c79-5803fdd59d14','No parametrizable','default'),('24f92eb0-d492-4f91-8585-fcfdbe77f341','a5400517-ce7e-4037-8131-2cdc51826d15','No parametrizable','default'),('42482a1d-9a84-4afa-bfbd-f3ee9d69a0d4','592b11fc-0c29-49ff-821f-0fe0a4d7d896','GetFeatureInfo en formato HTML y con un buffer de 1000 pixeles','\'html\', {buffer: 1000}'),('4413e904-fee2-4b1e-aa84-34bc7c50fee7','cb5adf6d-cc92-40e6-b81c-8ade19b9be88','GetFeatureInfo en formato HTML y con un buffer de 1000 pixeles','\'html\',  {buffer: 1000}'),('4541ed5f-4b84-42bf-a0da-88e653f24cb7','081ff3bd-6a84-475f-851b-faae120721c8','No parametrizable','default'),('471ae2bf-b647-415a-9a0d-328533f89d95','ecaa4b6b-52a2-4248-9399-69d4d2311960','No parametrizable','default'),('53aef65f-2c9b-48c7-8fa5-6242c6304a3b','e304bd2c-9043-42dc-a7e1-3641bd19100d','No parametrizable','default'),('592cd1bf-0e01-4ade-bc18-e95c3c010e52','bd26de54-f154-4819-882f-fbee9d66daf2','Configuración traking false, highAccuracy false','false,false'),('5d2eb401-5b66-47a3-8ac6-ce043da6db18','cb5adf6d-cc92-40e6-b81c-8ade19b9be88','GetFeatureInfo en formato GML y con un buffer de 1000 metros','\'gml\',  {buffer: 1000}'),('66c571a6-03aa-4b4a-be09-1f40c0da0391','ce8fc09a-508b-43e8-baf7-1cbbdb6d39e9','No parametrizable','default'),('7a7102b6-2865-4225-9e72-b4705362d27a','3d27c18e-80e7-4f95-8624-f1ec77509253','Configuración traking false, highAccuracy false','false,false'),('8d569a5e-afbd-4a32-a308-fdf4a80ae9e2','97b3e243-7d3d-443d-8ea6-5009a15f70e2','No parametrizable','default'),('8ea99068-a02c-451c-aef3-2af9c6160448','d5b0759e-ae72-402f-8ab3-7711c537ed7d','No parametrizable','default'),('98b35269-2844-436f-bc73-d2334c2cac92','953e0227-733e-467f-9add-7c58105aa252','No parametrizable','default'),('d8010080-a442-4aa6-ab73-48441e749557','bd26de54-f154-4819-882f-fbee9d66daf2','Configuración traking true highAccuracy true','true,true'),('d9fdb5f4-3b7c-4000-bd8f-f1cfed122f98','196baac8-48db-4828-8c18-633e6571643a','No parametrizable','default'),('e5a22890-93f5-4f0c-aa29-30e963df0fd8','3d27c18e-80e7-4f95-8624-f1ec77509253','Configuración traking true highAccuracy false','true,false'),('e9cb4d60-34de-4db1-a422-ec196d2d74db','13c09ca3-a503-40e4-802b-1ebe8db70639','No parametrizable','default'),('f2a78194-fa9b-465b-9912-0e95737522e6','bd26de54-f154-4819-882f-fbee9d66daf2','Configuración traking true highAccuracy false','true,false'),('f9535d69-67d6-46ed-94f1-a82b0a68f49e','3fe3b863-eb87-481a-acaf-d8f7a8b35eff','No parametrizable','default');
/*!40000 ALTER TABLE `mapea_control_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapea_core`
--

DROP TABLE IF EXISTS `mapea_core`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapea_core` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configuration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `javascript` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `style` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapea_core`
--

LOCK TABLES `mapea_core` WRITE;
/*!40000 ALTER TABLE `mapea_core` DISABLE KEYS */;
INSERT INTO `mapea_core` VALUES ('ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','v4.3.0','http://localhost:8080/mapea/js/configuration-4.3.0.js','http://localhost:8080/mapea/js/mapea-4.3.0.ol.min.js','http://localhost:8080/mapea/assets/css/mapea-4.3.0.ol.min.css','Versión de mapea  4.3.0'),('f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','v5.1.0','http://localhost:8080/mapea/js/configuration-5.1.0.js','http://localhost:8080/mapea/js/mapea-5.1.0.ol.min.js','http://localhost:8080/mapea/assets/css/mapea-5.1.0.ol.min.css','Versión de mapea 5.1.0');
/*!40000 ALTER TABLE `mapea_core` ENABLE KEYS */;
UNLOCK TABLES;

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
  `layer_style` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `image_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:uuid)',
  PRIMARY KEY (`id`),
  KEY `IDX_743397903DA5256D` (`image_id`),
  CONSTRAINT `FK_743397903DA5256D` FOREIGN KEY (`image_id`) REFERENCES `mapea_layer_wmslegend_image` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapea_layer_wms`
--

LOCK TABLES `mapea_layer_wms` WRITE;
/*!40000 ALTER TABLE `mapea_layer_wms` DISABLE KEYS */;
INSERT INTO `mapea_layer_wms` VALUES ('09b2a2f7-7662-43a9-805a-5134739dcc0f','http://www.ideandalucia.es/wms/ortofoto2016?','ortofotografia_2016_infrarrojo','Ortofotografía Infrarroja de Andalucía (Año 2016)','Ortofotografía Infrarroja de Andalucía (Año 2016)','default','d2b99d4b-33b5-4a48-864d-d98196dad627'),('09d589d9-8bb7-4356-8453-bd53b6c25eee','http://www.ideandalucia.es/wms/mta10r_2001-2013?','mta10_raster_2013','Mapa Topográfico de Andalucía año 2013 (color poligonos transparentes)','Mapa Topográfico de Andalucía año 2013 (color poligonos transparentes)','default',NULL),('09def0eb-ed46-4807-b3d6-5372ecf2bd45','https://www.ideandalucia.es/wms/mdt_2016?','sombreado_orografico_2016,modelo_digital_terreno_2016_color','Modelo Digital del Terreno','Modelo Digital del Terreno','default','af139c90-8b82-4421-a93c-24d48f218ea7'),('0a7080d7-a99f-45a8-b99c-41569f343af1','https://www.ideandalucia.es/wms/siose_2013?','sombreado_siose_2013','Siose + MDT 2013','Siose + MDT 2013','default','a84b1964-c38f-4bbe-abe0-d9ba488614b4'),('336783b0-dafd-41e3-98dd-210f829aab8e','http://www.ideandalucia.es/services/DERA_g9_transport_com/wms?','g09_14_RedCarreteras','Red de Carreteras','Red de Carreteras de Andalucía','default',NULL),('41543635-a724-4f10-ae6f-25fa5bb5fbd6','http://www.ideandalucia.es/services/DERA_g4_medio_fisico/wms?','g04_11_UnidadLitologica','Unidades Litológicas','g04_11_UnidadLitologica','default',NULL),('56e888a5-87aa-4720-a7db-9cac944d3c70','http://www.ideandalucia.es/wms/ortofoto2016?','ortofotografia_2016_rgb','Ortofotografía Color de Andalucía (Año 2016)','Ortofotografía Color de Andalucía (Año 2016)','default','b2ca6e75-8243-4258-83b7-89041eb10fda'),('6ff52fa4-c4b9-4a36-bc0b-60674490d2a7','http://www.ideandalucia.es/wms/mta10r_2001-2013?','mta10_raster_2013','Mapa Topográfico de Andalucía año 2013 (Monocromo Negro)','Ráster 2013. Monocromo negro','default',NULL),('83c222f9-cc67-4c88-97a5-b251cbd315d6','http://www.ideandalucia.es/wms/ortofoto2016?','ortofotografia_2016_pancromatico','Ortofotografía Pancromática de Andalucía (Año 2016)','Ortofotografía Pancromática de Andalucía (Año 2016)','default','1f3a5ac8-582c-445c-8d54-4dfda5c3369b'),('9b752998-991a-4810-981b-7b85b823c7f6','https://www.ideandalucia.es/services/andalucia/wms?','00_Mapa_Andalucia','Mapa Base de Andalucia','Mapa Base de Andalucía  Multiescala','default','58a2f805-af42-483b-a5b1-dcb40452a024'),('b16660ca-1bb6-4bef-8ad5-de5f814bb53f','http://www.ideandalucia.es/services/DERA_g7_sistema_urbano/wms?','g07_04_Manzana','Sistema Urbano','Sistema Urbano (Manzanas)','default',NULL),('d077af03-e6b6-49a5-81ae-4e1da2cea4ae','http://www.ideandalucia.es/wms/mta10r_2001-2013?','mta10_raster_2013','Mapa Topográfico de Andalucía año 2013 (color)','Mapa Topográfico de Andalucía año 2013 (color)','default',NULL),('e11ce3ea-393a-432a-a7b8-2c874c4b4332','http://www.ideandalucia.es/wms/mta10r_2001-2013?','mta10_raster_2013','Mapa Topográfico de Andalucía año 2013 (Monocromo Gris)','Mapa Topográfico de Andalucía año 2013 (Monocromo Gris)','default',NULL);
/*!40000 ALTER TABLE `mapea_layer_wms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapea_layer_wmslegend_image`
--

DROP TABLE IF EXISTS `mapea_layer_wmslegend_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapea_layer_wmslegend_image` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `original_file_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_file_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated` datetime NOT NULL,
  `url_path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `local_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapea_layer_wmslegend_image`
--

LOCK TABLES `mapea_layer_wmslegend_image` WRITE;
/*!40000 ALTER TABLE `mapea_layer_wmslegend_image` DISABLE KEYS */;
INSERT INTO `mapea_layer_wmslegend_image` VALUES ('1f3a5ac8-582c-445c-8d54-4dfda5c3369b','ortofoto2016_pancromatico.png','f8597076-dc21-4cf3-8d16-2a16d46bff57.png','Ortofoto Digital de Andalucía Pancromático','Ortofoto Digital de Andalucía Pancromático','2019-12-01 16:30:53','f8597076-dc21-4cf3-8d16-2a16d46bff57.png','/home/epardo/proyecto/mapeaManager/public/uploads/legends/f8597076-dc21-4cf3-8d16-2a16d46bff57.png'),('58a2f805-af42-483b-a5b1-dcb40452a024','Mapa_Base_Andalucia.png','fc81b93a-4314-4dc1-912f-5fdd3829d8fc.png','Leyenda mapa Base','Leyenda mapa Base','2019-12-01 17:35:58','fc81b93a-4314-4dc1-912f-5fdd3829d8fc.png','/home/epardo/proyecto/mapeaManager/public/uploads/legends/fc81b93a-4314-4dc1-912f-5fdd3829d8fc.png'),('a84b1964-c38f-4bbe-abe0-d9ba488614b4','siose_2013.png','32cf123b-0dae-4d37-a7dd-a8dd05133af1.png','Sombreado Siose','Sombreado Siose','2019-12-03 06:29:55','32cf123b-0dae-4d37-a7dd-a8dd05133af1.png','/home/epardo/proyecto/mapeaManager/public/uploads/legends/32cf123b-0dae-4d37-a7dd-a8dd05133af1.png'),('af139c90-8b82-4421-a93c-24d48f218ea7','mdt_2016_tintas_hipsometricas.png','ebf59718-f05c-4bab-ab5a-9c4706c88d74.png','Modelo Digital del Terreno 2016 (tintas Hipsométricas)','Modelo Digital del Terreno 2016 (tintas Hipsométricas)','2019-12-03 06:32:21','ebf59718-f05c-4bab-ab5a-9c4706c88d74.png','/home/epardo/proyecto/mapeaManager/public/uploads/legends/ebf59718-f05c-4bab-ab5a-9c4706c88d74.png'),('b2ca6e75-8243-4258-83b7-89041eb10fda','ortofoto2016_color.png','8668fe82-f384-44a1-9548-af41d9fe8dad.png','Ortofoto Digital de Andalucía Color','Ortofoto Digital de Andalucía Color','2019-12-01 16:30:23','8668fe82-f384-44a1-9548-af41d9fe8dad.png','/home/epardo/proyecto/mapeaManager/public/uploads/legends/8668fe82-f384-44a1-9548-af41d9fe8dad.png'),('d2b99d4b-33b5-4a48-864d-d98196dad627','ortofoto2016_infrarrojo.png','58dd460d-7983-446b-b22d-17f4ea3fe59f.png','Ortofoto Digital de Andalucía Infrarrojo','Ortofoto Digital de Andalucía Infrarrojo','2019-12-01 16:42:23','58dd460d-7983-446b-b22d-17f4ea3fe59f.png','/home/epardo/proyecto/mapeaManager/public/uploads/legends/58dd460d-7983-446b-b22d-17f4ea3fe59f.png');
/*!40000 ALTER TABLE `mapea_layer_wmslegend_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapea_layer_wmsmap_configured`
--

DROP TABLE IF EXISTS `mapea_layer_wmsmap_configured`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapea_layer_wmsmap_configured` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `mapea_layer_wms_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `base_layer` tinyint(1) NOT NULL,
  `opacity` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9E43A74A1A82007F` (`mapea_layer_wms_id`),
  CONSTRAINT `FK_9E43A74A1A82007F` FOREIGN KEY (`mapea_layer_wms_id`) REFERENCES `mapea_layer_wms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapea_layer_wmsmap_configured`
--

LOCK TABLES `mapea_layer_wmsmap_configured` WRITE;
/*!40000 ALTER TABLE `mapea_layer_wmsmap_configured` DISABLE KEYS */;
INSERT INTO `mapea_layer_wmsmap_configured` VALUES ('1c366987-5ac6-4fb5-9da4-237c7c7319ef','b16660ca-1bb6-4bef-8ad5-de5f814bb53f',0,0.6),('51ec7cf2-0922-418d-8f9e-cd5f427eb07d','d077af03-e6b6-49a5-81ae-4e1da2cea4ae',0,NULL),('6158ae83-3749-4219-b33f-4b5c23c91671','41543635-a724-4f10-ae6f-25fa5bb5fbd6',1,NULL),('651eb2c9-8bba-48ab-940f-6c586b6dce4c','56e888a5-87aa-4720-a7db-9cac944d3c70',1,NULL),('6c85f2ae-5b41-453b-9028-bd0492110855','09d589d9-8bb7-4356-8453-bd53b6c25eee',1,NULL),('6d52e51d-795e-407a-80ec-e0d7c472a139','336783b0-dafd-41e3-98dd-210f829aab8e',0,NULL),('a491f79f-869b-44f0-aa3e-4e5153aa346b','09b2a2f7-7662-43a9-805a-5134739dcc0f',1,NULL),('be85f4ea-f792-4181-b232-92430b8281f9','6ff52fa4-c4b9-4a36-bc0b-60674490d2a7',1,NULL);
/*!40000 ALTER TABLE `mapea_layer_wmsmap_configured` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `mapea_map` VALUES ('26ca41cf-e053-4b8a-b921-fbb8a921caff','3d9e1792-5dc8-42c5-bc37-8b5285f49248','5ccf77a6-0455-4207-87ed-6404ff291251','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','1f3df6b5-559e-486d-b744-3bf7b06cbdb4',NULL,NULL,NULL,'EPSG:25830*m',NULL,NULL,NULL,'prueba','prueba'),('3f4c3623-7da0-4c5c-ba7e-f892c578e207','d4307506-b0aa-4aa6-bfaf-0258863c4184','d1da790d-271d-4525-ba6d-d3ff4c881b79','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','1f3df6b5-559e-486d-b744-3bf7b06cbdb4',NULL,NULL,NULL,'EPSG:25830*m',NULL,NULL,NULL,'ortofoto 2016 (Color)','ortofoto 2016 (Color)'),('40442cb0-3f8b-473a-9926-35ce49ce367d','3d9e1792-5dc8-42c5-bc37-8b5285f49248','ebaddb75-99c6-4fb3-ba9e-c297184a6bca','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','1f3df6b5-559e-486d-b744-3bf7b06cbdb4',NULL,NULL,NULL,'EPSG:25830*m',NULL,NULL,NULL,'cdau hibrido','cdau hibrido'),('8ff65dce-8d0c-4874-a5bb-b74c287b81b0','3d9e1792-5dc8-42c5-bc37-8b5285f49248','5ccf77a6-0455-4207-87ed-6404ff291251','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','1f3df6b5-559e-486d-b744-3bf7b06cbdb4',NULL,NULL,NULL,'EPSG:25830*m',NULL,NULL,NULL,'Unidades Litológicas','Unidades Litológicas'),('c8d988d9-e76a-4255-b75f-a52d23d08a7a','3d9e1792-5dc8-42c5-bc37-8b5285f49248','ebaddb75-99c6-4fb3-ba9e-c297184a6bca','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','1f3df6b5-559e-486d-b744-3bf7b06cbdb4',NULL,NULL,NULL,'EPSG:25830*m',NULL,NULL,NULL,'mta10r_2013','llamando a capa con estilos diferentes');
/*!40000 ALTER TABLE `mapea_map` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `mapea_map_mapea_configured_control` VALUES ('26ca41cf-e053-4b8a-b921-fbb8a921caff','79e36499-689f-49a7-a133-b7d85654fcd1'),('3f4c3623-7da0-4c5c-ba7e-f892c578e207','2dec496a-bc24-47b5-bca7-e2c5f5a7418d'),('3f4c3623-7da0-4c5c-ba7e-f892c578e207','4bf35c69-2149-48f9-8c65-1d497fcbf5d7'),('3f4c3623-7da0-4c5c-ba7e-f892c578e207','5e1a7219-cab5-4b5a-bdf2-2f5ddbe35ba8'),('3f4c3623-7da0-4c5c-ba7e-f892c578e207','79e36499-689f-49a7-a133-b7d85654fcd1'),('3f4c3623-7da0-4c5c-ba7e-f892c578e207','8a7763fd-ee8c-4ccc-8330-b0ed5b9aa560'),('3f4c3623-7da0-4c5c-ba7e-f892c578e207','c116c449-9892-4a1f-a278-46da4aabe6fa'),('3f4c3623-7da0-4c5c-ba7e-f892c578e207','f702a762-8cbb-423f-b29f-003a344a52c2'),('8ff65dce-8d0c-4874-a5bb-b74c287b81b0','07c4fbf6-6bc0-46d5-afd8-daeaf68b43a3'),('8ff65dce-8d0c-4874-a5bb-b74c287b81b0','1fd0f2e1-1dc9-4d27-84ce-523b11f5d6ed'),('c8d988d9-e76a-4255-b75f-a52d23d08a7a','2dec496a-bc24-47b5-bca7-e2c5f5a7418d'),('c8d988d9-e76a-4255-b75f-a52d23d08a7a','79e36499-689f-49a7-a133-b7d85654fcd1');
/*!40000 ALTER TABLE `mapea_map_mapea_configured_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapea_map_mapea_configured_plugin`
--

DROP TABLE IF EXISTS `mapea_map_mapea_configured_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapea_map_mapea_configured_plugin` (
  `mapea_map_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `mapea_configured_plugin_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  PRIMARY KEY (`mapea_map_id`,`mapea_configured_plugin_id`),
  KEY `IDX_145F94C5971464BE` (`mapea_map_id`),
  KEY `IDX_145F94C556D55B2F` (`mapea_configured_plugin_id`),
  CONSTRAINT `FK_145F94C556D55B2F` FOREIGN KEY (`mapea_configured_plugin_id`) REFERENCES `mapea_configured_plugin` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_145F94C5971464BE` FOREIGN KEY (`mapea_map_id`) REFERENCES `mapea_map` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapea_map_mapea_configured_plugin`
--

LOCK TABLES `mapea_map_mapea_configured_plugin` WRITE;
/*!40000 ALTER TABLE `mapea_map_mapea_configured_plugin` DISABLE KEYS */;
INSERT INTO `mapea_map_mapea_configured_plugin` VALUES ('26ca41cf-e053-4b8a-b921-fbb8a921caff','9f9c5fd7-1c94-4a3e-ab85-be71bb8d0ea1');
/*!40000 ALTER TABLE `mapea_map_mapea_configured_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapea_map_mapea_layer_wmsmap_configured`
--

DROP TABLE IF EXISTS `mapea_map_mapea_layer_wmsmap_configured`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapea_map_mapea_layer_wmsmap_configured` (
  `mapea_map_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `mapea_layer_wmsmap_configured_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  PRIMARY KEY (`mapea_map_id`,`mapea_layer_wmsmap_configured_id`),
  KEY `IDX_7C7BA971971464BE` (`mapea_map_id`),
  KEY `IDX_7C7BA97115DFF7BC` (`mapea_layer_wmsmap_configured_id`),
  CONSTRAINT `FK_7C7BA97115DFF7BC` FOREIGN KEY (`mapea_layer_wmsmap_configured_id`) REFERENCES `mapea_layer_wmsmap_configured` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_7C7BA971971464BE` FOREIGN KEY (`mapea_map_id`) REFERENCES `mapea_map` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapea_map_mapea_layer_wmsmap_configured`
--

LOCK TABLES `mapea_map_mapea_layer_wmsmap_configured` WRITE;
/*!40000 ALTER TABLE `mapea_map_mapea_layer_wmsmap_configured` DISABLE KEYS */;
INSERT INTO `mapea_map_mapea_layer_wmsmap_configured` VALUES ('26ca41cf-e053-4b8a-b921-fbb8a921caff','1c366987-5ac6-4fb5-9da4-237c7c7319ef'),('26ca41cf-e053-4b8a-b921-fbb8a921caff','651eb2c9-8bba-48ab-940f-6c586b6dce4c'),('26ca41cf-e053-4b8a-b921-fbb8a921caff','6d52e51d-795e-407a-80ec-e0d7c472a139'),('3f4c3623-7da0-4c5c-ba7e-f892c578e207','1c366987-5ac6-4fb5-9da4-237c7c7319ef'),('3f4c3623-7da0-4c5c-ba7e-f892c578e207','651eb2c9-8bba-48ab-940f-6c586b6dce4c'),('3f4c3623-7da0-4c5c-ba7e-f892c578e207','6d52e51d-795e-407a-80ec-e0d7c472a139'),('8ff65dce-8d0c-4874-a5bb-b74c287b81b0','6158ae83-3749-4219-b33f-4b5c23c91671'),('c8d988d9-e76a-4255-b75f-a52d23d08a7a','51ec7cf2-0922-418d-8f9e-cd5f427eb07d');
/*!40000 ALTER TABLE `mapea_map_mapea_layer_wmsmap_configured` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapea_map_mapea_wmc`
--

DROP TABLE IF EXISTS `mapea_map_mapea_wmc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapea_map_mapea_wmc` (
  `mapea_map_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `mapea_wmc_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  PRIMARY KEY (`mapea_map_id`,`mapea_wmc_id`),
  KEY `IDX_88345EE971464BE` (`mapea_map_id`),
  KEY `IDX_88345EEB2055033` (`mapea_wmc_id`),
  CONSTRAINT `FK_88345EE971464BE` FOREIGN KEY (`mapea_map_id`) REFERENCES `mapea_map` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_88345EEB2055033` FOREIGN KEY (`mapea_wmc_id`) REFERENCES `mapea_wmc` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapea_map_mapea_wmc`
--

LOCK TABLES `mapea_map_mapea_wmc` WRITE;
/*!40000 ALTER TABLE `mapea_map_mapea_wmc` DISABLE KEYS */;
INSERT INTO `mapea_map_mapea_wmc` VALUES ('40442cb0-3f8b-473a-9926-35ce49ce367d','bb92db3f-9b6e-4e99-b443-9c4b2b060470'),('c8d988d9-e76a-4255-b75f-a52d23d08a7a','3453f0d7-4e2b-47f0-8fca-25ec54770641');
/*!40000 ALTER TABLE `mapea_map_mapea_wmc` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `mapea_plugin` VALUES ('0cc53913-4fa4-4032-8278-81d9f7b68419','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Measurebar','http://localhost:8080/mapea/plugins/measurebar/measurebar.ol.min.js','http://localhost:8080/mapea/plugins/measurebar/measurebar.min.css','Herramienta de medición de áreas y distancias','mapajs.addPlugin(new M.plugin.Measurebar())',0),('356c0c4e-032e-4b1f-a319-e45bc7533a9d','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Geosearch','http://localhost:8080/mapea/plugins/geosearch/geosearch.ol.min.js','http://localhost:8080/mapea/plugins/geosearch/geosearch.min.css','Buscador de elementos espaciales a través de un servicio de Geobúsquedas','mapajs.addPlugin(new M.plugin.Geosearch())',1),('435b45e4-07e7-4d9f-a1f9-8016e53d8ecb','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Searchstreet','http://localhost:8080/mapea/plugins/searchstreet/searchstreet.ol.min.js','http://localhost:8080/mapea/plugins/searchstreet/searchstreet.min.css','Buscador de vías y portales','mapajs.addPlugin(new M.plugin.Searchstreet())',1),('4b03075b-74c7-46fe-9642-75406eb49b5c','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Geosearchbylocation','http://localhost:8080/mapea/plugins/geosearchbylocation/geosearchbylocation.ol.min.js','http://localhost:8080/mapea/plugins/geosearchbylocation/geosearchbylocation.min.css','Buscador de elementos espaciales a través de un servicio de Geobúsquedas basado en la ubicación del usuario','mapajs.addPlugin(new M.plugin.Geosearchbylocation())',1),('4c9c82c9-8c29-4a28-bdfb-529cd8eecdf0','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','WFST Controls','http://localhost:8080/mapea/plugins/wfstcontrols/wfstcontrols-2.0.0.ol.min.js','http://localhost:8080/mapea/plugins/wfstcontrols/wfstcontrols-2.0.0.min.css','Herramientas de edición WFST','mapajs.addPlugin(new M.plugin.WFSTControls())',1),('90bf7aea-ab32-4ed9-a74c-b927084fa217','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Geosearchbylocation','http://localhost:8080/mapea/plugins/geosearchbylocation/geosearchbylocation-2.0.0.ol.min.js','http://localhost:8080/mapea/plugins/geosearchbylocation/geosearchbylocation-2.0.0.min.css','Buscador de elementos espaciales a través de un servicio de Geobúsquedas basado en la ubicación del usuario','mapajs.addPlugin(new M.plugin.Geosearchbylocation())',1),('a0860378-fa3b-45fa-aa6c-7f454ee9c9e3','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Printer','http://localhost:8080/mapea/plugins/printer/printer.ol.min.js','http://localhost:8080/mapea/plugins/printer/printer.min.css','Impresión en alta resolución del mapa','mapajs.addPlugin(new M.plugin.Printer())',1),('adeabdc0-bcf9-4efa-a677-3bb01d17a6ad','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','AttributeTable','http://localhost:8080/mapea/plugins/attributetable/attributetable-2.0.0.ol.min.js','http://localhost:8080/mapea/plugins/attributetable/attributetable-2.0.0.min.css','Muestra los elementos de las capas vectoriales en una tabla','mapajs.addPlugin(new M.plugin.AttributeTable())',1),('b025be24-08b3-439f-b27a-453c8c618147','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','WFST Controls','http://localhost:8080/mapea/plugins/wfstcontrols/wfstcontrols.ol.min.js','http://localhost:8080/mapea/plugins/wfstcontrols/wfstcontrols.min.css','Controles para editar servicios WFS-T','mapajs.addPlugin(new M.plugin.WFSTControls())',1),('bde768c3-a6c9-4aee-97b4-9e5ab3e787bd','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Measurebar','http://localhost:8080/mapea/plugins/measurebar/measurebar-2.0.0.ol.min.js','http://localhost:8080/mapea/plugins/measurebar/measurebar-2.0.0.min.css','Herramienta de medición de áreas y distancias','mapajs.addPlugin(new M.plugin.Measurebar())',0),('c37ccb1b-a0e1-49f3-83a0-784c15ed4b34','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Geosearch','http://localhost:8080/mapea/plugins/geosearch/geosearch-2.0.0.ol.min.js','http://localhost:8080/mapea/plugins/geosearch/geosearch-2.0.0.min.css','Buscador de elementos espaciales a través de un servicio de Geobúsquedas','mapajs.addPlugin(new M.plugin.Geosearch())',1),('c49672fe-b4e9-4a69-82ca-118015c02b88','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Searchstreet','http://localhost:8080/mapea/plugins/searchstreet/searchstreet-2.0.0.ol.min.js','http://localhost:8080/mapea/plugins/searchstreet/searchstreet-2.0.0.min.css','Buscador de vías y portales','mapajs.addPlugin(new M.plugin.Searchstreet())',1),('e1f82231-e8a2-4c00-83a9-32bde54e7777','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Printer','http://localhost:8080/mapea/plugins/printer/printer-2.0.0.ol.min.js','http://localhost:8080/mapea/plugins/printer/printer-2.0.0.min.css','Impresión en alta resolución del mapa','mapajs.addPlugin(new M.plugin.Printer())',1),('e76a3c59-f3d7-4ede-b5c5-6c4f420c5f08','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','AttributeTable','http://localhost:8080/mapea/plugins/attributetable/attributetable.ol.min.js','http://localhost:8080/mapea/plugins/attributetable/attributetable.min.css','Muestra los elementos de las capas vectoriales en una tabla','mapajs.addPlugin(new M.plugin.AttributeTable())',1);
/*!40000 ALTER TABLE `mapea_plugin` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `mapea_plugin_config` VALUES ('0b64d885-ea71-4a20-bfe6-3ba8450bb7dd','4b03075b-74c7-46fe-9642-75406eb49b5c','Búsquedas SIGC , 5000 metros','{ \"distance\":\"5000\", \"core\": \"sigc\", \"url\": \"http://geobusquedas-sigc.juntadeandalucia.es/\", \"handler\": \"/search\"}'),('2269d310-4b0b-468d-811c-ea7160fe4694','356c0c4e-032e-4b1f-a319-e45bc7533a9d','Geosearch core de Fuentes y Manantiales','{\"core\": \"fuentesymanantiales\", \"url\": \"http://geobusquedas-sigc.juntadeandalucia.es/geobusquedas\", \"handler\": \"/search\"}'),('53cf0a19-a3fb-4837-9e68-784b2c18069f','bde768c3-a6c9-4aee-97b4-9e5ab3e787bd','No parametrizable','default'),('77c5ccb6-5c7d-41e0-9d98-5a1e710154a1','b025be24-08b3-439f-b27a-453c8c618147','Configuración Completa WFST','[\"drawfeature\",\"modifyfeature\",\"deletefeature\",\"editattribute\"],\'nombreCapaWFS\''),('81c43bde-a29f-4c09-beb6-ba2b6e5efdc0','c37ccb1b-a0e1-49f3-83a0-784c15ed4b34','geosearch ISE','{\"core\": \"sedes\", \"url\": \"http://geobusquedas-sigc.juntadeandalucia.es/geobusquedas\", \"handler\": \"/search\"}'),('8f0359f7-dad8-4da1-9e01-0a1e0ebe6acd','a0860378-fa3b-45fa-aa6c-7f454ee9c9e3','Configuración de Impresión básica','{\r\n  \"params\": {\r\n    \"pages\": {\r\n      \"creditos\": \"Impresión generada a través de Mapea\"\r\n    },\r\n    \"layout\": {\r\n      \"outputFilename\": \"mapea_${yyyy-MM-dd_hhmmss}\"\r\n    },\r\n  },\r\n  \'options\': {\r\n      \'layout\': \'imagen apaisada\',\r\n      \'format\': \'png\',\r\n      \'dpi\': \'127\'\r\n    }\r\n}'),('914701f9-d7d4-4c48-8e38-f966a063ba13','4b03075b-74c7-46fe-9642-75406eb49b5c','Búsquedas ISE , 5000 metros','{\"distance\":\"5000\", \"core\": \"sedes\", \"url\": \"http://geobusquedas-sigc.juntadeandalucia.es/geobusquedas\", \"handler\": \"/search\"}'),('957b459c-e0f6-43a5-a953-16a907729e2f','4b03075b-74c7-46fe-9642-75406eb49b5c','Búsquedas Fuentes y manantiales, 5000 metros','{ \"distance\":\"5000\", \"core\":\"fuentesymanantiales\", \"url\":\"http://geobusquedas-sigc.juntadeandalucia.es/geobusquedas\", \"handler\":\"search\"}'),('9c1ff3b6-8d67-41fc-9f15-76bfe2be1d29','356c0c4e-032e-4b1f-a319-e45bc7533a9d','Geosearch core SIGC','{ \"core\": \"sigc\",  \"url\": \"http://geobusquedas-sigc.juntadeandalucia.es/\",  \"handler\": \"/search\"}'),('b400d335-8e57-494a-8fb9-3d8d47884179','0cc53913-4fa4-4032-8278-81d9f7b68419','No parametrizable','default'),('bdd079b5-6538-4434-8355-5e03e4f29838','e76a3c59-f3d7-4ede-b5c5-6c4f420c5f08','Número de elementos por pagina 8','{ \"pages\": \"8\"}'),('be816bfa-298d-4929-92ea-07d86bd7632f','356c0c4e-032e-4b1f-a319-e45bc7533a9d','Geosearch core ISE','{\"core\": \"sedes\", \"url\": \"http://geobusquedas-sigc.juntadeandalucia.es/geobusquedas\", \"handler\": \"/search\"}'),('e711b378-da4b-4f4d-ac62-a531da595848','435b45e4-07e7-4d9f-a1f9-8016e53d8ecb','Buscador de Calles Sevilla Capital','{ \"locality\": \"41091\"}');
/*!40000 ALTER TABLE `mapea_plugin_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapea_wmc`
--

DROP TABLE IF EXISTS `mapea_wmc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapea_wmc` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `original_file_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_file_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated` datetime NOT NULL,
  `url_path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `local_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapea_wmc`
--

LOCK TABLES `mapea_wmc` WRITE;
/*!40000 ALTER TABLE `mapea_wmc` DISABLE KEYS */;
INSERT INTO `mapea_wmc` VALUES ('127b00f3-a3e2-4815-8b90-1f793452bd49','mapa_base.xml','60b4a9d2-b018-47a1-9672-d97a4502af29.xml','Mapa Base IDEAndalucia','Mapa Base de la Infraestructura de Datos Espaciales de Andalucía','2019-07-16 12:13:44','1cbbd24e-caa0-4f02-8d91-1a22422975a7.xml','/home/epardo/proyecto/mapeaManager/public/uploads/wmc/1cbbd24e-caa0-4f02-8d91-1a22422975a7.xml'),('3453f0d7-4e2b-47f0-8fca-25ec54770641','CDAU_Satelite.xml','b43530fe-aecb-48cf-b5ab-995ac0c72d77.xml','CDAU Satélite','Callejero Digital de Andalucía. CDAU Satélite','2019-12-01 11:29:54','b43530fe-aecb-48cf-b5ab-995ac0c72d77.xml','/home/epardo/proyecto/mapeaManager/public/uploads/wmc/b43530fe-aecb-48cf-b5ab-995ac0c72d77.xml'),('87aa7b14-6076-47c2-ad4d-f4f31b511d6f','CDAU_Base.xml','f89c06a3-ca4e-43d6-be32-bae98337bdf5.xml','CDAU Base','Callejero Digital de Andalucía. Cartografía base','2019-12-01 11:29:11','f89c06a3-ca4e-43d6-be32-bae98337bdf5.xml','/home/epardo/proyecto/mapeaManager/public/uploads/wmc/f89c06a3-ca4e-43d6-be32-bae98337bdf5.xml'),('bb92db3f-9b6e-4e99-b443-9c4b2b060470','CDAU_Hibrido.xml','a34fe770-b0eb-4163-ab27-0ef78febe2de.xml','CDAU Híbrido','Callejero Digital de Andalucía. CDAU Híbrido','2019-12-01 11:30:24','a34fe770-b0eb-4163-ab27-0ef78febe2de.xml','/home/epardo/proyecto/mapeaManager/public/uploads/wmc/a34fe770-b0eb-4163-ab27-0ef78febe2de.xml');
/*!40000 ALTER TABLE `mapea_wmc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration_versions`
--

LOCK TABLES `migration_versions` WRITE;
/*!40000 ALTER TABLE `migration_versions` DISABLE KEYS */;
INSERT INTO `migration_versions` VALUES ('20191118095712','2019-11-18 10:05:24'),('20191118102258','2019-11-18 10:23:20'),('20191129181555','2019-11-29 18:16:11'),('20191129184433','2019-11-29 18:44:46'),('20191203170230','2019-12-03 17:03:02');
/*!40000 ALTER TABLE `migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_map_sub_category`
--

DROP TABLE IF EXISTS `user_map_sub_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_map_sub_category` (
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `map_sub_category_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  PRIMARY KEY (`user_id`,`map_sub_category_id`),
  KEY `IDX_59C338ABA76ED395` (`user_id`),
  KEY `IDX_59C338AB8C5D376B` (`map_sub_category_id`),
  CONSTRAINT `FK_59C338AB8C5D376B` FOREIGN KEY (`map_sub_category_id`) REFERENCES `map_sub_category` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_59C338ABA76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_map_sub_category`
--

LOCK TABLES `user_map_sub_category` WRITE;
/*!40000 ALTER TABLE `user_map_sub_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_map_sub_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-03 18:25:44
