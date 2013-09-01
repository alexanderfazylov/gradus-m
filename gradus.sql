-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Авг 28 2013 г., 18:17
-- Версия сервера: 5.5.24-log
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `gradus`
--

-- --------------------------------------------------------

--
-- Структура таблицы `assignments`
--

CREATE TABLE IF NOT EXISTS `assignments` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `assignments`
--

INSERT INTO `assignments` (`itemname`, `userid`, `bizrule`, `data`) VALUES
('Authority', '1', '', 's:0:"";'),
('Authority', '65', '', 's:0:"";');

-- --------------------------------------------------------

--
-- Структура таблицы `authassignment`
--

CREATE TABLE IF NOT EXISTS `authassignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `authitem`
--

CREATE TABLE IF NOT EXISTS `authitem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `authitem`
--

INSERT INTO `authitem` (`name`, `type`, `description`, `bizrule`, `data`) VALUES
('Administrator', 2, NULL, NULL, NULL),
('Authority', 2, NULL, NULL, NULL),
('Create Post', 0, NULL, NULL, NULL),
('Create User', 0, NULL, NULL, NULL),
('Delete Post', 0, NULL, NULL, NULL),
('Delete User', 0, NULL, NULL, NULL),
('Edit Post', 0, NULL, NULL, NULL),
('Edit User', 0, NULL, NULL, NULL),
('Post Manager', 1, NULL, NULL, NULL),
('User', 2, NULL, NULL, NULL),
('User Manager', 1, NULL, NULL, NULL),
('View Post', 0, NULL, NULL, NULL),
('View User', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `authitemchild`
--

CREATE TABLE IF NOT EXISTS `authitemchild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gr_charge`
--

CREATE TABLE IF NOT EXISTS `gr_charge` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `vacancy_id` int(255) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Дамп данных таблицы `gr_charge`
--

INSERT INTO `gr_charge` (`id`, `vacancy_id`, `text`) VALUES
(11, 5, 'Высшее, либо средне-специальное газовое образование'),
(16, 6, 'Высшее, либо средне-специальное газовое образование'),
(17, 6, 'Опыт работы с импортным оборудованием'),
(18, 6, 'Документы (допуск на газовые работы)'),
(19, 6, 'Владение ПК'),
(20, 6, 'Наличие автомобиля'),
(21, 5, 'ыыыы');

-- --------------------------------------------------------

--
-- Структура таблицы `gr_contacts`
--

CREATE TABLE IF NOT EXISTS `gr_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `val` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `gr_contacts`
--

INSERT INTO `gr_contacts` (`id`, `name`, `val`) VALUES
(1, 'anschrift', 'Ул. Мусина д. 29, оф.'),
(2, 'tel_hotline', '2'),
(3, 'tel', '2222'),
(4, 'tel_handy', '333333'),
(5, 'email', 'info@gradus-m.ru'),
(6, 'full_name', 'ООО «ТЕПЛОСИНТЕЗ»'),
(7, 'coperite', '© 2013 Градус-М'),
(8, 'map', '<script type="text/javascript" charset="utf-8"\r\n                    src="//api-maps.yandex.ru/services/constructor/1.0/js/?sid=G3-MUyKrtcnjN7iGLDBYSVAie7esz5px&height=450">\r\n\r\n            </script>'),
(9, 'about_plus', '<li>профессиональные знания и опыт – десятки выполненных объектов различного уровня сложности</li>\r\n<li>высокий уровень сервиса – мы всегда работаем для клиента</li>\r\n<li>высокое качество выполненных работ</li>\r\n<li>динамичность и гибкость</li>\r\n<li>применение в работе исключительно качественных материалов оборудования (Viessman, Vaillant, Buderus, Uponor, Purmo, Far)</li>\r\n<li>гарантия на все выполненные работы 5 лет</li>'),
(10, 'about_maine', '<p>Компания ООО «Теплосинтез» Основана в 2006 году году.</p>\r\n<p>Наша компания оказывает услуги по проектированию, монтажу и дальнейшему сервисному обслуживанию систем отопления, водоснабжения и автоматизации любого уровня сложности. Кроме того мы готовы оказать консультацию по подбору оптимальных материалов и оборудованию, соответствующих вашим потребностям и возможностям, что является не меньшей проблемой при недостаточных знаниях современных технологических возможностей и рынка сантехнического оборудования.</p>'),
(11, 'about_large', '<p>Компания ООО «Теплосинтез» Основана в 2006 году году.</p>\r\n\r\n        <p>Наша компания оказывает услуги по проектированию, монтажу и дальнейшему сервисному обслуживанию систем\r\n            отопления, водоснабжения и автоматизации любого уровня сложности. Кроме того мы готовы оказать консультацию\r\n            по подбору оптимальных материалов и оборудованию, соответствующих вашим потребностям и возможностям, что\r\n            является не меньшей проблемой при недостаточных знаниях современных технологических возможностей и рынка\r\n            сантехнического оборудования.</p>\r\n\r\n        <p>Мы являемся стабильной и ответственной компанией, гарантируем качество оказываемых услуг, в минимальные сроки\r\n            и высокий уровень сервиса на заказах любой сложности. Нашу компанию отличает индивидуальный подход в каждом\r\n            конкретном случае, высокая квалификация специалистов, партнерские отношения с ведущими поставщиками\r\n            сантехнического оборудования и материалов, применение инновационных технологий.</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `gr_equipment`
--

CREATE TABLE IF NOT EXISTS `gr_equipment` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pg_id` int(10) DEFAULT '0',
  `file_id` int(10) DEFAULT '0',
  `text` text,
  `adres` varchar(255) DEFAULT NULL,
  `mini_img_id` int(255) DEFAULT NULL,
  `large_img_id` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Дамп данных таблицы `gr_equipment`
--

INSERT INTO `gr_equipment` (`id`, `name`, `pg_id`, `file_id`, `text`, `adres`, `mini_img_id`, `large_img_id`) VALUES
(6, 'asdasdasd', 2, 49, 'asda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdasasda dasdas', 'http://gradus/userAdmin/admin/info?id=6', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `gr_portfolio`
--

CREATE TABLE IF NOT EXISTS `gr_portfolio` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `file_id` int(10) DEFAULT NULL,
  `tag_id` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `gr_portfolio`
--

INSERT INTO `gr_portfolio` (`id`, `title`, `address`, `area`, `file_id`, `tag_id`) VALUES
(9, '«Жилой комплекс «Берег»', '', '120 м2, 240 м2, 350 м2', 51, 6),
(10, '«Жилой комплекс «Суворовский»', 'Город Казань, улица Петербургская', '240 м2', 27, 6),
(11, 'Дом из Клеенного бруса', 'Город Казань, поселок Троицкий', '180 м2', 28, 7),
(12, 'Магазин «NEW YORKER»', 'Город Казань, ТЦ «Мега»', '', 29, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `gr_products_group`
--

CREATE TABLE IF NOT EXISTS `gr_products_group` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `gr_products_group`
--

INSERT INTO `gr_products_group` (`id`, `name`) VALUES
(2, 'Автоматика котлов'),
(3, 'Котлы настенные'),
(4, 'Котлы напольные'),
(5, 'Радиаторы отопления'),
(6, 'Водонагреватели'),
(7, 'Теплые полы'),
(8, 'Трубы и фитинги'),
(9, 'Насосы');

-- --------------------------------------------------------

--
-- Структура таблицы `gr_requirements`
--

CREATE TABLE IF NOT EXISTS `gr_requirements` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `vacancy_id` int(255) NOT NULL,
  `text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Дамп данных таблицы `gr_requirements`
--

INSERT INTO `gr_requirements` (`id`, `vacancy_id`, `text`) VALUES
(12, 5, 'Знание ассортимента и характеристики товаров (материалы, оборудование, комплектующие и услуги), особенности монтажа, сервисного обслуживания и эксплуатации продаваемых товаров'),
(13, 5, 'Расчет и подготовка рабочих схем для монтажа инженерного оборудования с учетом требований клиента'),
(14, 5, 'Подготовка и подписание документов на монтаж инженерных коммуникаций и оборудования'),
(15, 6, 'Знание ассортимента и характеристики товаров (материалы, оборудование, комплектующие и услуги), особенности монтажа, сервисного обслуживания и эксплуатации продаваемых товаров'),
(16, 6, 'Расчет и подготовка рабочих схем для монтажа инженерного оборудования с учетом требований клиента'),
(17, 6, 'Подготовка и подписание документов на монтаж инженерных коммуникаций и оборудования');

-- --------------------------------------------------------

--
-- Структура таблицы `gr_service`
--

CREATE TABLE IF NOT EXISTS `gr_service` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pay` varchar(255) DEFAULT NULL,
  `val` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `gr_service`
--

INSERT INTO `gr_service` (`id`, `name`, `pay`, `val`) VALUES
(1, 'sssss', '1 000', '231321312312'),
(2, 'Подбор оборудования', '5 000', 'Подбор оборудования для котельной. Вы сможете в режиме on-line получить предложение по подбору котельного оборудования RIELLO.'),
(3, 'Монтаж систем отопления и водоснабжения', '8 000', 'Со знанием дела и в кратчайшие сроки мы выполним монтаж отопления загородного дома и установим отопительные приборы. Среди наших услуг – установка батарей и радиаторов разных типов.'),
(4, 'Автоматизация системы управления', '12 000', 'Одно из направлений научно-технического прогресса, использующее саморегулирующие технические средства и математические методы с целью освобождения человека от участия в процессах.'),
(5, 'Монтаж теплого пола', '5 000', 'Монтаж банных печей и воздухогрейных котлов. Монтаж и гильзование дымоходов. Мобильный консультант. Диагностика.'),
(6, 'Монтаж водоотведения', 'asd', 'asd'),
(7, 'Установка сантехники', 'asdasd', 'asd'),
(8, 'Вентиляция', 'asd', 'asdasd');

-- --------------------------------------------------------

--
-- Структура таблицы `gr_slider`
--

CREATE TABLE IF NOT EXISTS `gr_slider` (
  `order` int(255) DEFAULT NULL,
  `position` int(10) DEFAULT NULL,
  `file_id` int(255) DEFAULT NULL,
  `id` int(255) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Структура таблицы `gr_tag`
--

CREATE TABLE IF NOT EXISTS `gr_tag` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL,
  `tag` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `gr_tag`
--

INSERT INTO `gr_tag` (`id`, `text`, `tag`) VALUES
(6, 'КВАРТИРЫ', 'apartment'),
(7, 'КОТТЕДЖИ', 'cottages'),
(8, 'КОММЕРЧЕСКАЯ НЕДВИЖИМОСТЬ', 'commercial_real_estate');

-- --------------------------------------------------------

--
-- Структура таблицы `gr_uploadedfiles`
--

CREATE TABLE IF NOT EXISTS `gr_uploadedfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `orig_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ext` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `invisible` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=85 ;

--
-- Дамп данных таблицы `gr_uploadedfiles`
--

INSERT INTO `gr_uploadedfiles` (`id`, `name`, `orig_name`, `ext`, `size`, `invisible`) VALUES
(1, 'a20c29799216735edd40ebd8aba57cb9.jpg', 'WP_000140.jpg', 'jpg', '1421642', NULL),
(2, 'ef4091c8b1d006990187df63a1d017a8.jpg', 'WP_000141.jpg', 'jpg', '1638061', NULL),
(3, '9f75958f7d081d1c5d46400c3b45b5f3.jpg', 'WP_000141.jpg', 'jpg', '1638061', NULL),
(4, 'e764140efa637b16e1bfd89e966f67b7.jpg', 'WP_000161.jpg', 'jpg', '1830959', NULL),
(5, 'e75cab89f2da69bd784e03c9d30b979a.jpg', 'WP_000160.jpg', 'jpg', '1853769', NULL),
(6, '5961c94256aa963d3c0fa10ce4e2a755.jpg', 'WP_000160.jpg', 'jpg', '1853769', NULL),
(7, '0c93caa5c3210fc9c7396b5f521337aa.jpg', 'WP_000161.jpg', 'jpg', '1830959', NULL),
(8, '855331e557d2a2fd441b4d97e116ad60.jpg', 'WP_000161.jpg', 'jpg', '1830959', NULL),
(9, '85c6c2d5c1181f9cf1df8a919266c991.jpg', 'banner1.jpg', 'jpg', '221571', NULL),
(10, '35fe0f19615661e99c5fc509c7f8d4c3.jpg', 'WP_000141.jpg', 'jpg', '1638061', NULL),
(11, '2f058c9f188d2b7b50619660c9481255.jpg', '26_6459_oboi_daft_punk_2560x1600.jpg', 'jpg', '242910', NULL),
(12, '93817d8d0fee8396b43d6ef48de5ef1c.jpg', '45730-1680x1050.jpg', 'jpg', '311970', NULL),
(13, 'b2604ee186cf6d5f5c34515164be8610.jpg', '45730-1680x1050.jpg', 'jpg', '311970', NULL),
(14, '40e945b8e3c62f11d33be2f1f80a8d68.jpg', '111374-1680x1050.jpg', 'jpg', '277590', NULL),
(15, '80fe8c0ccb930a6c46be6d13fd0c1891.jpg', '111374-1680x1050.jpg', 'jpg', '277590', NULL),
(16, 'c830228cdff79e55daa622c2e5842df5.jpg', '45730-1680x1050.jpg', 'jpg', '311970', NULL),
(17, 'bed05b774cf27abe6c4e55dc90caec21.jpg', '2122399786_9d73a5d7c8_b.jpg', 'jpg', '167571', NULL),
(18, '9d98c830a2e396328e0fb78c0ade73a3.jpg', '3349230497_6ec82c994f_o.jpg', 'jpg', '694861', NULL),
(19, 'd9891dd3f613a4d9ac2c856646061f09.jpg', '45730-1680x1050.jpg', 'jpg', '311970', NULL),
(20, '8f027851ba721e7841157a743c9fa798.jpg', '2122399786_9d73a5d7c8_b.jpg', 'jpg', '167571', NULL),
(21, 'aa24d66ebf4bd9be22a160c0b36855b8.jpg', '2122399786_9d73a5d7c8_b.jpg', 'jpg', '167571', NULL),
(22, '6a1ee057ddf6d3979191b2207a265338.jpg', 'Tron-Legacy-Wallpaper-tron-Daft-punk-photo.jpg', 'jpg', '599779', NULL),
(23, '11853f835049b5b43bade39b1dd902ee.jpg', 'WP_000153.jpg', 'jpg', '1958466', NULL),
(24, '641be12562d633618d8bafe44ff0de09.jpg', 'WP_000144.jpg', 'jpg', '1541795', NULL),
(25, '3b696953f74e9b9dd47da19b7c4bf84f.jpg', 'WP_000150.jpg', 'jpg', '1507932', NULL),
(26, '4e398d37838e3858ceb36c5b8d0dadf6.jpg', '105wq5d.jpg', 'jpg', '143072', NULL),
(27, 'd753e65a3f24bd3260160e19b9b57d1f.jpg', '45730-1680x1050.jpg', 'jpg', '311970', NULL),
(28, '4403bcc80581c3afbbffbaeea0db2799.JPG', 'CSC_0031.JPG', 'JPG', '1597076', NULL),
(29, '0a520538d24465db9662318ce3af8bb0.jpg', '5077329402_a5fb4f328b_o.jpg', 'jpg', '2730746', NULL),
(30, '985ffad5553ee2da1f7a2734dbb911ac.jpg', 'WP_000148.jpg', 'jpg', '1307687', NULL),
(31, 'c46947febb8c9acadf098539ec870c2e.png', 'equipment1.png', 'png', '24329', NULL),
(32, 'ac53eeb910d793eb990b9285488420b2.png', 'equipment2.png', 'png', '26392', NULL),
(33, 'fb921bbb866f116e4e0f4b669e88ac4c.png', 'equipment3.png', 'png', '19622', NULL),
(34, 'e01aa8ffbb0a567d4fc6af236d0aefb8.png', 'equipment4.png', 'png', '22201', NULL),
(35, '2e9d5fea002e8c962323d5c0b9d54e53.png', 'equipment6.png', 'png', '11231', NULL),
(36, 'bf60dbd4a970e71a9cbcfd6e56d8e6c9.png', 'equipment7.png', 'png', '18407', NULL),
(37, 'b1275b82e18cb3295229edecceb0739b.png', 'equipment8.png', 'png', '8066', NULL),
(38, '0694dc9e22f9103d57badd8822515968.png', 'equipment9.png', 'png', '23447', NULL),
(39, 'b17b87a5f454c9dc8001143139493a61.png', 'equipment12.png', 'png', '23314', NULL),
(40, 'd43222246959da2fd47aa274a6ed6f9e.png', 'equipment14.png', 'png', '23568', NULL),
(41, 'df0618795e169ca3af84041a1e0bc3db.png', 'equipment18.png', 'png', '23568', NULL),
(42, '8812a384cce7ab9953f38ca917f02a43.png', 'equipment16.png', 'png', '9985', NULL),
(43, '7954ff123c4ca5b90031e3fa95806ce0.png', 'equipment24.png', 'png', '27885', NULL),
(44, '0fe76c599b6008cb3dd8e074b6e1e0fd.png', 'equipment23.png', 'png', '14549', NULL),
(45, 'be3409ac0714fcb05dce750b3a9f7ebe.png', 'equipment22.png', 'png', '14897', NULL),
(46, '269d99471decbc87843d4f5c6891b931.png', 'equipment21.png', 'png', '11957', NULL),
(47, 'aa30cf673e6578ad65cece5990b79625.png', 'equipment20.png', 'png', '43783', NULL),
(48, '97f58739e0b56632ed2570818841a9e4.png', 'equipment19.png', 'png', '47589', NULL),
(49, '5efa8ffa60b51453065036c80ee148dd.jpg', 'Daft-Punk-HD-Wallpapers.jpg', 'jpg', '1602639', NULL),
(50, '77eab68503a31d0f4288a7b9c2a98fe0.jpeg', '393438467.jpeg', 'jpeg', '12920', NULL),
(51, '772ba029c5090bccbf935e8621ac3b62.jpg', 'Daft-Punk-HD-Wallpapers.jpg', 'jpg', '1602639', NULL),
(52, 'f70d518caf8eafe43ad8afa52631f951.jpg', 'Daft-Punk-HD-Wallpapers.jpg', 'jpg', '1602639', NULL),
(53, '9631d6125452c207e6478e50dea9e9bb.jpg', 'Daft-Punk-HD-Wallpapers.jpg', 'jpg', '1602639', NULL),
(54, '8d835ceaa7b3d8c697a4d53b0e80d9e3.jpg', 'Daft-Punk-HD-Wallpapers.jpg', 'jpg', '1602639', NULL),
(55, 'd2aa598be30f7c99cbcb038d29cf7225.jpg', 'Daft-Punk-HD-Wallpapers.jpg', 'jpg', '1602639', NULL),
(56, 'bd1f0e9cb1265f0dfbc461536b4f79b2.jpg', 'Daft-Punk-HD-Wallpapers.jpg', 'jpg', '1602639', NULL),
(57, '4a9afdcaed58b5d46399813a33bde841.jpg', 'Daft-Punk-HD-Wallpapers.jpg', 'jpg', '1602639', NULL),
(58, '945e0d31895747e4dbbbe9f8f5f4c1a7.jpeg', '393438467.jpeg', 'jpeg', '12920', NULL),
(59, '10920ccfc427a5fadb1cdc135f333eba.jpg', 'Daft-Punk-HD-Wallpapers.jpg', 'jpg', '1602639', NULL),
(60, 'c3433536a03406705cd3d5d43195b845.jpeg', '393438467.jpeg', 'jpeg', '12920', NULL),
(61, 'fa306b4dedacfbfff525c48c59d5f15b.jpg', 'Daft-Punk-HD-Wallpapers.jpg', 'jpg', '1602639', NULL),
(62, '15c32444f8a53e02447107d74f6725a3.jpg', 'Daft-Punk-HD-Wallpapers.jpg', 'jpg', '1602639', NULL),
(63, 'b93c810b26ad71e5ae7b6baeaf20ddd1.jpg', 'Daft-Punk-HD-Wallpapers.jpg', 'jpg', '1602639', NULL),
(64, '760d5bcd2515154c68028d4ae0c93206.jpg', 'Daft-Punk-HD-Wallpapers.jpg', 'jpg', '1602639', NULL),
(65, '0e99e08b289638ad62f2408693b54e03.jpg', 'Daft-Punk-HD-Wallpapers.jpg', 'jpg', '1602639', NULL),
(66, 'a0d085c4f7a71222896c9c183db1d552.jpg', 'Daft-Punk-HD-Wallpapers.jpg', 'jpg', '1602639', NULL),
(67, 'c8586cc9fbca79ad5173c47808cd15f5.jpg', 'Chrysanthemum.jpg', 'jpg', '879394', NULL),
(68, 'dc544bfc8de681085ccc71f0a818c198.jpg', 'Tulips.jpg', 'jpg', '620888', NULL),
(69, '237df2e89ac44d3b3446529a3ab70e78.jpg', 'banner1.jpg', 'jpg', '221571', NULL),
(70, 'f4eaea4f48bd7d3b201e59c7d0084158.jpg', 'banner2.jpg', 'jpg', '365631', NULL),
(71, '184ecf351815cb8826de542ed919340a.jpg', 'banner3.jpg', 'jpg', '240240', NULL),
(72, '7788f0517f3dad460720c33bb3fba942.jpg', 'banner4.jpg', 'jpg', '192302', NULL),
(73, '027d0f20936148d8f29292479989c0f1.jpg', 'banner5.jpg', 'jpg', '275272', NULL),
(74, '1cbc1152a23eb6fd366d474347bd50a2.jpg', 'banner2.jpg', 'jpg', '365631', NULL),
(75, '508db95e70424f81714671b648b17a03.jpg', 'banner1.jpg', 'jpg', '221571', NULL),
(76, 'c69fe1a35f613ef4fbbf9d7a7eaca59d.jpg', 'banner3.jpg', 'jpg', '240240', NULL),
(77, 'e31de4838c8c3c71224d7c1ceb057a70.jpg', 'banner5.jpg', 'jpg', '275272', NULL),
(78, '3463274af7f7333ede39ce4ca4884ab0.jpg', 'banner2.jpg', 'jpg', '365631', NULL),
(79, 'a64a148e494fd8c63e298ceeb34673da.jpg', 'banner5.jpg', 'jpg', '275272', NULL),
(80, '84f4763aee8834d5f7478719af356070.jpg', 'banner2.jpg', 'jpg', '365631', NULL),
(81, '4ddee8ef1bee01eaf1e5e6e0f4029c8b.jpg', 'banner5.jpg', 'jpg', '275272', NULL),
(82, '408ab6ccf294bac2fc667f68233cff00.jpg', 'banner2.jpg', 'jpg', '365631', NULL),
(83, 'bfd62aca775bfa734db52d44dc187514.jpg', 'banner3.jpg', 'jpg', '240240', NULL),
(84, '19c2c1ee5d81df8666ae7d7f5e0b6c37.jpg', 'banner2.jpg', 'jpg', '365631', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `gr_user`
--

CREATE TABLE IF NOT EXISTS `gr_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) DEFAULT NULL,
  `username` varchar(128) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=132 ;

--
-- Дамп данных таблицы `gr_user`
--

INSERT INTO `gr_user` (`id`, `password`, `username`, `active`) VALUES
(1, '21232f297a57a5a743894a0e4a801fc3', 'admin', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `gr_vacancy`
--

CREATE TABLE IF NOT EXISTS `gr_vacancy` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `order` int(255) DEFAULT NULL,
  `position` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `gr_vacancy`
--

INSERT INTO `gr_vacancy` (`id`, `title`, `order`, `position`) VALUES
(5, ' Инженер по обслуживанию импортного газового оборудования', 2, 2),
(6, 'Монтажник систем отопления, водоснабжения, насосов , котлов и водонагревателей', 1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `itemchildren`
--

CREATE TABLE IF NOT EXISTS `itemchildren` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `itemchildren`
--

INSERT INTO `itemchildren` (`parent`, `child`) VALUES
('User Manager', 'CrudAdmin'),
('User Manager', 'CrudCreate'),
('User Manager', 'CrudDelete'),
('User Manager', 'CrudIndex'),
('User Manager', 'CrudUpdate'),
('User Manager', 'CrudView'),
('User Manager', 'srbac@AuthitemAssign'),
('User Manager', 'srbac@AuthitemAssignments'),
('User Manager', 'srbac@AuthitemAuto'),
('User Manager', 'srbac@AuthitemAutocomplete'),
('User Manager', 'srbac@AuthitemAutoCreateItems'),
('User Manager', 'srbac@AuthitemAutoDeleteItems'),
('User Manager', 'srbac@AuthitemClearObsolete'),
('User Manager', 'srbac@AuthitemConfirm'),
('User Manager', 'srbac@AuthitemCreate'),
('User Manager', 'srbac@AuthitemDelete'),
('User Manager', 'srbac@AuthitemDeleteObsolete'),
('User Manager', 'srbac@AuthitemEditAllowed'),
('User Manager', 'srbac@AuthitemFrontPage'),
('User Manager', 'srbac@AuthitemGetCleverOpers'),
('User Manager', 'srbac@AuthitemGetOpers'),
('User Manager', 'srbac@AuthitemGetRoles'),
('User Manager', 'srbac@AuthitemGetTasks'),
('User Manager', 'srbac@AuthitemGetUsers'),
('User Manager', 'srbac@AuthitemInstall'),
('User Manager', 'srbac@AuthitemList'),
('User Manager', 'srbac@AuthitemManage'),
('User Manager', 'srbac@AuthitemSaveAllowed'),
('User Manager', 'srbac@AuthitemScan'),
('User Manager', 'srbac@AuthitemShow'),
('User Manager', 'srbac@AuthitemShowAssignments'),
('User Manager', 'srbac@AuthitemUpdate'),
('Authority', 'User Manager'),
('User Manager', 'userAdmin@AdminAbout'),
('User Manager', 'userAdmin@AdminAddCharge'),
('User Manager', 'userAdmin@AdminAddRequirements'),
('User Manager', 'userAdmin@AdminContacts'),
('User Manager', 'userAdmin@AdminCreateSleder'),
('User Manager', 'userAdmin@AdminCreateVacancy'),
('User Manager', 'userAdmin@AdminDeleteCharge'),
('User Manager', 'userAdmin@AdminDeleteEquipment'),
('User Manager', 'userAdmin@AdminDeleteFileEquipment'),
('User Manager', 'userAdmin@AdminDeleteFilePortfolio'),
('User Manager', 'userAdmin@AdminDeleteLargeImg'),
('User Manager', 'userAdmin@AdminDeleteMiniImg'),
('User Manager', 'userAdmin@AdminDeletePg'),
('User Manager', 'userAdmin@AdminDeletePortfolio'),
('User Manager', 'userAdmin@AdminDeleteRequirements'),
('User Manager', 'userAdmin@AdminDeleteSlide'),
('User Manager', 'userAdmin@AdminDeleteTag'),
('User Manager', 'userAdmin@AdminDeleteVacancy'),
('User Manager', 'userAdmin@AdminDownloadFile'),
('User Manager', 'userAdmin@AdminDownloadImg'),
('User Manager', 'userAdmin@AdminDownloadLargeImgId'),
('User Manager', 'userAdmin@AdminDownloadMiniImgId'),
('User Manager', 'userAdmin@AdminIndex'),
('User Manager', 'userAdmin@AdminInfo'),
('User Manager', 'userAdmin@AdminMain'),
('User Manager', 'userAdmin@AdminPositionSlide'),
('User Manager', 'userAdmin@AdminPositionVacancy'),
('User Manager', 'userAdmin@AdminProducts'),
('User Manager', 'userAdmin@AdminSaveEqText'),
('User Manager', 'userAdmin@AdminSaveEquipment'),
('User Manager', 'userAdmin@AdminSavePortfolio'),
('User Manager', 'userAdmin@AdminSaveProductsGroup'),
('User Manager', 'userAdmin@AdminSaveSledePosition'),
('User Manager', 'userAdmin@AdminSaveTag'),
('User Manager', 'userAdmin@AdminsContacts'),
('User Manager', 'userAdmin@AdminService'),
('User Manager', 'userAdmin@AdminUpdateAboutMaine'),
('User Manager', 'userAdmin@AdminUpdateLarge'),
('User Manager', 'userAdmin@AdminUpdatePlusMaine'),
('User Manager', 'userAdmin@AdminUpdatePortfolio'),
('User Manager', 'userAdmin@AdminUpdateService'),
('User Manager', 'userAdmin@AdminUpdateVacancy'),
('User Manager', 'userAdmin@AdminWorks'),
('User Manager', 'View Post'),
('User Manager', 'View User');

-- --------------------------------------------------------

--
-- Структура таблицы `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `items`
--

INSERT INTO `items` (`name`, `type`, `description`, `bizrule`, `data`) VALUES
('Authority', 2, NULL, NULL, NULL),
('CrudAdmin', 0, NULL, NULL, 'N;'),
('CrudCreate', 0, NULL, NULL, 'N;'),
('CrudDelete', 0, NULL, NULL, 'N;'),
('CrudIndex', 0, NULL, NULL, 'N;'),
('CrudUpdate', 0, NULL, NULL, 'N;'),
('CrudView', 0, NULL, NULL, 'N;'),
('srbac@AuthitemAssign', 0, NULL, NULL, 'N;'),
('srbac@AuthitemAssignments', 0, NULL, NULL, 'N;'),
('srbac@AuthitemAuto', 0, NULL, NULL, 'N;'),
('srbac@AuthitemAutocomplete', 0, NULL, NULL, 'N;'),
('srbac@AuthitemAutoCreateItems', 0, NULL, NULL, 'N;'),
('srbac@AuthitemAutoDeleteItems', 0, NULL, NULL, 'N;'),
('srbac@AuthitemClearObsolete', 0, NULL, NULL, 'N;'),
('srbac@AuthitemConfirm', 0, NULL, NULL, 'N;'),
('srbac@AuthitemCreate', 0, NULL, NULL, 'N;'),
('srbac@AuthitemDelete', 0, NULL, NULL, 'N;'),
('srbac@AuthitemDeleteObsolete', 0, NULL, NULL, 'N;'),
('srbac@AuthitemEditAllowed', 0, NULL, NULL, 'N;'),
('srbac@AuthitemFrontPage', 0, NULL, NULL, 'N;'),
('srbac@AuthitemGetCleverOpers', 0, NULL, NULL, 'N;'),
('srbac@AuthitemGetOpers', 0, NULL, NULL, 'N;'),
('srbac@AuthitemGetRoles', 0, NULL, NULL, 'N;'),
('srbac@AuthitemGetTasks', 0, NULL, NULL, 'N;'),
('srbac@AuthitemGetUsers', 0, NULL, NULL, 'N;'),
('srbac@AuthitemInstall', 0, NULL, NULL, 'N;'),
('srbac@AuthitemList', 0, NULL, NULL, 'N;'),
('srbac@AuthitemManage', 0, NULL, NULL, 'N;'),
('srbac@AuthitemSaveAllowed', 0, NULL, NULL, 'N;'),
('srbac@AuthitemScan', 0, NULL, NULL, 'N;'),
('srbac@AuthitemShow', 0, NULL, NULL, 'N;'),
('srbac@AuthitemShowAssignments', 0, NULL, NULL, 'N;'),
('srbac@AuthitemUpdate', 0, NULL, NULL, 'N;'),
('User Manager', 1, NULL, NULL, NULL),
('userAdmin@AdminAbout', 0, NULL, NULL, 'N;'),
('userAdmin@AdminAddCharge', 0, NULL, NULL, 'N;'),
('userAdmin@AdminAddRequirements', 0, NULL, NULL, 'N;'),
('userAdmin@AdminContacts', 0, NULL, NULL, 'N;'),
('userAdmin@AdminCreateSleder', 0, NULL, NULL, 'N;'),
('userAdmin@AdminCreateVacancy', 0, NULL, NULL, 'N;'),
('userAdmin@AdminDeleteCharge', 0, NULL, NULL, 'N;'),
('userAdmin@AdminDeleteEquipment', 0, NULL, NULL, 'N;'),
('userAdmin@AdminDeleteFileEquipment', 0, NULL, NULL, 'N;'),
('userAdmin@AdminDeleteFilePortfolio', 0, NULL, NULL, 'N;'),
('userAdmin@AdminDeleteLargeImg', 0, NULL, NULL, 'N;'),
('userAdmin@AdminDeleteMiniImg', 0, NULL, NULL, 'N;'),
('userAdmin@AdminDeletePg', 0, NULL, NULL, 'N;'),
('userAdmin@AdminDeletePortfolio', 0, NULL, NULL, 'N;'),
('userAdmin@AdminDeleteRequirements', 0, NULL, NULL, 'N;'),
('userAdmin@AdminDeleteSlide', 0, NULL, NULL, 'N;'),
('userAdmin@AdminDeleteTag', 0, NULL, NULL, 'N;'),
('userAdmin@AdminDeleteVacancy', 0, NULL, NULL, 'N;'),
('userAdmin@AdminDownloadFile', 0, NULL, NULL, 'N;'),
('userAdmin@AdminDownloadImg', 0, NULL, NULL, 'N;'),
('userAdmin@AdminDownloadLargeImgId', 0, NULL, NULL, 'N;'),
('userAdmin@AdminDownloadMiniImgId', 0, NULL, NULL, 'N;'),
('userAdmin@AdminIndex', 0, NULL, NULL, 'N;'),
('userAdmin@AdminInfo', 0, NULL, NULL, 'N;'),
('userAdmin@AdminMain', 0, NULL, NULL, 'N;'),
('userAdmin@AdminPositionSlide', 0, NULL, NULL, 'N;'),
('userAdmin@AdminPositionVacancy', 0, NULL, NULL, 'N;'),
('userAdmin@AdminProducts', 0, NULL, NULL, 'N;'),
('userAdmin@AdminSaveEqText', 0, NULL, NULL, 'N;'),
('userAdmin@AdminSaveEquipment', 0, NULL, NULL, 'N;'),
('userAdmin@AdminSavePortfolio', 0, NULL, NULL, 'N;'),
('userAdmin@AdminSaveProductsGroup', 0, NULL, NULL, 'N;'),
('userAdmin@AdminSaveSledePosition', 0, NULL, NULL, 'N;'),
('userAdmin@AdminSaveTag', 0, NULL, NULL, 'N;'),
('userAdmin@AdminsContacts', 0, NULL, NULL, 'N;'),
('userAdmin@AdminService', 0, NULL, NULL, 'N;'),
('userAdmin@AdminUpdateAboutMaine', 0, NULL, NULL, 'N;'),
('userAdmin@AdminUpdateLarge', 0, NULL, NULL, 'N;'),
('userAdmin@AdminUpdatePlusMaine', 0, NULL, NULL, 'N;'),
('userAdmin@AdminUpdatePortfolio', 0, NULL, NULL, 'N;'),
('userAdmin@AdminUpdateService', 0, NULL, NULL, 'N;'),
('userAdmin@AdminUpdateVacancy', 0, NULL, NULL, 'N;'),
('userAdmin@AdminWorks', 0, NULL, NULL, 'N;'),
('View Post', 0, NULL, NULL, NULL),
('View User', 0, NULL, NULL, NULL);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`itemname`) REFERENCES `items` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `authassignment`
--
ALTER TABLE `authassignment`
  ADD CONSTRAINT `authassignment_ibfk_1` FOREIGN KEY (`itemname`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `authitemchild`
--
ALTER TABLE `authitemchild`
  ADD CONSTRAINT `authitemchild_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `authitemchild_ibfk_2` FOREIGN KEY (`child`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `itemchildren`
--
ALTER TABLE `itemchildren`
  ADD CONSTRAINT `itemchildren_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `items` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `itemchildren_ibfk_2` FOREIGN KEY (`child`) REFERENCES `items` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
