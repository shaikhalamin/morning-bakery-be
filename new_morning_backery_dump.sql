-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: morning_backery
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_unique` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Others','others','2022-12-09 04:57:19','2022-12-09 04:57:19'),(2,'Bread/Bun','bread_bun','2022-12-09 05:16:37','2022-12-09 05:16:37'),(3,'Coockies','coockies','2022-12-09 05:17:16','2022-12-09 05:17:16'),(4,'Cake','cake','2022-12-09 05:18:02','2022-12-09 05:18:02'),(5,'Buiscuits','biscuits','2022-12-09 05:18:44','2022-12-09 05:18:44'),(6,'Snacks','snacks','2022-12-09 05:19:24','2022-12-09 05:19:24'),(7,'Sweets','sweets','2022-12-09 05:19:59','2022-12-09 05:19:59');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_12_03_143244_create_categories_table',1),(6,'2022_12_03_143316_create_products_table',1),(7,'2022_12_03_143328_create_orders_table',1),(8,'2022_12_03_143335_create_carts_table',1),(9,'2022_12_03_143349_create_profiles_table',1),(10,'2022_12_03_143415_create_wishlists_table',1),(11,'2022_12_03_143434_create_addresses_table',1),(12,'2022_12_03_143753_create_storage_files_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriptions` longtext COLLATE utf8mb4_unicode_ci,
  `quantity` double(8,2) NOT NULL,
  `weight` double(8,2) NOT NULL,
  `price` double(8,2) NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`),
  KEY `products_user_id_foreign` (`user_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Rosh Golla','Test description of rosh golla',20.00,500.00,450.00,'WFSW00001',7,NULL,'2022-12-09 05:59:54','2022-12-09 05:59:54'),(2,'Motichur Laddu','Test description of motichur laddu',20.00,500.00,450.00,'WFSW00001',7,NULL,'2022-12-09 06:06:48','2022-12-09 06:06:48'),(3,'Mawar Balushai','Balushai wieight 1000 price 460',500.00,1000.00,460.00,'WFSW00004',7,NULL,'2022-12-11 13:08:33','2022-12-11 13:08:33'),(4,'Kacha Golla','Kacha Golla wieight 1000 price 880',500.00,1000.00,880.00,'WFSW00004',7,NULL,'2022-12-11 13:10:48','2022-12-11 13:10:48'),(5,'Mihidana Laddu','Mihidana Laddu wieight 1000 price 510',500.00,1000.00,510.00,'WFSW00004',7,NULL,'2022-12-11 13:12:27','2022-12-11 13:12:27'),(6,'Well Baklava','Well Baklava wieight 1000 price 1000',500.00,1000.00,1000.00,'WFSW00004',7,NULL,'2022-12-11 13:14:04','2022-12-11 13:14:04'),(7,'Chamcham','Chamcham wieight 1000 price 500',500.00,1000.00,500.00,'WFSW00004',7,NULL,'2022-12-11 13:15:19','2022-12-11 13:15:19'),(8,'Baby Sweets','Baby Sweets wieight 1000 price 600',500.00,1000.00,600.00,'WFSW00004',7,NULL,'2022-12-11 13:16:32','2022-12-11 13:16:32'),(9,'Kalo Jam','Kalo Jam wieight 1000 price 450',500.00,1000.00,450.00,'WFSW00004',7,NULL,'2022-12-11 13:18:19','2022-12-11 13:18:19'),(10,'Mawa Laddu','Mawa Laddu wieight 1000 price 530',500.00,1000.00,530.00,'WFSW00004',7,NULL,'2022-12-11 13:19:32','2022-12-11 13:19:32'),(11,'Irani Bhogh','Irani Bhogh wieight 1000 price 820',500.00,1000.00,820.00,'WFSW00004',7,NULL,'2022-12-11 13:21:07','2022-12-11 13:21:07'),(12,'Lalmohon','Lalmohon wieight 1000 price 450',500.00,1000.00,450.00,'WFSW00004',7,NULL,'2022-12-11 13:22:14','2022-12-11 13:22:14'),(13,'Chicken Samusa Dry','Chicken Samusa Dry 1 piece 25',1234.00,1.00,25.00,'WFSW00004',6,NULL,'2022-12-11 13:30:26','2022-12-11 13:30:26'),(14,'Chicken Bread Roll','Chicken Bread Roll 3pieces 95',1234.00,3.00,95.00,'WFSW00004',6,NULL,'2022-12-11 13:33:45','2022-12-11 13:33:45'),(15,'Chicken Burger','Chicken Burger 1 piece 115',1234.00,1.00,115.00,'WFSW00004',6,NULL,'2022-12-11 13:36:50','2022-12-11 13:36:50'),(16,'Chicken Kima Porata','Chicken Kima Porata 1 piece 105',1234.00,1.00,105.00,'WFSW00004',6,NULL,'2022-12-11 13:38:15','2022-12-11 13:38:15'),(17,'Chicken Pettis','Chicken Pettis 1 piece 70',1234.00,1.00,70.00,'WFSW00004',6,NULL,'2022-12-11 13:40:09','2022-12-11 13:40:09'),(18,'Vegetable Singara','Vegetable Singara 1 piece 25',1234.00,1.00,25.00,'WFSW00004',6,NULL,'2022-12-11 13:42:06','2022-12-11 13:42:06'),(19,'Chicken Shwarma','Chicken Shwarma 1 piece 140',1234.00,1.00,140.00,'WFSW00004',6,NULL,'2022-12-11 13:44:43','2022-12-11 13:44:43'),(20,'Chicken Cutlet Sandwich','Chicken Cutlet Sandwich 1 piece 125',1234.00,1.00,125.00,'WFSW00004',6,NULL,'2022-12-11 13:46:20','2022-12-11 13:46:20'),(21,'Chicken Cheese Puff','Chicken Cheese Puff 1 piece 60',1234.00,1.00,60.00,'WFSW00004',6,NULL,'2022-12-11 13:47:20','2022-12-11 13:47:20'),(22,'Beef Kolija Singara','Beef Kolija Singara 1 piece 30',1234.00,1.00,30.00,'WFSW00004',6,NULL,'2022-12-11 13:48:20','2022-12-11 13:48:20'),(23,'Chicken Pizza Roll','Chicken Pizza Roll 1 piece 55',1234.00,1.00,55.00,'WFSW00004',6,NULL,'2022-12-11 13:50:13','2022-12-11 13:50:13'),(24,'Well Bela Biscuit','Well Bela Biscuitl 400gm 110',1234.00,400.00,110.00,'WFSW00004',5,NULL,'2022-12-11 13:58:31','2022-12-11 13:58:31'),(25,'Well Chocolate Dry Cake','Well Chocolate Dry Cake 300gm 245',1234.00,300.00,245.00,'WFSW00004',5,NULL,'2022-12-11 14:08:21','2022-12-11 14:08:21'),(26,'Well Dry Cake Premium','Well Chocolate Dry Cake 300gm 245',1234.00,300.00,245.00,'WFSW00004',5,NULL,'2022-12-11 14:09:14','2022-12-11 14:09:14'),(27,'Well Sugar Free Biscuits','Well Sugar Free Biscuits 300gm 210',1234.00,300.00,210.00,'WFSW00004',5,NULL,'2022-12-11 14:10:44','2022-12-11 14:10:44'),(28,'Well Crispy Butter Biscuits','Well Crispy Butter Biscuits 300gm 245',1234.00,300.00,245.00,'WFSW00004',5,NULL,'2022-12-11 14:11:50','2022-12-11 14:11:50'),(29,'Well Horli Plus','Well Horli Plus 300gm 245',1234.00,300.00,245.00,'WFSW00004',5,NULL,'2022-12-11 14:12:47','2022-12-11 14:12:47'),(30,'Well Oval Plus','Well Oval Plus 300gm 245',1234.00,300.00,245.00,'WFSW00004',5,NULL,'2022-12-11 14:13:29','2022-12-11 14:13:29'),(31,'Well Choco Bite Premium','Well Choco Bite Premium 300gm 245',1234.00,300.00,245.00,'WFSW00004',5,NULL,'2022-12-11 14:14:08','2022-12-11 14:14:08'),(32,'Well Choco Nimki','Well Choco Nimki 300gm 245',1234.00,300.00,245.00,'WFSW00004',5,NULL,'2022-12-11 14:14:54','2022-12-11 14:14:54'),(33,'Regular Vanilla Cake 1','Regular Vanilla Cake 1 1000gm 1600',1234.00,1000.00,1600.00,'WFSW00004',4,NULL,'2022-12-12 00:01:07','2022-12-12 00:01:07'),(34,'Caramel Mousse Cake','Caramel Mousse Cake 1000gm 1800',1234.00,1000.00,1800.00,'WFSW00004',4,NULL,'2022-12-12 00:03:16','2022-12-12 00:03:16'),(35,'White Forest Cake','White Forest Cake 1000gm 2000',1234.00,1000.00,2000.00,'WFSW00004',4,NULL,'2022-12-12 00:04:24','2022-12-12 00:04:24'),(36,'Black Forest Cake','Black Forest Cake 1000gm 2000',1234.00,1000.00,2000.00,'WFSW00004',4,NULL,'2022-12-12 00:05:17','2022-12-12 00:05:17'),(37,'Vanilla Lemon Cake','Vanilla Lemon Cake 1000gm 1700',1234.00,1000.00,1700.00,'WFSW00004',4,NULL,'2022-12-12 00:06:10','2022-12-12 00:06:10'),(38,'Red Velvet Cheese Cake','Red Velvet Cheese Cake 1000gm 2400',1234.00,1000.00,2400.00,'WFSW00004',4,NULL,'2022-12-12 00:07:05','2022-12-12 00:07:05'),(39,'Regular Chocolate','Regular Chocolate Cake 1 1000gm 1800',1234.00,1000.00,1800.00,'WFSW00004',4,NULL,'2022-12-12 00:02:10','2022-12-12 00:02:10'),(40,'Vanilla Anniversary Cake','Vanilla Anniversary Cake 1000gm 2450',1234.00,1000.00,2450.00,'WFSW00004',4,NULL,'2022-12-12 00:10:36','2022-12-12 00:10:36'),(41,'Premium Black Forest','Premium Black Forest Cake 1000gm 2600',1234.00,1000.00,2600.00,'WFSW00004',4,NULL,'2022-12-12 00:11:57','2022-12-12 00:11:57'),(42,'Mirror Chocolate Cake','Mirror Chocolate Cake 1000gm 2250',1234.00,1000.00,2250.00,'WFSW00004',4,NULL,'2022-12-12 00:13:31','2022-12-12 00:13:31'),(43,'Vanilla Fresh Fruit','Vanilla Fresh Fruit Cake 1000gm 2450',1234.00,1000.00,2450.00,'WFSW00004',4,NULL,'2022-12-12 00:14:53','2022-12-12 00:14:53'),(44,'Vanilla Nut Rain','Vanilla Nut Rain Cake 1000gm 2450',1234.00,1000.00,2450.00,'WFSW00004',4,NULL,'2022-12-12 00:18:00','2022-12-12 00:18:00'),(45,'Premium Chocolate Cake','Premium Chocolate 1000gm 2250',1234.00,1000.00,2250.00,'WFSW00004',4,NULL,'2022-12-12 00:22:06','2022-12-12 00:22:06'),(46,'Rosatte Cake','Rosatte Cake 1000gm 1600',1234.00,1000.00,1600.00,'WFSW00004',4,NULL,'2022-12-12 00:25:36','2022-12-12 00:25:36'),(47,'OMG Chocolate Cake','OMG Chocolate Cake 1000gm 2500',1234.00,1000.00,2500.00,'WFSW00004',4,NULL,'2022-12-12 00:33:54','2022-12-12 00:33:54'),(48,'Queen Of Heart','Queen Of Heart 1000gm 1800',1234.00,1000.00,1800.00,'WFSW00004',4,NULL,'2022-12-12 00:34:57','2022-12-12 00:34:57'),(49,'Queen Victoria','Queen Victoria 1000gm 1800',1234.00,1000.00,1800.00,'WFSW00004',4,NULL,'2022-12-12 00:37:01','2022-12-12 00:37:01'),(50,'Blueberry Cake','Blueberry Cake 1000gm 2550',1234.00,1000.00,2550.00,'WFSW00004',4,NULL,'2022-12-12 00:37:55','2022-12-12 00:37:55'),(51,'Cappucino Cake','Cappucino Cake 1000gm 1600',1234.00,1000.00,1600.00,'WFSW00004',4,NULL,'2022-12-12 00:39:49','2022-12-12 00:39:49'),(52,'Ferrero Rocher Choco','Ferrero Rocher Chocolate Cake 1000gm 2250',1234.00,1000.00,2250.00,'WFSW00004',4,NULL,'2022-12-12 00:08:21','2022-12-12 00:08:21'),(53,'Well Butter Cookies','Well Butter Cookies 300gm 235',1234.00,300.00,235.00,'WFSW00004',3,NULL,'2022-12-12 01:09:57','2022-12-12 01:09:57'),(54,'Chocolate Chips','Chocolate Chips Cookies 300gm 330',1234.00,300.00,330.00,'WFSW00004',3,NULL,'2022-12-12 01:11:37','2022-12-12 01:11:37'),(55,'Milk Salt Cookies','Milk Salt Cookies 300gm 235',1234.00,300.00,235.00,'WFSW00004',3,NULL,'2022-12-12 01:13:18','2022-12-12 01:13:18'),(56,'Sugar Free Cookies','Sugar Free Cookies 300gm 235',1234.00,300.00,235.00,'WFSW00004',3,NULL,'2022-12-12 01:15:43','2022-12-12 01:15:43'),(57,'Butter Salt Cookies','Butter Salt Cookies 300gm 245',1234.00,300.00,245.00,'WFSW00004',3,NULL,'2022-12-12 01:17:13','2022-12-12 01:17:13'),(58,'Pistachio Cookies','Pistachio Cookies 300gm 275',1234.00,300.00,275.00,'WFSW00004',3,NULL,'2022-12-12 01:20:09','2022-12-12 01:20:09'),(59,'Almond Choco Fill','Almond Choco Fill Cookies 300gm 245',1234.00,300.00,245.00,'WFSW00004',3,NULL,'2022-12-12 01:21:06','2022-12-12 01:21:06'),(60,'Choco Cheese Bites','Choco Cheese Bites Cookies 300gm 145',1234.00,300.00,145.00,'WFSW00004',3,NULL,'2022-12-12 01:22:16','2022-12-12 01:22:16'),(61,'Brown Bread','Brown Bread 200gm 125',1234.00,200.00,125.00,'WFSW00004',2,NULL,'2022-12-12 01:28:36','2022-12-12 01:28:36'),(62,'Milk Bread','Milk Bread 200gm 100',1234.00,200.00,100.00,'WFSW00004',2,NULL,'2022-12-12 01:29:42','2022-12-12 01:29:42'),(63,'Sandwich Bread','Sandwich Bread 200gm 95',1234.00,200.00,95.00,'WFSW00004',2,NULL,'2022-12-12 01:31:36','2022-12-12 01:31:36'),(64,'Well Bread','Well Bread 200gm 85',1234.00,200.00,85.00,'WFSW00004',2,NULL,'2022-12-12 01:32:24','2022-12-12 01:32:24'),(65,'Burger Bun','Burger Bun 4pieces 65',1234.00,125.00,65.00,'WFSW00004',2,NULL,'2022-12-12 01:34:07','2022-12-12 01:34:07'),(66,'Cream Bun','Cream Bun 4pieces 60',1234.00,100.00,60.00,'WFSW00004',2,NULL,'2022-12-12 01:59:28','2022-12-12 01:59:28'),(67,'Lemon Bun','Lemon Bun 4pieces 60',1234.00,100.00,60.00,'WFSW00004',2,NULL,'2022-12-12 02:00:11','2022-12-12 02:00:11'),(68,'Long Bun','Long Bun 4pieces 60',1234.00,100.00,60.00,'WFSW00004',2,NULL,'2022-12-12 02:00:54','2022-12-12 02:00:54'),(69,'Lachcha Semai','Lachcha Semai 400gm 150',1234.00,400.00,150.00,'WFSW00004',1,NULL,'2022-12-12 02:05:02','2022-12-12 02:05:02'),(70,'Mixed Fried Flattened','Mixed Fried Flattened 150gm 65',1234.00,150.00,65.00,'WFSW00004',1,NULL,'2022-12-12 02:06:15','2022-12-12 02:06:15'),(71,'Soan Papdi','Soan Papdi 400gm 230',1234.00,400.00,230.00,'WFSW00004',1,NULL,'2022-12-12 02:07:35','2022-12-12 02:07:35'),(72,'Lachcha Shemai Premium','Lachcha Shemai Premium 500gm 325',1234.00,500.00,325.00,'WFSW00004',1,NULL,'2022-12-12 02:08:59','2022-12-12 02:08:59'),(73,'Eclair','Eclair 1piece 80',1234.00,100.00,80.00,'WFSW00004',1,NULL,'2022-12-12 02:10:11','2022-12-12 02:10:11'),(74,'Mixed Fried Plus','Mixed Fried Plus 100gm 65',1234.00,100.00,65.00,'WFSW00004',1,NULL,'2022-12-12 02:11:45','2022-12-12 02:11:45'),(75,'Noodles','Noodles 100gm 30',1234.00,100.00,30.00,'WFSW00004',1,NULL,'2022-12-12 02:13:18','2022-12-12 02:13:18');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage_files`
--

DROP TABLE IF EXISTS `storage_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storage_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `product_id` bigint unsigned DEFAULT NULL,
  `category_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `storage_files_product_id_foreign` (`product_id`),
  KEY `storage_files_category_id_foreign` (`category_id`),
  CONSTRAINT `storage_files_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storage_files`
--

LOCK TABLES `storage_files` WRITE;
/*!40000 ALTER TABLE `storage_files` DISABLE KEYS */;
INSERT INTO `storage_files` VALUES (1,'banner','lg','bakery/banner/m2sovdmxtfd7koyxkmkb','https://res.cloudinary.com/deundpsr2/image/upload/v1670580789/bakery/banner/m2sovdmxtfd7koyxkmkb.png',1,NULL,NULL,'2022-12-09 04:13:10','2022-12-09 04:13:10'),(2,'banner','lg','bakery/banner/jwdxii64svsxlp8iwjgq','https://res.cloudinary.com/deundpsr2/image/upload/v1670580824/bakery/banner/jwdxii64svsxlp8iwjgq.jpg',1,NULL,NULL,'2022-12-09 04:13:45','2022-12-09 04:13:45'),(3,'banner','lg','bakery/banner/ro27sxzneflqqxepbvjv','https://res.cloudinary.com/deundpsr2/image/upload/v1670580834/bakery/banner/ro27sxzneflqqxepbvjv.jpg',1,NULL,NULL,'2022-12-09 04:13:54','2022-12-09 04:13:54'),(4,'banner','lg','bakery/banner/mpqtifiou94qhv1ic7ot','https://res.cloudinary.com/deundpsr2/image/upload/v1670580844/bakery/banner/mpqtifiou94qhv1ic7ot.jpg',1,NULL,NULL,'2022-12-09 04:14:04','2022-12-09 04:14:04'),(5,'category','lg','bakery/category/uckqnhswaqifeyftlerb','https://res.cloudinary.com/deundpsr2/image/upload/v1670583429/bakery/category/uckqnhswaqifeyftlerb.png',1,NULL,1,'2022-12-09 04:57:09','2022-12-09 04:57:19'),(6,'category','lg','bakery/category/gxznsvvtlwzzgchqhyql','https://res.cloudinary.com/deundpsr2/image/upload/v1670584577/bakery/category/gxznsvvtlwzzgchqhyql.png',1,NULL,2,'2022-12-09 05:16:17','2022-12-09 05:16:37'),(7,'category','lg','bakery/category/gbqykwiywqztdg26fr71','https://res.cloudinary.com/deundpsr2/image/upload/v1670584616/bakery/category/gbqykwiywqztdg26fr71.png',1,NULL,3,'2022-12-09 05:16:56','2022-12-09 05:17:16'),(8,'category','lg','bakery/category/gtkrkdwxdsqhze1rcnjd','https://res.cloudinary.com/deundpsr2/image/upload/v1670584667/bakery/category/gtkrkdwxdsqhze1rcnjd.png',1,NULL,4,'2022-12-09 05:17:47','2022-12-09 05:18:02'),(9,'category','lg','bakery/category/sqphn4nhnnkpvr9ktcum','https://res.cloudinary.com/deundpsr2/image/upload/v1670584700/bakery/category/sqphn4nhnnkpvr9ktcum.png',1,NULL,5,'2022-12-09 05:18:21','2022-12-09 05:18:44'),(10,'category','lg','bakery/category/eejkzbzvrjncwpor0h6o','https://res.cloudinary.com/deundpsr2/image/upload/v1670584745/bakery/category/eejkzbzvrjncwpor0h6o.png',1,NULL,6,'2022-12-09 05:19:05','2022-12-09 05:19:24'),(11,'category','lg','bakery/category/ek6eszaowyq14ggfowec','https://res.cloudinary.com/deundpsr2/image/upload/v1670584780/bakery/category/ek6eszaowyq14ggfowec.png',1,NULL,7,'2022-12-09 05:19:41','2022-12-09 05:19:59'),(12,'product','lg','bakery/product/rzaerblvstvdlze2zmoe','https://res.cloudinary.com/deundpsr2/image/upload/v1670586651/bakery/product/rzaerblvstvdlze2zmoe.jpg',1,2,NULL,'2022-12-09 05:50:51','2022-12-09 05:59:54'),(13,'product','lg','bakery/product/h74qgqizginimnn1p71y','https://res.cloudinary.com/deundpsr2/image/upload/v1670587578/bakery/product/h74qgqizginimnn1p71y.jpg',1,3,NULL,'2022-12-09 06:06:19','2022-12-09 06:06:48'),(14,'home_banner','lg','bakery/home_banner/i2tfv0rzaicoyllusdbn','https://res.cloudinary.com/deundpsr2/image/upload/v1670780388/bakery/home_banner/i2tfv0rzaicoyllusdbn.png',1,NULL,NULL,'2022-12-11 11:39:49','2022-12-11 11:39:49'),(15,'products','lg','bakery/products/a64bnvh0mc8wdutlp6mf','https://res.cloudinary.com/deundpsr2/image/upload/v1670785647/bakery/products/a64bnvh0mc8wdutlp6mf.jpg',1,4,NULL,'2022-12-11 13:07:28','2022-12-11 13:08:33'),(16,'products','lg','bakery/products/l3chkugefabsnqpy6jg7','https://res.cloudinary.com/deundpsr2/image/upload/v1670785799/bakery/products/l3chkugefabsnqpy6jg7.jpg',1,5,NULL,'2022-12-11 13:09:59','2022-12-11 13:10:48'),(17,'products','lg','bakery/products/hz9i3v8tgnsymgjkxp4y','https://res.cloudinary.com/deundpsr2/image/upload/v1670785895/bakery/products/hz9i3v8tgnsymgjkxp4y.jpg',1,6,NULL,'2022-12-11 13:11:36','2022-12-11 13:12:27'),(18,'products','lg','bakery/products/bzxpzsa1tpig4tccbgip','https://res.cloudinary.com/deundpsr2/image/upload/v1670786030/bakery/products/bzxpzsa1tpig4tccbgip.jpg',1,7,NULL,'2022-12-11 13:13:51','2022-12-11 13:14:04'),(19,'products','lg','bakery/products/rjxcfvnoxwveemrh1fph','https://res.cloudinary.com/deundpsr2/image/upload/v1670786088/bakery/products/rjxcfvnoxwveemrh1fph.jpg',1,8,NULL,'2022-12-11 13:14:48','2022-12-11 13:15:19'),(20,'products','lg','bakery/products/rjrefqzsyzsi7fchu9zz','https://res.cloudinary.com/deundpsr2/image/upload/v1670786156/bakery/products/rjrefqzsyzsi7fchu9zz.jpg',1,9,NULL,'2022-12-11 13:15:57','2022-12-11 13:16:32'),(21,'products','lg','bakery/products/uarihh9fatjoltksytli','https://res.cloudinary.com/deundpsr2/image/upload/v1670786241/bakery/products/uarihh9fatjoltksytli.jpg',1,10,NULL,'2022-12-11 13:17:22','2022-12-11 13:18:19'),(22,'products','lg','bakery/products/lnroebejmzckdqn8cmvw','https://res.cloudinary.com/deundpsr2/image/upload/v1670786326/bakery/products/lnroebejmzckdqn8cmvw.jpg',1,11,NULL,'2022-12-11 13:18:46','2022-12-11 13:19:32'),(23,'products','lg','bakery/products/kjgcd6tk1wndrbpvoe9p','https://res.cloudinary.com/deundpsr2/image/upload/v1670786418/bakery/products/kjgcd6tk1wndrbpvoe9p.jpg',1,12,NULL,'2022-12-11 13:20:18','2022-12-11 13:21:07'),(24,'products','lg','bakery/products/owqj2mncuhjv1zlrqf4m','https://res.cloudinary.com/deundpsr2/image/upload/v1670786493/bakery/products/owqj2mncuhjv1zlrqf4m.jpg',1,13,NULL,'2022-12-11 13:21:33','2022-12-11 13:22:14'),(25,'products','lg','bakery/products/p2zasg1jv2y5d8o4qzbr','https://res.cloudinary.com/deundpsr2/image/upload/v1670786945/bakery/products/p2zasg1jv2y5d8o4qzbr.jpg',1,14,NULL,'2022-12-11 13:29:05','2022-12-11 13:30:26'),(26,'products','lg','bakery/products/eegeqbmgenubdgq0c5jv','https://res.cloudinary.com/deundpsr2/image/upload/v1670787107/bakery/products/eegeqbmgenubdgq0c5jv.jpg',1,15,NULL,'2022-12-11 13:31:48','2022-12-11 13:33:45'),(27,'products','lg','bakery/products/uw6is3kspdllqpzg37jn','https://res.cloudinary.com/deundpsr2/image/upload/v1670787367/bakery/products/uw6is3kspdllqpzg37jn.jpg',1,16,NULL,'2022-12-11 13:36:07','2022-12-11 13:36:50'),(28,'products','lg','bakery/products/ojkoguyxpiwg85f7d0hq','https://res.cloudinary.com/deundpsr2/image/upload/v1670787482/bakery/products/ojkoguyxpiwg85f7d0hq.jpg',1,17,NULL,'2022-12-11 13:38:03','2022-12-11 13:38:15'),(29,'products','lg','bakery/products/qrx17ld0aej2m3ichitu','https://res.cloudinary.com/deundpsr2/image/upload/v1670787570/bakery/products/qrx17ld0aej2m3ichitu.jpg',1,18,NULL,'2022-12-11 13:39:30','2022-12-11 13:40:09'),(30,'products','lg','bakery/products/jly18zks3fxhkdm1x1c2','https://res.cloudinary.com/deundpsr2/image/upload/v1670787684/bakery/products/jly18zks3fxhkdm1x1c2.jpg',1,19,NULL,'2022-12-11 13:41:25','2022-12-11 13:42:06'),(31,'products','lg','bakery/products/hliokmfknehesuqweyr6','https://res.cloudinary.com/deundpsr2/image/upload/v1670787832/bakery/products/hliokmfknehesuqweyr6.jpg',1,20,NULL,'2022-12-11 13:43:53','2022-12-11 13:44:43'),(32,'products','lg','bakery/products/xp5ljflcnppwurqiytq8','https://res.cloudinary.com/deundpsr2/image/upload/v1670787973/bakery/products/xp5ljflcnppwurqiytq8.jpg',1,21,NULL,'2022-12-11 13:46:13','2022-12-11 13:46:20'),(33,'products','lg','bakery/products/zulyw507vygisaz95kyf','https://res.cloudinary.com/deundpsr2/image/upload/v1670788033/bakery/products/zulyw507vygisaz95kyf.jpg',1,22,NULL,'2022-12-11 13:47:14','2022-12-11 13:47:20'),(34,'products','lg','bakery/products/b8zlrufpgp7kxodryaci','https://res.cloudinary.com/deundpsr2/image/upload/v1670788089/bakery/products/b8zlrufpgp7kxodryaci.jpg',1,23,NULL,'2022-12-11 13:48:10','2022-12-11 13:48:20'),(35,'products','lg','bakery/products/iraxuntisgj9ceunfqnb','https://res.cloudinary.com/deundpsr2/image/upload/v1670788202/bakery/products/iraxuntisgj9ceunfqnb.jpg',1,24,NULL,'2022-12-11 13:50:03','2022-12-11 13:50:13'),(36,'products','lg','bakery/products/yqn7h6hjwoa73hakxifh','https://res.cloudinary.com/deundpsr2/image/upload/v1670788693/bakery/products/yqn7h6hjwoa73hakxifh.jpg',1,25,NULL,'2022-12-11 13:58:13','2022-12-11 13:58:31'),(37,'products','lg','bakery/products/wqpthck5vhlrbmi6ickr','https://res.cloudinary.com/deundpsr2/image/upload/v1670789293/bakery/products/wqpthck5vhlrbmi6ickr.jpg',1,26,NULL,'2022-12-11 14:08:14','2022-12-11 14:08:21'),(38,'products','lg','bakery/products/mjb40fi4bcnr5ouxr0xr','https://res.cloudinary.com/deundpsr2/image/upload/v1670789347/bakery/products/mjb40fi4bcnr5ouxr0xr.jpg',1,27,NULL,'2022-12-11 14:09:08','2022-12-11 14:09:14'),(39,'products','lg','bakery/products/dnkelbkrqaribhzgebx6','https://res.cloudinary.com/deundpsr2/image/upload/v1670789438/bakery/products/dnkelbkrqaribhzgebx6.jpg',1,28,NULL,'2022-12-11 14:10:38','2022-12-11 14:10:44'),(40,'products','lg','bakery/products/yplmqhqr2smksou1qczr','https://res.cloudinary.com/deundpsr2/image/upload/v1670789502/bakery/products/yplmqhqr2smksou1qczr.jpg',1,29,NULL,'2022-12-11 14:11:42','2022-12-11 14:11:50'),(41,'products','lg','bakery/products/rhyjlgurspxwqmkaokmp','https://res.cloudinary.com/deundpsr2/image/upload/v1670789561/bakery/products/rhyjlgurspxwqmkaokmp.jpg',1,30,NULL,'2022-12-11 14:12:41','2022-12-11 14:12:47'),(42,'products','lg','bakery/products/l1feoqmhkzxguhahjc1f','https://res.cloudinary.com/deundpsr2/image/upload/v1670789605/bakery/products/l1feoqmhkzxguhahjc1f.jpg',1,31,NULL,'2022-12-11 14:13:26','2022-12-11 14:13:29'),(43,'products','lg','bakery/products/usuicvzfi65nqidkq6tj','https://res.cloudinary.com/deundpsr2/image/upload/v1670789642/bakery/products/usuicvzfi65nqidkq6tj.jpg',1,32,NULL,'2022-12-11 14:14:02','2022-12-11 14:14:08'),(44,'products','lg','bakery/products/ak6xflftbxqcm5uhqhww','https://res.cloudinary.com/deundpsr2/image/upload/v1670789669/bakery/products/ak6xflftbxqcm5uhqhww.jpg',1,33,NULL,'2022-12-11 14:14:29','2022-12-11 14:14:54'),(45,'products','lg','bakery/products/wnz48zwkn4nvkq0vwu1d','https://res.cloudinary.com/deundpsr2/image/upload/v1670824859/bakery/products/wnz48zwkn4nvkq0vwu1d.jpg',1,34,NULL,'2022-12-12 00:01:00','2022-12-12 00:01:07'),(46,'products','lg','bakery/products/bzu2s7nkh3vvrzjijcgr','https://res.cloudinary.com/deundpsr2/image/upload/v1670824923/bakery/products/bzu2s7nkh3vvrzjijcgr.jpg',1,35,NULL,'2022-12-12 00:02:04','2022-12-12 00:02:10'),(47,'products','lg','bakery/products/dqhydspgdlv0ufxfubjk','https://res.cloudinary.com/deundpsr2/image/upload/v1670824982/bakery/products/dqhydspgdlv0ufxfubjk.jpg',1,36,NULL,'2022-12-12 00:03:03','2022-12-12 00:03:16'),(48,'products','lg','bakery/products/d3yvt5dplgal6tyrjdc0','https://res.cloudinary.com/deundpsr2/image/upload/v1670825054/bakery/products/d3yvt5dplgal6tyrjdc0.jpg',1,37,NULL,'2022-12-12 00:04:15','2022-12-12 00:04:24'),(49,'products','lg','bakery/products/wquxcudcclggtasl0id1','https://res.cloudinary.com/deundpsr2/image/upload/v1670825111/bakery/products/wquxcudcclggtasl0id1.jpg',1,38,NULL,'2022-12-12 00:05:11','2022-12-12 00:05:17'),(50,'products','lg','bakery/products/mipwgm3if9sqir17hies','https://res.cloudinary.com/deundpsr2/image/upload/v1670825165/bakery/products/mipwgm3if9sqir17hies.jpg',1,39,NULL,'2022-12-12 00:06:06','2022-12-12 00:06:10'),(51,'products','lg','bakery/products/jvlbqalbvmzyqcbhcxzz','https://res.cloudinary.com/deundpsr2/image/upload/v1670825219/bakery/products/jvlbqalbvmzyqcbhcxzz.jpg',1,40,NULL,'2022-12-12 00:07:00','2022-12-12 00:07:05'),(52,'products','lg','bakery/products/gxbjhl01v4j5nphogpqp','https://res.cloudinary.com/deundpsr2/image/upload/v1670825296/bakery/products/gxbjhl01v4j5nphogpqp.jpg',1,41,NULL,'2022-12-12 00:08:16','2022-12-12 00:08:21'),(53,'products','lg','bakery/products/sh8xc4kr3pc1dqvhng93','https://res.cloudinary.com/deundpsr2/image/upload/v1670825430/bakery/products/sh8xc4kr3pc1dqvhng93.jpg',1,42,NULL,'2022-12-12 00:10:30','2022-12-12 00:10:36'),(54,'products','lg','bakery/products/ipue4p17svyjxa8ilost','https://res.cloudinary.com/deundpsr2/image/upload/v1670825512/bakery/products/ipue4p17svyjxa8ilost.jpg',1,43,NULL,'2022-12-12 00:11:52','2022-12-12 00:11:57'),(55,'products','lg','bakery/products/cywfrcrpv2zt7mcpaw0r','https://res.cloudinary.com/deundpsr2/image/upload/v1670825605/bakery/products/cywfrcrpv2zt7mcpaw0r.jpg',1,44,NULL,'2022-12-12 00:13:26','2022-12-12 00:13:31'),(56,'products','lg','bakery/products/w7tvjbovbgj5iaty4yn7','https://res.cloudinary.com/deundpsr2/image/upload/v1670825685/bakery/products/w7tvjbovbgj5iaty4yn7.jpg',1,45,NULL,'2022-12-12 00:14:46','2022-12-12 00:14:53'),(57,'products','lg','bakery/products/eyqipezcginhdfs3dv2w','https://res.cloudinary.com/deundpsr2/image/upload/v1670825871/bakery/products/eyqipezcginhdfs3dv2w.jpg',1,46,NULL,'2022-12-12 00:17:52','2022-12-12 00:18:00'),(58,'products','lg','bakery/products/jz2opolauycpoy6e5s40','https://res.cloudinary.com/deundpsr2/image/upload/v1670826117/bakery/products/jz2opolauycpoy6e5s40.jpg',1,47,NULL,'2022-12-12 00:21:57','2022-12-12 00:22:06'),(59,'products','lg','bakery/products/sz1zkt340pvlcwklvhoo','https://res.cloudinary.com/deundpsr2/image/upload/v1670826328/bakery/products/sz1zkt340pvlcwklvhoo.jpg',1,48,NULL,'2022-12-12 00:25:28','2022-12-12 00:25:36'),(60,'products','lg','bakery/products/jnu4s7xwnlrqworgkmoa','https://res.cloudinary.com/deundpsr2/image/upload/v1670826826/bakery/products/jnu4s7xwnlrqworgkmoa.jpg',1,49,NULL,'2022-12-12 00:33:47','2022-12-12 00:33:54'),(61,'products','lg','bakery/products/r5hsfueojhdpf3zyavuq','https://res.cloudinary.com/deundpsr2/image/upload/v1670826888/bakery/products/r5hsfueojhdpf3zyavuq.jpg',1,50,NULL,'2022-12-12 00:34:48','2022-12-12 00:34:57'),(62,'products','lg','bakery/products/kh1xgpvswcahcysyxjje','https://res.cloudinary.com/deundpsr2/image/upload/v1670827013/bakery/products/kh1xgpvswcahcysyxjje.jpg',1,51,NULL,'2022-12-12 00:36:54','2022-12-12 00:37:01'),(63,'products','lg','bakery/products/s4vdgrev00tfvk5jitwn','https://res.cloudinary.com/deundpsr2/image/upload/v1670827064/bakery/products/s4vdgrev00tfvk5jitwn.jpg',1,52,NULL,'2022-12-12 00:37:44','2022-12-12 00:37:55'),(64,'products','lg','bakery/products/ne3ro3fenypvbtxpqnsx','https://res.cloudinary.com/deundpsr2/image/upload/v1670827181/bakery/products/ne3ro3fenypvbtxpqnsx.jpg',1,53,NULL,'2022-12-12 00:39:41','2022-12-12 00:39:49'),(65,'products','lg','bakery/products/bmyror9xxxx84fnlpoxt','https://res.cloudinary.com/deundpsr2/image/upload/v1670828988/bakery/products/bmyror9xxxx84fnlpoxt.jpg',1,54,NULL,'2022-12-12 01:09:48','2022-12-12 01:09:57'),(66,'products','lg','bakery/products/l9ydjv70ypfsytxdynvh','https://res.cloudinary.com/deundpsr2/image/upload/v1670829092/bakery/products/l9ydjv70ypfsytxdynvh.jpg',1,55,NULL,'2022-12-12 01:11:32','2022-12-12 01:11:37'),(67,'products','lg','bakery/products/rwsvghswcis4cmhdolsq','https://res.cloudinary.com/deundpsr2/image/upload/v1670829183/bakery/products/rwsvghswcis4cmhdolsq.jpg',1,56,NULL,'2022-12-12 01:13:04','2022-12-12 01:13:18'),(68,'products','lg','bakery/products/oxmfu8dyt4lbhujaauog','https://res.cloudinary.com/deundpsr2/image/upload/v1670829332/bakery/products/oxmfu8dyt4lbhujaauog.jpg',1,57,NULL,'2022-12-12 01:15:33','2022-12-12 01:15:43'),(69,'products','lg','bakery/products/drbkxlihyie7gsxa8u1j','https://res.cloudinary.com/deundpsr2/image/upload/v1670829424/bakery/products/drbkxlihyie7gsxa8u1j.jpg',1,58,NULL,'2022-12-12 01:17:05','2022-12-12 01:17:13'),(70,'products','lg','bakery/products/b6olexktxxgvctyw2dfn','https://res.cloudinary.com/deundpsr2/image/upload/v1670829596/bakery/products/b6olexktxxgvctyw2dfn.jpg',1,59,NULL,'2022-12-12 01:19:57','2022-12-12 01:20:09'),(71,'products','lg','bakery/products/a2lbb3ew8wfymwyjhlti','https://res.cloudinary.com/deundpsr2/image/upload/v1670829658/bakery/products/a2lbb3ew8wfymwyjhlti.jpg',1,60,NULL,'2022-12-12 01:20:58','2022-12-12 01:21:06'),(72,'products','lg','bakery/products/qxavxelrtbddp29j08ga','https://res.cloudinary.com/deundpsr2/image/upload/v1670829721/bakery/products/qxavxelrtbddp29j08ga.jpg',1,61,NULL,'2022-12-12 01:22:01','2022-12-12 01:22:17'),(73,'products','lg','bakery/products/w6ktmppyqzkamsczlqjw','https://res.cloudinary.com/deundpsr2/image/upload/v1670830104/bakery/products/w6ktmppyqzkamsczlqjw.jpg',1,62,NULL,'2022-12-12 01:28:25','2022-12-12 01:28:36'),(74,'products','lg','bakery/products/cf5tl7gwzdr9m43wxjvt','https://res.cloudinary.com/deundpsr2/image/upload/v1670830174/bakery/products/cf5tl7gwzdr9m43wxjvt.jpg',1,63,NULL,'2022-12-12 01:29:35','2022-12-12 01:29:42'),(75,'products','lg','bakery/products/hyvli7eykvtmgp5oznuy','https://res.cloudinary.com/deundpsr2/image/upload/v1670830289/bakery/products/hyvli7eykvtmgp5oznuy.jpg',1,64,NULL,'2022-12-12 01:31:29','2022-12-12 01:31:36'),(76,'products','lg','bakery/products/szc3ubbhfvyq7y3jkdhx','https://res.cloudinary.com/deundpsr2/image/upload/v1670832603/bakery/products/szc3ubbhfvyq7y3jkdhx.jpg',1,74,NULL,'2022-12-12 02:10:03','2022-12-12 02:10:11'),(77,'products','lg','bakery/products/uqukdtgg4sdfafcxrxlf','https://res.cloudinary.com/deundpsr2/image/upload/v1670830500/bakery/products/uqukdtgg4sdfafcxrxlf.jpg',1,66,NULL,'2022-12-12 01:35:01','2022-12-12 01:35:01'),(78,'products','lg','bakery/products/jbkraz3tddwzhdadoyc5','https://res.cloudinary.com/deundpsr2/image/upload/v1670830339/bakery/products/jbkraz3tddwzhdadoyc5.jpg',1,65,NULL,'2022-12-12 01:32:20','2022-12-12 01:34:07'),(79,'products','lg','bakery/products/cnpjmcfj8fkbwsbivl8b','https://res.cloudinary.com/deundpsr2/image/upload/v1670831957/bakery/products/cnpjmcfj8fkbwsbivl8b.jpg',1,67,NULL,'2022-12-12 01:59:17','2022-12-12 01:59:28'),(80,'products','lg','bakery/products/vpjqxnhrtxspeppi0hhp','https://res.cloudinary.com/deundpsr2/image/upload/v1670832002/bakery/products/vpjqxnhrtxspeppi0hhp.jpg',1,68,NULL,'2022-12-12 02:00:03','2022-12-12 02:00:11'),(81,'products','lg','bakery/products/e4luknp7yeaaoywy14zb','https://res.cloudinary.com/deundpsr2/image/upload/v1670832050/bakery/products/e4luknp7yeaaoywy14zb.jpg',1,69,NULL,'2022-12-12 02:00:50','2022-12-12 02:00:54'),(82,'products','lg','bakery/products/umbyxzn1pgzdidthen7p','https://res.cloudinary.com/deundpsr2/image/upload/v1670832294/bakery/products/umbyxzn1pgzdidthen7p.jpg',1,70,NULL,'2022-12-12 02:04:54','2022-12-12 02:05:02'),(83,'products','lg','bakery/products/za4nb0chltqxcc2mozez','https://res.cloudinary.com/deundpsr2/image/upload/v1670832368/bakery/products/za4nb0chltqxcc2mozez.jpg',1,71,NULL,'2022-12-12 02:06:09','2022-12-12 02:06:15'),(84,'products','lg','bakery/products/ortpsxxaxynu80dccqdc','https://res.cloudinary.com/deundpsr2/image/upload/v1670832447/bakery/products/ortpsxxaxynu80dccqdc.jpg',1,72,NULL,'2022-12-12 02:07:28','2022-12-12 02:07:35'),(85,'products','lg','bakery/products/wqwmiirjphdoecoatgkd','https://res.cloudinary.com/deundpsr2/image/upload/v1670832533/bakery/products/wqwmiirjphdoecoatgkd.jpg',1,73,NULL,'2022-12-12 02:08:53','2022-12-12 02:08:59'),(86,'products','lg','bakery/products/b6w6eo1tqggfz1esjtlm','https://res.cloudinary.com/deundpsr2/image/upload/v1670832700/bakery/products/b6w6eo1tqggfz1esjtlm.jpg',1,75,NULL,'2022-12-12 02:11:41','2022-12-12 02:11:45'),(87,'products','lg','bakery/products/q7gvryuzy4b6hutyw4ip','https://res.cloudinary.com/deundpsr2/image/upload/v1670832791/bakery/products/q7gvryuzy4b6hutyw4ip.jpg',1,76,NULL,'2022-12-12 02:13:11','2022-12-12 02:13:18');
/*!40000 ALTER TABLE `storage_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '0',
  `is_verified` tinyint(1) DEFAULT '0',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Shaikh','Al Amin','alamin.cse15@gmail.com','1712341937',NULL,'admin',0,0,'$2y$10$hE6d19CjaASpy2RwvaGEj.Kp3nU38sLYlzx/LQ3XO1SIoHVym2Ot6',NULL,'2022-12-15 13:58:24','2022-12-15 13:58:24'),(2,'Blaze','Farrell','fywixaj@mailinator.com','+1 (913) 903-5638',NULL,'user',0,0,'$2y$10$OtMdQCy3dMiGG2AWAa4ytehUxAi3KYdZEe/9SuQNY6Ef14KmHAc/e',NULL,'2023-02-02 01:27:41','2023-02-02 01:27:41'),(3,'Rahim','Khan','rahim@gmail.com','155152688',NULL,'user',0,0,'$2y$10$sWhX1hTFI7vsLeVzHwYQpO/3BqnzZrYddg/nVO.jj75CM56hSuYZK',NULL,'2023-04-06 03:18:10','2023-04-06 03:18:10');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-06 19:16:38
