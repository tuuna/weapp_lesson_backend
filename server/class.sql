-- MySQL dump 10.13  Distrib 5.7.18, for osx10.12 (x86_64)
--
-- Host: localhost    Database: class
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `admin_menu`
--

DROP TABLE IF EXISTS `admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1,0,1,'首页','fa-bar-chart','/',NULL,'2018-02-25 19:33:03'),(2,0,2,'系统管理','fa-tasks',NULL,NULL,'2018-02-25 19:32:43'),(3,2,3,'老师列表','fa-users','auth/users',NULL,'2018-02-25 19:31:36'),(4,2,4,'角色控制','fa-user','auth/roles',NULL,'2018-02-25 19:31:52'),(5,2,5,'权限管理','fa-ban','auth/permissions',NULL,'2018-02-25 19:32:03'),(6,2,6,'菜单生成','fa-bars','auth/menu',NULL,'2018-02-25 19:32:16'),(7,2,7,'操作日志','fa-history','auth/logs',NULL,'2018-02-25 19:32:26'),(8,0,0,'签到码','fa-book','/qr','2018-02-25 19:30:30','2018-02-25 19:34:42');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_operation_log`
--

DROP TABLE IF EXISTS `admin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_operation_log`
--

LOCK TABLES `admin_operation_log` WRITE;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
INSERT INTO `admin_operation_log` VALUES (1,1,'admin','GET','127.0.0.1','[]','2018-02-21 01:05:55','2018-02-21 01:05:55'),(2,1,'admin','GET','127.0.0.1','[]','2018-02-25 00:06:50','2018-02-25 00:06:50'),(3,1,'admin/auth/login','GET','127.0.0.1','[]','2018-02-25 00:06:53','2018-02-25 00:06:53'),(4,1,'admin','GET','127.0.0.1','[]','2018-02-25 16:41:06','2018-02-25 16:41:06'),(5,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 16:41:13','2018-02-25 16:41:13'),(6,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 16:41:21','2018-02-25 16:41:21'),(7,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 16:41:32','2018-02-25 16:41:32'),(8,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 16:58:27','2018-02-25 16:58:27'),(9,1,'admin/auth/setting','GET','127.0.0.1','[]','2018-02-25 19:10:11','2018-02-25 19:10:11'),(10,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 19:10:25','2018-02-25 19:10:25'),(11,1,'admin','GET','127.0.0.1','[]','2018-02-25 19:20:57','2018-02-25 19:20:57'),(12,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 19:25:06','2018-02-25 19:25:06'),(13,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 19:26:55','2018-02-25 19:26:55'),(14,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 19:27:38','2018-02-25 19:27:38'),(15,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 19:28:48','2018-02-25 19:28:48'),(16,1,'admin/auth/roles/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 19:28:50','2018-02-25 19:28:50'),(17,1,'admin/auth/roles','POST','127.0.0.1','{\"slug\":\"Teacher\",\"name\":\"Teacher\",\"permissions\":[\"2\",\"2\",null],\"_token\":\"ClNj8mNHjF7D7WaLhLmspCMZxDqumKPjxWZNgESv\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/roles\"}','2018-02-25 19:29:56','2018-02-25 19:29:56'),(18,1,'admin/auth/roles','GET','127.0.0.1','[]','2018-02-25 19:29:56','2018-02-25 19:29:56'),(19,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 19:30:01','2018-02-25 19:30:01'),(20,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u7b7e\\u5230\\u7801\",\"icon\":\"fa-book\",\"uri\":\"\\/admin\\/qr\",\"roles\":[\"2\",null],\"_token\":\"ClNj8mNHjF7D7WaLhLmspCMZxDqumKPjxWZNgESv\"}','2018-02-25 19:30:30','2018-02-25 19:30:30'),(21,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-02-25 19:30:31','2018-02-25 19:30:31'),(22,1,'admin/auth/menu/8/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 19:30:43','2018-02-25 19:30:43'),(23,1,'admin/auth/menu/8','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u7b7e\\u5230\\u7801\",\"icon\":\"fa-book\",\"uri\":\"\\/admin\\/qr\",\"roles\":[\"1\",\"2\",null],\"_token\":\"ClNj8mNHjF7D7WaLhLmspCMZxDqumKPjxWZNgESv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}','2018-02-25 19:30:49','2018-02-25 19:30:49'),(24,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-02-25 19:30:50','2018-02-25 19:30:50'),(25,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-02-25 19:30:54','2018-02-25 19:30:54'),(26,1,'admin/auth/menu/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 19:31:04','2018-02-25 19:31:04'),(27,1,'admin/auth/menu/3','PUT','127.0.0.1','{\"parent_id\":\"2\",\"title\":\"\\u8001\\u5e08\\u5217\\u8868\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"_token\":\"ClNj8mNHjF7D7WaLhLmspCMZxDqumKPjxWZNgESv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}','2018-02-25 19:31:36','2018-02-25 19:31:36'),(28,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-02-25 19:31:36','2018-02-25 19:31:36'),(29,1,'admin/auth/menu/4/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 19:31:43','2018-02-25 19:31:43'),(30,1,'admin/auth/menu/4','PUT','127.0.0.1','{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\\u63a7\\u5236\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"_token\":\"ClNj8mNHjF7D7WaLhLmspCMZxDqumKPjxWZNgESv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}','2018-02-25 19:31:52','2018-02-25 19:31:52'),(31,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-02-25 19:31:52','2018-02-25 19:31:52'),(32,1,'admin/auth/menu/5/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 19:31:57','2018-02-25 19:31:57'),(33,1,'admin/auth/menu/5','PUT','127.0.0.1','{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"_token\":\"ClNj8mNHjF7D7WaLhLmspCMZxDqumKPjxWZNgESv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}','2018-02-25 19:32:03','2018-02-25 19:32:03'),(34,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-02-25 19:32:03','2018-02-25 19:32:03'),(35,1,'admin/auth/menu/6/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 19:32:06','2018-02-25 19:32:06'),(36,1,'admin/auth/menu/6','PUT','127.0.0.1','{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\\u751f\\u6210\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"_token\":\"ClNj8mNHjF7D7WaLhLmspCMZxDqumKPjxWZNgESv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}','2018-02-25 19:32:16','2018-02-25 19:32:16'),(37,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-02-25 19:32:16','2018-02-25 19:32:16'),(38,1,'admin/auth/menu/7/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 19:32:19','2018-02-25 19:32:19'),(39,1,'admin/auth/menu/7','PUT','127.0.0.1','{\"parent_id\":\"2\",\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"_token\":\"ClNj8mNHjF7D7WaLhLmspCMZxDqumKPjxWZNgESv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}','2018-02-25 19:32:26','2018-02-25 19:32:26'),(40,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-02-25 19:32:27','2018-02-25 19:32:27'),(41,1,'admin/auth/menu/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 19:32:31','2018-02-25 19:32:31'),(42,1,'admin/auth/menu/2','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"ClNj8mNHjF7D7WaLhLmspCMZxDqumKPjxWZNgESv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}','2018-02-25 19:32:43','2018-02-25 19:32:43'),(43,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-02-25 19:32:44','2018-02-25 19:32:44'),(44,1,'admin/auth/menu/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 19:32:56','2018-02-25 19:32:56'),(45,1,'admin/auth/menu/1','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"_token\":\"ClNj8mNHjF7D7WaLhLmspCMZxDqumKPjxWZNgESv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}','2018-02-25 19:33:03','2018-02-25 19:33:03'),(46,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-02-25 19:33:03','2018-02-25 19:33:03'),(47,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-02-25 19:33:13','2018-02-25 19:33:13'),(48,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 19:33:34','2018-02-25 19:33:34'),(49,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 19:33:39','2018-02-25 19:33:39'),(50,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 19:33:41','2018-02-25 19:33:41'),(51,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 19:34:20','2018-02-25 19:34:20'),(52,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 19:34:32','2018-02-25 19:34:32'),(53,1,'admin/auth/menu/8/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 19:34:36','2018-02-25 19:34:36'),(54,1,'admin/auth/menu/8','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u7b7e\\u5230\\u7801\",\"icon\":\"fa-book\",\"uri\":\"\\/qr\",\"roles\":[\"1\",\"2\",null],\"_token\":\"ClNj8mNHjF7D7WaLhLmspCMZxDqumKPjxWZNgESv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}','2018-02-25 19:34:42','2018-02-25 19:34:42'),(55,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-02-25 19:34:42','2018-02-25 19:34:42'),(56,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-02-25 19:34:46','2018-02-25 19:34:46'),(57,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 19:34:58','2018-02-25 19:34:58'),(58,1,'admin/auth/users/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 19:35:02','2018-02-25 19:35:02'),(59,1,'admin','GET','127.0.0.1','[]','2018-02-25 23:36:31','2018-02-25 23:36:31'),(60,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 23:37:00','2018-02-25 23:37:00'),(61,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 23:37:45','2018-02-25 23:37:45'),(62,1,'admin/auth/users/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 23:37:53','2018-02-25 23:37:53'),(63,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 23:37:58','2018-02-25 23:37:58'),(64,1,'admin/auth/users','GET','127.0.0.1','[]','2018-02-25 23:51:37','2018-02-25 23:51:37'),(65,1,'admin/auth/users/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 23:51:42','2018-02-25 23:51:42'),(66,1,'admin/auth/users/create','GET','127.0.0.1','[]','2018-02-25 23:53:01','2018-02-25 23:53:01'),(67,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 23:53:12','2018-02-25 23:53:12'),(68,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-25 23:58:28','2018-02-25 23:58:28'),(69,1,'admin/auth/users','GET','127.0.0.1','[]','2018-02-26 00:05:33','2018-02-26 00:05:33'),(70,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 00:05:35','2018-02-26 00:05:35'),(71,1,'admin','GET','127.0.0.1','[]','2018-02-26 00:06:50','2018-02-26 00:06:50'),(72,1,'admin','GET','127.0.0.1','[]','2018-02-26 00:11:27','2018-02-26 00:11:27'),(73,1,'admin','GET','127.0.0.1','[]','2018-02-26 00:12:19','2018-02-26 00:12:19'),(74,1,'admin','GET','127.0.0.1','[]','2018-02-26 00:12:54','2018-02-26 00:12:54'),(75,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 00:26:38','2018-02-26 00:26:38'),(76,1,'admin/auth/users/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 00:26:42','2018-02-26 00:26:42'),(77,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 00:29:16','2018-02-26 00:29:16'),(78,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}','2018-02-26 00:29:28','2018-02-26 00:29:28'),(79,1,'admin/auth/users','GET','127.0.0.1','[]','2018-02-26 00:39:10','2018-02-26 00:39:10'),(80,1,'admin/auth/users/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 00:39:12','2018-02-26 00:39:12'),(81,1,'admin/auth/users/create','GET','127.0.0.1','[]','2018-02-26 00:44:30','2018-02-26 00:44:30'),(82,1,'admin/auth/users','POST','127.0.0.1','{\"username\":\"550566181@qq.com\",\"name\":\"\\u8d56\\u6770\",\"password\":\"123\",\"password_confirmation\":\"123\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"NUCoGKoZiJTUDSzxF6lWefEsd4sr70QuQY7mqpIs\"}','2018-02-26 00:45:01','2018-02-26 00:45:01'),(83,1,'admin/auth/users','GET','127.0.0.1','[]','2018-02-26 00:45:02','2018-02-26 00:45:02'),(84,1,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 00:45:12','2018-02-26 00:45:12'),(85,2,'admin','GET','127.0.0.1','[]','2018-02-26 00:45:19','2018-02-26 00:45:19'),(86,2,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 00:45:23','2018-02-26 00:45:23'),(87,2,'admin/auth/setting','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 00:45:30','2018-02-26 00:45:30'),(88,2,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 00:45:34','2018-02-26 00:45:34'),(89,2,'admin','GET','127.0.0.1','[]','2018-02-26 07:12:01','2018-02-26 07:12:01'),(90,2,'admin/qr','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:12:04','2018-02-26 07:12:04'),(91,2,'admin/qr','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:12:05','2018-02-26 07:12:05'),(92,2,'admin/qr','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:12:07','2018-02-26 07:12:07'),(93,2,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:12:09','2018-02-26 07:12:09'),(94,2,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:12:13','2018-02-26 07:12:13'),(95,2,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:12:15','2018-02-26 07:12:15'),(96,2,'admin/auth/setting','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:12:20','2018-02-26 07:12:20'),(97,2,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:12:22','2018-02-26 07:12:22'),(98,2,'admin/auth/setting','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:12:28','2018-02-26 07:12:28'),(99,2,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:12:29','2018-02-26 07:12:29'),(100,2,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:12:30','2018-02-26 07:12:30'),(101,2,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:12:30','2018-02-26 07:12:30'),(102,2,'admin/qr','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:12:31','2018-02-26 07:12:31'),(103,2,'admin/qr','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:12:32','2018-02-26 07:12:32'),(104,2,'admin/qr','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:12:32','2018-02-26 07:12:32'),(105,2,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:12:33','2018-02-26 07:12:33'),(106,2,'admin/auth/login','GET','127.0.0.1','[]','2018-02-26 07:12:33','2018-02-26 07:12:33'),(107,2,'admin/auth/login','GET','127.0.0.1','[]','2018-02-26 07:12:34','2018-02-26 07:12:34'),(108,2,'admin/qr','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:12:41','2018-02-26 07:12:41'),(109,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 07:13:07','2018-02-26 07:13:07'),(110,2,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:13:09','2018-02-26 07:13:09'),(111,2,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:13:11','2018-02-26 07:13:11'),(112,1,'admin','GET','127.0.0.1','[]','2018-02-26 07:13:31','2018-02-26 07:13:31'),(113,1,'admin/qr','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:13:35','2018-02-26 07:13:35'),(114,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:13:41','2018-02-26 07:13:41'),(115,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:13:44','2018-02-26 07:13:44'),(116,1,'admin/auth/roles/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:13:49','2018-02-26 07:13:49'),(117,1,'admin/auth/roles/2','PUT','127.0.0.1','{\"slug\":\"Teacher\",\"name\":\"Teacher\",\"permissions\":[\"2\",\"4\",null],\"_token\":\"V0AHmJpYdn7isAWzxiz2JTzqffql9MlpQOu8vwRJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/roles\"}','2018-02-26 07:14:03','2018-02-26 07:14:03'),(118,1,'admin/auth/roles','GET','127.0.0.1','[]','2018-02-26 07:14:03','2018-02-26 07:14:03'),(119,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:14:07','2018-02-26 07:14:07'),(120,1,'admin/auth/permissions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:14:13','2018-02-26 07:14:13'),(121,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:14:15','2018-02-26 07:14:15'),(122,1,'admin/auth/permissions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:14:24','2018-02-26 07:14:24'),(123,1,'admin/auth/permissions','POST','127.0.0.1','{\"slug\":\"QrCode\",\"name\":\"QrCode\",\"http_method\":[\"GET\",null],\"http_path\":\"\\/qr\",\"_token\":\"V0AHmJpYdn7isAWzxiz2JTzqffql9MlpQOu8vwRJ\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/permissions\"}','2018-02-26 07:14:43','2018-02-26 07:14:43'),(124,1,'admin/auth/permissions','GET','127.0.0.1','[]','2018-02-26 07:14:43','2018-02-26 07:14:43'),(125,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:14:51','2018-02-26 07:14:51'),(126,1,'admin/auth/roles/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:14:53','2018-02-26 07:14:53'),(127,1,'admin/auth/roles/2','PUT','127.0.0.1','{\"slug\":\"Teacher\",\"name\":\"Teacher\",\"permissions\":[\"2\",\"4\",\"6\",null],\"_token\":\"V0AHmJpYdn7isAWzxiz2JTzqffql9MlpQOu8vwRJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/roles\"}','2018-02-26 07:14:57','2018-02-26 07:14:57'),(128,1,'admin/auth/roles','GET','127.0.0.1','[]','2018-02-26 07:14:57','2018-02-26 07:14:57'),(129,1,'admin/qr','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:15:03','2018-02-26 07:15:03'),(130,1,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:15:07','2018-02-26 07:15:07'),(131,2,'admin','GET','127.0.0.1','[]','2018-02-26 07:15:17','2018-02-26 07:15:17'),(132,2,'admin/qr','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:15:19','2018-02-26 07:15:19'),(133,2,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:15:21','2018-02-26 07:15:21'),(134,2,'admin/auth/setting','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:15:24','2018-02-26 07:15:24'),(135,2,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:15:28','2018-02-26 07:15:28'),(136,2,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:15:31','2018-02-26 07:15:31'),(137,2,'admin','GET','127.0.0.1','[]','2018-02-26 07:15:43','2018-02-26 07:15:43'),(138,2,'admin','GET','127.0.0.1','[]','2018-02-26 07:15:50','2018-02-26 07:15:50'),(139,2,'admin','GET','127.0.0.1','[]','2018-02-26 07:16:06','2018-02-26 07:16:06'),(140,2,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:16:11','2018-02-26 07:16:11'),(141,1,'admin','GET','127.0.0.1','[]','2018-02-26 07:16:57','2018-02-26 07:16:57'),(142,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:17:04','2018-02-26 07:17:04'),(143,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:17:06','2018-02-26 07:17:06'),(144,1,'admin/auth/roles/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:17:09','2018-02-26 07:17:09'),(145,1,'admin/auth/roles/2','PUT','127.0.0.1','{\"slug\":\"Teacher\",\"name\":\"Teacher\",\"permissions\":[\"2\",\"3\",\"4\",\"6\",null],\"_token\":\"qLEQPPVKN6mRslr25ItEF30suXdMQUNJXEQLAbiC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/roles\"}','2018-02-26 07:17:14','2018-02-26 07:17:14'),(146,1,'admin/auth/roles','GET','127.0.0.1','[]','2018-02-26 07:17:14','2018-02-26 07:17:14'),(147,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:17:18','2018-02-26 07:17:18'),(148,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:17:31','2018-02-26 07:17:31'),(149,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:17:31','2018-02-26 07:17:31'),(150,1,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:17:37','2018-02-26 07:17:37'),(151,2,'admin','GET','127.0.0.1','[]','2018-02-26 07:17:45','2018-02-26 07:17:45'),(152,2,'admin/qr','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:17:47','2018-02-26 07:17:47'),(153,2,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 07:17:52','2018-02-26 07:17:52'),(154,2,'admin','GET','127.0.0.1','[]','2018-02-26 17:12:52','2018-02-26 17:12:52'),(155,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 17:15:01','2018-02-26 17:15:01'),(156,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 17:15:32','2018-02-26 17:15:32'),(157,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 17:15:37','2018-02-26 17:15:37'),(158,2,'admin/qr','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 17:15:40','2018-02-26 17:15:40'),(159,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 17:22:15','2018-02-26 17:22:15'),(160,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 17:22:17','2018-02-26 17:22:17'),(161,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 17:22:19','2018-02-26 17:22:19'),(162,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 17:47:18','2018-02-26 17:47:18'),(163,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 17:50:06','2018-02-26 17:50:06'),(164,2,'admin','GET','127.0.0.1','[]','2018-02-26 17:50:12','2018-02-26 17:50:12'),(165,2,'admin/qr','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 17:50:14','2018-02-26 17:50:14'),(166,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 17:50:14','2018-02-26 17:50:14'),(167,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 17:54:26','2018-02-26 17:54:26'),(168,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 17:54:30','2018-02-26 17:54:30'),(169,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 17:54:32','2018-02-26 17:54:32'),(170,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 17:57:22','2018-02-26 17:57:22'),(171,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 17:57:24','2018-02-26 17:57:24'),(172,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 17:57:28','2018-02-26 17:57:28'),(173,2,'admin/qr','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 17:57:32','2018-02-26 17:57:32'),(174,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 18:02:57','2018-02-26 18:02:57'),(175,2,'admin/auth/login','GET','127.0.0.1','[]','2018-02-26 18:03:02','2018-02-26 18:03:02'),(176,2,'admin/qr','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 18:03:04','2018-02-26 18:03:04'),(177,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 18:03:10','2018-02-26 18:03:10'),(178,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 18:07:49','2018-02-26 18:07:49'),(179,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 18:07:52','2018-02-26 18:07:52'),(180,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 18:08:35','2018-02-26 18:08:35'),(181,2,'admin','GET','127.0.0.1','[]','2018-02-26 18:08:46','2018-02-26 18:08:46'),(182,2,'admin/qr','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 18:08:48','2018-02-26 18:08:48'),(183,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 18:08:49','2018-02-26 18:08:49'),(184,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 18:11:28','2018-02-26 18:11:28'),(185,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 18:11:30','2018-02-26 18:11:30'),(186,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 18:11:44','2018-02-26 18:11:44'),(187,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 18:13:01','2018-02-26 18:13:01'),(188,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 18:13:03','2018-02-26 18:13:03'),(189,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 18:14:17','2018-02-26 18:14:17'),(190,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 18:14:31','2018-02-26 18:14:31'),(191,2,'admin/qr','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 18:14:35','2018-02-26 18:14:35'),(192,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 18:15:58','2018-02-26 18:15:58'),(193,2,'admin','GET','127.0.0.1','[]','2018-02-26 18:16:08','2018-02-26 18:16:08'),(194,2,'admin/qr','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 18:16:10','2018-02-26 18:16:10'),(195,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 18:19:05','2018-02-26 18:19:05'),(196,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 18:20:09','2018-02-26 18:20:09'),(197,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 18:20:11','2018-02-26 18:20:11'),(198,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 18:21:21','2018-02-26 18:21:21'),(199,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 18:22:55','2018-02-26 18:22:55'),(200,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 18:39:04','2018-02-26 18:39:04'),(201,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 18:40:19','2018-02-26 18:40:19'),(202,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 18:40:49','2018-02-26 18:40:49'),(203,2,'admin/qr','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 18:40:52','2018-02-26 18:40:52'),(204,2,'admin/qr','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-02-26 18:40:53','2018-02-26 18:40:53'),(205,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 18:43:27','2018-02-26 18:43:27'),(206,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 18:43:54','2018-02-26 18:43:54'),(207,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 18:54:25','2018-02-26 18:54:25'),(208,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 18:58:59','2018-02-26 18:58:59'),(209,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 19:01:35','2018-02-26 19:01:35'),(210,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 19:01:58','2018-02-26 19:01:58'),(211,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 19:04:58','2018-02-26 19:04:58'),(212,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 19:05:12','2018-02-26 19:05:12'),(213,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 19:06:48','2018-02-26 19:06:48'),(214,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 19:08:13','2018-02-26 19:08:13'),(215,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 19:08:26','2018-02-26 19:08:26'),(216,2,'admin/qr','GET','127.0.0.1','[]','2018-02-26 19:13:23','2018-02-26 19:13:23'),(217,1,'admin','GET','127.0.0.1','[]','2018-03-01 05:49:14','2018-03-01 05:49:14'),(218,1,'admin/qr','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-03-01 05:49:20','2018-03-01 05:49:20'),(219,1,'admin','GET','127.0.0.1','[]','2018-03-03 16:29:34','2018-03-03 16:29:34'),(220,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-03-03 16:29:39','2018-03-03 16:29:39'),(221,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-03-03 16:29:45','2018-03-03 16:29:45'),(222,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-03-03 16:29:48','2018-03-03 16:29:48'),(223,1,'admin/qr','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-03-03 16:29:51','2018-03-03 16:29:51'),(224,1,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-03-03 16:29:59','2018-03-03 16:29:59');
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'All permission','*','','*',NULL,NULL),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL),(6,'QrCode','QrCode','GET','/qr','2018-02-26 07:14:43','2018-02-26 07:14:43');
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_menu`
--

DROP TABLE IF EXISTS `admin_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_menu`
--

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES (1,2,NULL,NULL),(2,8,NULL,NULL),(1,8,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_permissions`
--

DROP TABLE IF EXISTS `admin_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_permissions`
--

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL),(2,2,NULL,NULL),(2,4,NULL,NULL),(2,6,NULL,NULL),(2,3,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_users`
--

DROP TABLE IF EXISTS `admin_role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_users`
--

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL),(2,2,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Administrator','administrator','2018-02-21 00:56:50','2018-02-21 00:56:50'),(2,'Teacher','Teacher','2018-02-25 19:29:56','2018-02-25 19:29:56');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user_permissions`
--

DROP TABLE IF EXISTS `admin_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user_permissions`
--

LOCK TABLES `admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$4m6Q0n6mRUwqXLVGf2akFOE7uvpRK17Crn10qF75dc7CCZXnj8j3i','Administrator',NULL,'Ktjou6Vol8NQHDQGFFtVDTD4QObeY2PaUBn1RrXKX06hrwZ0U5jDp8yE73p7','2018-02-21 00:56:50','2018-02-21 00:56:50'),(2,'550566181@qq.com','$2y$10$d5JREFo//rP0HmCOiib06.YK/lZU8zGSK10250k1n8q6wD2RTItki','赖杰',NULL,'hpnrGG6BpzoKjygPKuU5kftExl5swAtnYtnhkH3FnAvjcKHldLeGdNKlokUN','2018-02-26 00:45:02','2018-02-26 00:45:02');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_04_173148_create_admin_tables',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-21 14:52:22
