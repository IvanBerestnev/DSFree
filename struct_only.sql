-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июл 18 2023 г., 18:36
-- Версия сервера: 10.3.39-MariaDB-0+deb10u1
-- Версия PHP: 7.3.31-1~deb10u4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dsfree`
--

-- --------------------------------------------------------

--
-- Структура таблицы `archive_pers`
--

CREATE TABLE `archive_pers` (
  `id_pers` varchar(36) NOT NULL,
  `name_pers` varchar(40) NOT NULL,
  `surname_pers` varchar(60) NOT NULL,
  `patronymic_pers` varchar(60) NOT NULL,
  `type` varchar(10) NOT NULL,
  `bg_color_gen` varchar(10) NOT NULL,
  `txt_color_gen` varchar(10) NOT NULL,
  `txt_color_pac` varchar(10) NOT NULL,
  `bg_color_pac` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `limit_list`
--

CREATE TABLE `limit_list` (
  `id` varchar(36) NOT NULL,
  `type` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `limit` date NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `pacs_ent`
--

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

-- --------------------------------------------------------

--
-- Структура таблицы `pacs_visits`
--

CREATE TABLE `pacs_visits` (
  `id_visit` varchar(36) NOT NULL,
  `id_dogovor` varchar(36) NOT NULL,
  `date_time` datetime NOT NULL,
  `id_pac` varchar(36) NOT NULL,
  `fio_doc` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ds` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `txt_treat` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_tm` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `presets`
--

CREATE TABLE `presets` (
  `set` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `val` varchar(180) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mark` varchar(180) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `price`
--

CREATE TABLE `price` (
  `id_price` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name_price` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `txt_price` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_dss`
--

CREATE TABLE `sp_dss` (
  `id_ds` varchar(36) NOT NULL,
  `name_ds` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tab_act_dw`
--

CREATE TABLE `tab_act_dw` (
  `id_act_dw` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_visit` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_price` varchar(36) NOT NULL,
  `works` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `discont` varchar(15) NOT NULL,
  `date_write` datetime NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tab_docs_cert`
--

CREATE TABLE `tab_docs_cert` (
  `id_cert` varchar(36) NOT NULL,
  `id_doc` varchar(36) NOT NULL,
  `name_cert` varchar(100) NOT NULL,
  `date_cert` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tab_ids`
--

CREATE TABLE `tab_ids` (
  `id` varchar(36) NOT NULL,
  `type` varchar(25) NOT NULL,
  `name_file` varchar(40) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tab_misc_sets`
--

CREATE TABLE `tab_misc_sets` (
  `id` varchar(36) NOT NULL,
  `val` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tab_pacs`
--

CREATE TABLE `tab_pacs` (
  `id_pac` varchar(36) NOT NULL,
  `surname_pac` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name_pac` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `patronymic_pac` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex_pac` char(1) NOT NULL,
  `birth_pac_day` varchar(2) NOT NULL,
  `birth_pac_month` varchar(2) NOT NULL,
  `birth_pac_year` varchar(4) NOT NULL,
  `adr_reg` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `adr_live` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(15) NOT NULL,
  `docum` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `other_lica` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `deyatel` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `writed_avtor` varchar(10) NOT NULL,
  `writed_data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tab_pacs_dogovors`
--

CREATE TABLE `tab_pacs_dogovors` (
  `id_pac` varchar(36) NOT NULL,
  `id_dogovor` varchar(36) NOT NULL,
  `data_dogovor` date NOT NULL,
  `data_write` datetime NOT NULL,
  `age` varchar(10) NOT NULL,
  `whopaid` varchar(50) NOT NULL,
  `id_doc` varchar(36) NOT NULL,
  `author` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tab_permissions`
--

CREATE TABLE `tab_permissions` (
  `id_permission` varchar(36) NOT NULL,
  `permissions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tab_personal`
--

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

-- --------------------------------------------------------

--
-- Структура таблицы `tab_shedule_pers`
--

CREATE TABLE `tab_shedule_pers` (
  `id_shedule` varchar(36) NOT NULL,
  `id_pers` varchar(36) NOT NULL,
  `date` date NOT NULL,
  `unit` varchar(3) NOT NULL,
  `time` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tab_ssetka_default`
--

CREATE TABLE `tab_ssetka_default` (
  `id_ssetka_default` varchar(36) NOT NULL,
  `id_used_ssetka` varchar(36) NOT NULL,
  `number_cell` varchar(3) NOT NULL,
  `param` varchar(30) NOT NULL,
  `default_set` text NOT NULL,
  `active` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tab_templ_medcart`
--

CREATE TABLE `tab_templ_medcart` (
  `id_tm` varchar(36) NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_edit` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tab_used_ssetka`
--

CREATE TABLE `tab_used_ssetka` (
  `id_used_ssetka` varchar(36) NOT NULL,
  `id_pers` varchar(36) NOT NULL,
  `vals` text NOT NULL,
  `used` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
