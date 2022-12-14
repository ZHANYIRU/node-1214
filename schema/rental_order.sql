-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-12-07 00:41:32
-- 伺服器版本： 10.5.17-MariaDB
-- PHP 版本： 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `hiking`
--

-- --------------------------------------------------------

--
-- 資料表結構 `rental_order`
--
DROP TABLE IF EXISTS `rental_order`;
CREATE TABLE `rental_order` (
  `order_sid` int(11) NOT NULL,
  `order_num` varchar(255) NOT NULL,
  `rental_sid` int(11) NOT NULL,
  `store_out` varchar(255) DEFAULT NULL COMMENT '(租)',
  `store_back` varchar(255) DEFAULT NULL COMMENT '(還)',
  `out_date` date DEFAULT NULL,
  `back_date` date DEFAULT NULL,
  `day` int(11) NOT NULL,
  `deliveryFee` int(11) NOT NULL COMMENT '跨店費用',
  `qty` int(255) NOT NULL,
  `total` int(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `star` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `messageTime` date DEFAULT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `rental_order`
--
ALTER TABLE `rental_order`
  ADD PRIMARY KEY (`order_sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `rental_order`
--
ALTER TABLE `rental_order`
  MODIFY `order_sid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
