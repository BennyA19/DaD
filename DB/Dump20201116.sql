-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dadfinal
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add active',7,'add_active'),(26,'Can change active',7,'change_active'),(27,'Can delete active',7,'delete_active'),(28,'Can view active',7,'view_active'),(29,'Can add language',8,'add_language'),(30,'Can change language',8,'change_language'),(31,'Can delete language',8,'delete_language'),(32,'Can view language',8,'view_language'),(33,'Can add tag',9,'add_tag'),(34,'Can change tag',9,'change_tag'),(35,'Can delete tag',9,'delete_tag'),(36,'Can view tag',9,'view_tag'),(37,'Can add word',10,'add_word'),(38,'Can change word',10,'change_word'),(39,'Can delete word',10,'delete_word'),(40,'Can view word',10,'view_word'),(41,'Can add ipa',11,'add_ipa'),(42,'Can change ipa',11,'change_ipa'),(43,'Can delete ipa',11,'delete_ipa'),(44,'Can view ipa',11,'view_ipa');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$j1uG6WMzkxHF$6q6VMfMX3gQ7OZ9tvBpQzzNlXf9VBOizHilkm0lecP8=','2020-11-10 12:56:04.846877',1,'admin','','','belo8392@th-wildau.de',1,1,'2020-11-10 10:33:29.588577');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `catalog_active`
--

LOCK TABLES `catalog_active` WRITE;
/*!40000 ALTER TABLE `catalog_active` DISABLE KEYS */;
INSERT INTO `catalog_active` VALUES (1,'active'),(2,'inactive');
/*!40000 ALTER TABLE `catalog_active` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `catalog_audio`
--

LOCK TABLES `catalog_audio` WRITE;
/*!40000 ALTER TABLE `catalog_audio` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_audio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `catalog_ipa`
--

LOCK TABLES `catalog_ipa` WRITE;
/*!40000 ALTER TABLE `catalog_ipa` DISABLE KEYS */;
INSERT INTO `catalog_ipa` VALUES (1,'ʇsǝ⊥',1,'1-1','test',1,1,'catalog/Audio/test.mp3'),(2,'T̴̺̖̋̒͂̀̈́̓͐̾̅̕e̵͍̺̝͇̋̐̏̈̓͆̕͜͝͝ͅs̸̩͎̥͓̼̭͖̀͊͊̉͝t̵͔̯́́͐͋́̃̂͒͗͘2̷̠͓͈̈́͌͒̌̈́̈̚͘͠͠',2,'1-2','21',1,2,'catalog/Audio/AudioMissing.mp3');
/*!40000 ALTER TABLE `catalog_ipa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `catalog_language`
--

LOCK TABLES `catalog_language` WRITE;
/*!40000 ALTER TABLE `catalog_language` DISABLE KEYS */;
INSERT INTO `catalog_language` VALUES (6,'eng/eng'),(5,'de/de');
/*!40000 ALTER TABLE `catalog_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `catalog_tag`
--

LOCK TABLES `catalog_tag` WRITE;
/*!40000 ALTER TABLE `catalog_tag` DISABLE KEYS */;
INSERT INTO `catalog_tag` VALUES (1,'City');
/*!40000 ALTER TABLE `catalog_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `catalog_word`
--

LOCK TABLES `catalog_word` WRITE;
/*!40000 ALTER TABLE `catalog_word` DISABLE KEYS */;
INSERT INTO `catalog_word` VALUES (1,'Test','T','2020-11-10 13:07:16.286723','n',1),(2,'Test2','T','0000-00-00 00:00:00.000000','',NULL);
/*!40000 ALTER TABLE `catalog_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `catalog_word_language`
--

LOCK TABLES `catalog_word_language` WRITE;
/*!40000 ALTER TABLE `catalog_word_language` DISABLE KEYS */;
INSERT INTO `catalog_word_language` VALUES (2,1,5),(3,1,6);
/*!40000 ALTER TABLE `catalog_word_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `catalog_word_tag`
--

LOCK TABLES `catalog_word_tag` WRITE;
/*!40000 ALTER TABLE `catalog_word_tag` DISABLE KEYS */;
INSERT INTO `catalog_word_tag` VALUES (1,1,1);
/*!40000 ALTER TABLE `catalog_word_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-11-10 10:35:34.821839','1','active',1,'[{\"added\": {}}]',7,1),(2,'2020-11-10 10:35:40.466396','2','inactive',1,'[{\"added\": {}}]',7,1),(3,'2020-11-10 10:38:05.602833','1','ʇsǝ⊥ (Test)',1,'[{\"added\": {}}]',11,1),(4,'2020-11-10 11:03:22.529418','1','ʇsǝ⊥ (Test)',2,'[{\"changed\": {\"fields\": [\"Audio\"]}}]',11,1),(5,'2020-11-10 11:04:49.843919','1','ʇsǝ⊥ (Test)',2,'[{\"changed\": {\"fields\": [\"Audio\"]}}]',11,1),(6,'2020-11-10 11:10:36.673516','1','ʇsǝ⊥ (Test)',2,'[]',11,1),(7,'2020-11-10 11:11:37.680828','2','T̴̺̖̋̒͂̀̈́̓͐̾̅̕e̵͍̺̝͇̋̐̏̈̓͆̕͜͝͝ͅs̸̩͎̥͓̼̭͖̀͊͊̉͝t̵͔̯́́͐͋́̃̂͒͗͘2̷̠͓͈̈́͌͒̌̈́̈̚͘͠͠ (Test2)',1,'[{\"added\": {}}]',11,1),(8,'2020-11-10 12:20:31.663857','4','dede',1,'[{\"added\": {}}]',8,1),(9,'2020-11-10 12:20:45.055821','4','dede',3,'',8,1),(10,'2020-11-10 12:20:45.057805','3','dede',3,'',8,1),(11,'2020-11-10 12:20:45.058797','2','de/de',3,'',8,1),(12,'2020-11-10 12:20:45.058797','1','de/de',3,'',8,1),(13,'2020-11-10 12:20:50.284117','5','de/de',1,'[{\"added\": {}}]',8,1),(14,'2020-11-10 12:21:47.669202','1','ʇsǝ⊥ (Test)',2,'[{\"changed\": {\"fields\": [\"Audio\"]}}]',11,1),(15,'2020-11-10 13:06:39.077271','1','ʇsǝ⊥ (Test)',2,'[]',11,1),(16,'2020-11-10 13:06:47.135253','1','City',1,'[{\"added\": {}}]',9,1),(17,'2020-11-10 13:07:14.002126','6','eng/eng',1,'[{\"added\": {}}]',8,1),(18,'2020-11-10 13:07:16.290195','1','Test',2,'[{\"changed\": {\"fields\": [\"Tag\", \"Language\", \"Activity\", \"Status\"]}}]',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','permission'),(3,'auth','group'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'catalog','active'),(8,'catalog','language'),(9,'catalog','tag'),(10,'catalog','word'),(11,'catalog','ipa');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-11-03 07:22:35.680356'),(2,'auth','0001_initial','2020-11-03 07:22:35.958769'),(3,'admin','0001_initial','2020-11-03 07:22:36.020273'),(4,'admin','0002_logentry_remove_auto_add','2020-11-03 07:22:36.025728'),(5,'admin','0003_logentry_add_action_flag_choices','2020-11-03 07:22:36.031681'),(6,'contenttypes','0002_remove_content_type_name','2020-11-03 07:22:36.066926'),(7,'auth','0002_alter_permission_name_max_length','2020-11-03 07:22:36.082302'),(8,'auth','0003_alter_user_email_max_length','2020-11-03 07:22:36.101173'),(9,'auth','0004_alter_user_username_opts','2020-11-03 07:22:36.107100'),(10,'auth','0005_alter_user_last_login_null','2020-11-03 07:22:36.124981'),(11,'auth','0006_require_contenttypes_0002','2020-11-03 07:22:36.126445'),(12,'auth','0007_alter_validators_add_error_messages','2020-11-03 07:22:36.131406'),(13,'auth','0008_alter_user_username_max_length','2020-11-03 07:22:36.148269'),(14,'auth','0009_alter_user_last_name_max_length','2020-11-03 07:22:36.168148'),(15,'catalog','0001_initial','2020-11-03 07:22:36.317855'),(16,'catalog','0002_auto_20200704_1529','2020-11-03 07:22:36.631695'),(17,'catalog','0003_delete_ipa','2020-11-03 07:22:36.636158'),(18,'catalog','0004_ipa','2020-11-03 07:22:36.698159'),(19,'catalog','0005_auto_20200705_1607','2020-11-03 07:22:36.717998'),(20,'catalog','0006_auto_20200705_1607','2020-11-03 07:22:36.731390'),(21,'catalog','0007_auto_20200705_1612','2020-11-03 07:22:36.743791'),(22,'catalog','0008_auto_20200705_1618','2020-11-03 07:22:36.758671'),(23,'catalog','0009_auto_20200705_1627','2020-11-03 07:22:36.771568'),(24,'catalog','0010_auto_20200705_1637','2020-11-03 07:22:36.783966'),(25,'catalog','0011_auto_20201028_1146','2020-11-03 07:22:36.796366'),(26,'catalog','0012_auto_20201028_1153','2020-11-03 07:22:36.809262'),(27,'catalog','0013_auto_20201103_0822','2020-11-03 07:22:36.821662'),(28,'sessions','0001_initial','2020-11-03 07:22:36.842494'),(29,'catalog','0014_auto_20201103_0840','2020-11-03 07:40:15.961402'),(30,'catalog','0015_auto_20201110_1121','2020-11-10 10:22:50.799142'),(31,'auth','0010_alter_group_name_max_length','2020-11-10 10:53:43.028047'),(32,'auth','0011_update_proxy_permissions','2020-11-10 10:53:43.033503'),(33,'auth','0012_alter_user_first_name_max_length','2020-11-10 10:53:43.054334'),(34,'catalog','0016_auto_20201110_1153','2020-11-10 10:53:43.100462'),(35,'catalog','0017_auto_20201110_1208','2020-11-10 11:08:55.985557');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('bdj1trl6cskkxmnzwsri5ztf6k48ifd6','ZjZlNDY5NzEyMTNmM2M4ZTQ2NDQzYjkzZjgwZmMxMDNlY2RlOGRiODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2Y3MWIyMDU2OTkxNTI3ZDQ0MmIxYzAyODBhMGY0NjA5ZTE1M2MxIn0=','2020-11-24 10:33:55.754352'),('dqbsvtdxd3nwk37fjmqo2s62gg1lg8p5','.eJxVjDsOwyAQRO9CHSG-BlKm9xnQLgvBSYQlY1dR7h5bcpFIU817M28WYVtr3Hpe4kTsyiS7_HYI6ZnbAegB7T7zNLd1mZAfCj9p5-NM-XU73b-DCr3ua6cIc04U0AdtvFZOpYROIlhLxYIDkLIYEGlP8F4OxoATQmssdvDEPl_9TDgl:1kcTBs:TM923OMY5bKh2qj1doNYDAuDh31WASzvWqgxpYQpaDU','2020-11-24 12:56:04.847869');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-16 12:15:42
