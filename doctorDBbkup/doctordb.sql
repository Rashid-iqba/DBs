-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 22, 2022 at 09:45 AM
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
-- Database: `doctordb`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor_user`
--

DROP TABLE IF EXISTS `doctor_user`;
CREATE TABLE IF NOT EXISTS `doctor_user` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `doctor_name` varchar(20) DEFAULT NULL,
  `doctor_type` int(100) DEFAULT NULL,
  `address` text,
  `picture` text,
  `experince` int(10) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `symptoms_category` int(100) DEFAULT NULL,
  `fee` int(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `symptoms_category` (`symptoms_category`),
  KEY `doctor_type` (`doctor_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_user`
--

INSERT INTO `doctor_user` (`id`, `doctor_name`, `doctor_type`, `address`, `picture`, `experince`, `phone`, `email`, `password`, `symptoms_category`, `fee`, `created_at`) VALUES
(1, NULL, NULL, NULL, '1660560864512-IPL-Match-9-MI-vs-RR.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 16:24:24'),
(2, NULL, NULL, NULL, '1660561053100-IPL-Match-9-MI-vs-RR.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 16:27:33'),
(3, NULL, NULL, NULL, '1660564302143-dice.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 17:21:42');

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
-- Table structure for table `slot_booking`
--

DROP TABLE IF EXISTS `slot_booking`;
CREATE TABLE IF NOT EXISTS `slot_booking` (
  `order_id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `doctor_id` int(10) NOT NULL,
  `booking_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `booking_status` enum('request','confirm','cancell') DEFAULT NULL,
  `updated_at` varchar(10) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  KEY `doctor_id` (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slot_booking`
--

INSERT INTO `slot_booking` (`order_id`, `user_id`, `doctor_id`, `booking_date`, `booking_status`, `updated_at`) VALUES
(1, 6, 2, '2022-08-14 20:31:40', 'confirm', ''),
(2, 1, 2, '2022-08-14 20:47:30', 'request', '');

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

DROP TABLE IF EXISTS `symptoms`;
CREATE TABLE IF NOT EXISTS `symptoms` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `image` text NOT NULL,
  `about` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `symptoms`
--

INSERT INTO `symptoms` (`id`, `name`, `image`, `about`) VALUES
(1, 'Cough & Cold?', 'https://www.practo.com/consult/static/images/cough-cold-v1.jpg', 'fever (100° F),\r\nheadache,\r\nmore intense pain and fatigue, and\r\nmore severe, often dry cough.');

-- --------------------------------------------------------

--
-- Table structure for table `type_of_doctor`
--

DROP TABLE IF EXISTS `type_of_doctor`;
CREATE TABLE IF NOT EXISTS `type_of_doctor` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `img` text NOT NULL,
  `charges` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type_of_doctor`
--

INSERT INTO `type_of_doctor` (`id`, `type`, `img`, `charges`) VALUES
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`, `address`, `phone`, `doctor_report`, `age`, `gender`, `weight`, `bp_level`, `sugar_level`, `created_at`, `updated_at`, `active_status`, `login_status`, `offer_id`, `booking`) VALUES
(1, 'raj', 'rj@gmail.com', '12345', NULL, 'bhanni', '123456564', NULL, 25, 'male', 55, 103, 54, '2022-07-24 01:20:10', NULL, 'active', 'offline', NULL, NULL),
(3, 'rok', 'rk@gmail.com', '12345', NULL, 'allpati', '123456564', NULL, 28, 'male', 97, 103, 54, '2022-07-24 01:21:06', NULL, 'active', 'online', NULL, NULL),
(5, 'priya', 'py@gmail.com', '12345', NULL, 'allpati', '123456564', NULL, 25, 'female', 97, 64, 54, '2022-07-24 01:21:47', NULL, 'active', 'online', NULL, NULL),
(6, 'payal', 'pl@gmail.com', '12345', NULL, 'allpati', '123456564', NULL, 25, 'female', 45, 64, 54, '2022-07-24 01:22:38', NULL, 'active', 'online', NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctor_user`
--
ALTER TABLE `doctor_user`
  ADD CONSTRAINT `doctor_user_ibfk_1` FOREIGN KEY (`doctor_type`) REFERENCES `type_of_doctor` (`id`),
  ADD CONSTRAINT `doctor_user_ibfk_2` FOREIGN KEY (`symptoms_category`) REFERENCES `symptoms` (`id`);

--
-- Constraints for table `slot_booking`
--
ALTER TABLE `slot_booking`
  ADD CONSTRAINT `slot_booking_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `slot_booking_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctor_user` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`booking`) REFERENCES `users_and_doctor` (`booking_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
