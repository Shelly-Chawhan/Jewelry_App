-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2024 at 08:15 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbjewels`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(4) UNSIGNED ZEROFILL NOT NULL,
  `jewel_id` int(4) UNSIGNED ZEROFILL NOT NULL,
  `qty` int(4) NOT NULL DEFAULT 0,
  `cust_id` int(4) UNSIGNED ZEROFILL NOT NULL,
  `checkout` varchar(1) NOT NULL DEFAULT 'n',
  `added` timestamp NOT NULL DEFAULT current_timestamp(),
  `checkedon` date NOT NULL,
  `trans` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `jewel_id`, `qty`, `cust_id`, `checkout`, `added`, `checkedon`, `trans`) VALUES
(0007, 0087, 1, 0003, 'y', '2024-04-28 04:15:49', '2024-04-28', 924932137),
(0008, 0084, 1, 0009, 'y', '2024-04-28 05:44:19', '2024-04-28', 2138760337),
(0009, 0006, 2, 0009, 'y', '2024-04-28 05:49:14', '2024-04-28', 847384509),
(0010, 0128, 2, 0011, 'y', '2024-04-29 23:53:18', '2024-04-29', 651755437);

-- --------------------------------------------------------

--
-- Table structure for table `jewellery`
--

CREATE TABLE `jewellery` (
  `id` int(4) UNSIGNED ZEROFILL NOT NULL,
  `prodname` varchar(30) NOT NULL,
  `path` varchar(100) NOT NULL DEFAULT 'images/nophoto.gif',
  `category` int(33) NOT NULL DEFAULT 0,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `descr` text NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'latest',
  `noviews` int(4) NOT NULL DEFAULT 0,
  `topsell` int(4) NOT NULL DEFAULT 0,
  `zodiac_sign` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci PACK_KEYS=0;

--
-- Dumping data for table `jewellery`
--

INSERT INTO `jewellery` (`id`, `prodname`, `path`, `category`, `price`, `descr`, `type`, `noviews`, `topsell`, `zodiac_sign`) VALUES
(0001, 'Diamond/Bangles/1.jpg', 'Diamond/Bangles/1.jpg', 1, 1000.00, 'Diamond Carte:20\r\n\r\n', 'latest', 16, 33, NULL),
(0002, 'Diamond/Bangles/2.jpg', 'Diamond/Bangles/2.jpg', 1, 1000.00, 'Diamond Carte:20\r\n\r\n', 'featured', 14, 27, NULL),
(0003, 'Diamond/Bangles/3.jpg', 'Diamond/Bangles/3.jpg', 1, 1000.00, 'Diamond Carte:15\r\nGold Carte:24', 'featured', 0, 0, NULL),
(0004, 'Diamond/Bangles/4.jpg', 'Diamond/Bangles/4.jpg', 1, 1000.00, 'Diamond Carte:15\r\n', 'featured', 2, 7, NULL),
(0005, 'Diamond/Bangles/5.jpg', 'Diamond/Bangles/5.jpg', 1, 1000.00, 'Diamond Carte:20\r\nGold Carte:24', 'soon', 1, 1, NULL),
(0006, 'Diamond/Bangles/6.jpg', 'Diamond/Bangles/6.jpg', 1, 1000.00, 'Diamond carte:10\r\nGold Carte:24', 'featured', 1, 0, NULL),
(0007, 'Diamond/Bangles/7.jpg', 'Diamond/Bangles/7.jpg', 1, 1000.00, 'Diamond Carte:10\r\n', 'featured', 0, 0, NULL),
(0008, 'Diamond/Bangles/8.jpg', 'Diamond/Bangles/8.jpg', 1, 1000.00, 'Diamond Carte:20\r\nGold Carte:24', 'featured', 1, 5, NULL),
(0009, 'Diamond/Bangles/9.jpg', 'Diamond/Bangles/9.jpg', 1, 1000.00, 'Diamond Carte:25\r\n', 'featured', 1, 1, NULL),
(0010, 'Diamond/Bangles/10.jpg', 'Diamond/Bangles/10.jpg', 1, 1000.00, 'Diamond Carte:25\r\n', 'featured', 0, 0, NULL),
(0011, 'Diamond/Bangles/11.jpg', 'Diamond/Bangles/11.jpg', 1, 1000.00, 'Diamond Carte:20', 'soon', 0, 0, NULL),
(0015, 'Diamond/EarRings/1.jpg', 'Diamond/EarRings/1.jpg', 2, 1000.00, 'Diamond Carte:10\r\ngold Carte:24', 'featured', 0, 0, NULL),
(0016, 'Diamond/EarRings/2.jpg', 'Diamond/EarRings/2.jpg', 2, 1000.00, 'Diamond Carte:12\r\nGold Carte:24', 'featured', 0, 0, NULL),
(0017, 'Diamond/EarRings/3.jpg', 'Diamond/EarRings/3.jpg', 2, 1000.00, 'Diamond Carte:14\r\nGold Carte:24', 'featured', 0, 0, NULL),
(0018, 'Diamond/EarRings/4.jpg', 'Diamond/EarRings/4.jpg', 2, 1000.00, 'Diamond Carte:16\r\nGold Carte:24', 'featured', 0, 0, NULL),
(0019, 'Diamond/EarRings/5.jpg', 'Diamond/EarRings/5.jpg', 2, 1000.00, 'Diamond Carte:18\r\nGold Carte:24', 'featured', 0, 0, NULL),
(0020, 'Diamond/EarRings/6.jpg', 'Diamond/EarRings/6.jpg', 2, 2500.00, 'Diamond Carte:20\r\nGold Carte:24', 'featured', 1, 0, NULL),
(0021, 'Diamond/EarRings/7.jpg', 'Diamond/EarRings/7.jpg', 2, 2500.00, 'Diamond carte:5\r\nGold Carte:24', 'featured', 0, 0, NULL),
(0022, 'Diamond/EarRings/8.jpg', 'Diamond/EarRings/8.jpg', 2, 2500.00, 'Diamond Carte:10\r\nGold Carte:24', 'latest', 0, 0, NULL),
(0023, 'Diamond/EarRings/9.jpg', 'Diamond/EarRings/9.jpg', 2, 1000.00, 'Diamond Carte:16\r\nGold Carte:24', 'featured', 0, 0, NULL),
(0077, 'Gold/Bangles/2.jpg', 'Gold/Bangles/2.jpg', 9, 1000.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0076, 'Gold/Bangles/1.jpg', 'Gold/Bangles/1.jpg', 9, 1000.00, 'Gold Carte:24', 'soon', 0, 0, NULL),
(0026, 'Diamond/Lady Ring/1.jpg', 'Diamond/Lady Ring/1.jpg', 8, 1000.00, 'Diamond Carte:20', 'latest', 6, 14, NULL),
(0027, 'Diamond/Lady Ring/2.jpg', 'Diamond/Lady Ring/2.jpg', 8, 1000.00, 'Diamond Carte:10\r\nGold Carte:24', 'featured', 0, 0, NULL),
(0028, 'Diamond/Lady Ring/3.jpg', 'Diamond/Lady Ring/3.jpg', 8, 1000.00, 'Diamond Carte:12\r\nGold Carte: 24', 'featured', 0, 0, NULL),
(0029, 'Diamond/Lady Ring/4.jpg', 'Diamond/Lady Ring/4.jpg', 8, 1000.00, 'Diamond Carte:14\r\nGold  Carte:24', 'latest', 0, 0, NULL),
(0030, 'Diamond/Lady Ring/5.jpg', 'Diamond/Lady Ring/5.jpg', 8, 1000.00, 'Diamond Carte:18\r\nGold Carte: 24', 'featured', 2, 0, NULL),
(0031, 'Diamond/Lady Ring/6.jpg', 'Diamond/Lady Ring/6.jpg', 8, 2500.00, 'Diamond Carte:20\r\nGold Carte: 24', 'featured', 0, 0, NULL),
(0032, 'Diamond/Lady Ring/7.jpg', 'Diamond/Lady Ring/7.jpg', 8, 2500.00, 'Diamond Carte:20\r\nGold Carte: 24', 'latest', 0, 0, NULL),
(0033, 'Diamond/Lady Ring/8.jpg', 'Diamond/Lady Ring/8.jpg', 8, 2500.00, 'Diamond Carte: 10\r\nGold Carte:24', 'featured', 0, 0, NULL),
(0034, 'Diamond/Lady Ring/9.jpg', 'Diamond/Lady Ring/9.jpg', 8, 2500.00, 'Diamond Carte:19\r\nGold Carte:24', 'featured', 0, 0, NULL),
(0035, 'Diamond/Lady Ring/10.jpg', 'Diamond/Lady Ring/10.jpg', 8, 375.00, 'Diamond Carte:14\r\nGold Carte:24', 'featured', 0, 0, NULL),
(0036, 'Diamond/Necklaces/1.jpg', 'Diamond/Necklaces/1.jpg', 3, 1000.00, 'Diamond Carte:10', 'featured', 0, 0, NULL),
(0037, 'Diamond/Necklaces/2.jpg', 'Diamond/Necklaces/2.jpg', 3, 1000.00, 'Diamond Carte:15', 'featured', 0, 0, NULL),
(0038, 'Diamond/Necklaces/3.jpg', 'Diamond/Necklaces/3.jpg', 3, 1000.00, 'Diamond Carte:12', 'featured', 0, 0, NULL),
(0039, 'Diamond/Necklaces/4.jpg', 'Diamond/Necklaces/4.jpg', 3, 1000.00, 'Diamond Carte:14', 'featured', 0, 0, NULL),
(0040, 'Diamond/Necklaces/5.jpg', 'Diamond/Necklaces/5.jpg', 3, 1000.00, 'Diamond Carte:13', 'featured', 0, 0, NULL),
(0041, 'Diamond/Necklaces/6.jpg', 'Diamond/Necklaces/6.jpg', 3, 1000.00, 'Diamond Carte:15', 'latest', 1, 2, NULL),
(0042, 'Diamond/Necklaces/7.jpg', 'Diamond/Necklaces/7.jpg', 3, 1000.00, 'Diamond Carte:16', 'latest', 0, 0, NULL),
(0043, 'Diamond/Nose Pin/1.jpg', 'Diamond/Nose Pin/1.jpg', 4, 1000.00, 'Diamond Carte:1\r\nGold Carte:24', 'featured', 0, 0, NULL),
(0044, 'Diamond/Nose Pin/2.jpg', 'Diamond/Nose Pin/2.jpg', 4, 2500.00, 'Diamond Carte:2\r\nGold Carte:24', 'featured', 0, 0, NULL),
(0045, 'Diamond/Nose Pin/3.jpg', 'Diamond/Nose Pin/3.jpg', 4, 375.00, 'Diamond Carte:3\r\nGold Carte:24', 'featured', 0, 0, NULL),
(0046, 'Diamond/Nose Pin/4.jpg', 'Diamond/Nose Pin/4.jpg', 4, 4550.00, 'Diamond carte:4\r\nGold Carte:24', 'featured', 0, 0, NULL),
(0047, 'Diamond/Nose Pin/5.jpg', 'Diamond/Nose Pin/5.jpg', 4, 500.00, 'Diamond Carte:5\r\nGold Carte:24', 'featured', 0, 0, NULL),
(0048, 'Diamond/Nose Pin/6.jpg', 'Diamond/Nose Pin/6.jpg', 4, 1799.00, 'Diamond Carte:6\r\nGold Carte:24', 'featured', 0, 0, NULL),
(0049, 'Diamond/Nose Pin/7.jpg', 'Diamond/Nose Pin/7.jpg', 4, 780.00, 'Diamond Carte:7\r\nGold Carte:24', 'featured', 0, 0, NULL),
(0050, 'Diamond/Nose Pin/8.jpg', 'Diamond/Nose Pin/8.jpg', 4, 890.00, 'Diamond Carte:8\r\nGold  Carte:24', 'featured', 0, 0, NULL),
(0051, 'Diamond/Nose Pin/9.jpg', 'Diamond/Nose Pin/9.jpg', 4, 900.00, 'Diamond Carte:9\r\nGold Carte:24', 'featured', 0, 0, NULL),
(0052, 'Diamond/Nose Pin/10.jpg', 'Diamond/Nose Pin/10.jpg', 4, 1000.00, 'Diamond Carte:10\r\nGold Carte:24', 'featured', 0, 0, NULL),
(0053, 'Diamond/Pendant Set/1.jpg', 'Diamond/Pendant Set/1.jpg', 6, 375.00, 'Diamond Carte:25', 'featured', 0, 0, NULL),
(0054, 'Diamond/Pendant Set/2.jpg', 'Diamond/Pendant Set/2.jpg', 6, 2500.00, 'Diamond Carte:15', 'soon', 0, 0, NULL),
(0055, 'Diamond/Pendant Set/3.jpg', 'Diamond/Pendant Set/3.jpg', 6, 2500.00, 'Diamond Carte:10', 'featured', 0, 0, NULL),
(0056, 'Diamond/Pendant Set/4.jpg', 'Diamond/Pendant Set/4.jpg', 6, 375.00, 'Diamond Carte: 25', 'featured', 0, 0, NULL),
(0057, 'Diamond/Pendant Set/5.jpg', 'Diamond/Pendant Set/5.jpg', 6, 2500.00, 'Diamond Carte:15', 'featured', 0, 0, NULL),
(0072, 'Diamond/Pendants/1.jpg', 'Diamond/Pendants/1.jpg', 7, 2500.00, 'Diamond Carte:15', 'featured', 0, 0, NULL),
(0059, 'Diamond/Pendant Set/6.jpg', 'Diamond/Pendant Set/6.jpg', 6, 375.00, 'Diamond Carte:30', 'featured', 0, 0, NULL),
(0060, 'Diamond/Pendant Set/7.jpg', 'Diamond/Pendant Set/7.jpg', 6, 2500.00, 'Diamond Carte:15', 'featured', 0, 0, NULL),
(0061, 'Diamond/Pendant Set/8.jpg', 'Diamond/Pendant Set/8.jpg', 6, 2500.00, 'Diamond Carte:17', 'featured', 0, 0, NULL),
(0062, 'Diamond/Pendant Set/9.jpg', 'Diamond/Pendant Set/9.jpg', 6, 2500.00, 'Diamond Carte:20', 'featured', 0, 0, NULL),
(0063, 'Diamond/Pendant Set/10.jpg', 'Diamond/Pendant Set/10.jpg', 6, 1000.00, 'Diamond Carte:20\r\n', 'featured', 0, 0, NULL),
(0065, 'Diamond/Pendants/2.jpg', 'Diamond/Pendants/2.jpg', 7, 1799.00, 'Diamond Carte:20', 'featured', 0, 0, NULL),
(0066, 'Diamond/Pendants/3.jpg', 'Diamond/Pendants/3.jpg', 7, 780.00, 'Diamond Carte:10\r\n', 'featured', 0, 0, NULL),
(0067, 'Diamond/Pendants/4.jpg', 'Diamond/Pendants/4.jpg', 7, 890.00, 'Diamond Carte: 12', 'featured', 0, 0, NULL),
(0068, 'Diamond/Pendants/5.jpg', 'Diamond/Pendants/5.jpg', 7, 900.00, 'Diamond Carte:15', 'featured', 0, 0, NULL),
(0069, 'Diamond/Pendants/6.jpg', 'Diamond/Pendants/6.jpg', 7, 1000.00, 'Diamond Carte:20\r\n', 'featured', 0, 0, NULL),
(0070, 'Diamond/Pendants/9.jpg', 'Diamond/Pendants/9.jpg', 7, 1000.00, 'Diamond Carte:15\r\n', 'featured', 8, 0, NULL),
(0071, 'Diamond/Pendants/10.jpg', 'Diamond/Pendants/10.jpg', 7, 2500.00, 'Diamond Carte:25', 'featured', 0, 0, NULL),
(0073, 'Diamond/Pendants/7.jpg', 'Diamond/Pendants/7.jpg', 7, 375.00, 'Diamond Carte:15\r\n', 'featured', 0, 0, NULL),
(0074, 'Diamond/Pendants/8.jpg', 'Diamond/Pendants/8.jpg', 7, 375.00, 'Diamond Carte:15', 'featured', 0, 0, NULL),
(0084, 'Gold/Bangles/5.jpg', 'Gold/Bangles/5.jpg', 9, 1000.00, 'Gold Carte:24', 'featured', 5, 0, NULL),
(0085, 'Gold/Bangles/6.jpg', 'Gold/Bangles/6.jpg', 9, 1000.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0083, 'Gold/Bangles/4.jpg', 'Gold/Bangles/4.jpg', 9, 1000.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0082, 'Gold/Bangles/3.jpg', 'Gold/Bangles/3.jpg', 9, 1000.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0086, 'Gold/Bangles/7.jpg', 'Gold/Bangles/7.jpg', 9, 1000.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0087, 'Gold/Bangles/8.jpg', 'Gold/Bangles/8.jpg', 9, 1000.00, 'Gold Carte: 24', 'featured', 1, 0, NULL),
(0088, 'Gold/Bangles/9.jpg', 'Gold/Bangles/9.jpg', 9, 1000.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0089, 'Gold/Bangles/10.jpg', 'Gold/Bangles/10.jpg', 9, 1000.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0090, 'Gold/Ear Rings/1.jpg', 'Gold/Ear Rings/1.jpg', 10, 500.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0091, 'Gold/Ear Rings/2.jpg', 'Gold/Ear Rings/2.jpg', 10, 1799.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0092, 'Gold/Ear Rings/3.jpg', 'Gold/Ear Rings/3.jpg', 10, 1799.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0093, 'Gold/Ear Rings/4.jpg', 'Gold/Ear Rings/4.jpg', 10, 780.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0094, 'Gold/Ear Rings/5.jpg', 'Gold/Ear Rings/5.jpg', 10, 900.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0095, 'Gold/Ear Rings/6.jpg', 'Gold/Ear Rings/6.jpg', 10, 1000.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0096, 'Gold/Ear Rings/7.jpg', 'Gold/Ear Rings/7.jpg', 10, 1000.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0097, 'Gold/Ear Rings/8.jpg', 'Gold/Ear Rings/8.jpg', 10, 1000.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0098, 'Gold/Ear Rings/9.jpg', 'Gold/Ear Rings/9.jpg', 10, 1000.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0099, 'Gold/Ear Rings/10.jpg', 'Gold/Ear Rings/10.jpg', 10, 1000.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0100, 'Gold/Lady Rings/1.jpg', 'Gold/Lady Rings/1.jpg', 35, 500.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0101, 'Gold/Lady Rings/2.jpg', 'Gold/Lady Rings/2.jpg', 35, 1799.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0102, 'Gold/Lady Rings/3.jpg', 'Gold/Lady Rings/3.jpg', 35, 780.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0103, 'Gold/Lady Rings/4.jpg', 'Gold/Lady Rings/4.jpg', 35, 890.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0104, 'Gold/Lady Rings/5.jpg', 'Gold/Lady Rings/5.jpg', 35, 900.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0105, 'Gold/Lady Rings/6.jpg', 'Gold/Lady Rings/6.jpg', 35, 1000.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0106, 'Gold/Lady Rings/7.jpg', 'Gold/Lady Rings/7.jpg', 35, 1000.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0107, 'Gold/Lady Rings/8.jpg', 'Gold/Lady Rings/8.jpg', 35, 1000.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0108, 'Gold/Lady Rings/9.jpg', 'Gold/Lady Rings/9.jpg', 35, 1000.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0109, 'Gold/Lady Rings/10.jpg', 'Gold/Lady Rings/10.jpg', 35, 1000.00, 'Gold Carte:24', 'soon', 0, 0, NULL),
(0110, 'Gold/Man Rings/1.jpg', 'Gold/Man Rings/1.jpg', 36, 500.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0111, 'Gold/Man Rings/2.jpg', 'Gold/Man Rings/2.jpg', 36, 1799.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0112, 'Gold/Man Rings/3.jpg', 'Gold/Man Rings/3.jpg', 36, 780.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0113, 'Gold/Man Rings/4.jpg', 'Gold/Man Rings/4.jpg', 36, 890.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0114, 'Gold/Man Rings/5.jpg', 'Gold/Man Rings/5.jpg', 36, 890.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0115, 'Gold/Man Rings/6.jpg', 'Gold/Man Rings/6.jpg', 36, 900.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0116, 'Gold/Man Rings/7.jpg', 'Gold/Man Rings/7.jpg', 36, 1000.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0117, 'Gold/Man Rings/8.jpg', 'Gold/Man Rings/8.jpg', 36, 1000.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0118, 'Gold/Mang Tika/1.jpg', 'Gold/Mang Tika/1.jpg', 11, 1000.00, '1 Gram', 'featured', 0, 0, NULL),
(0119, 'Gold/Mang Tika/2.jpg', 'Gold/Mang Tika/2.jpg', 11, 2500.00, '1 Gram', 'featured', 0, 0, NULL),
(0120, 'Gold/Mang Tika/3.jpg', 'Gold/Mang Tika/3.jpg', 11, 375.00, '1 Gram', 'featured', 0, 0, NULL),
(0121, 'Gold/Mang Tika/4.jpg', 'Gold/Mang Tika/4.jpg', 11, 4550.00, '1 Gram', 'featured', 0, 0, NULL),
(0122, 'Gold/Mang Tika/5.jpg', 'Gold/Mang Tika/5.jpg', 11, 500.00, '1 Gram', 'featured', 0, 0, NULL),
(0123, 'Gold/Mang Tika/6.jpg', 'Gold/Mang Tika/6.jpg', 11, 1799.00, '1 Gram', 'featured', 0, 0, NULL),
(0124, 'Gold/Mang Tika/7.jpg', 'Gold/Mang Tika/7.jpg', 11, 780.00, '1 Gram', 'featured', 0, 0, NULL),
(0126, 'Gold/Mang Tika/9.jpg', 'Gold/Mang Tika/9.jpg', 11, 900.00, '1 Gram', 'featured', 0, 0, NULL),
(0127, 'Gold/Mang Tika/10.jpg', 'Gold/Mang Tika/10.jpg', 11, 1000.00, '1 Gram', 'featured', 0, 0, NULL),
(0128, 'Gold/Mangalsutra/1.jpg', 'Gold/Mangalsutra/1.jpg', 12, 1000.00, 'Gold Carte: 24', 'featured', 1, 0, NULL),
(0129, 'Gold/Mangalsutra/2.jpg', 'Gold/Mangalsutra/2.jpg', 12, 1000.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0130, 'Gold/Mangalsutra/3.jpg', 'Gold/Mangalsutra/3.jpg', 12, 1000.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0131, 'Gold/Mangalsutra/4.jpg', 'Gold/Mangalsutra/4.jpg', 12, 1000.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0132, 'Gold/Mangalsutra/5.jpg', 'Gold/Mangalsutra/5.jpg', 12, 1000.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0133, 'Gold/Mangalsutra/6.jpg', 'Gold/Mangalsutra/6.jpg', 12, 2500.00, 'Gold Carte:', 'featured', 0, 0, NULL),
(0134, 'Gold/Mangalsutra/7.jpg', 'Gold/Mangalsutra/7.jpg', 12, 2500.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0135, 'Gold/Mangalsutra/8.jpg', 'Gold/Mangalsutra/8.jpg', 12, 2500.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0136, 'Gold/Mangalsutra/9.jpg', 'Gold/Mangalsutra/9.jpg', 12, 2500.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0137, 'Gold/Mangalsutra/10.jpg', 'Gold/Mangalsutra/10.jpg', 12, 2500.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0138, 'Gold/Necklaces/1.jpg', 'Gold/Necklaces/1.jpg', 13, 2500.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0139, 'Gold/Necklaces/2.jpg', 'Gold/Necklaces/2.jpg', 13, 2500.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0140, 'Gold/Necklaces/3.jpg', 'Gold/Necklaces/3.jpg', 13, 2500.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0141, 'Gold/Necklaces/4.jpg', 'Gold/Necklaces/4.jpg', 13, 2500.00, 'Gold Carte: 24', 'featured', 1, 0, NULL),
(0142, 'Gold/Necklaces/5.jpg', 'Gold/Necklaces/5.jpg', 13, 2500.00, 'Gold Carte: 24', 'latest', 1, 1, NULL),
(0143, 'Gold/Necklaces/6.jpg', 'Gold/Necklaces/6.jpg', 13, 2500.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0144, 'Gold/Necklaces/7.jpg', 'Gold/Necklaces/7.jpg', 13, 375.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0145, 'Gold/Necklaces/8.jpg', 'Gold/Necklaces/8.jpg', 13, 375.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0146, 'Gold/Necklaces/9.jpg', 'Gold/Necklaces/9.jpg', 13, 375.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0147, 'Gold/Necklaces/10.jpg', 'Gold/Necklaces/10.jpg', 13, 375.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0148, 'Gold/Nose Rings/1.jpg', 'Gold/Nose Rings/1.jpg', 14, 1000.00, '1 Gram', 'featured', 0, 0, NULL),
(0149, 'Gold/Nose Rings/2.jpg', 'Gold/Nose Rings/2.jpg', 14, 2500.00, '1 Gram', 'featured', 0, 0, NULL),
(0150, 'Gold/Nose Rings/3.jpg', 'Gold/Nose Rings/3.jpg', 14, 375.00, '1 Gram', 'featured', 0, 0, NULL),
(0151, 'Gold/Nose Rings/4.jpg', 'Gold/Nose Rings/4.jpg', 14, 4550.00, '1 Gram', 'featured', 0, 0, NULL),
(0152, 'Gold/Nose Rings/5.jpg', 'Gold/Nose Rings/5.jpg', 14, 500.00, '1 Gram', 'featured', 0, 0, NULL),
(0153, 'Gold/Nose Rings/6.jpg', 'Gold/Nose Rings/6.jpg', 14, 1799.00, '1 Gram', 'featured', 0, 0, NULL),
(0154, 'Gold/Nose Rings/7.jpg', 'Gold/Nose Rings/7.jpg', 14, 780.00, '1 Gram', 'featured', 0, 0, NULL),
(0155, 'Gold/Nose Rings/8.jpg', 'Gold/Nose Rings/8.jpg', 14, 890.00, '1 Gram', 'featured', 0, 0, NULL),
(0156, 'Gold/Pendant Set/1.jpg', 'Gold/Pendant Set/1.jpg', 15, 2500.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0157, 'Gold/Pendant Set/2.jpg', 'Gold/Pendant Set/2.jpg', 15, 2500.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0158, 'Gold/Pendant Set/3.jpg', 'Gold/Pendant Set/3.jpg', 15, 2500.00, 'Gold Carte:24', 'latest', 0, 0, NULL),
(0159, 'Gold/Pendant Set/4.jpg', 'Gold/Pendant Set/4.jpg', 15, 2500.00, 'Gold Carte: 24', 'latest', 0, 0, NULL),
(0160, 'Gold/Pendant Set/5.jpg', 'Gold/Pendant Set/5.jpg', 15, 2500.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0161, 'Gold/Pendant Set/6.jpg', 'Gold/Pendant Set/6.jpg', 15, 375.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0162, 'Gold/Pendant Set/7.jpg', 'Gold/Pendant Set/7.jpg', 15, 375.00, 'Gold Carte:24', 'soon', 0, 0, NULL),
(0163, 'Gold/Pendant Set/8.jpg', 'Gold/Pendant Set/8.jpg', 15, 375.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0164, 'Gold/Pendant Set/9.jpg', 'Gold/Pendant Set/9.jpg', 15, 0.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0165, 'Gold/Pendant Set/10.jpg', 'Gold/Pendant Set/10.jpg', 15, 375.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0166, 'Gold/Pendants/1.jpg', 'Gold/Pendants/1.jpg', 16, 1000.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0167, 'Gold/Pendants/2.jpg', 'Gold/Pendants/2.jpg', 16, 1000.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0168, 'Gold/Pendants/3.jpg', 'Gold/Pendants/3.jpg', 16, 1000.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0169, 'Gold/Pendants/4.jpg', 'Gold/Pendants/4.jpg', 16, 1000.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0170, 'Gold/Pendants/5.jpg', 'Gold/Pendants/5.jpg', 16, 1000.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0171, 'Gold/Pendants/6.jpg', 'Gold/Pendants/6.jpg', 16, 1000.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0172, 'Gold/Pendants/7.jpg', 'Gold/Pendants/7.jpg', 16, 1000.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0173, 'Gold/Pendants/8.jpg', 'Gold/Pendants/8.jpg', 16, 2500.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0174, 'Gold/Pendants/9.jpg', 'Gold/Pendants/9.jpg', 16, 2500.00, 'Gold Carte:24', 'featured', 0, 0, NULL),
(0175, 'Gold/Pendants/10.jpg', 'Gold/Pendants/10.jpg', 16, 2500.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0176, 'Gold/Lady Rings/1.jpg', 'Gold/Lady Rings/1.jpg', 35, 1000.00, 'White Gold Carte: 24 ', 'featured', 0, 0, NULL),
(0177, 'Gold/Lady Rings/2.jpg', 'Gold/Lady Rings/2.jpg', 35, 1000.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0178, 'Gold/Lady Rings/3.jpg', 'Gold/Lady Rings/3.jpg', 35, 2500.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0179, 'Gold/Lady Rings/4.jpg', 'Gold/Lady Rings/4.jpg', 35, 2500.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0180, 'Gold/Lady Rings/5.jpg', 'Gold/Lady Rings/5.jpg', 35, 2500.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0181, 'Gold/Lady Rings/6.jpg', 'Gold/Lady Rings/6.jpg', 35, 2500.00, 'White Gold Carte:24', 'featured', 0, 0, NULL),
(0182, 'Gold/Lady Rings/7.jpg', 'Gold/Lady Rings/7.jpg', 35, 2500.00, 'White Gold Carte: 24', 'featured', 3, 0, NULL),
(0183, 'Gold/Lady Rings/8.jpg', 'Gold/Lady Rings/8.jpg', 35, 2500.00, 'White Gold Carte:24', 'featured', 0, 0, NULL),
(0184, 'Gold/Lady Rings/9.jpg', 'Gold/Lady Rings/9.jpg', 35, 2500.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0185, 'Gold/Lady Rings/10.jpg', 'Gold/Lady Rings/10.jpg', 35, 375.00, 'White Gold Carte:24', 'featured', 0, 0, NULL),
(0201, 'Silver/Anklets/7.jpg', 'Silver/Anklets/7.jpg', 21, 1000.00, 'PureSilver', 'featured', 0, 0, NULL),
(0199, 'Silver/Anklets/5.jpg', 'Silver/Anklets/5.jpg', 21, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0200, 'Silver/Anklets/6.jpg', 'Silver/Anklets/6.jpg', 21, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0198, 'Silver/Anklets/4.jpg', 'Silver/Anklets/4.jpg', 21, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0197, 'Silver/Anklets/3.jpg', 'Silver/Anklets/3.jpg', 21, 890.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0196, 'Silver/Anklets/2.jpg', 'Silver/Anklets/2.jpg', 21, 890.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0195, 'Silver/Anklets/1.jpg', 'Silver/Anklets/1.jpg', 21, 500.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0194, 'Gold/Man Rings/9.jpg', 'Gold/Man Rings/9.jpg', 36, 1000.00, 'Gold Carte: 24', 'featured', 0, 0, NULL),
(0202, 'Silver/Anklets/8.jpg', 'Silver/Anklets/8.jpg', 21, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0203, 'Silver/Anklets/9.jpg', 'Silver/Anklets/9.jpg', 21, 2500.00, 'PurSilver', 'featured', 0, 0, NULL),
(0204, 'Silver/Anklets/10.jpg', 'Silver/Anklets/10.jpg', 21, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0205, 'Silver/Armlets/1.jpg', 'Silver/Armlets/1.jpg', 22, 4550.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0206, 'Silver/Armlets/2.jpg', 'Silver/Armlets/2.jpg', 22, 1799.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0207, 'Silver/Armlets/3.jpg', 'Silver/Armlets/3.jpg', 22, 890.00, 'Pure silver', 'featured', 0, 0, NULL),
(0208, 'Silver/Armlets/4.jpg', 'Silver/Armlets/4.jpg', 22, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0209, 'Silver/Armlets/5.jpg', 'Silver/Armlets/5.jpg', 22, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0210, 'Silver/Armlets/6.jpg', 'Silver/Armlets/6.jpg', 22, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0211, 'Silver/Armlets/7.jpg', 'Silver/Armlets/7.jpg', 22, 1000.00, 'Pure silver', 'featured', 0, 0, NULL),
(0212, 'Silver/Armlets/8.jpg', 'Silver/Armlets/8.jpg', 22, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0213, 'Silver/Armlets/9.jpg', 'Silver/Armlets/9.jpg', 22, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0214, 'Silver/Armlets/10.jpg', 'Silver/Armlets/10.jpg', 22, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0215, 'Silver/Bracelet/1.jpg', 'Silver/Bracelet/1.jpg', 23, 2500.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0216, 'Silver/Bracelet/2.jpg', 'Silver/Bracelet/2.jpg', 23, 4550.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0217, 'Silver/Bracelet/3.jpg', 'Silver/Bracelet/3.jpg', 23, 1799.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0218, 'Silver/Bracelet/4.jpg', 'Silver/Bracelet/4.jpg', 23, 890.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0219, 'Silver/Bracelet/5.jpg', 'Silver/Bracelet/5.jpg', 23, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0220, 'Silver/Bracelet/6.jpg', 'Silver/Bracelet/6.jpg', 23, 1000.00, 'Pure  Silver', 'featured', 0, 0, NULL),
(0221, 'Silver/Bracelet/7.jpg', 'Silver/Bracelet/7.jpg', 23, 1000.00, 'Pure silver', 'featured', 0, 0, NULL),
(0222, 'Silver/Bracelet/8.jpg', 'Silver/Bracelet/8.jpg', 23, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0223, 'Silver/Bracelet/9.jpg', 'Silver/Bracelet/9.jpg', 23, 1799.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0224, 'Silver/Bracelet/10.jpg', 'Silver/Bracelet/10.jpg', 23, 890.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0225, 'Silver/Chain/1.jpg', 'Silver/Chain/1.jpg', 28, 2500.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0226, 'Silver/Chain/2.jpg', 'Silver/Chain/2.jpg', 28, 4550.00, 'Pure silver', 'featured', 0, 0, NULL),
(0227, 'Silver/Chain/3.jpg', 'Silver/Chain/3.jpg', 28, 1799.00, 'Pure Silverq', 'featured', 0, 0, NULL),
(0228, 'Silver/Chain/4.jpg', 'Silver/Chain/4.jpg', 28, 890.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0229, 'Silver/Chain/5.jpg', 'Silver/Chain/5.jpg', 28, 890.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0230, 'Silver/Chain/6.jpg', 'Silver/Chain/6.jpg', 28, 1000.00, 'Pure silver', 'featured', 0, 0, NULL),
(0231, 'Silver/Chain/7.jpg', 'Silver/Chain/7.jpg', 28, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0232, 'Silver/Chain/8.jpg', 'Silver/Chain/8.jpg', 28, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0233, 'Silver/Chain/9.jpg', 'Silver/Chain/9.jpg', 28, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0234, 'Silver/Chain/10.jpg', 'Silver/Chain/10.jpg', 28, 1000.00, 'Pure silver', 'featured', 0, 0, NULL),
(0235, 'Silver/Cuffilinks/1.jpg', 'Silver/Cuffilinks/1.jpg', 27, 2500.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0236, 'Silver/Cuffilinks/2.jpg', 'Silver/Cuffilinks/2.jpg', 27, 4550.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0237, 'Silver/Cuffilinks/3.jpg', 'Silver/Cuffilinks/3.jpg', 27, 1799.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0238, 'Silver/Cuffilinks/4.jpg', 'Silver/Cuffilinks/4.jpg', 27, 890.00, 'Pure Silver', 'featured', 6, 3, NULL),
(0239, 'Silver/Cuffilinks/5.jpg', 'Silver/Cuffilinks/5.jpg', 28, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0240, 'Silver/Cuffilinks/6.jpg', 'Silver/Cuffilinks/6.jpg', 28, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0241, 'Silver/Cuffilinks/7.jpg', 'Silver/Cuffilinks/7.jpg', 28, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0242, 'Silver/Cuffilinks/8.jpg', 'Silver/Cuffilinks/8.jpg', 28, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0243, 'Silver/Cuffilinks/9.jpg', 'Silver/Cuffilinks/9.jpg', 28, 1799.00, 'Pure Silver', 'featured', 4, 0, NULL),
(0244, 'Silver/Cuffilinks/10.jpg', 'Silver/Cuffilinks/10.jpg', 28, 890.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0245, 'Silver/EarRings/1.jpg', 'Silver/EarRings/1.jpg', 26, 500.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0246, 'Silver/EarRings/2.jpg', 'Silver/EarRings/2.jpg', 26, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0247, 'Silver/EarRings/3.jpg', 'Silver/EarRings/3.jpg', 26, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0248, 'Silver/EarRings/4.jpg', 'Silver/EarRings/4.jpg', 26, 2500.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0249, 'Silver/EarRings/5.jpg', 'Silver/EarRings/5.jpg', 26, 2500.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0250, 'Silver/EarRings/6.jpg', 'Silver/EarRings/6.jpg', 26, 2500.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0251, 'Silver/EarRings/7.jpg', 'Silver/EarRings/7.jpg', 26, 375.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0252, 'Silver/EarRings/8.jpg', 'Silver/EarRings/8.jpg', 26, 375.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0253, 'Silver/EarRings/9.jpg', 'Silver/EarRings/9.jpg', 26, 4550.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0254, 'Silver/EarRings/10.jpg', 'Silver/EarRings/10.jpg', 26, 4550.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0255, 'Silver/Hair Pin/1.jpg', 'Silver/Hair Pin/1.jpg', 25, 1000.00, 'Silver', 'featured', 0, 0, NULL),
(0256, 'Silver/Hair Pin/2.jpg', 'Silver/Hair Pin/2.jpg', 25, 2500.00, 'Silver', 'featured', 0, 0, NULL),
(0258, 'Silver/Hair Pin/4.jpg', 'Silver/Hair Pin/4.jpg', 25, 4550.00, 'Silver', 'featured', 0, 0, NULL),
(0260, 'Silver/Hair Pin/6.jpg', 'Silver/Hair Pin/6.jpg', 25, 1799.00, 'Silver', 'featured', 0, 0, NULL),
(0261, 'Silver/Hair Pin/7.jpg', 'Silver/Hair Pin/7.jpg', 25, 780.00, 'Silver', 'featured', 0, 0, NULL),
(0262, 'Silver/Hair Pin/8.jpg', 'Silver/Hair Pin/8.jpg', 25, 890.00, 'Silver', 'featured', 0, 0, NULL),
(0263, 'Silver/Hair Pin/9.jpg', 'Silver/Hair Pin/9.jpg', 25, 900.00, 'Silver', 'featured', 0, 0, NULL),
(0264, 'Silver/Hair Pin/10.jpg', 'Silver/Hair Pin/10.jpg', 25, 1000.00, 'Silver', 'featured', 0, 0, NULL),
(0265, 'Silver/Lady Rings/1.jpg', 'Silver/Lady Rings/1.jpg', 32, 500.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0267, 'Silver/Lady Rings/3.jpg', 'Silver/Lady Rings/3.jpg', 32, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0268, 'Silver/Lady Rings/4.jpg', 'Silver/Lady Rings/4.jpg', 32, 2500.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0269, 'Silver/Lady Rings/5.jpg', 'Silver/Lady Rings/5.jpg', 32, 2500.00, 'Pure Silver', 'featured', 1, 0, NULL),
(0270, 'Silver/Lady Rings/6.jpg', 'Silver/Lady Rings/6.jpg', 32, 375.00, 'Pure silver', 'featured', 0, 0, NULL),
(0271, 'Silver/Lady Rings/7.jpg', 'Silver/Lady Rings/7.jpg', 32, 375.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0272, 'Silver/Lady Rings/8.jpg', 'Silver/Lady Rings/8.jpg', 32, 4550.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0273, 'Silver/Lady Rings/9.jpg', 'Silver/Lady Rings/9.jpg', 32, 4550.00, 'Pure silver', 'soon', 0, 0, NULL),
(0274, 'Silver/Lady Rings/10.jpg', 'Silver/Lady Rings/10.jpg', 32, 500.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0275, 'Silver/Man Ring/1.jpg', 'Silver/Man Ring/1.jpg', 39, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0276, 'Silver/Man Ring/2.jpg', 'Silver/Man Ring/2.jpg', 39, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0277, 'Silver/Man Ring/3.jpg', 'Silver/Man Ring/3.jpg', 39, 2500.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0278, 'Silver/Man Ring/4.jpg', 'Silver/Man Ring/4.jpg', 39, 2500.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0279, 'Silver/Man Ring/5.jpg', 'Silver/Man Ring/5.jpg', 39, 375.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0280, 'Silver/Man Ring/6.jpg', 'Silver/Man Ring/6.jpg', 39, 2500.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0282, 'Silver/Man Ring/8.jpg', 'Silver/Man Ring/8.jpg', 39, 4550.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0283, 'Silver/Man Ring/9.jpg', 'Silver/Man Ring/9.jpg', 39, 2500.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0284, 'Silver/Man Ring/10.jpg', 'Silver/Man Ring/10.jpg', 39, 500.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0285, 'Silver/Pendants/1.jpg', 'Silver/Pendants/1.jpg', 30, 500.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0287, 'Silver/Pendants/3.jpg', 'Silver/Pendants/3.jpg', 30, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0288, 'Silver/Pendants/4.jpg', 'Silver/Pendants/4.jpg', 30, 2500.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0289, 'Silver/Pendants/5.jpg', 'Silver/Pendants/5.jpg', 30, 2500.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0290, 'Silver/Pendants/6.jpg', 'Silver/Pendants/6.jpg', 30, 375.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0291, 'Silver/Pendants/7.jpg', 'Silver/Pendants/7.jpg', 30, 375.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0292, 'Silver/Pendants/8.jpg', 'Silver/Pendants/8.jpg', 30, 4550.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0293, 'Silver/Pendants/9.jpg', 'Silver/Pendants/9.jpg', 30, 4550.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0294, 'Silver/Pendants/10.jpg', 'Silver/Pendants/10.jpg', 30, 500.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0295, 'Silver/Pendants Sets/1.jpg', 'Silver/Pendants Sets/1.jpg', 31, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0296, 'Silver/Pendants Sets/2.jpg', 'Silver/Pendants Sets/2.jpg', 31, 1000.00, 'Pure Solver', 'featured', 0, 0, NULL),
(0297, 'Silver/Pendants Sets/3.jpg', 'Silver/Pendants Sets/3.jpg', 31, 2500.00, 'Pure silver', 'featured', 0, 0, NULL),
(0298, 'Silver/Pendants Sets/4.jpg', 'Silver/Pendants Sets/4.jpg', 31, 2500.00, 'Pure silver', 'featured', 0, 0, NULL),
(0299, 'Silver/Pendants Sets/5.jpg', 'Silver/Pendants Sets/5.jpg', 30, 2500.00, 'Pure silver', 'featured', 0, 0, NULL),
(0300, 'Silver/Pendants Sets/6.jpg', 'Silver/Pendants Sets/6.jpg', 31, 375.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0301, 'Silver/Pendants Sets/7.jpg', 'Silver/Pendants Sets/7.jpg', 31, 375.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0302, 'Silver/Pendants Sets/8.jpg', 'Silver/Pendants Sets/8.jpg', 31, 4550.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0303, 'Silver/Pendants Sets/9.jpg', 'Silver/Pendants Sets/9.jpg', 31, 4550.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0304, 'Silver/Pendants Sets/10.jpg', 'Silver/Pendants Sets/10.jpg', 31, 500.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0305, 'Silver/Toe Ring/1.jpg', 'Silver/Toe Ring/1.jpg', 40, 1000.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0306, 'Silver/Toe Ring/2.jpg', 'Silver/Toe Ring/2.jpg', 40, 2500.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0307, 'Silver/Toe Ring/3.jpg', 'Silver/Toe Ring/3.jpg', 40, 375.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0308, 'Silver/Toe Ring/4.jpg', 'Silver/Toe Ring/4.jpg', 40, 4550.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0309, 'Silver/Toe Ring/5.jpg', 'Silver/Toe Ring/5.jpg', 40, 500.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0310, 'Silver/Toe Ring/6.jpg', 'Silver/Toe Ring/6.jpg', 40, 1799.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0311, 'Silver/Toe Ring/7.jpg', 'Silver/Toe Ring/7.jpg', 40, 780.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0312, 'Silver/Toe Ring/8.jpg', 'Silver/Toe Ring/8.jpg', 40, 890.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0313, 'Silver/Toe Ring/9.jpg', 'Silver/Toe Ring/9.jpg', 40, 900.00, 'Pure Silver', 'featured', 0, 0, NULL),
(0315, 'Silver/Brooches/1.jpg', 'Silver/Brooches/1.jpg', 24, 1000.00, 'Silver', 'featured', 0, 0, NULL),
(0316, 'Silver/Brooches/2.jpg', 'Silver/Brooches/2.jpg', 24, 2500.00, 'Silver', 'featured', 0, 0, NULL),
(0317, 'Silver/Brooches/3.jpg', 'Silver/Brooches/3.jpg', 24, 375.00, 'Silver', 'featured', 0, 0, NULL),
(0318, 'Silver/Brooches/4.jpg', 'Silver/Brooches/4.jpg', 24, 4550.00, 'Silver', 'featured', 0, 0, NULL),
(0319, 'Silver/Brooches/5.jpg', 'Silver/Brooches/5.jpg', 24, 500.00, 'Silver', 'featured', 0, 0, NULL),
(0320, 'Silver/Brooches/6.jpg', 'Silver/Brooches/6.jpg', 24, 1799.00, 'Silver', 'featured', 0, 0, NULL),
(0321, 'Silver/Brooches/7.jpg', 'Silver/Brooches/7.jpg', 24, 780.00, 'Silver', 'featured', 0, 0, NULL),
(0322, 'Silver/Brooches/8.jpg', 'Silver/Brooches/8.jpg', 24, 890.00, 'Silver', 'featured', 0, 0, NULL),
(0323, 'Silver/Brooches/9.jpg', 'Silver/Brooches/9.jpg', 24, 900.00, 'Silver', 'featured', 0, 0, NULL),
(0324, 'Silver/Brooches/10.jpg', 'Silver/Brooches/10.jpg', 24, 1000.00, 'Silver', 'featured', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `main_menu`
--

CREATE TABLE `main_menu` (
  `mmenu_id` int(4) UNSIGNED ZEROFILL NOT NULL,
  `mmenu_name` varchar(200) NOT NULL,
  `mmenu_link` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `main_menu`
--

INSERT INTO `main_menu` (`mmenu_id`, `mmenu_name`, `mmenu_link`) VALUES
(0001, 'About Us', 'about.php'),
(0002, 'Contact Us', 'contact.php'),
(0003, 'Gold Items', 'javascript:void(0)'),
(0004, 'Silver Items', 'javascript:void(0)'),
(0005, 'Diamond Items', 'javascript:void(0)'),
(0006, 'Featured Items', 'featured.php'),
(0007, 'Latest Items', 'latest.php'),
(0008, 'Top', 'javascript:void(0)'),
(0009, 'Zodiac', 'zodiac.php');

-- --------------------------------------------------------

--
-- Table structure for table `sub_menu`
--

CREATE TABLE `sub_menu` (
  `id` int(4) UNSIGNED ZEROFILL NOT NULL,
  `mmenu_id` int(4) NOT NULL DEFAULT 375,
  `smenu_name` varchar(200) NOT NULL,
  `smenu_link` varchar(200) NOT NULL DEFAULT 'viewproduct.php'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sub_menu`
--

INSERT INTO `sub_menu` (`id`, `mmenu_id`, `smenu_name`, `smenu_link`) VALUES
(0001, 5, 'Bangles', 'viewproduct.php'),
(0002, 5, 'EarRings', 'viewproduct.php'),
(0003, 5, 'Necklaces', 'viewproduct.php'),
(0004, 5, 'Nose Pin', 'viewproduct.php'),
(0005, 5, 'Pendant Set', 'viewproduct.php'),
(0006, 5, 'Pendants', 'viewproduct.php'),
(0007, 5, 'LadyRings', 'viewproduct.php'),
(0008, 3, 'Bangles', 'viewproduct.php'),
(0009, 3, 'Ear Rings', 'viewproduct.php'),
(0010, 3, 'Mang Tika', 'viewproduct.php'),
(0011, 3, 'Mangalsutra', 'viewproduct.php'),
(0012, 3, 'Necklaces', 'viewproduct.php'),
(0013, 3, 'Nose Rings', 'viewproduct.php'),
(0014, 3, 'Pendant Set', 'viewproduct.php'),
(0015, 3, 'Pendants', 'viewproduct.php'),
(0016, 4, 'Anklets', 'viewproduct.php'),
(0017, 4, 'Armlets', 'viewproduct.php'),
(0018, 4, 'Bracelet', 'viewproduct.php'),
(0019, 4, 'Brooches', 'viewproduct.php'),
(0020, 4, 'Hair Pin', 'viewproduct.php'),
(0021, 4, 'EarRings', 'viewproduct.php'),
(0022, 4, 'Cuffilinks', 'viewproduct.php'),
(0023, 4, 'Chain', 'viewproduct.php'),
(0024, 4, 'ManRings', 'viewproduct.php'),
(0025, 4, 'Pendants', 'viewproduct.php'),
(0026, 4, 'Pendants Sets', 'viewproduct.php'),
(0027, 4, 'Lady Rings', 'viewproduct.php'),
(0028, 3, 'LadyRings', 'viewproduct.php'),
(0029, 3, 'ManRings', 'viewproduct.php'),
(0030, 4, 'ToeRings', 'viewproduct.php'),
(0031, 8, 'Views', 'topviewed.php'),
(0032, 8, 'Sellings', 'topsell.php');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(4) UNSIGNED ZEROFILL NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `tel` int(8) NOT NULL,
  `ac_type` varchar(30) DEFAULT 'user',
  `user_status` tinyint(4) DEFAULT 0,
  `passport_number` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `surname`, `username`, `password`, `email`, `address`, `tel`, `ac_type`, `user_status`, `passport_number`) VALUES
(0004, 'Jorge', 'Flores', 'jorgejfp', '1234s', 'jorgejfp@hotmail.com', 'pno 16p syno 337 377 1', 51472618, 'user', 1, ''),
(0003, 'Abhilash', 'Kalisetti', 'abhi', 'abhi123', 'abhilashkalisetti@gmail.com', '5857 rue legare', 51411122, 'user', 1, ''),
(0009, 'jack', 'jack', 'jack', 'jack123', 'jack@email.com', 'pno 16p syno 337 37', 2147483647, 'user', 1, 'u8658148'),
(0010, 'Riddi', 'Singh', 'RiddiS', 'Riddi123', 'riddhi@email.com', '1234, montreal', 2147483647, 'user', 1, 'z1234567'),
(0011, 'Abhi', 'Abhi', 'Abhi', 'abhi123', 'abhi@email.com', '1234, montreal', 2147483647, 'user', 1, 'z1234567');

-- --------------------------------------------------------

--
-- Table structure for table `webcontent`
--

CREATE TABLE `webcontent` (
  `content_id` int(4) UNSIGNED ZEROFILL NOT NULL,
  `content` text NOT NULL,
  `webpage` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `webcontent`
--

INSERT INTO `webcontent` (`content_id`, `content`, `webpage`) VALUES
(0001, 'Elegance Jewellery Online Store has more than 35 years of experience in dealing with jewelleries susch as Gold, Silver and Diamond.', 'about');

-- --------------------------------------------------------

--
-- Table structure for table `zodiac_signs`
--

CREATE TABLE `zodiac_signs` (
  `id` int(11) NOT NULL,
  `sign_name` varchar(30) NOT NULL,
  `date_range` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `zodiac_signs`
--

INSERT INTO `zodiac_signs` (`id`, `sign_name`, `date_range`) VALUES
(1, 'Aries', 'March 21 - April 19'),
(2, 'Taurus', 'April 20 - May 20'),
(3, 'Gemini', 'May 21 - June 20'),
(4, 'Cancer', 'June 21 - July 22'),
(5, 'Leo', 'July 23 - August 22'),
(6, 'Virgo', 'August 23 - September 22'),
(7, 'Libra', 'September 23 - October 22'),
(8, 'Scorpio', 'October 23 - November 21'),
(9, 'Sagittarius', 'November 22 - December 21'),
(10, 'Capricorn', 'December 22 - January 19'),
(11, 'Aquarius', 'January 20 - February 18'),
(12, 'Pisces', 'February 19 - March 20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jewellery`
--
ALTER TABLE `jewellery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_zodiac` (`zodiac_sign`);

--
-- Indexes for table `main_menu`
--
ALTER TABLE `main_menu`
  ADD PRIMARY KEY (`mmenu_id`);

--
-- Indexes for table `sub_menu`
--
ALTER TABLE `sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `webcontent`
--
ALTER TABLE `webcontent`
  ADD PRIMARY KEY (`content_id`),
  ADD UNIQUE KEY `webpage` (`webpage`);

--
-- Indexes for table `zodiac_signs`
--
ALTER TABLE `zodiac_signs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jewellery`
--
ALTER TABLE `jewellery`
  MODIFY `id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT for table `main_menu`
--
ALTER TABLE `main_menu`
  MODIFY `mmenu_id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `sub_menu`
--
ALTER TABLE `sub_menu`
  MODIFY `id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `webcontent`
--
ALTER TABLE `webcontent`
  MODIFY `content_id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `zodiac_signs`
--
ALTER TABLE `zodiac_signs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
