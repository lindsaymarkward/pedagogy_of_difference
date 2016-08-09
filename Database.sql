-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2016 at 03:16 AM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pedigree_of_difference`
--
CREATE DATABASE IF NOT EXISTS `pedigree_of_difference` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pedigree_of_difference`;

-- --------------------------------------------------------

--
-- Table structure for table `historic_survey_data`
--

DROP TABLE IF EXISTS `historic_survey_data`;
CREATE TABLE IF NOT EXISTS `historic_survey_data` (
  `historic_survey_data_id` int(11) NOT NULL AUTO_INCREMENT,
  `A1` int(11) NOT NULL,
  `A2` int(11) NOT NULL,
  `A3` int(11) NOT NULL,
  `A4` int(11) NOT NULL,
  `A5` int(11) NOT NULL,
  `A6` int(11) NOT NULL,
  `B1` int(11) NOT NULL,
  `B2` int(11) NOT NULL,
  `B3` int(11) NOT NULL,
  `B4` int(11) NOT NULL,
  `B5` int(11) NOT NULL,
  `B6` int(11) NOT NULL,
  `C1` int(11) NOT NULL,
  `C2` int(11) NOT NULL,
  `C3` int(11) NOT NULL,
  `C4` int(11) NOT NULL,
  `C5` int(11) NOT NULL,
  `C6` int(11) NOT NULL,
  `C7` int(11) NOT NULL,
  `C8` int(11) NOT NULL,
  `C9` int(11) NOT NULL,
  `C10` int(11) NOT NULL,
  `C11` int(11) NOT NULL,
  `D1` int(11) NOT NULL,
  `D2` int(11) NOT NULL,
  `D3` int(11) NOT NULL,
  `D4` int(11) NOT NULL,
  `D5` int(11) NOT NULL,
  `D6` int(11) NOT NULL,
  `D7` int(11) NOT NULL,
  `D8` int(11) NOT NULL,
  `D9` int(11) NOT NULL,
  `E1` int(11) NOT NULL,
  `E2` int(11) NOT NULL,
  `E3` int(11) NOT NULL,
  `E4` int(11) NOT NULL,
  `E5` int(11) NOT NULL,
  `E6` int(11) NOT NULL,
  `E7` int(11) NOT NULL,
  `F1` int(11) NOT NULL,
  `F2` int(11) NOT NULL,
  `F3` int(11) NOT NULL,
  `F4` int(11) NOT NULL,
  `F5` int(11) NOT NULL,
  `F6` int(11) NOT NULL,
  `F7` int(11) NOT NULL,
  `G1` int(11) NOT NULL,
  `G2` int(11) NOT NULL,
  `G3` int(11) NOT NULL,
  `G4` int(11) NOT NULL,
  `G5` int(11) NOT NULL,
  `G6` int(11) NOT NULL,
  `G7` int(11) NOT NULL,
  `G8` int(11) NOT NULL,
  `G9` int(11) NOT NULL,
  `G10` int(11) NOT NULL,
  `G11` int(11) NOT NULL,
  `G12` int(11) NOT NULL,
  `G13` int(11) NOT NULL,
  `G14` int(11) NOT NULL,
  `G15` int(11) NOT NULL,
  `historic_survey_data_AVG_A` double NOT NULL,
  `historic_survey_data_AVG_B` double NOT NULL,
  `historic_survey_data_AVG_C` double NOT NULL,
  `historic_survey_data_AVG_D` double NOT NULL,
  `historic_survey_data_AVG_E` double NOT NULL,
  `historic_survey_data_AVG_F` double NOT NULL,
  `historic_survey_data_AVG_G` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `time_finished` text NOT NULL,
  PRIMARY KEY (`historic_survey_data_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `historic_survey_data`
--

INSERT INTO `historic_survey_data` (`historic_survey_data_id`, `A1`, `A2`, `A3`, `A4`, `A5`, `A6`, `B1`, `B2`, `B3`, `B4`, `B5`, `B6`, `C1`, `C2`, `C3`, `C4`, `C5`, `C6`, `C7`, `C8`, `C9`, `C10`, `C11`, `D1`, `D2`, `D3`, `D4`, `D5`, `D6`, `D7`, `D8`, `D9`, `E1`, `E2`, `E3`, `E4`, `E5`, `E6`, `E7`, `F1`, `F2`, `F3`, `F4`, `F5`, `F6`, `F7`, `G1`, `G2`, `G3`, `G4`, `G5`, `G6`, `G7`, `G8`, `G9`, `G10`, `G11`, `G12`, `G13`, `G14`, `G15`, `historic_survey_data_AVG_A`, `historic_survey_data_AVG_B`, `historic_survey_data_AVG_C`, `historic_survey_data_AVG_D`, `historic_survey_data_AVG_E`, `historic_survey_data_AVG_F`, `historic_survey_data_AVG_G`, `user_id`, `school_id`, `time_finished`) VALUES
(6, 2, 3, 2, 2, 4, 2, 4, 2, 4, 3, 2, 3, 2, 3, 3, 2, 5, 3, 4, 2, 3, 2, 4, 2, 2, 2, 2, 4, 3, 3, 3, 3, 3, 3, 4, 2, 3, 4, 3, 3, 2, 3, 2, 3, 4, 2, 3, 4, 4, 4, 4, 4, 2, 4, 3, 3, 3, 2, 2, 4, 2, 2.5, 3, 3, 2.6666666666667, 3.1428571428571, 2.7142857142857, 3.2, 2, 1, '2016-05-10 08:12:03'),
(7, 2, 3, 2, 2, 4, 2, 4, 2, 4, 3, 2, 3, 2, 3, 3, 2, 5, 3, 4, 2, 3, 2, 4, 2, 2, 2, 2, 4, 3, 3, 3, 3, 3, 3, 4, 2, 3, 4, 3, 3, 2, 3, 2, 3, 4, 2, 3, 4, 4, 4, 4, 4, 2, 4, 3, 3, 3, 2, 2, 4, 2, 2.5, 3, 3, 2.6666666666667, 3.1428571428571, 2.7142857142857, 3.2, 2, 1, '2016-05-10 08:12:03'),
(8, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5, 0, '2016-05-11 06:54:16'),
(9, 2, 4, 4, 3, 5, 4, 2, 2, 2, 3, 3, 1, 2, 5, 3, 4, 4, 4, 3, 2, 5, 3, 3, 2, 4, 1, 2, 3, 2, 4, 2, 2, 3, 3, 2, 3, 5, 3, 3, 4, 2, 4, 4, 4, 4, 4, 3, 3, 3, 2, 2, 5, 2, 2, 1, 4, 2, 2, 3, 3, 2, 3.6666666666667, 2.1666666666667, 3.4545454545455, 2.4444444444444, 3.1428571428571, 3.7142857142857, 2.6, 2, 1, '2016-05-11 08:21:49'),
(10, 4, 4, 3, 1, 5, 2, 2, 3, 1, 1, 1, 2, 2, 2, 1, 3, 2, 5, 4, 5, 3, 3, 3, 2, 4, 1, 4, 2, 2, 2, 5, 1, 4, 1, 1, 4, 4, 1, 2, 1, 3, 1, 2, 3, 2, 3, 5, 2, 2, 1, 1, 3, 5, 3, 2, 4, 5, 3, 5, 2, 5, 3.1666666666667, 1.6666666666667, 3, 2.5555555555556, 2.4285714285714, 2.1428571428571, 3.2, 11, 0, '2016-05-12 15:06:44'),
(11, 5, 3, 2, 2, 2, 2, 3, 3, 4, 3, 3, 4, 4, 2, 4, 3, 3, 4, 2, 3, 4, 3, 3, 3, 4, 2, 4, 3, 3, 4, 2, 3, 4, 4, 2, 4, 2, 3, 3, 3, 4, 2, 3, 2, 3, 2, 5, 3, 3, 4, 3, 4, 3, 1, 3, 1, 3, 4, 3, 2, 4, 2.6666666666667, 3.3333333333333, 3.1818181818182, 3.1111111111111, 3.1428571428571, 2.7142857142857, 3.0666666666667, 7, 0, '2016-05-12 15:11:39'),
(12, 5, 5, 2, 1, 2, 2, 2, 3, 4, 4, 4, 4, 2, 2, 3, 3, 1, 4, 5, 3, 1, 5, 1, 2, 5, 5, 3, 1, 3, 2, 1, 3, 1, 4, 3, 2, 2, 2, 3, 1, 1, 3, 2, 4, 4, 5, 1, 2, 1, 1, 4, 1, 4, 2, 4, 4, 4, 4, 1, 2, 2, 2.8333333333333, 3.5, 2.7272727272727, 2.7777777777778, 2.4285714285714, 2.8571428571429, 2.4666666666667, 12, 0, '2016-05-13 07:42:26'),
(13, 3, 2, 1, 2, 3, 3, 3, 5, 3, 4, 5, 4, 5, 2, 4, 4, 2, 3, 5, 5, 2, 4, 2, 3, 3, 5, 4, 2, 4, 4, 2, 5, 3, 3, 2, 5, 5, 2, 4, 4, 2, 4, 5, 4, 4, 3, 4, 2, 5, 4, 5, 4, 5, 2, 2, 1, 5, 1, 2, 2, 4, 2.3333333333333, 4, 3.4545454545455, 3.5555555555556, 3.4285714285714, 3.7142857142857, 3.2, 7, 0, '2016-05-16 13:22:20'),
(14, 3, 1, 2, 1, 1, 2, 5, 4, 5, 5, 5, 5, 5, 4, 5, 4, 5, 4, 5, 3, 3, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 1, 4, 4, 2, 4, 4, 3, 4, 4, 4, 4, 4, 3, 4, 5, 3, 5, 4, 4, 4, 4, 5, 5, 5, 5, 4, 3, 5, 5, 1.6666666666667, 4.8333333333333, 4.1818181818182, 4.1111111111111, 3.1428571428571, 3.8571428571429, 4.4, 19, 0, '2016-06-29 23:03:11'),
(15, 1, 2, 3, 1, 2, 1, 3, 3, 4, 5, 3, 4, 3, 3, 3, 2, 3, 1, 4, 3, 3, 4, 3, 4, 5, 3, 3, 4, 3, 4, 3, 4, 1, 3, 3, 2, 3, 4, 4, 4, 4, 2, 3, 3, 4, 3, 4, 3, 3, 3, 3, 4, 3, 3, 2, 3, 3, 3, 3, 3, 4, 1.6666666666667, 3.6666666666667, 2.9090909090909, 3.6666666666667, 2.8571428571429, 3.2857142857143, 3.1333333333333, 17, 0, '2016-06-29 23:04:05'),
(16, 4, 2, 2, 2, 1, 2, 2, 4, 4, 5, 4, 5, 5, 4, 4, 1, 5, 4, 4, 4, 4, 5, 5, 4, 5, 5, 3, 2, 4, 5, 4, 4, 1, 4, 5, 3, 4, 5, 3, 5, 4, 3, 4, 4, 4, 3, 4, 4, 4, 5, 3, 4, 3, 4, 5, 5, 4, 3, 1, 4, 5, 2.1666666666667, 4, 4.0909090909091, 4, 3.5714285714286, 3.8571428571429, 3.8666666666667, 24, 0, '2016-06-29 23:06:59'),
(17, 2, 3, 4, 5, 4, 1, 5, 5, 4, 5, 4, 4, 4, 4, 4, 2, 4, 3, 3, 3, 2, 5, 4, 4, 5, 4, 4, 4, 4, 5, 4, 4, 1, 4, 5, 4, 4, 3, 3, 4, 4, 5, 4, 3, 4, 3, 4, 4, 4, 4, 4, 4, 4, 5, 4, 4, 4, 4, 2, 4, 5, 3.1666666666667, 4.5, 3.4545454545455, 4.2222222222222, 3.4285714285714, 3.8571428571429, 4, 23, 0, '2016-06-29 23:09:16'),
(18, 3, 1, 4, 1, 2, 2, 3, 4, 2, 1, 3, 4, 4, 4, 4, 3, 4, 4, 3, 3, 2, 4, 4, 3, 4, 4, 3, 5, 5, 4, 4, 5, 1, 4, 3, 3, 3, 3, 4, 4, 5, 4, 3, 2, 1, 1, 3, 3, 4, 3, 4, 3, 3, 4, 4, 5, 4, 3, 2, 3, 4, 2.1666666666667, 2.8333333333333, 3.5454545454545, 4.1111111111111, 3, 2.8571428571429, 3.4666666666667, 27, 0, '2016-06-29 23:09:54'),
(19, 3, 3, 4, 4, 3, 3, 4, 4, 5, 4, 4, 4, 4, 4, 5, 4, 4, 4, 4, 3, 3, 5, 4, 4, 4, 4, 4, 4, 5, 5, 3, 4, 3, 5, 4, 3, 4, 2, 4, 4, 4, 5, 4, 4, 4, 4, 3, 4, 4, 5, 4, 4, 3, 3, 4, 3, 4, 4, 3, 3, 4, 3.3333333333333, 4.1666666666667, 4, 4.1111111111111, 3.5714285714286, 4.1428571428571, 3.6666666666667, 16, 0, '2016-06-29 23:10:24'),
(20, 3, 3, 4, 1, 3, 2, 3, 4, 4, 5, 4, 4, 4, 2, 5, 3, 4, 3, 5, 3, 2, 5, 4, 4, 5, 5, 5, 5, 4, 4, 4, 5, 4, 5, 4, 5, 4, 5, 5, 4, 4, 3, 3, 5, 5, 4, 4, 3, 5, 3, 5, 5, 5, 4, 5, 5, 5, 4, 3, 5, 5, 2.6666666666667, 4, 3.6363636363636, 4.5555555555556, 4.5714285714286, 4, 4.4, 22, 0, '2016-06-29 23:16:06'),
(21, 4, 3, 3, 4, 3, 3, 1, 5, 5, 5, 5, 5, 4, 3, 4, 3, 4, 3, 4, 3, 4, 5, 4, 5, 5, 5, 5, 5, 4, 5, 4, 4, 1, 5, 3, 1, 3, 3, 4, 5, 5, 3, 5, 5, 5, 5, 4, 5, 5, 4, 5, 4, 3, 5, 5, 5, 4, 3, 3, 4, 5, 3.3333333333333, 4.3333333333333, 3.7272727272727, 4.6666666666667, 2.8571428571429, 4.7142857142857, 4.2666666666667, 32, 0, '2016-06-29 23:17:38'),
(22, 1, 1, 3, 1, 1, 1, 3, 3, 4, 4, 4, 3, 3, 3, 4, 4, 4, 3, 4, 3, 2, 4, 3, 4, 4, 3, 4, 4, 4, 5, 4, 4, 2, 4, 3, 1, 3, 2, 4, 4, 4, 2, 3, 4, 3, 3, 3, 3, 3, 4, 4, 2, 3, 3, 4, 5, 3, 4, 2, 3, 3, 1.3333333333333, 3.5, 3.3636363636364, 4, 2.7142857142857, 3.2857142857143, 3.2666666666667, 13, 0, '2016-06-29 23:21:59'),
(23, 4, 3, 4, 1, 3, 2, 3, 3, 4, 5, 4, 4, 3, 3, 3, 2, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 4, 2, 4, 4, 3, 4, 4, 3, 4, 3, 3, 3, 3, 4, 4, 3, 3, 3, 4, 3, 3, 3, 3, 2, 3, 3, 3, 3, 3, 4, 2.8333333333333, 3.8333333333333, 3.2727272727273, 4.1111111111111, 3.4285714285714, 3.4285714285714, 3.0666666666667, 25, 0, '2016-06-29 23:23:07'),
(24, 1, 2, 3, 1, 2, 1, 4, 5, 4, 5, 4, 3, 4, 4, 4, 4, 5, 3, 3, 2, 3, 4, 3, 3, 5, 4, 3, 5, 4, 4, 3, 4, 2, 3, 3, 2, 4, 4, 3, 4, 4, 3, 3, 3, 4, 4, 4, 3, 4, 3, 5, 3, 3, 5, 5, 4, 4, 4, 3, 3, 2, 1.6666666666667, 4.1666666666667, 3.5454545454545, 3.8888888888889, 3, 3.5714285714286, 3.6666666666667, 30, 0, '2016-06-29 23:23:48'),
(25, 4, 2, 2, 1, 2, 1, 2, 4, 5, 5, 5, 5, 4, 3, 4, 3, 5, 3, 3, 3, 2, 4, 4, 4, 4, 4, 4, 4, 3, 5, 5, 4, 2, 3, 2, 3, 2, 3, 4, 3, 4, 4, 4, 4, 4, 4, 4, 3, 4, 2, 5, 4, 3, 4, 2, 4, 4, 3, 3, 3, 4, 2, 4.3333333333333, 3.4545454545455, 4.1111111111111, 2.7142857142857, 3.8571428571429, 3.4666666666667, 34, 0, '2016-06-30 01:18:53'),
(26, 3, 3, 3, 3, 3, 3, 4, 4, 4, 5, 3, 4, 4, 3, 5, 3, 4, 4, 3, 3, 2, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 5, 4, 4, 4, 4, 4, 4, 3, 3, 3, 5, 4, 5, 4, 4, 4, 4, 4, 4, 3, 4, 4, 3, 4, 4, 2, 4, 4, 3, 4, 3.5454545454545, 3.7777777777778, 4, 3.8571428571429, 3.7333333333333, 38, 0, '2016-06-30 01:28:22'),
(27, 3, 3, 3, 2, 3, 3, 4, 4, 4, 5, 4, 4, 3, 3, 3, 3, 3, 5, 3, 4, 3, 5, 3, 4, 5, 3, 4, 3, 5, 4, 4, 4, 3, 4, 4, 3, 3, 3, 3, 4, 4, 4, 4, 5, 4, 4, 4, 3, 4, 2, 3, 3, 4, 4, 3, 4, 4, 4, 3, 4, 3, 2.8333333333333, 4.1666666666667, 3.4545454545455, 4, 3.2857142857143, 4.1428571428571, 3.4666666666667, 37, 0, '2016-06-30 01:37:50'),
(28, 2, 3, 5, 2, 3, 3, 3, 4, 5, 5, 4, 5, 4, 4, 4, 3, 4, 4, 4, 2, 2, 4, 4, 4, 3, 4, 4, 4, 3, 5, 5, 5, 2, 4, 4, 3, 4, 4, 5, 4, 2, 2, 5, 4, 4, 4, 5, 5, 4, 4, 4, 3, 3, 4, 3, 4, 3, 4, 4, 4, 5, 3, 4.3333333333333, 3.5454545454545, 4.1111111111111, 3.7142857142857, 3.5714285714286, 3.9333333333333, 36, 0, '2016-07-07 04:01:00'),
(29, 1, 1, 3, 1, 2, 1, 1, 4, 5, 5, 4, 5, 4, 3, 4, 2, 3, 3, 3, 4, 2, 5, 3, 3, 5, 2, 5, 3, 4, 4, 2, 5, 3, 5, 3, 1, 1, 2, 4, 5, 4, 3, 3, 4, 5, 5, 3, 4, 3, 3, 3, 3, 3, 3, 4, 2, 2, 3, 2, 4, 4, 1.5, 4, 3.2727272727273, 3.6666666666667, 2.7142857142857, 4.1428571428571, 3.0666666666667, 18, 0, '2016-07-10 03:17:48'),
(30, 3, 4, 4, 3, 4, 3, 4, 3, 5, 5, 5, 5, 5, 4, 4, 4, 5, 4, 5, 5, 3, 5, 5, 3, 5, 5, 4, 5, 5, 5, 4, 5, 3, 4, 4, 3, 4, 1, 4, 4, 4, 4, 5, 4, 5, 4, 4, 4, 5, 4, 4, 4, 4, 3, 5, 4, 3, 4, 3, 4, 5, 3.5, 4.5, 4.4545454545455, 4.5555555555556, 3.2857142857143, 4.2857142857143, 4, 39, 0, '2016-07-11 07:18:56'),
(31, 2, 2, 2, 1, 2, 2, 4, 4, 3, 5, 4, 5, 4, 4, 4, 3, 4, 4, 4, 2, 4, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 4, 4, 3, 4, 4, 3, 4, 5, 5, 5, 4, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 2, 3, 4, 1.8333333333333, 4.1666666666667, 3.7272727272727, 4.1111111111111, 3.7142857142857, 4.2857142857143, 3.7333333333333, 26, 0, '2016-07-13 06:04:00'),
(32, 4, 3, 4, 3, 4, 3, 4, 5, 5, 4, 4, 5, 4, 4, 5, 4, 5, 3, 4, 3, 4, 4, 4, 4, 4, 3, 5, 4, 4, 5, 4, 5, 5, 5, 5, 4, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 5, 4, 5, 4, 5, 5, 4, 4, 5, 4, 5, 4, 4, 3.5, 4.5, 4, 4.2222222222222, 4.7142857142857, 5, 4.4, 41, 0, '2016-07-14 13:18:21'),
(33, 3, 2, 3, 1, 2, 2, 3, 4, 3, 3, 4, 3, 4, 4, 4, 3, 4, 3, 4, 4, 3, 4, 4, 4, 4, 3, 4, 4, 4, 5, 5, 4, 4, 4, 3, 4, 3, 3, 4, 4, 2, 3, 4, 4, 5, 5, 3, 3, 4, 4, 4, 3, 4, 4, 4, 3, 3, 4, 3, 3, 3, 2.1666666666667, 3.3333333333333, 3.7272727272727, 4.1111111111111, 3.5714285714286, 3.8571428571429, 3.4666666666667, 43, 0, '2016-08-01 04:39:01');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

DROP TABLE IF EXISTS `schools`;
CREATE TABLE IF NOT EXISTS `schools` (
  `school_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_name` text NOT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`school_id`, `school_name`) VALUES
(1, 'test_school');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(25) NOT NULL,
  `user_email` varchar(35) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_pass`, `school_id`) VALUES
(1, 'test', 'test@testmail.com', '202cb962ac59075b964b07152d234b70', 0),
(2, 'Dean Edwards', 'edwardsdean@hotmail.com', '88dc3adf6d41b818d503ee3ea12963ac', 1),
(3, 'Bobby', 'bobby@mail.com', 'dc647eb65e6711e155375218212b3964', 0),
(4, 'Dean Edwards', 'edwardsdean2@hotmail.com', '88dc3adf6d41b818d503ee3ea12963ac', 0),
(5, '1234', 'jmiln@live.com', '70dc6647b52e2e89471c824ee3cdeaaa', 0),
(6, 'dean', 'test@edwardsdean.net', '88dc3adf6d41b818d503ee3ea12963ac', 0),
(7, 'Tayla', 'taylablack@outlook.com', '301b3e72d166c8c2a2c82f4ec340d752', 0),
(8, 'Dean', 'edwardsdean3@hotmail.com', '88dc3adf6d41b818d503ee3ea12963ac', 0),
(9, 'mit', 'c2063707@trbvn.com', 'bc2e8b2ac93b02432d1816f80e26e7e8', 0),
(10, 'mit1', 'ccm70197@laoeq.com', 'adf877b86e74b48f03b4ba57054eb409', 0),
(11, 'tcn86752@laoeq.com', 'tcn86752@laoeq.com', '596f296077447d610b4837920c7a6915', 0),
(12, 'Brian Lewthwaite', 'brian.lewthwaite@jcu.edu.au', 'b4de82643fc25c06796481722cc174a9', 0),
(13, 'nick', 'nicholasjstewart88@gmail.com', '2ac9cb7dc02b3c0083eb70898e549b63', 0),
(14, 'Jas', 'jason.mckane@my.jcu.edu.au', 'b9d7bad1ea2a8f258f84f9eb784635cb', 0),
(15, 'Dominique', 'dominiquesaraobrien@jcu.edu.au', '7be1bb5ade9559a40463b7184f0e1aa5', 0),
(16, 'Dominique', 'dominiquesaraobrien@gmail.com', '7be1bb5ade9559a40463b7184f0e1aa5', 0),
(17, 'Arlene Jurello', 'arlene.jurello@my.jcu.edu.au', '3685ddf7c15a148afb2b4c391369970c', 0),
(18, 'Kaitlyn', 'kaitlyn.hotz@my.jcu.edu.au', 'f731bc938f52619153920d2bd57bb4a1', 0),
(19, 'Lukas Sabo', 'lukassabo1989@gmail.com', 'f3f8cda453c9401a9b1d510091373b50', 0),
(20, 'Gerry Escalada', 'gerry.escalada@my.jcu.edu.a', '51a1c13e650783ad94739deaa2a23bac', 0),
(21, '', '', 'd41d8cd98f00b204e9800998ecf8427e', 0),
(22, 'Braden Askin', 'bg_askin92@hotmail.com', '40ed76a55bfc870736b68e5442feebaf', 0),
(23, 'Jordan Russo', 'jordan.russo@my.jcu.edu.au', '33293a38fa641e1829f00f3628aac5db', 0),
(24, 'Jake Magnusson', 'magnojake@hotmail.com', '4d4f594dd2a939208c0e794c7eeb441c', 0),
(25, 'Georgina Bathgate', 'georgina.bathgate@my.jcu.edu.au', 'cfa590c5b4c51852821cc9a7669cfcd1', 0),
(26, 'Krystal Bessell', 'krystal.bessell@my.jcu.edu.au', '26667ad8579a63d2acaee37e573d5a5b', 0),
(27, 'Ainslie', 'ainslie.langdon@my.jcu.edu.au', '740440496807fa3a30cb9c3a754910d2', 0),
(28, 'Gerry Escalada', 'gerry.escalada@my.jcu.edu.au', 'cfa590c5b4c51852821cc9a7669cfcd1', 0),
(29, 'Corey', 'corey.niehsner@my.jcu.edu.au', 'd33d1a8f31a57273e179fc6387d6e6b8', 0),
(30, 'Daniel White', 'daniel.white1@my.jcu.edu.au', 'f9172f821ff418d1d9db9a7c6086b37d', 0),
(31, 'Robbie Buckley', 'robbie.buckley@my.jcu.edu.au', '7378f75fc04db687f4b144e770c53b95', 0),
(32, 'Tatjana Good', 'tatjana.good@gmail.com', '3ad5673a8c54d2ecb718d8f6e1e25752', 0),
(33, 'Madeleine', 'madeleine.durso@my.jcu.edu.au', '0a989e515adb41ce8289be718468e615', 0),
(34, 'Chris Stephens', 'chris.stephens@my.jcu.edu.au', 'a4d442a9cb3ff64f1842796348b1fdde', 0),
(35, 'Narelle', 'narelle.hewitt@my.jcu.edu.au', '2eac0fab613cba7fbb8bc3b397692f65', 0),
(36, 'Robert Baxter', 'robert.baxter@my.jcu.edu.au', 'cb71718b805612d43d5a13cdab96dc71', 0),
(37, 'Anita Smith', 'anita.m.smith@bigpond.com', '6d9e6fdeeb8fd0eb2910127c239c6452', 0),
(38, 'Christina Morianos', 'christina.morianos@my.jcu.edu.au', 'd72852284fb878aa60089e2f6de581df', 0),
(39, 'Ben Vincent', 'benjamin-vincent@live.com.au', '67e1578e380003021a82e9f0b265eea3', 0),
(40, 'Michelle', 'michelle.young@my.jcu.edu.au', 'bf779e0933a882808585d19455cd7937', 0),
(41, 'Claire Evans', 'claire.evans@my.jcu.edu.au', 'cc91ea3fc7428ed84c92389ff98eb3ad', 0),
(42, 'Nadine', 'nadine.hunt1@my.jcu.edu.au', 'a7acb40801f2823a107fc2959ac6d6fb', 0),
(43, 'Samantha Kummerfeld', 'samanthakaren_93@outlook.com', '9a9f9024cd5668ced7596030ca0d3931', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
