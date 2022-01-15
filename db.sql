-- MySQL dump 10.13  Distrib 5.7.32, for Win64 (x86_64)
--
-- Host: localhost    Database: ke_qq
-- ------------------------------------------------------
-- Server version	5.7.32-log

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
-- Table structure for table `agency_table`
--

DROP TABLE IF EXISTS `agency_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agency_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qq` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agency_table`
--

LOCK TABLES `agency_table` WRITE;
/*!40000 ALTER TABLE `agency_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `agency_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner_table`
--

DROP TABLE IF EXISTS `banner_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `href` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner_table`
--

LOCK TABLES `banner_table` WRITE;
/*!40000 ALTER TABLE `banner_table` DISABLE KEYS */;
INSERT INTO `banner_table` VALUES (3,'/banners/banner-1.png','#0d1634','http://www.zhinengshe.com/',0),(4,'/banners/banner-2.webp','#080808','http://ke.qq.com/',3),(5,'/banners/banner-3.webp','#3cbae1','http://www.taobao.com/',2),(6,'/banners/banner-4.webp','#ff6b1b','http://www.jd.com/',1);
/*!40000 ALTER TABLE `banner_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_item_table`
--

DROP TABLE IF EXISTS `category_item_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_item_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_item_table`
--

LOCK TABLES `category_item_table` WRITE;
/*!40000 ALTER TABLE `category_item_table` DISABLE KEYS */;
INSERT INTO `category_item_table` VALUES (1,1,'前端开发',0),(2,1,'Java',1),(3,1,'产品策划',2),(4,2,'云计算',0),(5,2,'云原生',1),(6,2,'区块链',2),(7,2,'物联网',3),(8,2,'5G',4),(9,2,'VR/AR',5),(10,2,'量子计算',6),(11,3,'产品策划',0),(12,3,'产品运营',1),(13,3,'新媒体营销',2),(14,3,'游戏策划',3),(15,3,'游戏运营',4),(16,3,'SEO',5),(17,3,'SEM',6),(18,3,'网络营销理论',7),(19,3,'电子竞技',8),(20,4,'平面设计',0),(21,4,'室内设计',1),(22,4,'绘画创作',2),(23,5,'电商美工',0),(24,5,'综合平面设计',1),(25,5,'摄影后期',2),(26,5,'设计软件',3),(27,6,'室内设计',0),(28,6,'建筑设计',1),(29,6,'景观设计',2),(30,6,'设计软件',3),(31,6,'其他',4);
/*!40000 ALTER TABLE `category_item_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_table`
--

DROP TABLE IF EXISTS `category_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_table`
--

LOCK TABLES `category_table` WRITE;
/*!40000 ALTER TABLE `category_table` DISABLE KEYS */;
INSERT INTO `category_table` VALUES (1,0,'IT·互联网'),(2,1,'前沿技术'),(3,1,'互联网产品'),(4,0,'设计·创作'),(5,4,'平面设计'),(6,4,'环境艺术设计');
/*!40000 ALTER TABLE `category_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_chapter_table`
--

DROP TABLE IF EXISTS `course_chapter_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_chapter_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `title` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_chapter_table`
--

LOCK TABLES `course_chapter_table` WRITE;
/*!40000 ALTER TABLE `course_chapter_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_chapter_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_comment_table`
--

DROP TABLE IF EXISTS `course_comment_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_comment_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rank` tinyint(4) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `course_time` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `avatar` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nickname` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_comment_table`
--

LOCK TABLES `course_comment_table` WRITE;
/*!40000 ALTER TABLE `course_comment_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_comment_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_download_table`
--

DROP TABLE IF EXISTS `course_download_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_download_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `agency_id` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `fileID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_download_table`
--

LOCK TABLES `course_download_table` WRITE;
/*!40000 ALTER TABLE `course_download_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_download_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_live_table`
--

DROP TABLE IF EXISTS `course_live_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_live_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `agency_id` int(11) DEFAULT NULL,
  `start_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `liveID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_live_table`
--

LOCK TABLES `course_live_table` WRITE;
/*!40000 ALTER TABLE `course_live_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_live_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_option_table`
--

DROP TABLE IF EXISTS `course_option_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_option_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `option_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_option_table`
--

LOCK TABLES `course_option_table` WRITE;
/*!40000 ALTER TABLE `course_option_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_option_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_options_table`
--

DROP TABLE IF EXISTS `course_options_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_options_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `course_category_id` int(11) DEFAULT NULL,
  `label` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `course_category_id_UNIQUE` (`course_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_options_table`
--

LOCK TABLES `course_options_table` WRITE;
/*!40000 ALTER TABLE `course_options_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_options_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_progress_table`
--

DROP TABLE IF EXISTS `course_progress_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_progress_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `course_chapter_id` int(11) DEFAULT NULL,
  `course_section_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `progress` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_progress_table`
--

LOCK TABLES `course_progress_table` WRITE;
/*!40000 ALTER TABLE `course_progress_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_progress_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_read_table`
--

DROP TABLE IF EXISTS `course_read_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_read_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `agency_id` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_read_table`
--

LOCK TABLES `course_read_table` WRITE;
/*!40000 ALTER TABLE `course_read_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_read_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_section_table`
--

DROP TABLE IF EXISTS `course_section_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_section_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `chapter_id` int(11) DEFAULT NULL,
  `title` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('video','live','read','download') COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `sort` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_section_table`
--

LOCK TABLES `course_section_table` WRITE;
/*!40000 ALTER TABLE `course_section_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_section_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_table`
--

DROP TABLE IF EXISTS `course_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `agency_id` int(11) DEFAULT NULL,
  `title` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id_1` int(11) DEFAULT NULL,
  `category_id_2` int(11) DEFAULT NULL,
  `category_id_3` int(11) DEFAULT NULL,
  `cover` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `teachers` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `qq_qun` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires` int(11) DEFAULT NULL,
  `rank` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_table`
--

LOCK TABLES `course_table` WRITE;
/*!40000 ALTER TABLE `course_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_video_table`
--

DROP TABLE IF EXISTS `course_video_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_video_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `agency_id` int(11) DEFAULT NULL,
  `videoID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `plays` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_video_table`
--

LOCK TABLES `course_video_table` WRITE;
/*!40000 ALTER TABLE `course_video_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_video_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_table`
--

DROP TABLE IF EXISTS `pay_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `serial_number` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `status` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_table`
--

LOCK TABLES `pay_table` WRITE;
/*!40000 ALTER TABLE `pay_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_record_table`
--

DROP TABLE IF EXISTS `search_record_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_record_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_record_table`
--

LOCK TABLES `search_record_table` WRITE;
/*!40000 ALTER TABLE `search_record_table` DISABLE KEYS */;
INSERT INTO `search_record_table` VALUES (1,'js',5815),(2,'jsp',1265),(3,'javascript',456),(4,'json',4157),(5,'java',3517),(6,'antd',578),(7,'mysql',579),(8,'html',78452);
/*!40000 ALTER TABLE `search_record_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_link_table`
--

DROP TABLE IF EXISTS `site_link_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_link_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `href` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_link_table`
--

LOCK TABLES `site_link_table` WRITE;
/*!40000 ALTER TABLE `site_link_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_link_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_table`
--

DROP TABLE IF EXISTS `teacher_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `agency_id` int(11) DEFAULT NULL,
  `name` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_table`
--

LOCK TABLES `teacher_table` WRITE;
/*!40000 ALTER TABLE `teacher_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic_category_table`
--

DROP TABLE IF EXISTS `topic_category_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topic_category_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic_category_table`
--

LOCK TABLES `topic_category_table` WRITE;
/*!40000 ALTER TABLE `topic_category_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `topic_category_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic_table`
--

DROP TABLE IF EXISTS `topic_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topic_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic_table`
--

LOCK TABLES `topic_table` WRITE;
/*!40000 ALTER TABLE `topic_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `topic_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_course_order_table`
--

DROP TABLE IF EXISTS `user_course_order_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_course_order_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `status` enum('created','publish','closed','refund') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_course_order_table`
--

LOCK TABLES `user_course_order_table` WRITE;
/*!40000 ALTER TABLE `user_course_order_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_course_order_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_table`
--

DROP TABLE IF EXISTS `user_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `wx_unionid` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nickname` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `currency` float DEFAULT NULL,
  `account_type` enum('wx','qq') COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked` tinyint(4) DEFAULT NULL,
  `token` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token_expires` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `wx_unionid_UNIQUE` (`wx_unionid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_table`
--

LOCK TABLES `user_table` WRITE;
/*!40000 ALTER TABLE `user_table` DISABLE KEYS */;
INSERT INTO `user_table` VALUES (5,'o_HbB52sVwQDVjKyUuKnYsFh0NY8','https://thirdwx.qlogo.cn/mmopen/vi_32/Q3auHgzwzM5eBBOJCY5rBt4pPhvMf90k5t9nbpSFibFj1Y8G2K5jhLWV3Kogia1EVxxM9p6kIQxp1Tqn68vQIRsw/132','神经蛙',0,0,'wx','','',0,'5e2de47070c544578459d05ea4ac7111',1616215366);
/*!40000 ALTER TABLE `user_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-19 15:22:55
