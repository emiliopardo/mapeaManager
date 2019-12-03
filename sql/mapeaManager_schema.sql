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
-- Table structure for table `mapea_layer_wmsmap_configured`
--

DROP TABLE IF EXISTS `mapea_layer_wmsmap_configured`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapea_layer_wmsmap_configured` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `mapea_layer_wms_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:uuid)',
  `base_layer` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9E43A74A1A82007F` (`mapea_layer_wms_id`),
  CONSTRAINT `FK_9E43A74A1A82007F` FOREIGN KEY (`mapea_layer_wms_id`) REFERENCES `mapea_layer_wms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-03  8:50:25
