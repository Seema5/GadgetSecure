CREATE DATABASE  IF NOT EXISTS `gadgetsecure` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `gadgetsecure`;
-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: gadgetsecure
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `bottom_hirarchy`
--

DROP TABLE IF EXISTS `bottom_hirarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bottom_hirarchy` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `top_user_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bottom_hirarchy`
--

LOCK TABLES `bottom_hirarchy` WRITE;
/*!40000 ALTER TABLE `bottom_hirarchy` DISABLE KEYS */;
INSERT INTO `bottom_hirarchy` VALUES (8,0,'8','12','3'),(9,0,'8','13','3'),(10,0,'12','14','4'),(11,0,'13','14','4'),(12,0,'9','12','3'),(13,0,'9','13','3'),(14,0,'12','16','4'),(15,0,'13','16','4'),(16,0,'14','20','5'),(17,0,'16','20','5'),(18,0,'20','22','6'),(19,0,'22','23','7'),(20,0,'27','23','7'),(21,0,'20','27','6'),(22,0,'12','34','4'),(23,0,'2','3','3'),(24,0,'12','null','3'),(25,0,'2','null','3'),(26,0,'3','null','4'),(27,0,'4','null','5'),(28,0,'5','null','6'),(29,0,'4','5','5');
/*!40000 ALTER TABLE `bottom_hirarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_sales_head`
--

DROP TABLE IF EXISTS `company_sales_head`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_sales_head` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `pan` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `aadhar` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_sales_head`
--

LOCK TABLES `company_sales_head` WRITE;
/*!40000 ALTER TABLE `company_sales_head` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_sales_head` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_sales_head_mapping`
--

DROP TABLE IF EXISTS `company_sales_head_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_sales_head_mapping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `company_sales_head_id` varchar(255) NOT NULL,
  `regional_sales_manager_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_sales_head_mapping`
--

LOCK TABLES `company_sales_head_mapping` WRITE;
/*!40000 ALTER TABLE `company_sales_head_mapping` DISABLE KEYS */;
INSERT INTO `company_sales_head_mapping` VALUES (3,0,'24','rsm1@isrdaes.com'),(4,0,'36','rsm.vandana@isrdaes.com'),(5,0,'37','rsm.vandana@isrdaes.com');
/*!40000 ALTER TABLE `company_sales_head_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_sales_head_target`
--

DROP TABLE IF EXISTS `company_sales_head_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_sales_head_target` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `company_sales_head_id` varchar(255) NOT NULL,
  `regional_sales_manager_id` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_sales_head_target`
--

LOCK TABLES `company_sales_head_target` WRITE;
/*!40000 ALTER TABLE `company_sales_head_target` DISABLE KEYS */;
INSERT INTO `company_sales_head_target` VALUES (1,0,'2018-03-01','400','24','23','2018-03-31'),(2,0,'2018-03-01','500','36','35','2018-03-31'),(3,0,'2018-03-01','500','37','35','2018-03-31');
/*!40000 ALTER TABLE `company_sales_head_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csh_target`
--

DROP TABLE IF EXISTS `csh_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csh_target` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `target_value` varchar(255) NOT NULL,
  `company_sales_head` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `csh_id` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `rsm_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csh_target`
--

LOCK TABLES `csh_target` WRITE;
/*!40000 ALTER TABLE `csh_target` DISABLE KEYS */;
INSERT INTO `csh_target` VALUES (1,0,'2018-02-03','123','8','2018-02-09','','',''),(2,0,'2018-02-22','','8','2018-02-23','','',''),(3,0,'','','8','','','',''),(4,0,'','','8','','','',''),(5,0,'2018-02-22','11','8','2018-02-24','','',''),(6,0,'2018-02-22','11','8','2018-02-24','','',''),(7,0,'2018-02-22','11','8','2018-02-24','','',''),(8,0,'2018-02-22','11','8','2018-02-24','','',''),(9,0,'2018-02-15','11','8','2018-02-22','','',''),(10,0,'2018-02-15','11','8','2018-02-22','','',''),(11,0,'2018-02-15','11','8','2018-02-22','','',''),(12,0,'2018-02-15','11','8','2018-02-22','','',''),(13,0,'2018-02-15','11','8','2018-02-22','','',''),(14,0,'2018-02-15','11','8','2018-02-22','','',''),(15,0,'2018-02-17','11','8','2018-02-23','','','');
/*!40000 ALTER TABLE `csh_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `current_opening`
--

DROP TABLE IF EXISTS `current_opening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `current_opening` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `experiance` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `current_opening`
--

LOCK TABLES `current_opening` WRITE;
/*!40000 ALTER TABLE `current_opening` DISABLE KEYS */;
INSERT INTO `current_opening` VALUES (1,0,'Area Sales Manager/Executive/Officer ','Feb 28, 2018','Nagpur, Maharastra','Minimum 2 Years of Relavent Experience','Candidates should have minimum 2 years of experiance in relevent marketing field');
/*!40000 ALTER TABLE `current_opening` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dealer_mapping`
--

DROP TABLE IF EXISTS `dealer_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dealer_mapping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `distributor_id` varchar(255) NOT NULL,
  `delaer_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealer_mapping`
--

LOCK TABLES `dealer_mapping` WRITE;
/*!40000 ALTER TABLE `dealer_mapping` DISABLE KEYS */;
INSERT INTO `dealer_mapping` VALUES (1,0,'distributor1@isrdaes.com','26'),(2,0,'distributor1@isrdaes.com','29'),(3,0,'distributor1@isrdaes.com','30'),(4,0,'distributor1@isrdaes.com','31'),(5,0,'rsm.vandana.dis1@isrdaes.com','39'),(6,0,'rsm.vandana.dis1@isrdaes.com','40');
/*!40000 ALTER TABLE `dealer_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dealer_target`
--

DROP TABLE IF EXISTS `dealer_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dealer_target` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `distributor_id` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `dealer_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealer_target`
--

LOCK TABLES `dealer_target` WRITE;
/*!40000 ALTER TABLE `dealer_target` DISABLE KEYS */;
INSERT INTO `dealer_target` VALUES (1,0,'2018-02-01','100','distributor1@isrdaes.com','2018-02-28','dealer1@isrdaes.com'),(2,0,'2018-03-01','125','rsm.vandana.dis1@isrdaes.com','2018-03-31','rsm.vandana.dealer1@isrdaes.com'),(3,0,'2018-03-01','125','rsm.vandana.dis1@isrdaes.com','2018-03-31','rsm.vandana.dealer2@isrdaes.com');
/*!40000 ALTER TABLE `dealer_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distributor_mapping`
--

DROP TABLE IF EXISTS `distributor_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distributor_mapping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `distributor_id` varchar(255) NOT NULL,
  `company_sales_head_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distributor_mapping`
--

LOCK TABLES `distributor_mapping` WRITE;
/*!40000 ALTER TABLE `distributor_mapping` DISABLE KEYS */;
INSERT INTO `distributor_mapping` VALUES (6,0,'25','csh1@isrdaes.com'),(7,0,'33','csh1@isrdaes.com'),(8,0,'38','rsm.vandana.csh1@isrdaes.com');
/*!40000 ALTER TABLE `distributor_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distributor_target`
--

DROP TABLE IF EXISTS `distributor_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distributor_target` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `distributor_id` varchar(255) NOT NULL,
  `company_sales_head_id` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distributor_target`
--

LOCK TABLES `distributor_target` WRITE;
/*!40000 ALTER TABLE `distributor_target` DISABLE KEYS */;
INSERT INTO `distributor_target` VALUES (1,0,'2018-02-01','150','distributor1@isrdaes.com','csh1@isrdaes.com','2018-02-28'),(3,0,'2018-03-01','123','distributor2@isrdaes.com','csh1@isrdaes.com','2018-03-31'),(4,0,'2018-03-01','250','rsm.vandana.dis1@isrdaes.com','rsm.vandana.csh1@isrdaes.com','2018-03-31');
/*!40000 ALTER TABLE `distributor_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extended_warranty_gadgets`
--

DROP TABLE IF EXISTS `extended_warranty_gadgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extended_warranty_gadgets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `date_of_invoice` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `device_value` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extended_warranty_gadgets`
--

LOCK TABLES `extended_warranty_gadgets` WRITE;
/*!40000 ALTER TABLE `extended_warranty_gadgets` DISABLE KEYS */;
INSERT INTO `extended_warranty_gadgets` VALUES (9,0,'9340211032','Mi / Xiomi / Redmi','2018-03-14','Kamesh Rajak','rajakkamesh@gmail.com','10000','snapdeal');
/*!40000 ALTER TABLE `extended_warranty_gadgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feed_back`
--

DROP TABLE IF EXISTS `feed_back`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feed_back` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `review` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feed_back`
--

LOCK TABLES `feed_back` WRITE;
/*!40000 ALTER TABLE `feed_back` DISABLE KEYS */;
/*!40000 ALTER TABLE `feed_back` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gadget_plans`
--

DROP TABLE IF EXISTS `gadget_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gadget_plans` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `plan_name` varchar(255) NOT NULL,
  `plan_value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gadget_plans`
--

LOCK TABLES `gadget_plans` WRITE;
/*!40000 ALTER TABLE `gadget_plans` DISABLE KEYS */;
INSERT INTO `gadget_plans` VALUES (1,0,'safea','499'),(2,0,'safeb','599'),(3,0,'safec','999'),(4,0,'safed','1199');
/*!40000 ALTER TABLE `gadget_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gadgets`
--

DROP TABLE IF EXISTS `gadgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gadgets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `registration_date` varchar(255) NOT NULL,
  `device_type` varchar(255) NOT NULL,
  `dop` varchar(255) NOT NULL,
  `purchase_type` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `purchase_from` varchar(255) NOT NULL,
  `invoice_value` varchar(255) NOT NULL,
  `policy_number` varchar(255) NOT NULL,
  `imei_mac_serial` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `submitted_by` varchar(255) NOT NULL,
  `invoice_number` varchar(255) NOT NULL,
  `insurance_plan` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `alt_mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gadgets`
--

LOCK TABLES `gadgets` WRITE;
/*!40000 ALTER TABLE `gadgets` DISABLE KEYS */;
INSERT INTO `gadgets` VALUES (4,0,'2018-02-24','android','2018-02-02','retailshop','male','201301','Data Mation','2500','GS32324287','20:e1:17:06:16:0c','Kamesh Rajak','1991-01-10','Madhya Pradesh','3219643267','B-118, New Ashok Nagar','Mi / Xiomi / Redmi','sales1@isrdaes.com','XX656534','safeb','jabalpur','rejected','8913274932','rajakkamesh@gmail.com','Redmi4A'),(5,0,'2018-02-24','windows','2018-02-16','retailshop','male','124321','Sillicon Systems','123333','GS91927888','20:e1:17:06:16:0c','Shiva Choubey','1991-01-01','Madhya Pradesh','3243247329','302','Nokia','sales1@isrdaes.com','XX12423','safed','jabalpur','verified','0923874087','shivac@isrdaes.com','Lumia820'),(6,0,'2018-02-23','windows','2018-01-01','online','female','347983','Amazon Inc.','2300','GS15713936','20:e1:17:06:16:0c','Manmeet','0439-08-31','Madhya Pradesh','4835843589','302','Sony','sales1@isrdaes.com','XX653456','safea','jabalpur','processing','4823583450','manmeet@isrdaes.com','XTTYS'),(8,0,'2018-02-26','android','2018-02-09','retailshop','female','343253','Sillicon Systems','2465','GS69900010','20:e1:17:06:16:0c','Vandana Vishwakarma','2018-01-01','Madhya Pradesh','3243253425','320 Kripal Chowk','Mi / Xiomi / Redmi','sales1@isrdaes.com','XX34543543','safea','jabalpur','rejected','4532543534','seema.hr2488@gmail.com','4A'),(9,0,'2018-02-26','android','2018-02-09','retailshop','female','343253','Sillicon Systems','2465','GS73027851','20:e1:17:06:16:0c','Vandana Vishwakarma','2018-01-01','Madhya Pradesh','3243253425','320 Kripal Chowk','Mi / Xiomi / Redmi','sales2@isrdaes.com','XX34543543','safea','jabalpur','verified','4532543534','vandanavishwakarma2488@isrdaes.com','4A'),(10,0,'2018-02-27','android','2018-02-03','online','male','482004','Flipkart.com','56337','GS23137469','20:e1:17:06:16:0c','kamesh rajak','1991-01-10','Madhya Pradesh','3298473289','302 Kripal Chowk','OPPO','sales1@isrdaes.com','XX3246347','safed','jabalpur','verified','8347598375','rajakkamesh@gmail.com','XXYY'),(11,0,'2018-03-07','android','2018-03-05','online','male','482004','Amazon','35000','GS80902762','20:e1:17:06:16:0c','kameshrajak','1991-01-10','Madhya Pradesh','4324324324','302 kripal chowk','LG','sales1@isrdaes.com','XX565463','safed','jabalpur','processing','5043754738','rajakkamesh@gmail.com','AS2443'),(12,0,'2018-03-15','windows','2018-12-03','online','male','482004','Amazon.com','8000','GS48849038','20:e1:17:06:16:0c','Kamesh Rajak','1991-01-10','Madhya Pradesh','9340211032','B-118','Nokia','rsm.vandana.sales1@isrdaes.com','XX64537674','safec','jabalpur','processing','9958068274','rajakkamesh@gmail.com','C920');
/*!40000 ALTER TABLE `gadgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gadgets_role_involved`
--

DROP TABLE IF EXISTS `gadgets_role_involved`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gadgets_role_involved` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `regional_sales_manager` varchar(255) NOT NULL,
  `sales_team` varchar(255) NOT NULL,
  `distributor` varchar(255) NOT NULL,
  `company_sales_head` varchar(255) NOT NULL,
  `policy_number` varchar(255) NOT NULL,
  `dealer` varchar(255) NOT NULL,
  `registration_date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gadgets_role_involved`
--

LOCK TABLES `gadgets_role_involved` WRITE;
/*!40000 ALTER TABLE `gadgets_role_involved` DISABLE KEYS */;
INSERT INTO `gadgets_role_involved` VALUES (1,0,'rsm1@isrdaes.com','sales1@isrdaes.com','distributor1@isrdaes.com','csh1@isrdaes.com','GS32324287','dealer1@isrdaes.com','2018-02-24'),(2,0,'rsm1@isrdaes.com','sales1@isrdaes.com','distributor1@isrdaes.com','csh1@isrdaes.com','GS91927888','dealer1@isrdaes.com','2018-02-24'),(3,0,'rsm1@isrdaes.com','sales1@isrdaes.com','distributor1@isrdaes.com','csh1@isrdaes.com','GS15713936','dealer1@isrdaes.com','2018-02-23'),(4,0,'rsm1@isrdaes.com','sales1@isrdaes.com','distributor1@isrdaes.com','csh1@isrdaes.com','GS69900010','dealer1@isrdaes.com','2018-02-26'),(5,0,'rsm1@isrdaes.com','sales2@isrdaes.com','distributor1@isrdaes.com','csh1@isrdaes.com','GS73027851','dealer1@isrdaes.com','2018-02-26'),(6,0,'rsm1@isrdaes.com','sales1@isrdaes.com','distributor1@isrdaes.com','csh1@isrdaes.com','GS23137469','dealer1@isrdaes.com','2018-02-27'),(7,0,'rsm1@isrdaes.com','sales1@isrdaes.com','distributor1@isrdaes.com','csh1@isrdaes.com','GS80902762','dealer1@isrdaes.com','2018-03-07'),(8,0,'rsm.vandana@isrdaes.com','rsm.vandana.sales1@isrdaes.com','rsm.vandana.dis1@isrdaes.com','rsm.vandana.csh1@isrdaes.com','GS48849038','rsm.vandana.dealer1@isrdaes.com','2018-03-15');
/*!40000 ALTER TABLE `gadgets_role_involved` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_application`
--

DROP TABLE IF EXISTS `job_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_application` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `pin` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alt_mobile` varchar(255) NOT NULL,
  `aadhar` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `resume` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_application`
--

LOCK TABLES `job_application` WRITE;
/*!40000 ALTER TABLE `job_application` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reward_popup`
--

DROP TABLE IF EXISTS `reward_popup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reward_popup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `role` varchar(255) NOT NULL,
  `popup_image_path` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reward_popup`
--

LOCK TABLES `reward_popup` WRITE;
/*!40000 ALTER TABLE `reward_popup` DISABLE KEYS */;
INSERT INTO `reward_popup` VALUES (1,0,'7','Find the best mobile offers under this section which will enable to you buy high-end phones that have the high mobile price to the budget phones that suit your requirements and are priced low. Latest mobiles like the Samsung On 7, Moto G5 Plus, top-selling smartphones like Oppo F3, Lenovo K6 Power, Vivo Y66, iPhone7 and more can be found with discounts amounting to up to Rs 11,000 off. On budget phones too you get deals of up to Rs 10,000 off. Mobile accessories like power banks, mobile charger, memory cards and more can be availed at prices below Rs 399 and more.'),(2,0,'4','Find the best mobile offers under this section which will enable to you buy high-end phones that have the high mobile price to the budget phones that suit your requirements and are priced low. Latest mobiles like the Samsung On 7, Moto G5 Plus, top-selling smartphones like Oppo F3, Lenovo K6 Power, Vivo Y66, iPhone7 and more can be found with discounts amounting to up to Rs 11,000 off. On budget phones too you get deals of up to Rs 10,000 off. Mobile accessories like power banks, mobile charger, memory cards and more can be availed at prices below Rs 399 and more.'),(3,0,'2','Find the best mobile offers under this section which will enable to you buy high-end phones that have the high mobile price to the budget phones that suit your requirements and are priced low. Latest mobiles like the Samsung On 7, Moto G5 Plus, top-selling smartphones like Oppo F3, Lenovo K6 Power, Vivo Y66, iPhone7 and more can be found with discounts amounting to up to Rs 11,000 off. On budget phones too you get deals of up to Rs 10,000 off. Mobile accessories like power banks, mobile charger, memory cards and more can be availed at prices below Rs 399 and more.'),(4,0,'8','Find the best mobile offers under this section which will enable to you buy high-end phones that have the high mobile price to the budget phones that suit your requirements and are priced low. Latest mobiles like the Samsung On 7, Moto G5 Plus, top-selling smartphones like Oppo F3, Lenovo K6 Power, Vivo Y66, iPhone7 and more can be found with discounts amounting to up to Rs 11,000 off. On budget phones too you get deals of up to Rs 10,000 off. Mobile accessories like power banks, mobile charger, memory cards and more can be availed at prices below Rs 399 and more.'),(5,0,'9','Find the best mobile offers under this section which will enable to you buy high-end phones that have the high mobile price to the budget phones that suit your requirements and are priced low. Latest mobiles like the Samsung On 7, Moto G5 Plus, top-selling smartphones like Oppo F3, Lenovo K6 Power, Vivo Y66, iPhone7 and more can be found with discounts amounting to up to Rs 11,000 off. On budget phones too you get deals of up to Rs 10,000 off. Mobile accessories like power banks, mobile charger, memory cards and more can be availed at prices below Rs 399 and more.');
/*!40000 ALTER TABLE `reward_popup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rewards`
--

DROP TABLE IF EXISTS `rewards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rewards` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `enddate` varchar(255) DEFAULT NULL,
  `reward_type` varchar(255) DEFAULT NULL,
  `reward_details` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rewards`
--

LOCK TABLES `rewards` WRITE;
/*!40000 ALTER TABLE `rewards` DISABLE KEYS */;
INSERT INTO `rewards` VALUES (1,0,'2018-02-01','2018-02-12','regular','TEST REWARD'),(2,0,'2018-02-19','2018-02-24','promotional','TEST REWARD'),(3,0,'','','regular',''),(4,0,'2018-02-09','2018-02-07','regular','fdgtdfg'),(5,0,'','','0',''),(6,0,'','','0',''),(7,0,'','','0',''),(8,0,'','','0',''),(9,0,'','','0',''),(10,0,'','','0',''),(11,0,'','','0',''),(12,0,'','','0',''),(13,0,'','','0',''),(14,0,'','','0',''),(15,0,'','','0',''),(16,0,'','','0',''),(17,0,'','','0',''),(18,0,'','','0','');
/*!40000 ALTER TABLE `rewards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rsm_target`
--

DROP TABLE IF EXISTS `rsm_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rsm_target` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `regional_sales_manager` varchar(255) NOT NULL,
  `target_value` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rsm_target`
--

LOCK TABLES `rsm_target` WRITE;
/*!40000 ALTER TABLE `rsm_target` DISABLE KEYS */;
INSERT INTO `rsm_target` VALUES (1,0,'2018-03-1','rsm1@isrdaes.com','1000','2018-03-31'),(2,0,'2018-03-01','rsm2@isrdaes.com','800','2018-03-31'),(3,0,'2018-03-01','rsm.vandana@isrdaes.com','1000','2018-03-31');
/*!40000 ALTER TABLE `rsm_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_team_mapping`
--

DROP TABLE IF EXISTS `sales_team_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_team_mapping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `sales_team_id` varchar(255) NOT NULL,
  `dealer_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_team_mapping`
--

LOCK TABLES `sales_team_mapping` WRITE;
/*!40000 ALTER TABLE `sales_team_mapping` DISABLE KEYS */;
INSERT INTO `sales_team_mapping` VALUES (1,0,'27','dealer1@isrdaes.com'),(2,0,'28','dealer1@isrdaes.com'),(3,0,'41','rsm.vandana.dealer1@isrdaes.com');
/*!40000 ALTER TABLE `sales_team_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_team_target`
--

DROP TABLE IF EXISTS `sales_team_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_team_target` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `sales_team_id` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `dealer_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_team_target`
--

LOCK TABLES `sales_team_target` WRITE;
/*!40000 ALTER TABLE `sales_team_target` DISABLE KEYS */;
INSERT INTO `sales_team_target` VALUES (1,0,'2018-02-01','sales1@isrdaes.com','32','2018-02-28','dealer1@isrdaes.com'),(2,0,'2018-03-01','sales2@isrdaes.com','20','2018-03-31','dealer1@isrdaes.com'),(3,0,'2018-03-01','rsm.vandana.sales1@isrdaes.com','50','2018-03-31','rsm.vandana.dealer1@isrdaes.com');
/*!40000 ALTER TABLE `sales_team_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `state` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `targets`
--

DROP TABLE IF EXISTS `targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `targets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `remaining_target` varchar(255) NOT NULL,
  `total_target` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `targets`
--

LOCK TABLES `targets` WRITE;
/*!40000 ALTER TABLE `targets` DISABLE KEYS */;
INSERT INTO `targets` VALUES (2,0,'','8','','',''),(3,0,'','8','','',''),(4,0,'','8','','',''),(5,0,'','8','','',''),(6,0,'2018-02-01','8','11','11','2018-02-09'),(7,0,'2018-02-01','8','11','11','2018-02-09'),(8,0,'2018-02-01','8','11','11','2018-02-09'),(9,0,'2018-02-01','8','11','11','2018-02-09'),(10,0,'2018-02-01','8','1233333','1233333','2018-02-28'),(11,0,'2018-02-01','3','20','20','2018-02-10'),(12,0,'2018-02-01','3','20','20','2018-02-10'),(13,0,'2018-02-01','3','20','20','2018-02-10'),(14,0,'2018-02-01','3','20','20','2018-02-10'),(15,0,'2018-02-01','3','20','20','2018-02-10'),(16,0,'2018-02-01','3','20','20','2018-02-10'),(17,0,'2018-02-01','3','20','20','2018-02-10'),(18,0,'2018-02-01','3','20','20','2018-02-10');
/*!40000 ALTER TABLE `targets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_hirarchy`
--

DROP TABLE IF EXISTS `top_hirarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_hirarchy` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_hirarchy`
--

LOCK TABLES `top_hirarchy` WRITE;
/*!40000 ALTER TABLE `top_hirarchy` DISABLE KEYS */;
/*!40000 ALTER TABLE `top_hirarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_type`
--

DROP TABLE IF EXISTS `user_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_type`
--

LOCK TABLES `user_type` WRITE;
/*!40000 ALTER TABLE `user_type` DISABLE KEYS */;
INSERT INTO `user_type` VALUES (1,0,'Administrator'),(2,0,'Distributor'),(3,0,'SubDistributor'),(4,0,'Dealer'),(5,0,'Retailer'),(6,0,'SalesHead'),(7,0,'SalesTeam'),(8,0,'CompanySalesHead'),(9,0,'RegionalSalesManager');
/*!40000 ALTER TABLE `user_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `firm_name` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `aadhar` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gstn` varchar(255) DEFAULT NULL,
  `altmobile` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `pan` varchar(255) DEFAULT NULL,
  `user_type` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,0,'482004','ABC FIRM','Kamesh','1234567890','Madhya Pradesh','9340211032','Madan Mahal','123243456567','9958068274','jabalpur','kamesh','Rajak','1234567890','1','kameshrajak@isrdaes.com'),(23,0,'482001','RegionalSalesManager','rsm1','123123123123','Madhya Pradesh','9340211032','rsm1','RegionalSalesManager','9958068274','jabalpur','rsm1','rsm1','BQEPR6556G','9','rsm1@isrdaes.com'),(24,0,'482002','CompanySalesHead','csh1','124123213124','Madhya Pradesh','1243242342','csh1','CompanySalesHead','8768768876','jabalpur','csh1','csh1','BQEPR6457H','8','csh1@isrdaes.com'),(25,0,'482003','distributor1','distributor1','435324123123','Madhya Pradesh','9340211032','distributor1','23AAAAA1111A1Z1','9958068274','jabalpur','distributor1','distributor1','BQEPR9556F','2','distributor1@isrdaes.com'),(26,0,'482005','dealer1','dealer1','432543324324','Madhya Pradesh','8236487326','dealer1','23AAAAA1111A1Z1','3289074908','nasik','dealer1','dealer1','BQEPR5565H','4','dealer1@isrdaes.com'),(27,0,'325432','SalesTeam','sales1','324543234234','Madhya Pradesh','9238749324','sales1','SalesTeam','2840375983','jabalpur','sales1','sales1','BQEPR9556R','7','sales1@isrdaes.com'),(28,0,'435346','SalesTeam','sales2','325432542357','Madhya Pradesh','1243297497','kripal chowk','SalesTeam','9382754983','jabalpur','sales2','sales2','BQEPR6545F','7','sales2@isrdaes.com'),(29,0,'482001','ISRDAES','Kamesh','235432524353','Madhya Pradesh','9340211032','B-118','23AAAAA1111A1Z1','9958068274','jabalpur','rajakkamesh','Rajak','BQEPR7556F','4','rajakkamesh@gmail.com'),(30,0,'534543','isrdaes','shiva','321453543543','Madhya Pradesh','3297846837','b-118','23AAAAA1111A1Z1','8937264987','jabalpur','shiva','choubey','BQEPR7556F','4','shiva@gmail.com'),(31,0,'482001','SAP','Vandana','123768503496','Madhya Pradesh','9123765493','Kripal Chowk ','23AAAAA1111A1Z1','2365148306','jabalpur','v2488','Vishwakarma','ASDHF2345A','4','v2488@isrdaes.com'),(32,0,'482001','CompanySalesHead','RSMs','123654783259','Madhya Pradesh','2347589460','Kripal Chowk','CompanySalesHead','1236458937','jabalpur','rsamsab','AB','BQEPR9556F','8','rsmsab@isrdaes.com'),(33,0,'124312','distributor2 Fname','distributor2','342354354354','Madhya Pradesh','5435435435','320','23AAAAA1111A1Z1','3453454353','jabalpur','distributor2','distributor2','BQEPR7667D','2','distributor2@isrdaes.com'),(34,0,'324234','RegionalSalesManager','rsm2','312432432432','Madhya Pradesh','5435435435','32','RegionalSalesManager','4354354354','jabalpur','rsm2','rsm2','BQEPR6556Y','9','rsm2@isrdaes.com'),(35,0,'324324','RegionalSalesManager','Vandana','325435435435','Madhya Pradesh','4634363464','320 Kripal Chowk','RegionalSalesManager','3464364364','jabalpur','rsm.vandana','Vishwakarma','BQEPR6776F','9','rsm.vandana@isrdaes.com'),(36,0,'345435','CompanySalesHead','rsm.vandana.csh1','325432543543','Madhya Pradesh','5343254354','320 Kripal Chowk','CompanySalesHead','4354354354','jabalpur','rsm.vandana.csh1','rsm.vandana.csh1','BQEPR6776J','8','rsm.vandana.csh1@isrdaes.com'),(37,0,'435435','CompanySalesHead','rsm.vandana.csh2','325325325325','Madhya Pradesh','2343243243','320 kripal chowk','CompanySalesHead','3243243243','jabalpur','rsm.vandana.csh2','rsm.vandana.csh2','BQREP6565G','8','rsm.vandana.csh2@isrdaes.com'),(38,0,'436543','rsm.vandana.dis1','rsm.vandana.dis1','235325432532','Madhya Pradesh','4325435435','320 kripal chowk','23AAAAA1111A1Z1','4354354354','jabalpur','rsm.vandana.dis1','rsm.vandana.dis1','BQERP6576H','2','rsm.vandana.dis1@isrdaes.com'),(39,0,'435435','rsm.vandana.dealer1','rsm.vandana.dealer1','328746873264','Madhya Pradesh','3243254324','320 kripal chowk','23AAAAA1111A1Z1','3243243243','jabalpur','rsm.vandana.dealer1','rsm.vandana.dealer1','BQEPR6457R','4','rsm.vandana.dealer1@isrdaes.com'),(40,0,'435345','rsm.vandana.dealer2','rsm.vandana.dealer2','235432543653','Madhya Pradesh','4326543543','320 kripal chowk','23AAAAA1111A1Z1','4354354354','jabalpur','rsm.vandana.dealer2','rsm.vandana.dealer2','BQEWP6556T','4','rsm.vandana.dealer2@isrdaes.com'),(41,0,'435435','SalesTeam','rsm.vandana.sales1','432543254354','Madhya Pradesh','9798437598','320 kripal chowk','SalesTeam','4354354354','jabalpur','rsm.vandana.sales1','rsm.vandana.sales1','BQERP6457H','7','rsm.vandana.sales1@isrdaes.com');
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

-- Dump completed on 2018-03-20 11:26:48
