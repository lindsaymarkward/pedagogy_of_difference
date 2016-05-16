-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2016 at 03:29 AM
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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

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
(12, 5, 5, 2, 1, 2, 2, 2, 3, 4, 4, 4, 4, 2, 2, 3, 3, 1, 4, 5, 3, 1, 5, 1, 2, 5, 5, 3, 1, 3, 2, 1, 3, 1, 4, 3, 2, 2, 2, 3, 1, 1, 3, 2, 4, 4, 5, 1, 2, 1, 1, 4, 1, 4, 2, 4, 4, 4, 4, 1, 2, 2, 2.8333333333333, 3.5, 2.7272727272727, 2.7777777777778, 2.4285714285714, 2.8571428571429, 2.4666666666667, 12, 0, '2016-05-13 07:42:26');

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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

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
(12, 'Brian Lewthwaite', 'brian.lewthwaite@jcu.edu.au', 'b4de82643fc25c06796481722cc174a9', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
