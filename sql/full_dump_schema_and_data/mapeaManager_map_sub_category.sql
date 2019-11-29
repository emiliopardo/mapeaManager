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
INSERT INTO `map_sub_category` VALUES ('5ccf77a6-0455-4207-87ed-6404ff291251','1f3df6b5-559e-486d-b744-3bf7b06cbdb4','Datos Espaciales de Referencia','Grupo de ejemplo'),('8f2f7fcf-f544-42c3-baa3-11fdce15dddc','7711e8fd-ffd0-458c-b941-77534a19cde7','Clasificación del Grado de Urbanización','La Clasificación del Grado de Urbanización es una clasificación que busca caracterizar la intensidad del asentamiento en celdas de la malla estadística de 1 km2 donde reside población. A partir de la densidad de población, se definen distintas categorías de áreas basándose en criterios de contigüidad geográfica, densidad y umbrales de población según la metodología descrita por EUROSTAT para la asignación de las tipologías territoriales en malla estadística: Centros urbanos, Agrupaciones urbanas y Celdas de malla rurales.'),('a719d7e2-fa87-4a74-8d82-f7aacbe692b5','7711e8fd-ffd0-458c-b941-77534a19cde7','Distribución Espacial de la Población en Andalucía','La información que se representa en estos mapas proviene del Base de Datos Longitudinal de Población de Andalucía (BDLPA) a fecha de 1 de enero del año de referencia y ha sido georreferenciada partiendo de la localización de la dirección postal donde reside cada uno de los habitantes de Andalucía. Para facilitar la representación de la información y para preservar el secreto estadístico se ha trazado una malla regular con celdas de 250 m de lado, donde ha quedado agregada toda la información que corresponde en cada caso. La información que no se ha podido georreferenciar ha sido estimada utilizando técnicas de análisis espacial. Se ofrece información sobre Población (población total, por sexo, nacionalidad o grupos de edad), Afiliación a la Seguridad Social (afiliación total, por sexo o relación laboral), Pensiones contributivas de la Seguridad Social (perceptores de pensiones contributivas, por sexo, por tipo, así como ingresos por pensiones de jubilación, viudedad, jubilación y viudedad, incapacidad u otro tipo de pensiones) y Demandantes de empleo del Servicio Andaluz de Empleo (demandantes de empleo total, por sexo).'),('d1da790d-271d-4525-ba6d-d3ff4c881b79','1f3df6b5-559e-486d-b744-3bf7b06cbdb4','Ortofotografías Digitales de Andalucía','Las Ortofotografías Digitales de Andalucía son productos cartográficos resultantes del tratamiento digital de fotografías aéreas. El producto está constituido por una serie de recubrimientos completos de la Comunidad Autónoma, para un período de tiempo que abarca desde el año 1956 hasta 2016.'),('ebaddb75-99c6-4fb3-ba9e-c297184a6bca','1f3df6b5-559e-486d-b744-3bf7b06cbdb4','Base Cartográfica de Andalucía 1:10.000 - BCA10','La Base Cartográfica de Andalucía 1:10.000 (BCA10) está constituida por los conjuntos de datos espaciales de carácter topográfico, restituidos mediante técnicas fotogramétricas a partir de vuelos PNOA y que componen los elementos estructurantes del territorio: relieve, infraestructuras de comunicación, red hidrográfica, construcciones, poblamiento, parcelario, aparente toponimia, etc. Se concibe como un producto para ser explotado mediante herramientas SIG o de tratamiento cartográfico, ya sea para su conversión en mapas o como datos a ser integrados en un proceso de análisis espacial.');
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

-- Dump completed on 2019-11-29 12:33:58
