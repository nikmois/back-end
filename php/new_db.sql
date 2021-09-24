-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 16 2021 г., 15:59
-- Версия сервера: 10.4.17-MariaDB
-- Версия PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `new_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `logoPic` tinytext DEFAULT NULL,
  `listOrder` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `logoPic`, `listOrder`) VALUES
(1, 'client-1.png', 1),
(2, 'client-2.png', 2),
(3, 'client-3.png', 3),
(4, 'client-4.png', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `counts`
--

CREATE TABLE `counts` (
  `id` int(11) NOT NULL,
  `icon` tinytext DEFAULT NULL,
  `count` tinytext DEFAULT NULL,
  `lang` tinytext DEFAULT NULL,
  `text` tinytext DEFAULT NULL,
  `listOrder` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `counts`
--

INSERT INTO `counts` (`id`, `icon`, `count`, `lang`, `text`, `listOrder`) VALUES
(1, 'icofont-simple-smile', '546', 'en', 'Happy Clients', 1),
(2, 'icofont-document-folder', '6546', 'en', 'Projects', 2),
(3, 'icofont-live-support', '8069', 'en', 'Hours Of Support', 3),
(4, 'icofont-users-alt-5', '12', 'en', 'Hard Workers', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `db_users`
--

CREATE TABLE `db_users` (
  `id` int(11) NOT NULL,
  `userName` tinytext NOT NULL,
  `userPass` varchar(32) NOT NULL,
  `status` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `db_users`
--

INSERT INTO `db_users` (`id`, `userName`, `userPass`, `status`) VALUES
(1, 'admin@bk.ru', '827ccb0eea8a706c4c34a16891f84e7b', 'God'),
(3, 'nikolai@bk.ru', '827ccb0eea8a706c4c34a16891f84e7b', 'God'),
(5, 'guest@bk.ru', '827ccb0eea8a706c4c34a16891f84e7b', 'Guest'),
(6, 'tech@kl', 'd41d8cd98f00b204e9800998ecf8427e', 'Guest'),
(11, 'wernik@mk', '827ccb0eea8a706c4c34a16891f84e7b', 'Guest');

-- --------------------------------------------------------

--
-- Структура таблицы `df_ckedit`
--

CREATE TABLE `df_ckedit` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `photoName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `df_pages`
--

CREATE TABLE `df_pages` (
  `id` int(11) NOT NULL,
  `heading` text NOT NULL,
  `language` text NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `df_pages`
--

INSERT INTO `df_pages` (`id`, `heading`, `language`, `text`) VALUES
(3, 'dopustim', 'ru', '<p>dadada</p>\r\n'),
(4, 'tri', 'ru', '<p>triple&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `faq_list`
--

CREATE TABLE `faq_list` (
  `id` int(11) NOT NULL,
  `question` tinytext DEFAULT NULL,
  `answer` tinytext DEFAULT NULL,
  `lang` tinytext DEFAULT NULL,
  `listOrder` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `footer_col`
--

CREATE TABLE `footer_col` (
  `id` int(11) NOT NULL,
  `header` tinytext DEFAULT NULL,
  `list_object` tinytext DEFAULT NULL,
  `list_object_link` tinytext DEFAULT NULL,
  `listOrder` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `icon_box`
--

CREATE TABLE `icon_box` (
  `id` int(11) NOT NULL,
  `icon` tinytext DEFAULT NULL,
  `title` tinytext DEFAULT NULL,
  `text` tinytext DEFAULT NULL,
  `lang` tinytext DEFAULT NULL,
  `listOrder` tinyint(4) DEFAULT NULL,
  `aos_delay` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `icon_box`
--

INSERT INTO `icon_box` (`id`, `icon`, `title`, `text`, `lang`, `listOrder`, `aos_delay`) VALUES
(1, 'bx bx-receipt', 'Text nr 1', 'More text More text More text More text More text More text More text More text More text ', 'en', 1, 100),
(2, 'bx bx-cube-alt', 'Text nr 2', 'More text More text More text More text More text More text More text More text ', 'en', 2, 200),
(3, 'bx bx-images', 'Text nr 3', 'More text More text More text More text More text More text More text ', 'en', 3, 300),
(4, 'bx bx-shield', 'Text nr 4', 'More text More text More text More text More text More text More text More text More text More text ', 'en', 4, 400);

-- --------------------------------------------------------

--
-- Структура таблицы `kta20v_languages`
--

CREATE TABLE `kta20v_languages` (
  `id` int(11) NOT NULL,
  `title` tinytext NOT NULL,
  `descr` text NOT NULL,
  `code` varchar(2) NOT NULL,
  `listOrder` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `kta20v_languages`
--

INSERT INTO `kta20v_languages` (`id`, `title`, `descr`, `code`, `listOrder`) VALUES
(1, 'По-русски', 'Русский язык', 'ru', 2),
(2, 'English', 'English language', 'en', 3),
(3, 'Eesti Keeles', 'Eesti keel', 'et', 1),
(4, 'Par Espaniol', 'En espaniol', 'es', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `title` tinytext DEFAULT NULL,
  `descr` tinytext DEFAULT NULL,
  `code` tinytext DEFAULT NULL,
  `listOrder` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` tinytext DEFAULT NULL,
  `code` tinytext DEFAULT NULL,
  `lang` tinytext DEFAULT NULL,
  `parentCode` tinytext DEFAULT NULL,
  `listOrder` tinyint(4) DEFAULT NULL,
  `class` tinytext DEFAULT NULL,
  `deepclass` tinytext DEFAULT NULL,
  `parentTitle` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `title`, `code`, `lang`, `parentCode`, `listOrder`, `class`, `deepclass`, `parentTitle`) VALUES
(1, 'Home', '#header', 'en', NULL, 4, 'active', NULL, NULL),
(2, 'About', '#about', 'en', NULL, 5, NULL, NULL, NULL),
(3, 'Services', '#services', 'en', NULL, 6, NULL, NULL, NULL),
(4, 'Potfolio', '#portfolio', 'en', NULL, 7, NULL, NULL, NULL),
(5, 'Team', '#team', 'en', NULL, 8, NULL, NULL, NULL),
(6, 'Contact', '#contact', 'en', NULL, 9, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `portfolio_filters`
--

CREATE TABLE `portfolio_filters` (
  `id` int(11) NOT NULL,
  `title` tinytext DEFAULT NULL,
  `code` tinytext DEFAULT NULL,
  `lang` tinytext DEFAULT NULL,
  `listOrder` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `portfolio_item`
--

CREATE TABLE `portfolio_item` (
  `id` int(11) NOT NULL,
  `photos` tinytext DEFAULT NULL,
  `title` tinytext DEFAULT NULL,
  `comment` tinytext DEFAULT NULL,
  `filter` tinytext DEFAULT NULL,
  `lang` tinytext DEFAULT NULL,
  `header` tinytext DEFAULT NULL,
  `text` tinytext DEFAULT NULL,
  `category` tinytext DEFAULT NULL,
  `client` tinytext DEFAULT NULL,
  `projDate` tinytext DEFAULT NULL,
  `projLink` tinytext DEFAULT NULL,
  `listOrder` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `pricing_box`
--

CREATE TABLE `pricing_box` (
  `id` int(11) NOT NULL,
  `header` tinytext DEFAULT NULL,
  `text` tinytext DEFAULT NULL,
  `button` tinytext DEFAULT NULL,
  `buttonlink` tinytext DEFAULT NULL,
  `lang` tinytext DEFAULT NULL,
  `listOrder` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `tabs`
--

CREATE TABLE `tabs` (
  `id` int(11) NOT NULL,
  `title` tinytext DEFAULT NULL,
  `lang` tinytext DEFAULT NULL,
  `image` tinytext DEFAULT NULL,
  `text` text DEFAULT NULL,
  `listOrder` tinyint(4) DEFAULT NULL,
  `aos_delay` int(11) DEFAULT NULL,
  `class` text DEFAULT NULL,
  `tab_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tabs`
--

INSERT INTO `tabs` (`id`, `title`, `lang`, `image`, `text`, `listOrder`, `aos_delay`, `class`, `tab_id`) VALUES
(2, 'Title 1', 'en', 'tabs-1.jpg', '<p class=\"font-italic\">\r\n              Some text Some text Some text Some text Some text Some text Some text Some text.\r\n            </p>\r\n            <ul>\r\n              <li><i class=\"ri-check-double-line\"></i> List item 1.</li>\r\n              <li><i class=\"ri-check-double-line\"></i> List item 2.</li>\r\n              <li><i class=\"ri-check-double-line\"></i> List item 3.</li>\r\n            </ul>\r\n            <p>\r\n             Some text Some text Some text Some text Some text Some text Some text Some text.Some text Some text Some text Some text Some text Some text Some text Some text.Some text Some text Some text Some text Some text Some text Some text Some text.\r\n            </p>', 1, 100, 'tab-pane active show', 'tab-1'),
(3, 'Title 2', 'en', 'tabs-2.jpg', '<p>\r\n              Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate\r\n              velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in\r\n              culpa qui officia deserunt mollit anim id est laborum\r\n            </p>\r\n            <p class=\"font-italic\">\r\n              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore\r\n              magna aliqua.\r\n            </p>\r\n            <ul>\r\n              <li><i class=\"ri-check-double-line\"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>\r\n              <li><i class=\"ri-check-double-line\"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>\r\n              <li><i class=\"ri-check-double-line\"></i> Provident mollitia neque rerum asperiores dolores quos qui a. Ipsum neque dolor voluptate nisi sed.</li>\r\n              <li><i class=\"ri-check-double-line\"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</li>\r\n            </ul>', 2, 200, 'tab-pane', 'tab-2'),
(4, 'Title 3', 'en', 'tabs-3.jpg', '  <p>\r\n              Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate\r\n              velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in\r\n              culpa qui officia deserunt mollit anim id est laborum\r\n            </p>\r\n            <ul>\r\n              <li><i class=\"ri-check-double-line\"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>\r\n              <li><i class=\"ri-check-double-line\"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>\r\n              <li><i class=\"ri-check-double-line\"></i> Provident mollitia neque rerum asperiores dolores quos qui a. Ipsum neque dolor voluptate nisi sed.</li>\r\n            </ul>\r\n            <p class=\"font-italic\">\r\n              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore\r\n              magna aliqua.\r\n            </p>', 3, 200, 'tab-pane', 'tab-3'),
(5, 'Title 4', 'en', 'tabs-4.jpg', '<p>\r\n              Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate\r\n              velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in\r\n              culpa qui officia deserunt mollit anim id est laborum\r\n            </p>\r\n            <p class=\"font-italic\">\r\n              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore\r\n              magna aliqua.\r\n            </p>\r\n            <ul>\r\n              <li><i class=\"ri-check-double-line\"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>\r\n              <li><i class=\"ri-check-double-line\"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>\r\n              <li><i class=\"ri-check-double-line\"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</li>\r\n            </ul>', 4, 200, 'tab-pane', 'tab-4');

-- --------------------------------------------------------

--
-- Структура таблицы `tabs_btn`
--

CREATE TABLE `tabs_btn` (
  `id` int(11) NOT NULL,
  `class` text NOT NULL,
  `icon` text NOT NULL,
  `link` text NOT NULL,
  `language` text NOT NULL,
  `listOrder` int(11) NOT NULL,
  `text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tabs_btn`
--

INSERT INTO `tabs_btn` (`id`, `class`, `icon`, `link`, `language`, `listOrder`, `text`) VALUES
(1, 'nav-link active show', 'ri-gps-line', '#tab-1', 'en', 1, 'Tab nr 1'),
(2, 'nav-link', 'ri-body-scan-line', '#tab-2', 'en', 2, 'Tab nr 2'),
(3, 'nav-link', 'ri-sun-line', '#tab-3', 'en', 3, 'Tab nr 3'),
(4, 'nav-link', 'ri-store-line', '#tab-4', 'en', 4, 'Tab nr 4');

-- --------------------------------------------------------

--
-- Структура таблицы `team_member`
--

CREATE TABLE `team_member` (
  `id` int(11) NOT NULL,
  `photo` tinytext DEFAULT NULL,
  `twitter_icon` tinytext DEFAULT NULL,
  `twitter_icon_link` tinytext DEFAULT NULL,
  `facebook_icon` tinytext DEFAULT NULL,
  `facebook_icon_link` tinytext DEFAULT NULL,
  `instagramm_icon` tinytext DEFAULT NULL,
  `instagramm_icon_link` tinytext DEFAULT NULL,
  `linkedin_icon` tinytext DEFAULT NULL,
  `linkedin_icon_link` tinytext DEFAULT NULL,
  `name` tinytext DEFAULT NULL,
  `job` tinytext DEFAULT NULL,
  `lang` tinytext DEFAULT NULL,
  `listOrder` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `testimonials_item`
--

CREATE TABLE `testimonials_item` (
  `id` int(11) NOT NULL,
  `photo` tinytext DEFAULT NULL,
  `name` tinytext DEFAULT NULL,
  `profession` tinytext DEFAULT NULL,
  `lang` tinytext DEFAULT NULL,
  `text` tinytext DEFAULT NULL,
  `listOrder` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(11) NOT NULL,
  `code` tinytext DEFAULT NULL,
  `text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `counts`
--
ALTER TABLE `counts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `db_users`
--
ALTER TABLE `db_users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `df_ckedit`
--
ALTER TABLE `df_ckedit`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `df_pages`
--
ALTER TABLE `df_pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `faq_list`
--
ALTER TABLE `faq_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `footer_col`
--
ALTER TABLE `footer_col`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `icon_box`
--
ALTER TABLE `icon_box`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kta20v_languages`
--
ALTER TABLE `kta20v_languages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `portfolio_filters`
--
ALTER TABLE `portfolio_filters`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `portfolio_item`
--
ALTER TABLE `portfolio_item`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pricing_box`
--
ALTER TABLE `pricing_box`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tabs`
--
ALTER TABLE `tabs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tabs_btn`
--
ALTER TABLE `tabs_btn`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `team_member`
--
ALTER TABLE `team_member`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `testimonials_item`
--
ALTER TABLE `testimonials_item`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `counts`
--
ALTER TABLE `counts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `db_users`
--
ALTER TABLE `db_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `df_ckedit`
--
ALTER TABLE `df_ckedit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `df_pages`
--
ALTER TABLE `df_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `faq_list`
--
ALTER TABLE `faq_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `footer_col`
--
ALTER TABLE `footer_col`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `icon_box`
--
ALTER TABLE `icon_box`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `kta20v_languages`
--
ALTER TABLE `kta20v_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `portfolio_filters`
--
ALTER TABLE `portfolio_filters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `portfolio_item`
--
ALTER TABLE `portfolio_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pricing_box`
--
ALTER TABLE `pricing_box`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tabs`
--
ALTER TABLE `tabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `tabs_btn`
--
ALTER TABLE `tabs_btn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `team_member`
--
ALTER TABLE `team_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `testimonials_item`
--
ALTER TABLE `testimonials_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
