-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 25, 2021 at 05:44 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `os_rfq_100`
--

-- --------------------------------------------------------

--
-- Table structure for table `rfq_party_master`
--


CREATE TABLE  `rfq_can` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `code` int(11) NOT NULL,
  `mobile_phone` varchar(15) NOT NULL,
  `alternate_phone` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(250) NOT NULL,
  `optional_email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `dob` date NOT NULL,
  `country` varchar(250) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `otp_status` int(11) NOT NULL,
  `created_by` enum('admin','general','vendor','approval') NOT NULL DEFAULT 'admin',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `approved` tinyint(4) UNSIGNED NOT NULL DEFAULT '2' COMMENT '0-admin,1-approve,2-general,3-vendor',
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `deleted_status` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rfq_party_master`
--

INSERT INTO `rfq_can` (`id`, `first_name`, `last_name`, `code`, `mobile_phone`, `alternate_phone`, `username`, `password`, `email`, `optional_email`, `address`, `dob`, `country`, `state`, `city`, `zip`, `otp_status`, `created_by`, `created_on`, `approved`, `created_at`, `updated_at`, `user_id`, `status`, `deleted_status`) VALUES
(2, 'optimum', 'solutions', 0, '987654376548', '', 'Too@gmail.com', '98bf0df723617ebe6fe7902913af9c80c926a628', 'os@gmail.com', '', 'kolkata', '2020-11-25', 'India', 'West Bengal', 'kolkata', '700102', 0, 'admin', '2020-11-05 11:01:32', 3, '2020-11-05 16:31:32', '2020-11-05 16:31:32', 0, '0', 'No'),
(3, 'optimum', 'solutions', 0, '987654376548', '', 'Too@gmail.com', '98bf0df723617ebe6fe7902913af9c80c926a628', 'os@gmail.com', '', 'kolkata', '2020-11-25', 'India', 'West Bengal', 'kolkata', '700102', 0, 'admin', '2020-11-05 11:01:59', 3, '2020-11-05 16:31:32', '2020-11-05 16:31:32', 0, '0', 'No'),
(4, 'optimum', 'solutions', 0, '987654376548', '', 'Too@gmail.com', '98bf0df723617ebe6fe7902913af9c80c926a628', 'os@gmail.com', '', 'kolkata', '2020-11-25', 'India', 'West Bengal', 'kolkata', '700102', 0, 'admin', '2020-11-05 11:02:44', 3, '2020-11-05 16:32:44', '2020-11-05 16:32:44', 0, '0', 'No'),
(5, 'v1', 'v1', 0, '123', '12345', 'v1', 'cf1426eaad4714c4f258109906ea3b28cd16aad9', 'v1@gmail.com', '', 'kolkata', '2021-01-12', 'india', 'wb', 'kolkata', '12345', 0, 'admin', '2021-01-27 10:01:08', 3, '2021-01-27 15:31:08', '2021-01-27 15:31:08', 0, '0', 'No'),
(6, 'v1', 'v1', 0, '123', '12345', 'v1', 'cf1426eaad4714c4f258109906ea3b28cd16aad9', 'v1@gmail.com', '', 'kolkata', '2021-12-01', 'kolkata', 'kolkata', 'kolkata', '12345', 0, 'admin', '2021-01-27 10:07:13', 3, '2021-01-27 15:37:13', '2021-01-27 15:37:13', 0, '0', 'No'),
(7, 'v', '2', 0, '12345', '12345', 'v2', 'd5bb5233f06320005d46ef236d41e4df16505074', 'v12@gmail.com', '', 'abcde', '2021-01-27', 'india', 'wb', 'abcde', '12345', 0, 'admin', '2021-01-27 10:12:40', 3, '2021-01-27 15:42:40', '2021-01-27 15:42:40', 0, '0', 'No'),
(8, 'reretr', 'rewq', 0, '12345', '12345', 'ddsd', '98bf0df723617ebe6fe7902913af9c80c926a628', 'awe@gfj', '', 'szs', '2021-01-12', 'sasa', 'dsds', 'fdre', '12345', 0, 'admin', '2021-01-27 11:30:09', 3, '2021-01-27 17:00:09', '2021-01-27 17:00:09', 0, '0', 'No'),
(9, 'avfre', 'err', 0, '12345', '12345', 'derr', 'ee306e6e4925cf6175812225b7c32348a44a442e', 'avf@rt', '', 'rretrt', '2021-01-20', 'dssdew', 'West Bengal', 'ddss', '1234', 0, 'admin', '2021-01-27 11:32:18', 3, '2021-01-27 17:02:18', '2021-01-27 17:02:18', 0, '0', 'No'),
(10, 'avfre', 'err', 0, '12345678', '12345', 'derr', '', 'avf@rt', '', 'rretrt', '1970-01-01', 'ddss', 'West Bengal', '', '1234', 0, 'admin', '2021-01-28 10:00:06', 3, '2021-01-28 15:30:06', '2021-01-28 15:30:06', 0, '0', 'No'),
(11, 'test2', 'test2', 123, '09831114416', '12456', 'test', '98bf0df723617ebe6fe7902913af9c80c926a628', 'test2@gmail.com', '', 'test2', '1970-01-01', 'India', 'Karnataka', '', '700136', 0, 'admin', '2021-01-28 10:26:26', 3, '2021-01-28 15:56:26', '2021-01-30 15:03:44', 0, '0', 'No'),
(13, 'test2', 'test2', 0, '09831114416', '12345', 'test2@123', '98bf0df723617ebe6fe7902913af9c80c926a628', 'test@gmail.com', '', 'test2', '1970-01-01', 'India', 'Assam', '', '700136', 0, 'admin', '2021-01-30 08:30:45', 3, '2021-01-30 14:00:45', '2021-01-30 14:47:39', 0, '0', 'No'),
(14, 'test3', 'test3', 0, '545345645', '6545744', 'test3@123', '462e3c748af13a4c2dcb47bbc4597f0e293542cd', 'test3@gmail.com', '', 'test3', '2021-01-01', 'India', 'Chhattisgarh', '', '700136', 0, 'admin', '2021-01-30 09:41:00', 3, '2021-01-30 15:11:00', '2021-01-30 15:11:00', 0, '0', 'No'),
(16, 'gst', 'arkha', 0, '9064465254', '', '', '', 'a@gmail.com', 'm@gmail.com', 'kolkata', '2021-02-05', 'India', 'West Bengal', 'islampur', '700102', 0, 'admin', '2021-02-05 11:10:41', 3, '2021-02-05 16:40:41', '2021-02-05 16:40:41', 0, '0', 'No'),
(17, 'optimum', 'solutions', 0, '12345678', '', '', '', 'soumen@gmail.com', 'soumen@gmail.com', 'kolkata', '2021-02-01', 'India', 'West Bengal', 'kolkata', '700102', 0, 'admin', '2021-02-05 11:13:43', 3, '2021-02-05 16:43:43', '2021-02-05 16:43:43', 0, '0', 'No'),
(18, 'Ram krishna Transport', 'solutions', 0, '1234567890', '', 'ram', '98bf0df723617ebe6fe7902913af9c80c926a628', 'ramt@sds', 'ramt1@sms', '861/3 block-A laketowna', '1970-01-01', 'India', 'West Bengal', 'kolkata', '700089', 0, 'admin', '2021-02-10 15:06:22', 3, '2021-02-10 20:36:22', '2021-02-10 20:36:22', 0, '0', 'No'),
(19, 'Ramkumar', 'Transport', 0, '1234567890', '', 'ram1', '98bf0df723617ebe6fe7902913af9c80c926a628', 'aa@dsd', '', '861/3 block-A laketown', '1970-01-01', 'India', 'West Bengal', 'kolkata', '700089', 0, 'admin', '2021-02-10 15:07:45', 3, '2021-02-10 20:37:45', '2021-02-10 20:37:45', 0, '0', 'No'),
(20, 'SKS Transport', 'solition`', 0, '1234567890', '', '', '', 'ad@sds', '', '861/3 block-A laketown', '1970-01-01', 'India', 'West Bengal', 'kolkata', '700089', 0, 'admin', '2021-02-10 15:08:41', 3, '2021-02-10 20:38:41', '2021-02-10 20:38:41', 0, '0', 'No'),
(21, 'optimum', 'solutions', 0, '09064352341', '', '', '', 'ops@gmail.com', 'ars@gmail.com', 'kolkata', '2021-10-25', 'India', 'West Bengal', 'kolkataq', '700001', 0, 'admin', '2021-10-30 04:48:00', 3, '2021-10-30 10:18:00', '2021-10-30 10:18:00', 0, '0', 'No'),
(22, 'aiinhome', 'technical', 0, '09064352341', '', '', '', 'at@gmail.com', 'ars@gmail.com', 'kolkata', '2021-10-23', 'India', 'West Bengal', 'kolkataq', '700001', 0, 'admin', '2021-10-30 04:50:02', 3, '2021-10-30 10:20:02', '2021-10-30 10:20:02', 0, '0', 'No');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
