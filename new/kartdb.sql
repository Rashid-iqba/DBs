-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 10, 2022 at 07:49 AM
-- Server version: 5.7.24
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kartdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyer_offers`
--

DROP TABLE IF EXISTS `buyer_offers`;
CREATE TABLE IF NOT EXISTS `buyer_offers` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `offer_name` varchar(100) NOT NULL,
  `validity_from` datetime NOT NULL,
  `validity_till` datetime NOT NULL,
  `image` text NOT NULL,
  `offer_detail` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyer_offers`
--

INSERT INTO `buyer_offers` (`id`, `offer_name`, `validity_from`, `validity_till`, `image`, `offer_detail`, `created_at`) VALUES
(1, 'dewali', '2022-07-13 00:00:00', '2022-07-30 10:00:00', '', NULL, '2022-07-23 13:16:23');

-- --------------------------------------------------------

--
-- Table structure for table `buyer_user`
--

DROP TABLE IF EXISTS `buyer_user`;
CREATE TABLE IF NOT EXISTS `buyer_user` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `image` text,
  `address` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `doctor_report` varchar(100) DEFAULT NULL,
  `age` int(100) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `weight` int(5) NOT NULL,
  `bp_level` int(10) DEFAULT NULL,
  `sugar_level` int(10) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(20) DEFAULT NULL,
  `active_status` enum('active','inactive') NOT NULL,
  `login_status` enum('online','offline') NOT NULL,
  `offer_id` int(100) DEFAULT NULL,
  `booking` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `offer_id` (`offer_id`),
  KEY `booking` (`booking`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyer_user`
--

INSERT INTO `buyer_user` (`id`, `name`, `email`, `password`, `image`, `address`, `phone`, `doctor_report`, `age`, `gender`, `weight`, `bp_level`, `sugar_level`, `created_at`, `updated_at`, `active_status`, `login_status`, `offer_id`, `booking`) VALUES
(1, 'raj', 'rj@gmail.com', '12345', NULL, 'bhanni', '123456564', NULL, 25, 'male', 55, 103, 54, '2022-07-24 01:20:10', NULL, 'active', 'offline', NULL, NULL),
(3, 'rok', 'rk@gmail.com', '12345', NULL, 'allpati', '123456564', NULL, 28, 'male', 97, 103, 54, '2022-07-24 01:21:06', NULL, 'active', 'online', NULL, NULL),
(5, 'priya', 'py@gmail.com', '12345', NULL, 'allpati', '123456564', NULL, 25, 'female', 97, 64, 54, '2022-07-24 01:21:47', NULL, 'active', 'online', NULL, NULL),
(6, 'payal', 'pl@gmail.com', '12345', NULL, 'allpati', '123456564', NULL, 25, 'female', 45, 64, 54, '2022-07-24 01:22:38', NULL, 'active', 'online', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `booking_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `booking_status` enum('request','confirm','cancell') DEFAULT NULL,
  `updated_at` varchar(10) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  KEY `doctor_id` (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `sub_category` int(5) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `creation_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_category` (`sub_category`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `sub_category`, `image`, `creation_time`, `update_time`) VALUES
(1, 'shifons_saree', 3, NULL, '2022-09-22 15:55:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
CREATE TABLE IF NOT EXISTS `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upadate_at` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `category_name`, `image`, `create_at`, `upadate_at`) VALUES
(1, 'Men', NULL, '2022-09-22 15:47:09', ''),
(2, 'Women', NULL, '2022-09-22 15:47:09', ''),
(3, 'Toy', NULL, '2022-09-22 15:48:22', ''),
(4, 'Appliences', NULL, '2022-09-22 15:48:22', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_category`
--

DROP TABLE IF EXISTS `product_sub_category`;
CREATE TABLE IF NOT EXISTS `product_sub_category` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `category_id` int(10) NOT NULL,
  `sub_category_name` varchar(40) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_sub_category`
--

INSERT INTO `product_sub_category` (`id`, `category_id`, `sub_category_name`, `created_at`) VALUES
(1, 1, 'shirt', '2022-09-22 15:48:51'),
(2, 1, 'jeans', '2022-09-22 15:48:51'),
(3, 2, 'saree', '2022-09-22 15:50:29'),
(4, 2, 'kurta', '2022-09-22 15:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `seller_category`
--

DROP TABLE IF EXISTS `seller_category`;
CREATE TABLE IF NOT EXISTS `seller_category` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `img` text NOT NULL,
  `charges` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller_category`
--

INSERT INTO `seller_category` (`id`, `type`, `img`, `charges`) VALUES
(1, 'Cardiologist', 'https://cdn-icons-png.flaticon.com/512/5877/5877682.png', '500-700'),
(2, 'Dentist', 'https://cdn-icons-png.flaticon.com/512/2818/2818366.png', '400-600'),
(3, 'Gynaecologist', 'https://images1-fabric.practo.com/dr-sangeeeta-s-mother-care-mumbai-1479285933-582c1cadc7777.png\r\n', '500-600'),
(4, 'Orthopaedic surgeon', 'https://cdn-icons-png.flaticon.com/512/7292/7292482.png', '600-800'),
(5, 'Psychiatrists', 'https://cdn-icons-png.flaticon.com/512/946/946323.png', '700-800'),
(6, 'Neurologist', 'https://cdn-icons-png.flaticon.com/512/2491/2491314.png', '600-700'),
(7, 'surgeon', 'https://icon-library.com/images/surgeon-icon/surgeon-icon-14.jpg', '600-700'),
(8, 'Emergency Specialists', 'https://cdn-icons-png.flaticon.com/512/4006/4006111.png', '500-600'),
(9, 'otolaryngologist', 'https://cdn-icons-png.flaticon.com/512/6432/6432059.png', '400-600'),
(10, 'gastroenterologist', 'https://cdn-icons-png.flaticon.com/512/2721/2721136.png', '300-600');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `buyer_user` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`seller_id`) REFERENCES `seller_user` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`sub_category`) REFERENCES `product_sub_category` (`id`);

--
-- Constraints for table `product_sub_category`
--
ALTER TABLE `product_sub_category`
  ADD CONSTRAINT `product_sub_category_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
