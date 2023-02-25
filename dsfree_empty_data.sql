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
-- Table structure for table `abbreviations`
--

DROP TABLE IF EXISTS `abbreviations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abbreviations` (
  `name_full` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name_short` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abbreviations`
--

LOCK TABLES `abbreviations` WRITE;
/*!40000 ALTER TABLE `abbreviations` DISABLE KEYS */;
INSERT INTO `abbreviations` VALUES ('район','р-н','atd'),('город','г.','atd'),('посёлок городского типа','п.г.т.','atd'),('рабочий посёлок','р.п.','atd'),('курортный посёлок','к.п.','atd'),('поселковый совет','п.с.','atd'),('сельсовет','с.с.','atd'),('сомон','смн','atd'),('волость','вл.','atd'),('дачный поселковый совет','д.п.c.','atd'),('посёлок сельского типа','п.с.т.','atd'),('населённый пункт','н.п.','atd'),('посёлок при станции','п. ст.','atd'),('железнодорожная станция','ж/д ст.','atd'),('село','с.','atd'),('местечко','м.','atd'),('деревня','дер.','atd'),('слобода','сл.','atd'),('станция','ст.','atd'),('станица','ст-ца','atd'),('хутор','х.','atd'),('улус','у.','atd'),('колхоз','клх.','atd'),('совхоз','свх','atd'),('зимовье','зим.','atd'),('территория','тер.','atd'),('дачный поселок','дп.','atd'),('массив','массив','atd'),('почтовое отделение','п/о','atd'),('сельская администрация','с/а','atd'),('сельский округ','с/о','atd'),('сельское муницип. образование','с/мо','atd'),('сельское поселение','с/п','atd'),('аул','аул','atd'),('кишлак','к.','atd'),('аэропорт','а/п','atd'),('аал','аал','atd'),('арбан','арб.','atd'),('база отдыха','б/о','atd'),('блокпост','б/п','atd'),('будка','буд.','atd'),('выселок','высел.','atd'),('гидрологический пост','гидролог. пост','atd'),('дома','дома','atd'),('дорожный разъезд','дор. рзд','atd'),('железнодорожный блокпост','ж/д блокпост','atd'),('железнодорожная будка','ж/д будка','atd'),('железнодорожная ветка','ж/д ветка','atd'),('железнодорожная водокачка','ж/д вод.','atd'),('железнодорожная казарма','ж/д казарма','atd'),('железнодорожный комбинат','ж/д комбинат','atd'),('железнодорожный остановочный пункт','ж/д оп','atd'),('железнодорожная платформа','ж/д платформа','atd'),('железнодорожная площадка','ж/д площадка','atd'),('железнодорожный пост','ж/д пост','atd'),('железнодорожный путевой пост','ж/д путевой пост','atd'),('железнодорожный разъезд','ж/д рзд.','atd'),('заимка','заим.','atd'),('зимовка','зим-ка','atd'),('казарма','каз.','atd'),('карьер','кар.','atd'),('кордон','корд.','atd'),('контрольный пункт связи','кпс.','atd'),('лесной поселок','лес. п','atd'),('лесничество','лесн.','atd'),('лесоучасток','лесоуч.','atd'),('маяк','маяк','atd'),('метеостанция','метеост.','atd'),('монтёрский пункт','монтёр. пункт','atd'),('мыс','мыс','atd'),('остров','о.','atd'),('остановочная платформа','ост. платформа','atd'),('остановочный пункт','ост. пункт','atd'),('отдельный дом','отд. дом','atd'),('поселок','п.','atd'),('поселок при железнодорожной станции','п. ж/д ст.','atd'),('площадка','площ.','atd'),('погост','пог.','atd'),('подстанция','подст.','atd'),('починок','поч.','atd'),('турбаза','турб.','atd'),('усадьба','ус.','atd'),('участок','уч.','atd'),('центральная усадьба','центр. ус.','atd'),('автодорога','автодорога','atd'),('городок','городок','atd'),('жилой район','жилрайон','atd'),('квартал','кв-л','atd'),('леспромхоз','лпх.','atd'),('микрорайон','мкр.','atd'),('промышленная зона','промзона','atd'),('садовое некоммерческое товарищество','с.н.т.','atd'),('аллея','аллея','uds'),('бульвар','б-р','uds'),('магистраль','магистраль','uds'),('переулок','пер.','uds'),('площадь','пл.','uds'),('проезд','пр.','uds'),('проспект','пр-кт','uds'),('проулок','проулок','uds'),('разъезд','рзд.','uds'),('спуск','спуск','uds'),('тракт','тракт','uds'),('тупик','туп.','uds'),('улица','ул.','uds'),('шоссе','ш.','uds'),('дом','д.','tz'),('дом/корпус','д/корп','tz'),('дом/строение','дом/стр','tz'),('корпус','к.','tz'),('владение','влад.','tz'),('дом/корпус/строение','дом/корп/стр','tz'),('Стоматология общей практики','gen_stom','tls'),('Терапевтическая стоматология','ter_stom','tls'),('Ортопедическая стоматология','ortoped_stom','tls'),('Хирургическая стоматология','surg_stom','tls'),('Ортодонтия','ortodont_stom','tls'),('Детская стоматология','child_stom','tls'),('Доврачебная рентгенология','xray_stom','tls');
/*!40000 ALTER TABLE `abbreviations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `name_docum` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc_docum` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value_docum` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `limit_list`
--

DROP TABLE IF EXISTS `limit_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `limit_list` (
  `id` varchar(36) NOT NULL,
  `type` varchar(10) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `limit` date NOT NULL,
  `comment` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `limit_list`
--

LOCK TABLES `limit_list` WRITE;
/*!40000 ALTER TABLE `limit_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `limit_list` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `pacs_ent`
--

LOCK TABLES `pacs_ent` WRITE;
/*!40000 ALTER TABLE `pacs_ent` DISABLE KEYS */;
/*!40000 ALTER TABLE `pacs_ent` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `pacs_visits`
--

LOCK TABLES `pacs_visits` WRITE;
/*!40000 ALTER TABLE `pacs_visits` DISABLE KEYS */;
/*!40000 ALTER TABLE `pacs_visits` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `presets`
--

LOCK TABLES `presets` WRITE;
/*!40000 ALTER TABLE `presets` DISABLE KEYS */;
INSERT INTO `presets` VALUES ('d_max','7','Количество отображаемых дней','jur'),('tc_begin','09:00','Начало работы клиники','jur'),('tc_end','20:00','Конец работы клиники','jur'),('all_units','2','Общее количество установок','jur'),('selected_unit','1','Установка по умолчанию','jur'),('name_clinic','','Название клиники','jur'),('default_period_time_add','150','Время приема по умолчанию','jur'),('country_default','Россия','страна','loc'),('obl_default','','область, край и тд','loc'),('atd_default','','Выберете а.т.д. населенного пункта','loc'),('city_default','','название города, села, поселка и тд','loc');
/*!40000 ALTER TABLE `presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presets_mobile`
--

DROP TABLE IF EXISTS `presets_mobile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presets_mobile` (
  `name` varchar(125) NOT NULL,
  `val` text NOT NULL,
  `mark` varchar(100) NOT NULL,
  `type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presets_mobile`
--

LOCK TABLES `presets_mobile` WRITE;
/*!40000 ALTER TABLE `presets_mobile` DISABLE KEYS */;
INSERT INTO `presets_mobile` VALUES ('standart_jur_schema_color','color_txt_zagol_cal-Цвет текста заголовка календаря@#FFFFFF;color_zagol_cal-Цвет фона заголовка календаря@#808080;color_bg_in_calendar-Основной внутрикалендарный фоновый цвет@#bababa;color_calendar_base-Основной цвет фона календаря@#D6D6D6;color_dwnames_bg-Цвет фона дней недели@#99D9EA;color_txt_dwnames-Цвет букв дней недели@#000000;color_txt_calendar_day_past-Цвет цифр прошедших дней текущего месяца@#FFFFFF;color_bg_calendar_day_past-Цвет фона прошедших дней текущего месяца@#7092BE;color_bg_calendar_day_present-Цвет фона настоящих и будущих дней текущего месяца@#00A2E8;color_txt_calendar_day_present-Цвет цифр настоящих и будущих дней текущего месяца@#000000;color_bg_calendar_day_last-Цвет фона прошедших дней месяца этого года@#7092BE;color_txt_calendar_day_last-Цвет текста прошедших дней месяца этого года@#FFFFFF;color_bg_calendar_day_next-Цвет фона будущих дней этого года@#00A2E8;color_txt_calendar_day_next-Цвет фона будущих дней этого года@#000000;color_bg_calendar_day_history-Цвет фона дней прошедшего года@#7092BE;color_txt_calendar_day_history-Цвет цифр дней прошедшего года@#FFFFFF;color_bg_calendar_day_future-Цвет фона дней будущих лет@#00A2E8;color_txt_calendar_day_future-Цвет цифр дней будущих лет года@#000000;color_interface_but_norm-Цвет кнопок управления журналом в покое@#808080;color_interface_but_active-Цвет кнопок управления журналом при нажатии@#000000','Стандартная тема','schema_jur'),('chousen_schema','dark','Выбранная тема','schema_jur'),('dark_jur_schema_color','color_txt_zagol_cal-Цвет текста заголовка календаря@#ffffff;color_zagol_cal-Цвет фона заголовка календаря@#404040;color_bg_in_calendar-Основной внутрикалендарный фоновый цвет@#404040;color_calendar_base-Основной цвет фона календаря@#2f2d2d;color_dwnames_bg-Цвет фона дней недели@#727779;color_txt_dwnames-Цвет букв дней недели@#dbdbdb;color_bg_interface-Цвет фона панели управления@0000;color_txt_dw_satsun-Цвет выходных дней@#00ff1e;color_active_day_cal-Цвет выбора дня календаря@#FF0000;color_txt_calendar_day_past-Цвет цифр прошедших дней текущего месяца@#FFFFFF;color_bg_calendar_day_past-Цвет фона прошедших дней текущего месяца@#6a87af;color_bg_calendar_day_present-Цвет фона настоящих и будущих дней текущего месяца@#3683e7;color_txt_calendar_day_present-Цвет цифр настоящих и будущих дней текущего месяца@#000000;color_bg_calendar_day_last-Цвет фона прошедших дней месяца этого года@#133867;color_txt_calendar_day_last-Цвет текста прошедших дней месяца этого года@#FFFFFF;color_bg_calendar_day_next-Цвет фона будущих дней этого года@#00A2E8;color_txt_calendar_day_next-Цвет фона будущих дней этого года@#000000;color_bg_calendar_day_history-Цвет фона дней прошедшего года@#7092BE;color_txt_calendar_day_history-Цвет цифр дней прошедшего года@#FFFFFF;color_bg_calendar_day_future-Цвет фона дней будущих лет@#00A2E8;color_txt_calendar_day_future-Цвет цифр дней будущих лет года@#000000;color_interface_but_norm-Цвет кнопок управления журналом в покое@#b5b5b5;color_interface_but_active-Цвет кнопок управления журналом при нажатии@#000000','Темная тема. Цветовая схема журнала','schema_jur'),('dark_jur_schema_view','par_height_td_cal-Расстояние между ячейками календаря=стандартное расстояние между ячейками*промежуток горизонтальный#1;par_view_td_cal-Отображение элементов ячейки календаря=элементы друг под другом*фигурное расположение элементов#1;par_view_dw_short-Выбор сокращений дней недели=Пн Вт Ср*ПН ВТ СР*пн вт ср#1','Темная тема. Настройка отображения журнала','schema_jur'),('standart_editd_schema_color','color_txt_date_editd-Цвет текста заголовка даты планирования дня@#FFFFFF;color_bg_date_editd-Цвет фона заголовка даты планирования дня@#808080;color_bg_busy_pac_editd-Цвет фона занятого времени пациентом@#008080;color_txt_busy_pac_editd-Цвет текста занятого времени пациентом@#FFFFFF;color_bg_inpsurname_editd-Цвет фона поля ввода фамилии@#FFFFFF;color_txt_inpsurname_editd-Цвет текста поля ввода фамилии@#000000;color_bg_but_resetinp_editd-Цвет фона кнопки сброса фамилии@#D3D3D3;color_txt_but_resetinp_editd-Цвет текста кнопки сброса фамилии@#FF0000;color_bg_base_editd-Цвет основного фона планирования дня@#D3D3D3;color_txt_base_tip_editd-Цвет текста фоновых подсказок@#808080;color_bg_empty_pac_editd-Цвет фона свободного времени пациентом@#87CEEB;color_txt_empty_pac_editd-Цвет текста свободного времени пациентом@#000000;color_txt_doc_sym_editd-Цвет текста Врач:@#000000;color_bg_but_inactive_editd-Цвет фона кнопки Сохранить_пассив@#D3D3D3;color_txt_but_inactive_editd-Цвет текста кнопки Сохранить_пассив@#808080;color_bg_but_active_editd-Цвет фона кнопки Сохранить_актив@#008000;color_txt_but_active_editd-Цвет текста кнопки Сохранить_актив@#FFFFFF;color_bg_first_td_searched_sur_editd-Цвет фона нечетных фамилий поиска@#A9A9A9;color_txt_first_td_searched_sur_editd-Цвет текста нечетных фамилий поиска@#FFFFFF;color_bg_second_td_searched_sur_editd-Цвет фона четных фамилий поиска@#DCDCDC;color_txt_second_td_searched_sur_editd-Цвет текста четных фамилий поиска@#000000;color_bg_add_new_surname-Фон кнопки записи пациента в базу@#A9A9A9;color_txt_add_new_surname-Цвет текста кнопки записи пациента в базу@#000000','Темная тема. Цветовая схема планирования дня','schema_jur'),('dark_editd_schema_color','color_txt_date_editd-Цвет текста заголовка даты планирования дня@#ffffff;color_bg_date_editd-Цвет фона заголовка даты планирования дня@#404040;color_bg_busy_pac_editd-Цвет фона занятого времени пациентом@#3683e7;color_txt_busy_pac_editd-Цвет текста занятого времени пациентом@#FFFFFF;color_bg_inpsurname_editd-Цвет фона поля ввода фамилии@#2f2d2d;color_txt_inpsurname_editd-Цвет текста поля ввода фамилии@#FFFFFF;color_bg_but_resetinp_editd-Цвет фона кнопок активных элементов@#2f2d2d;color_txt_but_resetinp_editd-Цвет текста кнопки сброса фамилии@#DC143C;color_bg_base_editd-Цвет основного фона планирования дня@#404040;color_txt_base_tip_editd-Цвет текста фоновых подсказок@#808080;color_bg_empty_pac_editd-Цвет фона свободного времени пациентом@#133867;color_txt_empty_pac_editd-Цвет текста свободного времени пациентом@#FFFFFF;color_txt_doc_sym_editd-Цвет статичного информационного текста:@#FFFFFF;color_bg_but_inactive_editd-Цвет фона кнопки Сохранить_пассив@#404040;color_txt_but_inactive_editd-Цвет текста кнопки Сохранить_пассив@#808080;color_bg_but_active_editd-Цвет фона кнопки Сохранить_актив@#242323;color_txt_but_active_editd-Цвет текста кнопки Сохранить_актив@#469448;color_bg_first_td_searched_sur_editd-Цвет фона нечетных фамилий поиска@#008080;color_txt_first_td_searched_sur_editd-Цвет текста нечетных фамилий поиска@#FFFFFF;color_bg_second_td_searched_sur_editd-Цвет фона четных фамилий поиска@#2f2d2d;color_txt_second_td_searched_sur_editd-Цвет текста четных фамилий поиска@#FFFFFF;color_bg_add_new_surname-Фон кнопки записи пациента в базу@#242323;color_txt_add_new_surname-Цвет текста кнопки записи пациента в базу@#469448','Темная тема. Цветовая схема планирования дня','schema_jur'),('standart_jur_schema_view','par_height_td_cal-Расстояние между ячейками календаря=стандартное расстояние между ячейками*промежуток горизонтальный#1;par_view_td_cal-Отображение элементов ячейки календаря=элементы друг под другом*фигурное расположение элементов#1;par_view_dw_short-Выбор сокращений дней недели=Пн Вт Ср*ПН ВТ СР*пн вт ср#1','Темная тема. Настройка отображения журнала','schema_jur');
/*!40000 ALTER TABLE `presets_mobile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presets_worktime`
--

DROP TABLE IF EXISTS `presets_worktime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presets_worktime` (
  `id_presets_worktime` varchar(36) NOT NULL,
  `id_pers` varchar(36) NOT NULL,
  `date_begin_work` date NOT NULL,
  `count_work_days` varchar(2) NOT NULL,
  `hours_work_days` varchar(5) NOT NULL,
  `type_work` varchar(15) NOT NULL,
  `date_reg` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presets_worktime`
--

LOCK TABLES `presets_worktime` WRITE;
/*!40000 ALTER TABLE `presets_worktime` DISABLE KEYS */;
INSERT INTO `presets_worktime` VALUES ('28f249a6392c36d136051684ee4c4d2b','fedb468caa9379f6a47aa643cb244ce8','2021-06-08','6','39','alltime','2021-06-11 02:12:13');
/*!40000 ALTER TABLE `presets_worktime` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `price`
--

LOCK TABLES `price` WRITE;
/*!40000 ALTER TABLE `price` DISABLE KEYS */;
/*!40000 ALTER TABLE `price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `set_uzl_device`
--

DROP TABLE IF EXISTS `set_uzl_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `set_uzl_device` (
  `id_set_uzl_device` varchar(50) NOT NULL,
  `name_set_uzl_device` varchar(100) NOT NULL,
  `val_set_uzl_device` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `set_uzl_device`
--

LOCK TABLES `set_uzl_device` WRITE;
/*!40000 ALTER TABLE `set_uzl_device` DISABLE KEYS */;
INSERT INTO `set_uzl_device` VALUES ('1','IP адрес хост-системы\r\n',''),('4','Внейшний порт виртуальной машины, принимающий запрос по 80 порту','8080'),('7','Период опроса хост-системы для устройств Arduino (миллисекунды)','5000'),('5','Название Вашей WiFi сети',''),('6','Пароль Вашей WiFi сети',''),('2','Маска подсети Вашей WiFi сети',''),('3','IP адрес шлюза маршрутизатора','');
/*!40000 ALTER TABLE `set_uzl_device` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `sp_dss`
--

LOCK TABLES `sp_dss` WRITE;
/*!40000 ALTER TABLE `sp_dss` DISABLE KEYS */;
/*!40000 ALTER TABLE `sp_dss` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `tab_act_dw`
--

LOCK TABLES `tab_act_dw` WRITE;
/*!40000 ALTER TABLE `tab_act_dw` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_act_dw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_avail_ssetka`
--

DROP TABLE IF EXISTS `tab_avail_ssetka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_avail_ssetka` (
  `id_avail_ssetka` varchar(36) NOT NULL,
  `val` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_avail_ssetka`
--

LOCK TABLES `tab_avail_ssetka` WRITE;
/*!40000 ALTER TABLE `tab_avail_ssetka` DISABLE KEYS */;
INSERT INTO `tab_avail_ssetka` VALUES ('0','{\"simple\":{\"name\":\"\\u041f\\u0440\\u043e\\u0441\\u0442\\u0430\\u044f \\u0441\\u0435\\u0442\\u043a\\u0430\",\"padding\":{\"a\":\"15\",\"b\":\"15\",\"c\":\"15\",\"d\":\"15\"},\"params\":{\"cols\":\"2\",\"rows\":\"2\",\"spacex\":\"15\",\"spacey\":\"15\"},\"bind\":\"\"}}'),('1','{\"special\":{\"name\":\"\\u041a\\u043e\\u043c\\u043f\\u043e\\u0437\\u0438\\u0442\\u043d\\u0430\\u044f \\u0441\\u0435\\u0442\\u043a\\u0430 2\\u04452\",\"padding\":{\"a\":\"100\",\"b\":\"150\",\"c\":\"100\",\"d\":\"150\"},\"working_cells\":[\"1\",\"3\",\"5\",\"7\"],\"params\":[{\"height\":\"\",\"cells\":\"2\",\"x\":[\"65%\",\"50px\",\"\"]},{\"height\":\"30px\",\"cells\":\"0\"},{\"height\":\"\",\"cells\":\"2\",\"x\":[\"35%\",\"50px\",\"\"]}],\"bind\":\"\"}}'),('2','{\"special\":{\"name\":\"\\u041a\\u043e\\u043c\\u043f\\u043e\\u0437\\u0438\\u0442\\u043d\\u0430\\u044f \\u0441\\u0435\\u0442\\u043a\\u0430 3\\u04452\",\"padding\":{\"a\":\"100\",\"b\":\"150\",\"c\":\"100\",\"d\":\"150\"},\"working_cells\":[\"1\",\"3\",\"5\",\"7\",\"9\",\"11\"],\"params\":[{\"height\":\"\",\"cells\":\"2\",\"x\":[\"65%\",\"50px\",\"\"]},{\"height\":\"30px\",\"cells\":\"0\"},{\"height\":\"\",\"cells\":\"2\",\"x\":[\"35%\",\"50px\",\"\"]},{\"height\":\"30px\",\"cells\":\"0\"},{\"height\":\"\",\"cells\":\"2\",\"x\":[\"65%\",\"50px\",\"\"]}],\"bind\":\"\"}}');
/*!40000 ALTER TABLE `tab_avail_ssetka` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `tab_docs_cert`
--

LOCK TABLES `tab_docs_cert` WRITE;
/*!40000 ALTER TABLE `tab_docs_cert` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_docs_cert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_ext_plan_treat`
--

DROP TABLE IF EXISTS `tab_ext_plan_treat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_ext_plan_treat` (
  `id_ext_plan_treat` varchar(36) NOT NULL,
  `id_dogovor` varchar(36) NOT NULL,
  `name_ext_plan_treat` varchar(150) NOT NULL,
  `txt` text NOT NULL,
  `date_create` datetime NOT NULL,
  `date_edited` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_ext_plan_treat`
--

LOCK TABLES `tab_ext_plan_treat` WRITE;
/*!40000 ALTER TABLE `tab_ext_plan_treat` DISABLE KEYS */;
INSERT INTO `tab_ext_plan_treat` VALUES ('4de7f97aa317f2a493d13d71e9e451a2','b486464efd81b0bb5c4fb2ceadb5e18b','без имени','{\"single\":{\"46\":{\"uslugi\":{\"Постоянное восстановление контактной стенки зуба пломбой из фотополимера \\\"Harmonize\\\" при эндодонтическом лечении\":{\"count_price\":{\"84848ac41bd54e8d47771c5bbf4a39f7\":\"1000\"},\"discount\":\"0\",\"id_uslugi\":\"f90ca1b844a6dcc6899b052c9068a86a\"},\"Инструментальная и медикаментозная обработка хорошо проходимого корневого канала\":{\"count_price\":{\"8bff16cdf2f2e33b80b2663c29184df4\":\"1000\"},\"discount\":\"0\",\"id_uslugi\":\"2ded94f9eb1d857c400e197e24f7d570\"},\"Инструментальная и медикаментозная обработка плохо проходимого корневого канала\":{\"count_price\":{\"a54933c6d12f6d5d7e2c3bdf605ffdab\":\"1500\",\"be87126fc43b2a3e0be8e08fed077c15\":\"1500\"},\"discount\":\"0\",\"id_uslugi\":\"f25a76e400f02827a1e61936322cca13\"}}}}}','2021-10-24 13:56:00','2021-10-24 13:56:00'),('d6b43c58521c710ae67fe21a85039fc8','8358e64c5254552d4e34f6e367598d6f','без имени','','2022-03-16 04:02:08','2022-03-16 04:02:08');
/*!40000 ALTER TABLE `tab_ext_plan_treat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_freedays_clinic_jurs`
--

DROP TABLE IF EXISTS `tab_freedays_clinic_jurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_freedays_clinic_jurs` (
  `id_freedays_clinic_jurs` varchar(36) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_freedays_clinic_jurs`
--

LOCK TABLES `tab_freedays_clinic_jurs` WRITE;
/*!40000 ALTER TABLE `tab_freedays_clinic_jurs` DISABLE KEYS */;
INSERT INTO `tab_freedays_clinic_jurs` VALUES ('52d610e8c2fd81c0f308e99607bff9f9','2021-05-30'),('06dfc07fefa14af5af306e1b17afb51b','2021-07-09'),('50f75512a28097ceb66723363ab295b9','2021-02-12'),('e8761b5532123e919187d4ade3a5be7a','2021-01-03'),('13ac388848d5ae49fc8c9640d57c0edf','2021-01-10'),('c2222a932712669086748686cd819a26','2021-01-17'),('a09ed897fc6ddcfcaad341c9b0d0d325','2021-01-24'),('1a9e5582a7b28a41e22ff72061457848','2021-01-31'),('29f9ab14ad1c66ee07001778d634acdd','2021-03-04'),('a239c270cfe79db891160280ea40f6a6','2021-03-05'),('d95bc93a8e5f28c2c9a01eeb924715b6','2021-03-06'),('423639dc14a06e00fb5f1d622123b346','2021-02-07'),('5ad21921fc3ac4546a280364e3256dde','2021-02-14'),('31eb3f03e01af00dd5b30be9fafa57df','2021-02-21'),('0b673d1b72241e54ff42d9df2a7a4773','2021-02-28');
/*!40000 ALTER TABLE `tab_freedays_clinic_jurs` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `tab_ids_templ`
--

LOCK TABLES `tab_ids_templ` WRITE;
/*!40000 ALTER TABLE `tab_ids_templ` DISABLE KEYS */;
INSERT INTO `tab_ids_templ` VALUES ('ebb3d4ce5153d6ffa9cd95c1e940cada','exam','Стандартный','ids_must_have.docx'),('1dc813d29d1c7504ea9ba3dc7444013b','exam','Осмотр','ids_exam.docx'),('722a76b2189b72ef5b4a86b5029b0b71','terap','Гигиена','ids_hygie.docx'),('510beffc37c91a502a1b9c648aaa92b5','ortoped','Основной','ids_ortoped_base.docx'),('3a131778ee47d4ea79fa23be806e583f','terap','Кариес, эндо','ids_ter.docx');
/*!40000 ALTER TABLE `tab_ids_templ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_import_xml_calendar`
--

DROP TABLE IF EXISTS `tab_import_xml_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_import_xml_calendar` (
  `id_xml` varchar(36) NOT NULL,
  `year` varchar(4) NOT NULL,
  `xml` text NOT NULL,
  `date_downl` datetime NOT NULL,
  `act` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_import_xml_calendar`
--

LOCK TABLES `tab_import_xml_calendar` WRITE;
/*!40000 ALTER TABLE `tab_import_xml_calendar` DISABLE KEYS */;
INSERT INTO `tab_import_xml_calendar` VALUES ('ac944ab1108ccf357c4ef152ebfaddab','2021','{\"01.01\":{\"type\":\"1\",\"id\":\"Новогодние каникулы (в ред. Федерального закона от 23.04.2012 № 35-ФЗ)\",\"from\":\"\"},\"01.02\":{\"type\":\"1\",\"id\":\"Новогодние каникулы (в ред. Федерального закона от 23.04.2012 № 35-ФЗ)\",\"from\":\"\"},\"01.03\":{\"type\":\"1\",\"id\":\"Новогодние каникулы (в ред. Федерального закона от 23.04.2012 № 35-ФЗ)\",\"from\":\"\"},\"01.04\":{\"type\":\"1\",\"id\":\"Новогодние каникулы (в ред. Федерального закона от 23.04.2012 № 35-ФЗ)\",\"from\":\"\"},\"01.05\":{\"type\":\"1\",\"id\":\"Новогодние каникулы (в ред. Федерального закона от 23.04.2012 № 35-ФЗ)\",\"from\":\"\"},\"01.06\":{\"type\":\"1\",\"id\":\"Новогодние каникулы (в ред. Федерального закона от 23.04.2012 № 35-ФЗ)\",\"from\":\"\"},\"01.07\":{\"type\":\"1\",\"id\":\"Рождество Христово\",\"from\":\"\"},\"01.08\":{\"type\":\"1\",\"id\":\"Новогодние каникулы (в ред. Федерального закона от 23.04.2012 № 35-ФЗ)\",\"from\":\"\"},\"02.20\":{\"type\":\"2\",\"id\":\"\",\"from\":\"\"},\"02.22\":{\"type\":\"1\",\"id\":\"\",\"from\":\"02.20\"},\"02.23\":{\"type\":\"1\",\"id\":\"День защитника Отечества\",\"from\":\"\"},\"03.08\":{\"type\":\"1\",\"id\":\"Международный женский день\",\"from\":\"\"},\"04.30\":{\"type\":\"2\",\"id\":\"\",\"from\":\"\"},\"05.01\":{\"type\":\"1\",\"id\":\"Праздник Весны и Труда\",\"from\":\"\"},\"05.03\":{\"type\":\"1\",\"id\":\"\",\"from\":\"\"},\"05.04\":{\"type\":\"1\",\"id\":\"Нерабочие дни (Указ Президента от 23.04.2021 №242)\",\"from\":\"\"},\"05.05\":{\"type\":\"1\",\"id\":\"Нерабочие дни (Указ Президента от 23.04.2021 №242)\",\"from\":\"\"},\"05.06\":{\"type\":\"1\",\"id\":\"Нерабочие дни (Указ Президента от 23.04.2021 №242)\",\"from\":\"\"},\"05.07\":{\"type\":\"1\",\"id\":\"Нерабочие дни (Указ Президента от 23.04.2021 №242)\",\"from\":\"\"},\"05.09\":{\"type\":\"1\",\"id\":\"День Победы\",\"from\":\"\"},\"05.10\":{\"type\":\"1\",\"id\":\"\",\"from\":\"\"},\"06.11\":{\"type\":\"2\",\"id\":\"\",\"from\":\"\"},\"06.12\":{\"type\":\"1\",\"id\":\"День России\",\"from\":\"\"},\"06.14\":{\"type\":\"1\",\"id\":\"\",\"from\":\"\"},\"11.03\":{\"type\":\"2\",\"id\":\"\",\"from\":\"\"},\"11.04\":{\"type\":\"1\",\"id\":\"День народного единства\",\"from\":\"\"},\"11.05\":{\"type\":\"1\",\"id\":\"\",\"from\":\"01.02\"},\"12.31\":{\"type\":\"1\",\"id\":\"\",\"from\":\"01.03\"}}','2021-07-27 01:30:14','1');
/*!40000 ALTER TABLE `tab_import_xml_calendar` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `tab_pacs`
--

LOCK TABLES `tab_pacs` WRITE;
/*!40000 ALTER TABLE `tab_pacs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_pacs` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `tab_pacs_dogovors`
--

LOCK TABLES `tab_pacs_dogovors` WRITE;
/*!40000 ALTER TABLE `tab_pacs_dogovors` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_pacs_dogovors` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `tab_pacs_notes`
--

LOCK TABLES `tab_pacs_notes` WRITE;
/*!40000 ALTER TABLE `tab_pacs_notes` DISABLE KEYS */;
INSERT INTO `tab_pacs_notes` VALUES ('0a347427ad7bdd80e80c5bfcfc272241','33e6870d8267debf246872b95f2b565f','docs','ногу вкладки щечно сделать короче небной','Берестнев Иван ','2021-05-04','2021-05-04 14:03:21'),('21d5cc07589a8a1c6c3b65bbaf1b2c7b','33e6870d8267debf246872b95f2b565f','docs','На 27 зуб поставить кламп 18Т','Берестнев Иван ','2021-05-04','2021-05-04 18:08:27'),('859b21f6983863197492eb4bb498ba72','33e6870d8267debf246872b95f2b565f','docs','новая заметка','Берестнев Иван ','2021-05-05','2021-05-05 03:21:29');
/*!40000 ALTER TABLE `tab_pacs_notes` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `tab_permissions`
--

LOCK TABLES `tab_permissions` WRITE;
/*!40000 ALTER TABLE `tab_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_permissions` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `tab_personal`
--

LOCK TABLES `tab_personal` WRITE;
/*!40000 ALTER TABLE `tab_personal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_personal` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `tab_shedule_devices`
--

LOCK TABLES `tab_shedule_devices` WRITE;
/*!40000 ALTER TABLE `tab_shedule_devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_shedule_devices` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `tab_shedule_pers`
--

LOCK TABLES `tab_shedule_pers` WRITE;
/*!40000 ALTER TABLE `tab_shedule_pers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_shedule_pers` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `tab_ssetka_default`
--

LOCK TABLES `tab_ssetka_default` WRITE;
/*!40000 ALTER TABLE `tab_ssetka_default` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_ssetka_default` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `tab_templ_medcart`
--

LOCK TABLES `tab_templ_medcart` WRITE;
/*!40000 ALTER TABLE `tab_templ_medcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_templ_medcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_used_devices`
--

DROP TABLE IF EXISTS `tab_used_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_used_devices` (
  `id_used_device` varchar(60) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `mac` varchar(70) NOT NULL,
  `freq_perq` varchar(10) NOT NULL,
  `id_used_group_device` varchar(60) NOT NULL,
  `name_used_device` varchar(50) NOT NULL,
  `code_ard` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_used_devices`
--

LOCK TABLES `tab_used_devices` WRITE;
/*!40000 ALTER TABLE `tab_used_devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_used_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_used_group_devices`
--

DROP TABLE IF EXISTS `tab_used_group_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_used_group_devices` (
  `id_used_group_device` varchar(60) NOT NULL,
  `name_used_group_device` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_used_group_devices`
--

LOCK TABLES `tab_used_group_devices` WRITE;
/*!40000 ALTER TABLE `tab_used_group_devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_used_group_devices` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Dumping data for table `tab_used_ssetka`
--

LOCK TABLES `tab_used_ssetka` WRITE;
/*!40000 ALTER TABLE `tab_used_ssetka` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_used_ssetka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_worktime_personal`
--

DROP TABLE IF EXISTS `tab_worktime_personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_worktime_personal` (
  `id_worktime_personal` varchar(36) NOT NULL,
  `id_pers` varchar(36) NOT NULL,
  `date` date NOT NULL,
  `worktime_begin` text NOT NULL,
  `mark` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_worktime_personal`
--

LOCK TABLES `tab_worktime_personal` WRITE;
/*!40000 ALTER TABLE `tab_worktime_personal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_worktime_personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_xray_pac`
--

DROP TABLE IF EXISTS `tab_xray_pac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_xray_pac` (
  `id_xray_pac` varchar(36) NOT NULL,
  `id_visit` varchar(36) NOT NULL,
  `full_xray` varchar(100) NOT NULL,
  `shit_xray` varchar(50) NOT NULL,
  `val_xray` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_xray_pac`
--

LOCK TABLES `tab_xray_pac` WRITE;
/*!40000 ALTER TABLE `tab_xray_pac` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_xray_pac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_xray_preset`
--

DROP TABLE IF EXISTS `tab_xray_preset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_xray_preset` (
  `id_xray_preset` varchar(35) NOT NULL,
  `full_xray_preset` varchar(100) NOT NULL,
  `shot_xray_preset` varchar(50) NOT NULL,
  `val_xray_preset` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_xray_preset`
--

LOCK TABLES `tab_xray_preset` WRITE;
/*!40000 ALTER TABLE `tab_xray_preset` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_xray_preset` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-25 22:07:03
