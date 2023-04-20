-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-12-25 07:55:38
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
-- 資料表結構 `menu`
--

CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `cpu` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `mb` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ram` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `vga` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cooler` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT '散熱器',
  `ssd` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `psu` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `chassis` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT '機殼'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `menu`
--

INSERT INTO `menu` (`id`, `cpu`, `mb`, `ram`, `vga`, `cooler`, `ssd`, `psu`, `chassis`) VALUES
(1, 'amd-5600x', 'rog strix b550-f gaming(wifi)', '美光 Crucial Ballistix D4 3600 8g*2', 'gtx-750 2g', '虎撤2', 'wd sn570', '酷媽 金牌650w', '君主AIR 1000 Premium');

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
-- 已傾印資料表的索引
--

--
-- 資料表索引 `menu`
--
ALTER TABLE `menu`
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
-- 使用資料表自動遞增(AUTO_INCREMENT) `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
