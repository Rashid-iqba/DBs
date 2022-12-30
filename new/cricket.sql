-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 10, 2022 at 07:51 AM
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
-- Database: `cricket`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL,
  `country_flag` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country_name`, `country_flag`) VALUES
(1, 'India', ''),
(2, 'UAE', ''),
(3, 'South Africa', ''),
(4, 'Afghanistan', ''),
(5, 'Australia', ''),
(6, 'Bangladesh', ''),
(7, 'England', ''),
(8, 'Ireland', ''),
(9, ' New Zealand', ''),
(10, 'Pakistan', ''),
(11, 'South Africa', ''),
(12, 'Sri Lanka', ''),
(13, 'West Indies', ''),
(14, 'Zimbabwe', '');

-- --------------------------------------------------------

--
-- Table structure for table `cricket_stadium`
--

DROP TABLE IF EXISTS `cricket_stadium`;
CREATE TABLE IF NOT EXISTS `cricket_stadium` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `country_id` int(50) NOT NULL,
  `stadium_name` varchar(200) NOT NULL,
  `stadium_pic` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cricket_stadium`
--

INSERT INTO `cricket_stadium` (`id`, `country_id`, `stadium_name`, `stadium_pic`) VALUES
(1, 1, 'M. Chinnaswamy Stadium', ''),
(31, 1, 'Eden Gardens', ''),
(33, 1, 'Wankhede Stadium', ''),
(34, 1, 'DY Patil Stadium', ''),
(35, 1, 'Brabourne Stadium', ''),
(36, 1, 'Narendra Modi Stadium', '');

-- --------------------------------------------------------

--
-- Table structure for table `icc_team`
--

DROP TABLE IF EXISTS `icc_team`;
CREATE TABLE IF NOT EXISTS `icc_team` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(50) NOT NULL,
  `player_id_1` int(5) NOT NULL,
  `player_id_2` int(5) NOT NULL,
  `player_id_3` int(5) NOT NULL,
  `player_id_4` int(5) NOT NULL,
  `player_id_5` int(5) NOT NULL,
  `player_id_6` int(5) NOT NULL,
  `player_id_7` int(5) NOT NULL,
  `player_id_8` int(5) NOT NULL,
  `player_id_9` int(5) NOT NULL,
  `player_id_10` int(5) NOT NULL,
  `player_id_11` int(5) NOT NULL,
  `player_id_12` int(5) NOT NULL,
  `player_id_13` int(5) NOT NULL,
  `player_id_14` int(5) NOT NULL,
  `player_id_15` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `team_country` (`player_id_1`,`player_id_2`,`player_id_3`,`player_id_4`,`player_id_5`,`player_id_6`,`player_id_7`,`player_id_8`,`player_id_9`,`player_id_10`,`player_id_11`,`player_id_12`,`player_id_13`,`player_id_14`,`player_id_15`),
  KEY `player_id_2` (`player_id_2`),
  KEY `player_id_3` (`player_id_3`),
  KEY `player_id_6` (`player_id_6`),
  KEY `player_id_4` (`player_id_4`),
  KEY `player_id_5` (`player_id_5`),
  KEY `player_id_7` (`player_id_7`),
  KEY `player_id_8` (`player_id_8`),
  KEY `player_id_9` (`player_id_9`),
  KEY `player_id_10` (`player_id_10`),
  KEY `player_id_15` (`player_id_15`),
  KEY `player_id_14` (`player_id_14`),
  KEY `player_id_13` (`player_id_13`),
  KEY `player_id_12` (`player_id_12`),
  KEY `player_id_11` (`player_id_11`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `icc_tournament`
--

DROP TABLE IF EXISTS `icc_tournament`;
CREATE TABLE IF NOT EXISTS `icc_tournament` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `tournament_name` varchar(50) NOT NULL,
  `tournament_year` varchar(20) NOT NULL,
  `tournament_teams` varchar(20) NOT NULL,
  `starting_date` varchar(20) NOT NULL,
  `end_date` varchar(20) NOT NULL,
  `winner` varchar(20) NOT NULL,
  `runner` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ipl_match`
--

DROP TABLE IF EXISTS `ipl_match`;
CREATE TABLE IF NOT EXISTS `ipl_match` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `team_a` int(100) NOT NULL,
  `team_b` int(100) NOT NULL,
  `match_date` datetime(6) NOT NULL,
  `match_venue` int(100) NOT NULL,
  `match_time` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `team_a` (`team_a`,`team_b`,`match_venue`),
  KEY `team_b` (`team_b`),
  KEY `match_venue` (`match_venue`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipl_match`
--

INSERT INTO `ipl_match` (`id`, `team_a`, `team_b`, `match_date`, `match_venue`, `match_time`) VALUES
(2, 4, 2, '2022-04-07 00:00:00.000000', 31, '');

-- --------------------------------------------------------

--
-- Table structure for table `ipl_points_table`
--

DROP TABLE IF EXISTS `ipl_points_table`;
CREATE TABLE IF NOT EXISTS `ipl_points_table` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `position` int(100) NOT NULL,
  `team_name` int(100) NOT NULL,
  `matches` int(100) NOT NULL,
  `win` int(30) NOT NULL,
  `lose` int(30) NOT NULL,
  `point` int(100) NOT NULL,
  `run_rate` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_name_2` (`team_name`),
  KEY `team_name` (`team_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipl_points_table`
--

INSERT INTO `ipl_points_table` (`id`, `position`, `team_name`, `matches`, `win`, `lose`, `point`, `run_rate`) VALUES
(1, 1, 4, 1, 1, 0, 2, '+1.043'),
(2, 2, 2, 2, 1, 1, 2, '1.032');

-- --------------------------------------------------------

--
-- Table structure for table `ipl_team`
--

DROP TABLE IF EXISTS `ipl_team`;
CREATE TABLE IF NOT EXISTS `ipl_team` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(50) NOT NULL,
  `team_logo` varchar(200) NOT NULL,
  `team_owner` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipl_team`
--

INSERT INTO `ipl_team` (`id`, `team_name`, `team_logo`, `team_owner`) VALUES
(1, 'Delhi Capitals', 'https:\\/\\/bcciplayerimages.s3.ap-south-1.amazonaws.com\\/ipl\\/DC\\/Logos\\/Medium\\/DC.png', ''),
(2, 'Chennai Super Kings', 'https:\\/\\/bcciplayerimages.s3.ap-south-1.amazonaws.com\\/ipl\\/CSK\\/logos\\/Medium\\/CSK.png', ''),
(3, 'Gujarat Titans', 'https:\\/\\/bcciplayerimages.s3.ap-south-1.amazonaws.com\\/ipl\\/GT\\/Logos\\/Medium\\/GTmedium.png', ''),
(4, 'Kolkata Knight Riders', 'https:\\/\\/bcciplayerimages.s3.ap-south-1.amazonaws.com\\/ipl\\/KKR\\/Logos\\/Medium\\/KKR.png', ''),
(5, 'Lucknow Super Giants', 'https:\\/\\/bcciplayerimages.s3.ap-south-1.amazonaws.com\\/ipl\\/LSG\\/Logos\\/Medium\\/LSGmedium.png', ''),
(6, 'Mumbai Indian', 'https:\\/\\/bcciplayerimages.s3.ap-south-1.amazonaws.com\\/ipl\\/MI\\/Logos\\/Medium\\/MI.png', ''),
(7, 'Punjab Kings', 'https:\\/\\/bcciplayerimages.s3.ap-south-1.amazonaws.com\\/ipl\\/PBKS\\/Logos\\/Medium\\/PBKS.png', ''),
(8, 'Rajasthan Royals', 'https:\\/\\/bcciplayerimages.s3.ap-south-1.amazonaws.com\\/ipl\\/RR\\/Logos\\/Medium\\/RR.png', ''),
(9, 'Royal Challengers Bangalore', 'https:\\/\\/bcciplayerimages.s3.ap-south-1.amazonaws.com\\/ipl\\/RCB\\/Logos\\/Medium\\/RCB.png', ''),
(10, 'Sunrisers Hyderabad', 'https:\\/\\/bcciplayerimages.s3.ap-south-1.amazonaws.com\\/ipl\\/SRH\\/Logos\\/Medium\\/SRH.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
CREATE TABLE IF NOT EXISTS `players` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `player_name` varchar(50) NOT NULL,
  `player_DOB` varchar(20) NOT NULL,
  `strike_rate` varchar(50) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `average` varchar(100) NOT NULL,
  `100` int(100) NOT NULL,
  `50` int(200) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `country_id` int(100) NOT NULL,
  `total_run` int(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `player_name`, `player_DOB`, `strike_rate`, `status`, `average`, `100`, `50`, `pic`, `country_id`, `total_run`) VALUES
(1, 'Virat Kohli', '29', '128', 'Active', '30', 2, 5, '', 1, 2300),
(2, 'Rohit Sharma', '31', '130.5', 'Active', '39', 5, 10, '', 1, 1956);

-- --------------------------------------------------------

--
-- Table structure for table `team_player_mapping`
--

DROP TABLE IF EXISTS `team_player_mapping`;
CREATE TABLE IF NOT EXISTS `team_player_mapping` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `team_id` int(30) NOT NULL,
  `player_id_1` int(50) NOT NULL,
  `player_id_2` int(50) NOT NULL,
  `player_id_3` int(50) NOT NULL,
  `player_id_4` int(50) NOT NULL,
  `player_id_5` int(50) NOT NULL,
  `player_id_6` int(50) NOT NULL,
  `player_id_7` int(50) NOT NULL,
  `player_id_8` int(50) NOT NULL,
  `player_id_9` int(50) NOT NULL,
  `player_id_10` int(50) NOT NULL,
  `player_id_11` int(50) NOT NULL,
  `player_id_12` int(50) NOT NULL,
  `player_id_13` int(50) NOT NULL,
  `player_id_14` int(50) NOT NULL,
  `player_id_15` int(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_id_2` (`team_id`,`player_id_1`,`player_id_2`,`player_id_3`,`player_id_4`,`player_id_5`,`player_id_6`,`player_id_7`,`player_id_8`,`player_id_9`,`player_id_10`,`player_id_11`,`player_id_12`,`player_id_13`,`player_id_14`,`player_id_15`),
  KEY `team_id` (`team_id`,`player_id_1`,`player_id_2`,`player_id_3`,`player_id_4`,`player_id_5`,`player_id_6`,`player_id_7`,`player_id_8`,`player_id_9`,`player_id_10`,`player_id_11`,`player_id_12`,`player_id_13`,`player_id_14`,`player_id_15`),
  KEY `player_id_1` (`player_id_1`),
  KEY `player_id_2` (`player_id_2`),
  KEY `player_id_3` (`player_id_3`),
  KEY `player_id_4` (`player_id_4`),
  KEY `player_id_5` (`player_id_5`),
  KEY `player_id_6` (`player_id_6`),
  KEY `player_id_7` (`player_id_7`),
  KEY `player_id_8` (`player_id_8`),
  KEY `player_id_9` (`player_id_9`),
  KEY `player_id_10` (`player_id_10`),
  KEY `player_id_11` (`player_id_11`),
  KEY `player_id_12` (`player_id_12`),
  KEY `player_id_13` (`player_id_13`),
  KEY `player_id_14` (`player_id_14`),
  KEY `player_id_15` (`player_id_15`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_player_mapping`
--

INSERT INTO `team_player_mapping` (`id`, `team_id`, `player_id_1`, `player_id_2`, `player_id_3`, `player_id_4`, `player_id_5`, `player_id_6`, `player_id_7`, `player_id_8`, `player_id_9`, `player_id_10`, `player_id_11`, `player_id_12`, `player_id_13`, `player_id_14`, `player_id_15`) VALUES
(1, 6, 2, 1, 2, 2, 1, 1, 2, 2, 1, 1, 1, 1, 1, 2, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cricket_stadium`
--
ALTER TABLE `cricket_stadium`
  ADD CONSTRAINT `cricket_stadium_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Constraints for table `icc_team`
--
ALTER TABLE `icc_team`
  ADD CONSTRAINT `icc_team_ibfk_1` FOREIGN KEY (`player_id_1`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `icc_team_ibfk_10` FOREIGN KEY (`player_id_10`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `icc_team_ibfk_11` FOREIGN KEY (`player_id_15`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `icc_team_ibfk_12` FOREIGN KEY (`player_id_14`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `icc_team_ibfk_13` FOREIGN KEY (`player_id_13`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `icc_team_ibfk_14` FOREIGN KEY (`player_id_12`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `icc_team_ibfk_15` FOREIGN KEY (`player_id_11`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `icc_team_ibfk_2` FOREIGN KEY (`player_id_2`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `icc_team_ibfk_3` FOREIGN KEY (`player_id_3`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `icc_team_ibfk_4` FOREIGN KEY (`player_id_6`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `icc_team_ibfk_5` FOREIGN KEY (`player_id_4`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `icc_team_ibfk_6` FOREIGN KEY (`player_id_5`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `icc_team_ibfk_7` FOREIGN KEY (`player_id_7`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `icc_team_ibfk_8` FOREIGN KEY (`player_id_8`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `icc_team_ibfk_9` FOREIGN KEY (`player_id_9`) REFERENCES `players` (`id`);

--
-- Constraints for table `ipl_match`
--
ALTER TABLE `ipl_match`
  ADD CONSTRAINT `ipl_match_ibfk_1` FOREIGN KEY (`team_a`) REFERENCES `ipl_team` (`id`),
  ADD CONSTRAINT `ipl_match_ibfk_2` FOREIGN KEY (`team_b`) REFERENCES `ipl_team` (`id`),
  ADD CONSTRAINT `ipl_match_ibfk_3` FOREIGN KEY (`match_venue`) REFERENCES `cricket_stadium` (`id`);

--
-- Constraints for table `ipl_points_table`
--
ALTER TABLE `ipl_points_table`
  ADD CONSTRAINT `ipl_points_table_ibfk_1` FOREIGN KEY (`team_name`) REFERENCES `ipl_team` (`id`);

--
-- Constraints for table `team_player_mapping`
--
ALTER TABLE `team_player_mapping`
  ADD CONSTRAINT `team_player_mapping_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `ipl_team` (`id`),
  ADD CONSTRAINT `team_player_mapping_ibfk_10` FOREIGN KEY (`player_id_9`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `team_player_mapping_ibfk_11` FOREIGN KEY (`player_id_10`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `team_player_mapping_ibfk_12` FOREIGN KEY (`player_id_11`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `team_player_mapping_ibfk_13` FOREIGN KEY (`player_id_12`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `team_player_mapping_ibfk_14` FOREIGN KEY (`player_id_13`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `team_player_mapping_ibfk_15` FOREIGN KEY (`player_id_14`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `team_player_mapping_ibfk_16` FOREIGN KEY (`player_id_15`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `team_player_mapping_ibfk_2` FOREIGN KEY (`player_id_1`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `team_player_mapping_ibfk_3` FOREIGN KEY (`player_id_2`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `team_player_mapping_ibfk_4` FOREIGN KEY (`player_id_3`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `team_player_mapping_ibfk_5` FOREIGN KEY (`player_id_4`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `team_player_mapping_ibfk_6` FOREIGN KEY (`player_id_5`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `team_player_mapping_ibfk_7` FOREIGN KEY (`player_id_6`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `team_player_mapping_ibfk_8` FOREIGN KEY (`player_id_7`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `team_player_mapping_ibfk_9` FOREIGN KEY (`player_id_8`) REFERENCES `players` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
