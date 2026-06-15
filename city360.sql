-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_addfeedback`
--

DROP TABLE IF EXISTS `app_addfeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_addfeedback` (
  `id` tinyint(4) DEFAULT NULL,
  `feedback` varchar(4) DEFAULT NULL,
  `usrid_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_addfeedback`
--

LOCK TABLES `app_addfeedback` WRITE;
/*!40000 ALTER TABLE `app_addfeedback` DISABLE KEYS */;
INSERT INTO `app_addfeedback` VALUES (1,'Good',3);
/*!40000 ALTER TABLE `app_addfeedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_booking`
--

DROP TABLE IF EXISTS `app_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_booking` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(6) DEFAULT NULL,
  `email` varchar(14) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `category` varchar(11) DEFAULT NULL,
  `location` varchar(12) DEFAULT NULL,
  `startingdate` varchar(10) DEFAULT NULL,
  `endingdate` varchar(10) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `usrid_id` tinyint(4) DEFAULT NULL,
  `worid` tinyint(4) DEFAULT NULL,
  `wages` mediumint(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_booking`
--

LOCK TABLES `app_booking` WRITE;
/*!40000 ALTER TABLE `app_booking` DISABLE KEYS */;
INSERT INTO `app_booking` VALUES (15,'Ram a','ram@gmail.com',7894561230,'Plumber','Kochi','2023-03-29','2023-03-30','paid',3,5,500),(16,'Manu M','manu@gmail.com',9638527412,'Electrician','Kochi','2023-03-29','2023-03-30','approved',3,6,1500),(17,'Ram a','ram@gmail.com',7894561231,'Plumber','Kochi,Kaloor','2023-04-01','2023-04-06','approved',3,5,12500);
/*!40000 ALTER TABLE `app_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_category`
--

DROP TABLE IF EXISTS `app_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_category` (
  `id` tinyint(4) DEFAULT NULL,
  `category` varchar(11) DEFAULT NULL,
  `image` varchar(44) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_category`
--

LOCK TABLES `app_category` WRITE;
/*!40000 ALTER TABLE `app_category` DISABLE KEYS */;
INSERT INTO `app_category` VALUES (5,'Plumber','pexels-dominika-roseclay-1021872_mjUISHM.jpg'),(6,'Electrician','pexels-ksenia-chernaya-5691590.jpg'),(7,'Carpenter','pexels-cottonbro-studio-5089178.jpg'),(8,'Painter','pexels-malte-luk-1669754.jpg'),(9,'Tailor','pexels-leticia-ribeiro-2249290.jpg');
/*!40000 ALTER TABLE `app_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_login`
--

DROP TABLE IF EXISTS `app_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_login` (
  `id` tinyint(4) DEFAULT NULL,
  `email` varchar(15) DEFAULT NULL,
  `password` varchar(9) DEFAULT NULL,
  `userType` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_login`
--

LOCK TABLES `app_login` WRITE;
/*!40000 ALTER TABLE `app_login` DISABLE KEYS */;
INSERT INTO `app_login` VALUES (4,'admin@gmail.com','admin','admin'),(6,'jo@gmail.com','Jo@12345','user'),(9,'ro@gmail.com','Ro@12345','user'),(11,'ram@gmail.com','Ram@12345','worker'),(12,'manu@gmail.com','Ma@12345','worker');
/*!40000 ALTER TABLE `app_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_useraddfeedback`
--

DROP TABLE IF EXISTS `app_useraddfeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_useraddfeedback` (
  `id` tinyint(4) DEFAULT NULL,
  `worid` tinyint(4) DEFAULT NULL,
  `name` varchar(6) DEFAULT NULL,
  `category` varchar(11) DEFAULT NULL,
  `feedback` varchar(4) DEFAULT NULL,
  `usrid_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_useraddfeedback`
--

LOCK TABLES `app_useraddfeedback` WRITE;
/*!40000 ALTER TABLE `app_useraddfeedback` DISABLE KEYS */;
INSERT INTO `app_useraddfeedback` VALUES (6,5,'Ram a','Plumber','Good',3),(7,6,'Manu M','Electrician','Good',3);
/*!40000 ALTER TABLE `app_useraddfeedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_userreg`
--

DROP TABLE IF EXISTS `app_userreg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_userreg` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(7) DEFAULT NULL,
  `email` varchar(12) DEFAULT NULL,
  `password` varchar(8) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `image` varchar(17) DEFAULT NULL,
  `gender` varchar(4) DEFAULT NULL,
  `address` varchar(33) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `usrid_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_userreg`
--

LOCK TABLES `app_userreg` WRITE;
/*!40000 ALTER TABLE `app_userreg` DISABLE KEYS */;
INSERT INTO `app_userreg` VALUES (3,'Joyel ','jo@gmail.com','Jo@12345',9638527413,'team2.jpg','Male','Pinamarukil H Maragattupally P.OO','approved',6),(4,'Robin B','ro@gmail.com','Ro@12345',9632883698,'team1_a3fNEHw.jpg','Male','Kaloor P.O\r\nKochi','approved',9);
/*!40000 ALTER TABLE `app_userreg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_workeraddfeedback`
--

DROP TABLE IF EXISTS `app_workeraddfeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_workeraddfeedback` (
  `id` tinyint(4) DEFAULT NULL,
  `feedback` varchar(11) DEFAULT NULL,
  `worid_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_workeraddfeedback`
--

LOCK TABLES `app_workeraddfeedback` WRITE;
/*!40000 ALTER TABLE `app_workeraddfeedback` DISABLE KEYS */;
INSERT INTO `app_workeraddfeedback` VALUES (1,'good',5),(2,'good',5),(3,'Almost Good',6);
/*!40000 ALTER TABLE `app_workeraddfeedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_workersreg`
--

DROP TABLE IF EXISTS `app_workersreg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_workersreg` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(6) DEFAULT NULL,
  `email` varchar(14) DEFAULT NULL,
  `password` varchar(9) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `image` varchar(9) DEFAULT NULL,
  `gender` varchar(4) DEFAULT NULL,
  `address` varchar(15) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `worid_id` tinyint(4) DEFAULT NULL,
  `category` varchar(11) DEFAULT NULL,
  `experience` tinyint(4) DEFAULT NULL,
  `location` varchar(12) DEFAULT NULL,
  `wages` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_workersreg`
--

LOCK TABLES `app_workersreg` WRITE;
/*!40000 ALTER TABLE `app_workersreg` DISABLE KEYS */;
INSERT INTO `app_workersreg` VALUES (5,'Ram a','ram@gmail.com','Ram@12345',7894561231,'team3.jpg','Male','   Kaloor,Kochi','approved',11,'Plumber',3,'Kochi,Kaloor',2500),(6,'Manu M','manu@gmail.com','Ma@12345',9638527412,'team1.jpg','Male',' Kochi','approved',12,'Electrician',2,'Kochi',1500);
/*!40000 ALTER TABLE `app_workersreg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` tinyint(4) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `codename` varchar(24) DEFAULT NULL,
  `name` varchar(28) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,1,'view_logentry','Can view log entry'),(5,2,'add_permission','Can add permission'),(6,2,'change_permission','Can change permission'),(7,2,'delete_permission','Can delete permission'),(8,2,'view_permission','Can view permission'),(9,3,'add_group','Can add group'),(10,3,'change_group','Can change group'),(11,3,'delete_group','Can delete group'),(12,3,'view_group','Can view group'),(13,4,'add_user','Can add user'),(14,4,'change_user','Can change user'),(15,4,'delete_user','Can delete user'),(16,4,'view_user','Can view user'),(17,5,'add_contenttype','Can add content type'),(18,5,'change_contenttype','Can change content type'),(19,5,'delete_contenttype','Can delete content type'),(20,5,'view_contenttype','Can view content type'),(21,6,'add_session','Can add session'),(22,6,'change_session','Can change session'),(23,6,'delete_session','Can delete session'),(24,6,'view_session','Can view session'),(25,7,'add_login','Can add login'),(26,7,'change_login','Can change login'),(27,7,'delete_login','Can delete login'),(28,7,'view_login','Can view login'),(29,8,'add_workersreg','Can add workers reg'),(30,8,'change_workersreg','Can change workers reg'),(31,8,'delete_workersreg','Can delete workers reg'),(32,8,'view_workersreg','Can view workers reg'),(33,9,'add_userreg','Can add user reg'),(34,9,'change_userreg','Can change user reg'),(35,9,'delete_userreg','Can delete user reg'),(36,9,'view_userreg','Can view user reg'),(37,10,'add_categoty','Can add categoty'),(38,10,'change_categoty','Can change categoty'),(39,10,'delete_categoty','Can delete categoty'),(40,10,'view_categoty','Can view categoty'),(41,10,'add_category','Can add category'),(42,10,'change_category','Can change category'),(43,10,'delete_category','Can delete category'),(44,10,'view_category','Can view category'),(45,11,'add_booking','Can add booking'),(46,11,'change_booking','Can change booking'),(47,11,'delete_booking','Can delete booking'),(48,11,'view_booking','Can view booking'),(49,12,'add_useraddfeedback','Can add useraddfeedback'),(50,12,'change_useraddfeedback','Can change useraddfeedback'),(51,12,'delete_useraddfeedback','Can delete useraddfeedback'),(52,12,'view_useraddfeedback','Can view useraddfeedback'),(53,13,'add_addfeedback','Can add addfeedback'),(54,13,'change_addfeedback','Can change addfeedback'),(55,13,'delete_addfeedback','Can delete addfeedback'),(56,13,'view_addfeedback','Can view addfeedback'),(57,14,'add_workeraddfeedback','Can add workeraddfeedback'),(58,14,'change_workeraddfeedback','Can change workeraddfeedback'),(59,14,'delete_workeraddfeedback','Can delete workeraddfeedback'),(60,14,'view_workeraddfeedback','Can view workeraddfeedback');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` tinyint(4) DEFAULT NULL,
  `password` varchar(88) DEFAULT NULL,
  `last_login` varchar(10) DEFAULT NULL,
  `is_superuser` tinyint(4) DEFAULT NULL,
  `username` varchar(5) DEFAULT NULL,
  `last_name` varchar(0) DEFAULT NULL,
  `email` varchar(0) DEFAULT NULL,
  `is_staff` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `date_joined` varchar(10) DEFAULT NULL,
  `first_name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$FUYr3FHLrCdnKZlHXwu4k6$1nOJTIcB3trMcviE2WujuR/sApSPd/wXMT2/oL8DpXU=','',1,'admin','','',1,1,'2023-03-27',''),(2,'pbkdf2_sha256$390000$TN1gUnsu6AyJTjEttaTwTD$ogTvKk5bEfUyg1OfeZYdQLJoxG74vBiiNOd8UiG2MaM=','2023-03-27',1,'Admin','','',1,1,'2023-03-27',''),(3,'pbkdf2_sha256$390000$20VqpbtJxpKLyC6eRdy2GR$3k5iS4LXmpJ9zVs0T0AqkeEgc3xgew4m5Dw0dELqXzc=','2023-03-29',1,'joyel','','',1,1,'2023-03-28','');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` tinyint(4) DEFAULT NULL,
  `object_id` tinyint(4) DEFAULT NULL,
  `object_repr` varchar(26) DEFAULT NULL,
  `action_flag` tinyint(4) DEFAULT NULL,
  `change_message` varchar(47) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `action_time` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,1,'Login object (1)',3,'',7,2,'2023-03-27'),(2,4,'Login object (4)',1,'[{\"added\": {}}]',7,2,'2023-03-27'),(3,5,'Login object (5)',2,'[{\"changed\": {\"fields\": [\"UserType\"]}}]',7,2,'2023-03-27'),(4,1,'WorkersReg object (1)',2,'[{\"changed\": {\"fields\": [\"Phone\"]}}]',8,2,'2023-03-27'),(5,2,'Category object (2)',3,'',10,3,'2023-03-28'),(6,1,'Category object (1)',3,'',10,3,'2023-03-28'),(7,3,'Category object (3)',3,'',10,3,'2023-03-28'),(8,6,'Login object (6)',2,'[{\"changed\": {\"fields\": [\"Email\"]}}]',7,3,'2023-03-28'),(9,3,'UserReg object (3)',2,'[{\"changed\": {\"fields\": [\"Email\"]}}]',9,3,'2023-03-28'),(10,1,'WorkersReg object (1)',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',8,3,'2023-03-28'),(11,2,'Booking object (2)',3,'',11,3,'2023-03-29'),(12,1,'Booking object (1)',3,'',11,3,'2023-03-29'),(13,4,'Booking object (4)',3,'',11,3,'2023-03-29'),(14,4,'Booking object (4)',3,'',11,3,'2023-03-29'),(15,3,'Booking object (3)',3,'',11,3,'2023-03-29'),(16,3,'Useraddfeedback object (3)',3,'',12,3,'2023-03-29'),(17,2,'Useraddfeedback object (2)',3,'',12,3,'2023-03-29'),(18,1,'Useraddfeedback object (1)',3,'',12,3,'2023-03-29'),(19,10,'Booking object (10)',3,'',11,3,'2023-03-29'),(20,9,'Booking object (9)',3,'',11,3,'2023-03-29'),(21,8,'Booking object (8)',3,'',11,3,'2023-03-29'),(22,6,'Booking object (6)',3,'',11,3,'2023-03-29'),(23,11,'Booking object (11)',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',11,3,'2023-03-29'),(24,11,'Booking object (11)',2,'[{\"changed\": {\"fields\": [\"Amount\", \"Status\"]}}]',11,3,'2023-03-29'),(25,4,'WorkersReg object (4)',2,'[{\"changed\": {\"fields\": [\"Address\", \"Wages\"]}}]',8,3,'2023-03-29'),(26,2,'WorkersReg object (2)',2,'[{\"changed\": {\"fields\": [\"Address\", \"Wages\"]}}]',8,3,'2023-03-29'),(27,4,'WorkersReg object (4)',3,'',8,3,'2023-03-29'),(28,2,'WorkersReg object (2)',3,'',8,3,'2023-03-29'),(29,10,'Login object (10)',3,'',7,3,'2023-03-29'),(30,7,'Login object (7)',3,'',7,3,'2023-03-29'),(31,5,'Useraddfeedback object (5)',3,'',12,3,'2023-03-29'),(32,4,'Useraddfeedback object (4)',3,'',12,3,'2023-03-29'),(33,7,'WorkersReg object (7)',3,'',8,3,'2023-03-29'),(34,13,'Login object (13)',3,'',7,3,'2023-03-29'),(35,15,'Booking object (15)',2,'[{\"changed\": {\"fields\": [\"Wages\"]}}]',11,3,'2023-03-29'),(36,16,'Booking object (16)',2,'[{\"changed\": {\"fields\": [\"Wages\"]}}]',11,3,'2023-03-29');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` tinyint(4) DEFAULT NULL,
  `app_label` varchar(12) DEFAULT NULL,
  `model` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(13,'app','addfeedback'),(11,'app','booking'),(10,'app','category'),(7,'app','login'),(12,'app','useraddfeedback'),(9,'app','userreg'),(14,'app','workeraddfeedback'),(8,'app','workersreg'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` tinyint(4) DEFAULT NULL,
  `app` varchar(12) DEFAULT NULL,
  `name` varchar(55) DEFAULT NULL,
  `applied` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-03-27'),(2,'auth','0001_initial','2023-03-27'),(3,'admin','0001_initial','2023-03-27'),(4,'admin','0002_logentry_remove_auto_add','2023-03-27'),(5,'admin','0003_logentry_add_action_flag_choices','2023-03-27'),(6,'app','0001_initial','2023-03-27'),(7,'contenttypes','0002_remove_content_type_name','2023-03-27'),(8,'auth','0002_alter_permission_name_max_length','2023-03-27'),(9,'auth','0003_alter_user_email_max_length','2023-03-27'),(10,'auth','0004_alter_user_username_opts','2023-03-27'),(11,'auth','0005_alter_user_last_login_null','2023-03-27'),(12,'auth','0006_require_contenttypes_0002','2023-03-27'),(13,'auth','0007_alter_validators_add_error_messages','2023-03-27'),(14,'auth','0008_alter_user_username_max_length','2023-03-27'),(15,'auth','0009_alter_user_last_name_max_length','2023-03-27'),(16,'auth','0010_alter_group_name_max_length','2023-03-27'),(17,'auth','0011_update_proxy_permissions','2023-03-27'),(18,'auth','0012_alter_user_first_name_max_length','2023-03-27'),(19,'sessions','0001_initial','2023-03-27'),(20,'app','0002_workersreg_category_workersreg_experience_and_more','2023-03-27'),(21,'app','0003_categoty','2023-03-28'),(22,'app','0004_rename_categoty_category','2023-03-28'),(23,'app','0005_rename_categoty_category_category','2023-03-28'),(24,'app','0006_category_image','2023-03-28'),(25,'app','0007_booking','2023-03-29'),(26,'app','0008_alter_booking_status','2023-03-29'),(27,'app','0009_alter_booking_worid','2023-03-29'),(28,'app','0010_useraddfeedback','2023-03-29'),(29,'app','0011_addfeedback','2023-03-29'),(30,'app','0012_booking_amount','2023-03-29'),(31,'app','0013_workersreg_wages','2023-03-29'),(32,'app','0014_booking_wages','2023-03-29'),(33,'app','0015_remove_booking_amount','2023-03-29'),(34,'app','0016_workeraddfeedback','2023-03-29'),(35,'app','0017_remove_workeraddfeedback_worrid_and_more','2023-03-29');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(32) DEFAULT NULL,
  `session_data` varchar(234) DEFAULT NULL,
  `expire_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('d1gavdomosnj6auk6aizu23gf515gtqm','.eJxVjEEOwiAQRe_C2hBgBmxduvcMZAZGqRpISrsy3l2bdKHb_977LxVpXUpcu8xxyuqknDr8bkzpIXUD-U711nRqdZkn1puid9r1pWV5nnf376BQL986WbTGe0ZwITAQDzA4H0wYs706wdEiZ0PGAoo5BrZeBBiREMAwOPX-AK7ENoU:1pgpcQ:AoVnpxDWtWeB6yY-seUBjTuQc_JhRS3ZXCk8hnzwquw','2023-04-10'),('2ib3qc514fdy5nlwb49bl38npw5z474r','.eJxVjEEOwiAQRe_C2pApMAx16d4zkIEhUjU0Ke3KeHdt0oVu_3vvv1Tkba1x62WJk6izsur0uyXOj9J2IHdut1nnua3LlPSu6IN2fZ2lPC-H-3dQuddvPfhgXA5iLaGVnBxAYgMwEiD50aUBfQmGDCE4B1bYcEEEMZgFAqn3B6YYNj4:1ph8bH:fZckg_IgoykfOQlz3zUYmlSFfebNTAXjkeg3z7BLPqk','2023-04-11'),('v2cyr1hxuk3ymbddof34qjst5h3iii90','.eJxVjEEOwiAQRe_C2pApMAx16d4zkIEhUjU0Ke3KeHdt0oVu_3vvv1Tkba1x62WJk6izsur0uyXOj9J2IHdut1nnua3LlPSu6IN2fZ2lPC-H-3dQuddvPfhgXA5iLaGVnBxAYgMwEiD50aUBfQmGDCE4B1bYcEEEMZgFAqn3B6YYNj4:1ph9jr:AbRAsWZumnjFOaundXqfmoDIFLljc69M1ZHfPDcTwVU','2023-04-11'),('qkcca2plcub28bqxzybsnm6ejkcpjttt','.eJxVjsEOwiAQRP-FsyFbYIF69N5vaBaWSNVAUtqT8d8tSQ96nTfzMm8x077leW9pnRcWV6HF5TcLFJ-pdMAPKvcqYy3bugTZK_KkTU6V0-t2dv8EmVo-1oP1ykTPWjvUHIMBCKQARgfo7GjCgDZ55ZRDMAY0k6KECKwwMnh3SPf-T3--YBM4XQ:1phAio:ZPaLy-VebhXGkQgiebZ43-u6ek7z_V2QuTCqNTYw1e0','2023-04-11'),('w5piwt7j3vc9jr15qzcp7s6s26lovp1w','eyJ1aWQiOjN9:1phBHJ:qjK8AcAeKmoLp4K6cL1E6hfpB82Klv6wzHmakiAJZAc','2023-04-11'),('ka8xleo7qwljz6pdmybpsixu1oz3mgem','.eJxVjEEOwiAQRe_C2pApMEBduvcMZGCIVA1NSlkZ764k3XT73vv_I_rC4qovIlDfS-gtb2EQocWJRUqvXIfgJ9XHKtNa922JciTysE3eV87v29GeDgq18l9P1iuTPGvtUHOKBiCSApgdoLOziRPa7JVTDsEY0EyKMiKwwsTgnfj-AB0hOF0:1phOJQ:EVQxrPCKaGQyxIuJwVq9zrT_wIyxuw9NxuiK3DevrMA','2023-04-12'),('wiy4za4rsi6fmojjj73spzta14pi59z1','eyJ1aWQiOjN9:1phPuH:rRHMGQVE33ViIOYjSt5DIhMXWZe5d64Qp5r0G_maodQ','2023-04-12'),('0p8vr93qy0i6ooimm0w6ankm15hpsl0z','eyJ1aWQiOjJ9:1phRM0:GFtshbUNc_J1YV-ukDh_1sDhBAvyuYYrbioTyU7GShE','2023-04-12'),('lj13a6wmfgwgurhfab0ktespeues8iyb','.eJxVjEEOwiAQRe_C2pDpwBTq0r1nIANDpGrapJSV8e5K0k23773_P6rNoq54UYHbXkKreQudKKNOLHJ65aULefLyWHVal32bo-6JPmzV91Xy-3a0p4PCtfzXw-jRJi_GODKSogWIjACTA3LjZONAY_bo0BFYC0YYOROBICUB79T3Bxx1OFw:1phS87:VEvLivQzinA_JdMNXBZ9jQ02luwk_4oaLZtrOtXfb0k','2023-04-12'),('qq0f6629ts7wldj8gg8ajvi7eiwyveh6','.eJxVjEEOwiAQRe_C2pApMEBduvcMZGCIVA1NSlkZ764k3XT73vv_I_rC4qovIlDfS-gtb2EQocWJRUqvXIfgJ9XHKtNa922JciTysE3eV87v29GeDgq18l9P1iuTPGvtUHOKBiCSApgdoLOziRPa7JVTDsEY0EyKMiKwwsTgnfj-AB0hOF0:1phXk0:IQac8z48GaK40zrckhdUtFFE0YHGL8sKBvyA8Rvnd80','2023-04-12'),('06pacrjsi00k8a80j6woxt9l1b3ariud','eyJ1aWQiOjV9:1phY5G:pFpWfmjr1_twj88lHZInLTxUTPu3yHg9VEdwIy1jKI4','2023-04-12');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(21) DEFAULT NULL,
  `seq` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations',35),('django_admin_log',36),('django_content_type',14),('auth_permission',60),('auth_group',0),('auth_user',3),('app_login',13),('app_userreg',4),('app_workersreg',7),('app_category',9),('app_useraddfeedback',7),('app_addfeedback',1),('app_booking',17),('app_workeraddfeedback',3);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-27 22:44:53
