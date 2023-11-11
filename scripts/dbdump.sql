-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- 생성 시간: 23-11-11 16:54
-- 서버 버전: 10.4.28-MariaDB
-- PHP 버전: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- 테이블의 덤프 데이터 `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"mysql\",\"table\":\"user\"},{\"db\":\"mysql\",\"table\":\"host\"},{\"db\":\"team04\",\"table\":\"menu_list\"},{\"db\":\"team04\",\"table\":\"hashtag\"}]');

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- 테이블의 덤프 데이터 `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-11-11 14:38:10', '{\"lang\":\"ko\",\"Console\\/Mode\":\"show\"}');

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- 테이블의 인덱스 `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- 테이블의 인덱스 `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- 테이블의 인덱스 `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- 테이블의 인덱스 `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- 테이블의 인덱스 `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- 테이블의 인덱스 `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- 테이블의 인덱스 `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- 테이블의 인덱스 `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- 테이블의 인덱스 `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- 테이블의 인덱스 `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- 테이블의 인덱스 `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- 테이블의 인덱스 `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- 테이블의 인덱스 `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- 테이블의 인덱스 `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- 테이블의 인덱스 `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- 테이블의 인덱스 `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- 테이블의 인덱스 `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 데이터베이스: `team04`
--
CREATE DATABASE IF NOT EXISTS `team04` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `team04`;

-- --------------------------------------------------------

--
-- 테이블 구조 `hashtag`
--

CREATE TABLE `hashtag` (
  `hashtag_id` bigint(20) NOT NULL,
  `hashtag_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `hashtag`
--

INSERT INTO `hashtag` (`hashtag_id`, `hashtag_name`) VALUES
(1, 'CozyVibes'),
(2, 'FineDining'),
(3, 'CasualDining'),
(4, 'LiveMusic'),
(5, 'HistoricEats'),
(6, 'DateNightSpot'),
(7, 'FamilyFriendly'),
(8, 'TrendySpot'),
(9, 'UrbanEats'),
(10, 'GardenRestaurant'),
(11, 'RooftopDining'),
(12, 'LoungeLife'),
(13, 'BistroVibes'),
(14, 'PubGrub'),
(15, 'ThemeRestaurant');

-- --------------------------------------------------------

--
-- 테이블 구조 `member`
--

CREATE TABLE `member` (
  `member_id` bigint(20) NOT NULL,
  `login_id` varchar(30) NOT NULL,
  `member_name` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `member`
--

INSERT INTO `member` (`member_id`, `login_id`, `member_name`, `password`, `gender`, `age`) VALUES
(1, 'minsoo2', 'Minsoo', 'professor2!', 'Male', 48),
(2, 'bluebottle13', 'Alice', 'securepa23ss', 'Female', 18),
(3, 'hannah123', 'Bob', 'mysecre3t', 'Male', 44),
(4, 'tiger44', 'Eve', 'letmein98', 'Male', 19),
(5, 'rocket88', 'Charlie', 'pa$$w0rd', 'Female', 39),
(6, 'daisy12', 'Olivia', 'pass1234', 'Male', 40),
(7, 'smile21', 'David', 'dav!d123', 'Female', 43),
(8, 'starlight7', 'Sophia', 's0ph!@456', 'Female', 54),
(9, 'thunder99', 'Michael', 'm1k3p@ss', 'Male', 32),
(10, 'dragon55', 'Emily', '3m!1ypass', 'Female', 16),
(11, 'butterfly16', 'James', 'j@m3spass', 'Female', 25),
(12, 'moonlight123', 'Ava', 'av@p@ssword', 'Female', 55),
(13, 'redrose22', 'William', 'will!am123', 'Female', 13),
(14, 'happyday19', 'Charlotte', 'ch@rl0tte', 'Female', 15),
(15, 'lucky13', 'Daniel', 'd@n!3lp@ss', 'Female', 17),
(16, 'coolguy7', 'Grace', 'gr!ce1234', 'Female', 34),
(17, 'sweetheart4', 'Joseph', 'j0s3php@ss', 'Male', 18),
(18, 'captain23', 'Emma', '3mm@p@ss', 'Female', 19),
(19, 'wildcat1', 'Benjamin', 'b3nj@m!np@ss', 'Female', 41),
(20, 'kingdom20', 'Lily', 'l!1yp@ss', 'Female', 52),
(21, 'powergirl', 'Henry', 'h3nryp@ss', 'Female', 24),
(22, 'guitarist3', 'Mia', 'm!ap@ss', 'Male', 27),
(23, 'bookworm', 'Chanse', 'lr4eib23', 'Female', 59),
(24, 'purpllexi', 'Mills', 'aeagnal323', 'Male', 26),
(25, 'artist99', 'Lexi', 'rsilnrg39!', 'Female', 14),
(26, 'explorer42', 'Jessica', 'agroer!grg', 'Male', 33),
(27, 'chef5', 'Elle', 'otjsnb4@!', 'Female', 13),
(28, 'naturelover', 'Marian', 'sognr!ga', 'Female', 23),
(29, 'superstar8', 'Roman', 'g@fgds1!@', 'Male', 36),
(30, 'sunflower8', 'Bell', 'wngarin!@~', 'Male', 16);

-- --------------------------------------------------------

--
-- 테이블 구조 `menu`
--

CREATE TABLE `menu` (
  `menu_id` bigint(20) NOT NULL,
  `menu_name` varchar(60) DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `price`) VALUES
(1, 'Meat Lovers', 15.99),
(2, 'Supreme', 15.99),
(3, 'Pepperoni', 14.99),
(4, 'BBQ Chicken & Bacon', 15.99),
(5, '5 Cheese', 14.99),
(6, 'Pepperoni Slice', 3.99),
(7, 'Jumbo Chicken Wings Five Pieces', 8.99),
(8, 'Jumbo Spicy Chicken Wings Twelve Pieces', 15.99),
(9, 'Five Chicken Tenders', 8.99),
(10, 'Tuna Salad', 4.25),
(11, 'Chicken Salad', 7.99),
(12, 'Garden Salad', 4.95),
(13, 'Broccoli & Cheddar Soup', 3.50),
(14, 'Tomato Basil Soup', 3.50),
(15, 'Breyers Reese\'s 16 oz', 5.19),
(16, 'Caramel Ice Cream Bars 3ct', 7.99),
(17, 'Salted Caramel Truffle Layers', 8.99),
(18, 'Layers Confetti Cookie Gelato', 8.99),
(19, 'Roman Raspberry Sorbetto 16 oz', 7.99),
(20, 'Caramel Cookie Crunch Gelato 16 oz', 7.99),
(21, 'Broccoli Cheddar Soup', 6.49),
(22, 'Mac & Cheese', 6.99),
(23, 'NEW Mexican Street Corn Chowder', 6.99),
(24, 'Homestyle Chicken Noodle Soup', 6.49),
(25, 'Creamy Tomato Soup', 6.49),
(26, 'Cream of Chicken & Wild Rice Soup', 6.49),
(27, 'Broccoli Cheddar Mac Cheese', 6.99),
(28, 'Bistro French Onion Soup', 6.49),
(29, 'Double Beauty Roll', 14.95),
(30, 'Black Dragon Roll', 13.95),
(31, 'Green Dragon Roll', 13.95),
(32, 'Snow Mountain Roll', 14.95),
(33, 'Crazy Tuna Roll', 14.95),
(34, 'Spicy Scallop Roll', 13.95),
(35, 'Rainbow Roll', 13.95),
(36, 'Dragon Roll', 13.95),
(37, 'Spicy 2 in 1 Roll', 13.95),
(38, 'Sopa de Pollo', 10.20),
(39, 'Quesadilla Mexicana', 10.20),
(40, 'La Superior', 11.40),
(41, 'Tamal Deluxe', 11.40),
(42, 'Chiles Poblanos', 11.40),
(43, 'Fattoosh Feta', 6.49),
(44, 'Fattoosh Tawook', 12.99),
(45, 'Pu Pu Platter', 14.75),
(46, 'Chicken and Broccoli', 12.50),
(47, 'Sesame Chicken', 12.50),
(48, 'Chicken and Cashew Nuts', 12.50),
(49, 'Curry Chicken and Onions', 12.50),
(50, 'Hot Spicy Chicken', 12.50),
(51, 'Pepper Chicken', 12.50),
(52, 'Chicken and Garlic Sauce', 12.50),
(53, 'Beef with string bean', 13.25),
(54, 'Pepper Steak and Onions', 13.25),
(55, 'Steak Taco', 14.49),
(56, 'Chicken Taco', 10.49),
(57, 'Fish Taco', 11.49),
(58, 'Beef Taco', 12.49),
(59, 'Shrimp Taco', 12.49),
(60, 'Lobster Taco', 13.59),
(61, 'Cheesecake Chimichanga', 5.00),
(62, 'Homemade Flan', 5.00),
(63, 'Tiramisu', 7.80),
(64, 'Featured Dessert', 8.40),
(65, 'Ebi', 6.33),
(66, 'Hamachi', 6.33),
(67, 'Hotategai', 6.33),
(68, 'Ika', 6.33),
(69, 'Inari', 6.33),
(70, 'Kani Kama', 6.33),
(71, 'Maguro', 6.33),
(72, 'Ham and Cheese Hoagie', 11.98),
(73, 'Turkey Hoagie', 11.98),
(74, 'Mozza Meat', 8.99),
(75, 'Supreme Meats', 8.99),
(76, 'Black Bean Crunchwrap Supreme', 5.39),
(77, 'Matzah Ball Soup (8 oz)', 5.25),
(78, 'Lentil Soup (8 oz)', 5.25),
(79, 'Three Tacos', 10.15),
(80, 'Tacos', 3.70),
(81, 'Kid\'s Build Your Own', 6.45),
(82, 'Kid\'s Quesadilla', 5.10),
(83, 'Super Crunch', 13.95),
(84, 'Salmon Poke Bowl', 15.95),
(85, 'Tuna Poke Bowl', 15.95),
(86, 'Steak Rockin Bowl', 14.95),
(87, 'Shrimp Rockin Bowl', 12.95),
(88, 'Chicken Rockin Bowl', 11.95),
(89, 'Catfish', 9.95),
(90, 'Tilapia', 9.95),
(91, 'Fish Fillet', 7.99),
(92, 'Signature Meatball Pizza', 22.97),
(93, 'Spicy BBQ Piggy Pizza', 21.76),
(94, 'All-Meat Large 14 Specialty Pizza', 20.55),
(95, '\"Supreme Large 14\"\" Specialty Pizza\"', 20.55),
(96, '\"Homestyle BBQ Chicken Large 14\"\" Specialty Pizza\"', 21.76),
(97, 'All-Veggie Large 14 Specialty Pizza', 19.34),
(98, '\"Pasqually\'s Large 14\"\" Cheese Pizza\"', 14.50),
(99, 'Double Cheeseburger', 10.99),
(100, 'DBL Bacon Cheeseburger', 11.99),
(101, 'Cheeseburger', 8.99),
(102, 'Bacon Cheeseburger', 9.99),
(103, 'Hamburger', 7.99),
(104, 'Macadamia Nut Chicken', 31.00),
(105, 'Sweet-Chili Glazed Salmon', 35.00),
(106, 'KG Cheeseburger &amp; Fries', 7.99),
(107, 'Crab Crunch', 15.00),
(108, 'Acocado Smash', 8.00),
(109, 'Salmon Toast', 9.00),
(110, 'Rainbow Bowl', 16.00),
(111, 'Chicken Toast', 12.00),
(112, 'Chicken Teriyaki', 7.99),
(113, 'Steak Teriyaki', 8.29),
(114, 'Salmon Teriyaki', 8.99),
(115, 'Orange Chicken', 7.29),
(116, 'Egg Benedict', 9.15),
(117, 'Hash Benedict', 9.26),
(118, 'Western Bagle', 5.76),
(119, 'Blueberry Pancakes', 6.39),
(120, 'Sweet Potato Peecan Waffle', 6.39),
(121, 'Bahn Mi Bowl', 9.99),
(122, 'Chicken and Rice', 8.99),
(123, 'Beef and Red Potatoes', 9.99),
(124, 'Lemon Chicken and Potatoes', 8.49),
(125, 'Turkey Sandwich', 8.96),
(126, 'Salmon Sandwich', 7.81),
(127, 'Truffle Melt Sandwich', 7.81),
(128, 'Fried Chicken Sandwich', 8.96),
(129, 'Classic Sandwich', 5.05),
(130, 'Hawaiian Pizza', 18.99),
(131, 'Pesto Cicken Pizza', 20.49),
(132, 'Magic Mushroom Pizza', 19.49),
(133, 'Three Tacos', 8.75),
(134, 'Taco Salad', 7.65),
(135, 'Quesadilla', 9.75),
(136, 'Chiwawa', 8.95),
(137, 'Carne Asada Burrito', 10.01),
(138, 'Pollo Asado Taco', 4.99),
(139, 'Carne Asada Taco', 5.99),
(140, 'Carnitas Burrito', 9.99),
(141, 'Three Tender Plates', 8.95),
(142, 'Three Place White Plates', 11.50),
(143, 'Two Piece Dark Plates', 6.50),
(144, 'Matcha Better ', 8.00),
(145, 'Golden Roast', 8.00),
(146, 'Unicorn Taiyaki', 8.00),
(147, 'Choco-Lit', 8.00),
(148, 'Jumbo Tenders', 8.50),
(149, 'Big Wings', 9.50),
(150, 'Quarter White', 8.50),
(151, 'Quarter Dark', 8.50),
(152, 'Grilled Jumbo Shrimp', 13.00),
(153, 'Chicken Karaage', 11.50),
(154, 'Pork Gyoza', 8.50),
(155, 'American Chop', 7.00),
(156, 'BBQ Chicken Chop', 9.00),
(157, 'Asian Chop', 7.00),
(158, 'Tuna Salad Bread', 8.00),
(159, 'Danish Chop', 8.00),
(160, 'The Energy One', 6.99),
(161, 'The Glow One', 7.59),
(162, 'The Immunity One', 6.99),
(163, 'The Wakeup One', 5.50),
(164, 'The Hardcore One', 6.99),
(165, 'Strawberry Bond', 8.50),
(166, 'Chocolate Combustion', 8.50),
(167, 'Affogato', 6.95),
(168, 'Nitrofloat', 7.50),
(169, 'Downtown Dog', 7.99),
(170, 'Cowboy Dog', 7.99),
(171, 'Corn Dog', 5.49),
(172, 'Sooo Cali Dog', 7.99),
(173, 'Chili Idol Dog', 8.99),
(174, 'Meatless Mike', 10.99),
(175, 'Steve Jobs', 10.99),
(176, 'Handsome Owl', 12.45),
(177, 'Reading Rainbow', 10.45),
(178, 'Day Off', 12.11),
(179, 'Momo\'s Nono', 7.96),
(180, 'Mighty Med Salad', 15.49),
(181, 'Green Glow Salad', 15.49),
(182, 'Superseed Avocado Toast', 8.49),
(183, 'Morning Glory Wrap', 10.99),
(184, 'Grilled Cheese', 6.99),
(185, 'Intensifier', 8.99),
(186, 'Maccheroni al pettine', 21.00),
(187, 'Anolini di parma', 22.00),
(188, 'Tagliolini al ragu', 22.00),
(189, 'Spaghetonni con vongole', 24.00),
(190, 'Reginelle verde', 23.00),
(191, 'Burrata', 21.00),
(192, 'Tomino', 23.00),
(193, 'Agnolotti Cacio Pepe', 26.00),
(194, 'Halibut', 38.00),
(195, 'Steelhead Salmon', 36.00),
(196, 'Orecchiette Lobster', 32.00);

-- --------------------------------------------------------

--
-- 테이블 구조 `menu_list`
--

CREATE TABLE `menu_list` (
  `restaurant_id` bigint(20) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `menu_list`
--

INSERT INTO `menu_list` (`restaurant_id`, `menu_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 7),
(2, 8),
(2, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(4, 15),
(4, 16),
(4, 17),
(4, 18),
(4, 19),
(4, 20),
(5, 21),
(5, 22),
(5, 23),
(5, 24),
(5, 25),
(5, 26),
(5, 27),
(5, 28),
(6, 29),
(6, 30),
(6, 31),
(6, 32),
(6, 33),
(6, 34),
(6, 35),
(6, 36),
(6, 37),
(7, 38),
(7, 39),
(7, 40),
(7, 41),
(7, 42),
(8, 43),
(8, 44),
(8, 45),
(9, 46),
(9, 47),
(9, 48),
(9, 49),
(9, 50),
(9, 51),
(9, 52),
(9, 53),
(9, 54),
(10, 55),
(10, 56),
(10, 57),
(10, 58),
(10, 59),
(10, 60),
(11, 61),
(11, 62),
(11, 63),
(11, 64),
(12, 65),
(12, 66),
(12, 67),
(12, 68),
(12, 69),
(12, 70),
(12, 71),
(13, 72),
(13, 73),
(13, 74),
(13, 75),
(14, 76),
(14, 77),
(14, 78),
(15, 79),
(15, 80),
(15, 81),
(15, 82),
(16, 83),
(16, 84),
(16, 85),
(16, 86),
(16, 87),
(16, 88),
(17, 89),
(17, 90),
(17, 91),
(18, 92),
(18, 93),
(18, 94),
(18, 95),
(18, 96),
(18, 97),
(18, 98),
(19, 99),
(19, 100),
(19, 101),
(19, 102),
(19, 103),
(20, 104),
(20, 105),
(20, 106),
(20, 107),
(21, 108),
(21, 109),
(21, 110),
(21, 111),
(22, 112),
(22, 113),
(22, 114),
(22, 115),
(23, 116),
(23, 117),
(23, 118),
(23, 119),
(23, 120),
(24, 121),
(24, 122),
(24, 123),
(24, 124),
(25, 125),
(25, 126),
(25, 127),
(25, 128),
(25, 129),
(26, 130),
(26, 131),
(26, 132),
(27, 133),
(27, 134),
(27, 135),
(27, 136),
(28, 137),
(28, 138),
(28, 139),
(28, 140),
(29, 141),
(29, 142),
(29, 143),
(30, 144),
(30, 145),
(30, 146),
(30, 147),
(31, 148),
(31, 149),
(31, 150),
(31, 151),
(32, 152),
(32, 153),
(32, 154),
(33, 155),
(33, 156),
(33, 157),
(33, 158),
(33, 159),
(34, 160),
(34, 161),
(34, 162),
(34, 163),
(34, 164),
(35, 165),
(35, 166),
(35, 167),
(35, 168),
(36, 169),
(36, 170),
(36, 171),
(36, 172),
(36, 173),
(37, 174),
(37, 175),
(37, 176),
(37, 177),
(37, 178),
(37, 179),
(38, 180),
(38, 181),
(38, 182),
(38, 183),
(38, 184),
(38, 185),
(39, 186),
(39, 187),
(39, 188),
(39, 189),
(39, 190),
(40, 191),
(40, 192),
(40, 193),
(40, 194),
(40, 195),
(40, 196);

-- --------------------------------------------------------

--
-- 테이블 구조 `restaurant`
--

CREATE TABLE `restaurant` (
  `restaurant_id` bigint(20) NOT NULL,
  `restaurant_name` varchar(50) DEFAULT NULL,
  `cuisine` varchar(30) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `borough` varchar(20) DEFAULT NULL,
  `avenue` varchar(20) DEFAULT NULL,
  `open_days_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `restaurant`
--

INSERT INTO `restaurant` (`restaurant_id`, `restaurant_name`, `cuisine`, `city`, `borough`, `avenue`, `open_days_id`) VALUES
(1, 'The Pizza Press', 'American', 'New York', 'Manhattan', 'Fifth', 1),
(2, 'The Lost Cajun', 'American', 'New York', 'Brooklyn', 'Bedford', 2),
(3, 'Just Salad', 'Light meals', 'New York', 'Manhattan', 'Fifth', 3),
(4, 'Jeni\'s Splendid Ice Creams', 'Dessert', 'New York', 'Brooklyn', 'Atlantic', 4),
(5, 'Playa Bowls', 'Light meals', 'New York', 'Brooklyn', 'Atlantic', 5),
(6, 'Quickway Japanese Hibachi', 'Japanese', 'New York', 'Brooklyn', 'Atlantic', 6),
(7, 'Surcheros', 'Mexican', 'New York', 'Brooklyn', 'Bedford', 7),
(8, 'Famous Toastery', 'Light meals', 'New York', 'Manhattan', 'Madison', 8),
(9, 'Culinary Dropout', 'American', 'New York', 'Brooklyn', 'Atlantic', 9),
(10, 'Condado Tacos', 'Mexican', 'New York', 'Manhattan', 'Fifth', 10),
(11, 'The Flying Biscuit Cafe', 'Light meals', 'New York', 'Brooklyn', 'Atlantic', 11),
(12, 'Blue Sushi Sake Grill', 'Japanese', 'New York', 'Brooklyn', 'Flatbush', 12),
(13, 'By Chloe', 'Italian', 'New York', 'Manhattan', 'Madison', 13),
(14, 'Evergreens', 'Light meals', 'New York', 'Manhattan', 'Madison', 14),
(15, 'Tacos 4 Life', 'Mexican', 'New York', 'Manhattan', 'Park', 15),
(16, 'Pokeworks', 'Light meals', 'New York', 'Brooklyn', 'Bedford', 16),
(17, 'LA Crawfish', 'American', 'New York', 'Manhattan', 'Madison', 17),
(18, '&pizza', 'Italian', 'New York', 'Manhattan', 'Park', 18),
(19, 'Super Duper Burgers', 'American', 'New York', 'Brooklyn', 'Atlantic', 19),
(20, 'StoneFire Grill', 'American', 'New York', 'Manhattan', 'Fifth', 20),
(21, 'Bluestone Lane', 'American', 'New York', 'Manhattan', 'Park', 21),
(22, 'Teriyaki Madness', 'Japanese', 'New York', 'Manhattan', 'Fifth', 22),
(23, 'Eggs Up Grill', 'American', 'New York', 'Brooklyn', 'Bedford', 23),
(24, 'Clean Eatz', 'Light meals', 'New York', 'Brooklyn', 'Flatbush', 24),
(25, 'Melt Shop', 'American', 'New York', 'Manhattan', 'Fifth', 25),
(26, 'Rapid Fired Pizza', 'Italian', 'New York', 'Brooklyn', 'Bedford', 26),
(27, 'Bubbakoo\'s Burritos', 'Mexican', 'New York', 'Brooklyn', 'Bedford', 27),
(28, 'Dos Toros Taqueria', 'Mexican', 'New York', 'Brooklyn', 'Bedford', 28),
(29, 'Gus\'s World Famous Fried Chicken', 'American', 'New York', 'Manhattan', 'Park', 29),
(30, 'Taiyaki', 'Dessert', 'New York', 'Brooklyn', 'Atlantic', 30),
(31, 'Joella\'s Hot Chicken', 'American', 'New York', 'Manhattan', 'Park', 31),
(32, 'Bushniwa', 'Japanese', 'New York', 'Brooklyn', 'Atlantic', 32),
(33, 'Original ChopShop', 'American', 'New York', 'Manhattan', 'Park', 33),
(34, 'Clean Juice', 'Light meals', 'New York', 'Brooklyn', 'Bedford', 34),
(35, 'Creamistry', 'Dessert', 'New York', 'Manhattan', 'Madison', 35),
(36, 'Dog Haus', 'American', 'New York', 'Brooklyn', 'Bedford', 36),
(37, 'Ike\'s Love & Sandwiches', 'American', 'New York', 'Manhattan', 'Fifth', 37),
(38, 'Vitality Bowls', 'Light meals', 'New York', 'Manhattan', 'Madison', 38),
(39, 'Rezdora', 'Italian', 'New York', 'Manhattan', 'Madison', 39),
(40, 'Alice', 'Italian', 'New York', 'Manhattan', 'Madison', 40);

-- --------------------------------------------------------

--
-- 테이블 구조 `restaurant_hashtag`
--

CREATE TABLE `restaurant_hashtag` (
  `restaurant_id` bigint(20) DEFAULT NULL,
  `hashtag_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `restaurant_hashtag`
--

INSERT INTO `restaurant_hashtag` (`restaurant_id`, `hashtag_id`) VALUES
(1, 3),
(2, 9),
(2, 3),
(2, 7),
(3, 10),
(3, 4),
(4, 14),
(4, 6),
(5, 9),
(5, 6),
(5, 14),
(6, 3),
(7, 5),
(7, 8),
(7, 4),
(7, 15),
(8, 11),
(9, 6),
(10, 7),
(10, 8),
(11, 12),
(11, 14),
(12, 6),
(12, 5),
(13, 5),
(13, 10),
(13, 13),
(14, 2),
(14, 11),
(15, 2),
(16, 13),
(16, 8),
(17, 7),
(18, 8),
(18, 14),
(19, 15),
(20, 2),
(20, 9),
(21, 3),
(21, 7),
(22, 15),
(23, 4),
(23, 5),
(23, 12),
(24, 7),
(24, 9),
(25, 4),
(25, 7),
(25, 12),
(26, 6),
(27, 8),
(27, 13),
(28, 8),
(29, 1),
(29, 13),
(29, 10),
(30, 12),
(31, 5),
(32, 6),
(32, 7),
(32, 9),
(33, 5),
(33, 6),
(34, 4),
(34, 14),
(35, 15),
(36, 5),
(37, 10),
(37, 9),
(38, 14),
(38, 12),
(39, 15),
(39, 7),
(39, 10),
(40, 11),
(40, 2),
(40, 10);

-- --------------------------------------------------------

--
-- 테이블 구조 `restaurant_member_likes`
--

CREATE TABLE `restaurant_member_likes` (
  `restaurant_id` bigint(20) DEFAULT NULL,
  `liked_member_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `restaurant_member_likes`
--

INSERT INTO `restaurant_member_likes` (`restaurant_id`, `liked_member_id`) VALUES
(1, 1),
(1, 3),
(1, 6),
(1, 7),
(1, 10),
(1, 13),
(1, 20),
(1, 23),
(1, 24),
(1, 25),
(1, 28),
(2, 1),
(2, 4),
(2, 5),
(2, 8),
(2, 10),
(2, 17),
(2, 28),
(3, 2),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 13),
(3, 16),
(3, 17),
(3, 19),
(3, 20),
(3, 21),
(3, 23),
(3, 25),
(3, 26),
(3, 27),
(3, 29),
(3, 30),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(4, 15),
(4, 16),
(4, 18),
(4, 19),
(4, 20),
(4, 21),
(4, 22),
(4, 23),
(4, 24),
(4, 25),
(4, 26),
(4, 27),
(4, 28),
(4, 30),
(6, 5),
(6, 5),
(6, 9),
(6, 10),
(6, 11),
(6, 16),
(6, 21),
(6, 22),
(6, 24),
(6, 26),
(6, 28),
(6, 29),
(7, 3),
(7, 4),
(7, 5),
(7, 13),
(7, 15),
(7, 17),
(7, 20),
(7, 22),
(7, 23),
(7, 29),
(8, 3),
(8, 8),
(8, 10),
(8, 28),
(9, 14),
(10, 9),
(10, 18),
(10, 20),
(10, 24),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(11, 5),
(11, 6),
(11, 7),
(11, 8),
(11, 9),
(11, 10),
(11, 11),
(11, 12),
(11, 13),
(11, 14),
(11, 15),
(11, 16),
(11, 17),
(11, 18),
(11, 19),
(11, 20),
(11, 21),
(11, 22),
(11, 23),
(11, 24),
(11, 25),
(11, 26),
(11, 27),
(11, 28),
(11, 29),
(12, 1),
(12, 4),
(12, 5),
(12, 7),
(12, 9),
(12, 10),
(12, 11),
(12, 12),
(12, 14),
(12, 15),
(12, 16),
(12, 17),
(12, 18),
(12, 20),
(12, 21),
(12, 22),
(12, 24),
(12, 26),
(12, 27),
(12, 28),
(12, 29),
(12, 30),
(13, 4),
(13, 13),
(14, 28),
(15, 4),
(15, 10),
(15, 16),
(15, 18),
(15, 19),
(15, 25),
(16, 2),
(16, 4),
(16, 5),
(16, 9),
(16, 11),
(16, 16),
(16, 21),
(16, 24),
(16, 25),
(16, 26),
(16, 28),
(16, 29),
(16, 30),
(17, 1),
(17, 3),
(17, 21),
(18, 1),
(18, 2),
(18, 4),
(18, 9),
(18, 19),
(18, 22),
(19, 3),
(19, 6),
(19, 7),
(19, 9),
(19, 15),
(19, 17),
(19, 22),
(19, 24),
(19, 28),
(19, 29),
(20, 5),
(20, 9),
(20, 11),
(20, 16),
(20, 19),
(20, 21),
(20, 22),
(20, 29),
(21, 2),
(21, 4),
(21, 10),
(21, 13),
(21, 14),
(22, 1),
(22, 4),
(22, 20),
(22, 21),
(22, 28),
(22, 29),
(22, 30),
(23, 1),
(23, 2),
(23, 3),
(23, 4),
(23, 10),
(23, 12),
(23, 14),
(23, 15),
(23, 17),
(23, 18),
(23, 19),
(23, 20),
(23, 21),
(23, 25),
(23, 27),
(23, 28),
(23, 29),
(23, 30),
(24, 3),
(24, 6),
(24, 8),
(24, 9),
(24, 10),
(24, 15),
(24, 24),
(24, 25),
(24, 26),
(25, 4),
(25, 5),
(25, 6),
(25, 20),
(26, 1),
(26, 12),
(26, 19),
(26, 25),
(26, 26),
(26, 27),
(26, 28),
(26, 29),
(26, 30),
(27, 1),
(27, 2),
(27, 4),
(27, 5),
(27, 6),
(27, 8),
(27, 11),
(27, 12),
(27, 14),
(27, 15),
(27, 16),
(27, 17),
(27, 19),
(27, 20),
(27, 21),
(27, 22),
(28, 2),
(28, 5),
(28, 6),
(29, 1),
(29, 2),
(29, 4),
(29, 5),
(29, 8),
(29, 9),
(29, 10),
(29, 13),
(29, 14),
(29, 19),
(30, 11),
(30, 14),
(30, 16),
(30, 19),
(30, 21),
(30, 26),
(31, 1),
(31, 3),
(31, 4),
(31, 7),
(31, 8),
(31, 9),
(31, 10),
(31, 12),
(31, 13),
(31, 16),
(31, 22),
(31, 25),
(32, 5),
(32, 7),
(32, 9),
(32, 10),
(32, 11),
(32, 12),
(32, 13),
(32, 16),
(33, 16),
(33, 19),
(33, 20),
(33, 25),
(34, 2),
(34, 5),
(34, 9),
(34, 13),
(34, 14),
(34, 16),
(34, 17),
(34, 22),
(34, 26),
(35, 1),
(35, 4),
(35, 22),
(35, 27),
(35, 28),
(35, 30),
(36, 2),
(36, 4),
(36, 10),
(36, 13),
(36, 25),
(36, 27),
(36, 28),
(36, 30),
(37, 1),
(37, 5),
(37, 6),
(37, 7),
(37, 8),
(37, 10),
(37, 12),
(37, 13),
(37, 14),
(37, 15),
(37, 16),
(37, 17),
(37, 18),
(37, 19),
(37, 21),
(37, 22),
(37, 23),
(37, 24),
(37, 25),
(37, 26),
(37, 27),
(37, 28),
(37, 29),
(37, 30),
(38, 2),
(38, 3),
(38, 4),
(38, 9),
(38, 10),
(38, 13),
(38, 14),
(38, 15),
(38, 16),
(38, 17),
(38, 24),
(38, 25),
(38, 26),
(38, 27),
(38, 29),
(38, 30),
(39, 1),
(39, 2),
(39, 3),
(39, 5),
(39, 6),
(39, 7),
(39, 8),
(39, 12),
(39, 14),
(39, 16),
(39, 19),
(39, 20),
(39, 23),
(40, 1),
(40, 3),
(40, 4),
(40, 5),
(40, 6),
(40, 8),
(40, 12),
(40, 13),
(40, 14),
(40, 15),
(40, 16),
(40, 17),
(40, 18),
(40, 19),
(40, 20),
(40, 21),
(40, 22),
(40, 23),
(40, 24);

-- --------------------------------------------------------

--
-- 테이블 구조 `restaurant_open_days`
--

CREATE TABLE `restaurant_open_days` (
  `open_days_id` bigint(20) NOT NULL,
  `monday` int(11) DEFAULT NULL,
  `tuesday` int(11) DEFAULT NULL,
  `wednesday` int(11) DEFAULT NULL,
  `thursday` int(11) DEFAULT NULL,
  `friday` int(11) DEFAULT NULL,
  `saturday` int(11) DEFAULT NULL,
  `sunday` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `restaurant_open_days`
--

INSERT INTO `restaurant_open_days` (`open_days_id`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `sunday`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1),
(2, 1, 1, 0, 0, 0, 1, 0),
(3, 1, 1, 1, 1, 1, 1, 1),
(4, 1, 1, 1, 1, 1, 1, 0),
(5, 1, 1, 1, 1, 1, 1, 0),
(6, 1, 1, 1, 1, 1, 1, 1),
(7, 0, 1, 1, 1, 1, 1, 0),
(8, 1, 1, 1, 1, 1, 1, 0),
(9, 1, 1, 0, 0, 1, 1, 0),
(10, 1, 1, 1, 1, 0, 1, 1),
(11, 1, 1, 1, 1, 0, 1, 0),
(12, 0, 0, 1, 1, 1, 1, 0),
(13, 0, 1, 0, 0, 0, 1, 0),
(14, 0, 0, 1, 1, 1, 1, 1),
(15, 1, 1, 1, 0, 1, 1, 1),
(16, 1, 1, 0, 1, 0, 0, 0),
(17, 1, 1, 1, 1, 1, 1, 0),
(18, 1, 1, 1, 1, 1, 1, 1),
(19, 1, 0, 1, 1, 1, 0, 0),
(20, 1, 1, 1, 1, 1, 1, 1),
(21, 1, 1, 1, 1, 1, 1, 1),
(22, 1, 1, 1, 1, 1, 1, 1),
(23, 0, 1, 1, 1, 0, 1, 1),
(24, 1, 1, 1, 1, 1, 1, 0),
(25, 1, 1, 1, 1, 1, 1, 1),
(26, 1, 1, 1, 1, 1, 1, 0),
(27, 1, 1, 1, 1, 0, 0, 1),
(28, 0, 1, 0, 1, 1, 1, 1),
(29, 1, 1, 1, 1, 1, 1, 0),
(30, 0, 1, 1, 1, 1, 1, 1),
(31, 1, 0, 1, 1, 1, 1, 1),
(32, 1, 1, 1, 1, 1, 1, 0),
(33, 0, 1, 1, 1, 1, 1, 1),
(34, 1, 0, 1, 0, 1, 0, 0),
(35, 1, 0, 1, 1, 1, 1, 0),
(36, 1, 1, 1, 0, 0, 1, 1),
(37, 0, 1, 1, 1, 1, 1, 1),
(38, 1, 1, 1, 1, 0, 0, 0),
(39, 0, 1, 1, 1, 0, 1, 1),
(40, 0, 1, 1, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `review`
--

CREATE TABLE `review` (
  `review_id` bigint(20) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `restaurant_id` bigint(20) DEFAULT NULL,
  `rating` int(11) NOT NULL CHECK (`rating` >= 1 and `rating` <= 5),
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `review`
--

INSERT INTO `review` (`review_id`, `member_id`, `restaurant_id`, `rating`, `comment`) VALUES
(1, 3, 5, 1, ''),
(2, 9, 6, 5, ''),
(3, 2, 9, 1, '\"Hostile staff, okeish food, not so great ambiance. Not sure how the rating on zomato stands at 4.1\"'),
(4, 10, 2, 4, 'Starters we\'re decent but main course was nice.'),
(5, 9, 5, 1, 'Will not suggest this place.'),
(6, 9, 9, 1, 'This was my worst experience at a restaurant ever. First our starters were served after half an hour of ordering and had a hair strand in it yuck! Then the guy who took our main course order forgot about it completely so we had to order again after waiting for almost an hour. Then had to wait for another half hour to get our food.'),
(7, 4, 10, 1, 'Had a very bad experience here'),
(8, 3, 2, 3, 'not bad but nothing special. I\'ll try once again next time.'),
(9, 6, 1, 3, 'pretty good'),
(10, 2, 13, 2, 'I guess the food was not served fresh'),
(11, 1, 14, 3, 'unexpensive'),
(12, 4, 3, 1, 'Waiters are not good enough and you will get items which you have not ordered. Overall a bad experience. Waiting time is more than expected...'),
(13, 6, 3, 1, '\"we went for a team lunch, such a worst restaurant.. food was tasteless, service was very slow and Ac was not working. We’ve requested them multiple times but its of no use. Please don’t waste your money and I strictly recommend not to prefer beyond flavours,\"'),
(14, 8, 29, 5, ''),
(15, 1, 11, 5, 'GOAT'),
(16, 8, 1, 1, '\"Very bad dine in experience I had with this restaurant. We booked this place for office lunch with some instructions, but none of them met by the restaurant. Overall very bad experience\"'),
(17, 1, 5, 1, 'Most disappointing experience ever! I would not recommend anyone to trust this restaurant'),
(18, 2, 10, 1, '\"I had heard a lot about this place so I went there. The dining area was pretty jammed and there seemed a lot of dirt lying around like used napkins, food etc. I anyway passed it for the fact that the place is all time busy. But then I saw a RAT nibbling on the scattered food. I reported this to the manager and he told me it\'s okay and \'ek do Galti toh ho jati hai\' and they literally forced me to pay for my order which I did not even touch. The staff was highly rude and it has been one of the worst experiences in Hyderabad.\"'),
(19, 7, 16, 1, '\"The hotel never updates the status of the order. I called Zomato support after 20 mins of placing the order, then the Zomato support team calls the hotel to accept the order and then they update the order. Next them mention it will be delivered by 1:11pm but again no update. I called again at 1:15pm to check what happened to the order. They again called the hotel to get an update. Then they mention your food is still getting prepared, its in the kitchen. What the hell the order that should have delivered way back its still in kitchen and you guys don\'t mind to update or apologize. I asked to cancel the order and Zomato said it can\'t cancel as it will be waste of food. Great and I am stuck with the hotel\'s will to deliver it or not. Pathetic service.\"'),
(20, 9, 6, 4, ''),
(21, 3, 5, 3, ''),
(22, 7, 6, 1, 'And no response form the restaurant num of the number were working'),
(23, 1, 1, 2, ''),
(24, 7, 3, 1, 'The managers are so rude to the customers. Twice they declined the entry on two consecutive days. We came here looking at the reviews but the behavior of the staff killed the mood. They seemed bias towards the guests and prefer people whom they know at the entry.'),
(25, 9, 10, 5, ''),
(26, 5, 3, 1, ''),
(27, 5, 4, 5, 'worth for money. 5 star from my side'),
(28, 5, 1, 1, '\"Very slow service, food was very cold and tasteless. Tables were not cleaned properly.\"'),
(29, 5, 38, 3, 'foods were decent enough.'),
(30, 10, 20, 1, '\"I have always loved this place but my recent experience was horrible. Even after booking the table well before time , they gave me a table on 1 st floor with all stags around me . The worst part was that it was a friday where they say they allow stag entries. The service was equally poor.\"'),
(31, 1, 27, 5, ''),
(32, 9, 13, 1, 'Too costly... Tastes just ok.. And the service people don\'t have any manners also... I have zomato gold and I went there... As we are going to get free starter... They started treating cheaply...'),
(33, 8, 19, 1, 'Warning : Never go with zomato gold they will throw cheap looks... And treat you cheaply...'),
(34, 7, 27, 1, 'Very bad'),
(35, 7, 21, 1, 'Waste of money...'),
(36, 3, 18, 1, 'The worst place nd the waiter\'s was not cooperative..we have to call nd ask them to bring the starter...zero star..one of the worst experience ever had..👎'),
(37, 9, 25, 1, '\"Dun bombard the menu with so many things, great hospitality and tasty food is what makes a place happening. Not coming to this place ever again\"'),
(38, 2, 30, 1, ''),
(39, 10, 17, 1, ''),
(40, 5, 26, 1, ''),
(41, 3, 16, 3, 'In the beginning it was great place to dine. Then it started getting local. fewer varieties ..Not so great.'),
(42, 2, 24, 1, '\"Now , after about 3 years, it\'s more a typical curry point.\"'),
(43, 5, 24, 1, ''),
(44, 6, 18, 1, '\"Fish was so firm and overcooked, richado overloaded with sweetness.\"'),
(45, 7, 24, 1, '\"Mutton was out of the world, with heaps of Curry leaves(Kadi patta/Karia paku) , super high on heat....Reminded me of a Rayala curry in Dindi (Godavari distt ). Meat was cooked with extra affection that it took me 5 min to chew it like a bubblegum. I really thank myself for not ordering more.\"'),
(46, 7, 28, 2, 'such a disappointment.'),
(47, 6, 27, 5, ''),
(48, 1, 16, 4, ''),
(49, 7, 26, 1, 'I received food with a live green insect in it. What food standards are being followed! This is not expected from a restaurant with an ‘excellent hygiene’ title!'),
(50, 9, 22, 1, 'Zomato please help me to give them negative rating to this restaurant. I fell sick after eating their roti. How awful it is. If your food not good your packaging will not give u business'),
(51, 4, 16, 5, 'Food was nice'),
(52, 7, 18, 1, 'very less quantity and food taste also not gud'),
(53, 9, 17, 1, '\"they don\'t deliver your food. They charge for food but may deliver only half of the order. and when contacte Zomato tell you that Restaurant no. is switched off. Strange, are they in food delivery busines or this is something else? beware\"'),
(54, 4, 20, 2, 'I ordered lunch from here and it took them 1 hr 45 minutes to prepare the food and then another 15 minutes to deliver'),
(55, 10, 16, 1, ''),
(56, 3, 22, 1, ''),
(57, 6, 28, 5, ''),
(58, 8, 18, 1, 'Delivery boy was reluctant to the deliver the order and was unable to navigate the maps. He reached to different location and when I was trying to navigate him he said he don’t know the address which was mentioned'),
(59, 6, 22, 1, 'I ordered from this place from Zomato. The amount of food was almost negligible but the price was extorbitant. I ordered anti oxidant kick and potato flakes. The juice was ordinary and hardly 150ml. The potato flakes nothing more than normal Haldiram mixture. I am definitely not ordering next time.'),
(60, 8, 22, 1, ''),
(61, 7, 23, 1, '\"Quality is also not very good, didn\'t feel anything great about , worst place to order food. Sorry however that\'s the reality.. Thanks.\"'),
(62, 4, 18, 1, '\"I found a small wooden stick. Apparently, not so hygenic and healthy as they claim themselves to be!\"'),
(63, 9, 28, 1, ''),
(64, 7, 35, 1, ''),
(65, 9, 30, 1, 'Will never order food from eat.fit again.'),
(66, 3, 28, 1, 'I had to throw away everything. I don\'t think I can order again with trust on their food quality.'),
(67, 3, 29, 1, 'very poor food and my items were missing'),
(68, 8, 27, 4, ''),
(69, 8, 31, 5, ''),
(70, 9, 33, 1, 'Overpriced crap on the name of healthy food. The food industry has become a dark business nowadays looting customers on the name of healthy food. Quantity is too less at the price they sell.'),
(71, 5, 28, 5, ''),
(72, 13, 28, 1, 'Taste is not good and also not freshly prepared. It seems food was cooked at afternoon and delivered during evening for dinner. Also not spicy.'),
(73, 12, 26, 4, ''),
(74, 18, 38, 1, 'I ordered from eat.fit and sorry to say the food was at all not good. Both taste and quantity were below my expectations.'),
(75, 14, 34, 1, ''),
(76, 11, 36, 1, ''),
(77, 14, 33, 1, 'Zomato delivery guy when delivered I realized that curry was spilling from the box. When enquired he said this is packaging problem.'),
(78, 19, 32, 1, 'After Zomato incident all the restaurant have changed their packing but eat.fit seems to be not bothered.'),
(79, 19, 29, 4, ''),
(80, 18, 30, 1, ''),
(81, 11, 27, 4, 'Overall very pleasant experience.'),
(82, 13, 26, 1, 'This restaurant has no mention of contact details on their web page'),
(83, 12, 2, 1, 'And after a long hard work I found one contact through zomato customer service .....which was also WRONG'),
(84, 15, 32, 1, 'This shows the professionalism and attitude of this restaurant'),
(85, 20, 28, 1, 'They have three to four branches in hyderbad but none of them have provided any contact number'),
(86, 16, 29, 1, 'Moreover zomato also registers as adds restaurants without taking proper details from them'),
(87, 15, 27, 5, ''),
(88, 17, 29, 3, ''),
(89, 19, 31, 1, ''),
(90, 16, 28, 3, 'I would give a half star'),
(91, 19, 34, 1, ''),
(92, 18, 32, 1, 'Horrible experience with eat.fit'),
(93, 13, 35, 1, 'While I am eating my food I get this in my food the steel wire it cut my tongue inside. The worst experience while having my food i am suggesting don\'t buy shawarma from shah ghouse'),
(94, 11, 33, 1, ''),
(95, 17, 31, 1, '\"One who delivered, he was saying that you had ordered only one... When I spoke with the person of hotel who answered my call, said that it may be delivery boys fault,\"'),
(96, 20, 30, 1, 'Seems that no value for customer queries...'),
(97, 18, 39, 1, 'The shawarma roll had uncooked meat! I got pieces of bones too! I\'m very much disappointed with Shah Ghouse spl Shawarma! The quantity may be sufficient enough but quality matters more. If uncooked...it is good for nothing.'),
(98, 15, 36, 1, 'Late delivery almost after 30 mins'),
(99, 15, 2, 4, ''),
(100, 14, 5, 1, 'Never seen any place that is so unhygienic and dirty. Place is so dirty I have no words. Never seen anything like this. Not sure how people order and eat here.'),
(101, 14, 36, 1, ''),
(102, 2, 40, 2, 'good but too expensive'),
(103, 16, 39, 5, ''),
(104, 19, 35, 1, ''),
(105, 11, 38, 1, ''),
(106, 11, 37, 1, 'Generally we get best shawarmas here but I had very bad experience of packing and delivery executive.'),
(107, 14, 2, 1, 'very poor food'),
(108, 12, 5, 1, 'very bad packing n item.....the restuarant rating 4.1 and the food was not matching....its so DISAPPOINTED.......!'),
(109, 12, 40, 4, 'We are ordered at around 5pm but that\'s delivered by 7:15pm. But food was good'),
(110, 12, 6, 1, 'I believe the food was spoilt because of which we fell ill that night.'),
(111, 14, 6, 1, 'worst taste i ever had'),
(112, 17, 1, 1, 'wrong item received'),
(113, 18, 40, 4, ''),
(114, 18, 40, 4, ''),
(115, 16, 38, 5, 'good'),
(116, 12, 38, 1, ''),
(117, 14, 3, 1, 'You ppl always miss the curd and raita and lemons on Biriyani order form this application please provide all the things along with food. If you don\'t change this ppl definitely look your collapsing in soon.'),
(118, 17, 40, 5, ''),
(119, 16, 36, 1, '\"My peace of advice pls don\'t waste your money. Over pricy, but buffet spread has very less items. Very much disappointed and the food was not even hot\"'),
(120, 11, 39, 1, 'Food was not that great just ambience was good very very conjusted sofa area worst ac service was good but I dnt recommend this place for food'),
(121, 12, 4, 4, ''),
(122, 13, 10, 1, 'Shame on the management don\'t even consider the regular customer benfit Please do close it shame on you ppl please don\'t visit hyper local any time 🙏🏽'),
(123, 11, 10, 1, '\"All services delayed, menu changes, very limited options in snack and food when asked they say it’s menu from Delhi and can’t help. Inspite of bill crossing 10k extremely reluctant to leave ice bucket on table. Asked for French fries without chillies twice but no help still after so much time fresh fries are not in. Ok last one came finally when THE MANAGER arrived after being aggressive. They want to offer free drinks but it’s not about money but experience, will share great review next time if we get one as we promised the manager to come back.\"'),
(124, 13, 21, 5, 'Nice food with variety... Wanted to give 5 stars...'),
(125, 11, 20, 5, ''),
(126, 17, 19, 5, ''),
(127, 17, 3, 4, ''),
(128, 13, 1, 5, ''),
(129, 18, 13, 4, ''),
(130, 16, 3, 5, ''),
(131, 20, 9, 1, 'The only thing that was severed as per it\'s level was the welcome drink and unsatisfied food experience.'),
(132, 18, 5, 1, ''),
(133, 19, 3, 4, 'Until raising voice at the restaurant and threarting them on not paying the is when they got the attention and realized that shit food was cold.'),
(134, 11, 20, 4, ''),
(135, 13, 32, 4, 'good experience.'),
(136, 14, 24, 1, ''),
(137, 16, 18, 1, 'Will not prefer anyone to visit this place and was a disappointing experience for a office team lunch and regret choosing this place as option.'),
(138, 13, 21, 5, ''),
(139, 19, 22, 1, 'Really disappointed'),
(140, 19, 20, 4, ''),
(141, 13, 13, 5, 'love it'),
(142, 14, 13, 1, '\"Oh my God, what a horrible place. They have cordoned off small place in the corner and made that a bar. And in the name of making a bar all they have done is put some tables and very high volume speakers inside. They serve cocktails, but I would rather drink water than those cocktails. 4 of us, ordered 8 cocktails and two drinks. Cocktails including lit (a glass of Ice and very little juice, cost 650) sotb, (a glass of Ice with a little of some another juice) old fashion (even smaller glass of Ice with a slice of orange) and pinacolada( this I\'ve no idea what they put for the white color, apart from that it was bad juice again). 3 of us were not even a slightest bit high.\"'),
(143, 19, 27, 5, ''),
(144, 16, 7, 1, 'All this said when asked for way to washroom you are directed outside to the mall washroom!'),
(145, 30, 24, 1, ''),
(146, 25, 15, 5, ''),
(147, 26, 16, 4, ''),
(148, 30, 26, 3, ''),
(149, 25, 15, 5, ''),
(150, 30, 13, 1, 'Be aware people. Avoid this place.'),
(151, 28, 24, 1, '\"The place is good not the staff (untrained), few of the staff behave like we owe them some money and they are doing a favour for us , even though music and ambience are good\"'),
(152, 23, 28, 1, '\"We went for a birthday party, we ordered the drinks , the alcohol was very less so I called the bearer, informed about my issue. And guess what he said “Apke paise se Bacardi or coke hi milega “ and drink was for 349, what I paid for that drink!\"'),
(153, 23, 36, 1, ''),
(154, 24, 38, 4, 'the manager was sweet enough'),
(155, 24, 38, 1, ''),
(156, 24, 34, 1, ''),
(157, 30, 29, 1, 'People who made this place have spent money sadly should have visited good places around world to see its not only ambiance to nonsense music but food quality and service quality which makes reputation. Good bye for ever.'),
(158, 30, 27, 1, 'I had a very experience related to the hygiene of the place. We were in the balcony when we saw cat walk through the separation (it separates balcony from the bar). We told the person serving us and he said that the cat often comes here and does nothing. You don\'t have to worry about anything. Till that time we had ordered our food. But seeing the cat walk by and no one batting an eye we cancelled the order and walked out.'),
(159, 28, 13, 1, ''),
(160, 24, 18, 1, 'I tried to visit the place and asked the waiters if we can use the 2+2 on drinks for non alcoholic drinks as well. The waiter informed us that it is not possible but if we want we can switch to 1+1 for starters. Then a new waiter came and upon ordering he informed us that this is impossible but what was even more frustrating was that he started speaking in Hindi despite the fact that it was obvious that we don’t speak Hindi. Of course we left immediately and don’t think that will ever come back.'),
(161, 28, 14, 1, 'We Ordered alphonso ice cream.. we got it with only 2-3 pieces of mango.... This is not expected from cream stone. As we r regular customer.'),
(162, 28, 36, 1, ''),
(163, 24, 26, 1, '\"I have ordered nuts loaded ice cream and also dry fruit ice cream. Really both ice creams taste was worst. They have added more anjeer rather than other dry fruits.Really I didn\'t feel like I am eating ice cream because of anjeer. I never going to order ice cream from cream stone. People who wants ice cream taste don\'t go for cream stone dry fruit, nuts overloaded and Afghan ice cream.price also not reasonable.\"'),
(164, 24, 39, 1, 'Doesnt entertain ordered placed through food ordering apps. Had to wait for 45 mins before cancelling the order. I even talked to the cashier.'),
(165, 22, 33, 1, '\"After assuring the order will be ready in sometime, there was no update.\"'),
(166, 26, 39, 2, 'Had ordered in for the night. Was really excited to see chilli con carne on the menu. It\'s one of my fav dishes from when I had travelled. Was disappointed with the look and tatse of the items for the price being charged. The food had no flavour at all. The croissant looked like some Patty from a local store.'),
(167, 28, 15, 2, '\"Went for the dinner buffet...was very disappointed with the service and food. The service here is really bad no one is bothered to attend you or clean ur table...have to remind 2-3 times for a single thing. The food is okay, taste is also okay ... not somthing i expect form luxury hotel. The desert section is good but not much variety cud have done better. Not worth ur money\"'),
(168, 21, 38, 2, '\"I had bad experience with buffet,food served was not at all worthy. Service and ambience were good but food was pathetic and just waste of money.\"'),
(169, 22, 38, 2, '\"I visited on 13th for a team lunch. Honestly, the place is really hyped. Starters were good, main course average, and the desserts were below average. They have a live pasta counter, but it was absolutely pathetic. There was no seasoning. Would not recommend.\"'),
(170, 30, 39, 2, '\"I am sorry to say this but nothing, i mean nothing in this place was exceptionally good. From food, to taste, to hygiene, to the supporting staff, to the ambience - nothing just made me food good and welcomed. We were a group of people who went there and none of us were happy with the food, or the food spread, or the taste specially. I remember nothing from what I ate as extraordinarily good. I have been to westin buffet, novotel buffet, trident buffet, avasa buffet and alllllll were way way better than this place. There has been absolutely no work done on the ambience to look pretty or attractive. It also wasn\'t that clear like other restau. the place did not even smell good. I would never visit this place.\"'),
(171, 29, 37, 4, ''),
(172, 21, 39, 2, 'very less quantity.'),
(173, 30, 28, 3, ''),
(174, 23, 30, 2, 'food quality was not good as expected'),
(175, 25, 39, 2, 'no butter added'),
(176, 30, 40, 2, ''),
(177, 28, 39, 2, 'Delivered cold food. food is not even warm.'),
(178, 24, 25, 2, 'Not so good..'),
(179, 26, 38, 2, 'waste'),
(180, 25, 35, 2, 'not that great taste it quality id say'),
(181, 28, 9, 2, 'why don\'t you consider instructions given by the customer. I requested not to put whipping cream. This is the 3rd time it happened and i never gave review earlier but this time really got frustrated. Please follow customers instructions.'),
(182, 27, 40, 2, 'bad packaging. all the almond feasts had barely more than one almond each.'),
(183, 27, 39, 2, 'can do better'),
(184, 24, 7, 2, 'I don’t feel the taste of flavour that had ordered'),
(185, 21, 24, 2, 'I got both Same products'),
(186, 26, 5, 3, 'Just Average. Ordered some 7-8 times. They could definitely improve on the food quality they deliver. Food quality is always below average.'),
(187, 25, 2, 3, '\"Loud music, average food and untrained staff sums up the place.\"'),
(188, 22, 34, 5, ''),
(189, 21, 12, 4, ''),
(190, 21, 1, 2, 'Above all the DJ was playing all wierd songs and was very loud'),
(191, 25, 24, 2, 'Overrated! Average food. Limited menu!'),
(192, 23, 12, 3, '\"Service is also average. Not served until called upon, 10-15mins after arrival.\"'),
(193, 24, 40, 5, ''),
(194, 23, 16, 2, 'Not a place I would visit again. Menu is very limited andVisited on a Friday night and totally disappointed. Crowd also not good . Never visit would be my advice...'),
(195, 23, 2, 2, 'Place and music was good. Food was tasteless. Not upto quality. service was better but I have noticed crew was busy moving/jumbling the seats all over floor all the time.? Not a very pleasant experience for a first time visitor.'),
(196, 26, 18, 2, 'A decent place for party and a cozy climate too. Veg manchurian was great and chicken kebabs were fine. First thing that disappoints me is there is no drought beer and the most annoying thing was the behaviour of the manager ‘AKTHAR’. There has to be some respect towards the guests and the managers was bossing everyone around. I’m giving this a two star only coz of him else I would have given a 4 maybe if I had the drought beers.'),
(197, 30, 14, 3, '\"Average ambience , average food and average experience. Not worth the 500 bucks they charged for entry as cover which was not even adjusted with the bill. Music was too loud making it difficult to sit through. A number of items on the menu were unavailable though service was prompt. Had high hopes because of the Zomato rating but was thoroughly disappointed. Should give it a miss if one is looking for a classier experience.\"'),
(198, 25, 36, 2, '\"Place looked good when entering but that was it, it went downhill from there. It took three people from their staff one after the other to confirm what we had ordered and it was only one dish. We had to wait for 25-30 minutes for the order only to realise they had served it to somebody else. This was when there were only 5 tables occupied. The staff seemed inexperienced.\"'),
(199, 29, 40, 3, 'The toilet\'s location is just bad. Whenever somebody opens the toilet door the whole place stinks up like piss.'),
(200, 21, 13, 2, 'We just gave up on the place and left paying for the drinks that they had managed to serve.'),
(201, 27, 17, 2, 'Did the cook change?'),
(202, 18, 18, 2, 'no quality'),
(203, 19, 38, 3, 'EXPENSIVE'),
(204, 21, 5, 2, 'I don\'t like spicy food but after eating biryani here I feel like it would be good if it is spicy'),
(205, 1, 12, 3, 'can be better if provided fresh food'),
(206, 7, 33, 2, ''),
(207, 29, 8, 2, 'Music is too loud to have conservation in lunch.'),
(208, 3, 22, 2, 'The food quality has gone down compared to its initial opening period. The rice is too bland and the chicken dishes are a bad excuse for being a lazy chef.'),
(209, 28, 3, 2, '\"Very disappointed with the food that I ordered from Yum Yum Tree today. The quantity of the rice for the juicy mutton Marag was less (I ordered full) and there were only bones in the mutton, no flesh at all. Felt cheated for the money I paid. Shawarma was good. I don’t think I’ll try the food from here once again.\"'),
(210, 15, 4, 5, 'The outlet looks good. The service is excellent.'),
(211, 2, 22, 2, 'Food is cold.. N not even tasty'),
(212, 13, 29, 4, 'good but expensive'),
(213, 6, 19, 2, 'The service is very bad. They are not offering the seats when they have whole restaurant empty. The food is good but the manager and staffs are not that encouraging.'),
(214, 4, 11, 4, ''),
(215, 13, 33, 2, 'Ordered paneer lababdar but der was hardly 4 pieces of panner on it. Disgusting'),
(216, 13, 9, 2, 'disgusting paneer chilly. it was floating oil inspite of ordering dry. i have snapshot which will make it clear. quality of delhi 39 is going worse over time.'),
(217, 29, 2, 2, 'worse quality of food'),
(218, 29, 16, 4, ''),
(219, 10, 29, 4, ''),
(220, 7, 39, 5, '\"The quality is good,\"'),
(221, 8, 37, 3, '\"But found hair in my order which is not good , please be sure the food is good while delivering it !!!!!\"'),
(222, 7, 7, 3, 'Hope it would be better next time !!'),
(223, 13, 2, 3, 'Cool place which will be available till 1pm in HYD beat icreams and very unique especially they have wide range of varieties in chocolate types and service is also quite good except their GM singing in the outlet :p'),
(224, 12, 1, 3, ''),
(225, 16, 28, 3, '\"It\'s a ever busy place that reeks of laughter & sugar in the air. The cream stone brand is ever known , but what sets apart gachibowli from others is it\'s courteous staff & ambient seating area. Its a go to place for ISB, IIIT & HCU students.\"'),
(226, 25, 25, 3, '\"They didn\'t packed the ice cream nicely ie.. didn\'t keep any dry ice, because of that it got melted and spreads in the pckage. A bit disappointed other than that taste is good.\"'),
(227, 16, 34, 4, 'The food is economically reasonable.'),
(228, 18, 26, 3, '\"Their gol gappa is a must try. It is different from what we get in Hyderabad. Chole bhature was also good. Ignore the attitude of the staff, especially the one at the counter.\"'),
(229, 6, 19, 3, 'I have been visiting/ordering from this place for over 2 years now. Chaats here used to be amazing but the quality these days has gone down.'),
(230, 23, 7, 5, ''),
(231, 12, 21, 3, ''),
(232, 13, 4, 5, ''),
(233, 14, 36, 3, ''),
(234, 2, 6, 3, 'Delivery and taste wasn\'t that good.'),
(235, 27, 9, 3, 'I had received in 55 mins it\'s was not hot at the time of delivery'),
(236, 9, 16, 5, 'I like this place for the mayonnaise they provide. It\'s really tasty and thick.'),
(237, 29, 21, 3, 'too small'),
(238, 2, 37, 2, 'bad taste'),
(239, 4, 20, 3, 'Food taste was average'),
(240, 20, 12, 4, ''),
(241, 13, 13, 5, 'good'),
(242, 8, 5, 3, '\"Went for a lunch on a weekend. Ordered a biryani, in which I felt the rice to be slightly undercooked. The chicken do pyaza ordered had chicken pieces which were not mixed well with the gravy. Ambience is not same as what is seen in the photos. Staff is courteous but lacks experience in hospitality.\"'),
(243, 24, 3, 3, 'Could be much better!'),
(244, 22, 30, 3, '\"Been to this place very recently as one of my friend suggested me to try this out.Ambience wise it was decent,didn’t had much rush or was not that crowded ..nice place ..Food was good ,Had Crispy Corn,Bira and Corona 😉 Chicken Spicy Table which I liked it among all,Laila Biryani which I first heard and had in Pine and Dine and after that I am having that Biryani here..ended up with mockatil Dp special which was blend of Guava and Peach,It was good...Can try this place once\"'),
(245, 17, 1, 3, 'It average restaurant. There will be no much varieties. But ambience wise it looks good. Has to implement to new kind of varieties.'),
(246, 6, 33, 3, 'One time go. Non veg food is good but veg food is very bad. We went for project party. Ambience is like any other ordinary restaurant. Overall experience average'),
(247, 15, 1, 3, 'The ambience is really nice. The food items are a bit costly and I personally felt the portion sizes are less too. The food items are tasty.'),
(248, 2, 33, 3, 'The food was not up to the mark. dish had strong flavours. Overall did not like the food.'),
(249, 6, 38, 3, '\"The food is little expensive but unlocked gold benifits, so felt somewhat reasonable, tried chipotle chicken skewers and chicken bbq pizza , the pizza was great and liked it a lot, the service was very very slow, it took 40 mnts to serve my order\"'),
(250, 19, 24, 3, 'The place is know for its buffay but I tried only the Thai Red curry chicken with plain rice. The food was really nice but the service was a tad slow.'),
(251, 28, 40, 3, '\"Went with family on Saturday, Nov 3rd. Only one more table was occupied so was worried about the place. We were seated very quickly and food order taken quickly and served within reasonable time. Food was okay not that great taste, the chicken wings were good though. Choice of non veg soups limited to 4 types and only 2 of them were available that time. Chicken quesadillas didn’t taste like a quesadilla. It was like some chicken pieces wrapped in a roti. There is nothing compelling to visit this place the second time.\"'),
(252, 11, 21, 3, '\"3.5 Went here for dinner on Saturday night. Almost empty, only two other tables occupied. So were sceptical, anyways got seated. Inspite of this it took good 15 min anyone could attend us. The reason cited was heavy rush in the partner restaurant above!! Wiered.. however the food was served quickly. Overall ok experience, nothing compelling to visit again.\"'),
(253, 3, 31, 5, 'It\'s quiet and nice'),
(254, 18, 15, 4, '\"Ok place. The food was just fine, but since it is reasonably priced, its decent value for money.\"'),
(255, 6, 37, 3, 'Service is ordinary though.'),
(256, 15, 20, 3, ''),
(257, 20, 18, 3, '\"Bottom line, if i want to eat relatively inexpensive Chinese food, then this might be a choice, else no.\"'),
(258, 26, 40, 3, 'the quantity of soup was half of what they provide at the restaurant'),
(259, 21, 40, 4, '\"Food was good but please send some forks, tissues and sauce packets from next time…\"'),
(260, 30, 17, 3, 'Not exactly the best place for value for money and food isn\'t exactly the best either..meat is chewy and badly cooked...ambience is a good thumbs up however'),
(261, 1, 5, 3, '\"visit once again with my friends, it gets better than before.\"'),
(262, 16, 11, 4, 'it was a ok ok'),
(263, 25, 36, 3, 'was very salty'),
(264, 16, 17, 3, 'quite expensive for me'),
(265, 3, 19, 5, ''),
(266, 20, 29, 3, 'too oily'),
(267, 19, 27, 5, ''),
(268, 30, 18, 3, 'good'),
(269, 16, 1, 3, 'kk but not great'),
(270, 30, 30, 3, 'The Sambar had a stale smell.'),
(271, 4, 9, 3, 'good but not the best'),
(272, 18, 25, 3, '\"we have ordered rava dosa ,rava masala and ghee idily. idliy is very tasty and rava dosa is average , found hair in rava dosa :(...this should be taken care while cooking\"'),
(273, 13, 2, 3, 'wrong item received'),
(274, 13, 5, 3, 'I have not received my Pepsi can'),
(275, 27, 19, 3, 'local food is now tasting better than the branded ones'),
(276, 3, 12, 3, '\"cold food, hot pepsi ... bad combo\"'),
(277, 18, 37, 4, 'smaller pieces this time'),
(278, 28, 8, 3, 'usually they give it in a bucket. this time it was jus in a paper box. so the pieces were not good when we got it'),
(279, 17, 24, 3, 'Earlier I had bad experience with this restaurant..Quality was bad... Ambiance was terrible...Now I see quality has improved but Ambiance has not improved much.... Not at all hygiene'),
(280, 21, 7, 3, '\"Went here for lunch with family members, ordered South Indian thali which is way more better than chutneys. Ambiance was okay. Service can be improved as we have to ask more than once to refill few items. Overall a good experience.\"'),
(281, 1, 17, 5, 'nice service and the attitude of the staff is friendly as well. The food was good both in terms of taste and quality.'),
(282, 15, 38, 4, ''),
(283, 23, 11, 4, ''),
(284, 2, 11, 4, 'The quality is good'),
(285, 21, 26, 3, '\"But found hair in my order which is not good , please be sure the food is good while delivering it !!!!!\"'),
(286, 10, 30, 3, 'Hope it would be better next time !!'),
(287, 2, 35, 3, ''),
(288, 12, 5, 3, '\"Its a creamstone, what can I say. Goodnicecream is my weakness. But this branch has just become super busy. Can you see how many zomato guys have lined up for the order.\"'),
(289, 10, 4, 5, ''),
(290, 5, 10, 3, '\"They didn\'t packed the ice cream nicely ie.. didn\'t keep any dry ice, because of that it got melted and spreads in the pckage. A bit disappointed other than that taste is good.\"'),
(291, 21, 19, 3, '\"The food is economically reasonable. The North Indian dishes including chole kulche, chole bhature and paneer butter masala are comparatively better than the chaats.\"'),
(292, 26, 19, 3, '\"Their gol gappa is a must try. It is different from what we get in Hyderabad. Chole bhature was also good. Ignore the attitude of the staff, especially the one at the counter.\"'),
(293, 1, 16, 3, 'I have been visiting/ordering from this place for over 2 years now.'),
(294, 23, 32, 3, '\"Not the place if you belong to northern India. No doubt, the hygiene is well maintained but food is not as delicious as I expected it to be. Service is quick though. Also they dishes are quite overpriced.\"'),
(295, 18, 19, 3, 'Ordered paav bhaji chole bhature and papdi chat!'),
(296, 28, 10, 3, 'But they forgot to deliver the chat!I was a bit disappointed by that.But the taste was good.'),
(297, 20, 40, 4, 'Small restaurant. Staff is professional. Food I would say was average but price was not average.'),
(298, 21, 15, 3, 'Been to this place a couple of times and enjoyed decent food. But my last visit to this place disappointed me a bit.'),
(299, 23, 2, 3, ''),
(300, 17, 11, 5, ''),
(301, 6, 28, 3, 'shikanji is a mix of lemon and mint and people who like the combo will like that'),
(302, 22, 20, 3, 'Lassi is thick and as Punjabi as u like'),
(303, 27, 15, 3, 'I set up high expectations for the place with respect to Punjabi food but.. the food was ok-ok the lassi was very nice. The price is reasonable.'),
(304, 3, 39, 3, '\"Food was good but the service was so slow that we did not enjoy much. The ambience is ok ,gives a dhaba feel. They have good options both veg and non veg. Veg food was tasty as well.\"'),
(305, 17, 39, 3, '\"Food was really nice...it was just traditional touch of.punjab...since I am punajabi ,so the taste.. especially rasile rajmah... Management could work on more with ambiance n services amenities. For food 5star\"'),
(306, 21, 18, 3, 'It\'s a small place so gets crowded easily and noisy easily. Although the interior is interesting don\'t expect much of an ambiance. Service was prompt and their happy faces was refreshing after a long day. We just tried limited items and they were decent. Good to visit for a quick non-nonsense dinner.'),
(307, 30, 32, 3, ''),
(308, 10, 12, 4, 'Average place with average food and ambience. The food is just ok with okayish ambience.'),
(309, 17, 28, 3, '\"This is a small Punjabi cuisine restaurant where we went for dinner. \'dahi ke kawab\' was awesome. Also the paneer lababdar was delicious. We didn\'t like the rotis much. The naan was little thicker than it should be, and the lachha paratha was more oily. But overall we liked the food. The service is also good. The waiters were polite and asked for feedback after the dinner. We will definitely visit again to try other dishes.\"'),
(310, 8, 38, 3, 'Update:Went recently on Independence day. The paneery curry was just color and chilli powder. The paneer pieces were also very stiff. The rotis were also very rubbery.'),
(311, 10, 40, 3, '\"bhindu do pyaza is good, but chapati is not well cooked\"'),
(312, 24, 24, 4, ''),
(313, 8, 34, 3, 'food quantity is small'),
(314, 11, 37, 3, 'Ordered bone less mini biryani for 160. Taste is good but quantity is very less and might be in hurry they have delivered without raita and gravy. I give 3 star rating for food. Worth-able trying once.'),
(315, 7, 5, 3, '\"Food is okay but not that good , you can miss ordering food from here and you will not miss anything. \"'),
(316, 15, 13, 3, 'need to improve quality'),
(317, 29, 16, 5, ''),
(318, 28, 5, 3, ''),
(319, 10, 5, 3, 'better to add an option to choose the masala... whether to take double or single... as there is no option to choose double masala'),
(320, 7, 7, 3, '\"Went there for team lunch last week. From the outside ,it looks good. But inside, hygiene is not maintain. We ordered for chicken biryani, chicken 65 ..... . It took sometimes to come on table. But food was very very very spicy. I was not able to eat. But my hyd.friends are enjoyed it.\"'),
(321, 20, 27, 4, 'good'),
(322, 26, 2, 3, 'not much ecpected'),
(323, 1, 18, 5, 'sweet!'),
(324, 20, 39, 5, ''),
(325, 4, 21, 4, '\"Have been here many times. I was a frequent since 2006. staffs are friendly. The lift is old, dark and horrible. It feels it will breakdown, except that it doesn\'t. They tried installing another lift but that turned out to be scarier that the first one. Coming to the food. Its just okay. Nothing outstanding or too bad.\"'),
(326, 9, 19, 5, ''),
(327, 16, 19, 3, '\"Food was okay. Wish they didn’t put nuts in the pasta. Mushroom soup was good. Chicken and Fish was delicious, but too spicy. I mentioned no spicy in the Zomato notes, but it was super spicy.\"'),
(328, 30, 25, 3, 'Had dinner Menu is perfect. In starter broccoli nuggets was delicious. Main course was regular like any other restro.Service was ok. Will be back definitely!.Applied Zomato gold buy 1+1 free offer on food for which wana give .5 star more.'),
(329, 16, 8, 3, 'Restaurant was Not very much active.. lack of cleaning and the staff looks very lazy. Food was average ..................................:::::'),
(330, 24, 20, 3, '\"Ambience is okay. People are rare. Staff are good. I didn\'t like the food, chicken biryani and rajasthani laal meat were not good. Price is very affordable.\"'),
(331, 7, 24, 3, ''),
(332, 27, 27, 3, ''),
(333, 11, 15, 3, 'Came for office party.. food is just okay.. they have dance floor also.. ambiance is okay not very great.. maybe top floor have better ambiance.. overall ok ok place..'),
(334, 23, 34, 3, '\"Pub was superb...rooftop, great ambiance, good music , dance floor but food was ok..most of the popular drinks was not available ☹️.. overall good😊\"'),
(335, 24, 21, 3, 'Nice place with an awesome ambience.'),
(336, 26, 30, 4, 'Delicious food and customizations are considered.'),
(337, 9, 17, 3, 'Service must be improved as I didn\'t found any one to guide or receive when I entered (12:30pm)'),
(338, 13, 33, 3, 'Ambience in here is nice it\'s my go get hangout place and sure about food it\'s good .. good for casual and team especially when there is a match coz it\'s got a big screen with open roof top space.'),
(339, 16, 28, 3, 'I been to this with my office colleagues. Everything\'s seems perfect expect the DJ in this bar. They need to improve on this asap. Drinks are little expensive'),
(340, 9, 30, 3, '\"Food is horrible , cost( both bar and food ) are too costly and the taste of food don\'t justify the price.but ambiance is okay , music is nice . Good place for drinking but food ! Ah ah no\"'),
(341, 6, 26, 3, '\"been here couple of times on weekdays, it has both open area and closed area too the ambience was nice. the quality of food is ok ok...DJ was good. The service was fine but you are not valued if you are going as a stag... After spending some time felt its too cold outside so asked if I can go to closed area but they refused even after requesting which made me to leave the place earlier.\"'),
(342, 26, 40, 3, ''),
(343, 20, 25, 4, '\"Food:4/5, Ambience:4.5/5, Music:4.5/5, Service:3/5\"'),
(344, 14, 7, 3, 'soso'),
(345, 26, 17, 3, 'not bad but nothing special'),
(346, 6, 23, 3, '\"The quality of food and drink was really good. What turned out to be the biggest let-down was the service. A few of the waiters are really ignorant. They look for bigger groups to serve and circle around them only. With much effort we got a waiter to come and take our order. After waiting for half an hour, we enquired only to find out that the waiter had not put in the order at all. We got a new waiter to whom we had to re-iterate the whole thing. Although the new waiter was really polite and helpful, but our experience was already ruined. So my humble request is, if you don\'t like to serve a smaller group, mention it outside and we will definitely avoid your restaurant.\"'),
(347, 3, 36, 3, ''),
(348, 19, 7, 3, ''),
(349, 22, 3, 3, 'The best hangouts place with friends and girlfriend and it had good dance floor. I got good variety of liquor brands also but the food is main concern in terms of both taste and quantity.for quires contact sujith_reddy12 in instagram'),
(350, 10, 1, 4, 'SKYHY'),
(351, 16, 37, 4, 'Food was mediocre and had to wait an hour just to get the starters. A rooftop devoid of a view . Only good thing about the place was the dance floor .'),
(352, 3, 1, 3, 'Good for group outings. They provide rooftop seating arrangements.'),
(353, 26, 1, 3, 'Music can be better for the dance floor. Ambience is okay. Food is average. Good staff though. They are helpful and friendly.'),
(354, 26, 11, 4, 'Been here on a Saturday evening. The service looked a bit slow but the food tasted good. They allow stags without any cover charge but they don’t let you enter the dance floor if you’re one. The staff is also very co-operative. Go here as a crowd and you would love it.'),
(355, 21, 25, 3, '\"5 of us had been to dis place on 27th night, good place, decent set up, food is good, DJ is good, parking,lift area poor,conjusted weekends.\"'),
(356, 24, 17, 3, '\"Was there for dinner on a weekday. The ambience is sombre. They have a wide variety of menu ranging from European to Chinese to Hyderabadi biryanis. Tried the Virgin guava Mary mocktail,which was really good. The chicken quesadillas were delicious. We also had spicy chicken sizzlers which was also good. Had an overall good experience.\"'),
(357, 9, 28, 3, '\"We came at this restaurant for a drink on a weekday at it didn’t disappoint. Music was good. We ordered a Pizza, Garlic Bread and Beers. Pizza was the best I’ve ever had, but Garlic Bread was disappointing. Also, we had a couple of Beers and we ordered a couple more. They were unopened, we changed our mind and asked the waiter to exchange them with Coke which was refused. I didn’t understand the waiter’s logic and I didn’t argue. Also, apart from Beer everything is costly here. I’m going for a 3 out 5 for this restaurant.\"'),
(358, 24, 24, 4, '\"If you are in NYC and its weekend, this place is a must visit place. Awesome crowd, ambience is good overall a perfect weekend hangout place whether you hangout with friends or as a couple.\"'),
(359, 10, 12, 5, 'A must go place.'),
(360, 5, 34, 4, 'Good place to hang out with family and friends. I tried couple of Cocktails and Shots. Cocktails were not strong at all. So it was more of plain juice. I would recommend that in the Cocktails menu the should also mention in details what\'s the base and also the content of alcohol.'),
(361, 15, 16, 3, ''),
(362, 20, 1, 4, 'Starters were great.. really nice.'),
(363, 28, 1, 4, 'Music was loud and lively.'),
(364, 2, 11, 4, 'We had an evening office party here and that too on a Friday. The atmosphere was lively and the terrace view was sublime. The food tasted good though people won\'t visit the place for the same. A bit heavy on the pricing side but it was worth it.'),
(365, 3, 38, 4, '\"Vibrant ambience with a loud music, enjoy the dancefloor, beer is good, service is very attentive, food could be better. Bollywood night was happening.....\"'),
(366, 18, 37, 4, 'Superb place. cool place to hangout.. having both terrace seating and indoor seating separate room for Dance floor makes this place unique .. great ambience .. brewed beer was also good.. decent and limited crowd. table booking is highly recommended.'),
(367, 5, 25, 4, '10D is one of the best places to hangout witj friends and families. Great ambience with awesome views. Food and staff behaviour is very kind.'),
(368, 6, 37, 4, '\"It is a good place but the one in Begumpet is a even better. The food is good. The music calms you on a bad day . If you have the option to the the Begumpet one,then go for it.\"'),
(369, 14, 38, 4, 'We happened to visit this place with office frenz and trust me the rooftop was awesome..the staff was courteous and everything was well managed..we had loads of fun and the food was tasty! I keep visiting this place and always will!'),
(370, 22, 11, 4, 'It was a lovely experience. We ordered kimchi fried rice and exotic assorted veggies with chili basil sauce. Loved both of them. They were properly cooked . Mushrooms in kimchi fried rice were just delicious.'),
(371, 8, 39, 4, 'Not to forget the dessert: baked Alaska: it\'s a must try.'),
(372, 17, 40, 4, '4 stars coz it\'s quite far. Baring that it\'s a pretty sweet restaurant'),
(373, 18, 4, 4, 'Go to place for office team dinners. Food is simply amazing with a large variety of dishes being served. felt the lighting can be improved a bit.'),
(374, 22, 35, 4, 'The place has a nice vibe and the dishes are really tasty and they have a lot of options in buffet. Very nice ambience and polite waiters. The place little pricey but good to go with family.'),
(375, 26, 30, 4, 'The place is really nice. I would love to go ther more often since the staff and the place is really nice.'),
(376, 20, 39, 4, '\"Nice place, good location.. descent ambience.. and very good service by Sahoo. Had a descent time with friends. Will surely come back again...............\"'),
(377, 11, 32, 4, 'A cool place to for casual hangout’s. Do not expect a crowd on weekdays but weekends it’s good. Good food good ambience. Service could a little faster but it’s fine as the music compensates it.'),
(378, 5, 2, 4, 'Food is just average but the ambiance and the quality of service is amazing. I love their Chicken Lasagna and Stroganoff. Chicken Nachos and 10D Special Chicken Pizza are the dishes I almost always order. Their beers are good.'),
(379, 21, 16, 4, '\"Ambience is absolutely fantastic, it feels like a much more expensive place than it is. Their pub lunch menu is a great idea what you get is more than worth the money you pay. I had bolognese spaghetti with red wine, it wasn\'t the best one I\'ve had but still tasted great.\"'),
(380, 16, 6, 4, 'Really good place in gachibowli. Ambience is average. But good place with good vibes and crowd. They have their own brewed beer with taster pack available. Open area is good to enjoy a nice breeze and good view of the area. They have a dance floor. There are karaoke nights as well. On weekends there might be cover charges and would suggest going in couples to avoid stag fees. Entry is from side in the building SLN terminus. lunch menus are bad. Food is just average here. Most of the gravies taste same and brown in color. Overall worth a visit. Good place to enjoy music and have fun.'),
(381, 16, 4, 4, '\"Well I have lost count how many times I have visited this place.Not only this one the Punjagutta branch as well and the place has never disappointed me.Went with few of my friends after office,the ambiance,music and food is too lovely and bang on-always.Crowd too is good.Simply love this place.\"'),
(382, 21, 15, 3, 'Decent place. Food is good. Music is average. Staff are polite and service is good. Not an pub compared to the term pub. No dedicated dance floor.'),
(383, 5, 20, 4, ''),
(384, 9, 38, 4, ''),
(385, 25, 1, 4, ''),
(386, 25, 26, 5, 'good place for my birthday with my friends.'),
(387, 13, 22, 3, '\"So much hype for a sub par biryani. Ordered paneer biryani, taste did not live upto the hype. The taste was bland, could have been better. Any local biryani place has much better biryani at a lower price.\"'),
(388, 6, 38, 3, 'Ordered the much hyped about Behrouz biriyani today.Wanted to have it since ages.So today when the package came I was really thrilled.The biriyani comes in a stunning package.And as you open it the room fills with amazing Biriyani smells.The biriyani was looks good with a lot of almonds and greens as garnishing on top.The biriyani comes with raita and a gulab jamun too.The biriyani is quite different from the other popular biriyani in Hyderabad.This one is extremely sutle in taste.The chicken was tender and was breaking apart easily. The rice grains were staying apart and was expertly cooked.Overall the biriyani was a really good experience.But I personally prefer the spicy type when it comes to Biriyani but this biriyani is different and it is mouth wateringly delicious in a completely different way.'),
(389, 12, 10, 3, '\"The biryani experience started well. Having said that, it\'s not as good as earlier experience now. Two simple issues: chicken biryani has no chicken and dry fruits have disappeared. Should bring them back?\"'),
(390, 29, 24, 3, '\"I ordered Lazeez Bhuna Murg Biriyani. After seeing the Royal Box of Biriyani, I was really happy. Whole packaging of raita and Gulab Jamun was upto the mark and really good. But then the taste, it tastes sweet. Everything was good from packaging to the Mouth freshner they gave but I didnt like the taste of biriyani.The quantity was good, and was garnished with almonds and cashew.\"'),
(391, 13, 21, 5, ''),
(392, 27, 13, 3, 'It is just average coming to taste. You dont feeI that lavishness as you feel from the hoardings and all. I have ordered from swiggy and quantity is not sufficient for 1person. At this price better we can pick many options. Better dont take it.'),
(393, 9, 30, 3, '\"I have ordered two box\'s of Chicken Biryani the chicken piece were too less, not what I was expecting for the amount I have spent  on a so called Royal Biryani... hope the feedback is taken positively and acted upon\"'),
(394, 9, 31, 4, '\"Nice place, good ambience, crows is ok. Heard jubliee hills branch is better than this. But a nice place to go and hangout. Surely Recommended\"'),
(395, 4, 13, 4, 'The place is just the same as they have in Jubilee Hills. The waiting staff is humble and the ambience says the rest... a must visit if you’re in NYC and need a place to chill'),
(396, 22, 19, 4, 'Great Ambience and music! Good service even though a crowded club.. nice rooftop as well as interiors.. had a good time.. would recommend one visit!'),
(397, 5, 16, 4, ''),
(398, 18, 4, 4, 'Visited this place twice and it’s completely LIT'),
(399, 20, 2, 3, ''),
(400, 21, 40, 4, 'Music is also nice and will make the non dancers groove too😀'),
(401, 6, 39, 4, 'Food is amazing and budget friendly 🤘🏻'),
(402, 17, 17, 4, 'Try to choose rooftop sitting'),
(403, 11, 3, 4, 'One of the hippie place in Hyderabad fro Fridays and Saturdays'),
(404, 12, 39, 4, 'Nice ambience to enjoy the night'),
(405, 12, 4, 4, 'Food is not that great'),
(406, 16, 6, 4, 'But their alcohol section is decent'),
(407, 25, 15, 4, 'Service is fantastic and the waiters and staff are really kind'),
(408, 12, 37, 4, '\"I was there with my friends yesterday for dinner. We were served by Papu, he did great service. We ordered all south Indian dishes, each of them were tasty.\"'),
(409, 6, 24, 4, ''),
(410, 5, 1, 3, '');
INSERT INTO `review` (`review_id`, `member_id`, `restaurant_id`, `rating`, `comment`) VALUES
(411, 29, 23, 4, 'Midnight Craving.If you are in NYC must try.It has a very rich taste which is more than enough for 2 people.'),
(412, 25, 1, 4, 'Tried ‘Pathar ka Ghost’ and loved it. This place is famous for Haleem which I am yet to try. Tried a couple of Chinese items as well and loved them. All-in-all a very reputed and reliable place to dine-in'),
(413, 11, 16, 4, '\"This place known for its haleem, every year i go there and taste it-love their haleem and also their hyderabadi sweets like kubani ka meeta...\"'),
(414, 22, 27, 4, 'Well... Had to eat veg all the time I have visited this place since my wife is vegetarian but believe me restaurant famous for haleem also makes veg items delicious..'),
(415, 1, 29, 5, ''),
(416, 5, 12, 4, 'One of our favourite places for hangout'),
(417, 21, 40, 4, '\"Went with my office team for lunch. The wait time was almost 20 mins, so better call them up beforehand if you are a corporate team.\"'),
(418, 19, 4, 4, ''),
(419, 26, 26, 4, '\"Coming to price and taste, it is worth the money with quantity and taste both satisfying the money!\"'),
(420, 4, 23, 4, ''),
(421, 17, 19, 4, 'The ambiance was very nice. It was my first time at this restaurant and it was a good experience overall. We ordered chilly chicken and veg Manchurian and both were upto the expectations for the taste.'),
(422, 30, 3, 4, 'Greetings. The place is very ambient. Roof-top gives you a very good view. Baskets are hung here as well to add to the ceiling beauty! Pocket friendly prices. Staff is helpful and courteous. They play good Bollywood music preferably Punjabi 10:30 PM onwards with a ‘Dholwala’ playing Dhol to dance on the beats.'),
(423, 27, 11, 4, '\"Do carry your ID cards with a visible photo, mindfully!\"'),
(424, 28, 22, 4, ''),
(425, 3, 23, 5, ''),
(426, 5, 7, 4, ''),
(427, 18, 11, 4, ''),
(428, 20, 40, 4, ''),
(429, 25, 16, 4, '\"Good ambience both sitting in or in open terrace. Food is okaish, as it doesn\'t justify the cost of items but some items tastes good.\"'),
(430, 15, 38, 4, '\"Good place to go on a date, if you wanna sit outside when weather is in your favour, but great place to hang out with friends with indoor sitting\"'),
(431, 4, 35, 4, 'Yesterday we had a dinner at this place the food was good much taste we ordered kebab. Chicken biryani and thum up the service was late but good we enjoyed'),
(432, 12, 20, 3, ''),
(433, 3, 39, 4, 'Over all I would keep ordering and would trust when it comes to quality food'),
(434, 30, 3, 4, '\"Ordered 1 Zafrani Chicken Biryani and 1 malai kebabs. Both the items were very good. Quantity was enough for 3 people , delivery was quick. Bottom line is we had a simple and lovely lunch. Thanks !👍\"'),
(435, 24, 19, 4, '\"This place was recommended by a local friend after learning that I do not favor spicy biriyani. And I was thinking about trying hyderabadi biryani once again before I leave. Yes pista house lived up the expectation. Good packaging, prompt delivery, good taste..\"'),
(436, 17, 34, 4, 'Had a nice evening there yesterday. Food was decent. Need to improve little more. Ambience was good. Staffs are friendly'),
(437, 22, 31, 4, ''),
(438, 7, 21, 4, 'Good place with nice ambience. The staff was polite and food was served very fast.'),
(439, 24, 24, 4, 'We\'ve been to this place as an office team outing in the afternoon. They let us play DJ for ourselves though it was afternoon. We had lots of fun and had a great time. The place was very nice and food as well. Thanks!'),
(440, 26, 24, 4, 'One of the best roof tops around and is pocket friendly with delicious food. Their service is good. They got good music going. They have wide variety of cocktails and mocktails to choose. A nice place to hangout in the evening with your friends and loved ones.'),
(441, 30, 36, 4, '\"I liked the ambience, however i feel there is a scope for improvement in the drink selection and food. The taste for authentic Indian cuisine is maintained\"'),
(442, 7, 11, 4, '\"Nice place to visit at evenings, visited a long time ago friendly staff and the food was great. If you want to spend some peaceful time with your loved once, give a try\"'),
(443, 16, 12, 4, '\"Been here two times, once at the rooftop and once inside. Both of times it was fun, service was quick and staff was courteous, full points for that. Dance floor is amazing, always gets everyone dancing with their jam. Only thing lacking is the food department, need to work on that a bit. But overall a nice experience and recommend.\"'),
(444, 21, 20, 4, '\"The moment we enter in we will fall in love with the place ., especially in the nights .. great view , friendly staff and yummy food.\"'),
(445, 17, 2, 4, 'Food is good but not up to the mark and decor is not good at all. Not suitable for family. There is a A.C. on upstairs bit that also not that much hyganic'),
(446, 16, 12, 4, 'tastes good service is little to improve. Will not say the best but better to go here if planning to eat'),
(447, 13, 29, 4, 'THE RESTAURANT RECIVE ORDER POLITLY . QUAMNTITY AND QUALITY IS GOOD . PRICE IS ALSO READONABLE . MANY ITEMS WITH GOOD TASTE. AND LESS PRICE .'),
(448, 3, 16, 4, 'good'),
(449, 10, 21, 4, 'good'),
(450, 8, 40, 4, 'good'),
(451, 11, 6, 4, 'nice'),
(452, 21, 37, 4, '\"less quantity less piece\'s make it improve,taste is nice\"'),
(453, 10, 6, 4, 'average very less piece\'s'),
(454, 5, 39, 4, 'gd'),
(455, 12, 37, 4, 'ok'),
(456, 18, 31, 2, ''),
(457, 1, 7, 4, 'One of the semi budget buffet restaurant we used to go here for celebrate parties with group of friends . They are more than 30 items of food items almost all are good.'),
(458, 9, 3, 4, 'Really impressed with the food and price and good ambience. Looking forward to visit again'),
(459, 13, 31, 4, 'I was planning planning to go to the place since a long time and finally I went there few days back. Really impressed with the service too.'),
(460, 13, 37, 4, 'The food quality in a la carte was kinda so-so. Kind of an average Budget restaurant. The staff manner was very good. Food quantity was good'),
(461, 25, 26, 4, '\"Been here for 3times, staff is courteaus and helpful...food taste is good and worth for money. Thali is not available in menu, only for buffet it is available.\"'),
(462, 16, 1, 3, ''),
(463, 14, 35, 4, 'We\'ve been here a few times and quite like the pan Asian fare. The service is also prompt. The view of the financial district is great especially in the evening so go for window seating'),
(464, 27, 38, 4, 'Nice place.. it\'s in 10th floor.. love it!! Have very less options for indian cuisine. Had tasty dimsums and chicken chilli as starters. Wish there was some live music on weekdays..'),
(465, 14, 11, 4, '\"Love this place & there food is great , good place to hangout after 12:00 am midnight roof top is so peaceful at night I will visit this place again in future\"'),
(466, 10, 23, 4, '\"Had been there for lunch on a Friday afternoon. they have a very cosy atmosphere with a wonderful view of the Gachibowli Road from atop the 10th floor. Their food was something that we thoroughly enjoyed. we had their awesome tyangra style hakka fired prawns which was sweet and mildly spicy. there were about 6 chunky prawns in a plate. Their Maki salmon sushi was great as well if not the best. Then we had the Chinese barbecue Pork belly ribs which was chunky, succulent and juicy. in short, we had a really great meal and look forward to a second visit there soon.\"'),
(467, 26, 37, 4, 'Great place to hangout with friends. Some of the best Asian food you can get in this area. I really like the Kung Pao chicken and their signature lamb chops. Cost is a little on the higher side but well worth it.'),
(468, 19, 23, 4, ''),
(469, 5, 16, 4, ''),
(470, 29, 6, 4, 'need more quantity..because We paid toomuch for a single biriyani...'),
(471, 7, 39, 4, '\"Not just a food, it\'s a important part of the routine , love to see them eating it with so much of love .. when they serve you so nicely and it makes you eat it like a monster. This restaurant is serving similar to the home-made biryani which can make you feel like home .. It was worth and you people should change your taste now. Try this restaurant and I\'m sure you might get used to this taste😋\"'),
(472, 15, 7, 4, '\"There is no gulab jamun, so reducing one star\"'),
(473, 7, 32, 4, 'A rich flavoured Bhuna Murg biryani from this place surely will delight ur taste buds. As I opened the box of my Biryani the aroma was so tempting. It tasted yum topped with lots of deep fried onions and almonds. It has more of the Lucknowi Biryani taste. The only reason I don’t give it a 5 is it is way too rich as a meal.'),
(474, 11, 3, 4, 'Ordered biryani from this place and the packing is the first thing we liked about it...its the best and not the regular biryani packing you get...The biryani tastes...It has a different kind of mughal style..'),
(475, 27, 14, 4, 'food is very good... but delivery is bit late....'),
(476, 10, 1, 4, 'Rice quantity is less compared to earlier.'),
(477, 21, 27, 4, 'Ordered Paneer maggi and it tasted really really good. It was hot and juicy. The quantity of maggi was good but there were only 4-5 tiny pieces of paneer.'),
(478, 24, 24, 4, ''),
(479, 10, 29, 4, 'Go to place for my midnight snacks. Have tried almost all the different varieties served and the place hasnt dissapointed yet.'),
(480, 21, 16, 4, ''),
(481, 9, 19, 4, 'Taste : 4/5.'),
(482, 5, 40, 4, 'Ordered Double Egg Double Chicken maggi with extra cheese. It came hot in a plastic bowl with a fork and tissue paper. It tasted pretty good and the quantity was also sufficient.'),
(483, 21, 28, 4, ''),
(484, 30, 35, 4, 'Good place for late night ordering ...but sometimes it comes like complete masala and taste also disappointed... But overall dirrent Maggie\'s in this place .. ....'),
(485, 2, 18, 4, 'Good in taste and pocket friendly. Not a fan of spicy food so wish a little less spice is given in them.'),
(486, 30, 13, 4, ''),
(487, 18, 40, 4, 'A roadside eatery to satiate sudden cravings for Maggi after office hours. Can\'t vouch for the hygiene of the place but it serves some really good variants of Maggi.'),
(488, 1, 22, 4, ''),
(489, 5, 7, 4, ''),
(490, 1, 23, 4, ''),
(491, 26, 9, 3, ''),
(492, 5, 16, 4, ''),
(493, 14, 4, 4, 'Taste and quality of food is good. Quantity is little bit disappointed for me only.'),
(494, 13, 7, 4, '\"Pretty okay-ish, pocket-friendly joint. Not too good but can’t complain. It’s not too bad either. Fried veg maggi was good, but the cheese one didn’t meet expectations.\"'),
(495, 29, 37, 4, 'Quantity is not worth for the money...'),
(496, 4, 29, 4, '\"Affordable good food. I would have given a 5 star if value for money was a factor in star rating. Waiters were polite , food was delicious. Good place to eat out regularly.\"'),
(497, 12, 11, 4, ''),
(498, 17, 19, 4, '\"Vegetarian options in this place were really good, buffet has some good options, special mention to panasa Kaya curry, not so many options in dessert, overall a decent place easily to locate\"'),
(499, 4, 13, 4, 'Been here for 2 times... Food is good ... Ambience is ok ...'),
(500, 11, 30, 4, 'I got a lot of stuff which are cooked in pot those are simply awesome i really loved the starters very much'),
(501, 20, 39, 4, '\"Good ambience and presentation. Thai flavor is very authentic. I really like the way they cooked tofu. We asked for mushroom free food. But they gave food with mushrooms.When we informed them, they apologized and immediately replaced it. Which was a good gesture.\"'),
(502, 22, 27, 4, '\"Liked the food, the Tom yum soup was okay. The chicken n prawn appetizers were pretty good n tasty. Prawn in oyster sauce was nice. Overall a good experience considering we were a group of 15 with 2 infants ...\"'),
(503, 4, 2, 4, '\"Just went due to the zomato rating. Small place, may be 40-45 seater restaurant. Close to offices. Has valet parking, which most of the small restaurants doesn\'t have. Staff is courteous. They have a daily course meals round the week. Good option instead of buffets. Every item in the platter is good. Nothing wrong to point out. Lighter on pockets, go for it. with Bhaskar Varada\"'),
(504, 8, 24, 4, '\"Really loved the ambience, great music and of course the FOOD..!! Agreed the menu is pretty simple (less variety) but the food tastes yummy!! Do try their Paneer Majestic and Kaju Pulao! Always a smile on his face, our server Vijay Kumar was very prompt in his service. This place is worth your wallet.\"'),
(505, 12, 12, 4, 'Loved the food here. I felt that the ambience can be improved and that extra spice can be added with some more colours. Felt a bit bland. However the food made up for it.'),
(506, 3, 40, 4, 'This place is known for its authentic regional cuisine. It was a small and good ambiance place.'),
(507, 29, 3, 4, 'We ordered pot pouri royala vepudu which was amazing and hot and sour chicken soup which was good in taste . Pachi mirchi kodi pulao was also great.'),
(508, 28, 38, 1, ''),
(509, 8, 11, 4, 'Nice and cosy place. Service is good. Reasonable cost. The quantity is bit less. But overall good experience.'),
(510, 10, 21, 4, '\"Good place, good vibe! Their Bollywood music could get better but currently it\'s the best available in this area of the city. The food\'s good too.\"'),
(511, 26, 3, 5, 'a nice place to hangout with friends and have a laid back beer on a weekday as well. The service is excellent. The menu has lots of options in veg as well as non veg. The DJ was excellent and we had the time of our lives dancing. The crowd was amazing. There are lots of options in drinks as well. Must visit.'),
(512, 15, 40, 4, ''),
(513, 24, 38, 4, 'One of d best place. Esp for North Indian ! Good music happening place. Get damn crowded on weekend.so beware 😊 food was ok ok ! Drinks are not so costly. Good place for ppl wd dancing shoes and ready to burn calories. Get ur gang here.'),
(514, 1, 22, 4, 'This place is usual hangout place for guys as it allows to enter if you have a corporate ID.Also this place is packed almost everyday.You get to hear all types of music in one night so yeah it is worth going here to dance and habe fun.Getting a table here is bit difficult due to the crowd.Food and Drinks are cheap here.One thing I dont like here is people who dont know how to behave on dance floor with girls.That annoys me a lot.But that is not a frequent thing and can be fixed by bouncers being more proactive.Thanks'),
(515, 26, 12, 4, 'great place with great vibes. I can give thumbs up to service and food. The only drawback of this pub is the DJ. Over all great experience and fun.'),
(516, 22, 20, 4, 'Over all good experience but'),
(517, 8, 36, 4, ''),
(518, 20, 3, 4, '\"Cons: Entry ONLY for ppl who show corporate ID is kinda too much. And also rude behaviour of bouncers. Instead of making us feel safe, they themselves scares the customers.\"'),
(519, 10, 37, 4, ''),
(520, 23, 40, 4, '\"Pros: Price for alcohol and food is at its best and the inside ambience is amazing. The way DJ plays music is awesome, He makes even non-dancers to dance till their body aches and also crowd is amazing\"'),
(521, 30, 4, 4, 'Good place to hangout on weekends..nice crowd..good music. The ambience is really good and also the service was quick. Just a suggestion if anyone else going here do book a table before hand or else with this crowd it’s impossible to stand as well'),
(522, 18, 37, 4, 'Good crowd and ambiance. Pre booking of table is highly recommended if you don\'t have plans of just drinking and dancing. The floor is big enough though the crowd outnumbers the capacity of it. Great place for a crazy weekend party!'),
(523, 9, 6, 4, 'One of the best places to hangout with friends. Ambience was good and cozy. Food was good. Service was appropriate. One of the happening place during weekends.'),
(524, 3, 38, 4, '\"One of the best looking places to hangout for an bar and the dance floor is quite decent, the ambience is so nice and should defiantly have a visit,\"'),
(525, 13, 16, 3, ''),
(526, 28, 12, 4, '\"The food is decent and the set menu they serve for lunch is good, dont expect much from service\"'),
(527, 25, 37, 4, '\"A good place to spend an evening with your gang of friends or your partner. Has good ambience, great food and drinks.\"'),
(528, 16, 4, 4, ''),
(529, 26, 30, 4, 'Few negatives about this place includes not being listed on zomato gold and sometimes it gets a little difficult to get a reservation specially during weekends. But overall a good place to hangout.'),
(530, 10, 4, 4, '\"Great food, awesome music!! Service is very fast and portions are apt considering the price. Staff demanded for tips, that was the only bit that was annoying. But rest was an amazing experience!!\"'),
(531, 25, 33, 4, '\"Friendly staff, delicious food, cozy place and also pocket friendly 🤟🤟\"'),
(532, 2, 27, 4, '\"Perfect for friends or family gatherings, parties. really yummy and should definitely give a try...\"'),
(533, 2, 21, 4, 'Today we have celebrated a birthday party . They\'ve given permission to party in one ask .Very good response from ks . They\'ve supported in every aspect till party end.'),
(534, 20, 22, 4, 'Very good taste . I have chicken hot dog it\'s nice with stuffing .I missed to take photo .serving time is good but try to give fast .but taste and price is worth a try..'),
(535, 9, 34, 4, 'Pretty good here all varieties puffs and all. I tried chicken 65 it\'s nice not very spicy but decent .we would roam daily here .really crowdy in evening.anyway must try.'),
(536, 29, 37, 4, ''),
(537, 18, 22, 1, ''),
(538, 24, 39, 4, 'good'),
(539, 26, 16, 4, 'Taste and quality was good and quantity was as fine'),
(540, 28, 15, 1, ''),
(541, 18, 15, 4, '\"Great service! Wide selection of good quality, delicious food..The prices are pocket friendly . The flavors are good and typical as well.\"'),
(542, 13, 31, 4, 'good'),
(543, 10, 32, 4, 'This place is a good place to go out with your family. Food quality and ambience is quite good enough for its price.They welcome everyone with a complimentary drink which is a quite warm gesture. Here you can go for a economical buffet meal with your friends and family also.It\'s a place you can visit and dine out without a pinch in your wallet.'),
(544, 17, 7, 4, 'Cheers.'),
(545, 16, 39, 4, 'Anyone looking for a place on the rooftop with a great view.'),
(546, 19, 18, 4, 'this is the best place for that.'),
(547, 15, 27, 4, 'Ambience is on point.'),
(548, 24, 38, 3, 'The view is amazing. i think its the 13th floor.'),
(549, 25, 16, 4, 'there is a pool on the outdoor section.'),
(550, 23, 27, 4, 'which has an access to the people on sundays.'),
(551, 23, 40, 4, 'My experience was really good.'),
(552, 12, 23, 4, 'the staff was very polite .'),
(553, 21, 37, 4, 'when dining in a 5 star one cannot expect much from the food on taste basis.'),
(554, 21, 30, 4, 'but i think.'),
(555, 9, 12, 4, 'by far the best i have had.'),
(556, 29, 11, 4, 'buffet spread is good. they can add more drinks though.'),
(557, 16, 33, 4, 'just one drink wont be sufficient.'),
(558, 9, 29, 4, 'but overall its worthy for a good lavish dinner.'),
(559, 15, 7, 4, 'Gopal Singh.. was very polite and friendly..the place is really very good can .enjoyed alot leisuring with family ..food is tasty too though only limited vegetarian options'),
(560, 6, 2, 3, 'Average foods with amazing view. You have to sit outside near poolside when you go here. Amazing ambience especially with poolside table.'),
(561, 10, 5, 4, 'Amazing place..the seating by the pool is beautiful.. excellent staff!'),
(562, 22, 4, 4, '\"The only thing is there could be more lights, it\'s quite dim at some sections\"'),
(563, 27, 3, 4, '\"This place is worth a visit! A rooftop with a pool - the ambience is just awesome, specially in the evenings. One of the best places for small parties/romantic dinners.\"'),
(564, 27, 10, 4, 'A good range of food is available. Have tried Thai curry and it’s one of the best I’ve had.'),
(565, 17, 27, 4, '\"Nice place to visit. Food is good exception of biryani, starters are preferable but it has an excellent view. Pool view is quiet enjoyable and just awesome.\"'),
(566, 22, 12, 4, 'You will love the ambience as soon as you step in. Good collection of cocktails and food make this place a must visit among others in Hyderabad. A great romantic getaway.'),
(567, 29, 19, 4, '10/10 for the decor and ambience. The service was quick. Beautiful view in NYC. A must visit place.'),
(568, 14, 27, 4, '\"Elegant ambience, can\'t say stellar but an interesting place. For its suave, it ought to visited.\"'),
(569, 28, 35, 4, '\"Brownie tasted perfect. For a moment didn\'t know if it was really tasty or I was just hungry, my date voted the former idea. It was delectable anyway. 😀\"'),
(570, 24, 16, 4, ''),
(571, 18, 12, 4, '\"I was optimistic enough to ignore consequences of only I among two of us decided to have buffet. Hope against hope perhaps, the guy said that we can\'t share from one buffet order. Voila, I also had to give up buffet. (I can\'t force the lady to have it when she wasn\'t keen about it.) Thatz the 4 stars, else an easy 5🌠 experience.\"'),
(572, 28, 23, 4, '\"Best place for photographs; one can cherish the look at Botanical garden, chunk of greenery with a silver traffic lining from the rooftop.\"'),
(573, 1, 4, 4, ''),
(574, 20, 40, 4, 'The place is pretty beautiful with serene ambience with a poolside sitting.'),
(575, 6, 19, 4, 'The food was also pretty good'),
(576, 13, 36, 4, 'The service staff were also very friendly.'),
(577, 30, 22, 4, 'Would definitely recommend if you are looking for a nice and a calm dinner with the loved ones.'),
(578, 3, 17, 4, '\"best rooftop as of now. With an unparalleled ambience, Mazzo is hands down the prettiest pool side eatery I have visited in town. Evenings here are absolutely beautiful, sunrises and sunsets are magical. Open 24/7 this rooftop will have you falling in love all around the year.\"'),
(579, 12, 40, 4, ''),
(580, 25, 4, 4, '\"Ive tried their Sunday brunch. And it\'s an experience you don\'t want to miss. I won\'t exaggerate, the food isn\'t out of this world. It\'s decent. A respectable salad bar\"'),
(581, 6, 11, 5, 'It\'s been a great experience each and every time I ordered from this restaurant.I have order double egg double chicken cheese fried maggi and chicken shawarma regular(rumali) several times and it\'s been truly amazing.keep up the level and good work.All the best hunger maggi point 🤘'),
(582, 2, 16, 5, '\"Very nice and tasty Maggi. You guys are awesome but still, I feel like the price is little expensive else all good. I would give you 5 stars for your good job.\"'),
(583, 23, 7, 5, 'on time'),
(584, 17, 40, 5, ''),
(585, 24, 4, 5, '\"This restaurant is a saviour. This is the answer for my late night hunger pangs and my snack time cravings. Whenever I\'m feeling too hungry to eat biscuits but not hungry enough to eat dinner, I order Maggi from Hunger Maggi Point. It\'s the best. The double egg double chicken fried Maggi is my favourite. Clubbed with offers, which is often, these are the cheapest and tastiest solution to your hunger. Keep up the good work, fellas.\"'),
(586, 19, 39, 5, 'fastest delivery'),
(587, 13, 32, 5, 'good and spicy'),
(588, 13, 13, 5, 'very good'),
(589, 19, 11, 5, 'good delivery'),
(590, 4, 14, 5, 'very nice'),
(591, 19, 11, 5, 'Very nice place to get rid of your hunger in late night in hi-tech city.'),
(592, 4, 18, 5, 'Ordered fried chicken Maggi. Turned to be good. Packing and taser was good.'),
(593, 28, 14, 5, 'good it is delivered on time'),
(594, 24, 37, 5, ''),
(595, 13, 1, 5, 'excellent. it\'s one of the best I have eaten. Loved it.'),
(596, 3, 1, 5, 'very fast delivery'),
(597, 26, 34, 5, 'Taste is good'),
(598, 23, 37, 5, 'fast delviery'),
(599, 26, 11, 5, 'good'),
(600, 1, 14, 4, ''),
(601, 5, 25, 5, 'Thanks'),
(602, 9, 19, 4, 'bit expensive but good'),
(603, 14, 9, 5, 'happy with the service provider'),
(604, 26, 38, 5, 'on time delivery'),
(605, 4, 7, 5, ''),
(606, 12, 31, 5, 'good delivery'),
(607, 14, 27, 5, 'Nice ambiance....different and delicious food...polite and friendly staff serving...jus loved the paneer starters 😍 recommend to visit this place'),
(608, 7, 19, 5, 'I have been to along with my Colleague for Lunch. were delicious.One must try these for sure. Highly recommended place .Worth giving a shot 🍽'),
(609, 14, 6, 3, ''),
(610, 6, 19, 5, '\"Good Food and Service is Also fast and Good, ambiance is the best part,biswajit is one of the best server in this whole place food is good and quality and quantity are also good\"'),
(611, 3, 31, 5, ''),
(612, 17, 3, 5, '\"Good food, quiet ambience, apt for leisure lunch. Good service as well. Well worth the price. The buffet has enough varieties to indulge in. Over all a good place to relish the food.\"'),
(613, 29, 38, 5, 'Hi so me and my friend enjoy in lunch time with a Indian food restaurant food is good service is little bit slow I love the song improve in less spicy food'),
(614, 4, 12, 5, '\"Wow man! It\'s a great place for a happy dine. Their ambiance, their food and their service is just awesome. The prices are higher than average and trust me, it\'s completely worth it.\"'),
(615, 30, 4, 5, 'Very good range of food availble and especially the veg good was really good. Quantity n Quality meets the price. Ambience is simple too and very friendly staff.'),
(616, 24, 10, 5, 'Good place and wonderful ambience staff was very qujck and all are aware of zomato gold so no issue about that but pulav which we order was little bit dry!!'),
(617, 28, 14, 5, 'Good to check in there'),
(618, 2, 39, 5, 'The dishes are best to there theme.'),
(619, 22, 20, 5, 'Which they have the best of cuisine for there variant of selection. Have a good team lunch.'),
(620, 2, 3, 5, 'Cheers team'),
(621, 22, 27, 5, '\"I ordered for curd rice, really very very good and lip smacking. The food is hygienic. Maintain the same quality. All the very best. I m marking this as one of my fav place.\"'),
(622, 17, 12, 5, 'perfect'),
(623, 7, 1, 5, 'I and my partner had visited this place during their Valentine\'s Day Romantic Candle light dinner. This place has a great ambiance and is low lit with lovely candles.'),
(624, 13, 18, 2, ''),
(625, 2, 11, 5, '\"Good portion sizes, quite tasty food, super quick service and got the right mix of cuisines in the menu. Everything just about right for your tum!\"'),
(626, 21, 23, 5, 'Great place to have a good dining experience. Had breakfast and dinner here. Food was awesome and was surprised to provide us complimentary breakfast for all the customers on that particular day.'),
(627, 18, 40, 5, 'Excellent taste and awesome food. Chicken tikka was perfect in all the ways. Its good for veg and non veg food. Places is nice with good ambience.'),
(628, 19, 16, 5, '\"The food was very good. Also, the service provided by one of the waiters Papu was really really nice. He is very kind and polite. Keep up the good work young boy!!!!\"'),
(629, 12, 23, 5, 'Server(sushanth)is very friendly and polite. He suggests each and everything with patience.His service is also very good. Finally made this restaurant my regular place'),
(630, 19, 16, 5, '\"Our usual hangout place. Every time we think of eating out, we always end up at this place. Great staff, delicious food and calm ambience. Chicken drumsticks and Veg pulav are a must try.\"'),
(631, 4, 7, 5, 'mouth watering tummy satisfying dish... I am very happy to suggest here to the food lovers in the city who have not yet tried'),
(632, 1, 2, 5, 'Delicious food👍👌..i had good experience with this food..i liked a lot.'),
(633, 16, 3, 5, 'Best place to hangout.... reasonable and tasty.with proper hygienic.... the one of the best place ...the staff is where humble and polite'),
(634, 2, 4, 5, 'A very decent restaurant with reasonable price.'),
(635, 23, 31, 1, ''),
(636, 16, 6, 5, 'Absolutely amazing. Had a great dinner with biriyani and kebab. Friendly stuffs used to take care of their customers as much as they can. Nice'),
(637, 15, 27, 5, '\"A restaurant to always rely on. This restaurant use to be my default choice whenever I wanted to eat out and don\'t feel like searching for anew place. Great quality food and good service! Their haleem was very nice too, though it was a bit sweet for my taste (it is suppose to be mildly sweet anyway, so it\'s not their fault). The location was also perfect for me\"'),
(638, 1, 12, 5, 'Superb Loved the food quality and quantity and taste.'),
(639, 19, 18, 5, '\"Out with family for dinner excellent food with exceptional service, plenty of choices very good quality and quantity definitely will visit again.\"'),
(640, 23, 11, 5, 'Went for the dinner with the family. All the items were delicious.'),
(641, 15, 7, 5, 'Dont miss the platter and mouth watering non veg platters.'),
(642, 16, 32, 5, 'Packed chicken biryani and took it all the way to Kolkata. They loved it . Great quantity and taste'),
(643, 15, 40, 4, ''),
(644, 3, 1, 5, 'must try.'),
(645, 26, 26, 5, '\"A little heaven for food lovers, all the items tasted really good. The major perk of this place is their menu is too pocket friendly. The best hangout place, must visit.\"'),
(646, 24, 6, 5, 'This place serves the best Chicken and Mutton Biryaani in entire Hyderabad. I always go back to Pista house for my biryaani cravings.'),
(647, 1, 23, 5, 'Must try once.'),
(648, 13, 3, 5, 'Amazing food was much better then expected. As it was just a pit stop while passing by .'),
(649, 30, 26, 5, 'Service guy Mr Raj was too helpful with suggestions .'),
(650, 29, 12, 5, 'Worth the visit if your in Hyderabad.'),
(651, 9, 19, 5, 'Raj was very polite and the service is good keep doing it keep it up..all the best of luck to you continue the same stay motivated and continue the same.'),
(652, 22, 18, 5, '\"Out of many outlets in Hyderabad, I was waiting to try one soo I Ordered from the one in gachibowli.\"'),
(653, 30, 36, 5, '\"I tried 2 biryani\'s from this outlet chiken and mutton... Amazing biryani , full filing quantity and delightful taste ..\"'),
(654, 17, 27, 4, 'Super starters. Like it very much.'),
(655, 26, 16, 5, 'awesome'),
(656, 18, 21, 1, ''),
(657, 15, 11, 5, '\"Nice food, good. Value for money. The food is much spicy as u like it most. It\'s quality and food smells very nice. The package also very neat and strong\"'),
(658, 18, 37, 5, '\"Best place to eat , Taste, South Indian touch and environment is nice great place, keema biryani is all time favourite, nice taste and service is excellent\"'),
(659, 26, 26, 5, '\"Random visit to near by restaurant, but fully satisfied, very tasty, i would love to visit again n recommend others too. Spicy ambiance starters main course all together all 5* from my end, if you love spicy food give a try\"'),
(660, 24, 27, 4, 'good'),
(661, 25, 31, 5, 'Very good ambience good food and very friendly staff. this is the best one which I found especially place thank you'),
(662, 23, 39, 5, 'good'),
(663, 17, 38, 5, 'perfect'),
(664, 25, 23, 5, 'Excellent'),
(665, 1, 9, 5, 'good'),
(666, 20, 27, 5, 'good'),
(667, 4, 7, 5, '\"Good service by sajan,\"'),
(668, 1, 12, 5, 'Food is delicious'),
(669, 4, 38, 4, '\"Love your hospitality, but plz cheaper\"'),
(670, 29, 26, 4, '\"Good service by sajan,\"'),
(671, 26, 3, 4, 'Food is delicious'),
(672, 19, 4, 5, 'Love your hospitality'),
(673, 25, 16, 4, ''),
(674, 30, 37, 5, 'Soooooo good njoy'),
(675, 11, 27, 5, ''),
(676, 3, 38, 5, ''),
(677, 7, 4, 5, ''),
(678, 15, 12, 5, '\"It can\'t be expressed in words.. The prompt service they gave, the taste of freshly cooked tandoori chicken with perfect spice & appearance, the authentic taste of chicken tikka biryani (10000 Times better that Paradise biryani), the perfect type of ambience & a variety of sitting place with outside road view.... All were amazing and more than expectation. U will find little expensive at begining.. But trust me, the quality and quantity they provides, is really value for money. Just go and visit once at least.\"'),
(679, 28, 37, 5, 'Fantastic ambience and great service.... location is a must visit over seeing the golf course!!!! The food was great and meats quality was just superb..... will be a regular here!!!!'),
(680, 30, 16, 5, '\"Awesome food, great ambience, best service.\"'),
(681, 7, 36, 5, ''),
(682, 14, 39, 5, '\"We went in a group and tried a lot of things on their menu, everything was unique and best. Cocktails were decent. Stallion stood out of all!\"'),
(683, 15, 19, 5, '\"Lovely place, mix and match seating to auit whom you are with. Prompt service, Lovely dishes. Menu is perfect to cater to any cuisine. An all at one stop place.\"'),
(684, 8, 4, 5, ''),
(685, 4, 27, 5, 'Must Try One should come here for food in low budget but awesome quality .'),
(686, 30, 37, 5, 'Good ambience and service. If you are looking for delhi feel in the food. This is the place. Their some what desi style nachos are very good along with pastas.'),
(687, 25, 31, 5, '\"This is such a default place that if you cannot make your mind, come over here and till now they have never dizappointed. Food is good, service is fast and you have a good time\"'),
(688, 16, 27, 5, '\"We were not that hungry, ordered a lot but all were good. Service was pretty quick and ambience was nice.\"'),
(689, 5, 27, 5, '\"This place is Gold if you want a good dining experience in financial district. Amid all the star hotels and big names, this place has made its mark. It is not cheap but thats fine, considering the portions they serve and taste. You will be done with one burger or a rice/roti with a curry. Zomato Gold comes to your rescue if you have one. I like simple chicken burger and lemonade. Burger come with some potato wedges, salad.\"'),
(690, 26, 12, 5, '\"Tried the chicken stuffed steak and the fish steak which were genuinely impressive. Not only were the waiters friendly, they had fast service as well. With the Zomato Gold membership I could avail the 1 + 1 offer which destroyed my hunger pangs!\"'),
(691, 9, 24, 5, 'Great food. Reasonably priced and situated in good location. Had lamb and pasta. Quality and quantity was great. We did not have to wait more than 10 minutes for the food. People coming for lunch would enjoy the Golf course view. A must try for foodies.'),
(692, 7, 37, 5, 'With the view of Golf Course and Selection between Wide variety of delicious dishes... This is one of the Best place to Hang Out... Perfect for a sunset view as well...'),
(693, 19, 37, 5, '\"Amazing place. Spent a lovely evening here. the apple pie is really good, a must try. Korean waffles are nice too. Nice food, great ambience and great service. 😄\"'),
(694, 14, 21, 5, '\"Awesome Place, Great View in love with the Place. Thin Crust Pizzas are great, curry combos are good but not sufficient even for 1 person. Great place to chill out.\"'),
(695, 1, 31, 5, 'Super food and fantastic service by Vishal. He was extremely courteous and helpful. The ambience of the restaurant was out of the world . Very serene.'),
(696, 2, 23, 5, 'Great place! Great staff! Great ambience! Best place for a nice Sunday brunch with friends and family. It\'s amazing for dinners too!'),
(697, 10, 21, 5, 'Bit expensive for taste but worth for ambience and hospitality. One of the best venue for office parties and close to corporate offices around financial district.'),
(698, 9, 29, 5, 'Anoop was really a great host. The ambience is lovely and the drinks are worth. Try the flaming Lamborghini and the lit without ice if you wanna get high.'),
(699, 26, 11, 5, 'MR.Sonai ur service and food was crazy along with your ambience.! Loved the TSC.!! The Ipl streaming makes it even a better place to chill out with friends and family'),
(700, 16, 4, 5, 'Good place to enjoy the music with food and decent drinks.It\'s a bit crowded but what\'s fun without the crowd :D Been here many times never disappoints me except for the fact that they keep asking for my ID .Place where you don\'t need a plus one in Hyderabad especially.'),
(701, 26, 4, 5, 'One the best places to hangout specially when you don\'t want to spend much . The food is great and going in the group would be best . The music and ambience is actually worth it. But please book a table before 8 on weekends as it gets much crowded. Recommended places to go .'),
(702, 24, 37, 5, 'Awesome place one of the best places in hyderabar... Girish was awesome he made sure we had great time....the dj was the best ive seen in hderabad'),
(703, 3, 23, 5, 'I was here with my friends ... ystrday was my 4th time .. every time we visited we had the best memories to take back.. the music and the dance floor are their plus point .. and the service too... the food here is reasonable'),
(704, 20, 27, 5, 'Best place to hangout🔥'),
(705, 27, 38, 5, '\"I am very regular at this place. Infact this is the best clubbing experience I have. Though I tried other pubs but m so much attached to the ambiance, people and crowd. Every Sunday to Thursday free drinks for ladies. The food is amazing. Someone should definately try chicken drumsticks here. They are yum. I am in love with this place.\"'),
(706, 24, 19, 5, 'This place is awesome compare to the nearby restaurants in gachibowli Ambiance is 5/5.. must go place best time to enter is after 21:30 ....'),
(707, 2, 38, 5, '\"We were there on a Saturday night and the place was crowded as obvious, the DJ played decent tracks and kept the crowd on the edge of their seats. We had a good time with the booze and the food. Be there on weekdays if you are looking to spend time with the friends. Wanna go crazy weekends should be your choice\"'),
(708, 26, 34, 5, '\"I guess have been here for almost 10 times. Every week when Friday comes I really miss club rogue. It has become like my permanent place for freaking out!! Everything is awesome here you just name it weather it be food, Serivice , ambience anything picture perfect.\"'),
(709, 20, 39, 5, '\"This place is in the SLN terminus mall...it\'s a huge place with young IT crowd of hitec city pouring in...very good place, nice ambience and setting, food is good and the party scene is electrifying\"'),
(710, 7, 37, 5, '\"Best food I have ever had..Satisfied with every dish and there are so yummy. We tried club chilly cheese toast,mezze platter,florenten garden,spicy tomato arabiatta,signature mushroom risoto and\"'),
(711, 12, 40, 5, 'frio\'s signature tiramasu..Every thing is great and unique....It is not the place for spicy lovers....U should visit this place to taste unique and delicious food...Love the ambience too'),
(712, 9, 34, 5, ''),
(713, 22, 7, 5, 'This is my favorite comfort food place. Almost all the items in their menu are super tasty. Their keema puff is one of best I have tasted. Pizza and pasta are delicious too.'),
(714, 25, 26, 4, 'I had first been here on my bday last year. The service is prompt and lovely. Adding the Zomato gold on top of it just makes the experience even better. Deriving recommend it.'),
(715, 9, 32, 5, 'I absolutely love their thin crust pizzas and would definitely go there again and again.. The desserts were just good enough and it made the experience complete..'),
(716, 21, 11, 5, 'Service can do with a minor improvement..'),
(717, 23, 1, 4, '\"downside, place closes down relatively early for a dessert joint.\"'),
(718, 18, 15, 5, 'Cozy place that offers good variety of food. Would love in my next visit to Hyderabad.'),
(719, 29, 38, 5, 'One of the best cafes in Hyderabad to spend time in. Do try Irani Chai if you\'re here. The staff is really courteous. The decor is top notch. Love the ambience of the place. And again do try the Irani Chai if you\'re here.'),
(720, 17, 7, 5, '\"Another place where I wanted to visit from long. This is vintage, brings back your childhood days (only if you are a 90s or earlier born ;)). Excellent place ambience and tasty food. Their rolls are yummy and keem pav is a must try dish.\"'),
(721, 12, 12, 5, ''),
(722, 17, 6, 3, ''),
(723, 29, 7, 5, ''),
(724, 3, 4, 5, ''),
(725, 4, 36, 5, '\"A 19th Century themed Café which has a soothing ambiance, it will remind some of you of your childhood. Posters, advertisements, scenes from the past are framed and put up all over the 4 walls. The food is is amazing, I went for the Pink Penne Grilled Chicken Pasta and we couldn\'t resist finishing it even though we were half full. Lemon Tea (Barfeilly Chai) is a refreshing mix.\"'),
(726, 10, 38, 5, 'Must Visit as this place will definitely uplift your mood.'),
(727, 13, 31, 5, '\"Absolutely loved the place, the food, aesthetics everything! I was pretty lost looking at the antiques and having veg cutlet with filter coffee. Thought it was expensive while looking at the menu but the quantity was pretty good. Much recommended.\"'),
(728, 12, 11, 5, 'I Like the Food. I would like to Come. Again👍😊'),
(729, 25, 36, 5, 'Though the service was a little slow and it was a buzzing place. The Irani chai was awesome.'),
(730, 17, 2, 5, 'perfect.'),
(731, 27, 26, 5, 'The interiors and the ambience are lovely. Perfect old bollywood music is soothing. The food is great. The presentation and the service both.'),
(732, 27, 38, 5, 'Place when you want to hangout for a chai with your loved one on a lazy day !! They serve fantastic Chai which goes well with Karachi’s large variety of biscuits 🍪'),
(733, 10, 36, 5, '\"A nice place for a date, went there on a Sunday afternoon. Service was fast. We had 1. Ceasar salad - which was good 2. Spinach and Cream cheese ravioli - which was okay.\"'),
(734, 28, 26, 5, '\"Awesome food keep rocking guys ,had lunch yesterday were awesome.i will visiting this place more frequently.will suggest to my friends also\"'),
(735, 21, 6, 5, 'Very Awesome place for people who loves the Continentals with European . I totally very very impressive of Frio\'s Team hospitality.'),
(736, 16, 16, 5, ''),
(737, 10, 29, 5, '\"I visited their Gachibowli outlet,ambience was really nice.I tried different kinds of pastry\'s and fast foods, in one word pastry\'s are AWESOME 👌👌.. Pastry\'s are big enough and it\'s difficult to finish by single person.......Foods are also nice.. quantity & quality of foods both are good👍👍Love to visit again😊\"'),
(738, 30, 12, 5, 'Nice place to eat and enjoy within budget. Biscuits are famous and various imported chocolates. Well behaved staff and management. They should start their own website to deliver food.'),
(739, 19, 23, 5, '\"Totally loved the cookies. Amazing cookies with affordable price. Tried Osmania,keshar pista, fruits cookies and many varieties of candies. Loved them all\"'),
(740, 24, 12, 5, 'I really loved them.. I can still enjoy the flavour The place was also comfortable when went with gangs for having a little time!'),
(741, 7, 37, 5, 'O_M_G!!! On my hyderabad vacay i happened to be this famous bakery..fallen love with hybd for this bakery...hd vlvte cake n cheese cake...each n evry cake just stole my heart....big love for me🤗🤗🤗😋😋🍰🍰🍰🍰😋'),
(742, 17, 37, 5, 'my all time favourite. I\'m too busy munching to click pictures. Might upload if I find old pics. Must visit once a week 😎'),
(743, 5, 25, 5, 'They had a really amazing experience here. Must try'),
(744, 28, 8, 5, 'Loved this bakery for its amazing variety of biscuits cookies n variety of pastry plus there tit bits. U would have to be there to understand what this place is all\'about. USP of the chain is its reasonable pricing. So affordable that I was surprised that how we are paying so much in Bangalore in any decent bakery. must visit in case u r in Hyderabad.'),
(745, 14, 4, 5, 'This is best bakery shop.If you want to give something decent gift which represent hyderabad to your friends and family you can give from here beacuse this bakery has set the remarks of elligence. Whenever I am confused what to buy and give gift to my friends I give something from here😊☺️.'),
(746, 13, 16, 3, ''),
(747, 18, 23, 5, ''),
(748, 29, 39, 1, ''),
(749, 18, 6, 3, ''),
(750, 24, 1, 5, ''),
(751, 6, 24, 5, '\"There are times when one realizes how was my life going on without this. That is what exactly happened to me when I tasted their red velvet cupcake. It was heaven in my mouth. I even got a half a dozen packed and I relished it everytime I put it in my mouth. There was a vanilla cupcake too with chocolate frosting, but the red velvet cupcake was just beyond awesome.\"'),
(752, 1, 12, 5, ''),
(753, 22, 31, 5, 'very tasty'),
(754, 9, 4, 5, 'Best place in the city special for the brunch'),
(755, 16, 20, 5, '\"Nice food,staff was very nice and friendly\"'),
(756, 29, 38, 5, 'I really enjoyed my Sunday in this place'),
(757, 29, 1, 3, ''),
(758, 30, 35, 5, 'Amazing ambience that anyone will fall in love'),
(759, 1, 26, 5, 'Amazing place to be when you need a cool and chilled out place. Dine near the pool area for a soothing experience. One of the best ambience of a pool side drink with calm environment and amazing wether view.'),
(760, 25, 24, 5, '\"Visited this place during Christmas..nice place...starters r super tasty..cool, windy place..pool side area is an awesome place for hangout..\"'),
(761, 26, 11, 5, '\"Of all the places I have ever been, Mazzo stands on the 2nd place. With the amazing view of the city and open air dining area, this place definitely leaves a great impression in people\'s mind. Variations within the available type of cuisines, this is a place for everyone. The service was fantastic. The food was really amazing. Salads really melt in your mouth, especially the Woldrof Salad. A connoisseur will have no second thought in choosing this place. As they say, good food goes well with good wine, you have a bar with a wide am variety of drinks. People will love this place. I say it\'s a bit pricey, but hey, good quality comes with a high price...\"'),
(762, 28, 4, 5, ''),
(763, 19, 16, 5, 'Thank you Mazzo. It was an amazing feeling to eat here.'),
(764, 15, 19, 5, '\"Sunday brunch can\'t be better than in this place.The food,the drinks, ambience and the view- it\'s all WOW.I had my share of awesome drinks and splendid time that I hardly clicked any pictures. Special thanks to Dinesh and Hmingte for the green tea which helped us get back home 😝😝😍😍😍\"'),
(765, 22, 31, 5, 'Amazing place with a beautiful view of NYC and the staff was very very helpful and courteous. The chef made sure the dishes were made to our liking and he was extremely helpful. Definitely going back here more often'),
(766, 5, 37, 5, '\"Visited this place first time yesterday and being a rainy day can not get place next to pool,still it’s awesome place and loved it and recommended this to my office colleagues as well\"'),
(767, 18, 37, 5, 'It was amazing the food was delicious and the service was amazing on always on time and everything was good... awesome u should try this..!!'),
(768, 6, 1, 5, ''),
(769, 10, 21, 5, 'Mr Sudhakar was very helpful he was very nice chef.. N the staff was also nice..'),
(770, 7, 39, 5, 'Good was awesome I will give 5 out of 5 Star ❤'),
(771, 2, 3, 5, 'Serene ambience pool side with good food and friendly helpful staff. Though buffet option is there we went for a la karte. And freshly squeezed orange juice. Rooftop has an amazing city and Botanical garden view .'),
(772, 13, 31, 5, '\"Most amazing looking place in hyd, a total refreshing relaxing ambience ! Rooftop lovers its a must try , i m a rooftop place lover! Every inch of the place is worth a picture! I loved the burger esp ! I tried the thursday menu as i went on a thursday , they served me yummy kodi fry, kodi curry bagara rice , and yummiest smeiya paisam with a moctail (strawberry) i had the best time i m sure u guys will too :)\"'),
(773, 22, 40, 5, 'We have ordered a chicken strips and chicken popcorn the chicken was yummy we like to order more from this restaurant we recommend this place'),
(774, 25, 4, 5, ''),
(775, 8, 11, 5, 'Cool place to have chitchat over tasty snacks'),
(776, 6, 25, 5, 'I orderd nutella waffles and peri peri chicken shawarma from here.... waffle was very tasty and shawarma i loved it...will visit soooooooooon nnn............'),
(777, 25, 11, 5, 'An excellent get together place for a small crowd and their food choices are awesome .. we can enjoy some nice music and grrat food at best price :)'),
(778, 22, 4, 5, '\"I just now I order periperi chicken shawarma and chicken popcorn, veg greenslimy risebowl test was good and packing is great I got it very hot food .............................. My favorite restaurant the foodie monster kitchen 😄😄😄,..............................................................................................................................................\"'),
(779, 5, 11, 5, 'The breakfast was delicious. Though tea was extra sweet but overall the flavour and aroma was great. Loved it. ❤️ Great conversation on phone as I modified the order after order was placed.'),
(780, 10, 36, 5, '\"Service is horrible, the food is good tho. I don\'t recommend going here to eat, but ordering from or just coming mid day is fine. The eggs were well made.\"'),
(781, 14, 4, 5, '\"The person who delivered the order was on time, polite and food was good too. Loved the pancakes and the drink. I\'m definitely ordering again\"'),
(782, 15, 40, 5, '\"Went there for midnight snacking. This place is simply amazing, i was blown away to have found this gem hidden at just over a serciced apartment hotel. Good food and picturesque view....If ur an insta addict, this place will cater u pretty well.\"'),
(783, 7, 39, 5, 'The chef was awesome! Made foods as per our request even though it wasn’t on the menu. Place you should go to if you want to have an awesome dine out experience.'),
(784, 14, 21, 4, ''),
(785, 4, 31, 5, 'Delivery on time'),
(786, 28, 4, 5, 'There are very few places where you get the original aroma and the taste of Mandi and amongst them this is one... excellent packaging and taste of the biryani hope this continues!'),
(787, 25, 3, 5, 'both delivery and food are good');
INSERT INTO `review` (`review_id`, `member_id`, `restaurant_id`, `rating`, `comment`) VALUES
(788, 15, 23, 5, '\"This is the first place I experienced Hyderabadi Biryani. I walked in and ordered a chicken briyani. No big deal. The cost was nearly the same as in Chennai, about 200 bucks (I don\'t remember exactly, but it was around 200). I was shocked when the waiter came with a big serving of briyani. How big, you ask? Two people could share it easily. The taste was first class. I for one can handle briyani as much as you think, but I was stunned. It isn\'t the best briyani I\'ve ever tasted, but its my first Hyderabadi Biryani and I loved it. Such a great experience.\"'),
(789, 6, 11, 5, ''),
(790, 22, 6, 5, 'Thanks to the people from completing the order. I was so hungry. The person who brought the item was very kind and the delivery was quick is well.'),
(791, 26, 16, 5, 'good patience'),
(792, 20, 4, 5, 'very good'),
(793, 20, 12, 5, 'very good'),
(794, 17, 23, 5, 'good food'),
(795, 27, 26, 5, 'super'),
(796, 28, 26, 4, 'delivered at correct time and very professional delivery person'),
(797, 20, 20, 1, ''),
(798, 17, 23, 5, 'good.'),
(799, 23, 40, 5, 'very good'),
(800, 24, 11, 5, 'good delivery'),
(801, 11, 4, 5, 'good'),
(802, 6, 1, 5, 'good'),
(803, 16, 30, 5, 'nice rider very kind'),
(804, 9, 38, 5, '\"This place is really nice. The first time I went was because of the name. And yeah, it was awesome. The food is really good. The feel of the whole restaurant is awesome. Do visit this place.\"'),
(805, 9, 38, 5, '\"Great buffet with top quality bar to be seated and pretty ambience for a romantic couples and dj nights are bit good ,but no happy hour menu :;:;\"'),
(806, 15, 38, 5, 'Very good place to visit and I can  promise you wont find a better place with the combination of best  price list with this ambience and the staff.'),
(807, 27, 4, 5, '\"Great food and Ambience, if you are looking for a time out with your friends then it is a good place to visit. Service is really nice here. Would like to mention Bimal specifically as he has been such a great host to us.\"'),
(808, 14, 11, 5, 'An amazing place with great ambience and lovely music. We went for their lavish lunch buffet and it was a great experience. Malai tikka and chicken wings we\'re amazing and so was dhana chicken. They served one of the best Phirnis I have tasted. A great place to hangout'),
(809, 10, 15, 5, 'Be polite and friendly staff food is very good and dj dance floor is very nice me and my friends very happy so noce place the best pub in the hyderabad city wow........ Thanks all staff'),
(810, 23, 11, 5, ''),
(811, 18, 10, 5, '\"Best quality food with rich spicy taste in reasonable price, biryani lovers you can try for special chicken price , the staffs and manager is very coperative.\"'),
(812, 29, 20, 5, 'If you love spicy food enrich with taste and good quality then this is the bestest place to have your food'),
(813, 21, 6, 5, '\"Ordered tandoori chicken from here. Trust me, never expected this kind of taste from this place. Taste was really awsome compared to other tandoori places in gachibowli. Definitely will go for it again.\"'),
(814, 11, 30, 5, 'A perfect place for biryani lovers looking out for pocket friendly options. I ordered veg biryani and both the quantity and quality was perfect. (5/5)'),
(815, 8, 4, 5, 'Certainly the top rated. It got the tongue tickling taste. worth re-order. food is clean and fresh. no issues so far. Good luck and keep going!!'),
(816, 2, 38, 5, 'excellent delivery in time'),
(817, 27, 4, 4, 'good one'),
(818, 28, 2, 5, 'very spicy : )'),
(819, 15, 7, 5, 'good'),
(820, 13, 25, 5, 'good'),
(821, 16, 3, 5, 'Delivered in time'),
(822, 28, 37, 5, 'thanks'),
(823, 25, 33, 5, 'Nice'),
(824, 23, 3, 5, 'Good food!'),
(825, 18, 10, 5, 'nice'),
(826, 8, 37, 5, 'vey good on time'),
(827, 27, 3, 5, 'good'),
(828, 28, 14, 5, 'super fast delivery'),
(829, 18, 15, 5, 'good service'),
(830, 24, 38, 4, 'good'),
(831, 2, 4, 5, ''),
(832, 5, 27, 5, 'goat'),
(833, 5, 20, 5, 'happy'),
(834, 5, 32, 5, 'good'),
(835, 2, 16, 5, ''),
(836, 7, 1, 5, ''),
(837, 24, 40, 5, 'very nice service from delivery guy'),
(838, 11, 32, 5, 'good'),
(839, 11, 27, 5, 'nice conversation vth delivery person'),
(840, 8, 24, 4, ''),
(841, 14, 12, 5, 'good'),
(842, 14, 12, 5, 'lovely'),
(843, 18, 23, 5, 'Good'),
(844, 13, 39, 5, '\"I have Ordered special chicken biryani , the taste was awesome.\"'),
(845, 15, 19, 5, 'good'),
(846, 29, 26, 5, 'ontime'),
(847, 21, 3, 4, 'good'),
(848, 5, 29, 4, 'good'),
(849, 5, 12, 5, 'Nice ambience to enjoy the night'),
(850, 15, 19, 5, 'excellent'),
(851, 23, 1, 4, 'fast delivery before time good response'),
(852, 7, 37, 5, 'One of the best food experience in Hyderabad'),
(853, 27, 4, 4, ''),
(854, 29, 40, 1, 'Quantity is very less compared to other similar level of restaurants'),
(855, 28, 6, 5, 'nice'),
(856, 2, 27, 5, 'cool'),
(857, 3, 19, 5, 'Good job!!'),
(858, 4, 22, 5, 'great on time'),
(859, 21, 40, 5, 'very good and fast'),
(860, 29, 20, 5, 'Thanks Zomato.'),
(861, 4, 13, 5, 'good'),
(862, 8, 8, 5, ''),
(863, 21, 12, 5, 'very fast delivery'),
(864, 9, 12, 5, 'good'),
(865, 28, 23, 5, 'fast delivery'),
(866, 4, 15, 5, 'delivered in time'),
(867, 2, 15, 5, 'thank thank you for your services.'),
(868, 17, 2, 4, 'Great taste and quick deliverey'),
(869, 23, 40, 5, 'Nice'),
(870, 27, 15, 2, 'late'),
(871, 21, 4, 5, 'good food'),
(872, 9, 24, 5, 'excellent delivery much appreciated'),
(873, 21, 11, 5, 'very nice'),
(874, 26, 24, 4, 'low price'),
(875, 21, 27, 5, 'excelent'),
(876, 1, 31, 5, 'execellent'),
(877, 3, 31, 5, 'exlent'),
(878, 7, 20, 3, ''),
(879, 17, 37, 5, 'perfect delivery'),
(880, 9, 20, 5, 'Awesome'),
(881, 14, 34, 5, 'good'),
(882, 17, 38, 5, 'awesome'),
(883, 19, 18, 5, 'Good'),
(884, 1, 35, 5, 'Good'),
(885, 20, 11, 5, 'good'),
(886, 15, 15, 2, 'Late delivery'),
(887, 27, 35, 5, 'delivered on time'),
(888, 21, 17, 5, 'Awesome'),
(889, 27, 38, 5, 'thanks udipi'),
(890, 13, 32, 5, 'Quick delivery and good taste'),
(891, 16, 11, 5, 'awesome food'),
(892, 10, 24, 5, 'Good service'),
(893, 8, 37, 5, 'nice'),
(894, 8, 27, 5, 'superb dosa'),
(895, 23, 39, 5, '\"An affordable restaurant where you can have a delicious south Indian meal. All in one place breakfast, lunch or dinner. Must visit and enjoy.\"'),
(896, 28, 26, 5, 'good'),
(897, 2, 21, 5, 'super delivery'),
(898, 14, 40, 4, 'good'),
(899, 22, 6, 4, 'Good food pocket friendly and healthy. I have ordered few times for luch and I liked it. If you have office nearby order food from this place.'),
(900, 15, 11, 5, '\"Good place to dine , south indian dishes are amazing and mouth watering . One can dine with family anytime who love pure vegetarian food and brunches rather than lunch\"'),
(901, 4, 25, 5, 'Excellent food. Excellent service. If you want to experience North Indian cuisine..then this is the best place to be in. The prices are also appropriate and the food quantity is good'),
(902, 3, 11, 5, 'The staff are humble and will present food as per your customisation. That’s really good.'),
(903, 23, 4, 5, 'Too good and place is very fine. Food is lovely and delicious. Hotel is nice.....'),
(904, 13, 29, 5, 'I have never seen like this. Desert is lovely and different from other place.'),
(905, 8, 2, 4, ''),
(906, 10, 11, 5, '\"#Food was #good with right mix of #spices. We went in a group of 6. As soon as we entered they offered #seats and welcomed us. We had two kids with us they gave complimentary #ice #creams for them. It helped us making kids busy while we decided on the menu. Menu had a good #vegetarian variety (we were looking for veg food). We ordered #north #indian #thali, which was yummy. It covered a good mix of curries.\"'),
(907, 12, 4, 4, ''),
(908, 9, 38, 4, 'Overall food is good. Just have to be a bit patient as I felt they were slow on service after ordering food (it may be because it had a parallel birthday party going on and was a bit crowded.'),
(909, 14, 9, 5, 'Combo veg thali... Worth to buy it... Excellent taste ..'),
(910, 20, 22, 5, 'You can feel taste of each'),
(911, 27, 12, 5, 'At end basmati rice has super aroma ..'),
(912, 12, 32, 5, ''),
(913, 1, 17, 5, 'Enjoyed a lovely lunch with a friend first time visited the place good food ambience is very nice and a very curtious staff.'),
(914, 23, 37, 5, ''),
(915, 24, 37, 5, '\"This is the best veg restaurant in terms of food, neatness and service at Gachibowli region. People are very polite while taking orders or serving. Loved it! 🙏🙂\"'),
(916, 13, 34, 5, '\"I\'m a pure non vegetarian, but this place became an exception after I first went there. They serve fresh, hygienic, tasty and flavourful food. They also serve warm ghee with each meal (unlimited).\"'),
(917, 14, 21, 5, 'You should try this place. It will change your perceptions on veg food!'),
(918, 18, 23, 5, 'Very happy with service provided by Nilak das.... happy go Lucky person...'),
(919, 6, 11, 5, 'Will visit just for his service and awsam food served by him i am happy with all'),
(920, 19, 26, 5, '\"Great food, very hygienic and clean. Recommended for vegetarians. I will suggest you try the Tandoori Mushroom. Thank you Bhagirathi Jena and team for the awesome service.\"'),
(921, 10, 15, 4, ''),
(922, 12, 23, 5, 'Good ambience. Amazing food. \'Gol Gol Gaulloti\' and Dal Makhani are must try items.'),
(923, 15, 27, 4, 'Good place!'),
(924, 24, 1, 5, 'Good ambience. Amazing food. \'Gol Gol Gaulloti\' and Dal Makhani are must try items.'),
(925, 25, 11, 5, 'Good place!'),
(926, 19, 20, 4, 'food was delicious and also if we go to restaurant service was also really Good.Ambience is also very nice.and the restaurant was very peaceful to sit and enjoy Food'),
(927, 15, 24, 5, '\"Good ambiance and song playlist 😀, excellent place for deshi food lovers. I tried non-veg and it was really tasty.must try #murgh_mussalam.\"'),
(928, 19, 3, 5, 'Amazing food. We had both veg and non veg food and both were pretty tasty. Very creatively done interior. Very beautiful place. The cutlery used looks cool too.'),
(929, 28, 11, 5, 'This is a go-to place for people staying in and around gachibowli. Finger licking Punjabi food. Even a simple dal and roti tastes amazing here.'),
(930, 26, 37, 4, 'Very filling and taste satiating food.'),
(931, 3, 11, 5, 'Great ambience with Punjabi music on and the staff is very courteous as well.'),
(932, 23, 39, 5, 'You can have absolutely anything here and it would turn out to be good.'),
(933, 17, 37, 5, 'Love this place 🤟'),
(934, 15, 4, 5, 'best fooooooood thanks'),
(935, 4, 1, 3, 'good. was given a fast delivery and fresh & hot food was served'),
(936, 26, 38, 5, '\"This is where I have ordered most of my briyani from. The briyani is very good. I love the briyani and the mirchi-ka-salan is awesome. I always avoided the salan, but once I tried it, there was no going back. I would say this is one of my favourite briyani.\"'),
(937, 27, 16, 4, 'Good Food.'),
(938, 23, 39, 5, 'nice delivery'),
(939, 21, 23, 5, '\"Proper authentic Hyderabadi restaurant. Biryani is great here. Even tandoori roti, masala stuff kulcha, cheese garlic naan and panner is awesome.\"'),
(940, 19, 33, 5, 'gud service and on time'),
(941, 7, 31, 5, 'best one'),
(942, 15, 27, 5, 'good delivery in time'),
(943, 12, 31, 5, 'Quantity is very low'),
(944, 2, 18, 5, 'Fast Delivery'),
(945, 18, 4, 5, '\"One of the top 10 Biriyanis of Hyderabad tbh! I had once gone to this place with my colleagues for an office lunch, and since then this place has been my go to! This time I ordered CHICKEN TIKKA BIRIYANI because this is what I ate the last time and loved it. The packaging is standard and good, the quantity is enough for one person, with tender pieces of chicken and overall, too yumm! 😍 Would love to repeat orders from this restaurant.. and it is also good to take your family and friends for a lunch there :)\"'),
(946, 1, 31, 5, 'I liked the flavors of Andhra in their cuisine. I ordered chicken tikka biriyani with tandoori chicken and coke. I liked biriyani which was plentiful. Nice customer service as they were always ready to serve. Good ambience and locality. I loved my experience at this restaurant in Gachibowli.'),
(947, 12, 11, 5, 'Delicious food good serving and starters taste resionble prices and very good quality and quantity i prefer this resturent best for food'),
(948, 23, 4, 5, ''),
(949, 19, 37, 5, '\"Wonderful taste items, everyone must try different delishies. Must visit and eat and get very pleasure free feeling meal. Very very tasty and yummy\"'),
(950, 9, 1, 3, 'The staff was very kind.'),
(951, 25, 23, 5, 'Food is tasty. I am a fan here. Have tried it multiple times. Ambience is good. Food will be served faster and waiting time is lesser too.'),
(952, 19, 40, 5, '\"Good place to dine with family and friends. They have great chefs, food was very tasty and service was also good. Especially all chicken items are good\"'),
(953, 30, 36, 5, 'Good food and service at a reasonable rate. Love this place for their garlic naan... So rich with garlic..😛 will plan for more visits in the future.'),
(954, 1, 27, 5, 'perfect'),
(955, 27, 11, 5, '\"The taste was really good in non veg starters, In veg paneer starter was awesome and butter non are very soft and good.\"'),
(956, 22, 40, 5, 'Nice place to visit'),
(957, 21, 30, 5, 'Good staff and very polite'),
(958, 28, 22, 5, 'It was random plan to visit this place and turned out to be great. taste was good loved the place though service was little slow but manageable.'),
(959, 24, 16, 5, ''),
(960, 18, 23, 5, 'Ambience is average.'),
(961, 10, 2, 5, '\"Food is awesome, although starters quantity served is less in comparison of price, but taste covers it\'s all.\"'),
(962, 14, 23, 5, ''),
(963, 20, 33, 5, 'Must visit place'),
(964, 19, 37, 5, '\"Staff are very politely and very helpful, service was excellent, and the food was very tasty and good quality, and the ambiance is looking very nice\"'),
(965, 15, 19, 5, 'Visited this place with my friends.'),
(966, 20, 5, 3, ''),
(967, 2, 36, 5, '\"Food is tasty, service was fast.\"'),
(968, 8, 3, 5, 'Would visit again and recommend all my friends to visit again'),
(969, 10, 23, 5, '\"Good budget friendly.. in good location, great place to have team events.\"'),
(970, 18, 40, 5, 'Service is friendly.'),
(971, 9, 4, 5, 'Taste is good'),
(972, 22, 7, 5, 'Economical and tasty.'),
(973, 9, 29, 4, 'Would recommend to all my friends.'),
(974, 24, 37, 5, 'Great food .. never expected such a nice and spicy food in Gachibowli .. loved it ... place was pleasant to hangout with friends ... I recommend it strongly'),
(975, 10, 3, 5, 'Nice place for team lunch and dinner staters are tasty try the stuffed mushrooms & Tandi here Over all ambience and service is good thanks for everything'),
(976, 16, 20, 5, '\"Our first experience with diners pavilion was pretty. The ambience was good. they have a buffet lunch starters , live pasta and main courses was as usual tasty. Staff is polite and care about.\"'),
(977, 17, 38, 5, 'A huge spacious place with good ambience.i like the food here a lot.today I found out there are having live pasta in buffet.starter are yummy.serves was good.'),
(978, 7, 12, 5, 'Probably one of the best locations in NYC. it has been A wonderful experience .The food and service was really good and very prompt. We really enjoyed it. Keep it up.'),
(979, 27, 23, 5, '\"It was good to have a food here.for my taste and budget, I was able to find good varieties of food\"'),
(980, 5, 2, 5, 'It has been a wonderful experience .Been here with my best friend to throw a party . He loved it alot . couldn\'t have asked for a better day. Food items where yummy and delicious for both veg and non veg. service is very good.'),
(981, 12, 27, 5, 'It was wonderful experience ! From the time to step in till step out from restaurant they treated every one with respect & politeness in words! Meal served hot and it has very good taste .looking forward to check-in in this restaurant in coming days for our all events...'),
(982, 2, 36, 5, '\"Great service and even after levying 10% service charge, the bill was pretty easy on the pocket (having Zomato Gold makes it even better!!) All in all a great place for family lunches and dinners!\"'),
(983, 13, 25, 5, 'quick delivery'),
(984, 26, 11, 5, 'Awesome food and ambience. The staff were really quick and served food with smile. Overall it was a nice experience having lunch at Diners pavilion.'),
(985, 24, 12, 5, ''),
(986, 7, 22, 3, ''),
(987, 20, 12, 5, 'not many choices on main course but food was good. desert could have been better'),
(988, 22, 31, 5, 'superb taste but little delay in getting product to deliver'),
(989, 9, 18, 5, '\"I love this place....they have an wide array of bagels, croissants, omelette. It has prefect ambience...that of a quaint English cafe... it\'s sparsely crowded and my preferred place for leisurely Sunday breakfast.\"'),
(990, 5, 27, 5, '\"I visited Cafe Eclat this morning for brunch. Despite the place being full, the service was exceptional. Food tasted fresh and the ambience was lively. Would love to visit again!\"'),
(991, 15, 38, 5, '\"Where to start!! This place is really awesome. Especially their hospitality, how the treat the diners is worth making a point. And this place is best when visited on a Sunday. Ambiance, food, pricing are all perfect. You should never minis their desserts as you\'ll not even have space for all the desserts in place. We visited this place on our friend\'s birthday and they surprised us with cute little cakes and birthday wishes. Will soon visit this place again.\"'),
(992, 10, 31, 5, ''),
(993, 10, 8, 5, 'Great food n service. Thanks to Ratul for extraordinary service. . The ambience is perfect and the food is delicious ..will surely visit again.'),
(994, 25, 23, 5, 'I would like to thank Mahesh for his nice way of approaching customers in the hotel He was so nice and I had an amazing breakfast experience . 🤩🤩🤩'),
(995, 1, 4, 5, 'An amazing place to visit whenever you need a quick stay in Hyderabad. A must try place. And the food is amazing. Really delighted to be here. Do visit for sure. And I\'ll surely visit here the next time i come here. Ratul has provided me with the best service here and other working staff has been very concerned towards the food queries and everything. Do visit whenever you need to taste some amazing food❤'),
(996, 29, 7, 5, '\"Being a regular customer here, reason being the tasty food with good variety of dishes and the service provided by Ratul. I highly recommend this place\"'),
(997, 9, 32, 5, 'Great place to come with family. Very reasonably priced for a Sheraton. Staff is always wonderful and kind. Special thanks to Purmita for excellent service!'),
(998, 5, 6, 5, 'the food here is good and have a lot variety that you can choose. they have excellence service and really make you feel welcome here. definitely will come here again in future.'),
(999, 27, 23, 5, 'Feast should promote Varsha. Very accommodating and really really attentive and nice staff. And she makes nice hot choco. Good way to start my day! Thank you for the good service!'),
(1000, 1, 12, 5, '\"The starters, desserts are too good. Pasta can be improved. The service provided by viroopa was great. Great experience .\"'),
(1001, 17, 19, 5, ''),
(1002, 19, 29, 5, ''),
(1003, 3, 7, 5, 'Had a very good dinner time and service is excellent. kudos to Viroopa who made our dining experience pleasant. Suggest this place for our future team outings.'),
(1004, 23, 40, 5, 'We had gone for our anniversary dinner. Dharma the attendant for very polite and courteous. Food was also very good. Enjoyed our time there thanks to Dharma'),
(1005, 4, 22, 5, 'Awesome ambience and excellent food. Loved the experience. Will surely visit here again.'),
(1006, 29, 19, 5, ''),
(1007, 14, 12, 5, '\"This is my 2nd visit to Sheraton, first time I had dinner at link, 2nd time I had Dinner at feast restaurant, I like the dal makhani it was very tasty,\"'),
(1008, 11, 27, 5, '\"Service was wonderful, I\'ll visit next time with my family\"'),
(1009, 12, 12, 5, 'Great brunch with hotel stay. Lots of options at the buffet and delicious pastries. Espresso too to help me get over jet lag. Have enjoyed my experience at the Sheraton. Thank you Mahesh for your great service!'),
(1010, 29, 23, 5, '\"I\'m very happy today, because of your food , I\'m a food lover \' I like the juice counter there is making fresh juice in live, service was awesome Mr dharma was doing a great service to me . He know what I need , before I ask he will Arrange it. I really like this thing\'s, thanks Sheraton and thank you dharma\"'),
(1011, 6, 4, 5, 'Food is too awsome😋😋 with the friendly environment. Service was awsome and hema and ratul was very accommodating .will be back definitely☺️☺️'),
(1012, 20, 39, 5, '\"Feast Buffet, Very wide spread of food, amazing taste, very friendly Staff, great hospitality, specially associate Ratul was very friendly n helpful\"'),
(1013, 5, 20, 5, 'Have visited this place couple of times and as always their service is great and very quick. Specially their staff is very friendly and caring. Their vast buffet menu will give taste of different cuisine. Visited today for my anniversary with my parent. The service by Mr Dharma made it even great experience for them as he served their requested order very swiftly and they enjoyed the evening. Their live counter was something I loved the most. May be adding some options for veg in starter can make it better for veg folks :)'),
(1014, 24, 40, 5, 'The food was good and tasty and the staff was friendly. Dharma from the serving staff took great efforts to make us comfortable. Dal makhani was a delight.'),
(1015, 10, 39, 3, ''),
(1016, 9, 11, 5, 'good job'),
(1017, 29, 6, 5, 'got delivery in time'),
(1018, 13, 32, 5, 'I was in Hyderabad for around 3 years... During that time I have visited this restaurant more than 50 times... Most of the time have ordered biryani and egg chilly... Dum biryani has been always my favorite here... Never disappointed....'),
(1019, 8, 39, 5, '\"The food was absolutely wonderful, from preparation to presentation, very pleasing. especially the special biryani was awesome. Very friendly staff and owner too...\"'),
(1020, 28, 6, 5, 'on time delivery'),
(1021, 15, 12, 5, 'Chilli potato and Dal tadka is best at this place... Food is very spicy and tasty. We regularly order food from this place. Good food at reasonable price.'),
(1022, 28, 22, 5, ''),
(1023, 27, 37, 5, '\"This place serves delicious food with proper blend of spices . I prefer non veg food and the taste is truly amazing . Pocket friendly , good food quantity and appreciable staff service .\"'),
(1024, 3, 31, 5, 'specially if u like quantity with quality ! A pocket friendly place with decent menu!! Smart and co-operative staff ! Definitely try this place if u haven\'t !'),
(1025, 28, 35, 5, 'Good food at a cheaper price. You can get very good north Indian food at this place.'),
(1026, 26, 24, 5, 'Highly recommended for non vegetarians.'),
(1027, 17, 23, 5, 'I am in love with this place.');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `hashtag`
--
ALTER TABLE `hashtag`
  ADD PRIMARY KEY (`hashtag_id`);

--
-- 테이블의 인덱스 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`),
  ADD UNIQUE KEY `login_id` (`login_id`);

--
-- 테이블의 인덱스 `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- 테이블의 인덱스 `menu_list`
--
ALTER TABLE `menu_list`
  ADD KEY `restaurant_id` (`restaurant_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- 테이블의 인덱스 `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`restaurant_id`),
  ADD KEY `open_days_id` (`open_days_id`);

--
-- 테이블의 인덱스 `restaurant_hashtag`
--
ALTER TABLE `restaurant_hashtag`
  ADD KEY `restaurant_id` (`restaurant_id`),
  ADD KEY `hashtag_id` (`hashtag_id`);

--
-- 테이블의 인덱스 `restaurant_member_likes`
--
ALTER TABLE `restaurant_member_likes`
  ADD KEY `restaurant_id` (`restaurant_id`),
  ADD KEY `liked_member_id` (`liked_member_id`);

--
-- 테이블의 인덱스 `restaurant_open_days`
--
ALTER TABLE `restaurant_open_days`
  ADD PRIMARY KEY (`open_days_id`);

--
-- 테이블의 인덱스 `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `restaurant_id` (`restaurant_id`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `member`
--
ALTER TABLE `member`
  MODIFY `member_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- 테이블의 AUTO_INCREMENT `review`
--
ALTER TABLE `review`
  MODIFY `review_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1028;

--
-- 덤프된 테이블의 제약사항
--

--
-- 테이블의 제약사항 `menu_list`
--
ALTER TABLE `menu_list`
  ADD CONSTRAINT `menu_list_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`),
  ADD CONSTRAINT `menu_list_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`);

--
-- 테이블의 제약사항 `restaurant`
--
ALTER TABLE `restaurant`
  ADD CONSTRAINT `restaurant_ibfk_1` FOREIGN KEY (`open_days_id`) REFERENCES `restaurant_open_days` (`open_days_id`);

--
-- 테이블의 제약사항 `restaurant_hashtag`
--
ALTER TABLE `restaurant_hashtag`
  ADD CONSTRAINT `restaurant_hashtag_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`),
  ADD CONSTRAINT `restaurant_hashtag_ibfk_2` FOREIGN KEY (`hashtag_id`) REFERENCES `hashtag` (`hashtag_id`);

--
-- 테이블의 제약사항 `restaurant_member_likes`
--
ALTER TABLE `restaurant_member_likes`
  ADD CONSTRAINT `restaurant_member_likes_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`),
  ADD CONSTRAINT `restaurant_member_likes_ibfk_2` FOREIGN KEY (`liked_member_id`) REFERENCES `member` (`member_id`);

--
-- 테이블의 제약사항 `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`);
--
-- 데이터베이스: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
