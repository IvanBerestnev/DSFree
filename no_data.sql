-- MySQL dump 10.19  Distrib 10.3.38-MariaDB, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: dsfree
-- ------------------------------------------------------
-- Server version	10.3.38-MariaDB-0+deb10u1

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
-- Table structure for table `pacs_ent`
--

DROP TABLE IF EXISTS `pacs_ent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacs_ent` (
  `id_ent` varchar(36) NOT NULL,
  `id_pacs` varchar(36) NOT NULL,
  `begin` datetime NOT NULL,
  `end` datetime NOT NULL,
  `unit` varchar(2) NOT NULL,
  `doc` varchar(36) NOT NULL,
  `id_writed` varchar(36) NOT NULL,
  `data_writed` datetime NOT NULL,
  `mark_ent` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pacs_visits`
--

DROP TABLE IF EXISTS `pacs_visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacs_visits` (
  `id_visit` varchar(36) NOT NULL,
  `id_dogovor` varchar(36) NOT NULL,
  `date_time` datetime NOT NULL,
  `id_pac` varchar(36) NOT NULL,
  `fio_doc` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ds` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `txt_treat` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `presets`
--

DROP TABLE IF EXISTS `presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presets` (
  `set` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `val` varchar(180) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mark` varchar(180) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `price`
--

DROP TABLE IF EXISTS `price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price` (
  `id_price` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name_price` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `txt_price` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sp_dss`
--

DROP TABLE IF EXISTS `sp_dss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sp_dss` (
  `id_ds` varchar(36) NOT NULL,
  `name_ds` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_act_dw`
--

DROP TABLE IF EXISTS `tab_act_dw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_act_dw` (
  `id_act_dw` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_visit` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_price` varchar(36) NOT NULL,
  `works` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date_write` datetime NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_docs_cert`
--

DROP TABLE IF EXISTS `tab_docs_cert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_docs_cert` (
  `id_cert` varchar(36) NOT NULL,
  `id_doc` varchar(36) NOT NULL,
  `name_cert` varchar(100) NOT NULL,
  `date_cert` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_ids_templ`
--

DROP TABLE IF EXISTS `tab_ids_templ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_ids_templ` (
  `id_ids_templ` varchar(36) NOT NULL,
  `type_ids_templ` varchar(50) NOT NULL,
  `name_ids_templ` varchar(50) NOT NULL,
  `docx_ids_templ` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_pacs`
--

DROP TABLE IF EXISTS `tab_pacs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_pacs` (
  `id_pac` varchar(36) NOT NULL,
  `surname_pac` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name_pac` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `patronymic_pac` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex_pac` char(1) NOT NULL,
  `birth_pac_day` varchar(2) NOT NULL,
  `birth_pac_month` varchar(2) NOT NULL,
  `birth_pac_year` varchar(4) NOT NULL,
  `country_pac` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `obl_pac` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type_atd_pac` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city_pac` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type_street_pac` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `street_pac` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type_house_pac` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `house_pac` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `flat_pac` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(15) NOT NULL,
  `docum` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `other_lica` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `deyatel` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `writed_avtor` varchar(10) NOT NULL,
  `writed_data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_pacs_dogovors`
--

DROP TABLE IF EXISTS `tab_pacs_dogovors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_pacs_dogovors` (
  `id_pac` varchar(36) NOT NULL,
  `id_dogovor` varchar(36) NOT NULL,
  `data_dogovor` date NOT NULL,
  `data_write` datetime NOT NULL,
  `age` varchar(10) NOT NULL,
  `whopaid` varchar(50) NOT NULL,
  `author` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_pacs_notes`
--

DROP TABLE IF EXISTS `tab_pacs_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_pacs_notes` (
  `id_note` varchar(36) NOT NULL,
  `id_pac` varchar(36) NOT NULL,
  `type_note` varchar(15) NOT NULL,
  `txt_note` text NOT NULL,
  `name_doc` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `date_now` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_permissions`
--

DROP TABLE IF EXISTS `tab_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_permissions` (
  `id_permission` varchar(36) NOT NULL,
  `permissions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_personal`
--

DROP TABLE IF EXISTS `tab_personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_personal` (
  `id_pers` varchar(36) NOT NULL,
  `name_pers` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `surname_pers` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `patronymic_pers` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bg_color_gen` varchar(15) NOT NULL,
  `txt_color_gen` varchar(15) NOT NULL,
  `txt_color_pac` varchar(15) NOT NULL,
  `bg_color_pac` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_shedule_devices`
--

DROP TABLE IF EXISTS `tab_shedule_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_shedule_devices` (
  `id_used_device` varchar(60) NOT NULL,
  `shedule` text NOT NULL,
  `manual` varchar(5) NOT NULL,
  `act` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_shedule_pers`
--

DROP TABLE IF EXISTS `tab_shedule_pers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_shedule_pers` (
  `id_shedule` varchar(36) NOT NULL,
  `id_pers` varchar(36) NOT NULL,
  `date` date NOT NULL,
  `unit` varchar(3) NOT NULL,
  `time` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_ssetka_default`
--

DROP TABLE IF EXISTS `tab_ssetka_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_ssetka_default` (
  `id_ssetka_default` varchar(36) NOT NULL,
  `id_used_ssetka` varchar(36) NOT NULL,
  `number_cell` varchar(3) NOT NULL,
  `param` varchar(30) NOT NULL,
  `default_set` text NOT NULL,
  `active` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_templ_medcart`
--

DROP TABLE IF EXISTS `tab_templ_medcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_templ_medcart` (
  `id_tm` varchar(36) NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_edit` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_used_ssetka`
--

DROP TABLE IF EXISTS `tab_used_ssetka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_used_ssetka` (
  `id_used_ssetka` varchar(36) NOT NULL,
  `id_pers` varchar(36) NOT NULL,
  `vals` text NOT NULL,
  `used` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-02  4:30:54
