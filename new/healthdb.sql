-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 10, 2022 at 07:48 AM
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
-- Database: `healthdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

DROP TABLE IF EXISTS `days`;
CREATE TABLE IF NOT EXISTS `days` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `days_name` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `days_name`) VALUES
(1, 'SUNDAY'),
(2, 'MONDAY'),
(3, 'TUESDAY'),
(4, 'WEDNESDAY'),
(5, 'THURESDAY'),
(6, 'FRIDAY'),
(7, 'SATURDAY');

-- --------------------------------------------------------

--
-- Table structure for table `times`
--

DROP TABLE IF EXISTS `times`;
CREATE TABLE IF NOT EXISTS `times` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `times`
--

INSERT INTO `times` (`id`, `time`) VALUES
(1, '06:00 am'),
(2, '08:00 am'),
(3, '10:00 am'),
(4, '12:00 pm'),
(5, '02:00 pm'),
(6, '04:00 pm'),
(7, '06:00 pm'),
(8, '08:00 pm'),
(9, '10:00 pm');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `image` text NOT NULL,
  `char_id` int(10) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `image`, `char_id`, `created_at`, `updated_at`) VALUES
(1, 'raj', 'ri@gmail.com', '12345', '', 1, '2022-10-28 00:07:29', '');

-- --------------------------------------------------------

--
-- Table structure for table `weekly_chart`
--

DROP TABLE IF EXISTS `weekly_chart`;
CREATE TABLE IF NOT EXISTS `weekly_chart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `day` int(7) NOT NULL,
  `time` int(10) NOT NULL,
  `picture` text,
  `details` text NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `day` (`day`),
  KEY `time` (`time`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weekly_chart`
--

INSERT INTO `weekly_chart` (`id`, `day`, `time`, `picture`, `details`, `description`, `created_at`) VALUES
(1, 1, 5, 'chi seed chai', 'okokokkokk', 'okokokok', '2022-10-28 00:05:56');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `weekly_chart` (`id`);

--
-- Constraints for table `weekly_chart`
--
ALTER TABLE `weekly_chart`
  ADD CONSTRAINT `weekly_chart_ibfk_1` FOREIGN KEY (`time`) REFERENCES `times` (`id`),
  ADD CONSTRAINT `weekly_chart_ibfk_2` FOREIGN KEY (`day`) REFERENCES `days` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
