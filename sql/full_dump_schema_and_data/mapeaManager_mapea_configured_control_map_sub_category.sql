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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-29 12:33:57
