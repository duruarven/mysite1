-- MySQL dump 10.13  Distrib 8.0.30, for macos12.4 (x86_64)
--
-- Host: localhost    Database: nest
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'z0E5O5PGpbk8CNOnWiWd5EgCn9a3xDY4',1,'2022-09-22 01:26:52','2022-09-22 01:26:52','2022-09-22 01:26:52');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Everyday Fresh','2027-09-22 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.png','/products',0,1,'published','2022-09-22 01:27:02','2022-09-22 01:27:02'),(2,'Make your Breakfast','2027-09-22 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.png','/products',0,2,'published','2022-09-22 01:27:02','2022-09-22 01:27:02'),(3,'The best Organic','2027-09-22 00:00:00','not_set','ILSDKVYFGXPH','promotion/3.png','/products',0,3,'published','2022-09-22 01:27:02','2022-09-22 01:27:02'),(4,'Bring nature into your home','2027-09-22 00:00:00','not_set','IZ6WU8KUALYG','promotion/4.png','/products',0,4,'published','2022-09-22 01:27:03','2022-09-22 01:27:03'),(5,'Delivered to your home','2027-09-22 00:00:00','banner-big','IZ6WU8KUALYH','promotion/5.png','/products',0,5,'published','2022-09-22 01:27:04','2022-09-22 01:27:04'),(6,'Save 17% on Oganic Juice','2027-09-22 00:00:00','no_set','IZ6WU8KUALYI','promotion/6.png','/products',0,6,'published','2022-09-22 01:27:04','2022-09-22 01:27:04'),(7,'Everyday Fresh & Clean with Our Products','2027-09-22 00:00:00','item-style-4','IZ6WU8KUALYJ','promotion/7.png','/products',0,7,'published','2022-09-22 01:27:04','2022-09-22 01:27:04'),(8,'The best Organic Products Online','2027-09-22 00:00:00','item-style-5','IZ6WU8KUALYK','promotion/8.png','/products',0,8,'published','2022-09-22 01:27:04','2022-09-22 01:27:04'),(9,'Everyday Fresh with Our Products','2027-09-22 00:00:00','item-style-2','IZ6WU8KUALYL','promotion/9.png',NULL,0,9,'published','2022-09-22 01:27:04','2022-09-22 01:27:04'),(10,'100% guaranteed all Fresh items','2027-09-22 00:00:00','item-style-2','IZ6WU8KUALYM','promotion/10.png',NULL,0,10,'published','2022-09-22 01:27:04','2022-09-22 01:27:04'),(11,'Special grocery sale off this month','2027-09-22 00:00:00','item-style-2','IZ6WU8KUALYN','promotion/11.png',NULL,0,11,'published','2022-09-22 01:27:04','2022-09-22 01:27:04'),(12,'Enjoy 15% OFF for all vegetable and fruit','2027-09-22 00:00:00','item-style-2','IZ6WU8KUALYO','promotion/12.png',NULL,0,12,'published','2022-09-22 01:27:04','2022-09-22 01:27:04');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
INSERT INTO `ads_translations` VALUES ('vi',1,'Tươi mỗi ngày','promotion/1.png','/vi/products'),('vi',2,'Nấu bữa sáng của bạn','promotion/2.png','/vi/products'),('vi',3,'Hữu cơ tốt nhất','promotion/3.png','/vi/products'),('vi',4,'Mang thiên nhiên vào ngôi nhà của bạn','promotion/4.png','/vi/products'),('vi',5,'Giao tận nhà','promotion/5.png','/vi/products'),('vi',6,'Tiết kiệm 17% khi mua nước ép hữu cơ','promotion/6.png','/vi/products'),('vi',7,'Tươi và Sạch hàng ngày với các sản phẩm của chúng tôi','promotion/7.png','/vi/products'),('vi',8,'Các sản phẩm hữu cơ tốt nhất trực tuyến','promotion/8.png','/vi/products'),('vi',9,'Tươi mới mỗi ngày với các sản phẩm của chúng tôi','promotion/9.png','/vi/products'),('vi',10,'100% đảm bảo tất cả các mặt hàng tươi','promotion/10.png','/vi/products'),('vi',11,'Giảm giá hàng tạp hóa đặc biệt trong tháng này','promotion/11.png','/vi/products'),('vi',12,'GIẢM GIÁ 15% cho tất cả rau và trái cây','promotion/12.png','/vi/products');
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Perspiciatis perferendis atque quia eligendi quia consequatur. Optio et impedit ut cupiditate eaque est et. Consequuntur impedit aut dignissimos esse.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2022-09-22 01:26:49','2022-09-22 01:26:49'),(2,'Fashion',0,'Dolor fugiat et nihil enim sed qui magnam. Rem ipsum dignissimos qui. Sunt est corporis possimus odio.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-09-22 01:26:49','2022-09-22 01:26:49'),(3,'Electronic',0,'Et autem unde doloribus et. Velit a perferendis esse qui. Asperiores aspernatur neque commodi rerum.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-09-22 01:26:49','2022-09-22 01:26:49'),(4,'Commercial',0,'Eum natus quis rerum architecto. Placeat quo omnis et molestiae sequi voluptas consequatur non. Et occaecati est est quia expedita.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-09-22 01:26:49','2022-09-22 01:26:49');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Thương mại điện tử',NULL),('vi',2,'Thời trang',NULL),('vi',3,'Điện tử',NULL),('vi',4,'Thương mại',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int unsigned NOT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int unsigned NOT NULL,
  `widget_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Perxsion',NULL,NULL,NULL,'published',0,1,'2022-09-22 01:25:29','2022-09-22 01:25:29'),(2,'Hiching',NULL,NULL,NULL,'published',1,1,'2022-09-22 01:25:29','2022-09-22 01:25:29'),(3,'Kepslo',NULL,NULL,NULL,'published',2,1,'2022-09-22 01:25:29','2022-09-22 01:25:29'),(4,'Groneba',NULL,NULL,NULL,'published',3,1,'2022-09-22 01:25:29','2022-09-22 01:25:29'),(5,'Babian',NULL,NULL,NULL,'published',4,1,'2022-09-22 01:25:29','2022-09-22 01:25:29'),(6,'Valorant',NULL,NULL,NULL,'published',5,1,'2022-09-22 01:25:29','2022-09-22 01:25:29'),(7,'Pure',NULL,NULL,NULL,'published',6,1,'2022-09-22 01:25:29','2022-09-22 01:25:29');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
INSERT INTO `ec_brands_translations` VALUES ('vi',1,'Perxsion',NULL),('vi',2,'Hiching',NULL),('vi',3,'Kepslo',NULL),('vi',4,'Groneba',NULL),('vi',5,'Babian',NULL),('vi',6,'Valorant',NULL),('vi',7,'Pure',NULL);
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2022-09-22 01:25:29','2022-09-22 01:25:29'),(2,'EUR','€',0,2,1,0,0.84,'2022-09-22 01:25:29','2022-09-22 01:25:29'),(3,'VND','₫',0,0,2,0,23203,'2022-09-22 01:25:29','2022-09-22 01:25:29');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Sammie Howell','customer@botble.com','+16156649870','DK','Iowa','Port Adrianna','82808 Tyshawn Row',1,1,'2022-09-22 01:26:11','2022-09-22 01:26:11','16741'),(2,'Sammie Howell','customer@botble.com','+15314579576','SG','West Virginia','West Bernhardfurt','647 Omer Ranch',1,0,'2022-09-22 01:26:11','2022-09-22 01:26:11','09440-9025'),(3,'Mr. Gregorio Medhurst','vendor@botble.com','+18649502555','GP','South Dakota','Bradfordside','2750 Cremin Rapids Apt. 980',2,1,'2022-09-22 01:26:11','2022-09-22 01:26:11','02626-0092'),(4,'Mr. Gregorio Medhurst','vendor@botble.com','+12319536062','DE','Delaware','Keaganberg','10524 Rutherford Highway Suite 670',2,0,'2022-09-22 01:26:11','2022-09-22 01:26:11','21482-6898'),(5,'Mr. Andres Littel','louisa.glover@example.com','+14259427690','PM','Massachusetts','New Verla','893 Hirthe Fords Suite 378',3,1,'2022-09-22 01:26:11','2022-09-22 01:26:11','55092-2857'),(6,'Virgil Beahan','gaston.dickinson@example.org','+17472210814','IQ','California','Arnaldofurt','9797 Tromp Stravenue',4,1,'2022-09-22 01:26:12','2022-09-22 01:26:12','63616-0220'),(7,'Maria Schultz','ava.glover@example.net','+17603289928','NP','Colorado','East Itzel','7566 Sigmund Harbor Apt. 710',5,1,'2022-09-22 01:26:12','2022-09-22 01:26:12','09493'),(8,'Nikita Nikolaus','qgleichner@example.net','+15135279923','JM','Colorado','Rohanberg','44906 Rippin Village',6,1,'2022-09-22 01:26:12','2022-09-22 01:26:12','77631-9961'),(9,'Stefanie Rice','owindler@example.net','+19473101664','AR','New York','Murphyland','86848 Cordelia Alley Apt. 989',7,1,'2022-09-22 01:26:12','2022-09-22 01:26:12','78032-5738'),(10,'Dr. Cecelia Smith PhD','vwunsch@example.com','+18705301568','KR','Vermont','Hegmannberg','710 Wintheiser Plain Suite 295',8,1,'2022-09-22 01:26:12','2022-09-22 01:26:12','76229'),(11,'Mrs. Eryn Ziemann','marilou.okon@example.com','+12697706188','SE','Connecticut','Port Alvinachester','418 Marquardt Islands Suite 814',9,1,'2022-09-22 01:26:13','2022-09-22 01:26:13','41766-6543'),(12,'Bennie Brown','sage.king@example.org','+14425900635','AM','New Jersey','West Piperburgh','144 Schuppe Trail',10,1,'2022-09-22 01:26:13','2022-09-22 01:26:13','65382');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Sammie Howell','customer@botble.com','$2y$10$CYkJm1Mw.zzOO.5lQiS0zu8T1cHkIavTbwCfVRtVTzrO7NAsRv2L6','customers/10.jpg','1998-09-03','+14582090638',NULL,'2022-09-22 01:26:11','2022-09-22 01:26:11','2022-09-22 08:26:11',NULL,'activated',0,NULL),(2,'Mr. Gregorio Medhurst','vendor@botble.com','$2y$10$b2iHEIWTocT9rmhx6IJrEuVHSi44ZVawiKAPNOVv5/RRA2ZPoO.L.','customers/6.jpg','1986-08-31','+16827660557',NULL,'2022-09-22 01:26:11','2022-09-22 01:27:38','2022-09-22 08:26:11',NULL,'activated',1,'2022-09-22 08:27:38'),(3,'Mr. Andres Littel','louisa.glover@example.com','$2y$10$MtjjLzHz4ilpymGY50y/teuie3kTVw30HtVJVvZfbgGVfINQX7Ike','customers/1.jpg','1974-09-09','+17706603285',NULL,'2022-09-22 01:26:11','2022-09-22 01:27:39','2022-09-22 08:26:11',NULL,'activated',1,'2022-09-22 08:27:39'),(4,'Virgil Beahan','gaston.dickinson@example.org','$2y$10$UfGGPNjw72.kWl1/5RPhcOXekVY64qhtafLuqB58KuVt7EjqxEfQm','customers/2.jpg','1976-09-11','+13526289121',NULL,'2022-09-22 01:26:12','2022-09-22 01:27:39','2022-09-22 08:26:12',NULL,'activated',1,'2022-09-22 08:27:39'),(5,'Maria Schultz','ava.glover@example.net','$2y$10$3bTS2TIJ33GFXN9dzqodSeI4tDPDmexVyHUGm69bb6yscDR3Kn2Tm','customers/3.jpg','1992-09-10','+16146191696',NULL,'2022-09-22 01:26:12','2022-09-22 01:26:12','2022-09-22 08:26:12',NULL,'activated',0,NULL),(6,'Nikita Nikolaus','qgleichner@example.net','$2y$10$BC7qT7JyH2i.v8fbf.zpX.rQtMy0ows/Vo4g1pKuKo6ni5IjKY97m','customers/4.jpg','1972-09-02','+15206953025',NULL,'2022-09-22 01:26:12','2022-09-22 01:26:12','2022-09-22 08:26:12',NULL,'activated',0,NULL),(7,'Stefanie Rice','owindler@example.net','$2y$10$TthkB61JzhTErNQBqBNY3.Fw2MAsAHt3L7YNsmMQCmhLH8NXKy.ci','customers/5.jpg','1983-09-09','+17379666103',NULL,'2022-09-22 01:26:12','2022-09-22 01:26:12','2022-09-22 08:26:12',NULL,'activated',0,NULL),(8,'Dr. Cecelia Smith PhD','vwunsch@example.com','$2y$10$Ld1EhojBY26QfP/W9CQTOO3gH8UzrQDFxfPew.iBLqgKzi4vzDHPm','customers/6.jpg','1974-09-10','+18035689141',NULL,'2022-09-22 01:26:12','2022-09-22 01:27:39','2022-09-22 08:26:12',NULL,'activated',1,'2022-09-22 08:27:39'),(9,'Mrs. Eryn Ziemann','marilou.okon@example.com','$2y$10$C8PsaFHlbYpmFuasRbI8m.6hXPkmvGGp221vX40h6xBqFVKvocueC','customers/7.jpg','1983-08-26','+19183688342',NULL,'2022-09-22 01:26:13','2022-09-22 01:27:39','2022-09-22 08:26:13',NULL,'activated',1,'2022-09-22 08:27:39'),(10,'Bennie Brown','sage.king@example.org','$2y$10$kGQXnx1WbRRWJ12og9kOVO6k.IEBZu3q9msGFDNON5n6aKwdJruA2','customers/8.jpg','1983-09-21','+15106998808',NULL,'2022-09-22 01:26:13','2022-09-22 01:27:40','2022-09-22 08:26:13',NULL,'activated',1,'2022-09-22 08:27:40');
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` int unsigned NOT NULL,
  `customer_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int unsigned NOT NULL,
  `product_collection_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,13,110.88,14,1),(2,19,96.25,17,4),(3,18,71.98,10,3),(4,2,212.22,19,4),(5,18,80.52,15,5),(6,1,107.78,13,1),(6,2,137.55,8,5),(6,3,159.36,6,5),(6,4,23.166,17,5),(6,5,36.66,16,4),(6,6,19.8,17,5),(6,7,100,15,5),(6,8,64.896,20,4),(6,9,52.9,8,1),(6,10,288.3,11,1),(6,11,53.34,8,3),(6,12,26.862,14,2),(6,13,100.8,17,1),(6,14,50,17,3),(6,15,48.4,16,1),(6,16,34.944,12,2),(6,17,100.32,9,2),(6,18,36.6,19,2),(6,19,42.5,10,1),(6,20,61.087,16,2);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day','2022-11-07 00:00:00','published','2022-09-22 01:26:17','2022-09-22 01:26:17'),(2,'Flash sale 2','2022-10-31 00:00:00','published','2022-09-22 01:26:18','2022-09-22 01:26:18'),(3,'Flash sale 3','2022-11-11 00:00:00','published','2022-09-22 01:26:18','2022-09-22 01:26:18'),(4,'Flash sale 4','2022-11-05 00:00:00','published','2022-09-22 01:26:18','2022-09-22 01:26:18'),(5,'Flash sale 5','2022-10-22 00:00:00','published','2022-09-22 01:26:18','2022-09-22 01:26:18'),(6,'Daily Best Sales','2022-10-22 00:00:00','published','2022-09-22 01:26:18','2022-09-22 01:26:18');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
INSERT INTO `ec_flash_sales_translations` VALUES ('vi',1,'Ưu đãi trong ngày'),('vi',2,'Khuyến mãi 2'),('vi',3,'Khuyến mãi 3'),('vi',4,'Khuyến mãi 4'),('vi',5,'Khuyến mãi 5'),('vi',6,'Bán tốt nhất hàng ngày');
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Sammie Howell','+16156649870','customer@botble.com','DK','Iowa','Port Adrianna','82808 Tyshawn Row',1,'16741','shipping_address'),(2,'Sammie Howell','+16156649870','customer@botble.com','DK','Iowa','Port Adrianna','82808 Tyshawn Row',2,'16741','shipping_address'),(3,'Maria Schultz','+17603289928','ava.glover@example.net','NP','Colorado','East Itzel','7566 Sigmund Harbor Apt. 710',3,'09493','shipping_address'),(4,'Maria Schultz','+17603289928','ava.glover@example.net','NP','Colorado','East Itzel','7566 Sigmund Harbor Apt. 710',4,'09493','shipping_address'),(5,'Maria Schultz','+17603289928','ava.glover@example.net','NP','Colorado','East Itzel','7566 Sigmund Harbor Apt. 710',5,'09493','shipping_address'),(6,'Nikita Nikolaus','+15135279923','qgleichner@example.net','JM','Colorado','Rohanberg','44906 Rippin Village',6,'77631-9961','shipping_address'),(7,'Nikita Nikolaus','+15135279923','qgleichner@example.net','JM','Colorado','Rohanberg','44906 Rippin Village',7,'77631-9961','shipping_address'),(8,'Nikita Nikolaus','+15135279923','qgleichner@example.net','JM','Colorado','Rohanberg','44906 Rippin Village',8,'77631-9961','shipping_address'),(9,'Sammie Howell','+16156649870','customer@botble.com','DK','Iowa','Port Adrianna','82808 Tyshawn Row',9,'16741','shipping_address'),(10,'Sammie Howell','+16156649870','customer@botble.com','DK','Iowa','Port Adrianna','82808 Tyshawn Row',10,'16741','shipping_address'),(11,'Maria Schultz','+17603289928','ava.glover@example.net','NP','Colorado','East Itzel','7566 Sigmund Harbor Apt. 710',11,'09493','shipping_address'),(12,'Maria Schultz','+17603289928','ava.glover@example.net','NP','Colorado','East Itzel','7566 Sigmund Harbor Apt. 710',12,'09493','shipping_address'),(13,'Sammie Howell','+16156649870','customer@botble.com','DK','Iowa','Port Adrianna','82808 Tyshawn Row',13,'16741','shipping_address'),(14,'Sammie Howell','+16156649870','customer@botble.com','DK','Iowa','Port Adrianna','82808 Tyshawn Row',14,'16741','shipping_address'),(15,'Sammie Howell','+16156649870','customer@botble.com','DK','Iowa','Port Adrianna','82808 Tyshawn Row',15,'16741','shipping_address'),(16,'Sammie Howell','+16156649870','customer@botble.com','DK','Iowa','Port Adrianna','82808 Tyshawn Row',16,'16741','shipping_address'),(17,'Sammie Howell','+16156649870','customer@botble.com','DK','Iowa','Port Adrianna','82808 Tyshawn Row',17,'16741','shipping_address'),(18,'Sammie Howell','+16156649870','customer@botble.com','DK','Iowa','Port Adrianna','82808 Tyshawn Row',18,'16741','shipping_address'),(19,'Sammie Howell','+16156649870','customer@botble.com','DK','Iowa','Port Adrianna','82808 Tyshawn Row',19,'16741','shipping_address'),(20,'Maria Schultz','+17603289928','ava.glover@example.net','NP','Colorado','East Itzel','7566 Sigmund Harbor Apt. 710',20,'09493','shipping_address'),(21,'Maria Schultz','+17603289928','ava.glover@example.net','NP','Colorado','East Itzel','7566 Sigmund Harbor Apt. 710',21,'09493','shipping_address'),(22,'Maria Schultz','+17603289928','ava.glover@example.net','NP','Colorado','East Itzel','7566 Sigmund Harbor Apt. 710',22,'09493','shipping_address'),(23,'Sammie Howell','+16156649870','customer@botble.com','DK','Iowa','Port Adrianna','82808 Tyshawn Row',23,'16741','shipping_address'),(24,'Sammie Howell','+16156649870','customer@botble.com','DK','Iowa','Port Adrianna','82808 Tyshawn Row',24,'16741','shipping_address'),(25,'Sammie Howell','+16156649870','customer@botble.com','DK','Iowa','Port Adrianna','82808 Tyshawn Row',25,'16741','shipping_address'),(26,'Sammie Howell','+16156649870','customer@botble.com','DK','Iowa','Port Adrianna','82808 Tyshawn Row',26,'16741','shipping_address'),(27,'Sammie Howell','+16156649870','customer@botble.com','DK','Iowa','Port Adrianna','82808 Tyshawn Row',27,'16741','shipping_address'),(28,'Maria Schultz','+17603289928','ava.glover@example.net','NP','Colorado','East Itzel','7566 Sigmund Harbor Apt. 710',28,'09493','shipping_address'),(29,'Maria Schultz','+17603289928','ava.glover@example.net','NP','Colorado','East Itzel','7566 Sigmund Harbor Apt. 710',29,'09493','shipping_address'),(30,'Maria Schultz','+17603289928','ava.glover@example.net','NP','Colorado','East Itzel','7566 Sigmund Harbor Apt. 710',30,'09493','shipping_address'),(31,'Maria Schultz','+17603289928','ava.glover@example.net','NP','Colorado','East Itzel','7566 Sigmund Harbor Apt. 710',31,'09493','shipping_address'),(32,'Maria Schultz','+17603289928','ava.glover@example.net','NP','Colorado','East Itzel','7566 Sigmund Harbor Apt. 710',32,'09493','shipping_address'),(33,'Sammie Howell','+16156649870','customer@botble.com','DK','Iowa','Port Adrianna','82808 Tyshawn Row',33,'16741','shipping_address'),(34,'Sammie Howell','+16156649870','customer@botble.com','DK','Iowa','Port Adrianna','82808 Tyshawn Row',34,'16741','shipping_address'),(35,'Maria Schultz','+17603289928','ava.glover@example.net','NP','Colorado','East Itzel','7566 Sigmund Harbor Apt. 710',35,'09493','shipping_address'),(36,'Maria Schultz','+17603289928','ava.glover@example.net','NP','Colorado','East Itzel','7566 Sigmund Harbor Apt. 710',36,'09493','shipping_address'),(37,'Maria Schultz','+17603289928','ava.glover@example.net','NP','Colorado','East Itzel','7566 Sigmund Harbor Apt. 710',37,'09493','shipping_address'),(38,'Maria Schultz','+17603289928','ava.glover@example.net','NP','Colorado','East Itzel','7566 Sigmund Harbor Apt. 710',38,'09493','shipping_address'),(39,'Maria Schultz','+17603289928','ava.glover@example.net','NP','Colorado','East Itzel','7566 Sigmund Harbor Apt. 710',39,'09493','shipping_address'),(40,'Maria Schultz','+17603289928','ava.glover@example.net','NP','Colorado','East Itzel','7566 Sigmund Harbor Apt. 710',40,'09493','shipping_address'),(41,'Maria Schultz','+17603289928','ava.glover@example.net','NP','Colorado','East Itzel','7566 Sigmund Harbor Apt. 710',41,'09493','shipping_address'),(42,'Maria Schultz','+17603289928','ava.glover@example.net','NP','Colorado','East Itzel','7566 Sigmund Harbor Apt. 710',42,'09493','shipping_address'),(43,'Maria Schultz','+17603289928','ava.glover@example.net','NP','Colorado','East Itzel','7566 Sigmund Harbor Apt. 710',43,'09493','shipping_address'),(44,'Sammie Howell','+16156649870','customer@botble.com','DK','Iowa','Port Adrianna','82808 Tyshawn Row',44,'16741','shipping_address'),(45,'Sammie Howell','+16156649870','customer@botble.com','DK','Iowa','Port Adrianna','82808 Tyshawn Row',45,'16741','shipping_address'),(46,'Maria Schultz','+17603289928','ava.glover@example.net','NP','Colorado','East Itzel','7566 Sigmund Harbor Apt. 710',46,'09493','shipping_address'),(47,'Maria Schultz','+17603289928','ava.glover@example.net','NP','Colorado','East Itzel','7566 Sigmund Harbor Apt. 710',47,'09493','shipping_address'),(48,'Sammie Howell','+16156649870','customer@botble.com','DK','Iowa','Port Adrianna','82808 Tyshawn Row',48,'16741','shipping_address'),(49,'Sammie Howell','+16156649870','customer@botble.com','DK','Iowa','Port Adrianna','82808 Tyshawn Row',49,'16741','shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2022-09-13 17:27:41','2022-09-13 17:27:41'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2022-09-13 17:27:41','2022-09-13 17:27:41'),(3,'confirm_payment','Payment was confirmed (amount $825.30) by %user_name%',0,1,NULL,'2022-09-22 01:27:43','2022-09-22 01:27:43'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2022-09-22 01:27:43','2022-09-22 01:27:43'),(5,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,1,NULL,'2022-09-22 01:27:43','2022-09-22 01:27:43'),(6,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2022-09-18 17:27:43','2022-09-18 17:27:43'),(7,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2022-09-18 17:27:43','2022-09-18 17:27:43'),(8,'create_shipment','Created shipment for order',0,2,NULL,'2022-09-22 01:27:43','2022-09-22 01:27:43'),(9,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,NULL,'2022-09-22 01:27:43','2022-09-22 01:27:43'),(10,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2022-09-20 11:27:43','2022-09-20 11:27:43'),(11,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2022-09-20 11:27:43','2022-09-20 11:27:43'),(12,'confirm_payment','Payment was confirmed (amount $186.00) by %user_name%',0,3,NULL,'2022-09-22 01:27:43','2022-09-22 01:27:43'),(13,'create_shipment','Created shipment for order',0,3,NULL,'2022-09-22 01:27:43','2022-09-22 01:27:43'),(14,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,NULL,'2022-09-22 01:27:43','2022-09-22 01:27:43'),(15,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2022-09-18 21:27:43','2022-09-18 21:27:43'),(16,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2022-09-18 21:27:43','2022-09-18 21:27:43'),(17,'confirm_payment','Payment was confirmed (amount $395.30) by %user_name%',0,4,NULL,'2022-09-22 01:27:43','2022-09-22 01:27:43'),(18,'create_shipment','Created shipment for order',0,4,NULL,'2022-09-22 01:27:43','2022-09-22 01:27:43'),(19,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2022-09-09 09:27:43','2022-09-09 09:27:43'),(20,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2022-09-09 09:27:43','2022-09-09 09:27:43'),(21,'create_shipment','Created shipment for order',0,5,NULL,'2022-09-22 01:27:43','2022-09-22 01:27:43'),(22,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,NULL,'2022-09-22 01:27:43','2022-09-22 01:27:43'),(23,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2022-09-19 01:27:43','2022-09-19 01:27:43'),(24,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2022-09-19 01:27:43','2022-09-19 01:27:43'),(25,'confirm_payment','Payment was confirmed (amount $241.80) by %user_name%',0,6,NULL,'2022-09-22 01:27:43','2022-09-22 01:27:43'),(26,'create_shipment','Created shipment for order',0,6,NULL,'2022-09-22 01:27:43','2022-09-22 01:27:43'),(27,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2022-09-19 01:27:44','2022-09-19 01:27:44'),(28,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2022-09-19 01:27:44','2022-09-19 01:27:44'),(29,'create_shipment','Created shipment for order',0,7,NULL,'2022-09-22 01:27:47','2022-09-22 01:27:47'),(30,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2022-09-08 13:27:47','2022-09-08 13:27:47'),(31,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2022-09-08 13:27:47','2022-09-08 13:27:47'),(32,'create_shipment','Created shipment for order',0,8,NULL,'2022-09-22 01:27:47','2022-09-22 01:27:47'),(33,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,NULL,'2022-09-22 01:27:47','2022-09-22 01:27:47'),(34,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2022-09-09 07:27:47','2022-09-09 07:27:47'),(35,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2022-09-09 07:27:47','2022-09-09 07:27:47'),(36,'create_shipment','Created shipment for order',0,9,NULL,'2022-09-22 01:27:48','2022-09-22 01:27:48'),(37,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,NULL,'2022-09-22 01:27:48','2022-09-22 01:27:48'),(38,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2022-09-07 21:27:48','2022-09-07 21:27:48'),(39,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2022-09-07 21:27:48','2022-09-07 21:27:48'),(40,'create_shipment','Created shipment for order',0,10,NULL,'2022-09-22 01:27:49','2022-09-22 01:27:49'),(41,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,NULL,'2022-09-22 01:27:49','2022-09-22 01:27:49'),(42,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2022-09-14 01:27:49','2022-09-14 01:27:49'),(43,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2022-09-14 01:27:49','2022-09-14 01:27:49'),(44,'confirm_payment','Payment was confirmed (amount $139.70) by %user_name%',0,11,NULL,'2022-09-22 01:27:50','2022-09-22 01:27:50'),(45,'create_shipment','Created shipment for order',0,11,NULL,'2022-09-22 01:27:50','2022-09-22 01:27:50'),(46,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,NULL,'2022-09-22 01:27:50','2022-09-22 01:27:50'),(47,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2022-09-16 17:27:50','2022-09-16 17:27:50'),(48,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2022-09-16 17:27:50','2022-09-16 17:27:50'),(49,'confirm_payment','Payment was confirmed (amount $254.10) by %user_name%',0,12,NULL,'2022-09-22 01:27:50','2022-09-22 01:27:50'),(50,'create_shipment','Created shipment for order',0,12,NULL,'2022-09-22 01:27:50','2022-09-22 01:27:50'),(51,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2022-09-19 13:27:50','2022-09-19 13:27:50'),(52,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2022-09-19 13:27:50','2022-09-19 13:27:50'),(53,'create_shipment','Created shipment for order',0,13,NULL,'2022-09-22 01:27:50','2022-09-22 01:27:50'),(54,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2022-09-15 19:27:51','2022-09-15 19:27:51'),(55,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2022-09-15 19:27:51','2022-09-15 19:27:51'),(56,'create_shipment','Created shipment for order',0,14,NULL,'2022-09-22 01:27:54','2022-09-22 01:27:54'),(57,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,NULL,'2022-09-22 01:27:54','2022-09-22 01:27:54'),(58,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2022-09-17 09:27:54','2022-09-17 09:27:54'),(59,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2022-09-17 09:27:54','2022-09-17 09:27:54'),(60,'confirm_payment','Payment was confirmed (amount $137.50) by %user_name%',0,15,NULL,'2022-09-22 01:27:55','2022-09-22 01:27:55'),(61,'create_shipment','Created shipment for order',0,15,NULL,'2022-09-22 01:27:55','2022-09-22 01:27:55'),(62,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,NULL,'2022-09-22 01:27:55','2022-09-22 01:27:55'),(63,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2022-09-16 05:27:55','2022-09-16 05:27:55'),(64,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2022-09-16 05:27:55','2022-09-16 05:27:55'),(65,'confirm_payment','Payment was confirmed (amount $133.10) by %user_name%',0,16,NULL,'2022-09-22 01:27:55','2022-09-22 01:27:55'),(66,'create_shipment','Created shipment for order',0,16,NULL,'2022-09-22 01:27:55','2022-09-22 01:27:55'),(67,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2022-09-18 13:27:55','2022-09-18 13:27:55'),(68,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2022-09-18 13:27:55','2022-09-18 13:27:55'),(69,'confirm_payment','Payment was confirmed (amount $125.40) by %user_name%',0,17,NULL,'2022-09-22 01:27:55','2022-09-22 01:27:55'),(70,'create_shipment','Created shipment for order',0,17,NULL,'2022-09-22 01:27:55','2022-09-22 01:27:55'),(71,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,17,NULL,'2022-09-22 01:27:55','2022-09-22 01:27:55'),(72,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2022-09-16 15:27:55','2022-09-16 15:27:55'),(73,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2022-09-16 15:27:55','2022-09-16 15:27:55'),(74,'confirm_payment','Payment was confirmed (amount $85.80) by %user_name%',0,18,NULL,'2022-09-22 01:27:55','2022-09-22 01:27:55'),(75,'create_shipment','Created shipment for order',0,18,NULL,'2022-09-22 01:27:55','2022-09-22 01:27:55'),(76,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2022-09-11 05:27:55','2022-09-11 05:27:55'),(77,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2022-09-11 05:27:55','2022-09-11 05:27:55'),(78,'confirm_payment','Payment was confirmed (amount $264.60) by %user_name%',0,19,NULL,'2022-09-22 01:27:55','2022-09-22 01:27:55'),(79,'create_shipment','Created shipment for order',0,19,NULL,'2022-09-22 01:27:55','2022-09-22 01:27:55'),(80,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2022-09-19 01:27:55','2022-09-19 01:27:55'),(81,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2022-09-19 01:27:55','2022-09-19 01:27:55'),(82,'confirm_payment','Payment was confirmed (amount $396.80) by %user_name%',0,20,NULL,'2022-09-22 01:27:55','2022-09-22 01:27:55'),(83,'create_shipment','Created shipment for order',0,20,NULL,'2022-09-22 01:27:55','2022-09-22 01:27:55'),(84,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2022-09-20 01:27:55','2022-09-20 01:27:55'),(85,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2022-09-20 01:27:55','2022-09-20 01:27:55'),(86,'confirm_payment','Payment was confirmed (amount $137.50) by %user_name%',0,21,NULL,'2022-09-22 01:27:55','2022-09-22 01:27:55'),(87,'create_shipment','Created shipment for order',0,21,NULL,'2022-09-22 01:27:55','2022-09-22 01:27:55'),(88,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,21,NULL,'2022-09-22 01:27:55','2022-09-22 01:27:55'),(89,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2022-09-17 01:27:56','2022-09-17 01:27:56'),(90,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2022-09-17 01:27:56','2022-09-17 01:27:56'),(91,'confirm_payment','Payment was confirmed (amount $541.80) by %user_name%',0,22,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(92,'create_shipment','Created shipment for order',0,22,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(93,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2022-09-14 17:27:56','2022-09-14 17:27:56'),(94,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2022-09-14 17:27:56','2022-09-14 17:27:56'),(95,'create_shipment','Created shipment for order',0,23,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(96,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(97,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2022-09-13 19:27:56','2022-09-13 19:27:56'),(98,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2022-09-13 19:27:56','2022-09-13 19:27:56'),(99,'create_shipment','Created shipment for order',0,24,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(100,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(101,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2022-09-15 09:27:56','2022-09-15 09:27:56'),(102,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2022-09-15 09:27:56','2022-09-15 09:27:56'),(103,'confirm_payment','Payment was confirmed (amount $390.60) by %user_name%',0,25,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(104,'create_shipment','Created shipment for order',0,25,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(105,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,25,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(106,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2022-09-18 17:27:56','2022-09-18 17:27:56'),(107,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2022-09-18 17:27:56','2022-09-18 17:27:56'),(108,'confirm_payment','Payment was confirmed (amount $125.40) by %user_name%',0,26,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(109,'create_shipment','Created shipment for order',0,26,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(110,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,26,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(111,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2022-09-15 09:27:56','2022-09-15 09:27:56'),(112,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2022-09-15 09:27:56','2022-09-15 09:27:56'),(113,'create_shipment','Created shipment for order',0,27,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(114,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2022-09-16 01:27:56','2022-09-16 01:27:56'),(115,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2022-09-16 01:27:56','2022-09-16 01:27:56'),(116,'confirm_payment','Payment was confirmed (amount $241.50) by %user_name%',0,28,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(117,'create_shipment','Created shipment for order',0,28,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(118,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2022-09-18 07:27:56','2022-09-18 07:27:56'),(119,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2022-09-18 07:27:56','2022-09-18 07:27:56'),(120,'create_shipment','Created shipment for order',0,29,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(121,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(122,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2022-09-17 13:27:56','2022-09-17 13:27:56'),(123,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2022-09-17 13:27:56','2022-09-17 13:27:56'),(124,'create_shipment','Created shipment for order',0,30,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(125,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(126,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2022-09-17 09:27:56','2022-09-17 09:27:56'),(127,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2022-09-17 09:27:56','2022-09-17 09:27:56'),(128,'create_shipment','Created shipment for order',0,31,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(129,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2022-09-20 17:27:56','2022-09-20 17:27:56'),(130,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2022-09-20 17:27:56','2022-09-20 17:27:56'),(131,'confirm_payment','Payment was confirmed (amount $258.30) by %user_name%',0,32,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(132,'create_shipment','Created shipment for order',0,32,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(133,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,32,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(134,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2022-09-21 11:27:56','2022-09-21 11:27:56'),(135,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2022-09-21 11:27:56','2022-09-21 11:27:56'),(136,'confirm_payment','Payment was confirmed (amount $387.50) by %user_name%',0,33,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(137,'create_shipment','Created shipment for order',0,33,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(138,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2022-09-19 17:27:56','2022-09-19 17:27:56'),(139,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2022-09-19 17:27:56','2022-09-19 17:27:56'),(140,'create_shipment','Created shipment for order',0,34,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(141,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2022-09-18 01:27:56','2022-09-18 01:27:56'),(142,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2022-09-18 01:27:56','2022-09-18 01:27:56'),(143,'confirm_payment','Payment was confirmed (amount $1,042.50) by %user_name%',0,35,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(144,'create_shipment','Created shipment for order',0,35,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(145,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2022-09-17 13:27:56','2022-09-17 13:27:56'),(146,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2022-09-17 13:27:56','2022-09-17 13:27:56'),(147,'confirm_payment','Payment was confirmed (amount $266.70) by %user_name%',0,36,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(148,'create_shipment','Created shipment for order',0,36,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(149,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2022-09-17 13:27:57','2022-09-17 13:27:57'),(150,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2022-09-17 13:27:57','2022-09-17 13:27:57'),(151,'confirm_payment','Payment was confirmed (amount $396.80) by %user_name%',0,37,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(152,'create_shipment','Created shipment for order',0,37,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(153,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,37,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(154,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2022-09-20 09:27:57','2022-09-20 09:27:57'),(155,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2022-09-20 09:27:57','2022-09-20 09:27:57'),(156,'confirm_payment','Payment was confirmed (amount $1,171.10) by %user_name%',0,38,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(157,'create_shipment','Created shipment for order',0,38,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(158,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,38,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(159,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2022-09-21 05:27:57','2022-09-21 05:27:57'),(160,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2022-09-21 05:27:57','2022-09-21 05:27:57'),(161,'create_shipment','Created shipment for order',0,39,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(162,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,39,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(163,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2022-09-19 01:27:57','2022-09-19 01:27:57'),(164,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2022-09-19 01:27:57','2022-09-19 01:27:57'),(165,'create_shipment','Created shipment for order',0,40,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(166,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,40,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(167,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2022-09-21 17:27:57','2022-09-21 17:27:57'),(168,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2022-09-21 17:27:57','2022-09-21 17:27:57'),(169,'confirm_payment','Payment was confirmed (amount $387.50) by %user_name%',0,41,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(170,'create_shipment','Created shipment for order',0,41,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(171,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,41,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(172,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2022-09-21 09:27:57','2022-09-21 09:27:57'),(173,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2022-09-21 09:27:57','2022-09-21 09:27:57'),(174,'confirm_payment','Payment was confirmed (amount $254.10) by %user_name%',0,42,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(175,'create_shipment','Created shipment for order',0,42,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(176,'create_order_from_seeder','Order is created from the checkout page',NULL,43,NULL,'2022-09-21 09:27:57','2022-09-21 09:27:57'),(177,'confirm_order','Order was verified by %user_name%',0,43,NULL,'2022-09-21 09:27:57','2022-09-21 09:27:57'),(178,'create_shipment','Created shipment for order',0,43,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(179,'create_order_from_seeder','Order is created from the checkout page',NULL,44,NULL,'2022-09-20 13:27:57','2022-09-20 13:27:57'),(180,'confirm_order','Order was verified by %user_name%',0,44,NULL,'2022-09-20 13:27:57','2022-09-20 13:27:57'),(181,'confirm_payment','Payment was confirmed (amount $262.50) by %user_name%',0,44,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(182,'create_shipment','Created shipment for order',0,44,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(183,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,44,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(184,'create_order_from_seeder','Order is created from the checkout page',NULL,45,NULL,'2022-09-21 19:27:57','2022-09-21 19:27:57'),(185,'confirm_order','Order was verified by %user_name%',0,45,NULL,'2022-09-21 19:27:57','2022-09-21 19:27:57'),(186,'create_shipment','Created shipment for order',0,45,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(187,'create_order_from_seeder','Order is created from the checkout page',NULL,46,NULL,'2022-09-21 13:27:57','2022-09-21 13:27:57'),(188,'confirm_order','Order was verified by %user_name%',0,46,NULL,'2022-09-21 13:27:57','2022-09-21 13:27:57'),(189,'confirm_payment','Payment was confirmed (amount $348.70) by %user_name%',0,46,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(190,'create_shipment','Created shipment for order',0,46,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(191,'create_order_from_seeder','Order is created from the checkout page',NULL,47,NULL,'2022-09-21 05:27:57','2022-09-21 05:27:57'),(192,'confirm_order','Order was verified by %user_name%',0,47,NULL,'2022-09-21 05:27:57','2022-09-21 05:27:57'),(193,'confirm_payment','Payment was confirmed (amount $610.60) by %user_name%',0,47,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(194,'create_shipment','Created shipment for order',0,47,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(195,'create_order_from_seeder','Order is created from the checkout page',NULL,48,NULL,'2022-09-21 11:27:57','2022-09-21 11:27:57'),(196,'confirm_order','Order was verified by %user_name%',0,48,NULL,'2022-09-21 11:27:57','2022-09-21 11:27:57'),(197,'confirm_payment','Payment was confirmed (amount $530.50) by %user_name%',0,48,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(198,'create_shipment','Created shipment for order',0,48,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(199,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,48,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(200,'create_order_from_seeder','Order is created from the checkout page',NULL,49,NULL,'2022-09-21 19:27:57','2022-09-21 19:27:57'),(201,'confirm_order','Order was verified by %user_name%',0,49,NULL,'2022-09-21 19:27:57','2022-09-21 19:27:57'),(202,'confirm_payment','Payment was confirmed (amount $537.60) by %user_name%',0,49,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(203,'create_shipment','Created shipment for order',0,49,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(204,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,49,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(205,'update_status','Order confirmed by %user_name%',0,1,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(206,'update_status','Order confirmed by %user_name%',0,3,NULL,'2022-09-22 01:27:58','2022-09-22 01:27:58'),(207,'update_status','Order confirmed by %user_name%',0,11,NULL,'2022-09-22 01:27:58','2022-09-22 01:27:58'),(208,'update_status','Order confirmed by %user_name%',0,15,NULL,'2022-09-22 01:27:58','2022-09-22 01:27:58'),(209,'update_status','Order confirmed by %user_name%',0,17,NULL,'2022-09-22 01:27:58','2022-09-22 01:27:58'),(210,'update_status','Order confirmed by %user_name%',0,21,NULL,'2022-09-22 01:27:59','2022-09-22 01:27:59'),(211,'update_status','Order confirmed by %user_name%',0,25,NULL,'2022-09-22 01:27:59','2022-09-22 01:27:59'),(212,'update_status','Order confirmed by %user_name%',0,26,NULL,'2022-09-22 01:27:59','2022-09-22 01:27:59'),(213,'update_status','Order confirmed by %user_name%',0,32,NULL,'2022-09-22 01:27:59','2022-09-22 01:27:59'),(214,'update_status','Order confirmed by %user_name%',0,37,NULL,'2022-09-22 01:28:00','2022-09-22 01:28:00'),(215,'update_status','Order confirmed by %user_name%',0,38,NULL,'2022-09-22 01:28:00','2022-09-22 01:28:00'),(216,'update_status','Order confirmed by %user_name%',0,41,NULL,'2022-09-22 01:28:00','2022-09-22 01:28:00'),(217,'update_status','Order confirmed by %user_name%',0,44,NULL,'2022-09-22 01:28:01','2022-09-22 01:28:01'),(218,'update_status','Order confirmed by %user_name%',0,48,NULL,'2022-09-22 01:28:02','2022-09-22 01:28:02'),(219,'update_status','Order confirmed by %user_name%',0,49,NULL,'2022-09-22 01:28:02','2022-09-22 01:28:02');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_id` int unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,2,393.00,39.30,'[]',26,'All Natural Italian-Style Chicken Meatballs',1134.00,0,'2022-09-22 01:27:41','2022-09-22 01:27:41','physical',0),(2,2,2,130.00,13.00,'[]',39,'Encore Seafoods Stuffed Alaskan',1680.00,0,'2022-09-22 01:27:43','2022-09-22 01:27:43','physical',0),(3,3,3,60.00,6.00,'[]',33,'Chobani Complete Vanilla Greek',2154.00,0,'2022-09-22 01:27:43','2022-09-22 01:27:43','physical',0),(4,4,1,115.00,11.50,'[]',43,'Gorton’s Beer Battered Fish Fillets',652.00,0,'2022-09-22 01:27:43','2022-09-22 01:27:43','physical',0),(5,4,2,128.00,12.80,'[]',65,'Foster Farms Takeout Crispy Classic Buffalo Wings',1396.00,0,'2022-09-22 01:27:43','2022-09-22 01:27:43','physical',0),(6,5,3,127.00,12.70,'[]',75,'Perdue Simply Smart Organics Gluten Free',2460.00,0,'2022-09-22 01:27:43','2022-09-22 01:27:43','physical',0),(7,6,3,78.00,7.80,'[]',30,'Foster Farms Takeout Crispy Classic',1851.00,0,'2022-09-22 01:27:43','2022-09-22 01:27:43','physical',0),(8,7,1,465.00,46.50,'[]',45,'Haagen-Dazs Caramel Cone Ice Cream',642.00,0,'2022-09-22 01:27:44','2022-09-22 01:27:44','physical',0),(9,7,1,126.00,12.60,'[]',53,'Pepperidge Farm Farmhouse Hearty White Bread',738.00,0,'2022-09-22 01:27:44','2022-09-22 01:27:44','physical',0),(10,8,3,127.00,12.70,'[]',47,'Nestle Original Coffee-Mate Coffee Creamer',2061.00,0,'2022-09-22 01:27:47','2022-09-22 01:27:47','physical',0),(11,9,3,126.00,12.60,'[]',54,'Pepperidge Farm Farmhouse Hearty White Bread',2214.00,0,'2022-09-22 01:27:47','2022-09-22 01:27:47','physical',0),(12,10,2,129.00,12.90,'[]',86,'Signature Wood-Fired Mushroom and Caramelized',1724.00,0,'2022-09-22 01:27:48','2022-09-22 01:27:48','physical',0),(13,11,1,127.00,12.70,'[]',47,'Nestle Original Coffee-Mate Coffee Creamer',687.00,0,'2022-09-22 01:27:49','2022-09-22 01:27:49','physical',0),(14,12,2,121.00,12.10,'[]',51,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',1644.00,0,'2022-09-22 01:27:50','2022-09-22 01:27:50','physical',0),(15,13,1,332.00,33.20,'[]',29,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',753.00,0,'2022-09-22 01:27:50','2022-09-22 01:27:50','physical',0),(16,13,2,130.00,13.00,'[]',85,'Colorful Banana',1002.00,0,'2022-09-22 01:27:50','2022-09-22 01:27:50','physical',0),(17,14,3,128.00,12.80,'[]',62,'Foster Farms Takeout Crispy Classic Buffalo Wings',2094.00,0,'2022-09-22 01:27:52','2022-09-22 01:27:52','physical',0),(18,14,2,114.00,11.40,'[]',67,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',1086.00,0,'2022-09-22 01:27:52','2022-09-22 01:27:52','physical',0),(19,15,1,125.00,12.50,'[]',36,'Canada Dry Ginger Ale – 2 L Bottle',844.00,0,'2022-09-22 01:27:54','2022-09-22 01:27:54','physical',0),(20,16,1,121.00,12.10,'[]',59,'Oroweat Country Buttermilk Bread',864.00,0,'2022-09-22 01:27:55','2022-09-22 01:27:55','physical',0),(21,17,1,114.00,11.40,'[]',68,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',543.00,0,'2022-09-22 01:27:55','2022-09-22 01:27:55','physical',0),(22,18,1,78.00,7.80,'[]',30,'Foster Farms Takeout Crispy Classic',617.00,0,'2022-09-22 01:27:55','2022-09-22 01:27:55','physical',0),(23,19,2,126.00,12.60,'[]',54,'Pepperidge Farm Farmhouse Hearty White Bread',1476.00,0,'2022-09-22 01:27:55','2022-09-22 01:27:55','physical',0),(24,20,3,128.00,12.80,'[]',66,'Foster Farms Takeout Crispy Classic Buffalo Wings',2094.00,0,'2022-09-22 01:27:55','2022-09-22 01:27:55','physical',0),(25,21,1,125.00,12.50,'[]',72,'Simply Lemonade with Raspberry Juice',847.00,0,'2022-09-22 01:27:55','2022-09-22 01:27:55','physical',0),(26,22,2,129.00,12.90,'[]',76,'Chen Watermelon',1316.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','physical',0),(27,22,2,129.00,12.90,'[]',86,'Signature Wood-Fired Mushroom and Caramelized',1724.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','physical',0),(28,23,2,125.00,12.50,'[]',57,'Organic Frozen Triple Berry Blend',1292.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','physical',0),(29,24,1,129.00,12.90,'[]',76,'Chen Watermelon',658.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','physical',0),(30,25,3,126.00,12.60,'[]',53,'Pepperidge Farm Farmhouse Hearty White Bread',2214.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','physical',0),(31,26,1,114.00,11.40,'[]',67,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',543.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','physical',0),(32,27,1,129.00,12.90,'[]',87,'Signature Wood-Fired Mushroom and Caramelized',862.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','physical',0),(33,28,2,115.00,11.50,'[]',44,'Gorton’s Beer Battered Fish Fillets',1304.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','physical',0),(34,29,2,126.00,12.60,'[]',54,'Pepperidge Farm Farmhouse Hearty White Bread',1476.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','physical',0),(35,30,2,123.00,12.30,'[]',80,'Organic Cage-Free Grade A Large Brown Eggs',1744.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','physical',0),(36,31,2,128.00,12.80,'[]',62,'Foster Farms Takeout Crispy Classic Buffalo Wings',1396.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','physical',0),(37,31,2,128.00,12.80,'[]',63,'Foster Farms Takeout Crispy Classic Buffalo Wings',1396.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','physical',0),(38,32,2,123.00,12.30,'[]',81,'Organic Cage-Free Grade A Large Brown Eggs',1744.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','physical',0),(39,33,3,125.00,12.50,'[]',35,'Canada Dry Ginger Ale – 2 L Bottle',2532.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','physical',0),(40,34,1,123.00,12.30,'[]',80,'Organic Cage-Free Grade A Large Brown Eggs',872.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','physical',0),(41,35,1,60.00,6.00,'[]',33,'Chobani Complete Vanilla Greek',718.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','physical',0),(42,35,2,465.00,46.50,'[]',46,'Haagen-Dazs Caramel Cone Ice Cream',1284.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','physical',0),(43,36,2,127.00,12.70,'[]',48,'Nestle Original Coffee-Mate Coffee Creamer',1374.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','physical',0),(44,37,3,128.00,12.80,'[]',63,'Foster Farms Takeout Crispy Classic Buffalo Wings',2094.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','physical',0),(45,38,3,332.00,33.20,'[]',28,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',2259.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','physical',0),(46,38,1,129.00,12.90,'[]',86,'Signature Wood-Fired Mushroom and Caramelized',862.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','physical',0),(47,39,3,126.00,12.60,'[]',53,'Pepperidge Farm Farmhouse Hearty White Bread',2214.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','physical',0),(48,40,1,393.00,39.30,'[]',26,'All Natural Italian-Style Chicken Meatballs',567.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','physical',0),(49,41,3,125.00,12.50,'[]',36,'Canada Dry Ginger Ale – 2 L Bottle',2532.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','physical',0),(50,42,2,121.00,12.10,'[]',50,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',1644.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','physical',0),(51,43,1,129.00,12.90,'[]',87,'Signature Wood-Fired Mushroom and Caramelized',862.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','physical',0),(52,44,2,125.00,12.50,'[]',36,'Canada Dry Ginger Ale – 2 L Bottle',1688.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','physical',0),(53,45,2,127.00,12.70,'[]',48,'Nestle Original Coffee-Mate Coffee Creamer',1374.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','physical',0),(54,45,1,129.00,12.90,'[]',79,'Chen Watermelon',658.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','physical',0),(55,45,2,129.00,12.90,'[]',88,'Signature Wood-Fired Mushroom and Caramelized',1724.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','physical',0),(56,46,1,317.00,31.70,'[]',25,'Seeds of Change Organic Quinoe',551.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','physical',0),(57,47,3,115.00,11.50,'[]',42,'Gorton’s Beer Battered Fish Fillets',1956.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','physical',0),(58,47,2,121.00,12.10,'[]',52,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',1644.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','physical',0),(59,48,3,125.00,12.50,'[]',34,'Canada Dry Ginger Ale – 2 L Bottle',2532.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','physical',0),(60,48,1,130.00,13.00,'[]',39,'Encore Seafoods Stuffed Alaskan',840.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','physical',0),(61,49,2,128.00,12.80,'[]',62,'Foster Farms Takeout Crispy Classic Buffalo Wings',1396.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','physical',0),(62,49,2,128.00,12.80,'[]',66,'Foster Farms Takeout Crispy Classic Buffalo Wings',1396.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','physical',0);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` int unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` int unsigned NOT NULL COMMENT 'Order product id',
  `product_id` int unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL COMMENT 'Order ID',
  `store_id` int unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` int unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,1,'1','default','completed',825.30,39.30,0.00,NULL,NULL,0.00,786.00,1,NULL,1,'2022-09-22 01:27:57','4ESOZzGNz2jo2OLkowA8TvuR7I2i9',1,'2022-09-13 17:27:41','2022-09-22 01:27:57',5),(2,1,'1','default','completed',273.00,13.00,0.00,NULL,NULL,0.00,260.00,1,NULL,1,'2022-09-22 01:27:43','4AuGd2W5Hq8mVB5wmTn6rgFrwB0iM',2,'2022-09-18 17:27:43','2022-09-22 01:27:43',3),(3,5,'1','default','completed',186.00,6.00,0.00,NULL,NULL,0.00,180.00,1,NULL,1,'2022-09-22 01:27:58','MfyJQB0h1viPaSwpFO9Y2dhkqhxUO',3,'2022-09-20 11:27:43','2022-09-22 01:27:58',2),(4,5,'1','default','pending',395.30,24.30,0.00,NULL,NULL,0.00,371.00,1,NULL,1,NULL,'eZ5nyIvubkWJuYIYyt0I0kXtqnX4h',4,'2022-09-18 21:27:43','2022-09-22 01:27:43',4),(5,5,'1','default','completed',393.70,12.70,0.00,NULL,NULL,0.00,381.00,1,NULL,1,'2022-09-22 01:27:43','tolGdKg7kElOcbLsRVPH06Iy93qXA',5,'2022-09-09 09:27:43','2022-09-22 01:27:43',6),(6,6,'1','default','pending',241.80,7.80,0.00,NULL,NULL,0.00,234.00,1,NULL,1,NULL,'dcjgjyPAItvLE8SU3cxfNd6BzMVL2',6,'2022-09-19 01:27:43','2022-09-22 01:27:43',4),(7,6,'1','default','pending',650.10,59.10,0.00,NULL,NULL,0.00,591.00,1,NULL,1,NULL,'IbVWLVjILPBzrJjloV7bpgyzoIDtE',7,'2022-09-19 01:27:44','2022-09-22 01:27:47',2),(8,6,'1','default','completed',393.70,12.70,0.00,NULL,NULL,0.00,381.00,1,NULL,1,'2022-09-22 01:27:47','bd1dByDMetY8qB3dwODfYSKyHfVhN',8,'2022-09-08 13:27:47','2022-09-22 01:27:47',1),(9,1,'1','default','completed',390.60,12.60,0.00,NULL,NULL,0.00,378.00,1,NULL,1,'2022-09-22 01:27:48','6xehUmf3wfVeekEDmyu8W0qmAh3Fn',9,'2022-09-09 07:27:47','2022-09-22 01:27:48',2),(10,1,'1','default','completed',270.90,12.90,0.00,NULL,NULL,0.00,258.00,1,NULL,1,'2022-09-22 01:27:49','RfF3eFaaecZUGyes49drY1ig7gv0V',10,'2022-09-07 21:27:48','2022-09-22 01:27:49',1),(11,5,'1','default','completed',139.70,12.70,0.00,NULL,NULL,0.00,127.00,1,NULL,1,'2022-09-22 01:27:58','jLX7mAmHrDlVuWjgSD5IdnCWf5p7v',11,'2022-09-14 01:27:49','2022-09-22 01:27:58',1),(12,5,'1','default','pending',254.10,12.10,0.00,NULL,NULL,0.00,242.00,1,NULL,1,NULL,'JnXeWwJDaEZFeplKFlC9Krcfyy0XK',12,'2022-09-16 17:27:50','2022-09-22 01:27:50',4),(13,1,'1','default','pending',638.20,46.20,0.00,NULL,NULL,0.00,592.00,1,NULL,1,NULL,'g5uzXvjNJJzEaImRQgO1rf61B38Xo',13,'2022-09-19 13:27:50','2022-09-22 01:27:50',1),(14,1,'1','default','completed',636.20,24.20,0.00,NULL,NULL,0.00,612.00,1,NULL,1,'2022-09-22 01:27:54','VUCsvqN91bn2gK02i72KMghDiDSqk',14,'2022-09-15 19:27:51','2022-09-22 01:27:54',4),(15,1,'1','default','completed',137.50,12.50,0.00,NULL,NULL,0.00,125.00,1,NULL,1,'2022-09-22 01:27:58','XMeeSDbxIa6ZtCKwqDQfJp7IcphDi',15,'2022-09-17 09:27:54','2022-09-22 01:27:58',3),(16,1,'1','default','pending',133.10,12.10,0.00,NULL,NULL,0.00,121.00,1,NULL,1,NULL,'LhRRBOmMUlTVuQQkRfi4UPQ6adGZa',16,'2022-09-16 05:27:55','2022-09-22 01:27:55',5),(17,1,'1','default','completed',125.40,11.40,0.00,NULL,NULL,0.00,114.00,1,NULL,1,'2022-09-22 01:27:58','feuqsv0362i3TItmYFVVCj4saPuy0',17,'2022-09-18 13:27:55','2022-09-22 01:27:58',4),(18,1,'1','default','pending',85.80,7.80,0.00,NULL,NULL,0.00,78.00,1,NULL,1,NULL,'wc83aiYSwxgpMarejwLxf4rD5SqtL',18,'2022-09-16 15:27:55','2022-09-22 01:27:55',4),(19,1,'1','default','pending',264.60,12.60,0.00,NULL,NULL,0.00,252.00,1,NULL,1,NULL,'Zyu76z4U5rfthnuqgJJbKfItJz6eO',19,'2022-09-11 05:27:55','2022-09-22 01:27:55',2),(20,5,'1','default','pending',396.80,12.80,0.00,NULL,NULL,0.00,384.00,1,NULL,1,NULL,'ZjVMB4IMpcBzb10GzYKiUTVX5M83T',20,'2022-09-19 01:27:55','2022-09-22 01:27:55',4),(21,5,'1','default','completed',137.50,12.50,0.00,NULL,NULL,0.00,125.00,1,NULL,1,'2022-09-22 01:27:59','vKW31nHUfvRt6UEMRp0dRA5ml0yqd',21,'2022-09-20 01:27:55','2022-09-22 01:27:59',5),(22,5,'1','default','pending',541.80,25.80,0.00,NULL,NULL,0.00,516.00,1,NULL,1,NULL,'EiMxUdUMFMMbnTMgFNfyrkn7XjpuN',22,'2022-09-17 01:27:56','2022-09-22 01:27:56',1),(23,1,'1','default','completed',262.50,12.50,0.00,NULL,NULL,0.00,250.00,1,NULL,1,'2022-09-22 01:27:56','sVeH11xac7KsVZbmA0vYap4ZOSAU9',23,'2022-09-14 17:27:56','2022-09-22 01:27:56',2),(24,1,'1','default','completed',141.90,12.90,0.00,NULL,NULL,0.00,129.00,1,NULL,1,'2022-09-22 01:27:56','xenZtgxf4ZDJknECEl5Nvm9yn9QLx',24,'2022-09-13 19:27:56','2022-09-22 01:27:56',1),(25,1,'1','default','completed',390.60,12.60,0.00,NULL,NULL,0.00,378.00,1,NULL,1,'2022-09-22 01:27:59','nq2XzhYL3ijYIzGrDOYim4KI0Zgy9',25,'2022-09-15 09:27:56','2022-09-22 01:27:59',2),(26,1,'1','default','completed',125.40,11.40,0.00,NULL,NULL,0.00,114.00,1,NULL,1,'2022-09-22 01:27:59','x5NWjrxkElLjOIDJqhkLmWQXt8XYu',26,'2022-09-18 17:27:56','2022-09-22 01:27:59',4),(27,1,'1','default','pending',141.90,12.90,0.00,NULL,NULL,0.00,129.00,1,NULL,1,NULL,'jAoQhYlXyUY9sK94SKrvqqqrEoB1k',27,'2022-09-15 09:27:56','2022-09-22 01:27:56',1),(28,5,'1','default','pending',241.50,11.50,0.00,NULL,NULL,0.00,230.00,1,NULL,1,NULL,'Wlt2Z1eWb57LRIZBAPfYYnUTuyYji',28,'2022-09-16 01:27:56','2022-09-22 01:27:56',4),(29,5,'1','default','completed',264.60,12.60,0.00,NULL,NULL,0.00,252.00,1,NULL,1,'2022-09-22 01:27:56','o0rYRBZwMSh4ZO0ObSe8PiVPY1YEu',29,'2022-09-18 07:27:56','2022-09-22 01:27:56',2),(30,5,'1','default','completed',258.30,12.30,0.00,NULL,NULL,0.00,246.00,1,NULL,1,'2022-09-22 01:27:56','K0ona4x2UOJRMgU6oZfivw5hgMvRf',30,'2022-09-17 13:27:56','2022-09-22 01:27:56',6),(31,5,'1','default','pending',537.60,25.60,0.00,NULL,NULL,0.00,512.00,1,NULL,1,NULL,'C9GY6zCis8ePOHeoh7WjUS7LbpzlW',31,'2022-09-17 09:27:56','2022-09-22 01:27:56',4),(32,5,'1','default','completed',258.30,12.30,0.00,NULL,NULL,0.00,246.00,1,NULL,1,'2022-09-22 01:27:59','bWp6MEJRveexYUf9FnQRz5BMl69Wp',32,'2022-09-20 17:27:56','2022-09-22 01:27:59',6),(33,1,'1','default','pending',387.50,12.50,0.00,NULL,NULL,0.00,375.00,1,NULL,1,NULL,'Uia32KKQcpTo863iTnI7z3qi7cbcw',33,'2022-09-21 11:27:56','2022-09-22 01:27:56',3),(34,1,'1','default','pending',135.30,12.30,0.00,NULL,NULL,0.00,123.00,1,NULL,1,NULL,'ZdyyWZYw8rTVzqjfFOj0EePiucZw2',34,'2022-09-19 17:27:56','2022-09-22 01:27:56',6),(35,5,'1','default','pending',1042.50,52.50,0.00,NULL,NULL,0.00,990.00,1,NULL,1,NULL,'nLQllc2EnVkqgwY2wwQygoCzxYWS1',35,'2022-09-18 01:27:56','2022-09-22 01:27:56',2),(36,5,'1','default','pending',266.70,12.70,0.00,NULL,NULL,0.00,254.00,1,NULL,1,NULL,'iPDPoZKBSd4vPJgCbTJYmet5C8p3U',36,'2022-09-17 13:27:56','2022-09-22 01:27:57',1),(37,5,'1','default','completed',396.80,12.80,0.00,NULL,NULL,0.00,384.00,1,NULL,1,'2022-09-22 01:28:00','EHg0XZDpfzs6Flm5QprVvH1esjTkO',37,'2022-09-17 13:27:57','2022-09-22 01:28:00',4),(38,5,'1','default','completed',1171.10,46.10,0.00,NULL,NULL,0.00,1125.00,1,NULL,1,'2022-09-22 01:28:00','mAxWtyTs2sL8Yz7asGxa8vPrt0Pqr',38,'2022-09-20 09:27:57','2022-09-22 01:28:00',1),(39,5,'1','default','completed',390.60,12.60,0.00,NULL,NULL,0.00,378.00,1,NULL,1,'2022-09-22 01:27:57','mdkB9TZ3vqZwlgV3loo0X9A7AmDXv',39,'2022-09-21 05:27:57','2022-09-22 01:27:57',2),(40,5,'1','default','completed',432.30,39.30,0.00,NULL,NULL,0.00,393.00,1,NULL,1,'2022-09-22 01:27:57','yJucS16c7REcmGsLyKzhvnOpLvd88',40,'2022-09-19 01:27:57','2022-09-22 01:27:57',5),(41,5,'1','default','completed',387.50,12.50,0.00,NULL,NULL,0.00,375.00,1,NULL,1,'2022-09-22 01:28:00','x8QZvlkp0jOBnxCIk3oBSSw66ObaR',41,'2022-09-21 17:27:57','2022-09-22 01:28:00',3),(42,5,'1','default','pending',254.10,12.10,0.00,NULL,NULL,0.00,242.00,1,NULL,1,NULL,'w3O7cacZjWKjxVL1h3u5WKWZVmrN4',42,'2022-09-21 09:27:57','2022-09-22 01:27:57',4),(43,5,'1','default','pending',141.90,12.90,0.00,NULL,NULL,0.00,129.00,1,NULL,1,NULL,'rhAXetHpsPvnlE9scxMGZiMwFiWqZ',43,'2022-09-21 09:27:57','2022-09-22 01:27:57',1),(44,1,'1','default','completed',262.50,12.50,0.00,NULL,NULL,0.00,250.00,1,NULL,1,'2022-09-22 01:28:01','SWjUEFx7RozRQek8wJDDWIALi75LG',44,'2022-09-20 13:27:57','2022-09-22 01:28:01',3),(45,1,'1','default','pending',679.50,38.50,0.00,NULL,NULL,0.00,641.00,1,NULL,1,NULL,'AkZW7h1OjVHbSn15VYdrnnkPh5D57',45,'2022-09-21 19:27:57','2022-09-22 01:27:57',1),(46,5,'1','default','pending',348.70,31.70,0.00,NULL,NULL,0.00,317.00,1,NULL,1,NULL,'Nt0dwWw839Kfu5QnJ6k7deEK9QNUs',46,'2022-09-21 13:27:57','2022-09-22 01:27:57',5),(47,5,'1','default','pending',610.60,23.60,0.00,NULL,NULL,0.00,587.00,1,NULL,1,NULL,'Bf0y185T4RP9ELlN9gWQnxX9yVTqC',47,'2022-09-21 05:27:57','2022-09-22 01:27:57',4),(48,1,'1','default','completed',530.50,25.50,0.00,NULL,NULL,0.00,505.00,1,NULL,1,'2022-09-22 01:28:02','eTmGcaLGSY4b2tWy0be0WcDO10Cnv',48,'2022-09-21 11:27:57','2022-09-22 01:28:02',3),(49,1,'1','default','completed',537.60,25.60,0.00,NULL,NULL,0.00,512.00,1,NULL,1,'2022-09-22 01:28:02','MyyUxLnY6oTcVYx0YUeijho0cEN4o',49,'2022-09-21 19:27:57','2022-09-22 01:28:02',4);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Weight','weight','text',1,1,1,'published',0,'2022-09-22 01:25:37','2022-09-22 01:25:37',0),(2,'Boxes','boxes','text',1,1,1,'published',1,'2022-09-22 01:25:37','2022-09-22 01:25:37',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets_translations` VALUES ('vi',1,'Cân nặng'),('vi',2,'Số hộp');
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_attributes_attribute_set_id_status_index` (`attribute_set_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'1KG','1kg',NULL,NULL,1,1,'published','2022-09-22 01:25:37','2022-09-22 01:25:37'),(2,1,'2KG','2kg',NULL,NULL,0,2,'published','2022-09-22 01:25:37','2022-09-22 01:25:37'),(3,1,'3KG','3kg',NULL,NULL,0,3,'published','2022-09-22 01:25:37','2022-09-22 01:25:37'),(4,1,'4KG','4kg',NULL,NULL,0,4,'published','2022-09-22 01:25:37','2022-09-22 01:25:37'),(5,1,'5KG','5kg',NULL,NULL,0,5,'published','2022-09-22 01:25:37','2022-09-22 01:25:37'),(6,2,'1 Box','1box',NULL,NULL,1,1,'published','2022-09-22 01:25:37','2022-09-22 01:25:37'),(7,2,'2 Boxes','2boxes',NULL,NULL,0,2,'published','2022-09-22 01:25:37','2022-09-22 01:25:37'),(8,2,'3 Boxes','3boxes',NULL,NULL,0,3,'published','2022-09-22 01:25:37','2022-09-22 01:25:37'),(9,2,'4 Boxes','4boxes',NULL,NULL,0,4,'published','2022-09-22 01:25:37','2022-09-22 01:25:37'),(10,2,'5 Boxes','5boxes',NULL,NULL,0,5,'published','2022-09-22 01:25:37','2022-09-22 01:25:37');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attributes_translations` VALUES ('vi',1,'1KG'),('vi',2,'2KG'),('vi',3,'3KG'),('vi',4,'4KG'),('vi',5,'5KG'),('vi',6,'1 Hộp'),('vi',7,'2 Hộp'),('vi',8,'3 Hộp'),('vi',9,'4 Hộp'),('vi',10,'5 Hộp');
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Milks and Dairies',0,NULL,'published',0,'product-categories/image-1.png',1,'2022-09-22 01:25:36','2022-09-22 01:25:36'),(2,'Clothing & beauty',0,NULL,'published',1,'product-categories/image-2.png',1,'2022-09-22 01:25:36','2022-09-22 01:25:36'),(3,'Pet Toy',0,NULL,'published',2,'product-categories/image-3.png',1,'2022-09-22 01:25:36','2022-09-22 01:25:36'),(4,'Baking material',0,NULL,'published',3,'product-categories/image-4.png',1,'2022-09-22 01:25:36','2022-09-22 01:25:36'),(5,'Fresh Fruit',0,NULL,'published',4,'product-categories/image-5.png',1,'2022-09-22 01:25:36','2022-09-22 01:25:36'),(6,'Wines & Drinks',0,NULL,'published',5,'product-categories/image-6.png',1,'2022-09-22 01:25:36','2022-09-22 01:25:36'),(7,'Fresh Seafood',0,NULL,'published',6,'product-categories/image-7.png',1,'2022-09-22 01:25:36','2022-09-22 01:25:36'),(8,'Fast food',0,NULL,'published',7,'product-categories/image-8.png',1,'2022-09-22 01:25:36','2022-09-22 01:25:36'),(9,'Vegetables',0,NULL,'published',8,'product-categories/image-9.png',1,'2022-09-22 01:25:36','2022-09-22 01:25:36'),(10,'Bread and Juice',0,NULL,'published',9,'product-categories/image-10.png',1,'2022-09-22 01:25:36','2022-09-22 01:25:36'),(11,'Cake & Milk',0,NULL,'published',10,'product-categories/image-11.png',1,'2022-09-22 01:25:36','2022-09-22 01:25:36'),(12,'Coffee & Teas',0,NULL,'published',11,'product-categories/image-12.png',1,'2022-09-22 01:25:36','2022-09-22 01:25:36'),(13,'Pet Foods',0,NULL,'published',12,'product-categories/image-13.png',0,'2022-09-22 01:25:36','2022-09-22 01:25:36'),(14,'Diet Foods',0,NULL,'published',13,'product-categories/image-14.png',0,'2022-09-22 01:25:36','2022-09-22 01:25:36');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
INSERT INTO `ec_product_categories_translations` VALUES ('vi',1,'Sữa',NULL),('vi',2,'Quần áo và làm đẹp',NULL),('vi',3,'Đồ chơi thú cưng',NULL),('vi',4,'Nguyên liệu làm bánh',NULL),('vi',5,'Trái cây tươi',NULL),('vi',6,'Rượu & Đồ uống',NULL),('vi',7,'Hải sản tươi sống',NULL),('vi',8,'Đồ ăn nhanh',NULL),('vi',9,'Rau',NULL),('vi',10,'Bánh và đồ uống',NULL),('vi',11,'Bánh và sữa',NULL),('vi',12,'Cà phê và trà',NULL),('vi',13,'Đồ ăn thú nuôi',NULL),('vi',14,'Đồ ăn kiêng',NULL);
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,11,1),(2,2,2),(3,4,3),(4,2,4),(5,1,5),(6,3,6),(7,14,7),(8,5,8),(9,9,9),(10,1,10),(11,11,11),(12,1,12),(13,14,13),(14,4,14),(15,11,15),(16,3,16),(17,7,17),(18,1,18),(19,13,19),(20,8,20),(21,8,21),(22,11,22),(23,9,23),(24,6,24);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_collection_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,2,1),(2,3,2),(3,2,3),(4,1,4),(5,2,5),(6,3,6),(7,1,7),(8,3,8),(9,2,9),(10,2,10),(11,2,11),(12,3,12),(13,1,13),(14,2,14),(15,3,15),(16,1,16),(17,3,17),(18,2,18),(19,2,19),(20,1,20),(21,2,21),(22,3,22),(23,3,23),(24,1,24);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2022-09-22 01:25:36','2022-09-22 01:25:36',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2022-09-22 01:25:36','2022-09-22 01:25:36',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2022-09-22 01:25:36','2022-09-22 01:25:36',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
INSERT INTO `ec_product_collections_translations` VALUES ('vi',1,'Hàng mới về',NULL),('vi',2,'Bán chạy nhất',NULL),('vi',3,'Khuyến mãi đặc biệt',NULL);
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,1,21),(2,1,6),(3,1,4),(4,2,12),(5,2,23),(6,2,22),(7,2,3),(8,3,20),(9,3,12),(10,3,6),(11,3,23),(12,4,5),(13,4,6),(14,4,7),(15,5,14),(16,5,20),(17,5,8),(18,5,1),(19,6,4),(20,6,13),(21,6,2),(22,6,10),(23,7,23),(24,7,19),(25,7,18),(26,7,16),(27,8,10),(28,8,4),(29,8,5),(30,8,19),(31,9,19),(32,9,18),(33,9,4),(34,9,20),(35,10,23),(36,10,15),(37,10,6),(38,10,13),(39,11,17),(40,11,13),(41,11,19),(42,12,10),(43,12,4),(44,12,8),(45,12,3),(46,13,23),(47,13,3),(48,13,1),(49,13,20),(50,14,11),(51,14,9),(52,14,2),(53,14,21),(54,15,18),(55,15,10),(56,15,21),(57,16,4),(58,16,8),(59,16,1),(60,16,12),(61,17,14),(62,17,16),(63,17,4),(64,17,9),(65,18,11),(66,18,2),(67,18,6),(68,19,14),(69,19,4),(70,19,13),(71,19,15),(72,20,21),(73,20,22),(74,20,23),(75,20,12),(76,21,5),(77,21,14),(78,21,2),(79,21,3),(80,22,20),(81,22,12),(82,22,9),(83,22,13),(84,23,8),(85,23,19),(86,23,10),(87,23,4),(88,24,1),(89,24,12),(90,24,21),(91,24,14);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (2,14),(2,21),(3,7);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2022-09-22 01:25:36','2022-09-22 01:25:36'),(2,'New','#00c9a7','published','2022-09-22 01:25:36','2022-09-22 01:25:36'),(3,'Sale','#fe9931','published','2022-09-22 01:25:36','2022-09-22 01:25:36');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
INSERT INTO `ec_product_labels_translations` VALUES ('vi',1,'Nổi bật',NULL),('vi',2,'Mới',NULL),('vi',3,'Giảm giá',NULL);
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` int unsigned NOT NULL,
  `tag_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,2),(1,5),(2,1),(2,5),(3,2),(3,5),(3,6),(4,2),(4,3),(4,4),(5,4),(5,6),(6,1),(6,5),(6,6),(7,1),(7,4),(8,1),(8,6),(9,2),(9,6),(10,3),(10,4),(10,6),(11,4),(11,5),(12,1),(12,3),(13,2),(13,3),(13,5),(14,1),(14,3),(15,2),(15,5),(15,6),(16,3),(16,6),(17,1),(17,3),(17,6),(18,2),(18,4),(18,6),(19,4),(19,5),(20,2),(20,5),(21,1),(21,5),(21,6),(22,2),(22,5),(22,6),(23,1),(23,2),(23,5),(24,4),(24,6);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Wallet',NULL,'published','2022-09-22 01:25:36','2022-09-22 01:25:36'),(2,'Bags',NULL,'published','2022-09-22 01:25:36','2022-09-22 01:25:36'),(3,'Shoes',NULL,'published','2022-09-22 01:25:36','2022-09-22 01:25:36'),(4,'Clothes',NULL,'published','2022-09-22 01:25:36','2022-09-22 01:25:36'),(5,'Hand bag',NULL,'published','2022-09-22 01:25:36','2022-09-22 01:25:36');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int unsigned NOT NULL,
  `variation_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_variation_items_attribute_id_variation_id_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (7,1,4),(19,1,10),(27,1,14),(45,1,23),(51,1,26),(59,1,30),(67,1,34),(77,1,39),(117,1,59),(9,2,5),(11,2,6),(15,2,8),(23,2,12),(25,2,13),(31,2,16),(33,2,17),(35,2,18),(41,2,21),(43,2,22),(49,2,25),(63,2,32),(65,2,33),(73,2,37),(83,2,42),(87,2,44),(89,2,45),(91,2,46),(93,2,47),(95,2,48),(101,2,51),(103,2,52),(113,2,57),(115,2,58),(3,3,2),(13,3,7),(17,3,9),(21,3,11),(37,3,19),(57,3,29),(71,3,36),(85,3,43),(99,3,50),(105,3,53),(125,3,63),(129,3,65),(1,4,1),(5,4,3),(39,4,20),(53,4,27),(61,4,31),(75,4,38),(79,4,40),(81,4,41),(109,4,55),(119,4,60),(29,5,15),(47,5,24),(55,5,28),(69,5,35),(97,5,49),(107,5,54),(111,5,56),(121,5,61),(123,5,62),(127,5,64),(2,6,1),(4,6,2),(6,6,3),(14,6,7),(26,6,13),(28,6,14),(60,6,30),(62,6,31),(72,6,36),(76,6,38),(96,6,48),(98,6,49),(114,6,57),(120,6,60),(20,7,10),(30,7,15),(34,7,17),(46,7,23),(70,7,35),(82,7,41),(88,7,44),(92,7,46),(102,7,51),(106,7,53),(108,7,54),(112,7,56),(8,8,4),(32,8,16),(36,8,18),(40,8,20),(50,8,25),(56,8,28),(68,8,34),(90,8,45),(10,9,5),(16,9,8),(18,9,9),(24,9,12),(38,9,19),(44,9,22),(48,9,24),(52,9,26),(58,9,29),(64,9,32),(66,9,33),(80,9,40),(86,9,43),(100,9,50),(104,9,52),(110,9,55),(118,9,59),(126,9,63),(12,10,6),(22,10,11),(42,10,21),(54,10,27),(74,10,37),(78,10,39),(84,10,42),(94,10,47),(116,10,58),(122,10,61),(124,10,62),(128,10,64),(130,10,65);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned DEFAULT NULL,
  `configurable_product_id` int unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_product_variations_product_id_configurable_product_id_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,25,1,1),(2,26,2,1),(3,27,2,0),(4,28,3,1),(5,29,3,0),(6,30,4,1),(7,31,4,0),(8,32,5,1),(9,33,6,1),(10,34,7,1),(11,35,7,0),(12,36,7,0),(13,37,8,1),(14,38,8,0),(15,39,8,0),(16,40,8,0),(17,41,9,1),(18,42,9,0),(19,43,9,0),(20,44,9,0),(21,45,10,1),(22,46,10,0),(23,47,11,1),(24,48,11,0),(25,49,11,0),(26,50,12,1),(27,51,12,0),(28,52,12,0),(29,53,13,1),(30,54,13,0),(31,55,14,1),(32,56,14,0),(33,57,14,0),(34,58,14,0),(35,59,15,1),(36,60,15,0),(37,61,15,0),(38,62,16,1),(39,63,16,0),(40,64,16,0),(41,65,16,0),(42,66,16,0),(43,67,17,1),(44,68,17,0),(45,69,17,0),(46,70,18,1),(47,71,18,0),(48,72,19,1),(49,73,20,1),(50,74,20,0),(51,75,20,0),(52,76,21,1),(53,77,21,0),(54,78,21,0),(55,79,21,0),(56,80,22,1),(57,81,22,0),(58,82,22,0),(59,83,23,1),(60,84,23,0),(61,85,23,0),(62,86,24,1),(63,87,24,0),(64,88,24,0),(65,89,24,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,1,0),(2,2,1,0),(3,1,2,0),(4,2,2,0),(5,1,3,0),(6,2,3,0),(7,1,4,0),(8,2,4,0),(9,1,5,0),(10,2,5,0),(11,1,6,0),(12,2,6,0),(13,1,7,0),(14,2,7,0),(15,1,8,0),(16,2,8,0),(17,1,9,0),(18,2,9,0),(19,1,10,0),(20,2,10,0),(21,1,11,0),(22,2,11,0),(23,1,12,0),(24,2,12,0),(25,1,13,0),(26,2,13,0),(27,1,14,0),(28,2,14,0),(29,1,15,0),(30,2,15,0),(31,1,16,0),(32,2,16,0),(33,1,17,0),(34,2,17,0),(35,1,18,0),(36,2,18,0),(37,1,19,0),(38,2,19,0),(39,1,20,0),(40,2,20,0),(41,1,21,0),(42,2,21,0),(43,1,22,0),(44,2,22,0),(45,1,23,0),(46,2,23,0),(47,1,24,0),(48,2,24,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` int unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` int unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` int DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `store_id` int unsigned DEFAULT NULL,
  `approved_by` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `ec_products_sale_type_index` (`sale_type`),
  KEY `ec_products_start_date_index` (`start_date`),
  KEY `ec_products_end_date_index` (`end_date`),
  KEY `ec_products_sale_price_index` (`sale_price`),
  KEY `ec_products_is_variation_index` (`is_variation`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Seeds of Change Organic Quinoe','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\",\"products\\/1-1.jpg\"]','HS-186-A0',0,11,0,1,1,1,0,0,317,NULL,NULL,NULL,20.00,10.00,15.00,551.00,1,107575,'2022-09-22 01:25:59','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',5,0),(2,'All Natural Italian-Style Chicken Meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\"]','HS-101-A0',0,19,0,1,1,5,0,0,393,NULL,NULL,NULL,12.00,15.00,19.00,567.00,1,163328,'2022-09-22 01:25:59','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',5,0),(3,'Angie’s Boomchickapop Sweet & Salty Kettle Corn','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\",\"products\\/3-1.jpg\"]','HS-113-A0',0,10,0,1,1,7,0,0,332,NULL,NULL,NULL,12.00,15.00,16.00,753.00,1,182866,'2022-09-22 01:26:00','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',1,0),(4,'Foster Farms Takeout Crispy Classic','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\"]','HS-174-A0',0,16,0,1,1,7,0,0,78,70.2,NULL,NULL,20.00,19.00,19.00,617.00,1,103149,'2022-09-22 01:26:00','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',4,0),(5,'Blue Diamond Almonds Lightly','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\"]','HS-123-A0',0,17,0,1,1,3,0,0,47,NULL,NULL,NULL,11.00,15.00,14.00,734.00,1,138582,'2022-09-22 01:26:00','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',2,0),(6,'Chobani Complete Vanilla Greek','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]','HS-113-A0',0,10,0,1,1,3,0,0,60,NULL,NULL,NULL,20.00,20.00,13.00,718.00,1,78419,'2022-09-22 01:26:00','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',2,0),(7,'Canada Dry Ginger Ale – 2 L Bottle','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]','HS-129-A0',0,18,0,1,1,4,0,0,125,NULL,NULL,NULL,17.00,20.00,16.00,844.00,1,80310,'2022-09-22 01:26:00','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',3,0),(8,'Encore Seafoods Stuffed Alaskan','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]','HS-181-A0',0,11,0,1,1,2,0,0,130,101.4,NULL,NULL,10.00,17.00,17.00,840.00,1,160637,'2022-09-22 01:26:00','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',3,0),(9,'Gorton’s Beer Battered Fish Fillets','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]','HS-127-A0',0,12,0,1,1,5,0,0,115,NULL,NULL,NULL,11.00,13.00,20.00,652.00,1,85813,'2022-09-22 01:26:00','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',4,0),(10,'Haagen-Dazs Caramel Cone Ice Cream','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]','HS-119-A0',0,18,0,1,1,1,0,0,465,NULL,NULL,NULL,14.00,15.00,11.00,642.00,1,55668,'2022-09-22 01:26:00','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',2,0),(11,'Nestle Original Coffee-Mate Coffee Creamer','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]','HS-171-A0',0,11,0,1,1,6,0,0,127,NULL,NULL,NULL,10.00,12.00,14.00,687.00,1,134257,'2022-09-22 01:26:00','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',1,0),(12,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]','HS-189-A0',0,13,0,1,1,5,0,0,121,89.54,NULL,NULL,14.00,20.00,18.00,822.00,1,189388,'2022-09-22 01:26:00','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',4,0),(13,'Pepperidge Farm Farmhouse Hearty White Bread','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','HS-107-A0',0,10,0,1,1,5,0,0,126,NULL,NULL,NULL,11.00,13.00,20.00,738.00,1,131068,'2022-09-22 01:26:01','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',2,0),(14,'Organic Frozen Triple Berry Blend','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]','HS-156-A0',0,16,0,1,1,1,0,0,125,NULL,NULL,NULL,16.00,10.00,12.00,646.00,1,134943,'2022-09-22 01:26:01','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',2,0),(15,'Oroweat Country Buttermilk Bread','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','HS-143-A0',0,16,0,1,1,2,0,0,121,NULL,NULL,NULL,10.00,11.00,16.00,864.00,1,16466,'2022-09-22 01:26:01','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',5,0),(16,'Foster Farms Takeout Crispy Classic Buffalo Wings','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\",\"products\\/16-1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-3.jpg\",\"products\\/16-4.jpg\",\"products\\/16-5.jpg\",\"products\\/16-6.jpg\"]','HS-136-A0',0,13,0,1,1,3,0,0,128,89.6,NULL,NULL,10.00,14.00,18.00,698.00,1,43150,'2022-09-22 01:26:01','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',4,0),(17,'Angie’s Boomchickapop Sweet & Salty Kettle Corn','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\"]','HS-167-A0',0,11,0,1,1,1,0,0,114,NULL,NULL,NULL,15.00,19.00,16.00,543.00,1,104623,'2022-09-22 01:26:01','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',4,0),(18,'All Natural Italian-Style Chicken Meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\"]','HS-167-A0',0,13,0,1,1,6,0,0,122,NULL,NULL,NULL,14.00,14.00,17.00,528.00,1,8106,'2022-09-22 01:26:01','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',3,0),(19,'Simply Lemonade with Raspberry Juice','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]','HS-116-A0',0,15,0,1,1,7,0,0,125,NULL,NULL,NULL,13.00,15.00,14.00,847.00,1,168679,'2022-09-22 01:26:01','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',5,0),(20,'Perdue Simply Smart Organics Gluten Free','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]','HS-163-A0',0,17,0,1,1,3,0,0,127,93.98,NULL,NULL,18.00,17.00,16.00,820.00,1,158186,'2022-09-22 01:26:01','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',6,0),(21,'Chen Watermelon','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]','HS-121-A0',0,19,0,1,1,1,0,0,129,NULL,NULL,NULL,12.00,19.00,15.00,658.00,1,69745,'2022-09-22 01:26:01','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',1,0),(22,'Organic Cage-Free Grade A Large Brown Eggs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]','HS-187-A0',0,14,0,1,1,2,0,0,123,NULL,NULL,NULL,20.00,16.00,13.00,872.00,1,126263,'2022-09-22 01:26:01','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',6,0),(23,'Colorful Banana','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]','HS-118-A0',0,11,0,1,1,2,0,0,130,NULL,NULL,NULL,18.00,13.00,12.00,501.00,1,126565,'2022-09-22 01:26:01','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',1,0),(24,'Signature Wood-Fired Mushroom and Caramelized','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]','HS-156-A0',0,15,0,1,1,6,0,0,129,104.49,NULL,NULL,10.00,14.00,16.00,862.00,1,58716,'2022-09-22 01:26:02','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',1,0),(25,'Seeds of Change Organic Quinoe',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-186-A0',0,11,0,1,0,1,1,0,317,NULL,NULL,NULL,20.00,10.00,15.00,551.00,NULL,0,'2022-09-22 01:26:02','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(26,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-101-A0',0,19,0,1,0,5,1,0,393,NULL,NULL,NULL,12.00,15.00,19.00,567.00,NULL,0,'2022-09-22 01:26:02','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(27,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','HS-101-A0-A1',0,19,0,1,0,5,1,0,393,NULL,NULL,NULL,12.00,15.00,19.00,567.00,NULL,0,'2022-09-22 01:26:02','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(28,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-113-A0',0,10,0,1,0,7,1,0,332,NULL,NULL,NULL,12.00,15.00,16.00,753.00,NULL,0,'2022-09-22 01:26:02','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(29,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3-1.jpg\"]','HS-113-A0-A1',0,10,0,1,0,7,1,0,332,NULL,NULL,NULL,12.00,15.00,16.00,753.00,NULL,0,'2022-09-22 01:26:02','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(30,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-174-A0',0,16,0,1,0,7,1,0,78,70.2,NULL,NULL,20.00,19.00,19.00,617.00,NULL,0,'2022-09-22 01:26:02','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(31,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','HS-174-A0-A1',0,16,0,1,0,7,1,0,78,65.52,NULL,NULL,20.00,19.00,19.00,617.00,NULL,0,'2022-09-22 01:26:02','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(32,'Blue Diamond Almonds Lightly',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-123-A0',0,17,0,1,0,3,1,0,47,NULL,NULL,NULL,11.00,15.00,14.00,734.00,NULL,0,'2022-09-22 01:26:02','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(33,'Chobani Complete Vanilla Greek',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-113-A0',0,10,0,1,0,3,1,0,60,NULL,NULL,NULL,20.00,20.00,13.00,718.00,NULL,0,'2022-09-22 01:26:02','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(34,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-129-A0',0,18,0,1,0,4,1,0,125,NULL,NULL,NULL,17.00,20.00,16.00,844.00,NULL,0,'2022-09-22 01:26:02','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(35,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7-1.jpg\"]','HS-129-A0-A1',0,18,0,1,0,4,1,0,125,NULL,NULL,NULL,17.00,20.00,16.00,844.00,NULL,0,'2022-09-22 01:26:03','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(36,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-129-A0-A2',0,18,0,1,0,4,1,0,125,NULL,NULL,NULL,17.00,20.00,16.00,844.00,NULL,0,'2022-09-22 01:26:03','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(37,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-181-A0',0,11,0,1,0,2,1,0,130,101.4,NULL,NULL,10.00,17.00,17.00,840.00,NULL,0,'2022-09-22 01:26:03','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(38,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','HS-181-A0-A1',0,11,0,1,0,2,1,0,130,113.1,NULL,NULL,10.00,17.00,17.00,840.00,NULL,0,'2022-09-22 01:26:03','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(39,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-181-A0-A2',0,11,0,1,0,2,1,0,130,110.5,NULL,NULL,10.00,17.00,17.00,840.00,NULL,0,'2022-09-22 01:26:03','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(40,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-181-A0-A3',0,11,0,1,0,2,1,0,130,91,NULL,NULL,10.00,17.00,17.00,840.00,NULL,0,'2022-09-22 01:26:03','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(41,'Gorton’s Beer Battered Fish Fillets',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-127-A0',0,12,0,1,0,5,1,0,115,NULL,NULL,NULL,11.00,13.00,20.00,652.00,NULL,0,'2022-09-22 01:26:03','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(42,'Gorton’s Beer Battered Fish Fillets',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','HS-127-A0-A1',0,12,0,1,0,5,1,0,115,NULL,NULL,NULL,11.00,13.00,20.00,652.00,NULL,0,'2022-09-22 01:26:03','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(43,'Gorton’s Beer Battered Fish Fillets',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-127-A0-A2',0,12,0,1,0,5,1,0,115,NULL,NULL,NULL,11.00,13.00,20.00,652.00,NULL,0,'2022-09-22 01:26:03','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(44,'Gorton’s Beer Battered Fish Fillets',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-127-A0-A3',0,12,0,1,0,5,1,0,115,NULL,NULL,NULL,11.00,13.00,20.00,652.00,NULL,0,'2022-09-22 01:26:03','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(45,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-119-A0',0,18,0,1,0,1,1,0,465,NULL,NULL,NULL,14.00,15.00,11.00,642.00,NULL,0,'2022-09-22 01:26:03','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(46,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','HS-119-A0-A1',0,18,0,1,0,1,1,0,465,NULL,NULL,NULL,14.00,15.00,11.00,642.00,NULL,0,'2022-09-22 01:26:03','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(47,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-171-A0',0,11,0,1,0,6,1,0,127,NULL,NULL,NULL,10.00,12.00,14.00,687.00,NULL,0,'2022-09-22 01:26:03','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(48,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','HS-171-A0-A1',0,11,0,1,0,6,1,0,127,NULL,NULL,NULL,10.00,12.00,14.00,687.00,NULL,0,'2022-09-22 01:26:03','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(49,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-171-A0-A2',0,11,0,1,0,6,1,0,127,NULL,NULL,NULL,10.00,12.00,14.00,687.00,NULL,0,'2022-09-22 01:26:03','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(50,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-189-A0',0,13,0,1,0,5,1,0,121,89.54,NULL,NULL,14.00,20.00,18.00,822.00,NULL,0,'2022-09-22 01:26:03','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(51,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','HS-189-A0-A1',0,13,0,1,0,5,1,0,121,89.54,NULL,NULL,14.00,20.00,18.00,822.00,NULL,0,'2022-09-22 01:26:03','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(52,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-189-A0-A2',0,13,0,1,0,5,1,0,121,107.69,NULL,NULL,14.00,20.00,18.00,822.00,NULL,0,'2022-09-22 01:26:03','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(53,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-107-A0',0,10,0,1,0,5,1,0,126,NULL,NULL,NULL,11.00,13.00,20.00,738.00,NULL,0,'2022-09-22 01:26:03','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(54,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','HS-107-A0-A1',0,10,0,1,0,5,1,0,126,NULL,NULL,NULL,11.00,13.00,20.00,738.00,NULL,0,'2022-09-22 01:26:03','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(55,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-156-A0',0,16,0,1,0,1,1,0,125,NULL,NULL,NULL,16.00,10.00,12.00,646.00,NULL,0,'2022-09-22 01:26:04','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(56,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14-1.jpg\"]','HS-156-A0-A1',0,16,0,1,0,1,1,0,125,NULL,NULL,NULL,16.00,10.00,12.00,646.00,NULL,0,'2022-09-22 01:26:04','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(57,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-156-A0-A2',0,16,0,1,0,1,1,0,125,NULL,NULL,NULL,16.00,10.00,12.00,646.00,NULL,0,'2022-09-22 01:26:04','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(58,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-156-A0-A3',0,16,0,1,0,1,1,0,125,NULL,NULL,NULL,16.00,10.00,12.00,646.00,NULL,0,'2022-09-22 01:26:04','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(59,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-143-A0',0,16,0,1,0,2,1,0,121,NULL,NULL,NULL,10.00,11.00,16.00,864.00,NULL,0,'2022-09-22 01:26:04','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(60,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','HS-143-A0-A1',0,16,0,1,0,2,1,0,121,NULL,NULL,NULL,10.00,11.00,16.00,864.00,NULL,0,'2022-09-22 01:26:04','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(61,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-143-A0-A2',0,16,0,1,0,2,1,0,121,NULL,NULL,NULL,10.00,11.00,16.00,864.00,NULL,0,'2022-09-22 01:26:04','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(62,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-136-A0',0,13,0,1,0,3,1,0,128,89.6,NULL,NULL,10.00,14.00,18.00,698.00,NULL,0,'2022-09-22 01:26:04','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(63,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16-1.jpg\"]','HS-136-A0-A1',0,13,0,1,0,3,1,0,128,115.2,NULL,NULL,10.00,14.00,18.00,698.00,NULL,0,'2022-09-22 01:26:04','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(64,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16-2.jpg\"]','HS-136-A0-A2',0,13,0,1,0,3,1,0,128,90.88,NULL,NULL,10.00,14.00,18.00,698.00,NULL,0,'2022-09-22 01:26:04','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(65,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16-3.jpg\"]','HS-136-A0-A3',0,13,0,1,0,3,1,0,128,102.4,NULL,NULL,10.00,14.00,18.00,698.00,NULL,0,'2022-09-22 01:26:04','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(66,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16-4.jpg\"]','HS-136-A0-A4',0,13,0,1,0,3,1,0,128,115.2,NULL,NULL,10.00,14.00,18.00,698.00,NULL,0,'2022-09-22 01:26:04','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(67,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-167-A0',0,11,0,1,0,1,1,0,114,NULL,NULL,NULL,15.00,19.00,16.00,543.00,NULL,0,'2022-09-22 01:26:04','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(68,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/17-1.jpg\"]','HS-167-A0-A1',0,11,0,1,0,1,1,0,114,NULL,NULL,NULL,15.00,19.00,16.00,543.00,NULL,0,'2022-09-22 01:26:05','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(69,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-167-A0-A2',0,11,0,1,0,1,1,0,114,NULL,NULL,NULL,15.00,19.00,16.00,543.00,NULL,0,'2022-09-22 01:26:05','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(70,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-167-A0',0,13,0,1,0,6,1,0,122,NULL,NULL,NULL,14.00,14.00,17.00,528.00,NULL,0,'2022-09-22 01:26:05','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(71,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','HS-167-A0-A1',0,13,0,1,0,6,1,0,122,NULL,NULL,NULL,14.00,14.00,17.00,528.00,NULL,0,'2022-09-22 01:26:05','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(72,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-116-A0',0,15,0,1,0,7,1,0,125,NULL,NULL,NULL,13.00,15.00,14.00,847.00,NULL,0,'2022-09-22 01:26:05','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(73,'Perdue Simply Smart Organics Gluten Free',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-163-A0',0,17,0,1,0,3,1,0,127,93.98,NULL,NULL,18.00,17.00,16.00,820.00,NULL,0,'2022-09-22 01:26:05','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(74,'Perdue Simply Smart Organics Gluten Free',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','HS-163-A0-A1',0,17,0,1,0,3,1,0,127,105.41,NULL,NULL,18.00,17.00,16.00,820.00,NULL,0,'2022-09-22 01:26:05','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(75,'Perdue Simply Smart Organics Gluten Free',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-163-A0-A2',0,17,0,1,0,3,1,0,127,101.6,NULL,NULL,18.00,17.00,16.00,820.00,NULL,0,'2022-09-22 01:26:05','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(76,'Chen Watermelon',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-121-A0',0,19,0,1,0,1,1,0,129,NULL,NULL,NULL,12.00,19.00,15.00,658.00,NULL,0,'2022-09-22 01:26:05','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(77,'Chen Watermelon',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','HS-121-A0-A1',0,19,0,1,0,1,1,0,129,NULL,NULL,NULL,12.00,19.00,15.00,658.00,NULL,0,'2022-09-22 01:26:05','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(78,'Chen Watermelon',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-121-A0-A2',0,19,0,1,0,1,1,0,129,NULL,NULL,NULL,12.00,19.00,15.00,658.00,NULL,0,'2022-09-22 01:26:05','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(79,'Chen Watermelon',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-121-A0-A3',0,19,0,1,0,1,1,0,129,NULL,NULL,NULL,12.00,19.00,15.00,658.00,NULL,0,'2022-09-22 01:26:05','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(80,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-187-A0',0,14,0,1,0,2,1,0,123,NULL,NULL,NULL,20.00,16.00,13.00,872.00,NULL,0,'2022-09-22 01:26:05','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(81,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','HS-187-A0-A1',0,14,0,1,0,2,1,0,123,NULL,NULL,NULL,20.00,16.00,13.00,872.00,NULL,0,'2022-09-22 01:26:05','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(82,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-187-A0-A2',0,14,0,1,0,2,1,0,123,NULL,NULL,NULL,20.00,16.00,13.00,872.00,NULL,0,'2022-09-22 01:26:05','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(83,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-118-A0',0,11,0,1,0,2,1,0,130,NULL,NULL,NULL,18.00,13.00,12.00,501.00,NULL,0,'2022-09-22 01:26:06','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(84,'Colorful Banana',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','HS-118-A0-A1',0,11,0,1,0,2,1,0,130,NULL,NULL,NULL,18.00,13.00,12.00,501.00,NULL,0,'2022-09-22 01:26:06','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(85,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-118-A0-A2',0,11,0,1,0,2,1,0,130,NULL,NULL,NULL,18.00,13.00,12.00,501.00,NULL,0,'2022-09-22 01:26:06','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(86,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-156-A0',0,15,0,1,0,6,1,0,129,104.49,NULL,NULL,10.00,14.00,16.00,862.00,NULL,0,'2022-09-22 01:26:06','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(87,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24-1.jpg\"]','HS-156-A0-A1',0,15,0,1,0,6,1,0,129,100.62,NULL,NULL,10.00,14.00,16.00,862.00,NULL,0,'2022-09-22 01:26:06','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(88,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-156-A0-A2',0,15,0,1,0,6,1,0,129,110.94,NULL,NULL,10.00,14.00,16.00,862.00,NULL,0,'2022-09-22 01:26:06','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(89,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-156-A0-A3',0,15,0,1,0,6,1,0,129,98.04,NULL,NULL,10.00,14.00,16.00,862.00,NULL,0,'2022-09-22 01:26:06','2022-09-22 01:27:40','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
INSERT INTO `ec_products_translations` VALUES ('vi',1,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',2,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',3,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',4,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',5,'Diamond Almonds xanh nhạt',NULL,NULL),('vi',6,'Chobani vani Hy Lạp',NULL,NULL),('vi',7,'Gừng khô Canada',NULL,NULL),('vi',8,'Hải sản Alaska',NULL,NULL),('vi',9,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',10,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',11,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',12,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',13,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL),('vi',14,'Hỗn hợp ba quả mọng đông lạnh hữu cơ',NULL,NULL),('vi',15,'Bánh mì bơ sữa đồng quê Oroweat',NULL,NULL),('vi',16,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',17,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',18,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',19,'Nước ép chanh và mâm xôi',NULL,NULL),('vi',20,'Perdue hữu cơ không chứa Gluten',NULL,NULL),('vi',21,'Dưa hấu chen',NULL,NULL),('vi',22,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',23,'Chuối đầy màu sắc',NULL,NULL),('vi',24,'Nấm đặc trưng và caramel',NULL,NULL),('vi',25,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',26,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',27,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',28,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',29,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',30,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',31,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',32,'Diamond Almonds xanh nhạt',NULL,NULL),('vi',33,'Chobani vani Hy Lạp',NULL,NULL),('vi',34,'Gừng khô Canada',NULL,NULL),('vi',35,'Gừng khô Canada',NULL,NULL),('vi',36,'Gừng khô Canada',NULL,NULL),('vi',37,'Hải sản Alaska',NULL,NULL),('vi',38,'Hải sản Alaska',NULL,NULL),('vi',39,'Hải sản Alaska',NULL,NULL),('vi',40,'Hải sản Alaska',NULL,NULL),('vi',41,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',42,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',43,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',44,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',45,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',46,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',47,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',48,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',49,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',50,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',51,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',52,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',53,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL),('vi',54,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL),('vi',55,'Hỗn hợp ba quả mọng đông lạnh hữu cơ',NULL,NULL),('vi',56,'Hỗn hợp ba quả mọng đông lạnh hữu cơ',NULL,NULL),('vi',57,'Hỗn hợp ba quả mọng đông lạnh hữu cơ',NULL,NULL),('vi',58,'Hỗn hợp ba quả mọng đông lạnh hữu cơ',NULL,NULL),('vi',59,'Bánh mì bơ sữa đồng quê Oroweat',NULL,NULL),('vi',60,'Bánh mì bơ sữa đồng quê Oroweat',NULL,NULL),('vi',61,'Bánh mì bơ sữa đồng quê Oroweat',NULL,NULL),('vi',62,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',63,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',64,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',65,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',66,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',67,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',68,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',69,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',70,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',71,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',72,'Nước ép chanh và mâm xôi',NULL,NULL),('vi',73,'Perdue hữu cơ không chứa Gluten',NULL,NULL),('vi',74,'Perdue hữu cơ không chứa Gluten',NULL,NULL),('vi',75,'Perdue hữu cơ không chứa Gluten',NULL,NULL),('vi',76,'Dưa hấu chen',NULL,NULL),('vi',77,'Dưa hấu chen',NULL,NULL),('vi',78,'Dưa hấu chen',NULL,NULL),('vi',79,'Dưa hấu chen',NULL,NULL),('vi',80,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',81,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',82,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',83,'Chuối đầy màu sắc',NULL,NULL),('vi',84,'Chuối đầy màu sắc',NULL,NULL),('vi',85,'Chuối đầy màu sắc',NULL,NULL),('vi',86,'Nấm đặc trưng và caramel',NULL,NULL),('vi',87,'Nấm đặc trưng và caramel',NULL,NULL),('vi',88,'Nấm đặc trưng và caramel',NULL,NULL),('vi',89,'Nấm đặc trưng và caramel',NULL,NULL);
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `ec_reviews_product_id_customer_id_status_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,1,24,4.00,'Clean & perfect source code','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\"]'),(2,10,11,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(3,8,12,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(4,3,24,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(5,2,20,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-09-22 01:26:13','2022-09-22 01:26:13','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/20.jpg\"}'),(6,5,10,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(7,3,19,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(8,8,23,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(9,10,18,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-09-22 01:26:13','2022-09-22 01:26:13','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/20.jpg\"}'),(10,6,22,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(11,8,22,4.00,'Best ecommerce CMS online store!','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(12,4,5,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(13,8,24,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(14,3,10,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(15,6,16,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/3.jpg\"]'),(16,6,23,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(17,2,15,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(18,1,9,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(19,5,8,5.00,'Best ecommerce CMS online store!','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(20,1,11,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\"]'),(21,4,5,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/3.jpg\"]'),(22,1,15,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(23,2,15,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(24,4,9,1.00,'Best ecommerce CMS online store!','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(25,6,6,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-09-22 01:26:13','2022-09-22 01:26:13','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/14.jpg\"}'),(26,10,1,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\"]'),(27,3,17,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/22.jpg\"]'),(28,9,4,2.00,'Best ecommerce CMS online store!','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/15.jpg\"]'),(29,7,7,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/20.jpg\"}'),(30,5,11,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(31,7,14,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(32,3,24,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\"]'),(33,5,24,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(34,4,11,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-09-22 01:26:13','2022-09-22 01:26:13','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/16.jpg\"}'),(35,5,23,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(36,3,12,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/12.jpg\"}'),(37,8,21,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(38,4,2,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(39,8,9,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(40,1,21,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(41,4,2,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-09-22 01:26:13','2022-09-22 01:26:13','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/12.jpg\"}'),(42,3,12,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(43,4,22,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(44,2,8,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(45,9,24,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\"]'),(46,6,9,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/1.jpg\"]'),(47,1,16,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/9.jpg\"]'),(48,8,21,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/3.jpg\"]'),(49,3,14,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\"]'),(50,4,9,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/3.jpg\"]'),(51,6,20,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/20.jpg\"]'),(52,6,17,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(53,10,3,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(54,8,13,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/15.jpg\"]'),(55,4,2,3.00,'Clean & perfect source code','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/17.jpg\"]'),(56,1,7,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(57,6,10,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(58,7,10,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/17.jpg\"]'),(59,1,5,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(60,4,19,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(61,2,8,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(62,4,4,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/14.jpg\"]'),(63,3,8,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\"]'),(64,5,15,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(65,9,4,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(66,5,8,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\"]'),(67,7,11,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(68,9,8,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/8.jpg\"]'),(69,5,12,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(70,4,17,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(71,7,6,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(72,7,20,5.00,'Clean & perfect source code','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\"]'),(73,7,4,2.00,'Best ecommerce CMS online store!','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(74,8,10,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(75,10,24,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(76,3,3,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-09-22 01:26:13','2022-09-22 01:26:13','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/11.jpg\"}'),(77,2,14,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/1.jpg\"]'),(78,4,3,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(79,1,9,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/24.jpg\"]'),(80,4,22,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\"]'),(81,7,22,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(82,5,15,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\"]'),(83,3,2,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(84,8,6,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/15.jpg\"]'),(85,5,3,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/12.jpg\"]'),(86,6,4,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\"]'),(87,8,6,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/13.jpg\"]'),(88,1,13,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/11.jpg\"]'),(89,5,20,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/4.jpg\"]'),(90,10,18,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\"]'),(91,7,10,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/17.jpg\"]'),(92,3,1,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(93,5,6,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(94,8,11,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-09-22 01:26:13','2022-09-22 01:26:13','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(95,6,18,5.00,'Good app, good backup service and support. Good documentation.','published','2022-09-22 01:26:14','2022-09-22 01:26:14','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(96,9,10,5.00,'Best ecommerce CMS online store!','published','2022-09-22 01:26:14','2022-09-22 01:26:14','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(97,9,9,5.00,'Good app, good backup service and support. Good documentation.','published','2022-09-22 01:26:14','2022-09-22 01:26:14','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(98,7,17,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-09-22 01:26:14','2022-09-22 01:26:14','[\"products\\/4.jpg\"]'),(99,1,11,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-09-22 01:26:14','2022-09-22 01:26:14','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(100,9,5,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-09-22 01:26:14','2022-09-22 01:26:14','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/18.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `shipment_id` int unsigned NOT NULL,
  `order_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2022-09-13 17:27:41','2022-09-13 17:27:41'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2022-09-20 09:27:43','2022-09-22 01:27:43'),(3,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,1,1,'2022-09-22 01:27:43','2022-09-22 01:27:43'),(4,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2022-09-18 17:27:43','2022-09-18 17:27:43'),(5,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2022-09-20 09:27:43','2022-09-22 01:27:43'),(6,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,2,2,'2022-09-22 01:27:43','2022-09-22 01:27:43'),(7,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,2,'2022-09-22 01:27:43','2022-09-22 01:27:43'),(8,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2022-09-20 11:27:43','2022-09-20 11:27:43'),(9,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2022-09-20 11:27:43','2022-09-22 01:27:43'),(10,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,3,'2022-09-22 01:27:43','2022-09-22 01:27:43'),(11,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2022-09-18 21:27:43','2022-09-18 21:27:43'),(12,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2022-09-20 11:27:43','2022-09-22 01:27:43'),(13,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2022-09-09 09:27:43','2022-09-09 09:27:43'),(14,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,5,'2022-09-20 11:27:43','2022-09-22 01:27:43'),(15,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,5,5,'2022-09-22 01:27:43','2022-09-22 01:27:43'),(16,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,5,'2022-09-22 01:27:43','2022-09-22 01:27:43'),(17,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2022-09-19 01:27:43','2022-09-19 01:27:43'),(18,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,6,'2022-09-20 13:27:44','2022-09-22 01:27:44'),(19,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2022-09-19 01:27:44','2022-09-19 01:27:44'),(20,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,7,'2022-09-20 13:27:47','2022-09-22 01:27:47'),(21,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2022-09-08 13:27:47','2022-09-08 13:27:47'),(22,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,8,'2022-09-20 13:27:47','2022-09-22 01:27:47'),(23,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,8,'2022-09-22 01:27:47','2022-09-22 01:27:47'),(24,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2022-09-09 07:27:47','2022-09-09 07:27:47'),(25,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,9,'2022-09-20 15:27:48','2022-09-22 01:27:48'),(26,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,9,'2022-09-22 01:27:48','2022-09-22 01:27:48'),(27,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2022-09-07 21:27:48','2022-09-07 21:27:48'),(28,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,10,'2022-09-20 15:27:49','2022-09-22 01:27:49'),(29,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,10,10,'2022-09-22 01:27:49','2022-09-22 01:27:49'),(30,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,10,'2022-09-22 01:27:49','2022-09-22 01:27:49'),(31,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2022-09-14 01:27:49','2022-09-14 01:27:49'),(32,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,11,'2022-09-20 17:27:50','2022-09-22 01:27:50'),(33,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,11,'2022-09-22 01:27:50','2022-09-22 01:27:50'),(34,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2022-09-16 17:27:50','2022-09-16 17:27:50'),(35,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,12,'2022-09-20 17:27:50','2022-09-22 01:27:50'),(36,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2022-09-19 13:27:50','2022-09-19 13:27:50'),(37,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,13,'2022-09-20 19:27:51','2022-09-22 01:27:51'),(38,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2022-09-15 19:27:51','2022-09-15 19:27:51'),(39,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,14,'2022-09-20 19:27:54','2022-09-22 01:27:54'),(40,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,14,'2022-09-22 01:27:54','2022-09-22 01:27:54'),(41,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2022-09-17 09:27:54','2022-09-17 09:27:54'),(42,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,15,'2022-09-20 21:27:55','2022-09-22 01:27:55'),(43,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,15,'2022-09-22 01:27:55','2022-09-22 01:27:55'),(44,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2022-09-16 05:27:55','2022-09-16 05:27:55'),(45,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,16,'2022-09-20 21:27:55','2022-09-22 01:27:55'),(46,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2022-09-18 13:27:55','2022-09-18 13:27:55'),(47,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,17,'2022-09-20 21:27:55','2022-09-22 01:27:55'),(48,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,17,17,'2022-09-22 01:27:55','2022-09-22 01:27:55'),(49,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2022-09-16 15:27:55','2022-09-16 15:27:55'),(50,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,18,'2022-09-20 23:27:55','2022-09-22 01:27:55'),(51,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2022-09-11 05:27:55','2022-09-11 05:27:55'),(52,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,19,'2022-09-20 23:27:55','2022-09-22 01:27:55'),(53,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2022-09-19 01:27:55','2022-09-19 01:27:55'),(54,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,20,'2022-09-21 01:27:55','2022-09-22 01:27:55'),(55,'create_from_order','Shipping was created from order %order_id%',0,21,21,'2022-09-20 01:27:55','2022-09-20 01:27:55'),(56,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,21,21,'2022-09-21 01:27:55','2022-09-22 01:27:55'),(57,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,21,21,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(58,'create_from_order','Shipping was created from order %order_id%',0,22,22,'2022-09-17 01:27:56','2022-09-17 01:27:56'),(59,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,22,22,'2022-09-21 01:27:56','2022-09-22 01:27:56'),(60,'create_from_order','Shipping was created from order %order_id%',0,23,23,'2022-09-14 17:27:56','2022-09-14 17:27:56'),(61,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,23,23,'2022-09-21 03:27:56','2022-09-22 01:27:56'),(62,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,23,23,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(63,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,23,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(64,'create_from_order','Shipping was created from order %order_id%',0,24,24,'2022-09-13 19:27:56','2022-09-13 19:27:56'),(65,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,24,24,'2022-09-21 03:27:56','2022-09-22 01:27:56'),(66,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,24,24,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(67,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,24,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(68,'create_from_order','Shipping was created from order %order_id%',0,25,25,'2022-09-15 09:27:56','2022-09-15 09:27:56'),(69,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,25,25,'2022-09-21 05:27:56','2022-09-22 01:27:56'),(70,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,25,25,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(71,'create_from_order','Shipping was created from order %order_id%',0,26,26,'2022-09-18 17:27:56','2022-09-18 17:27:56'),(72,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,26,26,'2022-09-21 05:27:56','2022-09-22 01:27:56'),(73,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,26,26,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(74,'create_from_order','Shipping was created from order %order_id%',0,27,27,'2022-09-15 09:27:56','2022-09-15 09:27:56'),(75,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,27,27,'2022-09-21 05:27:56','2022-09-22 01:27:56'),(76,'create_from_order','Shipping was created from order %order_id%',0,28,28,'2022-09-16 01:27:56','2022-09-16 01:27:56'),(77,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,28,28,'2022-09-21 07:27:56','2022-09-22 01:27:56'),(78,'create_from_order','Shipping was created from order %order_id%',0,29,29,'2022-09-18 07:27:56','2022-09-18 07:27:56'),(79,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,29,29,'2022-09-21 07:27:56','2022-09-22 01:27:56'),(80,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,29,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(81,'create_from_order','Shipping was created from order %order_id%',0,30,30,'2022-09-17 13:27:56','2022-09-17 13:27:56'),(82,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,30,30,'2022-09-21 07:27:56','2022-09-22 01:27:56'),(83,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,30,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(84,'create_from_order','Shipping was created from order %order_id%',0,31,31,'2022-09-17 09:27:56','2022-09-17 09:27:56'),(85,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,31,31,'2022-09-21 09:27:56','2022-09-22 01:27:56'),(86,'create_from_order','Shipping was created from order %order_id%',0,32,32,'2022-09-20 17:27:56','2022-09-20 17:27:56'),(87,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,32,32,'2022-09-21 09:27:56','2022-09-22 01:27:56'),(88,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,32,32,'2022-09-22 01:27:56','2022-09-22 01:27:56'),(89,'create_from_order','Shipping was created from order %order_id%',0,33,33,'2022-09-21 11:27:56','2022-09-21 11:27:56'),(90,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,33,33,'2022-09-21 11:27:56','2022-09-22 01:27:56'),(91,'create_from_order','Shipping was created from order %order_id%',0,34,34,'2022-09-19 17:27:56','2022-09-19 17:27:56'),(92,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,34,34,'2022-09-21 11:27:56','2022-09-22 01:27:56'),(93,'create_from_order','Shipping was created from order %order_id%',0,35,35,'2022-09-18 01:27:56','2022-09-18 01:27:56'),(94,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,35,35,'2022-09-21 13:27:56','2022-09-22 01:27:56'),(95,'create_from_order','Shipping was created from order %order_id%',0,36,36,'2022-09-17 13:27:56','2022-09-17 13:27:56'),(96,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,36,36,'2022-09-21 13:27:57','2022-09-22 01:27:57'),(97,'create_from_order','Shipping was created from order %order_id%',0,37,37,'2022-09-17 13:27:57','2022-09-17 13:27:57'),(98,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,37,37,'2022-09-21 13:27:57','2022-09-22 01:27:57'),(99,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,37,37,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(100,'create_from_order','Shipping was created from order %order_id%',0,38,38,'2022-09-20 09:27:57','2022-09-20 09:27:57'),(101,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,38,38,'2022-09-21 15:27:57','2022-09-22 01:27:57'),(102,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,38,38,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(103,'create_from_order','Shipping was created from order %order_id%',0,39,39,'2022-09-21 05:27:57','2022-09-21 05:27:57'),(104,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,39,39,'2022-09-21 15:27:57','2022-09-22 01:27:57'),(105,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,39,39,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(106,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,39,39,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(107,'create_from_order','Shipping was created from order %order_id%',0,40,40,'2022-09-19 01:27:57','2022-09-19 01:27:57'),(108,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,40,40,'2022-09-21 17:27:57','2022-09-22 01:27:57'),(109,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,40,40,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(110,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,40,40,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(111,'create_from_order','Shipping was created from order %order_id%',0,41,41,'2022-09-21 17:27:57','2022-09-21 17:27:57'),(112,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,41,41,'2022-09-21 17:27:57','2022-09-22 01:27:57'),(113,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,41,41,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(114,'create_from_order','Shipping was created from order %order_id%',0,42,42,'2022-09-21 09:27:57','2022-09-21 09:27:57'),(115,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,42,42,'2022-09-21 17:27:57','2022-09-22 01:27:57'),(116,'create_from_order','Shipping was created from order %order_id%',0,43,43,'2022-09-21 09:27:57','2022-09-21 09:27:57'),(117,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,43,43,'2022-09-21 17:27:57','2022-09-22 01:27:57'),(118,'create_from_order','Shipping was created from order %order_id%',0,44,44,'2022-09-20 13:27:57','2022-09-20 13:27:57'),(119,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,44,44,'2022-09-21 19:27:57','2022-09-22 01:27:57'),(120,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,44,44,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(121,'create_from_order','Shipping was created from order %order_id%',0,45,45,'2022-09-21 19:27:57','2022-09-21 19:27:57'),(122,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,45,45,'2022-09-21 19:27:57','2022-09-22 01:27:57'),(123,'create_from_order','Shipping was created from order %order_id%',0,46,46,'2022-09-21 13:27:57','2022-09-21 13:27:57'),(124,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,46,46,'2022-09-21 21:27:57','2022-09-22 01:27:57'),(125,'create_from_order','Shipping was created from order %order_id%',0,47,47,'2022-09-21 05:27:57','2022-09-21 05:27:57'),(126,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,47,47,'2022-09-21 21:27:57','2022-09-22 01:27:57'),(127,'create_from_order','Shipping was created from order %order_id%',0,48,48,'2022-09-21 11:27:57','2022-09-21 11:27:57'),(128,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,48,48,'2022-09-21 23:27:57','2022-09-22 01:27:57'),(129,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,48,48,'2022-09-22 01:27:57','2022-09-22 01:27:57'),(130,'create_from_order','Shipping was created from order %order_id%',0,49,49,'2022-09-21 19:27:57','2022-09-21 19:27:57'),(131,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,49,49,'2022-09-21 23:27:57','2022-09-22 01:27:57'),(132,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,49,49,'2022-09-22 01:27:57','2022-09-22 01:27:57');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,1134.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:43','2022-09-22 01:27:43','JJD0049070016','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-10-02 08:27:43','2022-09-22 08:27:43'),(2,2,NULL,1680.00,NULL,'','delivered',273.00,'completed','pending',0.00,0,'2022-09-22 01:27:43','2022-09-22 01:27:43','JJD0045280915','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-23 08:27:43','2022-09-22 08:27:43'),(3,3,NULL,2154.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:43','2022-09-22 01:27:43','JJD0065470610','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-10-01 08:27:43','2022-09-22 08:27:43'),(4,4,NULL,2048.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:43','2022-09-22 01:27:43','JJD0093984612','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-29 08:27:43',NULL),(5,5,NULL,2460.00,NULL,'','delivered',393.70,'completed','pending',0.00,0,'2022-09-22 01:27:43','2022-09-22 01:27:43','JJD002688352','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-26 08:27:43','2022-09-22 08:27:43'),(6,6,NULL,1851.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:43','2022-09-22 01:27:43','JJD0068792610','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-23 08:27:43',NULL),(7,7,NULL,1380.00,NULL,'','approved',650.10,'pending','pending',0.00,0,'2022-09-22 01:27:47','2022-09-22 01:27:47','JJD0052524350','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-10-02 08:27:47',NULL),(8,8,NULL,2061.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:47','2022-09-22 01:27:47','JJD003673828','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-28 08:27:47','2022-09-22 08:27:47'),(9,9,NULL,2214.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:48','2022-09-22 01:27:48','JJD0064323758','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-26 08:27:48','2022-09-22 08:27:48'),(10,10,NULL,1724.00,NULL,'','delivered',270.90,'completed','pending',0.00,0,'2022-09-22 01:27:49','2022-09-22 01:27:49','JJD0048911636','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-30 08:27:49','2022-09-22 08:27:49'),(11,11,NULL,687.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:50','2022-09-22 01:27:50','JJD0095251027','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-28 08:27:50','2022-09-22 08:27:50'),(12,12,NULL,1644.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:50','2022-09-22 01:27:50','JJD0069191075','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-10-02 08:27:50',NULL),(13,13,NULL,1755.00,NULL,'','approved',638.20,'pending','pending',0.00,0,'2022-09-22 01:27:50','2022-09-22 01:27:50','JJD0047287488','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-10-02 08:27:50',NULL),(14,14,NULL,3180.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:54','2022-09-22 01:27:54','JJD0053645661','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-10-01 08:27:54','2022-09-22 08:27:54'),(15,15,NULL,844.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:55','2022-09-22 01:27:55','JJD0029398477','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-26 08:27:55','2022-09-22 08:27:55'),(16,16,NULL,864.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:55','2022-09-22 01:27:55','JJD0087392284','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-28 08:27:55',NULL),(17,17,NULL,543.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:55','2022-09-22 01:27:55','JJD0022573636','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-26 08:27:55','2022-09-22 08:27:55'),(18,18,NULL,617.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:55','2022-09-22 01:27:55','JJD0030517666','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-25 08:27:55',NULL),(19,19,NULL,1476.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:55','2022-09-22 01:27:55','JJD0013097297','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-30 08:27:55',NULL),(20,20,NULL,2094.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:55','2022-09-22 01:27:55','JJD0073194595','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-29 08:27:55',NULL),(21,21,NULL,847.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:55','2022-09-22 01:27:55','JJD0012770041','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-30 08:27:55','2022-09-22 08:27:55'),(22,22,NULL,3040.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','JJD0060481411','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-24 08:27:56',NULL),(23,23,NULL,1292.00,NULL,'','delivered',262.50,'completed','pending',0.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','JJD007914691','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-26 08:27:56','2022-09-22 08:27:56'),(24,24,NULL,658.00,NULL,'','delivered',141.90,'completed','pending',0.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','JJD0019587761','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-28 08:27:56','2022-09-22 08:27:56'),(25,25,NULL,2214.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','JJD0072017451','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-29 08:27:56','2022-09-22 08:27:56'),(26,26,NULL,543.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','JJD0052089839','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-10-02 08:27:56','2022-09-22 08:27:56'),(27,27,NULL,862.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','JJD0046522145','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-10-02 08:27:56',NULL),(28,28,NULL,1304.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','JJD0036161332','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-29 08:27:56',NULL),(29,29,NULL,1476.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','JJD0014216588','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-25 08:27:56','2022-09-22 08:27:56'),(30,30,NULL,1744.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','JJD0053485081','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-10-01 08:27:56','2022-09-22 08:27:56'),(31,31,NULL,2792.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','JJD0075309407','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-23 08:27:56',NULL),(32,32,NULL,1744.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','JJD0055239592','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-27 08:27:56','2022-09-22 08:27:56'),(33,33,NULL,2532.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','JJD0077029473','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-10-01 08:27:56',NULL),(34,34,NULL,872.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','JJD0023348683','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-27 08:27:56',NULL),(35,35,NULL,2002.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:56','2022-09-22 01:27:56','JJD0041914451','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-10-01 08:27:56',NULL),(36,36,NULL,1374.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','JJD0096174374','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-29 08:27:57',NULL),(37,37,NULL,2094.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','JJD004860652','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-25 08:27:57','2022-09-22 08:27:57'),(38,38,NULL,3121.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','JJD0014107667','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-28 08:27:57','2022-09-22 08:27:57'),(39,39,NULL,2214.00,NULL,'','delivered',390.60,'completed','pending',0.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','JJD0043954898','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-24 08:27:57','2022-09-22 08:27:57'),(40,40,NULL,567.00,NULL,'','delivered',432.30,'completed','pending',0.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','JJD0083690388','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-25 08:27:57','2022-09-22 08:27:57'),(41,41,NULL,2532.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','JJD0073096658','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-23 08:27:57','2022-09-22 08:27:57'),(42,42,NULL,1644.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','JJD0053241544','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-29 08:27:57',NULL),(43,43,NULL,862.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','JJD0072240495','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-27 08:27:57',NULL),(44,44,NULL,1688.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','JJD0031787291','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-30 08:27:57','2022-09-22 08:27:57'),(45,45,NULL,3756.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','JJD0094658613','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-27 08:27:57',NULL),(46,46,NULL,551.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','JJD0047450922','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-30 08:27:57',NULL),(47,47,NULL,3600.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','JJD0037521270','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-28 08:27:57',NULL),(48,48,NULL,3372.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','JJD0055661323','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-10-02 08:27:57','2022-09-22 08:27:57'),(49,49,NULL,2792.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-22 01:27:57','2022-09-22 01:27:57','JJD006039462','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-24 08:27:57','2022-09-22 08:27:57');
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2022-09-22 01:26:14','2022-09-22 01:26:14');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` int unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int unsigned NOT NULL,
  `type` enum('base_on_price','base_on_weight') COLLATE utf8mb4_unicode_ci DEFAULT 'base_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free shipping',1,'base_on_price',0.00,NULL,0.00,'2022-09-22 01:26:14','2022-09-22 01:26:14'),(2,'Local Pickup',1,'base_on_price',0.00,NULL,20.00,'2022-09-22 01:26:14','2022-09-22 01:26:14'),(3,'Flat Rate',1,'base_on_price',0.00,NULL,25.00,'2022-09-22 01:26:14','2022-09-22 01:26:14');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Nest','sales@botble.com','18006268','North Link Building, 10 Admiralty Street','SG','Singapore','Singapore',1,1,'2022-09-22 01:26:14','2022-09-22 01:26:14');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2022-09-22 01:26:07','2022-09-22 01:26:07'),(2,'None',0.000000,2,'published','2022-09-22 01:26:07','2022-09-22 01:26:07');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_wish_lists_product_id_customer_id_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2022-09-22 01:27:10','2022-09-22 01:27:10'),(2,'Payment',1,'published','2022-09-22 01:27:10','2022-09-22 01:27:10'),(3,'Order & Returns',2,'published','2022-09-22 01:27:10','2022-09-22 01:27:10');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
INSERT INTO `faq_categories_translations` VALUES ('vi',1,'VẬN CHUYỂN'),('vi',2,'THANH TOÁN'),('vi',3,'ĐƠN HÀNG & HOÀN TRẢ');
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2022-09-22 01:27:10','2022-09-22 01:27:10'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2022-09-22 01:27:10','2022-09-22 01:27:10'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2022-09-22 01:27:10','2022-09-22 01:27:10'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2022-09-22 01:27:10','2022-09-22 01:27:10'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2022-09-22 01:27:10','2022-09-22 01:27:10'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2022-09-22 01:27:10','2022-09-22 01:27:10'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2022-09-22 01:27:10','2022-09-22 01:27:10'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2022-09-22 01:27:10','2022-09-22 01:27:10'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2022-09-22 01:27:10','2022-09-22 01:27:10'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2022-09-22 01:27:10','2022-09-22 01:27:10');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` int NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
INSERT INTO `faqs_translations` VALUES ('vi',1,'Có những phương thức vận chuyển nào?','Ex Portland Pitchfork irure ria mép. Eutra fap trước khi họ bán hết theo đúng nghĩa đen. Aliquip ugh quyền xe đạp thực sự mlkshk, rượu bia thủ công mực seitan. '),('vi',2,'Bạn có giao hàng quốc tế không?','Áo hoodie túi tote Tofu mixtape. Quần đùi jean đánh chữ Wolf quinoa, túi messenger hữu cơ freegan cray. '),('vi',3,'Mất bao lâu để nhận được gói hàng của tôi?','Bữa nửa buổi ăn sáng bằng bụng heo quay từ máy đánh chữ VHS, cà phê có nguồn gốc đơn Paleo, Wes Anderson. Khoan Pitchfork linh hoạt, theo nghĩa đen là đổ qua fap theo nghĩa đen. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray bền vững slow-carb raw denim Church-key fap chillwave Etsy. +1 bộ dụng cụ đánh máy, đậu phụ Banksy Vice của American Apparel. '),('vi',4,'Phương thức thanh toán nào được chấp nhận?','Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Quầy ảnh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria mép. Twee chia gian hàng chụp ảnh xe bán đồ ăn sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. '),('vi',5,'Mua trực tuyến có an toàn không?','Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia credit. Tiệc trên mái nhà Neutra Austin Brooklyn, Thundercats swag synth gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. '),('vi',6,'Làm cách nào để đặt hàng?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Định mức seitan trong tương lai. Master làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt chậm carb cấp độ tiếp theo. Vải thô denim polaroid nhạt từ trang trại đến bàn, đặt một con chim trên đó hình xăm lo-fi Wes Anderson Pinterest letterpress. Bậc thầy gian hàng ảnh Schlitz của Fingerstache McSweeney đang làm sạch thẻ bắt đầu bằng hashtag theo yêu cầu riêng, chillwave gentrify. '),('vi',7,'Làm cách nào để tôi có thể hủy hoặc thay đổi đơn hàng của mình?','Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia tín. Tiệc trên mái nhà Neutra Austin ở Brooklyn, synth Thundercats có gian hàng ảnh 8-bit. '),('vi',8,'Tôi có cần tài khoản để đặt hàng không?','Thundercats làm lung lay gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Twee chia ảnh gian hàng xe bán thức ăn làm sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, rìu thời trang mỉa mai người bán thịt máy đánh chữ chambray VHS banjo nghệ thuật đường phố. '),('vi',9,'Làm cách nào để theo dõi đơn hàng của tôi?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Định mức seitan trong tương lai. Bậc thầy làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt theo kiểu chậm carb cấp độ tiếp theo. '),('vi',10,'Làm cách nào để trả lại sản phẩm?','Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray uống giấm Carles street art Bushwick gastropub. Chìa khóa nhà thờ Wolf Tumblr. Xe tải thực phẩm kẻ sọc Echo Park YOLO cắn hella, giao dịch trực tiếp Thundercats legging quinoa trước khi bán hết. Có thể bạn chưa từng nghe nói về họ những người truyền bá vị umami đích thực uống giấm Pinterest Áo len Cosby, fingerstache fap High Life. ');
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','1c96014723d982691df968fac21cfe51',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','183ff3831f18b5fca816efe4f1ae9fd5',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','dce1199c208a431c866357d262894e2d',3,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(4,'en_US','b097c6c287c2f056b1ecaed670e8883c',4,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(5,'en_US','aafad9e96b05e6c32bccc5321330c0e2',5,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(6,'en_US','5592737e45da678107013b5a4c38314f',6,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(7,'en_US','a9d1650a181e6b0e9270ca732969d548',7,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(8,'vi','1c96014723d982691df968fac21cfe51',8,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(9,'vi','183ff3831f18b5fca816efe4f1ae9fd5',9,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(10,'vi','dce1199c208a431c866357d262894e2d',10,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(11,'vi','b097c6c287c2f056b1ecaed670e8883c',11,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(12,'vi','aafad9e96b05e6c32bccc5321330c0e2',12,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(13,'vi','5592737e45da678107013b5a4c38314f',13,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(14,'vi','a9d1650a181e6b0e9270ca732969d548',14,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(15,'en_US','abf141f4130cc8af0260125870600350',1,'Botble\\Menu\\Models\\MenuLocation'),(16,'en_US','e7b85f995d886ffb9bf426a8094b5239',1,'Botble\\Menu\\Models\\Menu'),(17,'en_US','9d41c4f2a57d8d1edd857f05f5c15046',2,'Botble\\Menu\\Models\\MenuLocation'),(18,'en_US','107726d947a8bee344a77889f6d638da',2,'Botble\\Menu\\Models\\Menu'),(19,'en_US','8ce044a22e5d8558200cab8d862b42e5',3,'Botble\\Menu\\Models\\Menu'),(20,'en_US','ac3b6307f566f60c1bbc7ffb301a3023',4,'Botble\\Menu\\Models\\Menu'),(21,'en_US','2b573324b885b464eed93c92c1064eb8',5,'Botble\\Menu\\Models\\Menu'),(22,'vi','6181a82b92b1c480a87f2c8158e7e649',3,'Botble\\Menu\\Models\\MenuLocation'),(23,'vi','e7b85f995d886ffb9bf426a8094b5239',6,'Botble\\Menu\\Models\\Menu'),(24,'vi','ea6dfdcd0c03b80d6995d64c9232a5ec',4,'Botble\\Menu\\Models\\MenuLocation'),(25,'vi','107726d947a8bee344a77889f6d638da',7,'Botble\\Menu\\Models\\Menu'),(26,'vi','8ce044a22e5d8558200cab8d862b42e5',8,'Botble\\Menu\\Models\\Menu'),(27,'vi','ac3b6307f566f60c1bbc7ffb301a3023',9,'Botble\\Menu\\Models\\Menu'),(28,'vi','2b573324b885b464eed93c92c1064eb8',10,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Tiếng Việt','vi','vi','vn',0,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'icon-1',1,'image/png',4323,'product-categories/icon-1.png','[]','2022-09-22 01:25:29','2022-09-22 01:25:29',NULL),(2,0,'icon-10',1,'image/png',4357,'product-categories/icon-10.png','[]','2022-09-22 01:25:30','2022-09-22 01:25:30',NULL),(3,0,'icon-11',1,'image/png',2024,'product-categories/icon-11.png','[]','2022-09-22 01:25:30','2022-09-22 01:25:30',NULL),(4,0,'icon-12',1,'image/png',3531,'product-categories/icon-12.png','[]','2022-09-22 01:25:30','2022-09-22 01:25:30',NULL),(5,0,'icon-13',1,'image/png',2344,'product-categories/icon-13.png','[]','2022-09-22 01:25:30','2022-09-22 01:25:30',NULL),(6,0,'icon-14',1,'image/png',2314,'product-categories/icon-14.png','[]','2022-09-22 01:25:30','2022-09-22 01:25:30',NULL),(7,0,'icon-2',1,'image/png',3204,'product-categories/icon-2.png','[]','2022-09-22 01:25:30','2022-09-22 01:25:30',NULL),(8,0,'icon-3',1,'image/png',4184,'product-categories/icon-3.png','[]','2022-09-22 01:25:31','2022-09-22 01:25:31',NULL),(9,0,'icon-4',1,'image/png',4648,'product-categories/icon-4.png','[]','2022-09-22 01:25:31','2022-09-22 01:25:31',NULL),(10,0,'icon-5',1,'image/png',4594,'product-categories/icon-5.png','[]','2022-09-22 01:25:31','2022-09-22 01:25:31',NULL),(11,0,'icon-6',1,'image/png',3518,'product-categories/icon-6.png','[]','2022-09-22 01:25:31','2022-09-22 01:25:31',NULL),(12,0,'icon-7',1,'image/png',3829,'product-categories/icon-7.png','[]','2022-09-22 01:25:32','2022-09-22 01:25:32',NULL),(13,0,'icon-8',1,'image/png',4815,'product-categories/icon-8.png','[]','2022-09-22 01:25:32','2022-09-22 01:25:32',NULL),(14,0,'icon-9',1,'image/png',3126,'product-categories/icon-9.png','[]','2022-09-22 01:25:32','2022-09-22 01:25:32',NULL),(15,0,'image-1',1,'image/png',25796,'product-categories/image-1.png','[]','2022-09-22 01:25:32','2022-09-22 01:25:32',NULL),(16,0,'image-10',1,'image/png',13714,'product-categories/image-10.png','[]','2022-09-22 01:25:32','2022-09-22 01:25:32',NULL),(17,0,'image-11',1,'image/png',18723,'product-categories/image-11.png','[]','2022-09-22 01:25:33','2022-09-22 01:25:33',NULL),(18,0,'image-12',1,'image/png',19482,'product-categories/image-12.png','[]','2022-09-22 01:25:33','2022-09-22 01:25:33',NULL),(19,0,'image-13',1,'image/png',19312,'product-categories/image-13.png','[]','2022-09-22 01:25:33','2022-09-22 01:25:33',NULL),(20,0,'image-14',1,'image/png',19593,'product-categories/image-14.png','[]','2022-09-22 01:25:33','2022-09-22 01:25:33',NULL),(21,0,'image-15',1,'image/png',17706,'product-categories/image-15.png','[]','2022-09-22 01:25:33','2022-09-22 01:25:33',NULL),(22,0,'image-2',1,'image/png',19956,'product-categories/image-2.png','[]','2022-09-22 01:25:34','2022-09-22 01:25:34',NULL),(23,0,'image-3',1,'image/png',20032,'product-categories/image-3.png','[]','2022-09-22 01:25:34','2022-09-22 01:25:34',NULL),(24,0,'image-4',1,'image/png',18475,'product-categories/image-4.png','[]','2022-09-22 01:25:34','2022-09-22 01:25:34',NULL),(25,0,'image-5',1,'image/png',16666,'product-categories/image-5.png','[]','2022-09-22 01:25:34','2022-09-22 01:25:34',NULL),(26,0,'image-6',1,'image/png',15381,'product-categories/image-6.png','[]','2022-09-22 01:25:35','2022-09-22 01:25:35',NULL),(27,0,'image-7',1,'image/png',13804,'product-categories/image-7.png','[]','2022-09-22 01:25:35','2022-09-22 01:25:35',NULL),(28,0,'image-8',1,'image/png',17392,'product-categories/image-8.png','[]','2022-09-22 01:25:35','2022-09-22 01:25:35',NULL),(29,0,'image-9',1,'image/png',17729,'product-categories/image-9.png','[]','2022-09-22 01:25:35','2022-09-22 01:25:35',NULL),(30,0,'1-1',2,'image/jpeg',77048,'products/1-1.jpg','[]','2022-09-22 01:25:37','2022-09-22 01:25:37',NULL),(31,0,'1',2,'image/jpeg',80718,'products/1.jpg','[]','2022-09-22 01:25:37','2022-09-22 01:25:37',NULL),(32,0,'10-1',2,'image/jpeg',105100,'products/10-1.jpg','[]','2022-09-22 01:25:37','2022-09-22 01:25:37',NULL),(33,0,'10',2,'image/jpeg',117642,'products/10.jpg','[]','2022-09-22 01:25:38','2022-09-22 01:25:38',NULL),(34,0,'11-1',2,'image/jpeg',45724,'products/11-1.jpg','[]','2022-09-22 01:25:38','2022-09-22 01:25:38',NULL),(35,0,'11',2,'image/jpeg',46272,'products/11.jpg','[]','2022-09-22 01:25:39','2022-09-22 01:25:39',NULL),(36,0,'12-1',2,'image/jpeg',72251,'products/12-1.jpg','[]','2022-09-22 01:25:39','2022-09-22 01:25:39',NULL),(37,0,'12',2,'image/jpeg',71309,'products/12.jpg','[]','2022-09-22 01:25:39','2022-09-22 01:25:39',NULL),(38,0,'13-1',2,'image/jpeg',32608,'products/13-1.jpg','[]','2022-09-22 01:25:40','2022-09-22 01:25:40',NULL),(39,0,'13',2,'image/jpeg',33526,'products/13.jpg','[]','2022-09-22 01:25:40','2022-09-22 01:25:40',NULL),(40,0,'14-1',2,'image/jpeg',64893,'products/14-1.jpg','[]','2022-09-22 01:25:41','2022-09-22 01:25:41',NULL),(41,0,'14',2,'image/jpeg',53642,'products/14.jpg','[]','2022-09-22 01:25:41','2022-09-22 01:25:41',NULL),(42,0,'15-1',2,'image/jpeg',93293,'products/15-1.jpg','[]','2022-09-22 01:25:41','2022-09-22 01:25:41',NULL),(43,0,'15',2,'image/jpeg',70399,'products/15.jpg','[]','2022-09-22 01:25:42','2022-09-22 01:25:42',NULL),(44,0,'16-1',2,'image/jpeg',59168,'products/16-1.jpg','[]','2022-09-22 01:25:42','2022-09-22 01:25:42',NULL),(45,0,'16-2',2,'image/jpeg',74882,'products/16-2.jpg','[]','2022-09-22 01:25:43','2022-09-22 01:25:43',NULL),(46,0,'16-3',2,'image/jpeg',71574,'products/16-3.jpg','[]','2022-09-22 01:25:43','2022-09-22 01:25:43',NULL),(47,0,'16-4',2,'image/jpeg',87131,'products/16-4.jpg','[]','2022-09-22 01:25:44','2022-09-22 01:25:44',NULL),(48,0,'16-5',2,'image/jpeg',59849,'products/16-5.jpg','[]','2022-09-22 01:25:44','2022-09-22 01:25:44',NULL),(49,0,'16-6',2,'image/jpeg',91691,'products/16-6.jpg','[]','2022-09-22 01:25:44','2022-09-22 01:25:44',NULL),(50,0,'16',2,'image/jpeg',100953,'products/16.jpg','[]','2022-09-22 01:25:45','2022-09-22 01:25:45',NULL),(51,0,'17-1',2,'image/jpeg',17816,'products/17-1.jpg','[]','2022-09-22 01:25:46','2022-09-22 01:25:46',NULL),(52,0,'17',2,'image/jpeg',17551,'products/17.jpg','[]','2022-09-22 01:25:46','2022-09-22 01:25:46',NULL),(53,0,'18-1',2,'image/jpeg',13352,'products/18-1.jpg','[]','2022-09-22 01:25:46','2022-09-22 01:25:46',NULL),(54,0,'18',2,'image/jpeg',20319,'products/18.jpg','[]','2022-09-22 01:25:47','2022-09-22 01:25:47',NULL),(55,0,'19-1',2,'image/jpeg',22960,'products/19-1.jpg','[]','2022-09-22 01:25:47','2022-09-22 01:25:47',NULL),(56,0,'19',2,'image/jpeg',15156,'products/19.jpg','[]','2022-09-22 01:25:47','2022-09-22 01:25:47',NULL),(57,0,'2-1',2,'image/jpeg',56143,'products/2-1.jpg','[]','2022-09-22 01:25:47','2022-09-22 01:25:47',NULL),(58,0,'2',2,'image/jpeg',64331,'products/2.jpg','[]','2022-09-22 01:25:48','2022-09-22 01:25:48',NULL),(59,0,'20-1',2,'image/jpeg',27985,'products/20-1.jpg','[]','2022-09-22 01:25:48','2022-09-22 01:25:48',NULL),(60,0,'20',2,'image/jpeg',18065,'products/20.jpg','[]','2022-09-22 01:25:48','2022-09-22 01:25:48',NULL),(61,0,'21-1',2,'image/jpeg',28003,'products/21-1.jpg','[]','2022-09-22 01:25:49','2022-09-22 01:25:49',NULL),(62,0,'21',2,'image/jpeg',18198,'products/21.jpg','[]','2022-09-22 01:25:49','2022-09-22 01:25:49',NULL),(63,0,'22-1',2,'image/jpeg',28621,'products/22-1.jpg','[]','2022-09-22 01:25:49','2022-09-22 01:25:49',NULL),(64,0,'22',2,'image/jpeg',19002,'products/22.jpg','[]','2022-09-22 01:25:49','2022-09-22 01:25:49',NULL),(65,0,'23-1',2,'image/jpeg',35525,'products/23-1.jpg','[]','2022-09-22 01:25:50','2022-09-22 01:25:50',NULL),(66,0,'23',2,'image/jpeg',19227,'products/23.jpg','[]','2022-09-22 01:25:50','2022-09-22 01:25:50',NULL),(67,0,'24-1',2,'image/jpeg',20531,'products/24-1.jpg','[]','2022-09-22 01:25:50','2022-09-22 01:25:50',NULL),(68,0,'24',2,'image/jpeg',10609,'products/24.jpg','[]','2022-09-22 01:25:51','2022-09-22 01:25:51',NULL),(69,0,'3-1',2,'image/jpeg',79350,'products/3-1.jpg','[]','2022-09-22 01:25:51','2022-09-22 01:25:51',NULL),(70,0,'3',2,'image/jpeg',89626,'products/3.jpg','[]','2022-09-22 01:25:51','2022-09-22 01:25:51',NULL),(71,0,'4-1',2,'image/jpeg',58354,'products/4-1.jpg','[]','2022-09-22 01:25:52','2022-09-22 01:25:52',NULL),(72,0,'4',2,'image/jpeg',76935,'products/4.jpg','[]','2022-09-22 01:25:52','2022-09-22 01:25:52',NULL),(73,0,'5-1',2,'image/jpeg',91691,'products/5-1.jpg','[]','2022-09-22 01:25:53','2022-09-22 01:25:53',NULL),(74,0,'5',2,'image/jpeg',100953,'products/5.jpg','[]','2022-09-22 01:25:53','2022-09-22 01:25:53',NULL),(75,0,'6-1',2,'image/jpeg',74851,'products/6-1.jpg','[]','2022-09-22 01:25:54','2022-09-22 01:25:54',NULL),(76,0,'6',2,'image/jpeg',89464,'products/6.jpg','[]','2022-09-22 01:25:54','2022-09-22 01:25:54',NULL),(77,0,'7-1',2,'image/jpeg',66135,'products/7-1.jpg','[]','2022-09-22 01:25:55','2022-09-22 01:25:55',NULL),(78,0,'7',2,'image/jpeg',71573,'products/7.jpg','[]','2022-09-22 01:25:55','2022-09-22 01:25:55',NULL),(79,0,'8-1',2,'image/jpeg',41283,'products/8-1.jpg','[]','2022-09-22 01:25:55','2022-09-22 01:25:55',NULL),(80,0,'8',2,'image/jpeg',33964,'products/8.jpg','[]','2022-09-22 01:25:56','2022-09-22 01:25:56',NULL),(81,0,'9-1',2,'image/jpeg',78790,'products/9-1.jpg','[]','2022-09-22 01:25:56','2022-09-22 01:25:56',NULL),(82,0,'9',2,'image/jpeg',84813,'products/9.jpg','[]','2022-09-22 01:25:57','2022-09-22 01:25:57',NULL),(83,0,'1',3,'image/jpeg',274660,'customers/1.jpg','[]','2022-09-22 01:26:08','2022-09-22 01:26:08',NULL),(84,0,'2',3,'image/jpeg',295031,'customers/2.jpg','[]','2022-09-22 01:26:08','2022-09-22 01:26:08',NULL),(85,0,'3',3,'image/jpeg',183576,'customers/3.jpg','[]','2022-09-22 01:26:08','2022-09-22 01:26:08',NULL),(86,0,'4',3,'image/jpeg',245360,'customers/4.jpg','[]','2022-09-22 01:26:09','2022-09-22 01:26:09',NULL),(87,0,'5',3,'image/jpeg',262908,'customers/5.jpg','[]','2022-09-22 01:26:09','2022-09-22 01:26:09',NULL),(88,0,'6',3,'image/jpeg',109600,'customers/6.jpg','[]','2022-09-22 01:26:09','2022-09-22 01:26:09',NULL),(89,0,'7',3,'image/jpeg',159280,'customers/7.jpg','[]','2022-09-22 01:26:10','2022-09-22 01:26:10',NULL),(90,0,'8',3,'image/jpeg',99998,'customers/8.jpg','[]','2022-09-22 01:26:10','2022-09-22 01:26:10',NULL),(91,0,'1',4,'image/png',431894,'flash-sales/1.png','[]','2022-09-22 01:26:14','2022-09-22 01:26:14',NULL),(92,0,'2',4,'image/png',118543,'flash-sales/2.png','[]','2022-09-22 01:26:14','2022-09-22 01:26:14',NULL),(93,0,'3',4,'image/png',163085,'flash-sales/3.png','[]','2022-09-22 01:26:15','2022-09-22 01:26:15',NULL),(94,0,'4',4,'image/png',195017,'flash-sales/4.png','[]','2022-09-22 01:26:16','2022-09-22 01:26:16',NULL),(95,0,'5',4,'image/png',153833,'flash-sales/5.png','[]','2022-09-22 01:26:17','2022-09-22 01:26:17',NULL),(96,0,'1-1',5,'image/png',519229,'sliders/1-1.png','[]','2022-09-22 01:26:18','2022-09-22 01:26:18',NULL),(97,0,'1-2',5,'image/png',468469,'sliders/1-2.png','[]','2022-09-22 01:26:19','2022-09-22 01:26:19',NULL),(98,0,'1-3',5,'image/png',2697,'sliders/1-3.png','[]','2022-09-22 01:26:21','2022-09-22 01:26:21',NULL),(99,0,'2-1',5,'image/png',159240,'sliders/2-1.png','[]','2022-09-22 01:26:22','2022-09-22 01:26:22',NULL),(100,0,'2-2',5,'image/png',113574,'sliders/2-2.png','[]','2022-09-22 01:26:23','2022-09-22 01:26:23',NULL),(101,0,'2-3',5,'image/png',2697,'sliders/2-3.png','[]','2022-09-22 01:26:24','2022-09-22 01:26:24',NULL),(102,0,'3-1',5,'image/png',519229,'sliders/3-1.png','[]','2022-09-22 01:26:24','2022-09-22 01:26:24',NULL),(103,0,'3-2',5,'image/png',468469,'sliders/3-2.png','[]','2022-09-22 01:26:25','2022-09-22 01:26:25',NULL),(104,0,'4-1',5,'image/png',618556,'sliders/4-1.png','[]','2022-09-22 01:26:27','2022-09-22 01:26:27',NULL),(105,0,'4-2',5,'image/png',949745,'sliders/4-2.png','[]','2022-09-22 01:26:28','2022-09-22 01:26:28',NULL),(106,0,'4-3',5,'image/png',2697,'sliders/4-3.png','[]','2022-09-22 01:26:29','2022-09-22 01:26:29',NULL),(107,0,'5-1',5,'image/png',1273599,'sliders/5-1.png','[]','2022-09-22 01:26:30','2022-09-22 01:26:30',NULL),(108,0,'5-2',5,'image/png',695846,'sliders/5-2.png','[]','2022-09-22 01:26:32','2022-09-22 01:26:32',NULL),(109,0,'banner-1',5,'image/png',104000,'sliders/banner-1.png','[]','2022-09-22 01:26:33','2022-09-22 01:26:33',NULL),(110,0,'thumbnail-1',5,'image/jpeg',28966,'sliders/thumbnail-1.jpg','[]','2022-09-22 01:26:34','2022-09-22 01:26:34',NULL),(111,0,'thumbnail-2',5,'image/jpeg',13975,'sliders/thumbnail-2.jpg','[]','2022-09-22 01:26:34','2022-09-22 01:26:34',NULL),(112,0,'thumbnail-3',5,'image/jpeg',15751,'sliders/thumbnail-3.jpg','[]','2022-09-22 01:26:34','2022-09-22 01:26:34',NULL),(113,0,'thumbnail-4',5,'image/jpeg',16846,'sliders/thumbnail-4.jpg','[]','2022-09-22 01:26:34','2022-09-22 01:26:34',NULL),(114,0,'thumbnail-5',5,'image/jpeg',24938,'sliders/thumbnail-5.jpg','[]','2022-09-22 01:26:35','2022-09-22 01:26:35',NULL),(115,0,'thumbnail-6',5,'image/jpeg',63412,'sliders/thumbnail-6.jpg','[]','2022-09-22 01:26:35','2022-09-22 01:26:35',NULL),(116,0,'1',6,'image/png',533812,'news/1.png','[]','2022-09-22 01:26:37','2022-09-22 01:26:37',NULL),(117,0,'10',6,'image/png',439491,'news/10.png','[]','2022-09-22 01:26:38','2022-09-22 01:26:38',NULL),(118,0,'11',6,'image/png',593219,'news/11.png','[]','2022-09-22 01:26:39','2022-09-22 01:26:39',NULL),(119,0,'2',6,'image/png',633277,'news/2.png','[]','2022-09-22 01:26:40','2022-09-22 01:26:40',NULL),(120,0,'3',6,'image/png',372986,'news/3.png','[]','2022-09-22 01:26:41','2022-09-22 01:26:41',NULL),(121,0,'4',6,'image/png',438363,'news/4.png','[]','2022-09-22 01:26:42','2022-09-22 01:26:42',NULL),(122,0,'5',6,'image/png',483356,'news/5.png','[]','2022-09-22 01:26:44','2022-09-22 01:26:44',NULL),(123,0,'6',6,'image/png',502720,'news/6.png','[]','2022-09-22 01:26:45','2022-09-22 01:26:45',NULL),(124,0,'7',6,'image/png',465225,'news/7.png','[]','2022-09-22 01:26:46','2022-09-22 01:26:46',NULL),(125,0,'8',6,'image/png',489034,'news/8.png','[]','2022-09-22 01:26:47','2022-09-22 01:26:47',NULL),(126,0,'9',6,'image/png',328817,'news/9.png','[]','2022-09-22 01:26:48','2022-09-22 01:26:48',NULL),(127,0,'1',7,'image/png',50119,'promotion/1.png','[]','2022-09-22 01:26:52','2022-09-22 01:26:52',NULL),(128,0,'10',7,'image/png',108470,'promotion/10.png','[]','2022-09-22 01:26:52','2022-09-22 01:26:52',NULL),(129,0,'11',7,'image/png',106453,'promotion/11.png','[]','2022-09-22 01:26:53','2022-09-22 01:26:53',NULL),(130,0,'12',7,'image/png',104430,'promotion/12.png','[]','2022-09-22 01:26:53','2022-09-22 01:26:53',NULL),(131,0,'2',7,'image/png',38339,'promotion/2.png','[]','2022-09-22 01:26:54','2022-09-22 01:26:54',NULL),(132,0,'3',7,'image/png',65066,'promotion/3.png','[]','2022-09-22 01:26:54','2022-09-22 01:26:54',NULL),(133,0,'4',7,'image/png',62462,'promotion/4.png','[]','2022-09-22 01:26:55','2022-09-22 01:26:55',NULL),(134,0,'5',7,'image/png',190175,'promotion/5.png','[]','2022-09-22 01:26:55','2022-09-22 01:26:55',NULL),(135,0,'6',7,'image/png',190175,'promotion/6.png','[]','2022-09-22 01:26:56','2022-09-22 01:26:56',NULL),(136,0,'7',7,'image/png',272480,'promotion/7.png','[]','2022-09-22 01:26:57','2022-09-22 01:26:57',NULL),(137,0,'8',7,'image/png',73547,'promotion/8.png','[]','2022-09-22 01:26:58','2022-09-22 01:26:58',NULL),(138,0,'9',7,'image/png',126894,'promotion/9.png','[]','2022-09-22 01:26:59','2022-09-22 01:26:59',NULL),(139,0,'app-store',8,'image/jpeg',29714,'general/app-store.jpg','[]','2022-09-22 01:27:11','2022-09-22 01:27:11',NULL),(140,0,'category-1',8,'image/png',4323,'general/category-1.png','[]','2022-09-22 01:27:11','2022-09-22 01:27:11',NULL),(141,0,'facebook',8,'image/png',646,'general/facebook.png','[]','2022-09-22 01:27:11','2022-09-22 01:27:11',NULL),(142,0,'favicon',8,'image/png',3890,'general/favicon.png','[]','2022-09-22 01:27:11','2022-09-22 01:27:11',NULL),(143,0,'google-play',8,'image/jpeg',29477,'general/google-play.jpg','[]','2022-09-22 01:27:12','2022-09-22 01:27:12',NULL),(144,0,'header-bg',8,'image/png',16995,'general/header-bg.png','[]','2022-09-22 01:27:12','2022-09-22 01:27:12',NULL),(145,0,'home-6',8,'image/jpeg',799491,'general/home-6.jpeg','[]','2022-09-22 01:27:12','2022-09-22 01:27:12',NULL),(146,0,'icon-1',8,'image/png',2024,'general/icon-1.png','[]','2022-09-22 01:27:13','2022-09-22 01:27:13',NULL),(147,0,'icon-2',8,'image/png',3531,'general/icon-2.png','[]','2022-09-22 01:27:13','2022-09-22 01:27:13',NULL),(148,0,'icon-3',8,'image/png',2344,'general/icon-3.png','[]','2022-09-22 01:27:13','2022-09-22 01:27:13',NULL),(149,0,'icon-4',8,'image/png',2314,'general/icon-4.png','[]','2022-09-22 01:27:14','2022-09-22 01:27:14',NULL),(150,0,'icon-5',8,'image/png',2853,'general/icon-5.png','[]','2022-09-22 01:27:14','2022-09-22 01:27:14',NULL),(151,0,'instagram',8,'image/png',2586,'general/instagram.png','[]','2022-09-22 01:27:14','2022-09-22 01:27:14',NULL),(152,0,'loading',8,'image/gif',25062,'general/loading.gif','[]','2022-09-22 01:27:15','2022-09-22 01:27:15',NULL),(153,0,'login-1',8,'image/png',270812,'general/login-1.png','[]','2022-09-22 01:27:15','2022-09-22 01:27:15',NULL),(154,0,'logo',8,'image/png',7698,'general/logo.png','[]','2022-09-22 01:27:16','2022-09-22 01:27:16',NULL),(155,0,'newsletter-background-image',8,'image/png',28409,'general/newsletter-background-image.png','[]','2022-09-22 01:27:17','2022-09-22 01:27:17',NULL),(156,0,'newsletter-image',8,'image/png',116235,'general/newsletter-image.png','[]','2022-09-22 01:27:18','2022-09-22 01:27:18',NULL),(157,0,'open-graph-image',8,'image/png',436809,'general/open-graph-image.png','[]','2022-09-22 01:27:18','2022-09-22 01:27:18',NULL),(158,0,'payment-methods',8,'image/png',10634,'general/payment-methods.png','[]','2022-09-22 01:27:20','2022-09-22 01:27:20',NULL),(159,0,'pinterest',8,'image/png',2128,'general/pinterest.png','[]','2022-09-22 01:27:21','2022-09-22 01:27:21',NULL),(160,0,'twitter',8,'image/png',1759,'general/twitter.png','[]','2022-09-22 01:27:21','2022-09-22 01:27:21',NULL),(161,0,'youtube',8,'image/png',1083,'general/youtube.png','[]','2022-09-22 01:27:22','2022-09-22 01:27:22',NULL),(162,0,'1',9,'image/png',11920,'stores/1.png','[]','2022-09-22 01:27:23','2022-09-22 01:27:23',NULL),(163,0,'10',9,'image/png',6583,'stores/10.png','[]','2022-09-22 01:27:23','2022-09-22 01:27:23',NULL),(164,0,'11',9,'image/png',6934,'stores/11.png','[]','2022-09-22 01:27:24','2022-09-22 01:27:24',NULL),(165,0,'12',9,'image/png',7396,'stores/12.png','[]','2022-09-22 01:27:25','2022-09-22 01:27:25',NULL),(166,0,'13',9,'image/png',5881,'stores/13.png','[]','2022-09-22 01:27:26','2022-09-22 01:27:26',NULL),(167,0,'14',9,'image/png',7188,'stores/14.png','[]','2022-09-22 01:27:27','2022-09-22 01:27:27',NULL),(168,0,'15',9,'image/png',7142,'stores/15.png','[]','2022-09-22 01:27:28','2022-09-22 01:27:28',NULL),(169,0,'16',9,'image/png',4659,'stores/16.png','[]','2022-09-22 01:27:28','2022-09-22 01:27:28',NULL),(170,0,'17',9,'image/png',6781,'stores/17.png','[]','2022-09-22 01:27:29','2022-09-22 01:27:29',NULL),(171,0,'2',9,'image/png',12300,'stores/2.png','[]','2022-09-22 01:27:30','2022-09-22 01:27:30',NULL),(172,0,'3',9,'image/png',10778,'stores/3.png','[]','2022-09-22 01:27:31','2022-09-22 01:27:31',NULL),(173,0,'4',9,'image/png',10771,'stores/4.png','[]','2022-09-22 01:27:32','2022-09-22 01:27:32',NULL),(174,0,'5',9,'image/png',13041,'stores/5.png','[]','2022-09-22 01:27:32','2022-09-22 01:27:32',NULL),(175,0,'6',9,'image/png',14006,'stores/6.png','[]','2022-09-22 01:27:33','2022-09-22 01:27:33',NULL),(176,0,'7',9,'image/png',5978,'stores/7.png','[]','2022-09-22 01:27:34','2022-09-22 01:27:34',NULL),(177,0,'8',9,'image/png',6586,'stores/8.png','[]','2022-09-22 01:27:35','2022-09-22 01:27:35',NULL),(178,0,'9',9,'image/png',6173,'stores/9.png','[]','2022-09-22 01:27:36','2022-09-22 01:27:36',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'product-categories','product-categories',0,'2022-09-22 01:25:29','2022-09-22 01:25:29',NULL),(2,0,'products','products',0,'2022-09-22 01:25:37','2022-09-22 01:25:37',NULL),(3,0,'customers','customers',0,'2022-09-22 01:26:07','2022-09-22 01:26:07',NULL),(4,0,'flash-sales','flash-sales',0,'2022-09-22 01:26:14','2022-09-22 01:26:14',NULL),(5,0,'sliders','sliders',0,'2022-09-22 01:26:18','2022-09-22 01:26:18',NULL),(6,0,'news','news',0,'2022-09-22 01:26:37','2022-09-22 01:26:37',NULL),(7,0,'promotion','promotion',0,'2022-09-22 01:26:52','2022-09-22 01:26:52',NULL),(8,0,'general','general',0,'2022-09-22 01:27:10','2022-09-22 01:27:10',NULL),(9,0,'stores','stores',0,'2022-09-22 01:27:23','2022-09-22 01:27:23',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2022-09-22 01:27:40','2022-09-22 01:27:40'),(2,2,'header-navigation','2022-09-22 01:27:40','2022-09-22 01:27:40'),(3,6,'main-menu','2022-09-22 01:27:40','2022-09-22 01:27:40'),(4,7,'header-navigation','2022-09-22 01:27:41','2022-09-22 01:27:41');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `reference_id` int unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/','fi-rs-home',0,'Home',NULL,'_self',1,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(2,1,1,1,'Botble\\Page\\Models\\Page','/homepage',NULL,0,'Home 1',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Home 2',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Home 3',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Home 4',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(6,1,1,16,'Botble\\Page\\Models\\Page','/homepage-5',NULL,0,'Home 5',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(7,1,1,17,'Botble\\Page\\Models\\Page','/homepage-6',NULL,0,'Home 6',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(9,1,8,NULL,NULL,'/products',NULL,0,'Shop Grid - Full Width',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(10,1,8,NULL,NULL,'/products?layout=product-right-sidebar',NULL,0,'Shop Grid - Right Sidebar',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(11,1,8,NULL,NULL,'/products?layout=product-left-sidebar',NULL,0,'Shop Grid - Left Sidebar',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(12,1,8,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Products Of Category',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(13,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',1,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(14,1,13,NULL,NULL,'/stores',NULL,0,'Stores - Grid',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(15,1,13,NULL,NULL,'/stores?layout=stores-list',NULL,0,'Stores - List',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(16,1,13,NULL,NULL,'/stores/gopro',NULL,0,'Store - Detail',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(17,1,0,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Product',NULL,'_self',1,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(18,1,17,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Product Right Sidebar',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(19,1,17,NULL,NULL,'/products/all-natural-italian-style-chicken-meatballs',NULL,0,'Product Left Sidebar',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(20,1,17,NULL,NULL,'/products/angies-boomchickapop-sweet-salty-kettle-corn',NULL,0,'Product Full Width',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(21,1,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(22,1,21,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog Grid',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(23,1,21,13,'Botble\\Page\\Models\\Page','/blog-list',NULL,0,'Blog List',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(24,1,21,14,'Botble\\Page\\Models\\Page','/blog-big',NULL,0,'Blog Big',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(25,1,21,15,'Botble\\Page\\Models\\Page','/blog-wide',NULL,0,'Blog Wide',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(26,1,21,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post',NULL,'_self',1,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(27,1,26,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post Right Sidebar',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(28,1,26,NULL,NULL,'/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',NULL,0,'Single Post Left Sidebar',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(29,1,26,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Single Post Full Width',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(30,1,26,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Single Post with Product Listing',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(31,1,0,18,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(32,1,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(33,2,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(34,2,0,NULL,NULL,'/orders/tracking',NULL,0,'Order Tracking',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(35,3,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Men',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(36,3,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/clothing-beauty',NULL,0,'Women',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(37,3,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/pet-toy',NULL,0,'Accessories',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(38,3,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/baking-material',NULL,0,'Shoes',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(39,3,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/fresh-fruit',NULL,0,'Denim',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(40,3,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/wines-drinks',NULL,0,'Dress',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(41,4,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact Us',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(42,4,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(43,4,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Cookie Policy',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(44,4,0,9,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(45,4,0,10,'Botble\\Page\\Models\\Page','/returns-exchanges',NULL,0,'Returns & Exchanges',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(46,4,0,11,'Botble\\Page\\Models\\Page','/shipping-delivery',NULL,0,'Shipping & Delivery',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(47,4,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Privacy Policy',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(48,5,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(49,5,0,NULL,NULL,'#',NULL,0,'Affiliate',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(50,5,0,NULL,NULL,'#',NULL,0,'Career',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(51,5,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(52,6,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',1,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(53,6,52,1,'Botble\\Page\\Models\\Page','/homepage',NULL,0,'Trang chủ 1',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(54,6,52,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Trang chủ 2',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(55,6,52,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Trang chủ 3',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(56,6,52,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Trang chủ 4',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(57,6,52,16,'Botble\\Page\\Models\\Page','/homepage-5',NULL,0,'Trang chủ 5',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(58,6,52,17,'Botble\\Page\\Models\\Page','/homepage-6',NULL,0,'Trang chủ 6',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(59,6,0,NULL,NULL,'/products',NULL,0,'Bán hàng',NULL,'_self',1,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(60,6,59,NULL,NULL,'/products',NULL,0,'Tất cả sản phẩm',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(61,6,59,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Danh mục sản phẩm',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:41'),(62,6,0,NULL,NULL,'/stores',NULL,0,'Cửa hàng',NULL,'_self',1,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(63,6,62,NULL,NULL,'/stores',NULL,0,'Cửa hàng - Grid',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(64,6,62,NULL,NULL,'/stores?layout=stores-list',NULL,0,'Cửa hàng - List',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(65,6,62,NULL,NULL,'/stores/gopro',NULL,0,'Cửa hàng - Detail',NULL,'_self',0,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(66,6,0,NULL,NULL,'#',NULL,0,'Sản phẩm',NULL,'_self',1,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(67,6,66,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Sản phẩm Sidebar phải',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(68,6,66,NULL,NULL,'/products/all-natural-italian-style-chicken-meatballs',NULL,0,'Sản phẩm Sidebar trái',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(69,6,66,NULL,NULL,'/products/angies-boomchickapop-sweet-salty-kettle-corn',NULL,0,'Sản phẩm full width',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(70,6,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',1,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(71,6,70,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức Sidebar phải',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(72,6,70,13,'Botble\\Page\\Models\\Page','/blog-list',NULL,0,'Tin tức Sidebar trái',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(73,6,70,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Bài viết Sidebar phải',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(74,6,70,NULL,NULL,'/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',NULL,0,'Bài viết Sidebar trái',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(75,6,70,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Bài viết Full Width',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(76,6,70,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Bài viết kèm sản phẩm',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(77,6,0,18,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(78,6,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(79,7,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Về Chúng Tôi',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(80,7,0,NULL,NULL,'/orders/tracking',NULL,0,'Theo Dõi Đơn Hàng',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(81,8,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Sữa',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(82,8,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/clothing-beauty',NULL,0,'Quần áo và làm đẹp',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(83,8,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/pet-toy',NULL,0,'Đồ chơi thú cưng',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(84,8,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/baking-material',NULL,0,'Nguyên liệu làm bánh',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(85,8,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/fresh-fruit',NULL,0,'Trái cây tươi',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(86,8,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/wines-drinks',NULL,0,'Rượu & Đồ uống',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(87,9,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(88,9,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Về chúng tôi',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(89,9,0,9,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Điều khoản & quy định',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(90,9,0,10,'Botble\\Page\\Models\\Page','/returns-exchanges',NULL,0,'Chính sách đổi trả',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(91,9,0,11,'Botble\\Page\\Models\\Page','/shipping-delivery',NULL,0,'Chính sách vận chuyển',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(92,9,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Chính sách bảo mật',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(93,10,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(94,10,0,NULL,NULL,'#',NULL,0,'Tiếp thị liên kết',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(95,10,0,NULL,NULL,'#',NULL,0,'Tuyển dụng',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41'),(96,10,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-09-22 01:27:41','2022-09-22 01:27:41');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2022-09-22 01:27:40','2022-09-22 01:27:40'),(2,'Header menu','header-menu','published','2022-09-22 01:27:40','2022-09-22 01:27:40'),(3,'Product categories','product-categories','published','2022-09-22 01:27:40','2022-09-22 01:27:40'),(4,'Information','information','published','2022-09-22 01:27:40','2022-09-22 01:27:40'),(5,'Company','company','published','2022-09-22 01:27:40','2022-09-22 01:27:40'),(6,'Menu chính','menu-chinh','published','2022-09-22 01:27:40','2022-09-22 01:27:40'),(7,'Menu trên cùng','menu-tren-cung','published','2022-09-22 01:27:41','2022-09-22 01:27:41'),(8,'Product categories','danh-muc-san-pham','published','2022-09-22 01:27:41','2022-09-22 01:27:41'),(9,'Information','thong-tin','published','2022-09-22 01:27:41','2022-09-22 01:27:41'),(10,'Công ty','cong-ty','published','2022-09-22 01:27:41','2022-09-22 01:27:41');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon_image','[\"product-categories\\/icon-1.png\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(2,'background_color','[\"#F2FCE4\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(3,'icon_image','[\"product-categories\\/icon-2.png\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(4,'background_color','[\"#FFFCEB\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(5,'icon_image','[\"product-categories\\/icon-3.png\"]',3,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(6,'background_color','[\"#ECFFEC\"]',3,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(7,'icon_image','[\"product-categories\\/icon-4.png\"]',4,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(8,'background_color','[\"#FEEFEA\"]',4,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(9,'icon_image','[\"product-categories\\/icon-5.png\"]',5,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(10,'background_color','[\"#FFF3EB\"]',5,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(11,'icon_image','[\"product-categories\\/icon-6.png\"]',6,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(12,'background_color','[\"#FFF3FF\"]',6,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(13,'icon_image','[\"product-categories\\/icon-7.png\"]',7,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(14,'background_color','[\"#F2FCE4\"]',7,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(15,'icon_image','[\"product-categories\\/icon-8.png\"]',8,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(16,'background_color','[\"#FFFCEB\"]',8,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(17,'icon_image','[\"product-categories\\/icon-9.png\"]',9,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(18,'background_color','[\"#ECFFEC\"]',9,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(19,'icon_image','[\"product-categories\\/icon-10.png\"]',10,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(20,'background_color','[\"#FEEFEA\"]',10,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(21,'icon_image','[\"product-categories\\/icon-11.png\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(22,'background_color','[\"#FFF3EB\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(23,'icon_image','[\"product-categories\\/icon-12.png\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(24,'background_color','[\"#FFF3FF\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(25,'icon_image','[\"product-categories\\/icon-13.png\"]',13,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(26,'background_color','[\"#F2FCE4\"]',13,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(27,'icon_image','[\"product-categories\\/icon-14.png\"]',14,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(28,'background_color','[\"#FFFCEB\"]',14,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-22 01:25:36','2022-09-22 01:25:36'),(29,'layout','[\"product-right-sidebar\"]',1,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:25:59','2022-09-22 01:25:59'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:25:59','2022-09-22 01:25:59'),(31,'layout','[\"product-left-sidebar\"]',2,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:25:59','2022-09-22 01:25:59'),(32,'is_popular','[\"1\"]',2,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:25:59','2022-09-22 01:25:59'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:00','2022-09-22 01:26:00'),(34,'layout','[\"product-full-width\"]',3,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:00','2022-09-22 01:26:00'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:00','2022-09-22 01:26:00'),(36,'is_popular','[\"1\"]',4,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:00','2022-09-22 01:26:00'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:00','2022-09-22 01:26:00'),(38,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:00','2022-09-22 01:26:00'),(39,'is_popular','[\"1\"]',6,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:00','2022-09-22 01:26:00'),(40,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:00','2022-09-22 01:26:00'),(41,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:00','2022-09-22 01:26:00'),(42,'is_popular','[\"1\"]',8,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:00','2022-09-22 01:26:00'),(43,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:00','2022-09-22 01:26:00'),(44,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:00','2022-09-22 01:26:00'),(45,'is_popular','[\"1\"]',10,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:00','2022-09-22 01:26:00'),(46,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:00','2022-09-22 01:26:00'),(47,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:00','2022-09-22 01:26:00'),(48,'is_popular','[\"1\"]',12,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:01','2022-09-22 01:26:01'),(49,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:01','2022-09-22 01:26:01'),(50,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:01','2022-09-22 01:26:01'),(51,'is_popular','[\"1\"]',14,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:01','2022-09-22 01:26:01'),(52,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:01','2022-09-22 01:26:01'),(53,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:01','2022-09-22 01:26:01'),(54,'is_popular','[\"1\"]',16,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:01','2022-09-22 01:26:01'),(55,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:01','2022-09-22 01:26:01'),(56,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:01','2022-09-22 01:26:01'),(57,'is_popular','[\"1\"]',18,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:01','2022-09-22 01:26:01'),(58,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:01','2022-09-22 01:26:01'),(59,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:01','2022-09-22 01:26:01'),(60,'is_popular','[\"1\"]',20,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:01','2022-09-22 01:26:01'),(61,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:01','2022-09-22 01:26:01'),(62,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:01','2022-09-22 01:26:01'),(63,'is_popular','[\"1\"]',22,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:01','2022-09-22 01:26:01'),(64,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:01','2022-09-22 01:26:01'),(65,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:02','2022-09-22 01:26:02'),(66,'is_popular','[\"1\"]',24,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:02','2022-09-22 01:26:02'),(67,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',24,'Botble\\Ecommerce\\Models\\Product','2022-09-22 01:26:02','2022-09-22 01:26:02'),(68,'image','[\"flash-sales\\/1.png\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-22 01:26:17','2022-09-22 01:26:17'),(69,'image','[\"flash-sales\\/2.png\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-22 01:26:18','2022-09-22 01:26:18'),(70,'image','[\"flash-sales\\/3.png\"]',3,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-22 01:26:18','2022-09-22 01:26:18'),(71,'image','[\"flash-sales\\/4.png\"]',4,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-22 01:26:18','2022-09-22 01:26:18'),(72,'image','[\"flash-sales\\/5.png\"]',5,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-22 01:26:18','2022-09-22 01:26:18'),(73,'vi_image','[\"flash-sales\\/1.png\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-22 01:26:18','2022-09-22 01:26:18'),(74,'vi_image','[\"flash-sales\\/2.png\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-22 01:26:18','2022-09-22 01:26:18'),(75,'vi_image','[\"flash-sales\\/3.png\"]',3,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-22 01:26:18','2022-09-22 01:26:18'),(76,'vi_image','[\"flash-sales\\/4.png\"]',4,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-22 01:26:18','2022-09-22 01:26:18'),(77,'vi_image','[\"flash-sales\\/5.png\"]',5,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-22 01:26:18','2022-09-22 01:26:18'),(78,'simple_slider_style','[\"style-4\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-09-22 01:26:37','2022-09-22 01:26:37'),(79,'simple_slider_style','[\"style-2\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-09-22 01:26:37','2022-09-22 01:26:37'),(80,'simple_slider_style','[\"style-3\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-09-22 01:26:37','2022-09-22 01:26:37'),(81,'simple_slider_style','[\"style-1\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-09-22 01:26:37','2022-09-22 01:26:37'),(82,'simple_slider_style','[\"style-5\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-09-22 01:26:37','2022-09-22 01:26:37'),(83,'simple_slider_style','[\"style-6\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-09-22 01:26:37','2022-09-22 01:26:37'),(84,'simple_slider_style','[\"style-1\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-09-22 01:26:37','2022-09-22 01:26:37'),(85,'simple_slider_style','[\"style-4\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-09-22 01:26:37','2022-09-22 01:26:37'),(86,'simple_slider_style','[\"style-2\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-09-22 01:26:37','2022-09-22 01:26:37'),(87,'simple_slider_style','[\"style-3\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-09-22 01:26:37','2022-09-22 01:26:37'),(88,'simple_slider_style','[\"style-1\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-09-22 01:26:37','2022-09-22 01:26:37'),(89,'simple_slider_style','[\"style-5\"]',12,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-09-22 01:26:37','2022-09-22 01:26:37'),(90,'simple_slider_style','[\"style-6\"]',13,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-09-22 01:26:37','2022-09-22 01:26:37'),(91,'simple_slider_style','[\"style-1\"]',14,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-09-22 01:26:37','2022-09-22 01:26:37'),(92,'layout','[\"blog-post-right-sidebar\"]',1,'Botble\\Blog\\Models\\Post','2022-09-22 01:26:50','2022-09-22 01:26:50'),(93,'layout','[\"blog-post-left-sidebar\"]',2,'Botble\\Blog\\Models\\Post','2022-09-22 01:26:50','2022-09-22 01:26:50'),(94,'layout','[\"blog-post-full-width\"]',3,'Botble\\Blog\\Models\\Post','2022-09-22 01:26:50','2022-09-22 01:26:50'),(95,'layout','[\"blog-post-full-width\"]',4,'Botble\\Blog\\Models\\Post','2022-09-22 01:26:50','2022-09-22 01:26:50'),(96,'header_style','[\"header-style-5\"]',16,'Botble\\Page\\Models\\Page','2022-09-22 01:26:51','2022-09-22 01:26:51'),(97,'header_style','[\"header-style-5\"]',17,'Botble\\Page\\Models\\Page','2022-09-22 01:26:51','2022-09-22 01:26:51'),(98,'button_text','[\"Shop now\"]',1,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:02','2022-09-22 01:27:02'),(99,'subtitle','[\"Everyday Fresh & \\nClean with Our \\nProducts\"]',1,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:02','2022-09-22 01:27:02'),(100,'button_text','[\"Shop now\"]',2,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:02','2022-09-22 01:27:02'),(101,'subtitle','[\"Make your Breakfast Healthy and Easy\"]',2,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:02','2022-09-22 01:27:02'),(102,'button_text','[\"Shop now\"]',3,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:02','2022-09-22 01:27:02'),(103,'subtitle','[\"The best Organic Products Online\"]',3,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:02','2022-09-22 01:27:02'),(104,'button_text','[\"Shop now\"]',4,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:04','2022-09-22 01:27:04'),(105,'subtitle','[\"Bring nature into your home\"]',4,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:04','2022-09-22 01:27:04'),(106,'button_text','[\"Shop now\"]',5,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:04','2022-09-22 01:27:04'),(107,'subtitle','[\"Delivered to your home\"]',5,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:04','2022-09-22 01:27:04'),(108,'button_text','[\"Shop now\"]',6,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:04','2022-09-22 01:27:04'),(109,'subtitle','[\"Save 17% <br \\/>on Oganic <br \\/>Juice\"]',6,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:04','2022-09-22 01:27:04'),(110,'button_text','[\"Shop now\"]',7,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:04','2022-09-22 01:27:04'),(111,'subtitle','[\"Everyday Fresh & Clean with Our Products\"]',7,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:04','2022-09-22 01:27:04'),(112,'button_text','[\"Shop now\"]',8,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:04','2022-09-22 01:27:04'),(113,'subtitle','[\"The best Organic Products Online\"]',8,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:04','2022-09-22 01:27:04'),(114,'button_text','[\"Go to supplier\"]',9,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:04','2022-09-22 01:27:04'),(115,'subtitle','[\"Everyday Fresh with\\n Our Products\"]',9,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:04','2022-09-22 01:27:04'),(116,'button_text','[\"Go to supplier\"]',10,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:04','2022-09-22 01:27:04'),(117,'subtitle','[\"100% guaranteed all\\n Fresh items\"]',10,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:04','2022-09-22 01:27:04'),(118,'button_text','[\"Go to supplier\"]',11,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:04','2022-09-22 01:27:04'),(119,'subtitle','[\"Special grocery sale\\n off this month\"]',11,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:04','2022-09-22 01:27:04'),(120,'button_text','[\"Go to supplier\"]',12,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:04','2022-09-22 01:27:04'),(121,'subtitle','[\"Enjoy 15% OFF for all\\n vegetable and fruit\"]',12,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:04','2022-09-22 01:27:04'),(122,'vi_subtitle','[\"S\\u1ea1ch s\\u1ebd h\\u00e0ng ng\\u00e0y v\\u1edbi \\nc\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a \\nch\\u00fang t\\u00f4i\"]',1,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:05','2022-09-22 01:27:05'),(123,'vi_button_text','[\"Mua ngay\"]',1,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:05','2022-09-22 01:27:05'),(124,'vi_subtitle','[\"N\\u1eabu b\\u1eefa s\\u00e1ng c\\u1ee7a b\\u1ea1n l\\u00e0nh m\\u1ea1nh v\\u00e0 d\\u1ec5 d\\u00e0ng\"]',2,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:05','2022-09-22 01:27:05'),(125,'vi_button_text','[\"Mua ngay\"]',2,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:05','2022-09-22 01:27:05'),(126,'vi_subtitle','[\"C\\u00e1c s\\u1ea3n ph\\u1ea9m h\\u1eefu c\\u01a1 t\\u1ed1t nh\\u1ea5t tr\\u1ef1c tuy\\u1ebfn\"]',3,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:05','2022-09-22 01:27:05'),(127,'vi_button_text','[\"Mua ngay\"]',3,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:05','2022-09-22 01:27:05'),(128,'vi_subtitle','[\"Mang thi\\u00ean nhi\\u00ean v\\u00e0o ng\\u00f4i nh\\u00e0 c\\u1ee7a b\\u1ea1n\"]',4,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:05','2022-09-22 01:27:05'),(129,'vi_button_text','[\"Mua ngay\"]',4,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:05','2022-09-22 01:27:05'),(130,'vi_subtitle','[\"Giao t\\u1eadn nh\\u00e0\"]',5,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:05','2022-09-22 01:27:05'),(131,'vi_button_text','[\"Mua ngay\"]',5,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:05','2022-09-22 01:27:05'),(132,'vi_subtitle','[\"Ti\\u1ebft ki\\u1ec7m 17% <br \\/> khi mua N\\u01b0\\u1edbc \\u00e9p <br \\/> Oganic\"]',6,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:05','2022-09-22 01:27:05'),(133,'vi_button_text','[\"Mua ngay\"]',6,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:05','2022-09-22 01:27:05'),(134,'vi_subtitle','[\"T\\u01b0\\u01a1i v\\u00e0 S\\u1ea1ch h\\u00e0ng ng\\u00e0y v\\u1edbi c\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a ch\\u00fang t\\u00f4i\"]',7,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:06','2022-09-22 01:27:06'),(135,'vi_button_text','[\"Shop now\"]',7,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:06','2022-09-22 01:27:06'),(136,'vi_subtitle','[\"C\\u00e1c s\\u1ea3n ph\\u1ea9m h\\u1eefu c\\u01a1 t\\u1ed1t nh\\u1ea5t tr\\u1ef1c tuy\\u1ebfn\"]',8,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:06','2022-09-22 01:27:06'),(137,'vi_button_text','[\"Shop now\"]',8,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:06','2022-09-22 01:27:06'),(138,'vi_subtitle','[\"T\\u01b0\\u01a1i m\\u1edbi m\\u1ed7i ng\\u00e0y v\\u1edbi\\n c\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a ch\\u00fang t\\u00f4i\"]',9,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:07','2022-09-22 01:27:07'),(139,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',9,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:08','2022-09-22 01:27:08'),(140,'vi_subtitle','[\"100% \\u0111\\u1ea3m b\\u1ea3o t\\u1ea5t c\\u1ea3\\n c\\u00e1c m\\u1eb7t h\\u00e0ng t\\u01b0\\u01a1i\"]',10,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:08','2022-09-22 01:27:08'),(141,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',10,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:08','2022-09-22 01:27:08'),(142,'vi_subtitle','[\"Gi\\u1ea3m gi\\u00e1 h\\u00e0ng t\\u1ea1p h\\u00f3a\\n \\u0111\\u1eb7c bi\\u1ec7t trong th\\u00e1ng n\\u00e0y\"]',11,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:08','2022-09-22 01:27:08'),(143,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',11,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:08','2022-09-22 01:27:08'),(144,'vi_subtitle','[\"GI\\u1ea2M GI\\u00c1 15% cho t\\u1ea5t c\\u1ea3\\n rau v\\u00e0 tr\\u00e1i c\\u00e2y\"]',12,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:09','2022-09-22 01:27:09'),(145,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',12,'Botble\\Ads\\Models\\Ads','2022-09-22 01:27:09','2022-09-22 01:27:09'),(146,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',1,'Botble\\Marketplace\\Models\\Store','2022-09-22 01:27:40','2022-09-22 01:27:40'),(147,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',2,'Botble\\Marketplace\\Models\\Store','2022-09-22 01:27:40','2022-09-22 01:27:40'),(148,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',3,'Botble\\Marketplace\\Models\\Store','2022-09-22 01:27:40','2022-09-22 01:27:40'),(149,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',4,'Botble\\Marketplace\\Models\\Store','2022-09-22 01:27:40','2022-09-22 01:27:40'),(150,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',5,'Botble\\Marketplace\\Models\\Store','2022-09-22 01:27:40','2022-09-22 01:27:40'),(151,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',6,'Botble\\Marketplace\\Models\\Store','2022-09-22 01:27:40','2022-09-22 01:27:40');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2020_11_18_150916_ads_create_ads_table',2),(21,'2021_12_02_035301_add_ads_translations_table',2),(22,'2015_06_29_025744_create_audit_history',3),(23,'2015_06_18_033822_create_blog_table',4),(24,'2021_02_16_092633_remove_default_value_for_author_type',4),(25,'2021_12_03_030600_create_blog_translations',4),(26,'2022_04_19_113923_add_index_to_table_posts',4),(27,'2016_06_17_091537_create_contacts_table',5),(28,'2020_03_05_041139_create_ecommerce_tables',6),(29,'2021_01_01_044147_ecommerce_create_flash_sale_table',6),(30,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',6),(31,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',6),(32,'2021_02_18_073505_update_table_ec_reviews',6),(33,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',6),(34,'2021_03_10_025153_change_column_tax_amount',6),(35,'2021_03_20_033103_add_column_availability_to_table_ec_products',6),(36,'2021_04_28_074008_ecommerce_create_product_label_table',6),(37,'2021_05_31_173037_ecommerce_create_ec_products_translations',6),(38,'2021_06_28_153141_correct_slugs_data',6),(39,'2021_08_17_105016_remove_column_currency_id_in_some_tables',6),(40,'2021_08_30_142128_add_images_column_to_ec_reviews_table',6),(41,'2021_09_01_115151_remove_unused_fields_in_ec_products',6),(42,'2021_10_04_030050_add_column_created_by_to_table_ec_products',6),(43,'2021_10_05_122616_add_status_column_to_ec_customers_table',6),(44,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',6),(45,'2021_11_23_071403_correct_languages_for_product_variations',6),(46,'2021_11_28_031808_add_product_tags_translations',6),(47,'2021_12_01_031123_add_featured_image_to_ec_products',6),(48,'2022_01_01_033107_update_table_ec_shipments',6),(49,'2022_02_16_042457_improve_product_attribute_sets',6),(50,'2022_03_22_075758_correct_product_name',6),(51,'2022_04_19_113334_add_index_to_ec_products',6),(52,'2022_04_28_144405_remove_unused_table',6),(53,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',6),(54,'2022_05_18_143720_add_index_to_table_ec_product_categories',6),(55,'2022_06_16_095633_add_index_to_some_tables',6),(56,'2022_06_30_035148_create_order_referrals_table',6),(57,'2022_07_24_153815_add_completed_at_to_ec_orders_table',6),(58,'2022_08_14_032836_create_ec_order_returns_table',6),(59,'2022_08_14_033554_create_ec_order_return_items_table',6),(60,'2022_08_15_040324_add_billing_address',6),(61,'2022_08_30_091114_support_digital_products_table',6),(62,'2018_07_09_221238_create_faq_table',7),(63,'2021_12_03_082134_create_faq_translations',7),(64,'2016_10_03_032336_create_languages_table',8),(65,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(66,'2021_12_03_075608_create_page_translations',9),(67,'2019_11_18_061011_create_country_table',10),(68,'2021_12_03_084118_create_location_translations',10),(69,'2021_12_03_094518_migrate_old_location_data',10),(70,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',10),(71,'2022_01_16_085908_improve_plugin_location',10),(72,'2022_08_04_052122_delete_location_backup_tables',10),(73,'2021_07_06_030002_create_marketplace_table',11),(74,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',11),(75,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',11),(76,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',11),(77,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',11),(78,'2021_12_06_031304_update_table_mp_customer_revenues',11),(79,'2017_10_24_154832_create_newsletter_table',12),(80,'2017_05_18_080441_create_payment_tables',13),(81,'2021_03_27_144913_add_customer_type_into_table_payments',13),(82,'2021_05_24_034720_make_column_currency_nullable',13),(83,'2021_08_09_161302_add_metadata_column_to_payments_table',13),(84,'2021_10_19_020859_update_metadata_field',13),(85,'2022_06_28_151901_activate_paypal_stripe_plugin',13),(86,'2022_07_07_153354_update_charge_id_in_table_payments',13),(87,'2017_07_11_140018_create_simple_slider_table',14),(88,'2016_10_07_193005_create_translations_table',15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,9,1,825.30,0.00,825.30,0.00,'USD',NULL,'2022-09-21 01:27:57','2022-09-21 01:27:57',0,NULL),(2,3,3,186.00,0.00,186.00,0.00,'USD',NULL,'2022-09-19 09:27:58','2022-09-19 09:27:58',0,NULL),(3,2,11,139.70,0.00,139.70,0.00,'USD',NULL,'2022-09-16 01:27:58','2022-09-16 01:27:58',0,NULL),(4,4,15,137.50,0.00,137.50,0.00,'USD',NULL,'2022-09-10 01:27:58','2022-09-10 01:27:58',0,NULL),(5,8,17,125.40,0.00,125.40,0.00,'USD',NULL,'2022-09-16 01:27:58','2022-09-16 01:27:58',0,NULL),(6,9,21,137.50,0.00,137.50,825.30,'USD',NULL,'2022-09-03 17:27:59','2022-09-03 17:27:59',0,NULL),(7,3,25,390.60,0.00,390.60,186.00,'USD',NULL,'2022-09-13 09:27:59','2022-09-13 09:27:59',0,NULL),(8,8,26,125.40,0.00,125.40,125.40,'USD',NULL,'2022-09-01 19:27:59','2022-09-01 19:27:59',0,NULL),(9,10,32,258.30,0.00,258.30,0.00,'USD',NULL,'2022-09-19 07:27:59','2022-09-19 07:27:59',0,NULL),(10,8,37,396.80,0.00,396.80,250.80,'USD',NULL,'2022-09-18 21:28:00','2022-09-18 21:28:00',0,NULL),(11,2,38,1171.10,0.00,1171.10,139.70,'USD',NULL,'2022-09-18 19:28:00','2022-09-18 19:28:00',0,NULL),(12,4,41,387.50,0.00,387.50,137.50,'USD',NULL,'2022-09-18 13:28:00','2022-09-18 13:28:00',0,NULL),(13,4,44,262.50,0.00,262.50,525.00,'USD',NULL,'2022-08-19 07:28:01','2022-08-19 07:28:01',0,NULL),(14,4,48,530.50,0.00,530.50,787.50,'USD',NULL,'2022-08-12 05:28:02','2022-08-12 05:28:02',0,NULL),(15,8,49,537.60,0.00,537.60,647.60,'USD',NULL,'2022-09-01 05:28:02','2022-09-01 05:28:02',0,NULL);
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,2,0.00,376.00,1310.80,'USD','','{\"name\":\"Destinee Legros\",\"number\":\"+17628104288\",\"full_name\":\"Hildegard Hansen DVM\",\"description\":\"Carol Hamill\"}',NULL,0,'pending',NULL,'2022-09-22 01:28:02','2022-09-22 01:28:02',NULL),(2,2,0.00,29.00,934.80,'USD','','{\"name\":\"Destinee Legros\",\"number\":\"+17628104288\",\"full_name\":\"Hildegard Hansen DVM\",\"description\":\"Carol Hamill\"}',NULL,0,'completed',NULL,'2022-09-22 01:28:02','2022-09-22 01:28:02',NULL),(3,3,0.00,59.00,576.60,'USD','','{\"name\":\"Elwin Johnston\",\"number\":\"+12083985361\",\"full_name\":\"Magnolia Grant\",\"description\":\"Irwin Paucek\"}',NULL,0,'pending',NULL,'2022-09-22 01:28:03','2022-09-22 01:28:03',NULL),(4,3,0.00,82.00,517.60,'USD','','{\"name\":\"Elwin Johnston\",\"number\":\"+12083985361\",\"full_name\":\"Magnolia Grant\",\"description\":\"Irwin Paucek\"}',NULL,0,'completed',NULL,'2022-09-22 01:28:03','2022-09-22 01:28:03',NULL),(5,3,0.00,48.00,435.60,'USD','','{\"name\":\"Elwin Johnston\",\"number\":\"+12083985361\",\"full_name\":\"Magnolia Grant\",\"description\":\"Irwin Paucek\"}',NULL,0,'completed',NULL,'2022-09-22 01:28:03','2022-09-22 01:28:03',NULL),(6,4,0.00,296.00,1318.00,'USD','','{\"name\":\"Alessia Eichmann\",\"number\":\"+12629707275\",\"full_name\":\"Gloria Mayert\",\"description\":\"Curtis Dibbert\"}',NULL,0,'pending',NULL,'2022-09-22 01:28:03','2022-09-22 01:28:03',NULL),(7,4,0.00,81.00,1022.00,'USD','','{\"name\":\"Alessia Eichmann\",\"number\":\"+12629707275\",\"full_name\":\"Gloria Mayert\",\"description\":\"Curtis Dibbert\"}',NULL,0,'processing',NULL,'2022-09-22 01:28:03','2022-09-22 01:28:03',NULL),(8,8,0.00,291.00,1185.20,'USD','','{\"name\":\"Hipolito Osinski\",\"number\":\"+16512777925\",\"full_name\":\"Shana Treutel\",\"description\":\"Tierra Connelly\"}',NULL,0,'processing',NULL,'2022-09-22 01:28:04','2022-09-22 01:28:04',NULL),(9,8,0.00,212.00,894.20,'USD','','{\"name\":\"Hipolito Osinski\",\"number\":\"+16512777925\",\"full_name\":\"Shana Treutel\",\"description\":\"Tierra Connelly\"}',NULL,0,'processing',NULL,'2022-09-22 01:28:04','2022-09-22 01:28:04',NULL),(10,9,0.00,122.00,962.80,'USD','','{\"name\":\"Karine Murazik\",\"number\":\"+17069429856\",\"full_name\":\"Tony Becker\",\"description\":\"Darien Ondricka DDS\"}',NULL,0,'pending',NULL,'2022-09-22 01:28:04','2022-09-22 01:28:04',NULL),(11,9,0.00,206.00,840.80,'USD','','{\"name\":\"Karine Murazik\",\"number\":\"+17069429856\",\"full_name\":\"Tony Becker\",\"description\":\"Darien Ondricka DDS\"}',NULL,0,'completed',NULL,'2022-09-22 01:28:04','2022-09-22 01:28:04',NULL),(12,10,0.00,29.00,258.30,'USD','','{\"name\":\"Alek Rice MD\",\"number\":\"+19546341914\",\"full_name\":\"Wilfrid Medhurst MD\",\"description\":\"Prof. Jules Wisoky I\"}',NULL,0,'processing',NULL,'2022-09-22 01:28:04','2022-09-22 01:28:04',NULL),(13,10,0.00,50.00,229.30,'USD','','{\"name\":\"Alek Rice MD\",\"number\":\"+19546341914\",\"full_name\":\"Wilfrid Medhurst MD\",\"description\":\"Prof. Jules Wisoky I\"}',NULL,0,'pending',NULL,'2022-09-22 01:28:05','2022-09-22 01:28:05',NULL),(14,10,0.00,2.00,179.30,'USD','','{\"name\":\"Alek Rice MD\",\"number\":\"+19546341914\",\"full_name\":\"Wilfrid Medhurst MD\",\"description\":\"Prof. Jules Wisoky I\"}',NULL,0,'completed',NULL,'2022-09-22 01:28:05','2022-09-22 01:28:05',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','geo52@example.org','+13216706574','3329 Marquise Locks','DE','Utah','New Beaubury',2,'stores/1.png','Qui sequi animi ut ducimus aspernatur.','Dolores et iusto et pariatur autem. Et dolorem officiis veritatis est voluptatem consectetur assumenda. Dolore exercitationem modi modi incidunt est.','published',NULL,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(2,'Global Office','bauch.magali@example.net','+14786958309','916 Evie Spurs Apt. 198','IL','Montana','Leschport',3,'stores/2.png','Et quae ea dolorum itaque expedita dolores.','Ut eius aut ut eos qui dolores. Quam illo dolor hic sequi voluptas hic maiores eum.','published',NULL,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(3,'Young Shop','schulist.breana@example.com','+17547252475','483 Charley Meadows','ST','Wyoming','Bettemouth',4,'stores/3.png','Animi velit rerum molestiae aut et recusandae.','Rerum animi qui aliquid inventore. Maiores expedita nemo assumenda eligendi excepturi. Doloremque voluptatum perspiciatis esse animi quas sunt quas.','published',NULL,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(4,'Global Store','alejandra07@example.net','+16783879932','411 Jacobson Lodge Apt. 204','TN','Nevada','Gayleborough',8,'stores/4.png','Rem possimus molestias voluptate quam.','Magnam ipsum sunt consequatur quo commodi necessitatibus. Minus magnam sit repudiandae aut perferendis quia.','published',NULL,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(5,'Robert’s Store','leannon.alessia@example.net','+15206745605','99691 Bonnie Stravenue Suite 514','BR','Wisconsin','North Catharine',9,'stores/5.png','Quia facilis voluptatum ut est.','Repellat aut dicta quo reprehenderit qui. Molestiae vel iure corporis fuga aut. Itaque ut exercitationem modi alias vel cumque.','published',NULL,'2022-09-22 01:27:40','2022-09-22 01:27:40'),(6,'Stouffer','nwuckert@example.net','+19097495501','83743 Swaniawski Pass Suite 330','SJ','Iowa','Jakubowskishire',10,'stores/6.png','Sed facere consequuntur ullam enim quis nobis.','Rerum eius est voluptatem sed ipsum et. Reprehenderit rerum qui autem. Natus fuga aspernatur odit quaerat quam deserunt dolor.','published',NULL,'2022-09-22 01:27:40','2022-09-22 01:27:40');
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,905.80,0.00,1310.80,'$2y$10$PVq83ZZD//OljvBlLTL1L.SAJhDM7eUSxvLaKbSa47hqekjrM2e8W','{\"name\":\"Destinee Legros\",\"number\":\"+17628104288\",\"full_name\":\"Hildegard Hansen DVM\",\"description\":\"Carol Hamill\"}','2022-09-22 01:27:39','2022-09-22 01:28:03'),(2,3,387.60,0.00,576.60,'$2y$10$A/uC2PhKHy/QGW3E9a8o0uA8st2x3K3YPdcDhBVOx5tNOPv9d0EBm','{\"name\":\"Elwin Johnston\",\"number\":\"+12083985361\",\"full_name\":\"Magnolia Grant\",\"description\":\"Irwin Paucek\"}','2022-09-22 01:27:39','2022-09-22 01:28:03'),(3,4,941.00,0.00,1318.00,'$2y$10$wJ/4jSgB0RXn/m7ui4N/.uFQoXsgfvn3jfqn.E8Mp6VYd3.f1WVDS','{\"name\":\"Alessia Eichmann\",\"number\":\"+12629707275\",\"full_name\":\"Gloria Mayert\",\"description\":\"Curtis Dibbert\"}','2022-09-22 01:27:39','2022-09-22 01:28:04'),(4,8,682.20,0.00,1185.20,'$2y$10$JMrTZ.gmFc8gagMem787ZeCvKc1iA0QHsw2EwSolZ8SUboNctCkTK','{\"name\":\"Hipolito Osinski\",\"number\":\"+16512777925\",\"full_name\":\"Shana Treutel\",\"description\":\"Tierra Connelly\"}','2022-09-22 01:27:39','2022-09-22 01:28:04'),(5,9,634.80,0.00,962.80,'$2y$10$cst7jhVmIz.aodtfcy8sdeVTc32M1PTNdBgaI5x2UtKI2ifDcHVty','{\"name\":\"Karine Murazik\",\"number\":\"+17069429856\",\"full_name\":\"Tony Becker\",\"description\":\"Darien Ondricka DDS\"}','2022-09-22 01:27:40','2022-09-22 01:28:04'),(6,10,177.30,0.00,258.30,'$2y$10$EGy9SGQwzqE4sfT.wPhhIutVJzVqhiT.ANk5UzCuUhNPEC.ZL/tLS','{\"name\":\"Alek Rice MD\",\"number\":\"+19546341914\",\"full_name\":\"Wilfrid Medhurst MD\",\"description\":\"Prof. Jules Wisoky I\"}','2022-09-22 01:27:40','2022-09-22 01:28:05');
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',0,NULL,'published','2022-09-22 01:26:51','2022-09-22 01:26:51'),(2,'Homepage 2','<div>[simple-slider key=\"home-slider-2\" ads_1=\"IZ6WU8KUALYH\" show_newsletter_form=\"yes\" cover_image=\"sliders/banner-1.png\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div>',1,NULL,'homepage',0,NULL,'published','2022-09-22 01:26:51','2022-09-22 01:26:51'),(3,'Homepage 3','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',0,NULL,'published','2022-09-22 01:26:51','2022-09-22 01:26:51'),(4,'Homepage 4','<div>[simple-slider key=\"home-slider-4\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',0,NULL,'published','2022-09-22 01:26:51','2022-09-22 01:26:51'),(5,'Blog','<p>---</p>',1,NULL,'blog-grid',0,NULL,'published','2022-09-22 01:26:51','2022-09-22 01:26:51'),(6,'Contact','<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>',1,NULL,'default',0,NULL,'published','2022-09-22 01:26:51','2022-09-22 01:26:51'),(7,'About us','<p>THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never even introduced to a farmer, you know, this sort in her life before, and behind them a railway station.) However, she got into a large mushroom growing near her, about four inches deep and reaching half down the bottle, saying to herself what such an extraordinary ways of living would be so proud as all that.\' \'Well, it\'s got no sorrow, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried to open it; but, as the.</p><p>Alice replied in an offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, old fellow?\' The Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'Suppose it should be like then?\' And she squeezed herself up closer to Alice\'s great surprise, the Duchess\'s voice died away, even in the lock, and to hear it say, as it lasted.) \'Then the eleventh day must have been that,\' said the Mouse in the other: the Duchess by this very sudden change, but very politely: \'Did you.</p><p>Alice, and she did not quite know what to beautify is, I can\'t show it you myself,\' the Mock Turtle. \'Certainly not!\' said Alice indignantly. \'Ah! then yours wasn\'t a bit of the treat. When the Mouse replied rather impatiently: \'any shrimp could have told you that.\' \'If I\'d been the right thing to get in at the door-- Pray, what is the driest thing I know. Silence all round, if you only kept on good terms with him, he\'d do almost anything you liked with the Lory, as soon as it went, as if.</p><p>Lobster Quadrille?\' the Gryphon answered, very nearly in the air. She did not get hold of its little eyes, but it was perfectly round, she came upon a little hot tea upon its forehead (the position in which you usually see Shakespeare, in the newspapers, at the sudden change, but very glad that it felt quite unhappy at the bottom of a globe of goldfish she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must be what he.</p>',1,NULL,'right-sidebar',0,NULL,'published','2022-09-22 01:26:51','2022-09-22 01:26:51'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',0,NULL,'published','2022-09-22 01:26:51','2022-09-22 01:26:51'),(9,'Terms & Conditions','<p>VERY deeply with a pair of boots every Christmas.\' And she began thinking over all she could see her after the others. \'Are their heads down! I am very tired of being upset, and their slates and pencils had been looking over their heads. She felt very lonely and low-spirited. In a minute or two, they began running about in all my life!\' Just as she spoke; \'either you or your head must be getting somewhere near the entrance of the house down!\' said the King. \'When did you ever saw. How she.</p><p>Alice, \'we learned French and music.\' \'And washing?\' said the Hatter, and, just as she could see, as well wait, as she could not help bursting out laughing: and when she had not the right height to rest her chin upon Alice\'s shoulder, and it sat down a very grave voice, \'until all the right word) \'--but I shall think nothing of the month, and doesn\'t tell what o\'clock it is!\' \'Why should it?\' muttered the Hatter. This piece of it now in sight, and no one to listen to her, And mentioned me to.</p><p>Mouse, getting up and bawled out, \"He\'s murdering the time! Off with his knuckles. It was high time you were never even introduced to a farmer, you know, and he went on again:-- \'I didn\'t know it was very like a frog; and both creatures hid their faces in their mouths--and they\'re all over with fright. \'Oh, I beg your pardon!\' cried Alice in a voice sometimes choked with sobs, to sing you a present of everything I\'ve said as yet.\' \'A cheap sort of present!\' thought Alice. The poor little thing.</p><p>Caterpillar. \'Well, I\'ve tried to say than his first remark, \'It was the fan and the other paw, \'lives a March Hare. \'Yes, please do!\' but the great question is, what did the Dormouse crossed the court, she said to herself what such an extraordinary ways of living would be so kind,\' Alice replied, so eagerly that the cause of this elegant thimble\'; and, when it had finished this short speech, they all moved off, and Alice looked up, and began to feel which way it was certainly too much of it.</p>',1,NULL,'default',0,NULL,'published','2022-09-22 01:26:51','2022-09-22 01:26:51'),(10,'Returns & Exchanges','<p>SOMETHING interesting is sure to kill it in a tone of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Gryphon, and, taking Alice by the pope, was soon submitted to by the time at the thought that SOMEBODY ought to tell him. \'A nice muddle their slates\'ll be in before the trial\'s over!\' thought Alice. The King turned pale, and shut his note-book hastily. \'Consider your verdict,\' the King said, with a lobster as a partner!\' cried the Gryphon. \'They can\'t have anything.</p><p>I!\' he replied. \'We quarrelled last March--just before HE went mad, you know--\' (pointing with his nose Trims his belt and his friends shared their never-ending meal, and the game began. Alice thought this must ever be A secret, kept from all the arches are gone from this morning,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, he was speaking, and this Alice thought to herself, (not in a voice she had known them all her coaxing. Hardly knowing what she did, she picked her.</p><p>As soon as the Lory positively refused to tell them something more. \'You promised to tell you--all I know I have dropped them, I wonder?\' Alice guessed who it was, and, as a boon, Was kindly permitted to pocket the spoon: While the Panther were sharing a pie--\' [later editions continued as follows When the Mouse to tell me who YOU are, first.\' \'Why?\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you balanced an eel on the floor, as it left no mark on the.</p><p>THEIR eyes bright and eager with many a strange tale, perhaps even with the tarts, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'You must be,\' said the Hatter, and here the conversation a little. \'\'Tis so,\' said Alice. \'That\'s very curious!\' she thought. \'I must go back and finish your story!\' Alice called after it; and while she was about a whiting before.\' \'I can tell you his history,\' As they walked off together. Alice was more hopeless than ever: she sat.</p>',1,NULL,'default',0,NULL,'published','2022-09-22 01:26:51','2022-09-22 01:26:51'),(11,'Shipping & Delivery','<p>I\'m not used to do:-- \'How doth the little--\"\' and she went down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two sobs choked his voice. \'Same as if it thought that SOMEBODY ought to be lost, as she swam about, trying to touch her. \'Poor little thing!\' It did so indeed, and much sooner than she had hurt the poor child, \'for I can\'t take LESS,\' said the Lory. Alice replied very readily: \'but that\'s because it stays the same thing as \"I get what I could shut up like a snout.</p><p>But at any rate a book of rules for shutting people up like a telescope.\' And so she set to work, and very soon found herself safe in a low voice, to the other, and making faces at him as he found it so VERY remarkable in that; nor did Alice think it would be a person of authority over Alice. \'Stand up and picking the daisies, when suddenly a footman because he taught us,\' said the Gryphon. \'We can do no more, whatever happens. What WILL become of you? I gave her answer. \'They\'re done with.</p><p>King said to herself, \'because of his shrill little voice, the name again!\' \'I won\'t interrupt again. I dare say there may be different,\' said Alice; \'that\'s not at all know whether it would be very likely true.) Down, down, down. Would the fall NEVER come to an end! \'I wonder how many hours a day is very confusing.\' \'It isn\'t,\' said the Hatter: \'I\'m on the stairs. Alice knew it was too late to wish that! She went in without knocking, and hurried upstairs, in great fear lest she should push.</p><p>Mock Turtle. So she went back to the Queen, who was passing at the stick, and held out its arms folded, frowning like a star-fish,\' thought Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' And then a row of lamps hanging from the Gryphon, and all the way wherever she wanted to send the hedgehog to, and, as the large birds complained that they would go, and making quite a conversation of it had a door leading right into a tree. \'Did you say pig, or fig?\' said the Gryphon interrupted in a low.</p>',1,NULL,'default',0,NULL,'published','2022-09-22 01:26:51','2022-09-22 01:26:51'),(12,'Privacy Policy','<p>Alice! when she first saw the White Rabbit read out, at the Footman\'s head: it just grazed his nose, you know?\' \'It\'s the stupidest tea-party I ever saw in my kitchen AT ALL. Soup does very well as the Caterpillar took the hookah out of a tree a few minutes she heard a little bird as soon as look at a reasonable pace,\' said the King. \'Shan\'t,\' said the Caterpillar. \'Is that the meeting adjourn, for the garden!\' and she went on: \'But why did they live on?\' said the Duchess, digging her sharp.</p><p>Alice very meekly: \'I\'m growing.\' \'You\'ve no right to grow here,\' said the Mock Turtle sighed deeply, and began, in a tone of delight, which changed into alarm in another moment down went Alice after it, never once considering how in the air, and came flying down upon her: she gave her one, they gave him two, You gave us three or more; They all made of solid glass; there was enough of it in with a melancholy way, being quite unable to move. She soon got it out loud. \'Thinking again?\' the.</p><p>Alice. \'I don\'t know the meaning of it at all,\' said the others. \'Are their heads off?\' shouted the Gryphon, and all her riper years, the simple and loving heart of her head impatiently; and, turning to the table for it, you know--\' \'What did they live at the cook, and a sad tale!\' said the Duchess. \'I make you grow taller, and the choking of the well, and noticed that one of the song, she kept on puzzling about it just now.\' \'It\'s the Cheshire Cat: now I shall have to ask help of any that.</p><p>But the insolence of his great wig.\' The judge, by the hand, it hurried off, without waiting for the hedgehogs; and in his turn; and both footmen, Alice noticed, had powdered hair that curled all over crumbs.\' \'You\'re wrong about the crumbs,\' said the Cat. \'--so long as I get it home?\' when it grunted again, and the Dormouse say?\' one of the door and found quite a conversation of it had struck her foot! She was close behind it when she was quite tired of swimming about here, O Mouse!\' (Alice.</p>',1,NULL,'default',0,NULL,'published','2022-09-22 01:26:51','2022-09-22 01:26:51'),(13,'Blog List','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-list',0,NULL,'published','2022-09-22 01:26:51','2022-09-22 01:26:51'),(14,'Blog Big','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-big',0,NULL,'published','2022-09-22 01:26:51','2022-09-22 01:26:51'),(15,'Blog Wide','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-wide',0,NULL,'published','2022-09-22 01:26:51','2022-09-22 01:26:51'),(16,'Homepage 5','<div>[simple-slider key=\"home-slider-5\" ads_1=\"IZ6WU8KUALYJ\" ads_2=\"IZ6WU8KUALYK\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYL\" ads_2=\"IZ6WU8KUALYM\" ads_3=\"IZ6WU8KUALYN\" ads_4=\"IZ6WU8KUALYO\" style=\"style-5\"][/theme-ads]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',0,NULL,'published','2022-09-22 01:26:51','2022-09-22 01:26:51'),(17,'Homepage 6','<div>[big-banner cover_image=\"general/home-6.jpeg\" show_newsletter_form=\"yes\" number_display_featured_categories=\"4\" title=\"What are you looking for?\"][/big-banner]</div><div>[trending-products title=\"Trending items\" limit=\"20\"][/trending-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',0,NULL,'published','2022-09-22 01:26:51','2022-09-22 01:26:51'),(18,'Faq','<div>[faqs][/faqs]</div>',1,NULL,'default',0,NULL,'published','2022-09-22 01:26:51','2022-09-22 01:26:51');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Bán chạy nhất hàng ngày\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',2,'Trang chủ 2',NULL,'<div>[simple-slider key=\"home-slider-2\" ads_1=\"IZ6WU8KUALYH\" show_newsletter_form=\"yes\" cover_image=\"sliders/banner-1.png\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Bán chạy nhất hàng ngày\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div><div>[product-categories title=\"Mua sắm theo danh mục\"][/product-categories]</div>'),('vi',3,'Trang chủ 3',NULL,'<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Mua sắm theo danh mục\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',4,'Trang chủ 4',NULL,'<div>[simple-slider key=\"home-slider-4\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Mua sắm theo danh mục\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',5,'Tin tức',NULL,'<p>---</p>'),('vi',6,'Liên hệ',NULL,'<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>'),('vi',7,'Về chúng tôi',NULL,'<p>WHAT?\' thought Alice; but she remembered having seen such a neck as that! No, no! You\'re a serpent; and there\'s no harm in trying.\' So she called softly after it, \'Mouse dear! Do come back with the birds and beasts, as well as she tucked her arm affectionately into Alice\'s, and they can\'t prove I did: there\'s no name signed at the Gryphon added \'Come, let\'s hear some of them even when they saw Alice coming. \'There\'s PLENTY of room!\' said Alice timidly. \'Would you tell me, Pat, what\'s that in.</p><p>It was the BEST butter, you know.\' He was looking down at them, and he checked himself suddenly: the others looked round also, and all the jelly-fish out of the shelves as she heard a little shriek and a large pool all round the rosetree; for, you see, Miss, we\'re doing our best, afore she comes, to--\' At this the whole pack of cards!\' At this moment Alice appeared, she was as steady as ever; Yet you finished the first figure,\' said the King: \'however, it may kiss my hand if it please your.</p><p>Dormouse, who was beginning to see it pop down a jar from one foot to the part about her repeating \'YOU ARE OLD, FATHER WILLIAM,\"\' said the Dodo, pointing to Alice an excellent plan, no doubt, and very soon came upon a Gryphon, lying fast asleep in the sea. But they HAVE their tails in their proper places--ALL,\' he repeated with great curiosity, and this Alice thought to herself, \'the way all the jurymen on to the beginning of the month is it?\' Alice panted as she could, and waited till the.</p><p>Alice remarked. \'Right, as usual,\' said the King triumphantly, pointing to the other: he came trotting along in a low voice, to the other: the Duchess said after a minute or two to think to herself, \'if one only knew how to speak first, \'why your cat grins like that?\' \'It\'s a mineral, I THINK,\' said Alice. \'What sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very seldom followed it), and sometimes shorter, until she had peeped into.</p>'),('vi',8,'Chính sách cookie',NULL,'<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('vi',9,'Điều kiện và điều khoản',NULL,'<p>King. (The jury all wrote down all three dates on their throne when they had to kneel down on their slates, and then treading on my tail. See how eagerly the lobsters and the Mock Turtle recovered his voice, and, with tears running down his brush, and had to stoop to save her neck kept getting entangled among the leaves, which she had grown in the grass, merely remarking that a moment\'s pause. The only things in the chimney as she ran; but the Dodo solemnly, rising to its children, \'Come away.</p><p>She hastily put down her anger as well as she was quite silent for a long tail, certainly,\' said Alice hastily; \'but I\'m not myself, you see.\' \'I don\'t think they play at all anxious to have any rules in particular; at least, if there were ten of them, and it\'ll sit up and said, very gravely, \'I think, you ought to be talking in a moment: she looked down at them, and the March Hare took the hookah into its face in some book, but I grow at a reasonable pace,\' said the Hatter. \'I told you that.\'.</p><p>Some of the wood to listen. The Fish-Footman began by taking the little door, so she helped herself to about two feet high, and her eyes filled with cupboards and book-shelves; here and there they are!\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you mean \"purpose\"?\' said Alice. \'Well, I shan\'t go, at any rate I\'ll never go THERE again!\' said Alice to herself, \'if one only knew the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, quite forgetting that she.</p><p>King, with an important air, \'are you all ready? This is the driest thing I ever saw one that size? Why, it fills the whole pack of cards!\' At this moment Five, who had not gone much farther before she came upon a little door about fifteen inches high: she tried hard to whistle to it; but she added, to herself, \'I don\'t think it\'s at all like the look of things at all, at all!\' \'Do as I get it home?\' when it saw Alice. It looked good-natured, she thought: still it was YOUR table,\' said Alice.</p>'),('vi',10,'Chính sách trả hàng',NULL,'<p>Alice an excellent opportunity for croqueting one of them at last, they must be removed,\' said the King said to Alice, she went on, \'What HAVE you been doing here?\' \'May it please your Majesty,\' he began, \'for bringing these in: but I shall remember it in asking riddles that have no answers.\' \'If you didn\'t like cats.\' \'Not like cats!\' cried the Mock Turtle: \'nine the next, and so on; then, when you\'ve cleared all the right height to rest her chin in salt water. Her first idea was that she.</p><p>This time Alice waited till the eyes appeared, and then I\'ll tell you more than that, if you like,\' said the King, \'that saves a world of trouble, you know, upon the other arm curled round her once more, while the Mouse to tell him. \'A nice muddle their slates\'ll be in Bill\'s place for a baby: altogether Alice did not appear, and after a few minutes, and began talking again. \'Dinah\'ll miss me very much at this, she looked back once or twice, and shook itself. Then it got down off the top of.</p><p>See how eagerly the lobsters and the beak-- Pray how did you do either!\' And the moral of that is--\"Birds of a book,\' thought Alice \'without pictures or conversations?\' So she began very cautiously: \'But I don\'t take this child away with me,\' thought Alice, and, after glaring at her feet, they seemed to be ashamed of yourself for asking such a thing before, and behind them a railway station.) However, she did not like to show you! A little bright-eyed terrier, you know, with oh, such long.</p><p>Five! Don\'t go splashing paint over me like a telescope.\' And so she went back for a good deal: this fireplace is narrow, to be seen--everything seemed to Alice as she remembered the number of cucumber-frames there must be!\' thought Alice. \'I\'m glad they don\'t give birthday presents like that!\' said Alice in a tone of this sort in her life, and had come back in a tone of this remark, and thought to herself, \'Which way? Which way?\', holding her hand in her head, she tried to beat time when I.</p>'),('vi',11,'Chính sách vận chuyển',NULL,'<p>Alice dodged behind a great crowd assembled about them--all sorts of things, and she, oh! she knows such a dear quiet thing,\' Alice went timidly up to the jury. \'Not yet, not yet!\' the Rabbit say, \'A barrowful of WHAT?\' thought Alice; \'but when you have to go on in a tone of great dismay, and began talking again. \'Dinah\'ll miss me very much pleased at having found out a history of the treat. When the procession came opposite to Alice, flinging the baby violently up and down looking for eggs.</p><p>Alice whispered, \'that it\'s done by everybody minding their own business,\' the Duchess said to the confused clamour of the Lobster Quadrille?\' the Gryphon went on, without attending to her, still it had some kind of serpent, that\'s all you know the way to fly up into a chrysalis--you will some day, you know--and then after that into a large flower-pot that stood near. The three soldiers wandered about in the same tone, exactly as if it thought that it would be QUITE as much right,\' said the.</p><p>Duchess\'s knee, while plates and dishes crashed around it--once more the shriek of the Queen added to one of the court,\" and I don\'t know where Dinn may be,\' said the King, with an M?\' said Alice. \'Nothing WHATEVER?\' persisted the King. On this the whole pack rose up into hers--she could hear the words:-- \'I speak severely to my boy, I beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' While the Duchess asked, with another hedgehog, which seemed to think about it, you know.\' \'Not at first.</p><p>Duchess. \'Everything\'s got a moral, if only you can have no idea what a wonderful dream it had made. \'He took me for a minute, trying to fix on one, the cook was busily stirring the soup, and seemed to be Number One,\' said Alice. \'Exactly so,\' said Alice. \'Then it doesn\'t understand English,\' thought Alice; \'only, as it\'s asleep, I suppose it doesn\'t mind.\' The table was a different person then.\' \'Explain all that,\' he said in an encouraging opening for a minute or two, looking for eggs, I.</p>'),('vi',12,'Chính sách bảo mật',NULL,'<p>The Duchess took her choice, and was going off into a conversation. \'You don\'t know where Dinn may be,\' said the Queen. \'I haven\'t opened it yet,\' said Alice; \'living at the top of it. She went on all the rest, Between yourself and me.\' \'That\'s the first question, you know.\' It was, no doubt: only Alice did not dare to laugh; and, as the March Hare went \'Sh! sh!\' and the procession came opposite to Alice, that she still held the pieces of mushroom in her own child-life, and the March Hare.</p><p>Alice to herself. (Alice had no idea how to begin.\' For, you see, because some of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, in a day is very confusing.\' \'It isn\'t,\' said the Duck: \'it\'s generally a ridge or furrow in the lock, and to wonder what I say--that\'s the same words as before, \'It\'s all his fancy, that: he hasn\'t got no sorrow, you know. So you see, because some of them say, \'Look out now, Five! Don\'t go splashing paint over me like a serpent. She had quite.</p><p>Alice after it, never once considering how in the morning, just time to go, for the fan and two or three of the Lizard\'s slate-pencil, and the Queen ordering off her unfortunate guests to execution--once more the pig-baby was sneezing and howling alternately without a great thistle, to keep back the wandering hair that curled all over with William the Conqueror.\' (For, with all their simple sorrows, and find a thing,\' said the King. The next witness would be quite absurd for her neck would.</p><p>Adventures of hers would, in the air: it puzzled her very much of it now in sight, and no one could possibly hear you.\' And certainly there was silence for some minutes. The Caterpillar and Alice looked down at them, and was gone across to the Queen. An invitation from the roof. There were doors all round the court was a good character, But said I didn\'t!\' interrupted Alice. \'You are,\' said the Caterpillar sternly. \'Explain yourself!\' \'I can\'t help it,\' said the Hatter; \'so I should think it.</p>'),('vi',13,'Blog danh sách',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',14,'Blog Lớn',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',15,'Blog Rộng',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',16,'Trang chủ 5',NULL,'<div>[simple-slider key=\"home-slider-5\" ads_1=\"IZ6WU8KUALYJ\" ads_2=\"IZ6WU8KUALYK\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYL\" ads_2=\"IZ6WU8KUALYM\" ads_3=\"IZ6WU8KUALYN\" ads_4=\"IZ6WU8KUALYO\" style=\"style-5\"][/theme-ads]</div><div>[best-flash-sale title=\"Bán chạy nhất hàng ngày\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',17,'Trang chủ 6',NULL,'<div>[big-banner cover_image=\"general/home-6.jpeg\" show_newsletter_form=\"yes\" number_display_featured_categories=\"4\" title=\"Bạn đang tìm kiếm sản phẩm?\"][/big-banner]</div><div>[trending-products title=\"Các mặt hàng thịnh hành\" limit=\"20\"][/trending-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',18,'Câu hỏi thường gặp',NULL,'<div>[faqs][/faqs]</div>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'KEUAZXQ415','mollie',NULL,825.30,1,'completed','confirm',1,NULL,NULL,'2022-09-22 01:27:43','2022-09-22 01:27:43','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'6GLAFB6H7V','cod',NULL,273.00,2,'pending','confirm',1,NULL,NULL,'2022-09-22 01:27:43','2022-09-22 01:27:43','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'MDXZTBYDSN','razorpay',NULL,186.00,3,'completed','confirm',5,NULL,NULL,'2022-09-22 01:27:43','2022-09-22 01:27:43','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'SGCDRFOUGH','paystack',NULL,395.30,4,'completed','confirm',5,NULL,NULL,'2022-09-22 01:27:43','2022-09-22 01:27:43','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'OHMOZ3G8I9','cod',NULL,393.70,5,'pending','confirm',5,NULL,NULL,'2022-09-22 01:27:43','2022-09-22 01:27:43','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'UXEHWPXSHH','sslcommerz',NULL,241.80,6,'completed','confirm',6,NULL,NULL,'2022-09-22 01:27:43','2022-09-22 01:27:43','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'PTUQYTA9M0','cod',NULL,650.10,7,'pending','confirm',6,NULL,NULL,'2022-09-22 01:27:46','2022-09-22 01:27:46','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'4AX68OYEVV','bank_transfer',NULL,393.70,8,'pending','confirm',6,NULL,NULL,'2022-09-22 01:27:47','2022-09-22 01:27:47','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'KGZTBLPVY9','bank_transfer',NULL,390.60,9,'pending','confirm',1,NULL,NULL,'2022-09-22 01:27:47','2022-09-22 01:27:47','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'EKOT1CE4FX','cod',NULL,270.90,10,'pending','confirm',1,NULL,NULL,'2022-09-22 01:27:49','2022-09-22 01:27:49','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'ECDSBOXUNR','mollie',NULL,139.70,11,'completed','confirm',5,NULL,NULL,'2022-09-22 01:27:50','2022-09-22 01:27:50','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'ZO7RFM56CP','paypal',NULL,254.10,12,'completed','confirm',5,NULL,NULL,'2022-09-22 01:27:50','2022-09-22 01:27:50','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'O5FYSXTRTQ','cod',NULL,638.20,13,'pending','confirm',1,NULL,NULL,'2022-09-22 01:27:50','2022-09-22 01:27:50','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'ECERNEZ16X','bank_transfer',NULL,636.20,14,'pending','confirm',1,NULL,NULL,'2022-09-22 01:27:54','2022-09-22 01:27:54','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'IKHVXVKRC0','stripe',NULL,137.50,15,'completed','confirm',1,NULL,NULL,'2022-09-22 01:27:54','2022-09-22 01:27:54','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'FOXQPEPJ2S','mollie',NULL,133.10,16,'completed','confirm',1,NULL,NULL,'2022-09-22 01:27:55','2022-09-22 01:27:55','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'PGNE6IBWDG','paypal',NULL,125.40,17,'completed','confirm',1,NULL,NULL,'2022-09-22 01:27:55','2022-09-22 01:27:55','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'CXU3QAX0XO','paystack',NULL,85.80,18,'completed','confirm',1,NULL,NULL,'2022-09-22 01:27:55','2022-09-22 01:27:55','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'QISR0LAE6Z','razorpay',NULL,264.60,19,'completed','confirm',1,NULL,NULL,'2022-09-22 01:27:55','2022-09-22 01:27:55','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'B6HKJBPXMJ','sslcommerz',NULL,396.80,20,'completed','confirm',5,NULL,NULL,'2022-09-22 01:27:55','2022-09-22 01:27:55','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'1DJHJWD4NN','paypal',NULL,137.50,21,'completed','confirm',5,NULL,NULL,'2022-09-22 01:27:55','2022-09-22 01:27:55','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'CDQVHVG8LU','razorpay',NULL,541.80,22,'completed','confirm',5,NULL,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'8ETYWRRNKX','cod',NULL,262.50,23,'pending','confirm',1,NULL,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'QKSCX60QKY','cod',NULL,141.90,24,'pending','confirm',1,NULL,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'EUU7IN8ZNW','mollie',NULL,390.60,25,'completed','confirm',1,NULL,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'FTBC3TTGY4','paypal',NULL,125.40,26,'completed','confirm',1,NULL,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'SLGVYKGWFY','bank_transfer',NULL,141.90,27,'pending','confirm',1,NULL,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'MZF1QLMUO2','stripe',NULL,241.50,28,'completed','confirm',5,NULL,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'A2KFZCP07W','bank_transfer',NULL,264.60,29,'pending','confirm',5,NULL,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'HEHIDMXARJ','bank_transfer',NULL,258.30,30,'pending','confirm',5,NULL,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'UEGSG7I8MM','bank_transfer',NULL,537.60,31,'pending','confirm',5,NULL,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'XKDOLJV6QN','sslcommerz',NULL,258.30,32,'completed','confirm',5,NULL,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'MXYVOB165Q','sslcommerz',NULL,387.50,33,'completed','confirm',1,NULL,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'JSRUC0PARD','bank_transfer',NULL,135.30,34,'pending','confirm',1,NULL,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'RCW1QXWFYD','paypal',NULL,1042.50,35,'completed','confirm',5,NULL,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'BYNW4QLFKR','sslcommerz',NULL,266.70,36,'completed','confirm',5,NULL,NULL,'2022-09-22 01:27:56','2022-09-22 01:27:56','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'6HRJPZOGIN','sslcommerz',NULL,396.80,37,'completed','confirm',5,NULL,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'U0KTS4VTY6','sslcommerz',NULL,1171.10,38,'completed','confirm',5,NULL,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'BIZQSLTKMC','cod',NULL,390.60,39,'pending','confirm',5,NULL,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'JNCACQNRSX','cod',NULL,432.30,40,'pending','confirm',5,NULL,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'EU16WJFTQA','paypal',NULL,387.50,41,'completed','confirm',5,NULL,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'ULW17LQYVA','mollie',NULL,254.10,42,'completed','confirm',5,NULL,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57','Botble\\Ecommerce\\Models\\Customer',NULL),(43,'USD',0,'DJLFUA3G7E','bank_transfer',NULL,141.90,43,'pending','confirm',5,NULL,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57','Botble\\Ecommerce\\Models\\Customer',NULL),(44,'USD',0,'BPCTQPLXK5','razorpay',NULL,262.50,44,'completed','confirm',1,NULL,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57','Botble\\Ecommerce\\Models\\Customer',NULL),(45,'USD',0,'GTUBKAM8ST','bank_transfer',NULL,679.50,45,'pending','confirm',1,NULL,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57','Botble\\Ecommerce\\Models\\Customer',NULL),(46,'USD',0,'A9UACAMVOR','stripe',NULL,348.70,46,'completed','confirm',5,NULL,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57','Botble\\Ecommerce\\Models\\Customer',NULL),(47,'USD',0,'ZTR48VRYMD','paystack',NULL,610.60,47,'completed','confirm',5,NULL,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57','Botble\\Ecommerce\\Models\\Customer',NULL),(48,'USD',0,'WYXYXLODRK','paypal',NULL,530.50,48,'completed','confirm',1,NULL,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57','Botble\\Ecommerce\\Models\\Customer',NULL),(49,'USD',0,'M1PHDR1FPP','stripe',NULL,537.60,49,'completed','confirm',1,NULL,NULL,'2022-09-22 01:27:57','2022-09-22 01:27:57','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1,1),(2,3,1),(3,2,2),(4,3,2),(5,2,3),(6,4,3),(7,1,4),(8,4,4),(9,2,5),(10,4,5),(11,2,6),(12,4,6),(13,1,7),(14,3,7),(15,1,8),(16,3,8),(17,2,9),(18,3,9),(19,1,10),(20,4,10),(21,2,11),(22,3,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,1,2),(7,2,2),(8,3,2),(9,4,2),(10,5,2),(11,1,3),(12,2,3),(13,3,3),(14,4,3),(15,5,3),(16,1,4),(17,2,4),(18,3,4),(19,4,4),(20,5,4),(21,1,5),(22,2,5),(23,3,5),(24,4,5),(25,5,5),(26,1,6),(27,2,6),(28,3,6),(29,4,6),(30,5,6),(31,1,7),(32,2,7),(33,3,7),(34,4,7),(35,5,7),(36,1,8),(37,2,8),(38,3,8),(39,4,8),(40,5,8),(41,1,9),(42,2,9),(43,3,9),(44,4,9),(45,5,9),(46,1,10),(47,2,10),(48,3,10),(49,4,10),(50,5,10),(51,1,11),(52,2,11),(53,3,11),(54,4,11),(55,5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `author_id` (`author_id`),
  KEY `author_type` (`author_type`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.png',2484,NULL,'2022-09-22 01:26:50','2022-09-22 01:26:50'),(2,'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.png',1148,NULL,'2022-09-22 01:26:50','2022-09-22 01:26:50'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.png',592,NULL,'2022-09-22 01:26:50','2022-09-22 01:26:50'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.png',1251,NULL,'2022-09-22 01:26:50','2022-09-22 01:26:50'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.png',742,NULL,'2022-09-22 01:26:50','2022-09-22 01:26:50'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.png',987,NULL,'2022-09-22 01:26:50','2022-09-22 01:26:50'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.png',1778,NULL,'2022-09-22 01:26:50','2022-09-22 01:26:50'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.png',544,NULL,'2022-09-22 01:26:51','2022-09-22 01:26:51'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.png',710,NULL,'2022-09-22 01:26:51','2022-09-22 01:26:51'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.png',1766,NULL,'2022-09-22 01:26:51','2022-09-22 01:26:51'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.png',2199,NULL,'2022-09-22 01:26:51','2022-09-22 01:26:51');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',2,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',3,'Xu hướng túi xách hàng đầu năm 2020 cần biết','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',4,'Cách Phối Màu Túi Xách Của Bạn Với Trang Phục','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',5,'Cách Chăm sóc Túi Da','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',6,'Chúng tôi đang nghiền ngẫm 10 xu hướng túi lớn nhất của mùa hè','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',7,'Những phẩm chất cần thiết của âm nhạc thành công cao','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',8,'9 điều tôi thích khi cạo đầu','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',9,'Tại sao làm việc theo nhóm thực sự biến giấc mơ thành công','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',10,'Thế giới phục vụ cho những người trung bình','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',11,'Các đương sự trên màn hình không phải là diễn viên','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n');
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\",\"mollie\"]',NULL,NULL),(4,'language_hide_default','1',NULL,NULL),(5,'language_switcher_display','dropdown',NULL,NULL),(6,'language_display','all',NULL,NULL),(7,'language_hide_languages','[]',NULL,NULL),(8,'ecommerce_store_name','Nest',NULL,NULL),(9,'ecommerce_store_phone','18006268',NULL,NULL),(10,'ecommerce_store_address','North Link Building, 10 Admiralty Street',NULL,NULL),(11,'ecommerce_store_state','Singapore',NULL,NULL),(12,'ecommerce_store_city','Singapore',NULL,NULL),(13,'ecommerce_store_country','SG',NULL,NULL),(14,'media_random_hash','dc66ec0cb83829fddd17a8b571312fff',NULL,NULL),(15,'permalink-botble-blog-models-post','blog',NULL,NULL),(16,'permalink-botble-blog-models-category','blog',NULL,NULL),(17,'payment_cod_status','1',NULL,NULL),(18,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(19,'payment_bank_transfer_status','1',NULL,NULL),(20,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,NULL),(21,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(22,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(23,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,NULL),(24,'payment_stripe_payment_type','stripe_checkout',NULL,NULL),(25,'simple_slider_using_assets','0',NULL,NULL),(26,'sale_popup_display_pages','[\"public.index\"]',NULL,NULL),(27,'ecommerce_is_enabled_support_digital_products','1',NULL,NULL),(28,'theme','nest',NULL,NULL),(29,'admin_favicon','general/favicon.png',NULL,NULL),(30,'admin_logo','general/logo.png',NULL,NULL),(31,'theme-nest-site_title','Nest - Laravel Multipurpose eCommerce Script',NULL,NULL),(32,'theme-nest-copyright','Copyright © 2021 Nest all rights reserved. Powered by Botble.',NULL,NULL),(33,'theme-nest-favicon','general/favicon.png',NULL,NULL),(34,'theme-nest-logo','general/logo.png',NULL,NULL),(35,'theme-nest-seo_og_image','general/open-graph-image.png',NULL,NULL),(36,'theme-nest-address','562 Wellington Road, Street 32, San Francisco',NULL,NULL),(37,'theme-nest-hotline','1900 - 888',NULL,NULL),(38,'theme-nest-phone','+01 2222 365 /(+91) 01 2345 6789',NULL,NULL),(39,'theme-nest-working_hours','10:00 - 18:00, Mon - Sat',NULL,NULL),(40,'theme-nest-homepage_id','1',NULL,NULL),(41,'theme-nest-blog_page_id','5',NULL,NULL),(42,'theme-nest-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(43,'theme-nest-cookie_consent_learn_more_url','http://nest.test/cookie-policy',NULL,NULL),(44,'theme-nest-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(45,'theme-nest-payment_methods','general/payment-methods.png',NULL,NULL),(46,'theme-nest-number_of_cross_sale_product','4',NULL,NULL),(47,'theme-nest-mobile-header-message','<span>Grand opening, <strong>up to 15%</strong> off all items. Only <strong>3 days</strong> left</span>',NULL,NULL),(48,'theme-nest-blog_page_background','general/header-bg.png',NULL,NULL),(49,'theme-nest-blog_page_icon','general/category-1.png',NULL,NULL),(50,'theme-nest-image_in_login_page','general/login-1.png',NULL,NULL),(51,'theme-nest-number_of_products_per_page','12',NULL,NULL),(52,'theme-nest-preloader_enabled','yes',NULL,NULL),(53,'theme-nest-preloader_version','v2',NULL,NULL),(54,'theme-nest-preloader_image','general/loading.gif',NULL,NULL),(55,'theme-nest-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"general\\/facebook.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"general\\/twitter.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"general\\/instagram.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"general\\/pinterest.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"general\\/youtube.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]',NULL,NULL),(56,'theme-nest-header_messages','[[{\"key\":\"icon\",\"value\":\"fi-rs-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\"> Trendy 25<\\/b> silver jewelry, save up 35% off today\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Shop now\"}],[{\"key\":\"icon\",\"value\":\"fi-rs-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">Super Value Deals<\\/b> - Save more with coupons\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fi-rs-angle-double-right\"},{\"key\":\"message\",\"value\":\"Get great devices up to 50% off\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"View details\"}]]',NULL,NULL),(57,'theme-nest-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Head Office\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Studio\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Shop\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL),(58,'theme-nest-vi-font_text','Roboto Condensed',NULL,NULL),(59,'theme-nest-vi-copyright','Bản quyền © 2021 Nest tất cả quyền đã được bảo hộ. Phát triển bởi Botble.',NULL,NULL),(60,'theme-nest-vi-working_hours','10:00 - 18:00, Thứ Hai - Thứ Bảy',NULL,NULL),(61,'theme-nest-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ',NULL,NULL),(62,'theme-nest-vi-cookie_consent_learn_more_url','http://nest.test/cookie-policy',NULL,NULL),(63,'theme-nest-vi-cookie_consent_learn_more_text','Chính sách cookie',NULL,NULL),(64,'theme-nest-vi-homepage_id','1',NULL,NULL),(65,'theme-nest-vi-blog_page_id','5',NULL,NULL),(66,'theme-nest-vi-header_messages','[[{\"key\":\"icon\",\"value\":\"fi-rs-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\">Trang s\\u1ee9c b\\u1ea1c 25 <\\/b> th\\u1eddi th\\u01b0\\u1ee3ng, ti\\u1ebft ki\\u1ec7m \\u0111\\u1ebfn 35%\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Mua ngay\"}],[{\"key\":\"icon\",\"value\":\"fi-rs-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">\\u01afu \\u0111\\u00e3i si\\u00eau gi\\u00e1 tr\\u1ecb <\\/b> - Ti\\u1ebft ki\\u1ec7m h\\u01a1n v\\u1edbi phi\\u1ebfu th\\u01b0\\u1edfng\"},{\"key\":\"link\",\"value\":null},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fi-rs-angle-double-right\"},{\"key\":\"message\",\"value\":\"Nh\\u1eadn c\\u00e1c s\\u1ea3n ph\\u1ea9m tuy\\u1ec7t v\\u1eddi gi\\u1ea3m gi\\u00e1 t\\u1edbi 50%\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Xem chi ti\\u1ebft\"}]]',NULL,NULL),(67,'theme-nest-vi-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Tr\\u1ee5 s\\u1edf ch\\u00ednh\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Gian h\\u00e0ng tr\\u01b0ng b\\u00e0y\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"C\\u1eeda h\\u00e0ng\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` int unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Don’t miss amazing<br /> grocery deals','sliders/1-1.png','/products','Sign up for the daily newsletter',1,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(2,1,'Fresh Vegetables<br />\n										Big discount','sliders/1-2.png','/products','Save up to 50% off on your first order',2,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(3,2,'Don’t miss amazing<br /> grocery deals','sliders/2-1.png','/products','Sign up for the daily newsletter',1,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(4,2,'Fresh Vegetables<br />\n										Big discount','sliders/2-2.png','/products','Save up to 50% off on your first order',2,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(5,3,'Don’t miss amazing<br /> grocery deals','sliders/3-1.png','/products','Sign up for the daily newsletter',1,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(6,3,'Fresh Vegetables<br />\n										Big discount','sliders/3-2.png','/products','Save up to 50% off on your first order',2,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(7,4,'Don’t miss amazing<br /> grocery deals','sliders/4-1.png','/products','Sign up for the daily newsletter',1,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(8,4,'Fresh Vegetables<br />\n										Big discount','sliders/4-2.png','/products','Save up to 50% off on your first order',2,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(9,5,'Don’t miss amazing<br /> grocery deals','sliders/5-1.png','/products','Sign up for the daily newsletter',1,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(10,5,'Fresh Vegetables<br />\n										Big discount','sliders/5-2.png','/products','Save up to 50% off on your first order',2,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(11,6,'Don’t miss amazing<br /> grocery deals','sliders/6-1.png','/products','Sign up for the daily newsletter',1,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(12,7,NULL,'sliders/thumbnail-1.jpg',NULL,NULL,1,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(13,7,NULL,'sliders/thumbnail-2.jpg',NULL,NULL,2,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(14,7,NULL,'sliders/thumbnail-3.jpg',NULL,NULL,3,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(15,7,NULL,'sliders/thumbnail-4.jpg',NULL,NULL,4,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(16,7,NULL,'sliders/thumbnail-5.jpg',NULL,NULL,5,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(17,7,NULL,'sliders/thumbnail-6.jpg',NULL,NULL,6,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(18,8,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/1-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(19,8,'Rau tươi <br />Giảm giá lớn','sliders/1-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(20,9,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/2-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(21,9,'Rau tươi <br />Giảm giá lớn','sliders/2-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(22,10,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/3-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(23,10,'Rau tươi <br />Giảm giá lớn','sliders/3-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(24,11,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/4-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(25,11,'Rau tươi <br />Giảm giá lớn','sliders/4-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(26,12,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/5-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(27,12,'Rau tươi <br />Giảm giá lớn','sliders/5-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(28,13,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/6-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(29,14,NULL,'sliders/thumbnail-1.jpg',NULL,NULL,1,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(30,14,NULL,'sliders/thumbnail-2.jpg',NULL,NULL,2,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(31,14,NULL,'sliders/thumbnail-3.jpg',NULL,NULL,3,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(32,14,NULL,'sliders/thumbnail-4.jpg',NULL,NULL,4,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(33,14,NULL,'sliders/thumbnail-5.jpg',NULL,NULL,5,'2022-09-22 01:26:37','2022-09-22 01:26:37'),(34,14,NULL,'sliders/thumbnail-6.jpg',NULL,NULL,6,'2022-09-22 01:26:37','2022-09-22 01:26:37');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider 1','home-slider-1',NULL,'published','2022-09-22 01:26:37','2022-09-22 01:26:37'),(2,'Home slider 2','home-slider-2',NULL,'published','2022-09-22 01:26:37','2022-09-22 01:26:37'),(3,'Home slider 3','home-slider-3',NULL,'published','2022-09-22 01:26:37','2022-09-22 01:26:37'),(4,'Home slider 4','home-slider-4',NULL,'published','2022-09-22 01:26:37','2022-09-22 01:26:37'),(5,'Home slider 5','home-slider-5',NULL,'published','2022-09-22 01:26:37','2022-09-22 01:26:37'),(6,'Home slider 6','home-slider-6',NULL,'published','2022-09-22 01:26:37','2022-09-22 01:26:37'),(7,'Blog slider 1','blog-slider-1',NULL,'published','2022-09-22 01:26:37','2022-09-22 01:26:37'),(8,'Slider trang chủ 1','slider-trang-chu-1',NULL,'published','2022-09-22 01:26:37','2022-09-22 01:26:37'),(9,'Slider trang chủ 2','slider-trang-chu-2',NULL,'published','2022-09-22 01:26:37','2022-09-22 01:26:37'),(10,'Slider trang chủ 3','slider-trang-chu-3',NULL,'published','2022-09-22 01:26:37','2022-09-22 01:26:37'),(11,'Slider trang chủ 4','slider-trang-chu-4',NULL,'published','2022-09-22 01:26:37','2022-09-22 01:26:37'),(12,'Slider trang chủ 5','slider-trang-chu-5',NULL,'published','2022-09-22 01:26:37','2022-09-22 01:26:37'),(13,'Slider trang chủ 6','slider-trang-chu-6',NULL,'published','2022-09-22 01:26:37','2022-09-22 01:26:37'),(14,'Slider blog 1','slider-blog-1',NULL,'published','2022-09-22 01:26:37','2022-09-22 01:26:37');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'perxsion',1,'Botble\\Ecommerce\\Models\\Brand','brands','2022-09-22 01:25:29','2022-09-22 01:25:29'),(2,'hiching',2,'Botble\\Ecommerce\\Models\\Brand','brands','2022-09-22 01:25:29','2022-09-22 01:25:29'),(3,'kepslo',3,'Botble\\Ecommerce\\Models\\Brand','brands','2022-09-22 01:25:29','2022-09-22 01:25:29'),(4,'groneba',4,'Botble\\Ecommerce\\Models\\Brand','brands','2022-09-22 01:25:29','2022-09-22 01:25:29'),(5,'babian',5,'Botble\\Ecommerce\\Models\\Brand','brands','2022-09-22 01:25:29','2022-09-22 01:25:29'),(6,'valorant',6,'Botble\\Ecommerce\\Models\\Brand','brands','2022-09-22 01:25:29','2022-09-22 01:25:29'),(7,'pure',7,'Botble\\Ecommerce\\Models\\Brand','brands','2022-09-22 01:25:29','2022-09-22 01:25:29'),(8,'milks-and-dairies',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-22 01:25:36','2022-09-22 01:25:36'),(9,'clothing-beauty',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-22 01:25:36','2022-09-22 01:25:36'),(10,'pet-toy',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-22 01:25:36','2022-09-22 01:25:36'),(11,'baking-material',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-22 01:25:36','2022-09-22 01:25:36'),(12,'fresh-fruit',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-22 01:25:36','2022-09-22 01:25:36'),(13,'wines-drinks',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-22 01:25:36','2022-09-22 01:25:36'),(14,'fresh-seafood',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-22 01:25:36','2022-09-22 01:25:36'),(15,'fast-food',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-22 01:25:36','2022-09-22 01:25:36'),(16,'vegetables',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-22 01:25:36','2022-09-22 01:25:36'),(17,'bread-and-juice',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-22 01:25:36','2022-09-22 01:25:36'),(18,'cake-milk',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-22 01:25:36','2022-09-22 01:25:36'),(19,'coffee-teas',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-22 01:25:36','2022-09-22 01:25:36'),(20,'pet-foods',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-22 01:25:36','2022-09-22 01:25:36'),(21,'diet-foods',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-22 01:25:36','2022-09-22 01:25:36'),(22,'wallet',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-09-22 01:25:36','2022-09-22 01:25:36'),(23,'bags',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-09-22 01:25:36','2022-09-22 01:25:36'),(24,'shoes',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-09-22 01:25:36','2022-09-22 01:25:36'),(25,'clothes',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-09-22 01:25:36','2022-09-22 01:25:36'),(26,'hand-bag',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-09-22 01:25:36','2022-09-22 01:25:36'),(27,'seeds-of-change-organic-quinoe',1,'Botble\\Ecommerce\\Models\\Product','products','2022-09-22 01:25:59','2022-09-22 01:25:59'),(28,'all-natural-italian-style-chicken-meatballs',2,'Botble\\Ecommerce\\Models\\Product','products','2022-09-22 01:25:59','2022-09-22 01:25:59'),(29,'angies-boomchickapop-sweet-salty-kettle-corn',3,'Botble\\Ecommerce\\Models\\Product','products','2022-09-22 01:26:00','2022-09-22 01:26:00'),(30,'foster-farms-takeout-crispy-classic',4,'Botble\\Ecommerce\\Models\\Product','products','2022-09-22 01:26:00','2022-09-22 01:26:00'),(31,'blue-diamond-almonds-lightly',5,'Botble\\Ecommerce\\Models\\Product','products','2022-09-22 01:26:00','2022-09-22 01:26:00'),(32,'chobani-complete-vanilla-greek',6,'Botble\\Ecommerce\\Models\\Product','products','2022-09-22 01:26:00','2022-09-22 01:26:00'),(33,'canada-dry-ginger-ale-2-l-bottle',7,'Botble\\Ecommerce\\Models\\Product','products','2022-09-22 01:26:00','2022-09-22 01:26:00'),(34,'encore-seafoods-stuffed-alaskan',8,'Botble\\Ecommerce\\Models\\Product','products','2022-09-22 01:26:00','2022-09-22 01:26:00'),(35,'gortons-beer-battered-fish-fillets',9,'Botble\\Ecommerce\\Models\\Product','products','2022-09-22 01:26:00','2022-09-22 01:26:00'),(36,'haagen-dazs-caramel-cone-ice-cream',10,'Botble\\Ecommerce\\Models\\Product','products','2022-09-22 01:26:00','2022-09-22 01:26:00'),(37,'nestle-original-coffee-mate-coffee-creamer',11,'Botble\\Ecommerce\\Models\\Product','products','2022-09-22 01:26:00','2022-09-22 01:26:00'),(38,'naturally-flavored-cinnamon-vanilla-light-roast-coffee',12,'Botble\\Ecommerce\\Models\\Product','products','2022-09-22 01:26:00','2022-09-22 01:26:00'),(39,'pepperidge-farm-farmhouse-hearty-white-bread',13,'Botble\\Ecommerce\\Models\\Product','products','2022-09-22 01:26:01','2022-09-22 01:26:01'),(40,'organic-frozen-triple-berry-blend',14,'Botble\\Ecommerce\\Models\\Product','products','2022-09-22 01:26:01','2022-09-22 01:26:01'),(41,'oroweat-country-buttermilk-bread',15,'Botble\\Ecommerce\\Models\\Product','products','2022-09-22 01:26:01','2022-09-22 01:26:01'),(42,'foster-farms-takeout-crispy-classic-buffalo-wings',16,'Botble\\Ecommerce\\Models\\Product','products','2022-09-22 01:26:01','2022-09-22 01:26:01'),(43,'angies-boomchickapop-sweet-salty-kettle-corn',17,'Botble\\Ecommerce\\Models\\Product','products','2022-09-22 01:26:01','2022-09-22 01:26:01'),(44,'all-natural-italian-style-chicken-meatballs',18,'Botble\\Ecommerce\\Models\\Product','products','2022-09-22 01:26:01','2022-09-22 01:26:01'),(45,'simply-lemonade-with-raspberry-juice',19,'Botble\\Ecommerce\\Models\\Product','products','2022-09-22 01:26:01','2022-09-22 01:26:01'),(46,'perdue-simply-smart-organics-gluten-free',20,'Botble\\Ecommerce\\Models\\Product','products','2022-09-22 01:26:01','2022-09-22 01:26:01'),(47,'chen-watermelon',21,'Botble\\Ecommerce\\Models\\Product','products','2022-09-22 01:26:01','2022-09-22 01:26:01'),(48,'organic-cage-free-grade-a-large-brown-eggs',22,'Botble\\Ecommerce\\Models\\Product','products','2022-09-22 01:26:01','2022-09-22 01:26:01'),(49,'colorful-banana',23,'Botble\\Ecommerce\\Models\\Product','products','2022-09-22 01:26:01','2022-09-22 01:26:01'),(50,'signature-wood-fired-mushroom-and-caramelized',24,'Botble\\Ecommerce\\Models\\Product','products','2022-09-22 01:26:02','2022-09-22 01:26:02'),(51,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2022-09-22 01:26:49','2022-09-22 01:26:52'),(52,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2022-09-22 01:26:49','2022-09-22 01:26:52'),(53,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2022-09-22 01:26:49','2022-09-22 01:26:52'),(54,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2022-09-22 01:26:49','2022-09-22 01:26:52'),(55,'general',1,'Botble\\Blog\\Models\\Tag','tag','2022-09-22 01:26:50','2022-09-22 01:26:50'),(56,'design',2,'Botble\\Blog\\Models\\Tag','tag','2022-09-22 01:26:50','2022-09-22 01:26:50'),(57,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2022-09-22 01:26:50','2022-09-22 01:26:50'),(58,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2022-09-22 01:26:50','2022-09-22 01:26:50'),(59,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2022-09-22 01:26:50','2022-09-22 01:26:50'),(60,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2022-09-22 01:26:50','2022-09-22 01:26:52'),(61,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2022-09-22 01:26:50','2022-09-22 01:26:52'),(62,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2022-09-22 01:26:50','2022-09-22 01:26:52'),(63,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2022-09-22 01:26:50','2022-09-22 01:26:52'),(64,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2022-09-22 01:26:50','2022-09-22 01:26:52'),(65,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2022-09-22 01:26:50','2022-09-22 01:26:52'),(66,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2022-09-22 01:26:51','2022-09-22 01:26:52'),(67,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2022-09-22 01:26:51','2022-09-22 01:26:52'),(68,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2022-09-22 01:26:51','2022-09-22 01:26:52'),(69,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2022-09-22 01:26:51','2022-09-22 01:26:52'),(70,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2022-09-22 01:26:51','2022-09-22 01:26:52'),(71,'homepage',1,'Botble\\Page\\Models\\Page','','2022-09-22 01:26:51','2022-09-22 01:26:51'),(72,'homepage-2',2,'Botble\\Page\\Models\\Page','','2022-09-22 01:26:51','2022-09-22 01:26:51'),(73,'homepage-3',3,'Botble\\Page\\Models\\Page','','2022-09-22 01:26:51','2022-09-22 01:26:51'),(74,'homepage-4',4,'Botble\\Page\\Models\\Page','','2022-09-22 01:26:51','2022-09-22 01:26:51'),(75,'blog',5,'Botble\\Page\\Models\\Page','','2022-09-22 01:26:51','2022-09-22 01:26:51'),(76,'contact',6,'Botble\\Page\\Models\\Page','','2022-09-22 01:26:51','2022-09-22 01:26:51'),(77,'about-us',7,'Botble\\Page\\Models\\Page','','2022-09-22 01:26:51','2022-09-22 01:26:51'),(78,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2022-09-22 01:26:51','2022-09-22 01:26:51'),(79,'terms-conditions',9,'Botble\\Page\\Models\\Page','','2022-09-22 01:26:51','2022-09-22 01:26:51'),(80,'returns-exchanges',10,'Botble\\Page\\Models\\Page','','2022-09-22 01:26:51','2022-09-22 01:26:51'),(81,'shipping-delivery',11,'Botble\\Page\\Models\\Page','','2022-09-22 01:26:51','2022-09-22 01:26:51'),(82,'privacy-policy',12,'Botble\\Page\\Models\\Page','','2022-09-22 01:26:51','2022-09-22 01:26:51'),(83,'blog-list',13,'Botble\\Page\\Models\\Page','','2022-09-22 01:26:51','2022-09-22 01:26:51'),(84,'blog-big',14,'Botble\\Page\\Models\\Page','','2022-09-22 01:26:51','2022-09-22 01:26:51'),(85,'blog-wide',15,'Botble\\Page\\Models\\Page','','2022-09-22 01:26:51','2022-09-22 01:26:51'),(86,'homepage-5',16,'Botble\\Page\\Models\\Page','','2022-09-22 01:26:51','2022-09-22 01:26:51'),(87,'homepage-6',17,'Botble\\Page\\Models\\Page','','2022-09-22 01:26:51','2022-09-22 01:26:51'),(88,'faq',18,'Botble\\Page\\Models\\Page','','2022-09-22 01:26:51','2022-09-22 01:26:51'),(89,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2022-09-22 01:27:40','2022-09-22 01:27:40'),(90,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2022-09-22 01:27:40','2022-09-22 01:27:40'),(91,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2022-09-22 01:27:40','2022-09-22 01:27:40'),(92,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2022-09-22 01:27:40','2022-09-22 01:27:40'),(93,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2022-09-22 01:27:40','2022-09-22 01:27:40'),(94,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2022-09-22 01:27:40','2022-09-22 01:27:40');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2022-09-22 01:26:49','2022-09-22 01:26:49'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2022-09-22 01:26:50','2022-09-22 01:26:50'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2022-09-22 01:26:50','2022-09-22 01:26:50'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2022-09-22 01:26:50','2022-09-22 01:26:50'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2022-09-22 01:26:50','2022-09-22 01:26:50');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Thiết kế',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Thương hiệu',NULL),('vi',5,'Hiện đại',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4896 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@botble.com',NULL,'$2y$10$myy64Qkn74ZK1RVFnUQ2w.p3563j/8Lwdwa9nWxXyOnGSV7sn9plq',NULL,'2022-09-22 01:26:52','2022-09-22 01:26:52','System','Admin','botble',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_sidebar','nest',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"Site information\",\"about\":\"Awesome grocery store website template\",\"phone\":\"(+91) - 540-025-124553\",\"address\":\"5171 W Campbell Ave undefined Kent, Utah 53127 United States\",\"email\":\"sale@Nest.com\",\"working_hours\":\"10:00 - 18:00, Mon - Sat\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(2,'CustomMenuWidget','footer_sidebar','nest',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(3,'CustomMenuWidget','footer_sidebar','nest',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"product-categories\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(4,'CustomMenuWidget','footer_sidebar','nest',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(5,'InstallAppWidget','footer_sidebar','nest',3,'{\"id\":\"InstallAppWidget\",\"name\":\"Install App\",\"apps_description\":\"From App Store or Google Play\",\"ios_app_url\":\"#\",\"ios_app_image\":\"general\\/app-store.jpg\",\"android_app_url\":\"#\",\"android_app_image\":\"general\\/google-play.jpg\",\"payment_gateway_description\":\"Secured Payment Gateways\",\"payment_gateway_image\":\"general\\/payment-methods.png\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(6,'BlogSearchWidget','primary_sidebar','nest',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(7,'ProductCategoriesWidget','primary_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(8,'TrendingProductsWidget','primary_sidebar','nest',2,'{\"id\":\"TrendingProductsWidget\",\"name\":\"Trending Now\",\"number_display\":4}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(9,'GalleryWidget','primary_sidebar','nest',3,'{\"id\":\"GalleryWidget\",\"name\":\"Gallery\",\"slider_key\":\"slider-blog-1\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(10,'TagsWidget','primary_sidebar','nest',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(11,'AdsWidget','primary_sidebar','nest',5,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(12,'ProductCategoriesWidget','product_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(13,'PriceFilterWidget','product_sidebar','nest',2,'{\"id\":\"PriceFilterWidget\",\"name\":\"Filter by price\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(14,'NewProductsWidget','product_sidebar','nest',3,'{\"id\":\"NewProductsWidget\",\"name\":\"New products\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(15,'AdsWidget','product_sidebar','nest',4,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(16,'NewsletterWidget','pre_footer_sidebar','nest',0,'{\"id\":\"NewsletterWidget\",\"title\":\"Stay home & get your daily <br \\/>needs from our shop\",\"subtitle\":\"Start Your Daily Shopping with <span>Nest Mart<\\/span>\",\"image\":\"general\\/newsletter-image.png\",\"background_image\":\"general\\/newsletter-background-image.png\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(17,'SiteFeaturesWidget','pre_footer_sidebar','nest',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-1.png\",\"title\":\"Best prices & offers\",\"subtitle\":\"Orders $50 or more\"},\"2\":{\"icon\":\"general\\/icon-2.png\",\"title\":\"Free delivery\",\"subtitle\":\"24\\/7 amazing services\"},\"3\":{\"icon\":\"general\\/icon-3.png\",\"title\":\"Great daily deal\",\"subtitle\":\"When you sign up\"},\"4\":{\"icon\":\"general\\/icon-4.png\",\"title\":\"Wide assortment\",\"subtitle\":\"Mega Discounts\"},\"5\":{\"icon\":\"general\\/icon-5.png\",\"title\":\"Easy returns\",\"subtitle\":\"Within 30 days\"}}}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(18,'SiteInfoWidget','footer_sidebar','nest-vi',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"V\\u1ec1 ch\\u00fang t\\u00f4i\",\"about\":\"M\\u1eabu trang web c\\u1eeda h\\u00e0ng t\\u1ea1p h\\u00f3a tuy\\u1ec7t v\\u1eddi\",\"phone\":\"(+91) - 540-025-124553\",\"address\":\"5171 W Campbell Ave undefined Kent, Utah 53127 United States\",\"email\":\"sale@Nest.com\",\"working_hours\":\"10:00 - 18:00, Th\\u1ee9 2 - Th\\u1ee9 7\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(19,'CustomMenuWidget','footer_sidebar','nest-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"C\\u00f4ng ty\",\"menu_id\":\"cong-ty\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(20,'CustomMenuWidget','footer_sidebar','nest-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\",\"menu_id\":\"danh-muc-san-pham\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(21,'CustomMenuWidget','footer_sidebar','nest-vi',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Th\\u00f4ng tin\",\"menu_id\":\"thong-tin\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(22,'BlogSearchWidget','primary_sidebar','nest-vi',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"T\\u00ecm ki\\u1ebfm\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(23,'BlogCategoriesWidget','primary_sidebar','nest-vi',1,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(24,'RecentPostsWidget','primary_sidebar','nest-vi',2,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(25,'TagsWidget','primary_sidebar','nest-vi',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags ph\\u1ed5 bi\\u1ebfn\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(26,'ProductCategoriesWidget','product_sidebar','nest-vi',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(27,'FeaturedProductsWidget','product_sidebar','nest-vi',2,'{\"id\":\"FeaturedProductsWidget\",\"name\":\"S\\u1ea3n ph\\u1ea9m n\\u1ed5i b\\u1eadt\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(28,'FeaturedBrandsWidget','product_sidebar','nest-vi',3,'{\"id\":\"FeaturedBrandsWidget\",\"name\":\"Nh\\u00e0 cung c\\u1ea5p\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(29,'NewsletterWidget','pre_footer_sidebar','nest-vi',0,'{\"id\":\"NewsletterWidget\",\"title\":\"\\u1ede nh\\u00e0 & \\u0111\\u00e1p \\u1ee9ng nhu c\\u1ea7u <br \\/> h\\u00e0ng ng\\u00e0y c\\u1ee7a b\\u1ea1n t\\u1eeb c\\u1eeda h\\u00e0ng c\\u1ee7a ch\\u00fang t\\u00f4i\",\"subtitle\":\"B\\u1eaft \\u0111\\u1ea7u mua s\\u1eafm v\\u1edbi <span>Nest Mart<\\/span>\",\"image\":\"general\\/newsletter-image.png\",\"background_image\":\"general\\/newsletter-background-image.png\"}','2022-09-22 01:27:10','2022-09-22 01:27:10'),(30,'SiteFeaturesWidget','pre_footer_sidebar','nest-vi',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-1.png\",\"title\":\"Gi\\u00e1 & \\u01b0u \\u0111\\u00e3i t\\u1ed1t nh\\u1ea5t\",\"subtitle\":\"Cho \\u0111\\u01a1n h\\u00e0ng t\\u1eeb $50\"},\"2\":{\"icon\":\"general\\/icon-2.png\",\"title\":\"Mi\\u1ec5n ph\\u00ed v\\u1eadn chuy\\u1ec3n\",\"subtitle\":\"D\\u1ecbch v\\u1ee5 tuy\\u1ec7t v\\u1eddi 24\\/7\"},\"3\":{\"icon\":\"general\\/icon-3.png\",\"title\":\"\\u01afu \\u0111\\u00e3i h\\u00e0ng ng\\u00e0y\",\"subtitle\":\"Khi b\\u1ea1n \\u0111\\u0103ng k\\u00fd\"},\"4\":{\"icon\":\"general\\/icon-4.png\",\"title\":\"Nhi\\u1ec1u m\\u1eb7t h\\u00e0ng\",\"subtitle\":\"Gi\\u1ea3m gi\\u00e1 c\\u1ef1c l\\u1edbn\"},\"5\":{\"icon\":\"general\\/icon-5.png\",\"title\":\"D\\u1ec5 d\\u00e0ng ho\\u00e0n tr\\u1ea3\",\"subtitle\":\"Trong v\\u00f2ng 30 ng\\u00e0y\"}}}','2022-09-22 01:27:10','2022-09-22 01:27:10');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-22 15:29:39