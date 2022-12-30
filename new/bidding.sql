-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 10, 2022 at 07:52 AM
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
-- Database: `bidding`
--

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
CREATE TABLE IF NOT EXISTS `offers` (
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
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `offer_name`, `validity_from`, `validity_till`, `image`, `offer_detail`, `created_at`) VALUES
(1, 'dewali', '2022-07-13 00:00:00', '2022-07-30 10:00:00', '', NULL, '2022-07-23 13:16:23');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_type_id` int(100) NOT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `image` text NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `category_type_id`, `product_name`, `product_price`, `image`) VALUES
(1, 0, 'suit', 2000, 'https://www.iwmbuzz.com/wp-content/uploads/2022/07/palak-tiwari-is-a-sizzling-indian-diva-in-this-golden-saree-see-pics-3.jpg'),
(2, 0, 'mobile', 5000, 'https://i.pinimg.com/736x/85/6b/d7/856bd770bc323302d6665993a89e35b5.jpg'),
(3, 0, 'Product 3', 4000, 'http://pngedits.com/public/uploads/preview/beautiful-girl-png-in-saree-full-hd-download-free-11627384635hvybezar7a.png'),
(4, 0, 'Product 4', 6000, 'https://i.pinimg.com/originals/03/f4/22/03f422f1be56b41c21a90e33ef11daa0.jpg'),
(5, 0, 'Product 5', 7000, 'https://i.pinimg.com/564x/c6/8e/1d/c68e1d29ff7f34f73f6b549031d14bd5.jpg'),
(6, 0, 'bag', 200, 'https://stylesatlife.com/wp-content/uploads/2021/06/Tamanna.jpg'),
(7, 0, NULL, NULL, 'https://i.pinimg.com/564x/42/e3/92/42e39271e790452b602bdb300420c7d6.jpg'),
(8, 0, NULL, NULL, 'https://i.pinimg.com/564x/94/6d/b3/946db39b7b6f1068ae1471a7d91a6923.jpg'),
(21, 0, NULL, NULL, 'https://i.pinimg.com/564x/c5/40/14/c5401423d7851b907223a7fb8bf1206b.jpg'),
(22, 0, NULL, NULL, 'https://i.pinimg.com/564x/ab/71/d0/ab71d06b2ad7c767704e51bcb246d7bd.jpg'),
(23, 0, NULL, NULL, 'https://i.pinimg.com/originals/c7/8c/d9/c78cd9daf8cfeba3bb13dbd7ec5647dc.jpg'),
(24, 0, NULL, NULL, 'https://i.pinimg.com/564x/23/52/61/235261f503776815c2133c849cc87bd0.jpg'),
(25, 0, NULL, NULL, 'https://i.pinimg.com/474x/bc/e5/ce/bce5cede9e83ac7ca36a4886d75f20ba.jpg'),
(26, 0, NULL, NULL, 'https://static.toiimg.com/photo/88243781/88243781.jpg?v=3');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
CREATE TABLE IF NOT EXISTS `product_category` (
  `category_id` int(100) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `category_picture` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `image` text,
  `address` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `DOB` int(100) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(20) DEFAULT NULL,
  `active_status` enum('active','inactive') NOT NULL,
  `login_status` enum('online','offline') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`, `address`, `phone`, `DOB`, `gender`, `created_at`, `updated_at`, `active_status`, `login_status`) VALUES
(1, 'raj', 'rj@gmail.com', '12345', NULL, 'bhanni', '123456564', 25, 'male', '2022-07-24 01:20:10', NULL, 'active', 'offline'),
(3, 'rok', 'rk@gmail.com', '12345', NULL, 'allpati', '123456564', 28, 'male', '2022-07-24 01:21:06', NULL, 'active', 'online'),
(5, 'priya', 'py@gmail.com', '12345', NULL, 'allpati', '123456564', 25, 'female', '2022-07-24 01:21:47', NULL, 'active', 'online'),
(6, 'payal', 'pl@gmail.com', '12345', NULL, 'allpati', '123456564', 25, 'female', '2022-07-24 01:22:38', NULL, 'active', 'online');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
