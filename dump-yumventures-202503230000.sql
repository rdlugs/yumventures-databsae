-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: yumventures
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
-- Table structure for table `business_documents`
--

DROP TABLE IF EXISTS `business_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `business_documents` (
  `document_id` int unsigned NOT NULL AUTO_INCREMENT,
  `business_id` int unsigned NOT NULL,
  `document_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `document_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`document_id`),
  KEY `business_id` (`business_id`),
  CONSTRAINT `business_documents_ibfk_1` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_documents`
--

LOCK TABLES `business_documents` WRITE;
/*!40000 ALTER TABLE `business_documents` DISABLE KEYS */;
INSERT INTO `business_documents` VALUES (1,1,'application/pdf','C:\\Users\\Lenovo\\Downloads\\capstone\\yumventures\\backend\\uploads\\1731816310092-KAISER-BILL.pdf','2024-11-17 04:05:10'),(8,8,'application/pdf','C:\\Users\\Lenovo\\Downloads\\capstone\\yumventures\\backend\\uploads\\1732365991373-Cover Letter (2).pdf','2024-11-23 12:46:31'),(9,9,'application/pdf','C:\\Users\\Lenovo\\Downloads\\capstone\\yumventures\\backend\\uploads\\1732366335298-resume (1).pdf','2024-11-23 12:52:15'),(10,10,'application/pdf','C:\\Users\\Lenovo\\Downloads\\capstone\\yumventures\\backend\\uploads\\1732366946705-Cover Letter.pdf','2024-11-23 13:02:26'),(11,11,'application/pdf','C:\\Users\\Lenovo\\Downloads\\capstone\\yumventures\\backend\\uploads\\1732368541788-Untitled (3).pdf','2024-11-23 13:29:01'),(14,14,'application/pdf','C:\\Users\\Lenovo\\Downloads\\capstone\\yumventures\\backend\\uploads\\1732368948559-Untitled (1).pdf','2024-11-23 13:35:48'),(15,15,'application/pdf','C:\\Users\\Lenovo\\Downloads\\capstone\\yumventures\\backend\\uploads\\1732369150178-Untitled (2).pdf','2024-11-23 13:39:10');
/*!40000 ALTER TABLE `business_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `businesses`
--

DROP TABLE IF EXISTS `businesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `businesses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `representative` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `registration_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `verification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businesses`
--

LOCK TABLES `businesses` WRITE;
/*!40000 ALTER TABLE `businesses` DISABLE KEYS */;
INSERT INTO `businesses` VALUES (1,'Joneson',NULL,'paco park',NULL,'09266789966',NULL,'BH-457-234-HJ','verified','2024-11-17 04:05:10'),(8,'CNJ Hotel','James Yap','Metro Manila, Philippines','jamesyap@mail.com','9266789966',NULL,'BH-457-994-AJ','verified','2024-11-23 12:46:31'),(9,'Yumventures Corp','James Yap','Metro Manila, Philippines','jamesyap@mail.com','9266789966',NULL,'BH-553-927-XZ','pending','2024-11-23 12:52:15'),(10,'Koallabr','Nheo Manalo','Metro Manila, Philippines','nheomanalo@koallabr.com','91234567789',NULL,'BH-718-517-AS','verified','2024-11-23 13:02:26'),(11,'SupplyCritters','Joaquin Tapia','Metro Manila, Philippines','joaquin@supplycritters.com','92345678912',NULL,'BH-457-012-TQ','pending','2024-11-23 13:29:01'),(14,'Yum Food Hub Batangas','Lorenzo Manalo','San Juan, Batangas','lorenzo@mail.com','9563488343',NULL,'BH-718-345-ST','pending','2024-11-23 13:35:48'),(15,'JulieResto ','Julie Macable','Calapan Mindoro','julieresto@mail.com','9876543219',NULL,'BH-457-994-NN','pending','2024-11-23 13:39:10');
/*!40000 ALTER TABLE `businesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `business_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`),
  KEY `business_id` (`business_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `categories_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (2,'Breakfast',1,2,'2024-11-17 04:25:57'),(3,'Lunch',1,2,'2024-11-17 04:38:12'),(4,'Kambing Dishes',1,2,'2024-11-17 05:24:23'),(5,'Beverages',1,2,'2024-11-17 06:40:50'),(8,'Liquor',1,2,'2024-11-20 18:08:48');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generated_links`
--

DROP TABLE IF EXISTS `generated_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generated_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `business_id` int unsigned NOT NULL,
  `purpose` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `business_id` (`business_id`),
  CONSTRAINT `generated_links_ibfk_1` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generated_links`
--

LOCK TABLES `generated_links` WRITE;
/*!40000 ALTER TABLE `generated_links` DISABLE KEYS */;
INSERT INTO `generated_links` VALUES (1,'http://localhost:5173/create-an-account/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJidXNpbmVzc0lkIjoxLCJpYXQiOjE3MzIzNzQ1NTYsImV4cCI6MTczMjM3ODE1Nn0.Af36_6xiJhPOm_1cux353ftKV0sWujjZCzUwhIpaKjw',1,'account_creation','2024-11-17 04:05:39','2024-11-23 15:09:16'),(4,'/create-an-account/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJidXNpbmVzc0lkIjo4LCJpYXQiOjE3MzIzNzQ2MDcsImV4cCI6MTczMjM3ODIwN30.OqvlIMtcOzd9D0fGK14bdUwXrBsuHQqwoz4Z5XQEgPw',8,'account_creation','2024-11-23 15:10:07','2024-11-23 15:10:07');
/*!40000 ALTER TABLE `generated_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ingredient_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `unit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `location` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `batch_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `is_expired` int DEFAULT '0',
  `unit_id` int DEFAULT NULL,
  `status_id` int NOT NULL,
  `user_id` int unsigned NOT NULL,
  `business_id` int unsigned NOT NULL,
  `status_updated_at` datetime DEFAULT NULL COMMENT 'update this field to null every transaction to this table to update status_id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `business_id` (`business_id`),
  KEY `inventory_inventory_status_FK` (`status_id`),
  KEY `inventory_units_FK` (`unit_id`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `inventory_inventory_status_FK` FOREIGN KEY (`status_id`) REFERENCES `inventory_status` (`id`),
  CONSTRAINT `inventory_units_FK` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (11,'Eggs','Raw Ingredients',0.00,'pc/s',900.00,'Storage','BN-1732306954222-3965','2024-11-30 00:00:00',1,1,3,2,1,'2025-03-22 22:51:20','2024-11-22 20:22:34'),(12,'Rice','Raw Ingredients',200.00,'kg',15678.00,'Storage','BN-1732307051272-3666','2024-12-31 00:00:00',1,2,2,2,1,NULL,'2024-11-22 20:24:11'),(13,'Soy sauce','Packaged Ingredients',800.00,'ml',2156.00,'Shelf','BN-1732307413887-9213','2025-03-21 00:00:00',1,3,1,2,1,NULL,'2024-11-22 20:30:13'),(14,'Onions','Raw Ingredients',200.00,'pc/s',4356.00,'Storage','BN-1732308750481-1125','2025-06-26 00:00:00',0,1,1,2,1,NULL,'2024-11-22 20:52:30'),(15,'Garlic','Raw Ingredients',200.00,'pc/s',4723.00,'Storage','BN-1732308790280-4229','2025-06-26 00:00:00',0,1,1,2,1,NULL,'2024-11-22 20:53:10'),(16,'Salt','Raw Ingredients',0.00,'kg',2150.00,'Shelf','BN-1732308864672-7039','2025-10-17 00:00:00',0,2,3,2,1,'2025-03-22 23:36:50','2024-11-22 20:54:24'),(17,'test','test category',0.00,'ml',100.00,'shelf','BN-1742395871656-2886','2025-03-18 00:00:00',1,3,3,2,1,'2025-03-22 22:51:20','2025-03-19 14:51:11');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_settings`
--

DROP TABLE IF EXISTS `inventory_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` int DEFAULT NULL,
  `unit_id` int DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  `active` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `inventory_settings_units_FK` (`unit_id`),
  KEY `inventory_settings_inventory_status_FK` (`status_id`),
  CONSTRAINT `inventory_settings_inventory_status_FK` FOREIGN KEY (`status_id`) REFERENCES `inventory_status` (`id`),
  CONSTRAINT `inventory_settings_units_FK` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_settings`
--

LOCK TABLES `inventory_settings` WRITE;
/*!40000 ALTER TABLE `inventory_settings` DISABLE KEYS */;
INSERT INTO `inventory_settings` VALUES (1,50,2,2,1,'2025-03-18 11:38:56','2025-03-22 22:47:47'),(2,100,1,2,1,'2025-03-18 11:38:56','2025-03-18 11:38:56'),(3,0,1,3,1,'2025-03-18 11:38:56','2025-03-18 11:38:56'),(4,0,2,3,1,'2025-03-18 11:38:56','2025-03-22 22:47:47'),(5,5,3,2,1,'2025-03-18 11:38:56','2025-03-18 11:38:56'),(6,0,3,3,1,'2025-03-18 11:38:56','2025-03-18 11:38:56');
/*!40000 ALTER TABLE `inventory_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_status`
--

DROP TABLE IF EXISTS `inventory_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `active` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_status`
--

LOCK TABLES `inventory_status` WRITE;
/*!40000 ALTER TABLE `inventory_status` DISABLE KEYS */;
INSERT INTO `inventory_status` VALUES (1,'in_stock','In Stock',1,'2025-03-18 11:24:57','2025-03-18 11:24:57'),(2,'low_stock','Low Stock',1,'2025-03-18 11:24:57','2025-03-18 11:24:57'),(3,'out_of_stock','Out of Stock',1,'2025-03-18 11:24:57','2025-03-18 11:24:57'),(4,'phase_out','Phase out product',1,'2025-03-18 11:24:57','2025-03-18 11:24:57');
/*!40000 ALTER TABLE `inventory_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_item_ingredients`
--

DROP TABLE IF EXISTS `menu_item_ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_item_ingredients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `menu_item_id` int unsigned NOT NULL,
  `inventory_id` int unsigned NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `business_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_item_id` (`menu_item_id`),
  KEY `inventory_id` (`inventory_id`),
  KEY `business_id` (`business_id`),
  CONSTRAINT `menu_item_ingredients_ibfk_1` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`menu_item_id`),
  CONSTRAINT `menu_item_ingredients_ibfk_2` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`id`),
  CONSTRAINT `menu_item_ingredients_ibfk_3` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_item_ingredients`
--

LOCK TABLES `menu_item_ingredients` WRITE;
/*!40000 ALTER TABLE `menu_item_ingredients` DISABLE KEYS */;
INSERT INTO `menu_item_ingredients` VALUES (11,17,11,1.00,1,2),(12,17,12,1.00,1,2),(13,17,14,1.00,1,2),(14,17,15,1.00,1,2),(15,17,16,1.00,1,2),(16,17,13,1.00,1,2),(17,18,11,1.00,1,2),(18,18,12,1.00,1,2),(19,18,13,1.00,1,2),(20,18,14,1.00,1,2),(21,18,15,1.00,1,2),(22,18,16,1.00,1,2);
/*!40000 ALTER TABLE `menu_item_ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `menu_item_id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `category_id` int unsigned DEFAULT NULL,
  `business_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`menu_item_id`),
  KEY `category_id` (`category_id`),
  KEY `business_id` (`business_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `menu_items_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE,
  CONSTRAINT `menu_items_ibfk_2` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `menu_items_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (17,'Tocilog','A classic Filipino breakfast dish featuring sweet and savory tocino (cured pork), garlic fried rice, and a sunny-side-up egg, creating a perfect balance of flavors.',3,1,2,160.00,'2024-11-23 22:38:42','C:\\Users\\Lenovo\\Downloads\\capstone\\yumventures\\backend\\uploads\\menu-items\\1732401517096-image_2024-11-24_061704153.png'),(18,'Fried Rice','A flavorful dish of rice stir-fried with garlic, onions, and a mix of vegetables, often combined with eggs, meat, or seafood, seasoned with soy sauce and spices for a savory, aromatic meal.',2,1,2,120.00,'2024-11-23 23:57:36','C:\\Users\\Lenovo\\Downloads\\capstone\\yumventures\\backend\\uploads\\menu-items\\1732406256524-image_2024-11-24_075650553.png');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `business_id` int DEFAULT NULL,
  `data` text,
  `is_seen` int DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (23,1,'{\"title\":\"Out of Stock\",\"code\":\"out_of_stock\",\"data\":{\"unit_id\":1,\"inventory_id\":11,\"business_id\":1,\"new_status_id\":3,\"new_status_description\":\"Out of Stock\",\"new_status_code\":\"out_of_stock\",\"ingredient_name\":\"Eggs\",\"batch_number\":\"BN-1732306954222-3965\"}}',1,'2025-03-22 22:51:20','2025-03-22 23:28:04'),(24,1,'{\"title\":\"Out of Stock\",\"code\":\"out_of_stock\",\"data\":{\"unit_id\":3,\"inventory_id\":17,\"business_id\":1,\"new_status_id\":3,\"new_status_description\":\"Out of Stock\",\"new_status_code\":\"out_of_stock\",\"ingredient_name\":\"test\",\"batch_number\":\"BN-1742395871656-2886\"}}',1,'2025-03-22 22:51:20','2025-03-22 23:28:04'),(25,1,'{\"title\":\"Low Stock\",\"code\":\"low_stock\",\"data\":{\"unit_id\":2,\"inventory_id\":16,\"business_id\":1,\"new_status_id\":2,\"new_status_description\":\"Low Stock\",\"new_status_code\":\"low_stock\",\"ingredient_name\":\"Salt\",\"batch_number\":\"BN-1732308864672-7039\"}}',1,'2025-03-22 22:54:45','2025-03-22 23:28:04'),(26,1,'{\"title\":\"Out of Stock\",\"code\":\"out_of_stock\",\"data\":{\"unit_id\":2,\"inventory_id\":16,\"business_id\":1,\"new_status_id\":3,\"new_status_description\":\"Out of Stock\",\"new_status_code\":\"out_of_stock\",\"ingredient_name\":\"Salt\",\"batch_number\":\"BN-1732308864672-7039\"}}',1,'2025-03-22 22:55:05','2025-03-22 23:28:04'),(27,1,'{\"title\":\"Low Stock\",\"code\":\"low_stock\",\"data\":{\"unit_id\":2,\"inventory_id\":16,\"business_id\":1,\"new_status_id\":2,\"new_status_description\":\"Low Stock\",\"new_status_code\":\"low_stock\",\"ingredient_name\":\"Salt\",\"batch_number\":\"BN-1732308864672-7039\"}}',1,'2025-03-22 23:35:45','2025-03-22 23:35:58'),(28,1,'{\"title\":\"Out of Stock\",\"code\":\"out_of_stock\",\"data\":{\"unit_id\":2,\"inventory_id\":16,\"business_id\":1,\"new_status_id\":3,\"new_status_description\":\"Out of Stock\",\"new_status_code\":\"out_of_stock\",\"ingredient_name\":\"Salt\",\"batch_number\":\"BN-1732308864672-7039\"}}',1,'2025-03-22 23:36:50','2025-03-22 23:37:01'),(29,1,'{\"title\":\"Expired Items\",\"code\":\"expired_items\",\"data\":{\"id\":13,\"ingredient_name\":\"Soy sauce\",\"category\":\"Packaged Ingredients\",\"quantity\":\"800.00\",\"unit\":\"ml\",\"cost\":\"2156.00\",\"location\":\"Shelf\",\"batch_number\":\"BN-1732307413887-9213\",\"expiration_date\":\"2025-03-20T16:00:00.000Z\",\"is_expired\":0,\"unit_id\":3,\"status_id\":1,\"user_id\":2,\"business_id\":1,\"status_updated_at\":null,\"created_at\":\"2024-11-22T20:30:13.000Z\"}}',1,'2025-03-22 23:50:40','2025-03-22 23:51:46');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `menu_item_id` int unsigned NOT NULL,
  `transaction_id` int unsigned NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `menu_item_id` (`menu_item_id`),
  KEY `transaction_id` (`transaction_id`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`menu_item_id`),
  CONSTRAINT `order_items_ibfk_3` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (12,6,18,11,1,120.00,120.00,'2024-11-24 00:00:43','2024-11-24 00:00:43'),(13,6,17,11,1,160.00,160.00,'2024-11-24 00:00:43','2024-11-24 00:00:43'),(14,7,17,12,1,160.00,160.00,'2024-11-24 00:03:02','2024-11-24 00:03:02'),(15,8,18,13,1,120.00,120.00,'2024-11-24 00:05:35','2024-11-24 00:05:35'),(16,9,18,14,1,120.00,120.00,'2024-11-24 00:06:36','2024-11-24 00:06:36'),(17,10,18,15,1,120.00,120.00,'2024-11-24 00:07:18','2024-11-24 00:07:18'),(18,10,17,15,2,160.00,320.00,'2024-11-24 00:07:18','2024-11-24 00:07:18');
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` int unsigned NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `business_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `payment_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `transaction_id` (`transaction_id`),
  KEY `business_id` (`business_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`id`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (6,11,308.00,1,2,'2024-11-24 08:00:43','preparing','paid',NULL,'2024-11-24 00:00:43','2024-11-24 00:00:43'),(7,12,176.00,1,2,'2024-11-24 08:03:02','preparing','paid',NULL,'2024-11-24 00:03:02','2024-11-24 00:03:02'),(8,13,132.00,1,2,'2024-11-24 08:05:35','preparing','paid',NULL,'2024-11-24 00:05:35','2024-11-24 00:05:35'),(9,14,132.00,1,2,'2024-11-24 08:06:36','preparing','paid',NULL,'2024-11-24 00:06:36','2024-11-24 00:06:36'),(10,15,484.00,1,2,'2024-11-24 08:07:18','preparing','paid',NULL,'2024-11-24 00:07:18','2024-11-24 00:07:18');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `subtotal` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `cash_amount` decimal(10,2) NOT NULL,
  `change_amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `transaction_date` datetime NOT NULL,
  `business_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `discount_amount` decimal(10,2) DEFAULT NULL,
  `payment_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `business_id` (`business_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (11,280.00,28.00,308.00,500.00,192.00,'Cash','completed','2024-11-24 08:00:43',1,2,0.00,'paid','2024-11-24 00:00:43','2024-11-24 00:00:43'),(12,160.00,16.00,176.00,200.00,24.00,'Cash','completed','2024-11-24 08:03:02',1,2,0.00,'paid','2024-11-24 00:03:02','2024-11-24 00:03:02'),(13,120.00,12.00,132.00,150.00,18.00,'Cash','completed','2024-11-24 08:05:35',1,2,0.00,'paid','2024-11-24 00:05:35','2024-11-24 00:05:35'),(14,120.00,12.00,132.00,150.00,18.00,'Cash','completed','2024-11-24 08:06:36',1,2,0.00,'paid','2024-11-24 00:06:36','2024-11-24 00:06:36'),(15,440.00,44.00,484.00,500.00,16.00,'Cash','completed','2024-11-24 08:07:18',1,2,0.00,'paid','2024-11-24 00:07:18','2024-11-24 00:07:18');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `units` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `active` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES (1,'pcs','pc/s',1,'2025-03-18 11:37:14','2025-03-18 11:37:14'),(2,'kg','Kilogram',1,'2025-03-18 11:37:14','2025-03-18 11:37:14'),(3,'ml','Miligram',1,'2025-03-18 11:37:14','2025-03-18 11:37:14');
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `business_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  KEY `business_id` (`business_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'superadmin','$2y$10$TG8f7Kkmzdrd9cjwAoGake//MFXNOLYO9NMVCBlkJeGGSSTr/WpLu','superadmin',NULL,'2024-11-17 04:03:49'),(2,'admin','$2y$10$TG8f7Kkmzdrd9cjwAoGake//MFXNOLYO9NMVCBlkJeGGSSTr/WpLu','admin',1,'2024-11-17 04:05:59'),(6,'test','$2y$10$TG8f7Kkmzdrd9cjwAoGake//MFXNOLYO9NMVCBlkJeGGSSTr/WpLu','admin',8,'2024-11-17 04:05:59');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'yumventures'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-23  0:00:18
