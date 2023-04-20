-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-02-01 08:28:38
-- 伺服器版本： 10.4.24-MariaDB
-- PHP 版本： 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `computer`
--

-- --------------------------------------------------------

--
-- 資料表結構 `que_log`
--

CREATE TABLE `que_log` (
  `id` int(10) NOT NULL,
  `user` int(11) NOT NULL,
  `ip` varchar(16) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `subject_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `que_log`
--

INSERT INTO `que_log` (`id`, `user`, `ip`, `subject_id`, `option_id`, `created_at`) VALUES
(1, 1, '::1', 1, 2, '2023-01-28 15:05:22'),
(2, 1, '::1', 11, 8, '2023-01-28 15:46:22'),
(3, 1, '::1', 27, 18, '2023-01-28 15:46:31'),
(4, 0, '::1', 11, 10, '2023-01-28 15:46:39'),
(5, 0, '::1', 11, 10, '2023-01-28 15:46:43'),
(6, 1, '::1', 11, 10, '2023-01-30 14:00:57'),
(7, 1, '::1', 11, 10, '2023-01-30 14:12:56'),
(8, 0, '::1', 0, 0, '2023-01-30 15:10:04'),
(9, 1, '::1', 11, 8, '2023-01-30 15:17:40'),
(10, 1, '::1', 0, 0, '2023-01-30 15:27:53'),
(11, 1, '::1', 11, 8, '2023-01-30 15:29:00'),
(12, 1, '::1', 11, 8, '2023-01-30 15:29:08'),
(13, 1, '::1', 11, 10, '2023-01-30 15:29:19'),
(14, 1, '::1', 11, 8, '2023-01-30 17:03:21'),
(15, 0, '::1', 11, 8, '2023-01-31 09:03:51'),
(16, 0, '::1', 0, 0, '2023-01-31 09:04:00'),
(17, 0, '::1', 11, 8, '2023-01-31 09:04:05'),
(18, 0, '::1', 0, 0, '2023-01-31 09:11:31'),
(19, 0, '::1', 11, 10, '2023-01-31 09:11:34'),
(20, 1, '::1', 0, 0, '2023-01-31 09:12:01'),
(21, 1, '::1', 11, 8, '2023-01-31 09:12:09'),
(22, 1, '::1', 11, 8, '2023-01-31 09:12:47');

-- --------------------------------------------------------

--
-- 資料表結構 `que_options`
--

CREATE TABLE `que_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `opt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vote` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `que_options`
--

INSERT INTO `que_options` (`id`, `subject_id`, `opt`, `vote`, `created_at`, `updated_at`) VALUES
(8, 11, '有', 3, '2023-01-28 15:12:08', '2023-01-31 09:11:31'),
(10, 11, '沒有', 1, '2023-01-28 15:36:33', '2023-01-31 09:12:01'),
(11, 24, '有', 1, '2023-01-28 15:38:44', '2023-01-30 15:10:04'),
(12, 24, '沒有', 1, '2023-01-28 15:38:44', '2023-01-30 15:10:04'),
(13, 25, '有', 1, '2023-01-28 15:39:14', '2023-01-30 15:10:04'),
(14, 25, '沒有', 1, '2023-01-28 15:39:22', '2023-01-30 15:10:04'),
(15, 26, '有', 1, '2023-01-28 15:39:40', '2023-01-30 15:10:04'),
(16, 26, '沒有', 1, '2023-01-28 15:39:46', '2023-01-30 15:10:04'),
(17, 27, '有', 1, '2023-01-28 15:39:56', '2023-01-30 15:10:04'),
(18, 27, '沒有', 1, '2023-01-28 15:40:03', '2023-01-28 15:40:03');

-- --------------------------------------------------------

--
-- 資料表結構 `que_subject`
--

CREATE TABLE `que_subject` (
  `id` int(10) NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL,
  `vote` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `que_subject`
--

INSERT INTO `que_subject` (`id`, `subject`, `type`, `active`, `vote`, `created_at`, `update_at`) VALUES
(11, '您是否曾經有過中風的預兆？', 1, 1, 3, '2023-01-28 15:12:08', '2023-01-28 15:12:08'),
(24, '您是否有高血壓、糖尿病或高膽固醇的家族史？', 1, 1, 1, '2023-01-28 15:38:44', '2023-01-28 15:38:44'),
(25, '您是否有吸煙或酗酒的習慣？', 1, 1, 1, '2023-01-28 15:39:14', '2023-01-28 15:39:14'),
(26, '您是否曾經有過缺氧或心臟病發作？', 1, 1, 1, '2023-01-28 15:39:40', '2023-01-28 15:39:40'),
(27, '您是否有過腦出血或腦梗塞的歷史？', 1, 1, 1, '2023-01-28 15:39:56', '2023-01-28 15:39:56');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `acc` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pw` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`id`, `acc`, `pw`, `name`, `email`, `last_login`) VALUES
(1, 'mack', '1234', '1234', '1234', '2022-12-25 12:19:08'),
(2, 'ma', '45757', '757575', '5575', '2022-12-25 12:19:17');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `que_log`
--
ALTER TABLE `que_log`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `que_options`
--
ALTER TABLE `que_options`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `que_subject`
--
ALTER TABLE `que_subject`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `que_log`
--
ALTER TABLE `que_log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `que_options`
--
ALTER TABLE `que_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `que_subject`
--
ALTER TABLE `que_subject`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
