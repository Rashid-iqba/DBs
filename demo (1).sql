-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 11, 2022 at 12:07 PM
-- Server version: 5.7.24
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(200) DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `user_id` int(100) NOT NULL,
  `user_b` int(10) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `user_id` (`user_id`),
  KEY `user_b` (`user_b`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `user_id`, `user_b`) VALUES
(1, 'suit', 2000, 0, 0),
(2, 'mobile', 5000, 0, 0),
(3, 'Product 3', 4000, 0, 0),
(4, 'Product 4', 6000, 0, 0),
(5, 'Product 5', 7000, 0, 0),
(6, 'bag', 200, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`, `address`) VALUES
(1, 'raj', 'raj@gmail.com', 'kol');

-- --------------------------------------------------------

--
-- Table structure for table `user_background`
--

DROP TABLE IF EXISTS `user_background`;
CREATE TABLE IF NOT EXISTS `user_background` (
  `user_b` int(10) NOT NULL AUTO_INCREMENT,
  `gender` varchar(5) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `aadhaar` varchar(20) NOT NULL,
  PRIMARY KEY (`user_b`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_background`
--

INSERT INTO `user_background` (`user_b`, `gender`, `phone`, `aadhaar`) VALUES
(1, 'malle', '2322456542424', '22323212215522');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `product` (`user_id`);

--
-- Constraints for table `user_background`
--
ALTER TABLE `user_background`
  ADD CONSTRAINT `user_background_ibfk_1` FOREIGN KEY (`user_b`) REFERENCES `product` (`user_b`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
