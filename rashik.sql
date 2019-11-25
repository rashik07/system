-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2019 at 09:26 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rashik`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`) VALUES
(1, 'B.Pharm'),
(2, 'Bio'),
(3, 'CSE'),
(4, 'PHY'),
(5, 'Math'),
(6, 'EEE'),
(7, 'BBA'),
(8, 'ECO'),
(9, 'Environmental Management'),
(10, 'Environmental Science'),
(11, 'Population Environment'),
(12, 'English');

-- --------------------------------------------------------

--
-- Table structure for table `dept_major`
--

CREATE TABLE `dept_major` (
  `dept_id` int(11) NOT NULL,
  `major_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept_major`
--

INSERT INTO `dept_major` (`dept_id`, `major_id`) VALUES
(1, 31),
(2, 32),
(2, 33),
(2, 34),
(3, 35),
(3, 36),
(3, 38),
(4, 37),
(5, 39),
(7, 42),
(7, 43),
(7, 44),
(7, 45),
(7, 46),
(7, 47),
(7, 48),
(7, 49),
(8, 50),
(9, 51),
(10, 52),
(11, 53),
(12, 54),
(12, 55),
(12, 56),
(12, 57),
(12, 58),
(12, 59),
(12, 60);

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `major_id` int(11) NOT NULL,
  `major_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`major_id`, `major_name`) VALUES
(31, 'Pharmacy '),
(32, 'Biochemistry'),
(33, 'Biochemistry and Biotechnology'),
(34, 'Microbiology'),
(35, 'Computer Engineering'),
(36, 'Computer Science'),
(37, 'Physics (Hons)'),
(38, 'Computer Science and Engineering'),
(39, 'Mathematics (Hons)'),
(40, 'Electrical and Electronic Engineering'),
(41, 'Electronic and Telecommunication Engineering'),
(42, 'Investment Management'),
(43, 'Accounting'),
(44, 'Finance'),
(45, 'General Management'),
(46, 'Human Resources Management'),
(47, 'International Business'),
(48, 'Management Information Systems'),
(49, 'Marketing'),
(50, 'Economics'),
(51, 'Environmental Management'),
(52, 'Environmental Science'),
(53, 'Population Environment'),
(54, 'English Language Teaching'),
(55, 'English Literature'),
(56, 'Anthropology'),
(57, 'Global Studies and Governance'),
(58, 'Media and Communication'),
(59, 'Sociology'),
(60, 'Laws (Hons)');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `school_name` varchar(100) NOT NULL,
  `school_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`school_name`, `school_id`) VALUES
('Business', 7),
('SECS', 8),
('SESM', 9),
('SLASS', 10),
('SPH', 11),
('SLS', 12),
('B.Pharm', 13);

-- --------------------------------------------------------

--
-- Table structure for table `school_dept`
--

CREATE TABLE `school_dept` (
  `school_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_dept`
--

INSERT INTO `school_dept` (`school_id`, `dept_id`) VALUES
(7, 7),
(7, 8),
(8, 3),
(8, 4),
(8, 5),
(8, 6),
(9, 9),
(9, 10),
(9, 11),
(10, 12),
(12, 2),
(13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `major_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `semester` varchar(11) NOT NULL,
  `student_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`major_id`, `year`, `semester`, `student_number`) VALUES
(31, 2014, 'autumn', 0),
(31, 2014, 'spring', 0),
(31, 2014, 'summer', 0),
(31, 2015, 'autumn', 0),
(31, 2015, 'spring', 0),
(31, 2015, 'summer', 0),
(31, 2016, 'autumn', 0),
(31, 2016, 'spring', 0),
(31, 2016, 'summer', 0),
(31, 2017, 'autumn', 0),
(31, 2017, 'spring', 0),
(31, 2017, 'summer', 0),
(31, 2018, 'autumn', 93),
(31, 2018, 'spring', 0),
(31, 2018, 'summer', 49),
(31, 2019, 'autumn', 112),
(31, 2019, 'spring', 231),
(31, 2019, 'summer', 168),
(32, 2014, 'autumn', 2),
(32, 2014, 'spring', 9),
(32, 2014, 'summer', 10),
(32, 2015, 'autumn', 8),
(32, 2015, 'spring', 15),
(32, 2015, 'summer', 7),
(32, 2016, 'autumn', 27),
(32, 2016, 'spring', 10),
(32, 2016, 'summer', 16),
(32, 2017, 'autumn', 13),
(32, 2017, 'spring', 43),
(32, 2017, 'summer', 13),
(32, 2018, 'autumn', 20),
(32, 2018, 'spring', 35),
(32, 2018, 'summer', 15),
(32, 2019, 'autumn', 1),
(32, 2019, 'spring', 22),
(32, 2019, 'summer', 11),
(34, 2014, 'autumn', 15),
(34, 2014, 'spring', 20),
(34, 2014, 'summer', 16),
(34, 2015, 'autumn', 12),
(34, 2015, 'spring', 50),
(34, 2015, 'summer', 12),
(34, 2016, 'autumn', 15),
(34, 2016, 'spring', 34),
(34, 2016, 'summer', 21),
(34, 2017, 'autumn', 25),
(34, 2017, 'spring', 60),
(34, 2017, 'summer', 26),
(34, 2018, 'autumn', 22),
(34, 2018, 'spring', 81),
(34, 2018, 'summer', 41),
(34, 2019, 'autumn', 18),
(34, 2019, 'spring', 49),
(34, 2019, 'summer', 30),
(35, 2014, 'autumn', 65),
(35, 2014, 'spring', 109),
(35, 2014, 'summer', 114),
(35, 2015, 'autumn', 7),
(35, 2015, 'spring', 200),
(35, 2015, 'summer', 9),
(35, 2016, 'autumn', 4),
(35, 2016, 'spring', 6),
(35, 2016, 'summer', 1),
(35, 2017, 'autumn', 9),
(35, 2017, 'spring', 10),
(35, 2017, 'summer', 1),
(35, 2018, 'autumn', 7),
(35, 2018, 'spring', 8),
(35, 2018, 'summer', 3),
(35, 2019, 'autumn', 10),
(35, 2019, 'spring', 5),
(35, 2019, 'summer', 10),
(36, 2014, 'autumn', 33),
(36, 2014, 'spring', 62),
(36, 2014, 'summer', 66),
(36, 2015, 'autumn', 12),
(36, 2015, 'spring', 130),
(36, 2015, 'summer', 11),
(36, 2016, 'autumn', 26),
(36, 2016, 'spring', 11),
(36, 2016, 'summer', 16),
(36, 2017, 'autumn', 20),
(36, 2017, 'spring', 26),
(36, 2017, 'summer', 24),
(36, 2018, 'autumn', 22),
(36, 2018, 'spring', 31),
(36, 2018, 'summer', 20),
(36, 2019, 'autumn', 31),
(36, 2019, 'spring', 18),
(36, 2019, 'summer', 13),
(37, 2014, 'autumn', 0),
(37, 2014, 'spring', 0),
(37, 2014, 'summer', 0),
(37, 2015, 'autumn', 0),
(37, 2015, 'spring', 0),
(37, 2015, 'summer', 0),
(37, 2016, 'autumn', 1),
(37, 2016, 'spring', 0),
(37, 2016, 'summer', 2),
(37, 2017, 'autumn', 7),
(37, 2017, 'spring', 7),
(37, 2017, 'summer', 5),
(37, 2018, 'autumn', 5),
(37, 2018, 'spring', 4),
(37, 2018, 'summer', 0),
(37, 2019, 'autumn', 7),
(37, 2019, 'spring', 8),
(37, 2019, 'summer', 3),
(38, 2014, 'autumn', 0),
(38, 2014, 'spring', 0),
(38, 2014, 'summer', 0),
(38, 2015, 'autumn', 146),
(38, 2015, 'spring', 0),
(38, 2015, 'summer', 187),
(38, 2016, 'autumn', 187),
(38, 2016, 'spring', 306),
(38, 2016, 'summer', 269),
(38, 2017, 'autumn', 241),
(38, 2017, 'spring', 451),
(38, 2017, 'summer', 352),
(38, 2018, 'autumn', 294),
(38, 2018, 'spring', 509),
(38, 2018, 'summer', 263),
(38, 2019, 'autumn', 311),
(38, 2019, 'spring', 450),
(38, 2019, 'summer', 307),
(39, 2014, 'autumn', 0),
(39, 2014, 'spring', 0),
(39, 2014, 'summer', 0),
(39, 2015, 'autumn', 0),
(39, 2015, 'spring', 0),
(39, 2015, 'summer', 0),
(39, 2016, 'autumn', 1),
(39, 2016, 'spring', 1),
(39, 2016, 'summer', 2),
(39, 2017, 'autumn', 1),
(39, 2017, 'spring', 2),
(39, 2017, 'summer', 0),
(39, 2018, 'autumn', 2),
(39, 2018, 'spring', 5),
(39, 2018, 'summer', 1),
(39, 2019, 'autumn', 1),
(39, 2019, 'spring', 5),
(39, 2019, 'summer', 2),
(40, 2014, 'autumn', 84),
(40, 2014, 'spring', 111),
(40, 2014, 'summer', 96),
(40, 2015, 'autumn', 56),
(40, 2015, 'spring', 168),
(40, 2015, 'summer', 64),
(40, 2016, 'autumn', 51),
(40, 2016, 'spring', 95),
(40, 2016, 'summer', 62),
(40, 2017, 'autumn', 58),
(40, 2017, 'spring', 101),
(40, 2017, 'summer', 70),
(40, 2018, 'autumn', 63),
(40, 2018, 'spring', 141),
(40, 2018, 'summer', 70),
(40, 2019, 'autumn', 65),
(40, 2019, 'spring', 122),
(40, 2019, 'summer', 92),
(41, 2014, 'autumn', 28),
(41, 2014, 'spring', 19),
(41, 2014, 'summer', 33),
(41, 2015, 'autumn', 16),
(41, 2015, 'spring', 59),
(41, 2015, 'summer', 15),
(41, 2016, 'autumn', 17),
(41, 2016, 'spring', 27),
(41, 2016, 'summer', 16),
(41, 2017, 'autumn', 12),
(41, 2017, 'spring', 34),
(41, 2017, 'summer', 19),
(41, 2018, 'autumn', 11),
(41, 2018, 'spring', 22),
(41, 2018, 'summer', 12),
(41, 2019, 'autumn', 7),
(41, 2019, 'spring', 10),
(41, 2019, 'summer', 12),
(42, 2014, 'autumn', 1),
(42, 2014, 'spring', 1),
(42, 2014, 'summer', 1),
(42, 2015, 'autumn', 2),
(42, 2015, 'spring', 4),
(42, 2015, 'summer', 0),
(42, 2016, 'autumn', 3),
(42, 2016, 'spring', 8),
(42, 2016, 'summer', 0),
(42, 2017, 'autumn', 1),
(42, 2017, 'spring', 3),
(42, 2017, 'summer', 1),
(42, 2018, 'autumn', 0),
(42, 2018, 'spring', 5),
(42, 2018, 'summer', 2),
(42, 2019, 'autumn', 4),
(42, 2019, 'spring', 4),
(42, 2019, 'summer', 0),
(43, 2014, 'autumn', 225),
(43, 2014, 'spring', 286),
(43, 2014, 'summer', 277),
(43, 2015, 'autumn', 154),
(43, 2015, 'spring', 316),
(43, 2015, 'summer', 187),
(43, 2016, 'autumn', 113),
(43, 2016, 'spring', 177),
(43, 2016, 'summer', 135),
(43, 2017, 'autumn', 121),
(43, 2017, 'spring', 196),
(43, 2017, 'summer', 98),
(43, 2018, 'autumn', 116),
(43, 2018, 'spring', 168),
(43, 2018, 'summer', 96),
(43, 2019, 'autumn', 73),
(43, 2019, 'spring', 125),
(43, 2019, 'summer', 67),
(44, 2014, 'autumn', 183),
(44, 2014, 'spring', 355),
(44, 2014, 'summer', 324),
(44, 2015, 'autumn', 155),
(44, 2015, 'spring', 415),
(44, 2015, 'summer', 201),
(44, 2016, 'autumn', 111),
(44, 2016, 'spring', 197),
(44, 2016, 'summer', 160),
(44, 2017, 'autumn', 140),
(44, 2017, 'spring', 236),
(44, 2017, 'summer', 154),
(44, 2018, 'autumn', 123),
(44, 2018, 'spring', 230),
(44, 2018, 'summer', 110),
(44, 2019, 'autumn', 120),
(44, 2019, 'spring', 215),
(44, 2019, 'summer', 104),
(45, 2014, 'autumn', 47),
(45, 2014, 'spring', 54),
(45, 2014, 'summer', 33),
(45, 2015, 'autumn', 41),
(45, 2015, 'spring', 73),
(45, 2015, 'summer', 25),
(45, 2016, 'autumn', 51),
(45, 2016, 'spring', 58),
(45, 2016, 'summer', 47),
(45, 2017, 'autumn', 85),
(45, 2017, 'spring', 131),
(45, 2017, 'summer', 71),
(45, 2018, 'autumn', 70),
(45, 2018, 'spring', 88),
(45, 2018, 'summer', 55),
(45, 2019, 'autumn', 68),
(45, 2019, 'spring', 76),
(45, 2019, 'summer', 56),
(46, 2014, 'autumn', 59),
(46, 2014, 'spring', 69),
(46, 2014, 'summer', 51),
(46, 2015, 'autumn', 59),
(46, 2015, 'spring', 119),
(46, 2015, 'summer', 68),
(46, 2016, 'autumn', 72),
(46, 2016, 'spring', 77),
(46, 2016, 'summer', 51),
(46, 2017, 'autumn', 69),
(46, 2017, 'spring', 95),
(46, 2017, 'summer', 83),
(46, 2018, 'autumn', 90),
(46, 2018, 'spring', 82),
(46, 2018, 'summer', 70),
(46, 2019, 'autumn', 86),
(46, 2019, 'spring', 64),
(46, 2019, 'summer', 66),
(47, 2014, 'autumn', 36),
(47, 2014, 'spring', 69),
(47, 2014, 'summer', 50),
(47, 2015, 'autumn', 48),
(47, 2015, 'spring', 94),
(47, 2015, 'summer', 37),
(47, 2016, 'autumn', 44),
(47, 2016, 'spring', 58),
(47, 2016, 'summer', 59),
(47, 2017, 'autumn', 68),
(47, 2017, 'spring', 95),
(47, 2017, 'summer', 53),
(47, 2018, 'autumn', 66),
(47, 2018, 'spring', 86),
(47, 2018, 'summer', 69),
(47, 2019, 'autumn', 48),
(47, 2019, 'spring', 77),
(47, 2019, 'summer', 48),
(48, 2014, 'autumn', 17),
(48, 2014, 'spring', 10),
(48, 2014, 'summer', 12),
(48, 2015, 'autumn', 7),
(48, 2015, 'spring', 28),
(48, 2015, 'summer', 15),
(48, 2016, 'autumn', 22),
(48, 2016, 'spring', 25),
(48, 2016, 'summer', 8),
(48, 2017, 'autumn', 25),
(48, 2017, 'spring', 34),
(48, 2017, 'summer', 10),
(48, 2018, 'autumn', 19),
(48, 2018, 'spring', 20),
(48, 2018, 'summer', 20),
(48, 2019, 'autumn', 27),
(48, 2019, 'spring', 30),
(48, 2019, 'summer', 8),
(49, 2014, 'autumn', 144),
(49, 2014, 'spring', 177),
(49, 2014, 'summer', 162),
(49, 2015, 'autumn', 143),
(49, 2015, 'spring', 238),
(49, 2015, 'summer', 89),
(49, 2016, 'autumn', 151),
(49, 2016, 'spring', 129),
(49, 2016, 'summer', 135),
(49, 2017, 'autumn', 164),
(49, 2017, 'spring', 226),
(49, 2017, 'summer', 192),
(49, 2018, 'autumn', 155),
(49, 2018, 'spring', 212),
(49, 2018, 'summer', 155),
(49, 2019, 'autumn', 144),
(49, 2019, 'spring', 183),
(49, 2019, 'summer', 95),
(50, 2014, 'autumn', 15),
(50, 2014, 'spring', 14),
(50, 2014, 'summer', 14),
(50, 2015, 'autumn', 21),
(50, 2015, 'spring', 24),
(50, 2015, 'summer', 17),
(50, 2016, 'autumn', 21),
(50, 2016, 'spring', 17),
(50, 2016, 'summer', 19),
(50, 2017, 'autumn', 16),
(50, 2017, 'spring', 27),
(50, 2017, 'summer', 24),
(50, 2018, 'autumn', 16),
(50, 2018, 'spring', 23),
(50, 2018, 'summer', 23),
(50, 2019, 'autumn', 17),
(50, 2019, 'spring', 18),
(50, 2019, 'summer', 8),
(51, 2014, 'autumn', 4),
(51, 2014, 'spring', 3),
(51, 2014, 'summer', 2),
(51, 2015, 'autumn', 1),
(51, 2015, 'spring', 6),
(51, 2015, 'summer', 2),
(51, 2016, 'autumn', 6),
(51, 2016, 'spring', 8),
(51, 2016, 'summer', 5),
(51, 2017, 'autumn', 6),
(51, 2017, 'spring', 5),
(51, 2017, 'summer', 5),
(51, 2018, 'autumn', 6),
(51, 2018, 'spring', 10),
(51, 2018, 'summer', 4),
(51, 2019, 'autumn', 8),
(51, 2019, 'spring', 4),
(51, 2019, 'summer', 3),
(52, 2014, 'autumn', 10),
(52, 2014, 'spring', 11),
(52, 2014, 'summer', 6),
(52, 2015, 'autumn', 11),
(52, 2015, 'spring', 20),
(52, 2015, 'summer', 9),
(52, 2016, 'autumn', 17),
(52, 2016, 'spring', 8),
(52, 2016, 'summer', 9),
(52, 2017, 'autumn', 17),
(52, 2017, 'spring', 28),
(52, 2017, 'summer', 20),
(52, 2018, 'autumn', 20),
(52, 2018, 'spring', 43),
(52, 2018, 'summer', 20),
(52, 2019, 'autumn', 27),
(52, 2019, 'spring', 17),
(52, 2019, 'summer', 17),
(53, 2014, 'autumn', 0),
(53, 2014, 'spring', 0),
(53, 2014, 'summer', 0),
(53, 2015, 'autumn', 0),
(53, 2015, 'spring', 0),
(53, 2015, 'summer', 0),
(53, 2016, 'autumn', 0),
(53, 2016, 'spring', 1),
(53, 2016, 'summer', 3),
(53, 2017, 'autumn', 0),
(53, 2017, 'spring', 0),
(53, 2017, 'summer', 0),
(53, 2018, 'autumn', 1),
(53, 2018, 'spring', 0),
(53, 2018, 'summer', 0),
(53, 2019, 'autumn', 1),
(53, 2019, 'spring', 2),
(53, 2019, 'summer', 0),
(54, 2014, 'autumn', 10),
(54, 2014, 'spring', 11),
(54, 2014, 'summer', 9),
(54, 2015, 'autumn', 10),
(54, 2015, 'spring', 15),
(54, 2015, 'summer', 8),
(54, 2016, 'autumn', 10),
(54, 2016, 'spring', 16),
(54, 2016, 'summer', 13),
(54, 2017, 'autumn', 16),
(54, 2017, 'spring', 26),
(54, 2017, 'summer', 17),
(54, 2018, 'autumn', 17),
(54, 2018, 'spring', 27),
(54, 2018, 'summer', 8),
(54, 2019, 'autumn', 7),
(54, 2019, 'spring', 21),
(54, 2019, 'summer', 15),
(55, 2014, 'autumn', 13),
(55, 2014, 'spring', 23),
(55, 2014, 'summer', 12),
(55, 2015, 'autumn', 11),
(55, 2015, 'spring', 39),
(55, 2015, 'summer', 12),
(55, 2016, 'autumn', 15),
(55, 2016, 'spring', 28),
(55, 2016, 'summer', 15),
(55, 2017, 'autumn', 14),
(55, 2017, 'spring', 35),
(55, 2017, 'summer', 27),
(55, 2018, 'autumn', 18),
(55, 2018, 'spring', 47),
(55, 2018, 'summer', 25),
(55, 2019, 'autumn', 26),
(55, 2019, 'spring', 39),
(55, 2019, 'summer', 29),
(56, 2014, 'autumn', 0),
(56, 2014, 'spring', 1),
(56, 2014, 'summer', 2),
(56, 2015, 'autumn', 2),
(56, 2015, 'spring', 2),
(56, 2015, 'summer', 3),
(56, 2016, 'autumn', 1),
(56, 2016, 'spring', 1),
(56, 2016, 'summer', 3),
(56, 2017, 'autumn', 1),
(56, 2017, 'spring', 1),
(56, 2017, 'summer', 4),
(56, 2018, 'autumn', 0),
(56, 2018, 'spring', 4),
(56, 2018, 'summer', 2),
(56, 2019, 'autumn', 5),
(56, 2019, 'spring', 1),
(56, 2019, 'summer', 2),
(57, 2014, 'autumn', 0),
(57, 2014, 'spring', 0),
(57, 2014, 'summer', 0),
(57, 2015, 'autumn', 0),
(57, 2015, 'spring', 0),
(57, 2015, 'summer', 0),
(57, 2016, 'autumn', 0),
(57, 2016, 'spring', 0),
(57, 2016, 'summer', 0),
(57, 2017, 'autumn', 3),
(57, 2017, 'spring', 0),
(57, 2017, 'summer', 3),
(57, 2018, 'autumn', 4),
(57, 2018, 'spring', 1),
(57, 2018, 'summer', 3),
(57, 2019, 'autumn', 3),
(57, 2019, 'spring', 0),
(57, 2019, 'summer', 1),
(58, 2014, 'autumn', 29),
(58, 2014, 'spring', 43),
(58, 2014, 'summer', 18),
(58, 2015, 'autumn', 17),
(58, 2015, 'spring', 54),
(58, 2015, 'summer', 15),
(58, 2016, 'autumn', 29),
(58, 2016, 'spring', 28),
(58, 2016, 'summer', 19),
(58, 2017, 'autumn', 27),
(58, 2017, 'spring', 34),
(58, 2017, 'summer', 27),
(58, 2018, 'autumn', 19),
(58, 2018, 'spring', 26),
(58, 2018, 'summer', 11),
(58, 2019, 'autumn', 21),
(58, 2019, 'spring', 16),
(58, 2019, 'summer', 14),
(59, 2014, 'autumn', 1),
(59, 2014, 'spring', 0),
(59, 2014, 'summer', 0),
(59, 2015, 'autumn', 1),
(59, 2015, 'spring', 4),
(59, 2015, 'summer', 0),
(59, 2016, 'autumn', 1),
(59, 2016, 'spring', 1),
(59, 2016, 'summer', 2),
(59, 2017, 'autumn', 2),
(59, 2017, 'spring', 2),
(59, 2017, 'summer', 0),
(59, 2018, 'autumn', 3),
(59, 2018, 'spring', 5),
(59, 2018, 'summer', 2),
(59, 2019, 'autumn', 1),
(59, 2019, 'spring', 3),
(59, 2019, 'summer', 4),
(60, 2014, 'autumn', 16),
(60, 2014, 'spring', 0),
(60, 2014, 'summer', 0),
(60, 2015, 'autumn', 18),
(60, 2015, 'spring', 50),
(60, 2015, 'summer', 16),
(60, 2016, 'autumn', 9),
(60, 2016, 'spring', 19),
(60, 2016, 'summer', 18),
(60, 2017, 'autumn', 19),
(60, 2017, 'spring', 28),
(60, 2017, 'summer', 25),
(60, 2018, 'autumn', 25),
(60, 2018, 'spring', 47),
(60, 2018, 'summer', 31),
(60, 2019, 'autumn', 37),
(60, 2019, 'spring', 47),
(60, 2019, 'summer', 45);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `dept_major`
--
ALTER TABLE `dept_major`
  ADD PRIMARY KEY (`dept_id`,`major_id`),
  ADD KEY `dept_id` (`dept_id`,`major_id`),
  ADD KEY `major_id` (`major_id`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`major_id`),
  ADD KEY `major_id` (`major_id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`school_id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `school_dept`
--
ALTER TABLE `school_dept`
  ADD PRIMARY KEY (`school_id`,`dept_id`),
  ADD KEY `school_id` (`school_id`,`dept_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`major_id`,`year`,`semester`),
  ADD KEY `major_id` (`major_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `major`
--
ALTER TABLE `major`
  MODIFY `major_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dept_major`
--
ALTER TABLE `dept_major`
  ADD CONSTRAINT `dept_major_ibfk_1` FOREIGN KEY (`major_id`) REFERENCES `major` (`major_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dept_major_ibfk_2` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `school_dept`
--
ALTER TABLE `school_dept`
  ADD CONSTRAINT `school_dept_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `school_dept_ibfk_2` FOREIGN KEY (`school_id`) REFERENCES `school` (`school_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`major_id`) REFERENCES `major` (`major_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
