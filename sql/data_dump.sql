-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: dbMapeaManager
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
INSERT INTO `fos_user` VALUES ('03d9a9ff-aed8-4160-8fb0-d05a5ff05f22','publicador','publicador','publicador@publicador.es','publicador@publicador.es',1,NULL,'$2y$10$kfoY2TA9xFpkph6VqlU8MOEuTb10sMJKdOLDt7PTrUj9bsJKDp/jq','2019-11-19 10:51:17',NULL,NULL,'a:0:{}'),('3d9e1792-5dc8-42c5-bc37-8b5285f49248','superadmin','superadmin','superadmin@superadmin.es','superadmin@superadmin.es',1,NULL,'$2y$10$CiSjBeARMcathVs0xCSXW.bV/4C/TrWw5feuguVuu2Tp2muLSyRuS','2019-11-19 11:02:53',NULL,NULL,'a:0:{}'),('7f823767-22f3-4f31-a74d-f8d69021a11d','admin','admin','admin@admin.es','admin@admin.es',1,NULL,'$2y$10$njggTcqozdKxhQMpYwWz7eN0IIYzvSE.5OkvQ9IYIndBFQSUfmAdm','2019-11-19 10:51:39',NULL,NULL,'a:0:{}'),('a40b7eac-b55e-489a-9ac3-3a3329b55600','user','user','user@user.es','user@user.es',1,NULL,'$2y$10$N5VDq3vCGGhwvzPPDOqIAuSwalA.Pwp66/nLwn.9JsRX5JTY3Nube','2019-11-19 10:50:20',NULL,NULL,'a:0:{}'),('d4307506-b0aa-4aa6-bfaf-0258863c4184','editor','editor','editor@editor.es','editor@editor.es',1,NULL,'$2y$10$eOo8QtCg/yby2rZz4wdH6eeHpR8dK3QGAOj51u4.Cl0mzsF3VYmsK','2019-11-19 10:50:33',NULL,NULL,'a:0:{}');
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
INSERT INTO `map_sub_category` VALUES ('8f2f7fcf-f544-42c3-baa3-11fdce15dddc','7711e8fd-ffd0-458c-b941-77534a19cde7','Clasificación del Grado de Urbanización','La Clasificación del Grado de Urbanización es una clasificación que busca caracterizar la intensidad del asentamiento en celdas de la malla estadística de 1 km2 donde reside población. A partir de la densidad de población, se definen distintas categorías de áreas basándose en criterios de contigüidad geográfica, densidad y umbrales de población según la metodología descrita por EUROSTAT para la asignación de las tipologías territoriales en malla estadística: Centros urbanos, Agrupaciones urbanas y Celdas de malla rurales.'),('a719d7e2-fa87-4a74-8d82-f7aacbe692b5','7711e8fd-ffd0-458c-b941-77534a19cde7','Distribución Espacial de la Población en Andalucía','La información que se representa en estos mapas proviene del Base de Datos Longitudinal de Población de Andalucía (BDLPA) a fecha de 1 de enero del año de referencia y ha sido georreferenciada partiendo de la localización de la dirección postal donde reside cada uno de los habitantes de Andalucía. Para facilitar la representación de la información y para preservar el secreto estadístico se ha trazado una malla regular con celdas de 250 m de lado, donde ha quedado agregada toda la información que corresponde en cada caso. La información que no se ha podido georreferenciar ha sido estimada utilizando técnicas de análisis espacial. Se ofrece información sobre Población (población total, por sexo, nacionalidad o grupos de edad), Afiliación a la Seguridad Social (afiliación total, por sexo o relación laboral), Pensiones contributivas de la Seguridad Social (perceptores de pensiones contributivas, por sexo, por tipo, así como ingresos por pensiones de jubilación, viudedad, jubilación y viudedad, incapacidad u otro tipo de pensiones) y Demandantes de empleo del Servicio Andaluz de Empleo (demandantes de empleo total, por sexo).'),('d1da790d-271d-4525-ba6d-d3ff4c881b79','1f3df6b5-559e-486d-b744-3bf7b06cbdb4','Ortofotografías Digitales de Andalucía','Las Ortofotografías Digitales de Andalucía son productos cartográficos resultantes del tratamiento digital de fotografías aéreas. El producto está constituido por una serie de recubrimientos completos de la Comunidad Autónoma, para un período de tiempo que abarca desde el año 1956 hasta 2016.'),('ebaddb75-99c6-4fb3-ba9e-c297184a6bca','1f3df6b5-559e-486d-b744-3bf7b06cbdb4','Base Cartográfica de Andalucía 1:10.000 - BCA10','La Base Cartográfica de Andalucía 1:10.000 (BCA10) está constituida por los conjuntos de datos espaciales de carácter topográfico, restituidos mediante técnicas fotogramétricas a partir de vuelos PNOA y que componen los elementos estructurantes del territorio: relieve, infraestructuras de comunicación, red hidrográfica, construcciones, poblamiento, parcelario, aparente toponimia, etc. Se concibe como un producto para ser explotado mediante herramientas SIG o de tratamiento cartográfico, ya sea para su conversión en mapas o como datos a ser integrados en un proceso de análisis espacial.');
/*!40000 ALTER TABLE `map_sub_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-19 11:56:11
