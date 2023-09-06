-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Сен 06 2023 г., 07:16
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
-- Структура таблицы `jur_pso`
--

CREATE TABLE `jur_pso` (
  `id` varchar(36) NOT NULL,
  `date` date NOT NULL,
  `method` varchar(25) NOT NULL,
  `agent` varchar(150) NOT NULL,
  `izd` varchar(150) NOT NULL,
  `amount` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `jur_stril`
--

CREATE TABLE `jur_stril` (
  `id` varchar(36) NOT NULL,
  `date` date NOT NULL,
  `obor_steril` varchar(50) NOT NULL,
  `name_izd` varchar(150) NOT NULL,
  `amount` varchar(5) NOT NULL,
  `package` varchar(20) NOT NULL,
  `begin_ster` time NOT NULL,
  `end_ster` time NOT NULL,
  `temp` varchar(10) NOT NULL,
  `press` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `jur_uf_control`
--

CREATE TABLE `jur_uf_control` (
  `id` varchar(36) NOT NULL,
  `id_uf_device` varchar(36) NOT NULL,
  `date` date NOT NULL,
  `usl_dezinf` varchar(100) NOT NULL,
  `obj_dezinf` varchar(100) NOT NULL,
  `vid_microb` varchar(100) NOT NULL,
  `exposure_mode` varchar(100) NOT NULL,
  `time_beg` time NOT NULL,
  `time_end` time NOT NULL
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
-- Структура таблицы `tab_steril_kit`
--

CREATE TABLE `tab_steril_kit` (
  `id` varchar(36) NOT NULL,
  `name_short` varchar(5) NOT NULL,
  `name_full` varchar(100) NOT NULL,
  `items` text NOT NULL,
  `pso_available` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `tab_steril_kit`
--

INSERT INTO `tab_steril_kit` (`id`, `name_short`, `name_full`, `items`, `pso_available`) VALUES
('c273bc2a07d354e1cbc1cd49e80ffee2', '1', '', 'наконечник повышающий', 'y'),
('935ff79a1d55140a1cb2514d128b8f8c', '2', '', 'наконечник угловой', 'y'),
('1e6060d2293fe99a9ef4dd9833949632', '3', '', 'наконечник ультразвуковой, ключ для насадок', 'y'),
('acb0f128277b7a5261b35f98fec65b39', '4', '', 'лоток, пинцет угловой, пинцет прямой, ручка от зеркала, ручка от зеркала, штопфер-гладилка, зонд, щипцы для клампов коффердама, стаканчик, зеркало, зеркало, рамка для коффердама', 'y'),
('160ec89426db7811c6b48a4284abc7d5', '5', '', 'стекло для замешивания материалов, шпатель для замешивания материалов, загубник апекслокатора, эндодонтическая линейка, ножницы, стаканчик, стаканчик, клин-стенд, пробойник платков', 'y'),
('2bfa0994b0035d93ff4ff647a67035e1', '6', '', 'плагер, плагер, плагер', 'y'),
('bd4822c68599af42c1cb3b51e74e938f', '7', '', 'ножницы, пакер', 'y'),
('d6556c44a254feac3f5103e2c2135899', '8', '', 'лоток, шпатель для замешивания гипса, шпатель для замешивания материалов, пинцет угловой, пинцет прямой, ручка от зеркала, ручка от зеркала, экскаватор, зонд, стаканчик, зеркало, зеркало', 'y'),
('7c533d3839f8b22eb38cd4c90c3f8981', '9', '', 'лоток, зонд, ручка для зеркала, зеркало, пинцет угловой, пинцет угловой', 'y'),
('e93284f11710a997e7efbbc7673a8205', '10', '', 'бор, бор, бор, бор, бор, бор, бор, бор, бор, бор', 'y'),
('8e415a38e39ecd5886cf6175629ad776', '11', '', 'к-файл, к-файл, к-файл, к-файл, к-файл, к-файл, gates-glidden, profile, profile, profile, спредер', 'y'),
('35c32ade025fbb317321b87441a91436', '12', '', 'кольцо для матричной системы, кольцо для матричной системы, кольцо для матричной системы', 'y'),
('592f6bdbca16928d7aa90205b1fa8e4a', '13', '', 'полировочная резинка, полировочная резинка, полировочная резинка, щетка нейлоновая', 'y'),
('b46030282c431faf15077ba6182c2b5d', '14', '', 'ультразвуковая насадка, ультразвуковая насадка, ультразвуковая насадка, ультразвуковая насадка', 'y'),
('733d8caf97f57f805373ecf985c5c5e6', '15', '', 'кламп для коффердама, кламп для коффердама, кламп для коффердама, кламп для коффердама, кламп для коффердама, кламп для коффердама', 'y'),
('fa1ebf4e2ef9209082c178beb59107d2', '16', '', 'ложка для оттисков верх, ложка для оттисков верх, ложка для оттисков верх', 'y'),
('dc3adefe5ec503cc184cfbb8fffcec21', '17', '', 'ложка для оттисков низ, ложка для оттисков низ, ложка для оттисков низ', 'y'),
('f800ff851e326b489fdae82eefd761aa', '18', '', 'пескоструй Rondoflex', 'y'),
('e9790907718b0f9ca233a74275855987', '19', '', 'cодоструй NSK', 'y'),
('2cb2227e013ca85d54948a646b8d1d42', '20', '', 'ватный валик, ватный валик, ватный валик, ватный валик, ватный валик, ватный валик', 'n'),
('21ade069f9e365c6ce841bd75d79cdc8', '21', '', 'бумажный штифт, бумажный штифт, бумажный штифт, бумажный штифт, бумажный штифт', 'n'),
('60d32d037b2a49f57bb0ea030284174c', '22', '', 'гуттаперчевый штифт, гуттаперчевый штифт, гуттаперчевый штифт, гуттаперчевый штифт, гуттаперчевый штифт', 'n');

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
