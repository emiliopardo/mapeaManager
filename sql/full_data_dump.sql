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
-- Dumping data for table `fos_group`
--

LOCK TABLES `fos_group` WRITE;
/*!40000 ALTER TABLE `fos_group` DISABLE KEYS */;
INSERT INTO `fos_group` VALUES ('352d1401-3511-46d9-a018-0de1f56eaddc','Super Administrador','a:1:{i:0;s:16:\"ROLE_SUPER_ADMIN\";}'),('696957bd-9ab3-4fd5-a753-572ba19ca938','Usuario','a:1:{i:0;s:9:\"ROLE_USER\";}'),('8537713f-92fe-4e23-8e18-ec182b1edddc','Editor','a:1:{i:0;s:11:\"ROLE_EDITOR\";}'),('8e0dbf7a-6fda-4902-8f9e-f18592a2b5e7','Publicador','a:1:{i:0;s:15:\"ROLE_PUBLICADOR\";}'),('9f18f7f5-7157-4cbd-ab36-ce1350b83f50','Administrador','a:1:{i:0;s:18:\"ROLE_ADMINISTRADOR\";}');
/*!40000 ALTER TABLE `fos_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `fos_user`
--

LOCK TABLES `fos_user` WRITE;
/*!40000 ALTER TABLE `fos_user` DISABLE KEYS */;
INSERT INTO `fos_user` VALUES ('03d9a9ff-aed8-4160-8fb0-d05a5ff05f22','publicador','publicador','publicador@publicador.es','publicador@publicador.es',1,NULL,'$2y$10$kfoY2TA9xFpkph6VqlU8MOEuTb10sMJKdOLDt7PTrUj9bsJKDp/jq','2019-11-19 10:51:17',NULL,NULL,'a:0:{}'),('3d9e1792-5dc8-42c5-bc37-8b5285f49248','superadmin','superadmin','superadmin@superadmin.es','superadmin@superadmin.es',1,NULL,'$2y$10$CiSjBeARMcathVs0xCSXW.bV/4C/TrWw5feuguVuu2Tp2muLSyRuS','2019-11-29 12:12:46',NULL,NULL,'a:0:{}'),('7f823767-22f3-4f31-a74d-f8d69021a11d','admin','admin','admin@admin.es','admin@admin.es',1,NULL,'$2y$10$njggTcqozdKxhQMpYwWz7eN0IIYzvSE.5OkvQ9IYIndBFQSUfmAdm','2019-11-19 10:51:39',NULL,NULL,'a:0:{}'),('a40b7eac-b55e-489a-9ac3-3a3329b55600','user','user','user@user.es','user@user.es',1,NULL,'$2y$10$N5VDq3vCGGhwvzPPDOqIAuSwalA.Pwp66/nLwn.9JsRX5JTY3Nube','2019-11-19 10:50:20',NULL,NULL,'a:0:{}'),('d4307506-b0aa-4aa6-bfaf-0258863c4184','editor','editor','editor@editor.es','editor@editor.es',1,NULL,'$2y$10$eOo8QtCg/yby2rZz4wdH6eeHpR8dK3QGAOj51u4.Cl0mzsF3VYmsK','2019-11-19 10:50:33',NULL,NULL,'a:0:{}');
/*!40000 ALTER TABLE `fos_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `fos_user_user_group`
--

LOCK TABLES `fos_user_user_group` WRITE;
/*!40000 ALTER TABLE `fos_user_user_group` DISABLE KEYS */;
INSERT INTO `fos_user_user_group` VALUES ('03d9a9ff-aed8-4160-8fb0-d05a5ff05f22','8e0dbf7a-6fda-4902-8f9e-f18592a2b5e7'),('3d9e1792-5dc8-42c5-bc37-8b5285f49248','352d1401-3511-46d9-a018-0de1f56eaddc'),('7f823767-22f3-4f31-a74d-f8d69021a11d','9f18f7f5-7157-4cbd-ab36-ce1350b83f50'),('a40b7eac-b55e-489a-9ac3-3a3329b55600','696957bd-9ab3-4fd5-a753-572ba19ca938'),('d4307506-b0aa-4aa6-bfaf-0258863c4184','8537713f-92fe-4e23-8e18-ec182b1edddc');
/*!40000 ALTER TABLE `fos_user_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `map_category`
--

LOCK TABLES `map_category` WRITE;
/*!40000 ALTER TABLE `map_category` DISABLE KEYS */;
INSERT INTO `map_category` VALUES ('1f3df6b5-559e-486d-b744-3bf7b06cbdb4','Cartografía','Productos y servicios cartográfico'),('7711e8fd-ffd0-458c-b941-77534a19cde7','Georreferenciación','Principales conjuntos de datos geocodificados');
/*!40000 ALTER TABLE `map_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `map_sub_category`
--

LOCK TABLES `map_sub_category` WRITE;
/*!40000 ALTER TABLE `map_sub_category` DISABLE KEYS */;
INSERT INTO `map_sub_category` VALUES ('5ccf77a6-0455-4207-87ed-6404ff291251','1f3df6b5-559e-486d-b744-3bf7b06cbdb4','Datos Espaciales de Referencia','Grupo de ejemplo'),('8f2f7fcf-f544-42c3-baa3-11fdce15dddc','7711e8fd-ffd0-458c-b941-77534a19cde7','Clasificación del Grado de Urbanización','La Clasificación del Grado de Urbanización es una clasificación que busca caracterizar la intensidad del asentamiento en celdas de la malla estadística de 1 km2 donde reside población. A partir de la densidad de población, se definen distintas categorías de áreas basándose en criterios de contigüidad geográfica, densidad y umbrales de población según la metodología descrita por EUROSTAT para la asignación de las tipologías territoriales en malla estadística: Centros urbanos, Agrupaciones urbanas y Celdas de malla rurales.'),('a719d7e2-fa87-4a74-8d82-f7aacbe692b5','7711e8fd-ffd0-458c-b941-77534a19cde7','Distribución Espacial de la Población en Andalucía','La información que se representa en estos mapas proviene del Base de Datos Longitudinal de Población de Andalucía (BDLPA) a fecha de 1 de enero del año de referencia y ha sido georreferenciada partiendo de la localización de la dirección postal donde reside cada uno de los habitantes de Andalucía. Para facilitar la representación de la información y para preservar el secreto estadístico se ha trazado una malla regular con celdas de 250 m de lado, donde ha quedado agregada toda la información que corresponde en cada caso. La información que no se ha podido georreferenciar ha sido estimada utilizando técnicas de análisis espacial. Se ofrece información sobre Población (población total, por sexo, nacionalidad o grupos de edad), Afiliación a la Seguridad Social (afiliación total, por sexo o relación laboral), Pensiones contributivas de la Seguridad Social (perceptores de pensiones contributivas, por sexo, por tipo, así como ingresos por pensiones de jubilación, viudedad, jubilación y viudedad, incapacidad u otro tipo de pensiones) y Demandantes de empleo del Servicio Andaluz de Empleo (demandantes de empleo total, por sexo).'),('d1da790d-271d-4525-ba6d-d3ff4c881b79','1f3df6b5-559e-486d-b744-3bf7b06cbdb4','Ortofotografías Digitales de Andalucía','Las Ortofotografías Digitales de Andalucía son productos cartográficos resultantes del tratamiento digital de fotografías aéreas. El producto está constituido por una serie de recubrimientos completos de la Comunidad Autónoma, para un período de tiempo que abarca desde el año 1956 hasta 2016.'),('ebaddb75-99c6-4fb3-ba9e-c297184a6bca','1f3df6b5-559e-486d-b744-3bf7b06cbdb4','Base Cartográfica de Andalucía 1:10.000 - BCA10','La Base Cartográfica de Andalucía 1:10.000 (BCA10) está constituida por los conjuntos de datos espaciales de carácter topográfico, restituidos mediante técnicas fotogramétricas a partir de vuelos PNOA y que componen los elementos estructurantes del territorio: relieve, infraestructuras de comunicación, red hidrográfica, construcciones, poblamiento, parcelario, aparente toponimia, etc. Se concibe como un producto para ser explotado mediante herramientas SIG o de tratamiento cartográfico, ya sea para su conversión en mapas o como datos a ser integrados en un proceso de análisis espacial.');
/*!40000 ALTER TABLE `map_sub_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mapea_configured_control`
--

LOCK TABLES `mapea_configured_control` WRITE;
/*!40000 ALTER TABLE `mapea_configured_control` DISABLE KEYS */;
INSERT INTO `mapea_configured_control` VALUES ('07c4fbf6-6bc0-46d5-afd8-daeaf68b43a3','13c09ca3-a503-40e4-802b-1ebe8db70639','e9cb4d60-34de-4db1-a422-ec196d2d74db','Panzoombar_v4.3.0'),('12a997a1-7e2d-43bc-a3a1-300ed905b2aa','3fe3b863-eb87-481a-acaf-d8f7a8b35eff','f9535d69-67d6-46ed-94f1-a82b0a68f49e','ScaleLine_v4.3.0'),('1fd0f2e1-1dc9-4d27-84ce-523b11f5d6ed','ecaa4b6b-52a2-4248-9399-69d4d2311960','471ae2bf-b647-415a-9a0d-328533f89d95','LayerSwitcher_v4.3.0'),('288fc0d4-199b-42b3-989d-3e80dc3aa837','a5400517-ce7e-4037-8131-2cdc51826d15','24f92eb0-d492-4f91-8585-fcfdbe77f341','Mouse_v4.3.0'),('2dec496a-bc24-47b5-bca7-e2c5f5a7418d','2ca6747b-35ac-4aa6-9c79-5803fdd59d14','19d5e54e-b39e-402b-b08f-65ad8f5c6c5a','OverviewMap_v5.0.0'),('3e04f5d5-bc2e-487d-80d7-d6081a1d661e','d5b0759e-ae72-402f-8ab3-7711c537ed7d','8ea99068-a02c-451c-aef3-2af9c6160448','Scale_v4.3.0'),('4bf35c69-2149-48f9-8c65-1d497fcbf5d7','97b3e243-7d3d-443d-8ea6-5009a15f70e2','8d569a5e-afbd-4a32-a308-fdf4a80ae9e2','LayerSwitcher_v5.0.0'),('5e1a7219-cab5-4b5a-bdf2-2f5ddbe35ba8','ce8fc09a-508b-43e8-baf7-1cbbdb6d39e9','66c571a6-03aa-4b4a-be09-1f40c0da0391','Mouse_v5.0.0'),('79e36499-689f-49a7-a133-b7d85654fcd1','081ff3bd-6a84-475f-851b-faae120721c8','4541ed5f-4b84-42bf-a0da-88e653f24cb7','Panzoombar_v5.0.0'),('8a7763fd-ee8c-4ccc-8330-b0ed5b9aa560','cb5adf6d-cc92-40e6-b81c-8ade19b9be88','4413e904-fee2-4b1e-aa84-34bc7c50fee7','getfeatureInfo_html'),('8be79e9f-7ea5-44be-bf78-1a0d44c69f5c','196baac8-48db-4828-8c18-633e6571643a','d9fdb5f4-3b7c-4000-bd8f-f1cfed122f98','OverviewMap_v4.3.0'),('b2cd6a96-eb7e-4da8-9a4f-7bf67acd7c8d','cb5adf6d-cc92-40e6-b81c-8ade19b9be88','5d2eb401-5b66-47a3-8ac6-ce043da6db18','getfeatureInfo_gml'),('c116c449-9892-4a1f-a278-46da4aabe6fa','953e0227-733e-467f-9add-7c58105aa252','98b35269-2844-436f-bc73-d2334c2cac92','Scale_v5.0.0'),('f702a762-8cbb-423f-b29f-003a344a52c2','e304bd2c-9043-42dc-a7e1-3641bd19100d','53aef65f-2c9b-48c7-8fa5-6242c6304a3b','ScaleLine_v5.0.0');
/*!40000 ALTER TABLE `mapea_configured_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mapea_configured_control_map_sub_category`
--

LOCK TABLES `mapea_configured_control_map_sub_category` WRITE;
/*!40000 ALTER TABLE `mapea_configured_control_map_sub_category` DISABLE KEYS */;
INSERT INTO `mapea_configured_control_map_sub_category` VALUES ('07c4fbf6-6bc0-46d5-afd8-daeaf68b43a3','8f2f7fcf-f544-42c3-baa3-11fdce15dddc'),('07c4fbf6-6bc0-46d5-afd8-daeaf68b43a3','a719d7e2-fa87-4a74-8d82-f7aacbe692b5'),('07c4fbf6-6bc0-46d5-afd8-daeaf68b43a3','d1da790d-271d-4525-ba6d-d3ff4c881b79'),('07c4fbf6-6bc0-46d5-afd8-daeaf68b43a3','ebaddb75-99c6-4fb3-ba9e-c297184a6bca'),('8a7763fd-ee8c-4ccc-8330-b0ed5b9aa560','8f2f7fcf-f544-42c3-baa3-11fdce15dddc'),('8a7763fd-ee8c-4ccc-8330-b0ed5b9aa560','a719d7e2-fa87-4a74-8d82-f7aacbe692b5'),('8a7763fd-ee8c-4ccc-8330-b0ed5b9aa560','d1da790d-271d-4525-ba6d-d3ff4c881b79'),('8a7763fd-ee8c-4ccc-8330-b0ed5b9aa560','ebaddb75-99c6-4fb3-ba9e-c297184a6bca');
/*!40000 ALTER TABLE `mapea_configured_control_map_sub_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mapea_configured_plugin`
--

LOCK TABLES `mapea_configured_plugin` WRITE;
/*!40000 ALTER TABLE `mapea_configured_plugin` DISABLE KEYS */;
INSERT INTO `mapea_configured_plugin` VALUES ('1ea64127-4170-4804-8617-a0f2f18ffb82','bde768c3-a6c9-4aee-97b4-9e5ab3e787bd','53cf0a19-a3fb-4837-9e68-784b2c18069f','Measurebar_v5.0.0'),('1f6f19e8-2eae-4d2c-8807-5a5e4a119031','356c0c4e-032e-4b1f-a319-e45bc7533a9d','9c1ff3b6-8d67-41fc-9f15-76bfe2be1d29','geosearch_sigc'),('bee69ade-b40b-454d-8dfb-b33c0edf6ae9','0cc53913-4fa4-4032-8278-81d9f7b68419','b400d335-8e57-494a-8fb9-3d8d47884179','Measurebar_v4.3.0');
/*!40000 ALTER TABLE `mapea_configured_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mapea_configured_plugin_map_sub_category`
--

LOCK TABLES `mapea_configured_plugin_map_sub_category` WRITE;
/*!40000 ALTER TABLE `mapea_configured_plugin_map_sub_category` DISABLE KEYS */;
INSERT INTO `mapea_configured_plugin_map_sub_category` VALUES ('1f6f19e8-2eae-4d2c-8807-5a5e4a119031','a719d7e2-fa87-4a74-8d82-f7aacbe692b5');
/*!40000 ALTER TABLE `mapea_configured_plugin_map_sub_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mapea_control`
--

LOCK TABLES `mapea_control` WRITE;
/*!40000 ALTER TABLE `mapea_control` DISABLE KEYS */;
INSERT INTO `mapea_control` VALUES ('081ff3bd-6a84-475f-851b-faae120721c8','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Panzoombar','Añade una barra de desplazamiento para acercarse/alejarse del mapa.','mapajs.addControls(new M.control.Panzoombar())',0),('13c09ca3-a503-40e4-802b-1ebe8db70639','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Panzoombar','Añade una barra de desplazamiento para acercarse/alejarse del mapa.','mapajs.addControls(new M.control.Panzoombar())',0),('196baac8-48db-4828-8c18-633e6571643a','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','OverviewMap','añade un mapa de ubicación, donde se representa la capa base a una escala menor.','mapajs.addControls(new M.control.OverviewMap())',0),('2ca6747b-35ac-4aa6-9c79-5803fdd59d14','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','OverviewMap','añade un mapa de ubicación, donde se representa la capa base a una escala menor.','mapajs.addControls(new M.control.OverviewMap())',0),('3d27c18e-80e7-4f95-8624-f1ec77509253','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Location','Añade un botón de centrado en la posición del usuario. Se le puede indicar si se desea posicionamiento continuo (tracking, por defecto a true) y alta precisión (highAccuracy,  por defecto a false)','mapajs.addControls(new M.control.location())',1),('3fe3b863-eb87-481a-acaf-d8f7a8b35eff','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','ScaleLine','Añada escala gráfica','mapajs.addControls(new M.control.ScaleLine())',0),('592b11fc-0c29-49ff-821f-0fe0a4d7d896','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','GetFeatureInfo','Añade la herramienta de consulta de información sobre capas WMS a través de su servicio getFeatureInfo. Por defecto, espera Html como formato de respuesta. Otros formatos soportados son \'gml\' y \'plain\'. Admite también un buffer en pixeles opcional','mapajs.addControls(new M.control.GetFeatureInfo())',1),('953e0227-733e-467f-9add-7c58105aa252','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Scale','Añade escala numérica','mapajs.addControls(new M.control.Scale())',0),('97b3e243-7d3d-443d-8ea6-5009a15f70e2','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','LayerSwitcher','Incluye un árbol de contenidos (TOC) replegable al mapa. En ese árbol se mostrarán las capas según el nombre público que se les haya dado en su construcción. Para las capas WMS, mostrará además la leyenda que la operación GetLegendGraphic.','mapajs.addControls(new M.control.LayerSwitcher())',0),('a5400517-ce7e-4037-8131-2cdc51826d15','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Mouse','muestra las coordenadas de la posición donde se encuentre el puntero del ratón.','mapajs.addControls(new M.control.Mouse())',0),('bd26de54-f154-4819-882f-fbee9d66daf2','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Location','Añade un botón de centrado en la posición del usuario. Se le puede indicar si se desea posicionamiento continuo (tracking, por defecto a true) y alta precisión (highAccuracy, por defecto a false)','mapajs.addControls(new M.control.location())',1),('cb5adf6d-cc92-40e6-b81c-8ade19b9be88','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','GetFeatureInfo','Añade la herramienta de consulta de información sobre capas WMS a través de su servicio getFeatureInfo. Por defecto, espera Html como formato de respuesta. Otros formatos soportados son \'gml\' y \'plain\'. Admite también un buffer en pixeles opcional','mapajs.addControls(new M.control.GetFeatureInfo())',1),('ce8fc09a-508b-43e8-baf7-1cbbdb6d39e9','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Mouse','muestra las coordenadas de la posición donde se encuentre el puntero del ratón.','mapajs.addControls(new M.control.Mouse())',0),('d5b0759e-ae72-402f-8ab3-7711c537ed7d','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Scale','Añade escala numérica','mapajs.addControls(new M.control.Scale())',0),('e304bd2c-9043-42dc-a7e1-3641bd19100d','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','ScaleLine','Añada escala gráfica','mapajs.addControls(new M.control.ScaleLine())',0),('ecaa4b6b-52a2-4248-9399-69d4d2311960','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','LayerSwitcher','Incluye un árbol de contenidos (TOC) replegable al mapa. En ese árbol se mostrarán las capas según el nombre público que se les haya dado en su construcción. Para las capas WMS, mostrará además la leyenda que la operación GetLegendGraphic.','mapajs.addControls(new M.control.LayerSwitcher())',0);
/*!40000 ALTER TABLE `mapea_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mapea_control_config`
--

LOCK TABLES `mapea_control_config` WRITE;
/*!40000 ALTER TABLE `mapea_control_config` DISABLE KEYS */;
INSERT INTO `mapea_control_config` VALUES ('19d5e54e-b39e-402b-b08f-65ad8f5c6c5a','2ca6747b-35ac-4aa6-9c79-5803fdd59d14','No parametrizable','default'),('24f92eb0-d492-4f91-8585-fcfdbe77f341','a5400517-ce7e-4037-8131-2cdc51826d15','No parametrizable','default'),('42482a1d-9a84-4afa-bfbd-f3ee9d69a0d4','592b11fc-0c29-49ff-821f-0fe0a4d7d896','GetFeatureInfo en formato HTML y con un buffer de 1000 pixeles','\'html\', {buffer: 1000}'),('4413e904-fee2-4b1e-aa84-34bc7c50fee7','cb5adf6d-cc92-40e6-b81c-8ade19b9be88','GetFeatureInfo en formato HTML y con un buffer de 1000 pixeles','\'html\',  {buffer: 1000}'),('4541ed5f-4b84-42bf-a0da-88e653f24cb7','081ff3bd-6a84-475f-851b-faae120721c8','No parametrizable','default'),('471ae2bf-b647-415a-9a0d-328533f89d95','ecaa4b6b-52a2-4248-9399-69d4d2311960','No parametrizable','default'),('53aef65f-2c9b-48c7-8fa5-6242c6304a3b','e304bd2c-9043-42dc-a7e1-3641bd19100d','No parametrizable','default'),('592cd1bf-0e01-4ade-bc18-e95c3c010e52','bd26de54-f154-4819-882f-fbee9d66daf2','Configuración traking false, highAccuracy false','false,false'),('5d2eb401-5b66-47a3-8ac6-ce043da6db18','cb5adf6d-cc92-40e6-b81c-8ade19b9be88','GetFeatureInfo en formato GML y con un buffer de 1000 metros','\'gml\',  {buffer: 1000}'),('66c571a6-03aa-4b4a-be09-1f40c0da0391','ce8fc09a-508b-43e8-baf7-1cbbdb6d39e9','No parametrizable','default'),('7a7102b6-2865-4225-9e72-b4705362d27a','3d27c18e-80e7-4f95-8624-f1ec77509253','Configuración traking false, highAccuracy false','false,false'),('8d569a5e-afbd-4a32-a308-fdf4a80ae9e2','97b3e243-7d3d-443d-8ea6-5009a15f70e2','No parametrizable','default'),('8ea99068-a02c-451c-aef3-2af9c6160448','d5b0759e-ae72-402f-8ab3-7711c537ed7d','No parametrizable','default'),('98b35269-2844-436f-bc73-d2334c2cac92','953e0227-733e-467f-9add-7c58105aa252','No parametrizable','default'),('a4d4b526-4066-47d5-9c4b-c0ef7e9d41ac','592b11fc-0c29-49ff-821f-0fe0a4d7d896','GetFeatureInfo en formato GML y con un buffer de 1000 metros','\'gml\', {buffer: 1000}'),('d2d9df18-6c1c-4fa1-85e6-79fa85aab99b','3d27c18e-80e7-4f95-8624-f1ec77509253','Configuración traking true highAccuracy true','true,true'),('d8010080-a442-4aa6-ab73-48441e749557','bd26de54-f154-4819-882f-fbee9d66daf2','Configuración traking true highAccuracy true','true,true'),('d9fdb5f4-3b7c-4000-bd8f-f1cfed122f98','196baac8-48db-4828-8c18-633e6571643a','No parametrizable','default'),('e5a22890-93f5-4f0c-aa29-30e963df0fd8','3d27c18e-80e7-4f95-8624-f1ec77509253','Configuración traking true highAccuracy false','true,false'),('e9cb4d60-34de-4db1-a422-ec196d2d74db','13c09ca3-a503-40e4-802b-1ebe8db70639','No parametrizable','default'),('f2a78194-fa9b-465b-9912-0e95737522e6','bd26de54-f154-4819-882f-fbee9d66daf2','Configuración traking true highAccuracy false','true,false'),('f9535d69-67d6-46ed-94f1-a82b0a68f49e','3fe3b863-eb87-481a-acaf-d8f7a8b35eff','No parametrizable','default');
/*!40000 ALTER TABLE `mapea_control_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mapea_core`
--

LOCK TABLES `mapea_core` WRITE;
/*!40000 ALTER TABLE `mapea_core` DISABLE KEYS */;
INSERT INTO `mapea_core` VALUES ('ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','v4.3.0','http://localhost:8080/mapea/js/configuration-4.3.0.js','http://localhost:8080/mapea/js/mapea-4.3.0.ol.min.js','http://localhost:8080/mapea/assets/css/mapea-4.3.0.ol.min.css','Versión de mapea  4.3.0'),('f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','v5.0.0','http://localhost:8080/mapea/js/configuration-5.0.0.js','http://localhost:8080/mapea/js/mapea-5.0.0.ol.min.js','http://localhost:8080/mapea/assets/css/mapea-5.0.0.ol.min.css','Versión de mapea 5.0.0');
/*!40000 ALTER TABLE `mapea_core` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mapea_layer_wms`
--

LOCK TABLES `mapea_layer_wms` WRITE;
/*!40000 ALTER TABLE `mapea_layer_wms` DISABLE KEYS */;
INSERT INTO `mapea_layer_wms` VALUES ('09b2a2f7-7662-43a9-805a-5134739dcc0f','http://www.ideandalucia.es/wms/ortofoto2016?','ortofotografia_2016_infrarrojo','Ortofotografía Infrarroja de Andalucía (Año 2016)','Ortofotografía Infrarroja de Andalucía (Año 2016)',NULL,NULL),('09d589d9-8bb7-4356-8453-bd53b6c25eee','http://www.ideandalucia.es/wms/mta10r_2001-2013?','mta10_raster_2013','Mapa Topográfico de Andalucía año 2013 (color poligonos transparentes)','Mapa Topográfico de Andalucía año 2013 (color poligonos transparentes)','Ráster 2013. Color polígonos transparentes',NULL),('336783b0-dafd-41e3-98dd-210f829aab8e','http://www.ideandalucia.es/services/DERA_g9_transport_com/wms?','g09_14_RedCarreteras','Red de Carreteras','Red de Carreteras de Andalucía',NULL,NULL),('56e888a5-87aa-4720-a7db-9cac944d3c70','http://www.ideandalucia.es/wms/ortofoto2016?','ortofotografia_2016_rgb','Ortofotografía Color de Andalucía (Año 2016)','Ortofotografía Color de Andalucía (Año 2016)',NULL,NULL),('6ff52fa4-c4b9-4a36-bc0b-60674490d2a7','http://www.ideandalucia.es/wms/mta10r_2001-2013?','mta10_raster_2013','Mapa Topográfico de Andalucía año 2013 (Monocromo Negro)','Ráster 2013. Monocromo negro','Ráster 2013. Monocromo negro',NULL),('83c222f9-cc67-4c88-97a5-b251cbd315d6','http://www.ideandalucia.es/wms/ortofoto2016?','ortofotografia_2016_pancromatico','Ortofotografía Pancromática de Andalucía (Año 2016)','Ortofotografía Pancromática de Andalucía (Año 2016)',NULL,NULL),('b16660ca-1bb6-4bef-8ad5-de5f814bb53f','http://www.ideandalucia.es/services/DERA_g7_sistema_urbano/wms?','g07_04_Manzana','Sistema Urbano','Sistema Urbano (Manzanas)',NULL,NULL),('d077af03-e6b6-49a5-81ae-4e1da2cea4ae','http://www.ideandalucia.es/wms/mta10r_2001-2013?','mta10_raster_2013','Mapa Topográfico de Andalucía año 2013 (color)','Mapa Topográfico de Andalucía año 2013 (color)','Ráster 2013. Color polígonos sólidos',NULL),('e11ce3ea-393a-432a-a7b8-2c874c4b4332','http://www.ideandalucia.es/wms/mta10r_2001-2013?','mta10_raster_2013','Mapa Topográfico de Andalucía año 2013 (Monocromo Gris)','Mapa Topográfico de Andalucía año 2013 (Monocromo Gris)','Ráster 2013. Monocromo gris',NULL);
/*!40000 ALTER TABLE `mapea_layer_wms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mapea_map`
--

LOCK TABLES `mapea_map` WRITE;
/*!40000 ALTER TABLE `mapea_map` DISABLE KEYS */;
INSERT INTO `mapea_map` VALUES ('8fb277ca-e25d-4296-8d42-4b0f965715b9','7f823767-22f3-4f31-a74d-f8d69021a11d','5ccf77a6-0455-4207-87ed-6404ff291251','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','1f3df6b5-559e-486d-b744-3bf7b06cbdb4',0,NULL,NULL,'EPSG:25830*m',NULL,NULL,NULL,'Red de comunicaciones','En este mapa se muestra la Ortofotografía digital de Andalucía con el sistema urbano y la red de carreteras'),('f7a0a77e-3762-4e42-9c80-2ca1ad886218','3d9e1792-5dc8-42c5-bc37-8b5285f49248','ebaddb75-99c6-4fb3-ba9e-c297184a6bca','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','1f3df6b5-559e-486d-b744-3bf7b06cbdb4',0,NULL,NULL,'EPSG:25830*m',NULL,NULL,NULL,'mapawmc','Mapa con WMC');
/*!40000 ALTER TABLE `mapea_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mapea_map_mapea_configured_control`
--

LOCK TABLES `mapea_map_mapea_configured_control` WRITE;
/*!40000 ALTER TABLE `mapea_map_mapea_configured_control` DISABLE KEYS */;
INSERT INTO `mapea_map_mapea_configured_control` VALUES ('8fb277ca-e25d-4296-8d42-4b0f965715b9','07c4fbf6-6bc0-46d5-afd8-daeaf68b43a3'),('8fb277ca-e25d-4296-8d42-4b0f965715b9','12a997a1-7e2d-43bc-a3a1-300ed905b2aa'),('8fb277ca-e25d-4296-8d42-4b0f965715b9','1fd0f2e1-1dc9-4d27-84ce-523b11f5d6ed'),('8fb277ca-e25d-4296-8d42-4b0f965715b9','288fc0d4-199b-42b3-989d-3e80dc3aa837'),('f7a0a77e-3762-4e42-9c80-2ca1ad886218','4bf35c69-2149-48f9-8c65-1d497fcbf5d7'),('f7a0a77e-3762-4e42-9c80-2ca1ad886218','5e1a7219-cab5-4b5a-bdf2-2f5ddbe35ba8'),('f7a0a77e-3762-4e42-9c80-2ca1ad886218','79e36499-689f-49a7-a133-b7d85654fcd1'),('f7a0a77e-3762-4e42-9c80-2ca1ad886218','f702a762-8cbb-423f-b29f-003a344a52c2');
/*!40000 ALTER TABLE `mapea_map_mapea_configured_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mapea_map_mapea_configured_plugin`
--

LOCK TABLES `mapea_map_mapea_configured_plugin` WRITE;
/*!40000 ALTER TABLE `mapea_map_mapea_configured_plugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `mapea_map_mapea_configured_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mapea_map_mapea_layer_wms`
--

LOCK TABLES `mapea_map_mapea_layer_wms` WRITE;
/*!40000 ALTER TABLE `mapea_map_mapea_layer_wms` DISABLE KEYS */;
INSERT INTO `mapea_map_mapea_layer_wms` VALUES ('8fb277ca-e25d-4296-8d42-4b0f965715b9','336783b0-dafd-41e3-98dd-210f829aab8e'),('8fb277ca-e25d-4296-8d42-4b0f965715b9','83c222f9-cc67-4c88-97a5-b251cbd315d6'),('8fb277ca-e25d-4296-8d42-4b0f965715b9','b16660ca-1bb6-4bef-8ad5-de5f814bb53f');
/*!40000 ALTER TABLE `mapea_map_mapea_layer_wms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mapea_map_mapea_wmc`
--

LOCK TABLES `mapea_map_mapea_wmc` WRITE;
/*!40000 ALTER TABLE `mapea_map_mapea_wmc` DISABLE KEYS */;
INSERT INTO `mapea_map_mapea_wmc` VALUES ('f7a0a77e-3762-4e42-9c80-2ca1ad886218','127b00f3-a3e2-4815-8b90-1f793452bd49');
/*!40000 ALTER TABLE `mapea_map_mapea_wmc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mapea_plugin`
--

LOCK TABLES `mapea_plugin` WRITE;
/*!40000 ALTER TABLE `mapea_plugin` DISABLE KEYS */;
INSERT INTO `mapea_plugin` VALUES ('0cc53913-4fa4-4032-8278-81d9f7b68419','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Measurebar','http://localhost:8080/mapea/plugins/measurebar/measurebar.ol.min.js','http://localhost:8080/mapea/plugins/measurebar/measurebar.min.css','Herramienta de medición de áreas y distancias','mapajs.addPlugin(new M.plugin.Measurebar())',0),('356c0c4e-032e-4b1f-a319-e45bc7533a9d','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Geosearch','http://localhost:8080/mapea/plugins/geosearch/geosearch.ol.min.js','http://localhost:8080/mapea/plugins/geosearch/geosearch.min.css','Buscador de elementos espaciales a través de un servicio de Geobúsquedas','mapajs.addPlugin(new M.plugin.Geosearch())',1),('435b45e4-07e7-4d9f-a1f9-8016e53d8ecb','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Searchstreet','http://localhost:8080/mapea/plugins/searchstreet/searchstreet.ol.min.js','http://localhost:8080/mapea/plugins/searchstreet/searchstreet.min.css','Buscador de vías y portales','mapajs.addPlugin(new M.plugin.Searchstreet())',1),('4b03075b-74c7-46fe-9642-75406eb49b5c','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Geosearchbylocation','http://localhost:8080/mapea/plugins/geosearchbylocation/geosearchbylocation.ol.min.js','http://localhost:8080/mapea/plugins/geosearchbylocation/geosearchbylocation.min.css','Buscador de elementos espaciales a través de un servicio de Geobúsquedas basado en la ubicación del usuario','mapajs.addPlugin(new M.plugin.Geosearchbylocation())',1),('4c9c82c9-8c29-4a28-bdfb-529cd8eecdf0','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','WFST Controls','http://localhost:8080/mapea/plugins/wfstcontrols/wfstcontrols.ol.min.js','http://localhost:8080/mapea/plugins/wfstcontrols/wfstcontrols.min.css','Herramientas de edición WFST','mapajs.addPlugin(new M.plugin.WFSTControls())',1),('90bf7aea-ab32-4ed9-a74c-b927084fa217','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Geosearchbylocation','http://localhost:8080/mapea/plugins/geosearchbylocation/geosearchbylocation.ol.min.js','http://localhost:8080/mapea/plugins/geosearchbylocation/geosearchbylocation.min.css','Buscador de elementos espaciales a través de un servicio de Geobúsquedas basado en la ubicación del usuario','mapajs.addPlugin(new M.plugin.Geosearchbylocation())',1),('a0860378-fa3b-45fa-aa6c-7f454ee9c9e3','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','Printer','http://localhost:8080/mapea/plugins/printer/printer.ol.min.js','http://localhost:8080/mapea/plugins/printer/printer.min.css','Impresión en alta resolución del mapa','mapajs.addPlugin(new M.plugin.Printer())',1),('adeabdc0-bcf9-4efa-a677-3bb01d17a6ad','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','AttributeTable','http://localhost:8080/mapea/plugins/attributetable/attributetable.ol.min.js','http://localhost:8080/mapea/plugins/attributetable/attributetable.min.css','Muestra los elementos de las capas vectoriales en una tabla','mapajs.addPlugin(new M.plugin.AttributeTable())',1),('b025be24-08b3-439f-b27a-453c8c618147','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','WFST Controls','http://localhost:8080/mapea/plugins/wfstcontrols/wfstcontrols.ol.min.js','http://localhost:8080/mapea/plugins/wfstcontrols/wfstcontrols.min.css','Controles para editar servicios WFS-T','mapajs.addPlugin(new M.plugin.WFSTControls())',1),('bde768c3-a6c9-4aee-97b4-9e5ab3e787bd','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Measurebar','http://localhost:8080/mapea/plugins/measurebar/measurebar.ol.min.js','http://localhost:8080/mapea/plugins/measurebar/measurebar.min.css','Herramienta de medición de áreas y distancias','mapajs.addPlugin(new M.plugin.Measurebar())',0),('c37ccb1b-a0e1-49f3-83a0-784c15ed4b34','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Geosearch','http://localhost:8080/mapea/plugins/geosearch/geosearch.ol.min.js','http://localhost:8080/mapea/plugins/geosearch/geosearch.min.css','Buscador de elementos espaciales a través de un servicio de Geobúsquedas','mapajs.addPlugin(new M.plugin.Geosearch())',1),('c49672fe-b4e9-4a69-82ca-118015c02b88','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Searchstreet','http://localhost:8080/mapea/plugins/searchstreet/searchstreet.ol.min.js','http://localhost:8080/mapea/plugins/searchstreet/searchstreet.min.css','Buscador de vías y portales','mapajs.addPlugin(new M.plugin.Searchstreet())',1),('e1f82231-e8a2-4c00-83a9-32bde54e7777','f7ef8e74-7bcf-4f92-a5ab-4e7efcc5d97a','Printer','http://localhost:8080/mapea/plugins/printer/printer.ol.min.js','http://localhost:8080/mapea/plugins/printer/printer.min.css','Impresión en alta resolución del mapa','mapajs.addPlugin(new M.plugin.Printer())',1),('e76a3c59-f3d7-4ede-b5c5-6c4f420c5f08','ee952a77-9a9e-45b2-ae06-f5d7a03f5ad9','AttributeTable','http://localhost:8080/mapea/plugins/attributetable/attributetable.ol.min.js','http://localhost:8080/mapea/plugins/attributetable/attributetable.min.css','Muestra los elementos de las capas vectoriales en una tabla','mapajs.addPlugin(new M.plugin.AttributeTable())',1);
/*!40000 ALTER TABLE `mapea_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mapea_plugin_config`
--

LOCK TABLES `mapea_plugin_config` WRITE;
/*!40000 ALTER TABLE `mapea_plugin_config` DISABLE KEYS */;
INSERT INTO `mapea_plugin_config` VALUES ('0b64d885-ea71-4a20-bfe6-3ba8450bb7dd','4b03075b-74c7-46fe-9642-75406eb49b5c','Búsquedas SIGC , 5000 metros','{ \"distance\":\"5000\", \"core\": \"sigc\", \"url\": \"http://geobusquedas-sigc.juntadeandalucia.es/\", \"handler\": \"/search\"}'),('2269d310-4b0b-468d-811c-ea7160fe4694','356c0c4e-032e-4b1f-a319-e45bc7533a9d','Geosearch core de Fuentes y Manantiales','{\"core\": \"fuentesymanantiales\", \"url\": \"http://geobusquedas-sigc.juntadeandalucia.es/geobusquedas\", \"handler\": \"/search\"}'),('53cf0a19-a3fb-4837-9e68-784b2c18069f','bde768c3-a6c9-4aee-97b4-9e5ab3e787bd','No parametrizable','default'),('77c5ccb6-5c7d-41e0-9d98-5a1e710154a1','b025be24-08b3-439f-b27a-453c8c618147','Configuración Completa WFST','[\"drawfeature\",\"modifyfeature\",\"deletefeature\",\"editattribute\"],\'nombreCapaWFS\''),('8f0359f7-dad8-4da1-9e01-0a1e0ebe6acd','a0860378-fa3b-45fa-aa6c-7f454ee9c9e3','Configuración de Impresión básica','{\r\n  \"params\": {\r\n    \"pages\": {\r\n      \"creditos\": \"Impresión generada a través de Mapea\"\r\n    },\r\n    \"layout\": {\r\n      \"outputFilename\": \"mapea_${yyyy-MM-dd_hhmmss}\"\r\n    },\r\n  },\r\n  \'options\': {\r\n      \'layout\': \'imagen apaisada\',\r\n      \'format\': \'png\',\r\n      \'dpi\': \'127\'\r\n    }\r\n}'),('914701f9-d7d4-4c48-8e38-f966a063ba13','4b03075b-74c7-46fe-9642-75406eb49b5c','Búsquedas ISE , 5000 metros','{\"distance\":\"5000\", \"core\": \"sedes\", \"url\": \"http://geobusquedas-sigc.juntadeandalucia.es/geobusquedas\", \"handler\": \"/search\"}'),('957b459c-e0f6-43a5-a953-16a907729e2f','4b03075b-74c7-46fe-9642-75406eb49b5c','Búsquedas Fuentes y manantiales, 5000 metros','{ \"distance\":\"5000\", \"core\":\"fuentesymanantiales\", \"url\":\"http://geobusquedas-sigc.juntadeandalucia.es/geobusquedas\", \"handler\":\"search\"}'),('9c1ff3b6-8d67-41fc-9f15-76bfe2be1d29','356c0c4e-032e-4b1f-a319-e45bc7533a9d','Geosearch core SIGC','{ \"core\": \"sigc\",  \"url\": \"http://geobusquedas-sigc.juntadeandalucia.es/\",  \"handler\": \"/search\"}'),('b400d335-8e57-494a-8fb9-3d8d47884179','0cc53913-4fa4-4032-8278-81d9f7b68419','No parametrizable','default'),('bdd079b5-6538-4434-8355-5e03e4f29838','e76a3c59-f3d7-4ede-b5c5-6c4f420c5f08','Número de elementos por pagina 8','{ \"pages\": \"8\"}'),('be816bfa-298d-4929-92ea-07d86bd7632f','356c0c4e-032e-4b1f-a319-e45bc7533a9d','Geosearch core ISE','{\"core\": \"sedes\", \"url\": \"http://geobusquedas-sigc.juntadeandalucia.es/geobusquedas\", \"handler\": \"/search\"}'),('e711b378-da4b-4f4d-ac62-a531da595848','435b45e4-07e7-4d9f-a1f9-8016e53d8ecb','Buscador de Calles Sevilla Capital','{ \"locality\": \"41091\"}');
/*!40000 ALTER TABLE `mapea_plugin_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mapea_wmc`
--

LOCK TABLES `mapea_wmc` WRITE;
/*!40000 ALTER TABLE `mapea_wmc` DISABLE KEYS */;
INSERT INTO `mapea_wmc` VALUES ('127b00f3-a3e2-4815-8b90-1f793452bd49','mapa_base.xml','1cbbd24e-caa0-4f02-8d91-1a22422975a7.xml','base','WMC Base','2019-07-16 12:13:44','1cbbd24e-caa0-4f02-8d91-1a22422975a7.xml','/home/epardo/proyecto/mapeaManager/public/uploads/wmc/1cbbd24e-caa0-4f02-8d91-1a22422975a7.xml');
/*!40000 ALTER TABLE `mapea_wmc` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2019-11-29 12:36:55
