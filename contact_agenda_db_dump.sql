-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: contact_agenda_db
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.20.04.3

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

DROP DATABASE IF EXISTS contact_agenda_db;
CREATE DATABASE contact_agenda_db;
USE contact_agenda_db;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add auth group',7,'add_authgroup'),(26,'Can change auth group',7,'change_authgroup'),(27,'Can delete auth group',7,'delete_authgroup'),(28,'Can view auth group',7,'view_authgroup'),(29,'Can add auth group permissions',8,'add_authgrouppermissions'),(30,'Can change auth group permissions',8,'change_authgrouppermissions'),(31,'Can delete auth group permissions',8,'delete_authgrouppermissions'),(32,'Can view auth group permissions',8,'view_authgrouppermissions'),(33,'Can add auth permission',9,'add_authpermission'),(34,'Can change auth permission',9,'change_authpermission'),(35,'Can delete auth permission',9,'delete_authpermission'),(36,'Can view auth permission',9,'view_authpermission'),(37,'Can add auth user',10,'add_authuser'),(38,'Can change auth user',10,'change_authuser'),(39,'Can delete auth user',10,'delete_authuser'),(40,'Can view auth user',10,'view_authuser'),(41,'Can add auth user groups',11,'add_authusergroups'),(42,'Can change auth user groups',11,'change_authusergroups'),(43,'Can delete auth user groups',11,'delete_authusergroups'),(44,'Can view auth user groups',11,'view_authusergroups'),(45,'Can add auth user user permissions',12,'add_authuseruserpermissions'),(46,'Can change auth user user permissions',12,'change_authuseruserpermissions'),(47,'Can delete auth user user permissions',12,'delete_authuseruserpermissions'),(48,'Can view auth user user permissions',12,'view_authuseruserpermissions'),(49,'Can add contact address',13,'add_contactaddress'),(50,'Can change contact address',13,'change_contactaddress'),(51,'Can delete contact address',13,'delete_contactaddress'),(52,'Can view contact address',13,'view_contactaddress'),(53,'Can add contact relation',14,'add_contactrelation'),(54,'Can change contact relation',14,'change_contactrelation'),(55,'Can delete contact relation',14,'delete_contactrelation'),(56,'Can view contact relation',14,'view_contactrelation'),(57,'Can add contacts',15,'add_contacts'),(58,'Can change contacts',15,'change_contacts'),(59,'Can delete contacts',15,'delete_contacts'),(60,'Can view contacts',15,'view_contacts'),(61,'Can add django admin log',16,'add_djangoadminlog'),(62,'Can change django admin log',16,'change_djangoadminlog'),(63,'Can delete django admin log',16,'delete_djangoadminlog'),(64,'Can view django admin log',16,'view_djangoadminlog'),(65,'Can add django content type',17,'add_djangocontenttype'),(66,'Can change django content type',17,'change_djangocontenttype'),(67,'Can delete django content type',17,'delete_djangocontenttype'),(68,'Can view django content type',17,'view_djangocontenttype'),(69,'Can add django migrations',18,'add_djangomigrations'),(70,'Can change django migrations',18,'change_djangomigrations'),(71,'Can delete django migrations',18,'delete_djangomigrations'),(72,'Can view django migrations',18,'view_djangomigrations'),(73,'Can add django session',19,'add_djangosession'),(74,'Can change django session',19,'change_djangosession'),(75,'Can delete django session',19,'delete_djangosession'),(76,'Can view django session',19,'view_djangosession'),(77,'Can add sessions',20,'add_sessions'),(78,'Can change sessions',20,'change_sessions'),(79,'Can delete sessions',20,'delete_sessions'),(80,'Can view sessions',20,'view_sessions'),(81,'Can add users',21,'add_users'),(82,'Can change users',21,'change_users'),(83,'Can delete users',21,'delete_users'),(84,'Can view users',21,'view_users'),(85,'Can add contact',22,'add_contact'),(86,'Can change contact',22,'change_contact'),(87,'Can delete contact',22,'delete_contact'),(88,'Can view contact',22,'view_contact'),(89,'Can add session',23,'add_session'),(90,'Can change session',23,'change_session'),(91,'Can delete session',23,'delete_session'),(92,'Can view session',23,'view_session'),(93,'Can add user',24,'add_user'),(94,'Can change user',24,'change_user'),(95,'Can delete user',24,'delete_user'),(96,'Can view user',24,'view_user');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$DgIHy9nXOWgXe7dXw0wc0s$vrJ+rdIr5rZfCyVjRzROnF8876H0N6qZjKIWBPrYaUo=','2022-06-17 16:16:51.431399',1,'chuxi','','','agustin.vergara.ruiz@gmail.com',1,1,'2022-05-20 21:28:25.200912');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `contact_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `contact_relation_id` int DEFAULT NULL,
  `contact_name` varchar(30) NOT NULL,
  `contact_lastname` varchar(30) NOT NULL,
  `phone_number` int NOT NULL,
  `contact_email` varchar(40) DEFAULT NULL,
  `contact_birthday` date DEFAULT NULL,
  PRIMARY KEY (`contact_id`),
  UNIQUE KEY `contact_id` (`contact_id`),
  UNIQUE KEY `phone_number` (`phone_number`),
  UNIQUE KEY `contact_email` (`contact_email`),
  KEY `user_id` (`user_id`),
  KEY `contact_relation_id` (`contact_relation_id`),
  CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `contact_ibfk_2` FOREIGN KEY (`contact_relation_id`) REFERENCES `contact_relation` (`contact_relation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

--
-- Table structure for table `contact_address`
--

DROP TABLE IF EXISTS `contact_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_address` (
  `contact_address_id` int NOT NULL AUTO_INCREMENT,
  `contact_id` int,
  `address_1` varchar(70) DEFAULT NULL,
  `address_2` varchar(70) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`contact_address_id`),
  UNIQUE KEY `contact_address_id` (`contact_address_id`),
  FOREIGN KEY (`contact_id`)  REFERENCES `contact`(`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contact_relation`
--

DROP TABLE IF EXISTS `contact_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_relation` (
  `contact_relation_id` int NOT NULL AUTO_INCREMENT,
  `contact_relation_text` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`contact_relation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_relation`
--

LOCK TABLES `contact_relation` WRITE;
/*!40000 ALTER TABLE `contact_relation` DISABLE KEYS */;
INSERT INTO `contact_relation` VALUES (4,'family'),(5,'friend'),(6,'work');
/*!40000 ALTER TABLE `contact_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-06-13 15:09:23.865067','1','Contact object (1)',1,'[{\"added\": {}}]',22,1),(2,'2022-06-13 16:09:13.155653','1','ContactRelation object (1)',1,'[{\"added\": {}}]',14,1),(3,'2022-06-13 16:09:19.347179','2','ContactRelation object (2)',1,'[{\"added\": {}}]',14,1),(4,'2022-06-13 16:09:34.160560','3','ContactRelation object (3)',1,'[{\"added\": {}}]',14,1),(5,'2022-06-13 16:14:38.309591','1','Contact object (1)',2,'[{\"changed\": {\"fields\": [\"Contact relation\"]}}]',22,1),(7,'2022-06-13 16:18:48.537265','1','Contact object (1)',2,'[{\"changed\": {\"fields\": [\"Contact relation\"]}}]',22,1),(8,'2022-06-13 16:18:53.266511','3','ContactRelation object (3)',3,'',14,1),(9,'2022-06-13 16:18:55.849708','2','ContactRelation object (2)',3,'',14,1),(10,'2022-06-13 16:18:58.210116','1','ContactRelation object (1)',3,'',14,1),(11,'2022-06-13 16:46:59.849750','2','Contact object (2)',1,'[{\"added\": {}}]',22,1),(12,'2022-06-14 16:38:46.739564','4','Contact object (4)',3,'',22,1),(13,'2022-06-14 16:38:50.498194','3','Contact object (3)',3,'',22,1),(14,'2022-06-17 16:18:24.255938','7','Contact object (7)',3,'',22,1),(15,'2022-06-17 16:18:28.659548','6','Contact object (6)',3,'',22,1),(16,'2022-06-17 16:18:33.078552','5','Contact object (5)',3,'',22,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'contact','authgroup'),(8,'contact','authgrouppermissions'),(9,'contact','authpermission'),(10,'contact','authuser'),(11,'contact','authusergroups'),(12,'contact','authuseruserpermissions'),(22,'contact','contact'),(13,'contact','contactaddress'),(14,'contact','contactrelation'),(15,'contact','contacts'),(16,'contact','djangoadminlog'),(17,'contact','djangocontenttype'),(18,'contact','djangomigrations'),(19,'contact','djangosession'),(23,'contact','session'),(20,'contact','sessions'),(24,'contact','user'),(21,'contact','users'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-05-20 00:47:37.899230'),(2,'auth','0001_initial','2022-05-20 00:47:39.194737'),(3,'admin','0001_initial','2022-05-20 00:47:39.571187'),(4,'admin','0002_logentry_remove_auto_add','2022-05-20 00:47:39.617019'),(5,'admin','0003_logentry_add_action_flag_choices','2022-05-20 00:47:39.628971'),(6,'contenttypes','0002_remove_content_type_name','2022-05-20 00:47:39.810895'),(7,'auth','0002_alter_permission_name_max_length','2022-05-20 00:47:39.951273'),(8,'auth','0003_alter_user_email_max_length','2022-05-20 00:47:40.014972'),(9,'auth','0004_alter_user_username_opts','2022-05-20 00:47:40.032585'),(10,'auth','0005_alter_user_last_login_null','2022-05-20 00:47:40.154138'),(11,'auth','0006_require_contenttypes_0002','2022-05-20 00:47:40.165241'),(12,'auth','0007_alter_validators_add_error_messages','2022-05-20 00:47:40.193455'),(13,'auth','0008_alter_user_username_max_length','2022-05-20 00:47:40.344666'),(14,'auth','0009_alter_user_last_name_max_length','2022-05-20 00:47:40.502544'),(15,'auth','0010_alter_group_name_max_length','2022-05-20 00:47:40.562027'),(16,'auth','0011_update_proxy_permissions','2022-05-20 00:47:40.590954'),(17,'auth','0012_alter_user_first_name_max_length','2022-05-20 00:47:40.733299'),(18,'sessions','0001_initial','2022-05-20 00:47:40.850471'),(19,'contact','0001_initial','2022-05-29 00:18:00.686922'),(20,'contact','0002_contact_session_user_delete_contacts_delete_sessions_and_more','2022-05-30 14:40:32.080817'),(21,'contact','0003_delete_authgroup_delete_authgrouppermissions_and_more','2022-06-13 14:21:57.225435');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0ld2o61d5jq0801lnrqkym9o25cqhfew','.eJxVjEEOgjAQRe_StWnaAYbWpXvPQDqdGYsaSCisjHdXEha6_e-9_zJD2tYybFWWYWRzNt6cfjdK-SHTDvieptts8zyty0h2V-xBq73OLM_L4f4dlFTLt6aQE0YiasVpdB059I06VAkq4oAh94gNoIdeWTB2oLFh6H3LoCGZ9wf2vDgJ:1nsAAs:KH3bL7p_d6OSVpgF7zLbLpuiHRzD7MOiTlOXKHXB-ls','2022-06-03 21:28:42.780354'),('1mhnb99q25b9cvlacl5j51yrnw7o31sy','.eJxVjEEOgjAQRe_StWnaAYbWpXvPQDqdGYsaSCisjHdXEha6_e-9_zJD2tYybFWWYWRzNt6cfjdK-SHTDvieptts8zyty0h2V-xBq73OLM_L4f4dlFTLt6aQE0YiasVpdB059I06VAkq4oAh94gNoIdeWTB2oLFh6H3LoCGZ9wf2vDgJ:1o0lfT:_KhfH-V-NCBtIVUD_eLsU2NyIBONJSSMGg537QyE6ms','2022-06-27 15:07:51.838254'),('hoheolmokojvcc8lnvb0sx6672s3jmi8','.eJxVjEEOgjAQRe_StWnaAYbWpXvPQDqdGYsaSCisjHdXEha6_e-9_zJD2tYybFWWYWRzNt6cfjdK-SHTDvieptts8zyty0h2V-xBq73OLM_L4f4dlFTLt6aQE0YiasVpdB059I06VAkq4oAh94gNoIdeWTB2oLFh6H3LoCGZ9wf2vDgJ:1o2EeR:-sVpK9Lc96u9-lTUEjUQavKb_IgsOK92MFAY0jJvNa0','2022-07-01 16:16:51.438920');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session` (
  `sessions_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `user_sesion_id` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`sessions_id`),
  UNIQUE KEY `sessions_id` (`sessions_id`),
  UNIQUE KEY `user_sesion_id` (`user_sesion_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `session_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_nickname` varchar(20) NOT NULL,
  `user_firstname` varchar(20) NOT NULL,
  `user_lastname` varchar(20) NOT NULL,
  `password` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `user_nickname` (`user_nickname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-27  9:55:40
