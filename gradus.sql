-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Авг 08 2013 г., 17:13
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
  `val` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

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
(7, 'coperite', '© 2013 Градус-М');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `gr_portfolio`
--

INSERT INTO `gr_portfolio` (`id`, `title`, `address`, `area`, `file_id`) VALUES
(1, 'asdasd', 'asdasd', 'asdasd', NULL);

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
-- Структура таблицы `gr_tag`
--

CREATE TABLE IF NOT EXISTS `gr_tag` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL,
  `tag` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `gr_tag`
--

INSERT INTO `gr_tag` (`id`, `text`, `tag`) VALUES
(1, 'adasda', 'sdasd'),
(2, '44', '44'),
(3, 'asdasd', 'asdasd'),
(4, 'asd asd asd sdfdfgdf', 'gdfg'),
(5, '2323', '2323');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `gr_uploadedfiles`
--

INSERT INTO `gr_uploadedfiles` (`id`, `name`, `orig_name`, `ext`, `size`, `invisible`) VALUES
(1, 'a20c29799216735edd40ebd8aba57cb9.jpg', 'WP_000140.jpg', 'jpg', '1421642', NULL),
(2, 'ef4091c8b1d006990187df63a1d017a8.jpg', 'WP_000141.jpg', 'jpg', '1638061', NULL),
(3, '9f75958f7d081d1c5d46400c3b45b5f3.jpg', 'WP_000141.jpg', 'jpg', '1638061', NULL);

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `gr_vacancy`
--

INSERT INTO `gr_vacancy` (`id`, `title`, `order`) VALUES
(5, ' Инженер по обслуживанию импортного газового оборудования', 2),
(6, 'Монтажник систем отопления, водоснабжения, насосов , котлов и водонагревателей', 1);

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
('User Manager', 'userAdmin@AdminCreateVacancy'),
('User Manager', 'userAdmin@AdminDeleteCharge'),
('User Manager', 'userAdmin@AdminDeleteRequirements'),
('User Manager', 'userAdmin@AdminDeleteVacancy'),
('User Manager', 'userAdmin@AdminDownloadFile'),
('User Manager', 'userAdmin@AdminIndex'),
('User Manager', 'userAdmin@AdminMain'),
('User Manager', 'userAdmin@AdminProducts'),
('User Manager', 'userAdmin@AdminSavePortfolio'),
('User Manager', 'userAdmin@AdminSaveTag'),
('User Manager', 'userAdmin@AdminsContacts'),
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
('userAdmin@AdminCreateVacancy', 0, NULL, NULL, 'N;'),
('userAdmin@AdminDeleteCharge', 0, NULL, NULL, 'N;'),
('userAdmin@AdminDeleteRequirements', 0, NULL, NULL, 'N;'),
('userAdmin@AdminDeleteVacancy', 0, NULL, NULL, 'N;'),
('userAdmin@AdminDownloadFile', 0, NULL, NULL, 'N;'),
('userAdmin@AdminIndex', 0, NULL, NULL, 'N;'),
('userAdmin@AdminMain', 0, NULL, NULL, 'N;'),
('userAdmin@AdminProducts', 0, NULL, NULL, 'N;'),
('userAdmin@AdminSavePortfolio', 0, NULL, NULL, 'N;'),
('userAdmin@AdminSaveTag', 0, NULL, NULL, 'N;'),
('userAdmin@AdminsContacts', 0, NULL, NULL, 'N;'),
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
