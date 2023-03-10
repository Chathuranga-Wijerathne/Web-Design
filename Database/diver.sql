-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2021 at 06:42 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diver`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(200) NOT NULL,
  `name` varchar(50) NOT NULL,
  `comment` varchar(250) NOT NULL,
  `product_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `name`, `comment`, `product_name`) VALUES
(17, 'kamal janith', 'very good web site', ''),
(18, 'kamal janith', 'very good web site', ''),
(19, 'desan kamal', 'very good  product', 'Portable Cabin'),
(20, 'kamal janith', 'zzzz', 'Accessories'),
(21, 'bandara dilruwan', 'cftfdsf', 'Pingers and Pin'),
(22, 'kamal janith', '5etrfhjkl.', 'Accessories'),
(23, 'kamal janith', '5etrfhjkl.', 'qqqq'),
(25, 'Sheshan darmasena', 'good product', 'Accessories');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `ID` int(100) NOT NULL,
  `E-mail` varchar(50) NOT NULL,
  `Message` text NOT NULL,
  `Is_Delete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`ID`, `E-mail`, `Message`, `Is_Delete`) VALUES
(1, 'wweefgdgdgfdg@gmail.com', 'yftdtdstdtstdsg  gysftsty tyusttyf zf yugy fxy ', 0),
(2, 'QQQQQQQQ@GMAIL.COM', 'WASQWYYH  TRR TYEY YR    TRTEYTRTY', 1),
(3, 'qqqqq@gmail.com', 'qqwwww dddddd', 1),
(4, 'Sheshan12@gmail.com', 'qewqerrtrt', 0),
(5, '', '', 1),
(6, '', '', 1),
(7, '', '', 1),
(8, '', '', 1),
(9, '', '', 1),
(10, 'sahan@gmail.com', '', 0),
(11, 'sahan@gmail.com', '', 0),
(12, 'aaa@gmail.com', '', 0),
(13, '', '', 1),
(14, 'sahan@gmail.com', 'aaaaa', 0),
(15, '', '', 1),
(16, '', '', 1),
(17, '', '', 1),
(18, '', '', 1),
(19, 'sahan@gmail.com', 'HHHHH', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gal`
--

CREATE TABLE `gal` (
  `Id` int(10) NOT NULL,
  `Title` text NOT NULL,
  `Image` varchar(500) NOT NULL,
  `Is_Delete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gal`
--

INSERT INTO `gal` (`Id`, `Title`, `Image`, `Is_Delete`) VALUES
(1, 'first image', 'hull02.JPG', 0),
(2, 'first image', 'hull02.JPG', 1),
(3, 'second', 'hull04.JPG', 0),
(4, 'wert', 'download (7).jfif', 1),
(5, '3rd', '10.jfif', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `user_id` int(10) NOT NULL,
  `accessories` int(2) NOT NULL,
  `boat_towed_meta` int(2) NOT NULL,
  `brush_kart` int(2) NOT NULL,
  `hand_held_metal` int(2) NOT NULL,
  `hydraulic_power` int(2) NOT NULL,
  `mini_brush_kart` int(2) NOT NULL,
  `pali_bilgesafe` int(2) NOT NULL,
  `pingers_and_pin` int(2) NOT NULL,
  `protable_cabin` int(2) NOT NULL,
  `remote_operated` int(2) NOT NULL,
  `sonar_systems` int(2) NOT NULL,
  `underwate_came` int(2) NOT NULL,
  `total_prices` double NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`user_id`, `accessories`, `boat_towed_meta`, `brush_kart`, `hand_held_metal`, `hydraulic_power`, `mini_brush_kart`, `pali_bilgesafe`, `pingers_and_pin`, `protable_cabin`, `remote_operated`, `sonar_systems`, `underwate_came`, `total_prices`, `is_deleted`, `id`) VALUES
(9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
(4, 1, 1, 2, 1, 0, 0, 1, 0, 0, 2, 0, 0, 412808, 0, 2),
(4, 1, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 222799, 0, 3),
(4, 2, 3, 2, 2, 2, 1, 4, 5, 6, 2, 5, 7, 1345598, 0, 4),
(4, 1, 1, 2, 0, 0, 1, 0, 5, 6, 0, 5, 7, 649894, 0, 5),
(4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 421352, 0, 6),
(4, 1, 1, 2, 1, 0, 0, 0, 0, 1, 1, 1, 0, 281353, 0, 7),
(4, 0, 1, 3, 0, 0, 1, 1, 0, 0, 0, 5, 0, 256899, 0, 8),
(4, 1, 1, 2, 1, 0, 1, 1, 5, 0, 0, 0, 0, 300898, 0, 9),
(4, 1, 1, 2, 1, 0, 1, 1, 5, 0, 0, 0, 0, 300898, 0, 10),
(5, 1, 3, 3, 0, 0, 0, 0, 0, 6, 2, 0, 0, 612604, 0, 11),
(5, 1, 1, 3, 1, 0, 0, 0, 0, 6, 0, 0, 0, 247893, 0, 12),
(4, 1, 1, 2, 2, 0, 1, 1, 5, 6, 0, 5, 0, 568891, 0, 13),
(4, 1, 1, 3, 0, 0, 0, 1, 5, 0, 0, 0, 0, 234899, 0, 14),
(26, 1, 1, 2, 1, 0, 0, 1, 5, 6, 2, 0, 0, 649802, 0, 15),
(4, 1, 1, 2, 1, 0, 1, 1, 5, 6, 0, 5, 0, 532892, 0, 16),
(4, 2, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 688147, 0, 17),
(4, 1, 1, 2, 0, 0, 1, 0, 0, 6, 0, 0, 0, 241894, 0, 18),
(4, 1, 1, 2, 1, 0, 1, 1, 5, 0, 0, 0, 0, 327898, 0, 19),
(4, 1, 1, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 211900, 0, 20),
(4, 1, 1, 2, 1, 0, 0, 1, 5, 0, 2, 0, 0, 544808, 0, 21),
(5, 1, 1, 2, 0, 1, 1, 1, 5, 6, 0, 1, 1, 482893, 0, 22),
(4, 1, 1, 2, 1, 0, 1, 1, 5, 6, 2, 5, 7, 1009802, 0, 23),
(4, 1, 1, 2, 0, 0, 1, 1, 1, 6, 0, 5, 7, 642893, 0, 24),
(4, 1, 1, 2, 1, 1, 1, 1, 5, 6, 2, 5, 7, 1019802, 0, 25),
(4, 1, 1, 2, 1, 0, 1, 1, 5, 6, 2, 5, 7, 1009802, 0, 26),
(26, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 106900, 0, 27),
(4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 448352, 0, 28),
(4, 1, 1, 2, 1, 0, 0, 0, 0, 0, 2, 5, 7, 692809, 0, 29),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32),
(4, 0, 1, 2, 2, 0, 1, 2, 5, 6, 0, 0, 0, 515890, 0, 33),
(4, 1, 0, 0, 0, 0, 0, 0, 5, 6, 0, 0, 0, 266994, 0, 34),
(4, 0, 0, 0, 0, 0, 1, 1, 5, 6, 0, 0, 0, 316993, 0, 35),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36),
(4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 37),
(4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 38),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41),
(13, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 42),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 29000, 0, 44),
(4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45),
(4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 46),
(4, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 47),
(4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 48),
(4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 1, 50),
(4, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 230700, 0, 51),
(4, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 52),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 131998, 0, 53),
(4, 0, 3, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 374696, 0, 54),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 55),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 56),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76900, 0, 57),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 60),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 61),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 123455, 0, 63),
(4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 64),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 65),
(4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 106900, 0, 66),
(4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67),
(4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 68),
(4, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76900, 0, 69),
(4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 70),
(4, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 65999, 0, 71),
(4, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 72),
(4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 30000, 0, 73),
(4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 49999, 0, 74),
(4, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 21000, 0, 75),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 21999, 0, 76),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 123455, 0, 77),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 20000, 0, 78),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 29000, 0, 79),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 29000, 0, 80),
(4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 29000, 0, 81),
(4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 82),
(4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 83),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50000, 1, 84),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29000, 1, 85),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 498352, 1, 86),
(13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 498352, 1, 87),
(13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 88),
(13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 1, 89),
(13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 338697, 1, 90),
(13, 5, 3, 0, 3, 0, 3, 0, 0, 0, 4, 0, 0, 922517, 0, 91),
(13, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92),
(13, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 106900, 0, 93),
(13, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 106900, 0, 94),
(13, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 106900, 0, 95),
(13, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76900, 0, 96),
(13, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 97),
(13, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76900, 0, 98);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(200) NOT NULL,
  `name` varchar(50) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pay` varchar(20) NOT NULL,
  `number` int(15) NOT NULL,
  `cvv` int(10) NOT NULL,
  `month` varchar(15) NOT NULL,
  `Year` int(5) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `payments` double NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `name`, `last_name`, `email`, `pay`, `number`, `cvv`, `month`, `Year`, `is_delete`, `payments`, `user_id`) VALUES
(2, 'nimal', 'siril', 'nimal@gmail', 'debit', 78990099, 234, '5', 2021, 0, 234899, 4),
(3, 'desan', 'kamal', 'sahan@gmail.com', 'visa', 9999999, 1111, '01', 2022, 0, 6498021, 5),
(4, 'kamal', 'janith', 'dhammika96815@gmail.com', 'paypal', 34656567, 1114, '12', 2222, 0, 532892, 4),
(5, 'kamal', 'janith', 'dhammika96815@gmail.com', 'debit', 2147483647, 11111, '12', 2022, 0, 241894, 4),
(6, 'kamal', 'janith', 'dhammika96815@gmail.com', 'paypal', 2222222, 2222, '08', 2022, 0, 32, 4),
(7, 'cccc', 'uuuu', 'ccccc@gmail.com', 'credit', 456677899, 5656, '09', 2022, 0, 211900, 4),
(8, 'cccc', 'uuuu', 'ccccc@gmail.com', 'credit', 55555555, 2333, '12', 2222, 0, 544808, 4),
(9, 'kamala', 'gamage', 'Surath@gmail.com', 'visa', 2147483647, 3456, '03', 2022, 0, 642893, 4),
(10, 'kkk', 'wwww', 'kamal1@gmail.com', 'visa', 34567890, 2222, '02', 2022, 0, 1009802, 4),
(11, 'bandara', 'dilruwan', 'bandara@gmail.com', 'paypal', 222222, 3456, '04', 2022, 0, 106900, 26),
(12, 'desan', 'kamal', 'sahan@gmail.com', 'visa', 354657687, 234, '12', 2023, 0, 448352, 4),
(13, 'Nisal ', 'Perera', 'nisal@gmail.com', 'credit', 1234567890, 1234, '09', 2021, 0, 30000, 13),
(14, 'aa', 'aa', 'aaaa@gmail.com', 'debit', 345, 345, '08', 2022, 0, 123455, 4),
(15, 'Sheshan', 'darmasena', 'Sheshan12@gmail.com', 'paypal', 23456, 2345, '09', 2030, 0, 50000, 4),
(16, 'Nisal', 'Perera', 'nisal@gmail.com', 'paypal', 2234455, 2345, '02', 2023, 0, 498352, 13),
(17, 'Nisal', 'Perera', 'nisal@gmail.com', 'visa', 23456, 1234, '12', 2022, 1, 76900, 13),
(18, 'Nisal', 'Perera', 'nisal@gmail.com', 'debit', 46556798, 3423, '09', 2023, 1, 76900, 13);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `product_name` varchar(15) NOT NULL,
  `product_prices` double NOT NULL,
  `product_brand` varchar(10) NOT NULL,
  `description` varchar(50) NOT NULL,
  `store` int(5) NOT NULL,
  `made_in` varchar(20) NOT NULL,
  `manufactured_by` varchar(40) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_prices`, `product_brand`, `description`, `store`, `made_in`, `manufactured_by`, `is_deleted`, `image`) VALUES
(1, 'Pingers and Pin', 21000, 'JW FISHERS', 'JW Fishers has added acoustic pingers and a pinger', 50, 'sri lanka', 'JW FISHERS', 0, 'OIP (5).jfif'),
(2, 'Accessories', 30000, 'JW FISHERS', 'JW Fishers offers many accessories to make your un', 10, 'sri lanka', 'JW FISHERS', 0, '1.jfif'),
(3, 'BRUSH-KART', 50000, 'O.M.P.-BRU', 'sweep = 1.150 m,Speed = 40 m/mn,Weight in the air ', 20, 'England', 'O.M.P.', 0, 'brush-kart.jpg'),
(4, 'MINI BRUSH-KART', 30000, 'O.M.P.- MI', 'weep = 0.700 m ,Speed = 45 m/mn,Weight in the air ', 50, 'England', 'O.M.P.', 0, 'mini-brush-kart.jpg'),
(5, 'HYDRAULIC POWER', 10000, 'O.M.P.-HYD', 'Powered by a 60 hp diesel engine', 10, 'England', 'O.M.P.', 0, 'hydraulic-power-1.jpg'),
(6, 'Portable Cabin ', 21999.99, 'WEST MARIN', 'Model # 7867500', 30, 'England', 'WEST MARINE', 0, '7867500.jpg'),
(7, 'Pali BilgeSafe ', 49999.99, 'CAFRAMO', 'Model # 12960282', 5, 'England', 'PLUS ', 0, '12960282_1500.19062018020010.jpg'),
(8, 'Hand Held Metal', 35999.99, 'JW FISHERS', 'JW Fishers Pulse 10 and Pulse 12 metal detectors', 20, 'SRI LANKA', 'JW FISHERS', 0, 'OIP.jfif'),
(9, 'Boat Towed Meta', 76900, 'JW FISHERS', 'JW Fishers Pulse 10 and Pulse 12 metal detectors', 30, 'SRI LANKA', 'JW FISHERS', 0, 'OIP (1).jfif'),
(10, 'Remote Operated', 1234556, 'JW FISHERS', 'JW Fishers Pulse 10 and Pulse 12 metal detectors', 5, 'SRI LANKA', 'JW FISHERS', 0, 'OIP (2).jfif'),
(11, 'Underwater Cam', 29000, 'JW FISHERS', 'JW Fishers Pulse 10 and Pulse 12 metal detectorS', 10, 'SRI LANK', 'JW FISHERS', 0, '12.jfif'),
(12, 'Sonar Systems', 20000, 'JW FISHERS', 'JW Fishers Pulse 10 and Pulse 12 metal detectors', 12, 'SRI LANKA', 'JW FISHERS', 0, 'OIP (4).jfif'),
(13, 'JOK DIVER’S REC', 100, 'JOK DIVER’', 'The JOK II is a CE-marked diver recovery of a full', 10, 'sri lanka', 'JOK DIVER’S', 1, 'ctecnics-harness.jpg'),
(14, 'aaaa', 1000, 'aaaa', 'www', 101, 'SRI LANK', 'qqqq', 1, 'ctecnics-harness.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `ship_name` varchar(50) NOT NULL,
  `registration_id` varchar(12) NOT NULL,
  `image` varchar(200) NOT NULL,
  `country` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL,
  `job_description` varchar(500) NOT NULL,
  `other` varchar(500) NOT NULL,
  `is_delete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`ship_name`, `registration_id`, `image`, `country`, `type`, `job_description`, `other`, `is_delete`) VALUES
('bluemarring', '1', 'download (4).jpg', 'Sri Lanka', 'Special ship', 'Hull Cleaning & Propeller Polishing', '2019', 1),
('HERMANN SCHEPERS', '100007896', 'download (6).jfif', 'Antigua & Barbuda', 'Container Ship', 'Underwater CCTV Inspection', '2019', 0),
('aa', '123', 'download (7).jpg', 'England', 'conterner', 'Hull Cleaning & Propeller Polishing1', '2023', 1),
('WILTON', '123400000', 'download (2).jfif', 'England', 'Bulk carrier', 'Hull Cleaning & Propeller Polishing', '2019', 0),
('OEL BENGAL', '123457895', 'download (4).jfif', 'Liberia', 'Container Ship', 'In-water Survey', '209', 0),
('qqqq', '2', 'download (3).jpg', 'Sri Lanka', 'Cargo ship', 'Hull Cleaning & Propeller Polishing', '2019', 1),
('kik12', '234567', 'download (1).jpg', 'England', 'Cargo shiP', 'Hull Cleaning & Propeller Polishing', '2020', 1),
('desan kamal', '2345671', 'download (8).jpg', 'Sri Lanka', 'Cargo ship', 'Hull Cleaning & Propeller Polishing', '2019', 1),
('bang', '3', '221326.jpg', 'sri lankan', 'Cargos ship2', 'Hull Cleaning & Propeller Polishing1', '2023', 1),
('kamal janith', '3445', 'download (7).jfif', 'Sri Lanka', 'Cargo ship', 'Hull Cleaning & Propeller Polishing', '2021', 1),
('AAA12', '4', 'download (1).jpg', 'Sri Lankan', 'Cargo ship1', 'Hull Cleaning & Propeller Polishing1', '2021', 1),
('qqwerf', '400', 'download (2).jpg', 'England', 'conterner', 'hcl', '2022', 1),
('CONTI CANBERRA', '432567678', 'download (5).jfif', ' Liberia', 'Container Ship', 'Rudder reading and pintale clearance', '2019', 0),
('RT ODIN', '538006044', 'download (7).jfif', 'Marshall Islands', 'Cargo ship', 'Installation of new Echo sounder and cleaning the Transducers', '2019', 0),
('MSC FILOMENA', '636092166', 'pexels-photo-1117210.jpeg', 'Liberia', 'Container Ship', 'Hull Cleaning', '2010 ( 11 years old )', 0),
('ST JHON BOX', '678456789', 'pexels-photo-906982.jpeg', 'Liberia', 'Container Ship', 'In-water Survey ', '2019', 0),
('LITRO GAS', '895634567', 'images.jfif', 'Sri Lanka', 'Tanker Ships.', 'Inspection on PLEM at CBM', '2019', 0),
('CEB', '901278345', 'download.jfif', 'sri lanka', 'CEB Ship', 'Remove deposited debris', 'n 1882, Ceylon, which was a colony of Britain.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `User_ID` int(11) NOT NULL,
  `User_Name` varchar(100) NOT NULL,
  `User_Email` varchar(50) NOT NULL,
  `Phone_Number` varchar(20) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `Ship_Name` varchar(100) NOT NULL,
  `Ship_Registration_Country` varchar(20) NOT NULL,
  `Registration_Id` varchar(10) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Height` varchar(10) NOT NULL,
  `Width` varchar(10) NOT NULL,
  `Length` varchar(10) NOT NULL,
  `Others` varchar(100) NOT NULL,
  `Ship_Image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`User_ID`, `User_Name`, `User_Email`, `Phone_Number`, `Country`, `Ship_Name`, `Ship_Registration_Country`, `Registration_Id`, `Type`, `Height`, `Width`, `Length`, `Others`, `Ship_Image`) VALUES
(13, 'king1', 'nisal@gmail.com', '07123456789', 'England', 'king1', 'England', '100000012', 'Container Ships', '34', '891', '90', 'null', 'download.jpg'),
(26, 'rokat', 'bandara@gmail.com', '07845678934', 'Sri Lanka', 'rokat', 'Sri Lanka', '123467', 'Tanker Ships.', '34', '89', '90', 'species boart', 'pexels-photo-915698.jpeg'),
(4, 'Sheshan', 'Sheshan12@gmail.com', '9477543210', 'England', 'orien-1', 'England', '199999', 'Container Ships', '341', '891', '901', 'Asia operation', 'download (1).jfif');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `Company` varchar(100) NOT NULL,
  `Ship_Name` varchar(50) NOT NULL,
  `Ship_ID` varchar(25) NOT NULL,
  `Length` float NOT NULL,
  `Width` float NOT NULL,
  `Height` float NOT NULL,
  `Country` varchar(20) NOT NULL,
  `E-mail` text NOT NULL,
  `Area_Code` varchar(5) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Under_Water` text NOT NULL,
  `Above_Water` text NOT NULL,
  `Other` text NOT NULL,
  `Is_Delete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `user_id`, `First_Name`, `Last_Name`, `Company`, `Ship_Name`, `Ship_ID`, `Length`, `Width`, `Height`, `Country`, `E-mail`, `Area_Code`, `Phone`, `Under_Water`, `Above_Water`, `Other`, `Is_Delete`) VALUES
(2, 5, 'kamal', 'janith', 'ssss', 'kamal janith', '23456', 90, 89, 34, 'Sri Lanka', 'dhammika96815@gmail.com', '76', '7303622', 'Cable Laying,Underwater Video Filming & Monitoring,Underwater Welding & Cutting', 'Supply of fresh water to ships in & outside the harbor,Hull & Machinery repairs. (Floating Workshop)', 'wwqqq', 0),
(3, 4, 'deshan1', 'janith3', 'Power', 'orien', '23456234', 90, 89.56, 34.89, 'Sri Lanka', 'deshan@gmail.com', '76', '7303622', 'Ultrasonic gauging of plate thickness', '', 'wwww', 1),
(4, 4, 'desan', 'kamal', 'ssss', 'desan kamal', '23456', 901, 891, 341, 'Sri Lanka', 'sahan@gmail.com', '76', '7303622', 'Ultrasonic gauging of plate thickness,Propeller Polishing', 'Hull & Machinery repairs. (Floating Workshop),Ship Repairs', 'aeyooo', 1),
(5, 26, 'bandara', 'dilruwan', 'wc', 'rokat', '1234567', 90, 89, 34, 'Sri Lanka', 'bandara@gmail.com', '76', '7303622', 'Deep diving work for Hydro Power Dams,Propeller Polishing,Underwater Video Filming & Monitoring', 'Transportation of material and equipment outside,Ship Repairs', '', 0),
(6, 4, 'kamal', 'janith', 'ssss', 'kamal janith', '333214', 901, 89, 341, 'Sri Lanka', 'dhammika96815@gmail.com', '76', '7303622', 'Pipe lining & Inspection', '', 'qe', 0),
(7, 13, 'Nisal', 'Perera', 'Power', 'King1', '100000012', 90, 891, 90, 'Sri Lanka', 'nisal@gmail.com', '94', '1234567', 'Rock Blasting,Laying and Recovery of Oceanographic Instruments', 'Transportation of material and equipment outside,Ship Repairs', 'bigger', 0),
(8, 4, 'asss', 'www', 'ww', 'ww', '23456', 901, 89, 34, 'sri lanka', 'wweref@gmail.com', '76', '7303611', '', 'Transportation of material and equipment outside', '', 0),
(9, 1, 'AAa', 'as', 'errt', 'AAa', '234561212', 90, 891, 341, 'sri lanka', 'qwertrtr@gmail.com', '23', '1235689', 'Deep diving work for Hydro Power Dams', 'Providing Supply Boats', '', 0),
(10, 1, 'stkk', 'janith', 'ssss', 'kamal janith', '10000001289', 90, 89.56, 341, 'Sri Lanka', 'dhammika96815@gmail.com', '76', '7303622', 'Deep diving work for Hydro Power Dams,Laying and Recovery of Oceanographic Instruments', '', '', 0),
(11, 1, 'Sheshan', 'darmasena', 'orien', 'Orien-1', '99999', 90, 891, 90, 'England', 'Sheshan12@gmail.com', '947', '7543210', 'Salvage & Towage of Ships', '', 'Asia operation ship', 0),
(12, 4, 'Sheshan', 'darmasena', 'orien', 'Orien-2', '199999', 90, 89, 341, 'England', 'Sheshan12@gmail.com', '947', '7543210', 'In Water Surveys of Ships', 'Hull & Machinery repairs. (Floating Workshop)', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(12) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone_number` bigint(15) NOT NULL,
  `type` int(1) NOT NULL,
  `password` varchar(40) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `profile` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `address`, `phone_number`, `type`, `password`, `last_login`, `is_delete`, `profile`) VALUES
(1, 'Dhammika', 'Kekulawala', 'dhammika96815@gmail.com', 'No.16/A,Maharanugegoda,Kadawatha.', 94767303622, 0, 'b991facf2282eefcc598ef3ae899b51cecbb7422', '2021-06-11 21:01:10', 0, 'download (1).jfif'),
(2, 'kamal', 'Gunarathna', 'kamal111@gmail.com', 'No.501/A,dewalapara,Kadawatha.', 94292000011, 1, '21928b092ec42f4645063378bfbfb3da3674be76', '2021-06-10 18:16:16', 0, 'download.jfif'),
(3, 'kamala', 'gamage', 'Aamal@gmail.com', 'No.500/A,Kadawatha1', 9721474836, 1, '951d89aa59b2fbf07ad639f7ff8d340b2d7fe7dc', '2021-04-18 22:39:11', 0, 'images (2).png'),
(4, 'Sheshan', 'darmasena', 'Sheshan12@gmail.com', '', 0, 2, 'a0fff0d90cbd5f02c2ec120ce68884d35b0f6134', '2021-06-11 18:07:33', 0, ''),
(5, 'samantha', 'delshan', 'samatha1@gmail.com', '', 0, 2, 'c650012a14c67b57ada9e54c6a9d46db6a606ea2', '2021-03-25 14:20:00', 0, ''),
(6, 'Thilina', 'Dilshan', 'thilaka123@gamail.com', '', 0, 2, 'f37ba291fc69e5b4902a951f005faf94ce47b8c7', '0000-00-00 00:00:00', 0, ''),
(8, 'kumara', 'sangakkara', 'kumar123@gmail.com', '', 0, 2, '79ddfe0ec305d387475c87613cb14b31f1f32935', '0000-00-00 00:00:00', 0, ''),
(9, 'pubudu', 'surweera', 'pubudu123@gmail.com', '', 0, 2, '3781d8b6a4f40d27d0631069c1c8ad0646633e3b', '2021-03-25 13:46:46', 0, ''),
(10, 'Deshan', 'Surweera', 'deshan123@gmail.com', '', 0, 2, 'ae1e13d98586dc58f0d7ce85f03279120a9bab76', '0000-00-00 00:00:00', 0, ''),
(12, 'Aamal', 'Deshan', 'deshan12@gmail.com', '', 0, 2, '711669c76a70cd0a5c572480b72257e8b34f43c6', '2021-06-11 14:07:29', 0, ''),
(13, 'nisal', 'perera', 'nisal@gmail.com', '', 0, 2, 'a77057357b792bd6e8d7a9b089cea68d26a6cfd1', '2021-06-11 11:30:50', 0, ''),
(14, 'mahela', 'silva', 'mahela@gmail.com', '', 0, 2, '65cae16dae1803dbe7859cbafdc265b5e93ca05d', '0000-00-00 00:00:00', 0, ''),
(16, 'Surath', 'Ruwan', 'Surath@gmail.com', 'No.23/A, mawatha, Kadawatha.', 7812345678, 1, '9c61bf3a3856d2082a78972b51a31799ac173cdc', '2021-04-18 22:43:46', 0, 'images (12).jfif'),
(17, 'Esara', 'Didulantha', 'Esara@gmail.com', '', 0, 2, 'ac4dff6d4812dafcb7c07033717f702adbcedd52', '2021-04-15 08:10:19', 0, ''),
(18, 'Malith', 'Methnuwan', 'malith@gmail.com', '', 0, 2, '1a13e73826ce43d5b575e4aa670ec5a5a16eaa16', '2021-03-25 14:26:43', 0, ''),
(19, 'Roshel', 'Silva', 'Roshel@gmail.com', 'No.56/B,kadana.', 94112867345, 1, '17b15f6ff63d2e7da58fcbaecbdba0f2cdb20077', '2021-04-18 22:41:51', 0, '72cd969f8e21be3476277d12d44c791c.png'),
(21, 'chathura', 'wijerathne', 'chathurawijerathne314@gmail.com', 'pattalegedara, padeniya', 94778076852, 0, '2a9a4e66fc3bd3a95cf19e3ef3dab2089f35eaba', '0000-00-00 00:00:00', 0, ''),
(22, 'Madhawa', 'sivirathna', 'msivirathna@gmail.com', '134 Rumbukkana road Galagedara', 94779656789, 0, '75df801bf62266f441252b86b32a731367d6cf4a', '0000-00-00 00:00:00', 0, ''),
(23, 'Dhananjaya', 'Weerasingha', 'dhananjayagreat99@gmail.com', '262/3,Ranawana Road, Katugastota', 94769841722, 0, '8ca2f369c668bd5a40364b344d965d7d79fc6da7', '0000-00-00 00:00:00', 0, ''),
(24, 'sandeepa', 'madubashana', 'kv.sandeepamadubashna@gmail.com', '11/3,Sri gnanendra Road,Rathmalana', 94712991405, 0, '723f0e9935aa6aa4e81f250707fefc2657d70f49', '0000-00-00 00:00:00', 0, ''),
(25, 'Pubudu', 'Kanchana', 'pubudu-kachana@gmail.com', 'Kendaliaddapaluwa, ganemulla.', 94771234567, 1, '94ecba6ab8929542f7faa74a7c96226a283d964e', '2021-04-19 21:32:06', 0, 'images (10).jfif'),
(26, 'Bandara', 'Dilruwan', 'bandara@gmail.com', '', 0, 2, 'aff7b5464664d23ef04bf12334cbbc67038e2788', '2021-04-19 21:42:36', 0, ''),
(27, 'Sanjula', 'Perera', 'SanjulaPerera@gmail.com', 'No.234/C,sarawagina,Hidagala', 94777234567, 1, '855e12c2ba960020db85c839fda89c1f5b80504d', '2021-05-11 21:40:57', 0, 'images (6).png'),
(29, 'Nawod', 'Franado', 'Nawod456@gmail.com', '', 0, 2, '09a005f81b70291128d77ad9d2f0eae90c48e664', '0000-00-00 00:00:00', 0, ''),
(30, 'Sanath', 'Perera', 'Sanath123@gmail.com', 'No.161/A,Maharanugegoda,Kadawatha.', 713456790, 1, 'a91cbcb7a58118884f8871ba29fe21c1c5ffcb71', '2021-06-11 16:39:39', 0, 'images (4).jfif'),
(31, 'Sadun', 'Godage', 'Sadun123@gmail.com', '', 0, 2, 'fd671b2065b352471f3d8d384e82dd323ee93290', '0000-00-00 00:00:00', 0, ''),
(32, 'Nihal', 'Lokuge', 'Nihal123@gmail.com', '', 0, 2, 'b70bcde46520c098f9d9d4b90c885ac75cf95ebd', '0000-00-00 00:00:00', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `vessels`
--

CREATE TABLE `vessels` (
  `vessels_id` int(5) NOT NULL,
  `vessels_name` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `length_overall` varchar(15) NOT NULL,
  `speed` varchar(15) NOT NULL,
  `bollard_pall` varchar(50) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `breadth` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vessels`
--

INSERT INTO `vessels` (`vessels_id`, `vessels_name`, `image`, `length_overall`, `speed`, `bollard_pall`, `is_deleted`, `breadth`) VALUES
(1, 'Puffin', 'Puffin-1.png', '15.24 m', '9 knots', ' 3 tons  280 HP at 750 RPM', 0, '3.96 m'),
(2, 'Puffin II', 'Puffin-II.jpg', '15.24 m', '9 knots', ' 8 tons 280 HP at 750 RPM', 0, '3.96 m'),
(3, 'Puffin VII', 'Puffin-VII-e.jpg', '15.24 m', '9 knots', '2.4tons240 HP at 1800 RPM', 0, '3.43 m'),
(4, 'Puffin IV', 'PUFFFin-IV.jpg', '12.65 m', '9 knots', '2.4 tons 240 HP at 1800 RPM', 0, '3.43 m'),
(5, 'Puffin V', 'PUffin-V.jpg', '12.65 m', '9 knots', '2.4tons 240 HPat 1800 RPM', 0, '3.38 m'),
(6, 'Puffin VI', 'Puffin-VI-e.jpg', '12.65 m', '15 knots', '10 Passengers 435 HP X 2', 0, '3.95 m'),
(7, 'Puffin VIII', 'puffin-VIII.jpg', '15.43 m', '9 knots', '8 tons 450 HP X 2,1800 RPM.', 0, '3.38 m'),
(8, 'Puffin1234', 'Puffin-VI-e.jpg', '15.24 m', '92knots', ' 3 tons 280 HP ', 1, '3.96 1m');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `gal`
--
ALTER TABLE `gal`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`registration_id`);

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`Registration_Id`),
  ADD KEY `User_ID` (`User_ID`) USING BTREE;

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vessels`
--
ALTER TABLE `vessels`
  ADD PRIMARY KEY (`vessels_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `gal`
--
ALTER TABLE `gal`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `vessels`
--
ALTER TABLE `vessels`
  MODIFY `vessels_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `records`
--
ALTER TABLE `records`
  ADD CONSTRAINT `records_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
