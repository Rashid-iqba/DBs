-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 30, 2022 at 06:18 PM
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
-- Database: `totkartdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_master`
--

DROP TABLE IF EXISTS `category_master`;
CREATE TABLE IF NOT EXISTS `category_master` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `off` int(5) NOT NULL,
  `group_id` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_master`
--

INSERT INTO `category_master` (`id`, `name`, `image`, `off`, `group_id`) VALUES
(1, 'suit', 'category_1670744777241.jpg', 10, 2),
(2, 'saree', 'category_1670685438838.jpg', 30, 2),
(3, 'shirt', 'iiioooo', 60, 1),
(4, 'Jeans', 'category_1670745712025.jpg', 60, 2),
(5, 'Lehnga', 'category_1670745903165.jpg', 50, 2),
(6, 'Jewellery', 'category_1670746469192.webp', 80, 2),
(7, 'Dress', 'category_1670762475633.jpeg', 30, 2);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `state` enum('bihar','westbangal','maharastra','taminadu') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `state`) VALUES
(1, 'darbhanga', 'bihar'),
(2, 'patna', 'bihar');

-- --------------------------------------------------------

--
-- Table structure for table `group_master`
--

DROP TABLE IF EXISTS `group_master`;
CREATE TABLE IF NOT EXISTS `group_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gruop_name` varchar(30) NOT NULL,
  `image` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_master`
--

INSERT INTO `group_master` (`id`, `gruop_name`, `image`) VALUES
(1, 'mens', 'group_1670681333391.jpg'),
(2, 'womens', 'group_1670681313074.jpg'),
(3, 'Electronics', 'group_1670682176619.png'),
(4, 'Appliances', 'group_1670682279949.png'),
(5, 'Toys', 'group_1670682317083.jpg'),
(6, 'Grocery', 'group_1670682388644.jpg'),
(7, 'furniture', 'group_1670682714763.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kart`
--

DROP TABLE IF EXISTS `kart`;
CREATE TABLE IF NOT EXISTS `kart` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `product_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `qunatity` int(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kart`
--

INSERT INTO `kart` (`id`, `product_id`, `user_id`, `qunatity`, `created_at`, `status`) VALUES
(1, 1, 1, 4, '2022-11-22 22:13:46', 'active'),
(2, 1, 1, 4, '2022-11-27 16:58:23', 'active'),
(5, 1, 1, 2, '2022-11-27 17:46:44', 'active'),
(6, 1, 2, 4, '2022-11-27 22:08:46', 'active'),
(7, 1, 1, 2, '2022-12-11 11:58:29', 'active'),
(8, 1, 1, 2, '2022-12-11 11:58:33', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `offer_banner`
--

DROP TABLE IF EXISTS `offer_banner`;
CREATE TABLE IF NOT EXISTS `offer_banner` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `image` text NOT NULL,
  `created_by` int(10) DEFAULT NULL,
  `category_id` int(10) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('inactive','active') NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offer_banner`
--

INSERT INTO `offer_banner` (`id`, `image`, `created_by`, `category_id`, `created_at`, `status`) VALUES
(1, 'banner_1669802188663.jpg', NULL, 7, '2022-11-30 15:26:28', 'active'),
(2, 'banner_1669802195928.jpg', NULL, 2, '2022-11-30 15:26:35', 'active'),
(3, 'banner_1669802204170.jpg', NULL, 4, '2022-11-30 15:26:44', 'active'),
(4, 'banner_1669802212926.jpg', NULL, 5, '2022-11-30 15:26:52', 'inactive'),
(5, 'banner_1669802220771.jpg', NULL, 2, '2022-11-30 15:27:00', 'active'),
(7, 'banner_1670764398418.jpg', NULL, 1, '2022-12-11 18:43:18', 'inactive'),
(8, 'banner_1670764434274.gif', NULL, 1, '2022-12-11 18:43:54', 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `order_master`
--

DROP TABLE IF EXISTS `order_master`;
CREATE TABLE IF NOT EXISTS `order_master` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(100) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `product_id` int(20) NOT NULL,
  `quantity` int(20) NOT NULL,
  `size` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `order_by` int(20) NOT NULL,
  `order_to` int(20) NOT NULL,
  `payment_id` int(10) DEFAULT NULL,
  `order_status` enum('complete','cancelled','pending') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_by` (`order_by`),
  KEY `order_to` (`order_to`),
  KEY `product_id` (`product_id`),
  KEY `payment_id` (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_master`
--

INSERT INTO `order_master` (`id`, `order_no`, `order_date`, `product_id`, `quantity`, `size`, `color`, `order_by`, `order_to`, `payment_id`, `order_status`) VALUES
(1, 'wergsdfdgsdf', '2022-11-22 22:12:56', 1, 3, 'xl', 'red', 1, 1, NULL, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `order_payment`
--

DROP TABLE IF EXISTS `order_payment`;
CREATE TABLE IF NOT EXISTS `order_payment` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `payment_status` enum('pending','cancel','complete') NOT NULL,
  `patment_type` enum('COD','UPI','NetBanking') NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_payment`
--

INSERT INTO `order_payment` (`id`, `payment_status`, `patment_type`, `created_at`, `order_id`) VALUES
(1, 'pending', 'COD', '2022-11-27 23:52:01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_master`
--

DROP TABLE IF EXISTS `product_master`;
CREATE TABLE IF NOT EXISTS `product_master` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `group_id` int(20) NOT NULL,
  `category_id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `image1` text NOT NULL,
  `image2` text NOT NULL,
  `image3` text NOT NULL,
  `image4` text NOT NULL,
  `size` varchar(10) DEFAULT NULL,
  `created_by` int(100) NOT NULL,
  `price` int(10) NOT NULL,
  `lowest_price` int(11) DEFAULT NULL,
  `discount` int(4) DEFAULT '5',
  `description` text NOT NULL,
  `aviliblity_status` enum('instock','outofstock') NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(10) DEFAULT NULL,
  `status` enum('active','nactive') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `category` (`category_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_master`
--

INSERT INTO `product_master` (`id`, `group_id`, `category_id`, `name`, `image1`, `image2`, `image3`, `image4`, `size`, `created_by`, `price`, `lowest_price`, `discount`, `description`, `aviliblity_status`, `created_date`, `updated_at`, `status`) VALUES
(1, 2, 2, 'saree', 'product_1670741088591.jpg', 'product_1670741088594.jpg', 'product_1670741088598.jpg', 'product_1670741088601.jpg', 'XXL', 1, 800, 999, 25, 'very good product', 'instock', '2022-12-11 12:14:48', NULL, 'active'),
(2, 2, 2, 'silk saree', 'product_1670741295631.jpg', 'product_1670741295632.jpg', 'product_1670741295634.jpg', 'product_1670741295636.jpg', 'XXL', 1, 1500, 899, 50, 'very good product', 'instock', '2022-12-11 12:18:15', NULL, 'active'),
(3, 2, 2, 'Sifon saree', 'product_1670741365087.jpg', 'product_1670741365089.jpg', 'product_1670741365092.jpg', 'product_1670741365093.jpg', 'XXL', 1, 1900, 799, 60, 'very good product', 'instock', '2022-12-11 12:19:25', NULL, 'active'),
(4, 2, 2, 'Sifon saree', 'product_1670766250414.jpg', 'product_1670766250415.jpg', 'product_1670766250419.jpg', 'product_1670766250427.jpg', 'XXL', 1, 2000, 850, 45, 'very good product', 'instock', '2022-12-11 19:14:10', NULL, 'active'),
(5, 2, 2, 'Banarsi saree', 'product_1670766593201.jpg', 'product_1670766593202.jpg', 'product_1670766593203.jpg', 'product_1670766593209.jpg', 'no size', 1, 2000, 499, 30, 'very good product', 'instock', '2022-12-11 19:19:53', NULL, 'active'),
(6, 2, 2, 'Banarsi saree', 'product_1670766645295.jpg', 'product_1670766645296.jpg', 'product_1670766645298.jpg', 'product_1670766645298.jpg', 'no size', 1, 2000, 699, 80, 'very good product', 'instock', '2022-12-11 19:20:45', NULL, 'active'),
(7, 2, 2, 'Banarsi saree', 'product_1670771621869.jpg', 'product_1670771621871.jpg', 'product_1670771621872.jpg', 'product_1670771621874.jpg', 'no size', 1, 2000, 699, 45, 'very good product', 'instock', '2022-12-11 20:43:41', NULL, 'active'),
(8, 2, 2, 'Banarsi saree', 'product_1670771637618.jpg', 'product_1670771637619.jpg', 'product_1670771637621.jpg', 'product_1670771637622.jpg', 'no size', 1, 2000, 699, 20, 'very good product', 'instock', '2022-12-11 20:43:57', NULL, 'active'),
(9, 2, 2, 'Silk saree', 'product_1670772263735.jpg', 'product_1670772263736.jpg', 'product_1670772263738.jpg', 'product_1670772263739.jpg', 'no size', 1, 2000, 699, 40, 'very good product', 'instock', '2022-12-11 20:54:23', NULL, 'active'),
(10, 2, 2, 'Cotton saree', 'product_1670772300164.jpg', 'product_1670772300167.jpg', 'product_1670772300169.jpg', 'product_1670772300170.jpg', 'no size', 1, 2000, 699, 35, 'very good product', 'instock', '2022-12-11 20:55:00', NULL, 'active'),
(11, 2, 2, 'Cotton saree', 'product_1670775467375.jpg', 'product_1670775467376.jpg', 'product_1670775467377.jpg', 'product_1670775467382.jpg', 'no size', 1, 3000, 999, 5, 'very good product', 'instock', '2022-12-11 21:47:47', NULL, 'active'),
(12, 2, 2, 'Cotton saree', 'product_1670782618717.jpg', 'product_1670782618717.jpg', 'product_1670782618720.jpg', 'product_1670782618722.jpg', 'no size', 1, 3000, 999, 5, 'very good product', 'instock', '2022-12-11 23:46:58', NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `product_rating`
--

DROP TABLE IF EXISTS `product_rating`;
CREATE TABLE IF NOT EXISTS `product_rating` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `product_id` int(10) NOT NULL,
  `users_id` int(10) NOT NULL,
  `rating` float DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `users_id` (`users_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_rating`
--

INSERT INTO `product_rating` (`id`, `product_id`, `users_id`, `rating`, `created_at`) VALUES
(1, 3, 1, 4.5, '2022-11-27 20:55:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

DROP TABLE IF EXISTS `product_review`;
CREATE TABLE IF NOT EXISTS `product_review` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `product_id` int(10) NOT NULL,
  `users_id` int(10) NOT NULL,
  `review` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `users_id` (`users_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_review`
--

INSERT INTO `product_review` (`id`, `product_id`, `users_id`, `review`, `created_at`) VALUES
(1, 6, 2, 'good', '2022-11-27 20:52:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `gender` enum('male','female','others') NOT NULL,
  `Address1` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `password` varchar(20) NOT NULL,
  `fcm` text,
  `status` enum('inactive','active') NOT NULL DEFAULT 'active',
  `image` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `gender`, `Address1`, `email`, `phone`, `password`, `fcm`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'raj', 'male', '', 'raj@gmail.com', '12345678998', '12345', 'cQz121QSQg-dumPSwUjlA6:APA91bFfB6nXXX7X96VL5tKd3cCsiCZ6cjdJyjgcZpgYwNKgBddffeSt8qjjBwN1HM6OTeNYqusNaEOU-eduyH-Lh9iEb-0hTpBbdvuzFgtbrTqbDOwMRI_UZJixUkPbkg7BF7d4Z3d8', 'active', 'user_1671824549128.jpg', '2022-11-22 21:50:56', NULL),
(2, 'sikha', 'female', 'allpatti', 'sikha@gmail.com', '12345678998', '12345', NULL, 'active', 'image_1669548037826.png', '2022-11-27 15:51:15', NULL),
(3, 'user1', 'male', 'kolkata', 'user1@gmail.com', '1234445', '12345', 'eFvCbIRDShubnJdYGZds_z:APA91bHqC-n2C_1M-ri0o8eCFBtB7yb8SEeZlxjFUR04-bDOFkqf4b3ImW116uZolK2zkLs1PwBOkIlDfVWaq3O4pZKHpg3pitsxlwComh3Q_aHkeGlrBoTOjeVJkJzz0-tZwJDavd3P', 'active', 'user_1671826730713.jpg', '2022-11-27 16:24:55', NULL),
(5, 'user1', 'male', 'kolkata', 'user3@gmail.com', '1234445', '12345', NULL, 'active', NULL, '2022-12-21 23:39:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
CREATE TABLE IF NOT EXISTS `vendor` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `shop_name` varchar(100) NOT NULL,
  `city` int(4) NOT NULL,
  `shop_address` text NOT NULL,
  `password` varchar(20) NOT NULL,
  `fcm` text,
  `status` enum('inactive','active') NOT NULL DEFAULT 'inactive',
  `image` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `city` (`city`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`id`, `name`, `email`, `phone`, `shop_name`, `city`, `shop_address`, `password`, `fcm`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'rohan', 'rohan@gmail.com', '12345678998', 'rohaGarments', 1, 'sefsdfasd', '12345', '', 'active', 'image_1669573106882.png', '2022-11-22 21:59:34', ''),
(2, 'rajesh', 'rj@gmail.com', '12345678998', 'rJsales', 1, 'near naka 5', '12345', '', 'active', 'image_1669573144678.png', '2022-11-27 15:44:30', ''),
(3, 'name', 'email@gmail.com', '34234234233', 'shop_namerk', 1, 'shop_address', '12345', NULL, 'inactive', 'image_1669573141552.png', '2022-11-27 16:11:51', NULL),
(4, 'name', 'eml@gmail.com', '34234234233', 'shop_namerk', 1, 'shop_address', '12345', NULL, 'inactive', NULL, '2022-11-27 16:15:21', NULL),
(23, 'name', 'vendor1@gmail.com', '34234234233', 'shop_namerk', 1, 'shop_address', '12345', NULL, 'inactive', NULL, '2022-11-27 16:19:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `product_id` int(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('active','inactive') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_master`
--
ALTER TABLE `category_master`
  ADD CONSTRAINT `category_master_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group_master` (`id`);

--
-- Constraints for table `kart`
--
ALTER TABLE `kart`
  ADD CONSTRAINT `kart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_master` (`id`),
  ADD CONSTRAINT `kart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `offer_banner`
--
ALTER TABLE `offer_banner`
  ADD CONSTRAINT `offer_banner_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_master` (`id`);

--
-- Constraints for table `order_master`
--
ALTER TABLE `order_master`
  ADD CONSTRAINT `order_master_ibfk_1` FOREIGN KEY (`order_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `order_master_ibfk_2` FOREIGN KEY (`order_to`) REFERENCES `vendor` (`id`),
  ADD CONSTRAINT `order_master_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `product_master` (`id`),
  ADD CONSTRAINT `order_master_ibfk_4` FOREIGN KEY (`payment_id`) REFERENCES `order_payment` (`id`);

--
-- Constraints for table `order_payment`
--
ALTER TABLE `order_payment`
  ADD CONSTRAINT `order_payment_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_master` (`id`);

--
-- Constraints for table `product_master`
--
ALTER TABLE `product_master`
  ADD CONSTRAINT `product_master_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_master` (`id`),
  ADD CONSTRAINT `product_master_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `vendor` (`id`),
  ADD CONSTRAINT `product_master_ibfk_3` FOREIGN KEY (`group_id`) REFERENCES `group_master` (`id`);

--
-- Constraints for table `product_rating`
--
ALTER TABLE `product_rating`
  ADD CONSTRAINT `product_rating_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_master` (`id`),
  ADD CONSTRAINT `product_rating_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `product_review`
--
ALTER TABLE `product_review`
  ADD CONSTRAINT `product_review_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_master` (`id`),
  ADD CONSTRAINT `product_review_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `vendor`
--
ALTER TABLE `vendor`
  ADD CONSTRAINT `vendor_ibfk_1` FOREIGN KEY (`city`) REFERENCES `city` (`id`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_master` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
