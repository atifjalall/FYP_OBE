-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2022 at 02:47 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `obe`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `user_type_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_type_id`, `username`, `password`) VALUES
(1, 'admin', '$2y$04$D6WA6SfCb12ozNgoFfY6v.CdskXDUAGTFQ7fmCi/fH7mZ5zCwW.Te');

-- --------------------------------------------------------

--
-- Table structure for table `assigned_course`
--

CREATE TABLE IF NOT EXISTS `assigned_course` (
  `assigned_course_id` int(11) NOT NULL,
  `offered_course_id` varchar(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `sec_no` int(11) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `offered_course_code` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assigned_course`
--

INSERT INTO `assigned_course` (`assigned_course_id`, `offered_course_id`, `semester_id`, `faculty_id`, `sec_no`, `semester`, `year`, `offered_course_code`, `username`, `course_code`) VALUES
(19, '1', 2, 4, 1, '', 2022, 'CSC113', 'tarwankumar', 'CSC113'),
(21, '5', 2, 4, 1, '', 2022, '', '', 'ITC411'),
(22, '3', 2, 6, 1, '', 2022, '', '', 'SEN220'),
(23, '4', 2, 7, 1, '', 2022, '', '', 'CSC407'),
(25, '6', 2, 8, 1, '', 2022, '', '', 'CSC449'),
(27, '8', 2, 9, 2, '', 2022, '', '', 'SEN310'),
(28, '9', 2, 10, 1, '', 2022, '', '', 'CEN122');

-- --------------------------------------------------------

--
-- Table structure for table `co`
--

CREATE TABLE IF NOT EXISTS `co` (
  `co_id` int(11) NOT NULL,
  `assigned_course_id` varchar(244) DEFAULT NULL,
  `co_code` varchar(244) DEFAULT NULL,
  `co_text` varchar(255) DEFAULT NULL,
  `co_marks` varchar(244) DEFAULT NULL,
  `rest_co_marks` varchar(244) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `co`
--

INSERT INTO `co` (`co_id`, `assigned_course_id`, `co_code`, `co_text`, `co_marks`, `rest_co_marks`) VALUES
(1, '1', 'CO1', '100', '88', '88'),
(2, '2', 'CO2', '100', '88', '88');

-- --------------------------------------------------------

--
-- Table structure for table `comp`
--

CREATE TABLE IF NOT EXISTS `comp` (
  `comp_id` int(11) NOT NULL,
  `component` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comp`
--

INSERT INTO `comp` (`comp_id`, `component`) VALUES
(3, 'Assignment 1'),
(4, 'Quiz 1'),
(5, 'Assignment 2'),
(6, 'Quiz 2'),
(7, 'Mid Exam'),
(8, 'Assignment 3'),
(9, 'Quiz 3'),
(10, 'Quiz 4'),
(11, 'Assignment 4'),
(12, 'Final Exam');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `course_id` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_code`, `dept_id`, `title`, `credit`) VALUES
(1, 'CSC113', 1, 'Computer Programming', '3'),
(2, 'SEN220', 1, 'Software engineering', '3'),
(5, 'CSC113', 1, 'Object Oriented Programming', '3'),
(6, 'CSC407', 1, 'Information Security', '2'),
(7, 'ITC411', 1, 'Cyber Security', '3'),
(8, 'CSC449', 1, 'Artificial Intelligence', '3'),
(9, 'CSC456', 1, 'Distributed Computing', '2'),
(10, 'SEN310', 1, 'Web Engineering', '3'),
(11, 'CEN122', 1, 'Digital Design', '2'),
(13, 'CEN222', 1, 'System and Network Administration', '3');

-- --------------------------------------------------------

--
-- Table structure for table `course_outcome`
--

CREATE TABLE IF NOT EXISTS `course_outcome` (
  `id` int(11) NOT NULL,
  `co_code` varchar(244) DEFAULT NULL,
  `co_marks` varchar(244) DEFAULT NULL,
  `course_code` varchar(244) DEFAULT NULL,
  `sec_no` varchar(244) DEFAULT NULL,
  `semester` varchar(244) DEFAULT NULL,
  `year` varchar(244) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_outcome`
--

INSERT INTO `course_outcome` (`id`, `co_code`, `co_marks`, `course_code`, `sec_no`, `semester`, `year`) VALUES
(1, 'CO2', '10', '101', '2', 'Spring', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `co_attainment`
--

CREATE TABLE IF NOT EXISTS `co_attainment` (
  `id` int(11) NOT NULL,
  `course_code` varchar(100) NOT NULL,
  `sec_no` int(11) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `year` int(4) NOT NULL,
  `co` varchar(15) DEFAULT NULL,
  `co_per` float DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `co_attainment_individual`
--

CREATE TABLE IF NOT EXISTS `co_attainment_individual` (
  `id` int(11) NOT NULL,
  `s_id` varchar(100) NOT NULL,
  `course_code` varchar(100) NOT NULL,
  `sec_no` int(11) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `year` int(4) NOT NULL,
  `co` varchar(10) NOT NULL,
  `co_per` float DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1194519 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE IF NOT EXISTS `dept` (
  `dept_id` int(11) NOT NULL,
  `dept` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`dept_id`, `dept`) VALUES
(1, 'CS'),
(3, 'SE'),
(5, 'BBA');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `faculty_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `name`, `username`, `email`, `dept_id`, `password`, `user_type_id`) VALUES
(1, 'Talha Alam', 'talhaalam', 'talhaalam@email.com', 1, '$2y$04$D6WA6SfCb12ozNgoFfY6v.CdskXDUAGTFQ7fmCi/fH7mZ5zCwW.Te', 1),
(2, 'Atif Jalal', 'atifjalal', 'atifjalal96@gmail.com', 1, '$2y$04$gLEI8Bc4p3ZwlAF/dmT4B.pQz10KJJy6OkPWL6huwuJZdtHMYmFQa', 1),
(3, 'Bilal Vohra', 'bilalvohra', 'bilalvohra@gmail.com', 1, '$2y$04$nQCeY8MXFBll1PCRqNUmB.pQTog/gTxLh0M4L6pQ9ZLkTmEhBpCDu', 1),
(4, 'Tarwan Kumar', 'tarwankumar', 'tarwankumar@gmail.com', 1, '$2y$04$BLIc0ElyDY4jXbwHE6CX7ee60nwtAmsVZRdPAbW8ZliIqVlERm0oS', 1),
(5, 'Fasiha Ikram', 'fasihaikram', 'fasihaikram@gmail.com', 1, '$2y$04$V5.K7K05zgQ04MZq.NNb4easwYBgdClRMZuMQh1.o.Bc37M7944ZG', 1),
(6, 'Hadiqua Fazal', 'hadiquafazal', 'hadiquafazal@gmail.com', 1, '$2y$04$4Q4njSenQkT370.jWXVrQ.IzZDPRaUDODFuq/AtLSdS3wP/5heXPa', 1),
(7, 'Muhammad Shehzad', 'muhammadshehzad', 'muhammadshehzad@gmail.com', 1, '$2y$04$vlhAYZcpr6epbfOKGRbfauhIBSYgfO3RvVdciv6mo4SojCOTxpi0q', 1),
(8, 'Humera', 'humera', 'humera@gmail.com', 1, '$2y$04$TkEv5ihucKHR3zuWkvwQ6etAp.jZ4N6h7rfLQ2Xih0S5QEIcPHpxC', 1),
(9, 'Jawad Ahmed Bhutta', 'jawadahmedbhutta', 'jawadahmedbhutt@gmail.com', 1, '$2y$04$N.K4sJPc1Uof6u1y7Vi9.OE5Du2huysjxunn59S5ZtzY34eaS/6m6', 1),
(10, 'Aisha Danish', 'aishadanish', 'aishadanish@gmail.com', 1, '$2y$04$NZ/ftaByiUjfIhVc4y0cS.Jq5pD38hG52xitpJKBVx/hov.1qsa2u', 1),
(11, 'Bilal Muhammad Iqbal', 'bilalmuhammadiqbal', 'bilalmuhammadiq@gmail.com', 1, '$2y$04$X4jfbWZkOZiUyUQ4ratV0e0DimIPt6mmD.CNJ8A1j60lDtD8BoCNq', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mapping`
--

CREATE TABLE IF NOT EXISTS `mapping` (
  `id` int(11) NOT NULL,
  `co_code` varchar(244) DEFAULT NULL,
  `po_code` varchar(244) DEFAULT NULL,
  `po_id` varchar(255) DEFAULT NULL,
  `assigned_course_id` int(11) DEFAULT NULL,
  `co_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mapping`
--

INSERT INTO `mapping` (`id`, `co_code`, `po_code`, `po_id`, `assigned_course_id`, `co_id`) VALUES
(1, 'CO1', 'PO1', '1', 1, 1),
(2, 'CO1', 'PO1', '1', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `marks_component`
--

CREATE TABLE IF NOT EXISTS `marks_component` (
  `id` int(11) NOT NULL,
  `cc_marks` varchar(255) DEFAULT NULL,
  `assigned_course_id` varchar(244) DEFAULT NULL,
  `comp_id` int(11) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marks_component`
--

INSERT INTO `marks_component` (`id`, `cc_marks`, `assigned_course_id`, `comp_id`, `component`) VALUES
(1, '290', '2', 3, 'component1');

-- --------------------------------------------------------

--
-- Table structure for table `marks_dist`
--

CREATE TABLE IF NOT EXISTS `marks_dist` (
  `id` int(11) NOT NULL,
  `co_id` varchar(244) DEFAULT NULL,
  `assigned_course_id` varchar(244) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marks_dist`
--

INSERT INTO `marks_dist` (`id`, `co_id`, `assigned_course_id`) VALUES
(1, '2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `marks_distribution`
--

CREATE TABLE IF NOT EXISTS `marks_distribution` (
  `id` int(11) NOT NULL,
  `assigned_course_id` varchar(244) DEFAULT NULL,
  `marks_component_id` varchar(244) DEFAULT NULL,
  `component` varchar(244) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marks_distribution`
--

INSERT INTO `marks_distribution` (`id`, `assigned_course_id`, `marks_component_id`, `component`) VALUES
(1, '2', '1', 'component1');

-- --------------------------------------------------------

--
-- Table structure for table `offered_course`
--

CREATE TABLE IF NOT EXISTS `offered_course` (
  `offered_course_id` int(11) NOT NULL,
  `offered_course_code` varchar(255) NOT NULL,
  `course_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `tot_sec` varchar(255) NOT NULL,
  `year` varchar(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offered_course`
--

INSERT INTO `offered_course` (`offered_course_id`, `offered_course_code`, `course_id`, `semester_id`, `tot_sec`, `year`) VALUES
(1, 'CSC113', 1, 1, '3', '2022'),
(3, 'CSC113', 2, 1, '3', '2022'),
(4, '', 6, 1, '3', '2022'),
(5, '', 7, 1, '3', '2022'),
(6, '', 8, 1, '2', '2022'),
(7, '', 9, 1, '1', '2022'),
(8, '', 10, 1, '4', '2022'),
(9, '', 11, 1, '2', '2022'),
(10, '', 13, 1, '2', '2022'),
(11, '', 1, 2, '3', '2022'),
(12, '', 7, 2, '2', '2022'),
(13, '', 2, 2, '3', '2022'),
(14, '', 6, 2, '3', '2022'),
(15, '', 8, 2, '3', '2022'),
(16, '', 10, 2, '2', '2022'),
(17, '', 11, 2, '1', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `percent_of_co`
--

CREATE TABLE IF NOT EXISTS `percent_of_co` (
  `id` int(111) NOT NULL,
  `s_id` varchar(111) NOT NULL,
  `course_code` varchar(111) NOT NULL,
  `sec_no` int(111) NOT NULL,
  `semester` varchar(111) NOT NULL,
  `year` year(4) NOT NULL,
  `co` varchar(111) NOT NULL,
  `total_marks_co` float DEFAULT NULL,
  `percent_co` float DEFAULT NULL,
  `po` varchar(111) DEFAULT NULL,
  `accepted_po` varchar(111) DEFAULT NULL,
  `rejected_po` varchar(111) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22519 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `percent_of_co`
--

INSERT INTO `percent_of_co` (`id`, `s_id`, `course_code`, `sec_no`, `semester`, `year`, `co`, `total_marks_co`, `percent_co`, `po`, `accepted_po`, `rejected_po`) VALUES
(22208, '2022-1-60-001', 'CSE435', 2, 'Spring', 2022, 'CO2', 10, 34.78, 'PO5', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22209, '2022-1-60-001', 'CSE435', 2, 'Spring', 2022, 'CO2', 10, 34.78, 'PO2', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22210, '2022-1-60-001', 'CSE435', 2, 'Spring', 2022, 'CO1', 23, 80, 'PO12', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22211, '2022-1-60-001', 'CSE435', 2, 'Spring', 2022, 'CO3', 19, 66.09, 'PO2', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22212, '2022-1-60-001', 'CSE435', 2, 'Spring', 2022, 'CO4', 3, 10.43, 'PO2', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22213, '2022-1-60-001', 'CSE435', 2, 'Spring', 2022, 'CO3', 19, 66.09, 'PO3', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22214, '2022-1-60-001', 'CSE435', 2, 'Spring', 2022, 'CO4', 3, 10.43, 'PO5', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22215, '2022-1-60-001', 'CSE435', 2, 'Spring', 2022, 'CO4', 3, 10.43, 'PO9', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22216, '2022-1-60-001', 'CSE435', 2, 'Spring', 2022, 'CO4', 3, 10.43, 'PO10', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22217, '2022-1-60-001', 'CSE447', 2, 'Spring', 2022, 'CO2', 0, 0, 'PO12', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22218, '2022-1-60-001', 'CSE447', 2, 'Spring', 2022, 'CO2', 0, 0, 'PO5', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22219, '2022-1-60-001', 'CSE447', 2, 'Spring', 2022, 'CO2', 0, 0, 'PO2', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22220, '2022-1-60-001', 'CSE447', 2, 'Spring', 2022, 'CO1', 0, 0, 'PO12', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22221, '2022-1-60-001', 'CSE447', 2, 'Spring', 2022, 'CO3', 0, 0, 'PO2', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22222, '2022-1-60-001', 'CSE447', 2, 'Spring', 2022, 'CO4', 0, 0, 'PO2', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22223, '2022-1-60-001', 'CSE447', 2, 'Spring', 2022, 'CO3', 0, 0, 'PO3', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22224, '2022-1-60-001', 'CSE447', 2, 'Spring', 2022, 'CO4', 0, 0, 'PO5', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22225, '2022-1-60-001', 'CSE447', 2, 'Spring', 2022, 'CO4', 0, 0, 'PO9', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22226, '2022-1-60-001', 'CSE447', 2, 'Spring', 2022, 'CO4', 0, 0, 'PO10', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22227, '2022-1-60-003', 'CSE435', 2, 'Spring', 2022, 'CO2', 14, 48.7, 'PO12', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22228, '2022-1-60-003', 'CSE435', 2, 'Spring', 2022, 'CO2', 14, 48.7, 'PO5', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22229, '2022-1-60-003', 'CSE435', 2, 'Spring', 2022, 'CO2', 14, 48.7, 'PO2', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22230, '2022-1-60-003', 'CSE435', 2, 'Spring', 2022, 'CO1', 16, 55.65, 'PO12', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22231, '2022-1-60-003', 'CSE435', 2, 'Spring', 2022, 'CO3', 9, 31.3, 'PO2', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22232, '2014-1-60-003', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO2', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22233, '2014-1-60-003', 'CSE435', 2, 'Spring', 2018, 'CO3', 9, 31.3, 'PO3', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22234, '2014-1-60-003', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO5', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22235, '2014-1-60-003', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO9', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22236, '2014-1-60-003', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO10', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22237, '2014-1-60-004', 'CSE435', 2, 'Spring', 2018, 'CO2', 15, 52.17, 'PO12', NULL, NULL),
(22238, '2014-1-60-004', 'CSE435', 2, 'Spring', 2018, 'CO2', 15, 52.17, 'PO5', NULL, NULL),
(22239, '2014-1-60-004', 'CSE435', 2, 'Spring', 2018, 'CO2', 15, 52.17, 'PO2', NULL, NULL),
(22240, '2014-1-60-004', 'CSE435', 2, 'Spring', 2018, 'CO1', 21, 73.04, 'PO12', NULL, NULL),
(22241, '2014-1-60-004', 'CSE435', 2, 'Spring', 2018, 'CO3', 12, 41.74, 'PO2', NULL, NULL),
(22242, '2014-1-60-004', 'CSE435', 2, 'Spring', 2018, 'CO4', 2, 6.96, 'PO2', NULL, NULL),
(22243, '2014-1-60-004', 'CSE435', 2, 'Spring', 2018, 'CO3', 12, 41.74, 'PO3', NULL, NULL),
(22244, '2014-1-60-004', 'CSE435', 2, 'Spring', 2018, 'CO4', 2, 6.96, 'PO5', NULL, NULL),
(22245, '2014-1-60-004', 'CSE435', 2, 'Spring', 2018, 'CO4', 2, 6.96, 'PO9', NULL, NULL),
(22246, '2014-1-60-004', 'CSE435', 2, 'Spring', 2018, 'CO4', 2, 6.96, 'PO10', NULL, NULL),
(22247, '2014-1-60-005', 'CSE435', 2, 'Spring', 2018, 'CO2', 18, 62.61, 'PO12', NULL, NULL),
(22248, '2014-1-60-005', 'CSE435', 2, 'Spring', 2018, 'CO2', 18, 62.61, 'PO5', NULL, NULL),
(22249, '2014-1-60-005', 'CSE435', 2, 'Spring', 2018, 'CO2', 18, 62.61, 'PO2', NULL, NULL),
(22250, '2014-1-60-005', 'CSE435', 2, 'Spring', 2018, 'CO1', 26, 90.43, 'PO12', NULL, NULL),
(22251, '2014-1-60-005', 'CSE435', 2, 'Spring', 2018, 'CO3', 15, 52.17, 'PO2', NULL, NULL),
(22252, '2014-1-60-005', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22253, '2014-1-60-005', 'CSE435', 2, 'Spring', 2018, 'CO3', 15, 52.17, 'PO3', NULL, NULL),
(22254, '2014-1-60-005', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22255, '2014-1-60-005', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22256, '2014-1-60-005', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22257, '2014-1-60-006', 'CSE435', 2, 'Spring', 2018, 'CO2', 3, 12.63, 'PO12', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22258, '2014-1-60-006', 'CSE435', 2, 'Spring', 2018, 'CO2', 3, 12.63, 'PO5', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22259, '2014-1-60-006', 'CSE435', 2, 'Spring', 2018, 'CO2', 3, 12.63, 'PO2', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22260, '2014-1-60-006', 'CSE435', 2, 'Spring', 2018, 'CO1', 28, 117.89, 'PO12', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22261, '2014-1-60-006', 'CSE435', 2, 'Spring', 2018, 'CO3', 3, 12.63, 'PO2', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22262, '2014-1-60-006', 'CSE435', 2, 'Spring', 2018, 'CO4', 2, 6.96, 'PO2', NULL, NULL),
(22263, '2014-1-60-006', 'CSE435', 2, 'Spring', 2018, 'CO3', 3, 12.63, 'PO3', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22264, '2014-1-60-006', 'CSE435', 2, 'Spring', 2018, 'CO4', 2, 6.96, 'PO5', NULL, NULL),
(22265, '2014-1-60-006', 'CSE435', 2, 'Spring', 2018, 'CO4', 2, 6.96, 'PO9', NULL, NULL),
(22266, '2014-1-60-006', 'CSE435', 2, 'Spring', 2018, 'CO4', 2, 6.96, 'PO10', NULL, NULL),
(22267, '2014-1-60-007', 'CSE435', 2, 'Spring', 2018, 'CO2', 20, 69.57, 'PO12', NULL, NULL),
(22268, '2014-1-60-007', 'CSE435', 2, 'Spring', 2018, 'CO2', 20, 69.57, 'PO5', NULL, NULL),
(22269, '2014-1-60-007', 'CSE435', 2, 'Spring', 2018, 'CO2', 20, 69.57, 'PO2', NULL, NULL),
(22270, '2014-1-60-007', 'CSE435', 2, 'Spring', 2018, 'CO1', 27, 93.91, 'PO12', NULL, NULL),
(22271, '2014-1-60-007', 'CSE435', 2, 'Spring', 2018, 'CO3', 17, 59.13, 'PO2', NULL, NULL),
(22272, '2014-1-60-007', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22273, '2014-1-60-007', 'CSE435', 2, 'Spring', 2018, 'CO3', 17, 59.13, 'PO3', NULL, NULL),
(22274, '2014-1-60-007', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22275, '2014-1-60-007', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22276, '2014-1-60-007', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22277, '2014-1-60-008', 'CSE435', 2, 'Spring', 2018, 'CO2', 0, 0, 'PO12', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22278, '2014-1-60-008', 'CSE435', 2, 'Spring', 2018, 'CO2', 0, 0, 'PO5', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22279, '2014-1-60-008', 'CSE435', 2, 'Spring', 2018, 'CO2', 0, 0, 'PO2', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22280, '2014-1-60-008', 'CSE435', 2, 'Spring', 2018, 'CO1', 0, 0, 'PO12', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22281, '2014-1-60-008', 'CSE435', 2, 'Spring', 2018, 'CO3', 0, 0, 'PO2', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22282, '2014-1-60-008', 'CSE435', 2, 'Spring', 2018, 'CO4', 2, 6.96, 'PO2', NULL, NULL),
(22283, '2014-1-60-008', 'CSE435', 2, 'Spring', 2018, 'CO3', 0, 0, 'PO3', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22284, '2014-1-60-008', 'CSE435', 2, 'Spring', 2018, 'CO4', 2, 6.96, 'PO5', NULL, NULL),
(22285, '2014-1-60-008', 'CSE435', 2, 'Spring', 2018, 'CO4', 2, 6.96, 'PO9', NULL, NULL),
(22286, '2014-1-60-008', 'CSE435', 2, 'Spring', 2018, 'CO4', 2, 6.96, 'PO10', NULL, NULL),
(22287, '2014-1-60-009', 'CSE435', 2, 'Spring', 2018, 'CO2', 10, 34.78, 'PO12', NULL, NULL),
(22288, '2014-1-60-009', 'CSE435', 2, 'Spring', 2018, 'CO2', 10, 34.78, 'PO5', NULL, NULL),
(22289, '2014-1-60-009', 'CSE435', 2, 'Spring', 2018, 'CO2', 10, 34.78, 'PO2', NULL, NULL),
(22290, '2014-1-60-009', 'CSE435', 2, 'Spring', 2018, 'CO1', 28, 97.39, 'PO12', NULL, NULL),
(22291, '2014-1-60-009', 'CSE435', 2, 'Spring', 2018, 'CO3', 21, 73.04, 'PO2', NULL, NULL),
(22292, '2014-1-60-009', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22293, '2014-1-60-009', 'CSE435', 2, 'Spring', 2018, 'CO3', 21, 73.04, 'PO3', NULL, NULL),
(22294, '2014-1-60-009', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22295, '2014-1-60-009', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22296, '2014-1-60-009', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22297, '2014-1-60-010', 'CSE435', 2, 'Spring', 2018, 'CO2', 11, 38.26, 'PO12', NULL, NULL),
(22298, '2014-1-60-010', 'CSE435', 2, 'Spring', 2018, 'CO2', 11, 38.26, 'PO5', NULL, NULL),
(22299, '2014-1-60-010', 'CSE435', 2, 'Spring', 2018, 'CO2', 11, 38.26, 'PO2', NULL, NULL),
(22300, '2014-1-60-010', 'CSE435', 2, 'Spring', 2018, 'CO1', 22, 76.52, 'PO12', NULL, NULL),
(22301, '2014-1-60-010', 'CSE435', 2, 'Spring', 2018, 'CO3', 13, 45.22, 'PO2', NULL, NULL),
(22302, '2014-1-60-010', 'CSE435', 2, 'Spring', 2018, 'CO4', 2, 6.96, 'PO2', NULL, NULL),
(22303, '2014-1-60-010', 'CSE435', 2, 'Spring', 2018, 'CO3', 13, 45.22, 'PO3', NULL, NULL),
(22304, '2014-1-60-010', 'CSE435', 2, 'Spring', 2018, 'CO4', 2, 6.96, 'PO5', NULL, NULL),
(22305, '2014-1-60-010', 'CSE435', 2, 'Spring', 2018, 'CO4', 2, 6.96, 'PO9', NULL, NULL),
(22306, '2014-1-60-010', 'CSE435', 2, 'Spring', 2018, 'CO4', 2, 6.96, 'PO10', NULL, NULL),
(22307, '2014-1-60-011', 'CSE435', 2, 'spring', 2018, 'CO2', 14, 48.7, 'PO12', NULL, NULL),
(22308, '2014-1-60-011', 'CSE435', 2, 'spring', 2018, 'CO2', 14, 48.7, 'PO5', NULL, NULL),
(22309, '2014-1-60-011', 'CSE435', 2, 'spring', 2018, 'CO2', 14, 48.7, 'PO2', NULL, NULL),
(22310, '2014-1-60-011', 'CSE435', 2, 'spring', 2018, 'CO1', 22, 76.52, 'PO12', NULL, NULL),
(22311, '2014-1-60-011', 'CSE435', 2, 'spring', 2018, 'CO3', 16, 55.65, 'PO2', NULL, NULL),
(22312, '2014-1-60-011', 'CSE435', 2, 'spring', 2018, 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22313, '2014-1-60-011', 'CSE435', 2, 'spring', 2018, 'CO3', 16, 55.65, 'PO3', NULL, NULL),
(22314, '2014-1-60-011', 'CSE435', 2, 'spring', 2018, 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22315, '2014-1-60-011', 'CSE435', 2, 'spring', 2018, 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22316, '2014-1-60-011', 'CSE435', 2, 'spring', 2018, 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22317, '2014-1-60-012', 'CSE435', 2, 'Spring', 2018, 'CO2', 11, 38.26, 'PO12', NULL, NULL),
(22318, '2014-1-60-012', 'CSE435', 2, 'Spring', 2018, 'CO2', 11, 38.26, 'PO5', NULL, NULL),
(22319, '2014-1-60-012', 'CSE435', 2, 'Spring', 2018, 'CO2', 11, 38.26, 'PO2', NULL, NULL),
(22320, '2014-1-60-012', 'CSE435', 2, 'Spring', 2018, 'CO1', 26, 90.43, 'PO12', NULL, NULL),
(22321, '2014-1-60-012', 'CSE435', 2, 'Spring', 2018, 'CO3', 18, 62.61, 'PO2', NULL, NULL),
(22322, '2014-1-60-012', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22323, '2014-1-60-012', 'CSE435', 2, 'Spring', 2018, 'CO3', 18, 62.61, 'PO3', NULL, NULL),
(22324, '2014-1-60-012', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22325, '2014-1-60-012', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22326, '2014-1-60-012', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22327, '2014-1-60-013', 'CSE435', 2, 'spring', 2018, 'CO2', 12, 41.74, 'PO12', NULL, NULL),
(22328, '2014-1-60-013', 'CSE435', 2, 'spring', 2018, 'CO2', 12, 41.74, 'PO5', NULL, NULL),
(22329, '2014-1-60-013', 'CSE435', 2, 'spring', 2018, 'CO2', 12, 41.74, 'PO2', NULL, NULL),
(22330, '2014-1-60-013', 'CSE435', 2, 'spring', 2018, 'CO1', 29, 100.87, 'PO12', NULL, NULL),
(22331, '2014-1-60-013', 'CSE435', 2, 'spring', 2018, 'CO3', 19, 66.09, 'PO2', NULL, NULL),
(22332, '2014-1-60-013', 'CSE435', 2, 'spring', 2018, 'CO4', 2, 6.96, 'PO2', NULL, NULL),
(22333, '2014-1-60-013', 'CSE435', 2, 'spring', 2018, 'CO3', 19, 66.09, 'PO3', NULL, NULL),
(22334, '2014-1-60-013', 'CSE435', 2, 'spring', 2018, 'CO4', 2, 6.96, 'PO5', NULL, NULL),
(22335, '2014-1-60-013', 'CSE435', 2, 'spring', 2018, 'CO4', 2, 6.96, 'PO9', NULL, NULL),
(22336, '2014-1-60-013', 'CSE435', 2, 'spring', 2018, 'CO4', 2, 6.96, 'PO10', NULL, NULL),
(22337, '2014-1-60-014', 'CSE435', 2, 'Spring', 2018, 'CO2', 15, 52.17, 'PO12', NULL, NULL),
(22338, '2014-1-60-014', 'CSE435', 2, 'Spring', 2018, 'CO2', 15, 52.17, 'PO5', NULL, NULL),
(22339, '2014-1-60-014', 'CSE435', 2, 'Spring', 2018, 'CO2', 15, 52.17, 'PO2', NULL, NULL),
(22340, '2014-1-60-014', 'CSE435', 2, 'Spring', 2018, 'CO1', 22, 76.52, 'PO12', NULL, NULL),
(22341, '2014-1-60-014', 'CSE435', 2, 'Spring', 2018, 'CO3', 10, 34.78, 'PO2', NULL, NULL),
(22342, '2014-1-60-014', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22343, '2014-1-60-014', 'CSE435', 2, 'Spring', 2018, 'CO3', 10, 34.78, 'PO3', NULL, NULL),
(22344, '2014-1-60-014', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22345, '2014-1-60-014', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22346, '2014-1-60-014', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22347, '2014-1-60-015', 'CSE435', 2, 'spring', 2018, 'CO2', 16, 55.65, 'PO12', NULL, NULL),
(22348, '2014-1-60-015', 'CSE435', 2, 'spring', 2018, 'CO2', 16, 55.65, 'PO5', NULL, NULL),
(22349, '2014-1-60-015', 'CSE435', 2, 'spring', 2018, 'CO2', 16, 55.65, 'PO2', NULL, NULL),
(22350, '2014-1-60-015', 'CSE435', 2, 'spring', 2018, 'CO1', 25, 86.96, 'PO12', NULL, NULL),
(22351, '2014-1-60-015', 'CSE435', 2, 'spring', 2018, 'CO3', 11, 38.26, 'PO2', NULL, NULL),
(22352, '2014-1-60-015', 'CSE435', 2, 'spring', 2018, 'CO4', 2, 6.96, 'PO2', NULL, NULL),
(22353, '2014-1-60-015', 'CSE435', 2, 'spring', 2018, 'CO3', 11, 38.26, 'PO3', NULL, NULL),
(22354, '2014-1-60-015', 'CSE435', 2, 'spring', 2018, 'CO4', 2, 6.96, 'PO5', NULL, NULL),
(22355, '2014-1-60-015', 'CSE435', 2, 'spring', 2018, 'CO4', 2, 6.96, 'PO9', NULL, NULL),
(22356, '2014-1-60-015', 'CSE435', 2, 'spring', 2018, 'CO4', 2, 6.96, 'PO10', NULL, NULL),
(22357, '2014-1-60-016', 'CSE435', 2, 'Spring', 2018, 'CO2', 13, 45.22, 'PO12', NULL, NULL),
(22358, '2014-1-60-016', 'CSE435', 2, 'Spring', 2018, 'CO2', 13, 45.22, 'PO5', NULL, NULL),
(22359, '2014-1-60-016', 'CSE435', 2, 'Spring', 2018, 'CO2', 13, 45.22, 'PO2', NULL, NULL),
(22360, '2014-1-60-016', 'CSE435', 2, 'Spring', 2018, 'CO1', 18, 62.61, 'PO12', NULL, NULL),
(22361, '2014-1-60-016', 'CSE435', 2, 'Spring', 2018, 'CO3', 14, 48.7, 'PO2', NULL, NULL),
(22362, '2014-1-60-016', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22363, '2014-1-60-016', 'CSE435', 2, 'Spring', 2018, 'CO3', 14, 48.7, 'PO3', NULL, NULL),
(22364, '2014-1-60-016', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22365, '2014-1-60-016', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22366, '2014-1-60-016', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22367, '2014-1-60-017', 'CSE435', 2, 'spring', 2018, 'CO2', 13, 45.22, 'PO12', NULL, NULL),
(22368, '2014-1-60-017', 'CSE435', 2, 'spring', 2018, 'CO2', 13, 45.22, 'PO5', NULL, NULL),
(22369, '2014-1-60-017', 'CSE435', 2, 'spring', 2018, 'CO2', 13, 45.22, 'PO2', NULL, NULL),
(22370, '2014-1-60-017', 'CSE435', 2, 'spring', 2018, 'CO1', 21, 73.04, 'PO12', NULL, NULL),
(22371, '2014-1-60-017', 'CSE435', 2, 'spring', 2018, 'CO3', 15, 52.17, 'PO2', NULL, NULL),
(22372, '2014-1-60-017', 'CSE435', 2, 'spring', 2018, 'CO4', 2, 6.96, 'PO2', NULL, NULL),
(22373, '2014-1-60-017', 'CSE435', 2, 'spring', 2018, 'CO3', 15, 52.17, 'PO3', NULL, NULL),
(22374, '2014-1-60-017', 'CSE435', 2, 'spring', 2018, 'CO4', 2, 6.96, 'PO5', NULL, NULL),
(22375, '2014-1-60-017', 'CSE435', 2, 'spring', 2018, 'CO4', 2, 6.96, 'PO9', NULL, NULL),
(22376, '2014-1-60-017', 'CSE435', 2, 'spring', 2018, 'CO4', 2, 6.96, 'PO10', NULL, NULL),
(22377, '2014-1-60-018', 'CSE435', 2, 'Spring', 2018, 'CO2', 16, 55.65, 'PO12', NULL, NULL),
(22378, '2014-1-60-018', 'CSE435', 2, 'Spring', 2018, 'CO2', 16, 55.65, 'PO5', NULL, NULL),
(22379, '2014-1-60-018', 'CSE435', 2, 'Spring', 2018, 'CO2', 16, 55.65, 'PO2', NULL, NULL),
(22380, '2014-1-60-018', 'CSE435', 2, 'Spring', 2018, 'CO1', 26, 90.43, 'PO12', NULL, NULL),
(22381, '2014-1-60-018', 'CSE435', 2, 'Spring', 2018, 'CO3', 18, 62.61, 'PO2', NULL, NULL),
(22382, '2014-1-60-018', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22383, '2014-1-60-018', 'CSE435', 2, 'Spring', 2018, 'CO3', 18, 62.61, 'PO3', NULL, NULL),
(22384, '2014-1-60-018', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22385, '2014-1-60-018', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22386, '2014-1-60-018', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22387, '2014-1-60-019', 'CSE435', 2, 'spring', 2018, 'CO2', 17, 59.13, 'PO12', NULL, NULL),
(22388, '2014-1-60-019', 'CSE435', 2, 'spring', 2018, 'CO2', 17, 59.13, 'PO5', NULL, NULL),
(22389, '2014-1-60-019', 'CSE435', 2, 'spring', 2018, 'CO2', 17, 59.13, 'PO2', NULL, NULL),
(22390, '2014-1-60-019', 'CSE435', 2, 'spring', 2018, 'CO1', 29, 100.87, 'PO12', NULL, NULL),
(22391, '2014-1-60-019', 'CSE435', 2, 'spring', 2018, 'CO3', 19, 66.09, 'PO2', NULL, NULL),
(22392, '2014-1-60-019', 'CSE435', 2, 'spring', 2018, 'CO4', 2, 6.96, 'PO2', NULL, NULL),
(22393, '2014-1-60-019', 'CSE435', 2, 'spring', 2018, 'CO3', 19, 66.09, 'PO3', NULL, NULL),
(22394, '2014-1-60-019', 'CSE435', 2, 'spring', 2018, 'CO4', 2, 6.96, 'PO5', NULL, NULL),
(22395, '2014-1-60-019', 'CSE435', 2, 'spring', 2018, 'CO4', 2, 6.96, 'PO9', NULL, NULL),
(22396, '2014-1-60-019', 'CSE435', 2, 'spring', 2018, 'CO4', 2, 6.96, 'PO10', NULL, NULL),
(22397, '2014-1-60-020', 'CSE435', 2, 'Spring', 2018, 'CO2', 20, 69.57, 'PO12', NULL, NULL),
(22398, '2014-1-60-020', 'CSE435', 2, 'Spring', 2018, 'CO2', 20, 69.57, 'PO5', NULL, NULL),
(22399, '2014-1-60-020', 'CSE435', 2, 'Spring', 2018, 'CO2', 20, 69.57, 'PO2', NULL, NULL),
(22400, '2014-1-60-020', 'CSE435', 2, 'Spring', 2018, 'CO1', 33, 114.78, 'PO12', NULL, NULL),
(22401, '2014-1-60-020', 'CSE435', 2, 'Spring', 2018, 'CO3', 21, 73.04, 'PO2', NULL, NULL),
(22402, '2014-1-60-020', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22403, '2014-1-60-020', 'CSE435', 2, 'Spring', 2018, 'CO3', 21, 73.04, 'PO3', NULL, NULL),
(22404, '2014-1-60-020', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22405, '2014-1-60-020', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22406, '2014-1-60-020', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22407, '2014-1-60-021', 'CSE435', 2, 'spring', 2018, 'CO2', 12, 41.74, 'PO12', NULL, NULL),
(22408, '2014-1-60-021', 'CSE435', 2, 'spring', 2018, 'CO2', 12, 41.74, 'PO5', NULL, NULL),
(22409, '2014-1-60-021', 'CSE435', 2, 'spring', 2018, 'CO2', 12, 41.74, 'PO2', NULL, NULL),
(22410, '2014-1-60-021', 'CSE435', 2, 'spring', 2018, 'CO1', 23, 80, 'PO12', NULL, NULL),
(22411, '2014-1-60-021', 'CSE435', 2, 'spring', 2018, 'CO3', 14, 48.7, 'PO2', NULL, NULL),
(22412, '2014-1-60-021', 'CSE435', 2, 'spring', 2018, 'CO4', 2, 6.96, 'PO2', NULL, NULL),
(22413, '2014-1-60-021', 'CSE435', 2, 'spring', 2018, 'CO3', 14, 48.7, 'PO3', NULL, NULL),
(22414, '2014-1-60-021', 'CSE435', 2, 'spring', 2018, 'CO4', 2, 6.96, 'PO5', NULL, NULL),
(22415, '2014-1-60-021', 'CSE435', 2, 'spring', 2018, 'CO4', 2, 6.96, 'PO9', NULL, NULL),
(22416, '2014-1-60-021', 'CSE435', 2, 'spring', 2018, 'CO4', 2, 6.96, 'PO10', NULL, NULL),
(22417, '2014-1-60-022', 'CSE435', 2, 'Spring', 2018, 'CO2', 15, 52.17, 'PO12', NULL, NULL),
(22418, '2014-1-60-022', 'CSE435', 2, 'Spring', 2018, 'CO2', 15, 52.17, 'PO5', NULL, NULL),
(22419, '2014-1-60-022', 'CSE435', 2, 'Spring', 2018, 'CO2', 15, 52.17, 'PO2', NULL, NULL),
(22420, '2014-1-60-022', 'CSE435', 2, 'Spring', 2018, 'CO1', 28, 97.39, 'PO12', NULL, NULL),
(22421, '2014-1-60-022', 'CSE435', 2, 'Spring', 2018, 'CO3', 17, 59.13, 'PO2', NULL, NULL),
(22422, '2014-1-60-022', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22423, '2014-1-60-022', 'CSE435', 2, 'Spring', 2018, 'CO3', 17, 59.13, 'PO3', NULL, NULL),
(22424, '2014-1-60-022', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22425, '2014-1-60-022', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22426, '2014-1-60-022', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22427, '2014-1-60-023', 'CSE435', 2, 'spring', 2018, 'CO2', 9, 31.3, 'PO12', NULL, NULL),
(22428, '2014-1-60-023', 'CSE435', 2, 'spring', 2018, 'CO2', 9, 31.3, 'PO5', NULL, NULL),
(22429, '2014-1-60-023', 'CSE435', 2, 'spring', 2018, 'CO2', 9, 31.3, 'PO2', NULL, NULL),
(22430, '2014-1-60-023', 'CSE435', 2, 'spring', 2018, 'CO1', 16, 55.65, 'PO12', NULL, NULL),
(22431, '2014-1-60-023', 'CSE435', 2, 'spring', 2018, 'CO3', 10, 34.78, 'PO2', NULL, NULL),
(22432, '2014-1-60-023', 'CSE435', 2, 'spring', 2018, 'CO4', 2, 6.96, 'PO2', NULL, NULL),
(22433, '2014-1-60-023', 'CSE435', 2, 'spring', 2018, 'CO3', 10, 34.78, 'PO3', NULL, NULL),
(22434, '2014-1-60-023', 'CSE435', 2, 'spring', 2018, 'CO4', 2, 6.96, 'PO5', NULL, NULL),
(22435, '2014-1-60-023', 'CSE435', 2, 'spring', 2018, 'CO4', 2, 6.96, 'PO9', NULL, NULL),
(22436, '2014-1-60-023', 'CSE435', 2, 'spring', 2018, 'CO4', 2, 6.96, 'PO10', NULL, NULL),
(22437, '2014-1-60-024', 'CSE435', 2, 'Spring', 2018, 'CO2', 12, 41.74, 'PO12', NULL, NULL),
(22438, '2014-1-60-024', 'CSE435', 2, 'Spring', 2018, 'CO2', 12, 41.74, 'PO5', NULL, NULL),
(22439, '2014-1-60-024', 'CSE435', 2, 'Spring', 2018, 'CO2', 12, 41.74, 'PO2', NULL, NULL),
(22440, '2014-1-60-024', 'CSE435', 2, 'Spring', 2018, 'CO1', 21, 73.04, 'PO12', NULL, NULL),
(22441, '2014-1-60-024', 'CSE435', 2, 'Spring', 2018, 'CO3', 13, 45.22, 'PO2', NULL, NULL),
(22442, '2014-1-60-024', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22443, '2014-1-60-024', 'CSE435', 2, 'Spring', 2018, 'CO3', 13, 45.22, 'PO3', NULL, NULL),
(22444, '2014-1-60-024', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22445, '2014-1-60-024', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22446, '2014-1-60-024', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22447, '2014-1-60-025', 'CSE435', 2, 'spring', 2018, 'CO2', 13, 45.22, 'PO12', NULL, NULL),
(22448, '2014-1-60-025', 'CSE435', 2, 'spring', 2018, 'CO2', 13, 45.22, 'PO5', NULL, NULL),
(22449, '2014-1-60-025', 'CSE435', 2, 'spring', 2018, 'CO2', 13, 45.22, 'PO2', NULL, NULL),
(22450, '2014-1-60-025', 'CSE435', 2, 'spring', 2018, 'CO1', 25, 86.96, 'PO12', NULL, NULL),
(22451, '2014-1-60-025', 'CSE435', 2, 'spring', 2018, 'CO3', 15, 52.17, 'PO2', NULL, NULL),
(22452, '2014-1-60-025', 'CSE435', 2, 'spring', 2018, 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22453, '2014-1-60-025', 'CSE435', 2, 'spring', 2018, 'CO3', 15, 52.17, 'PO3', NULL, NULL),
(22454, '2014-1-60-025', 'CSE435', 2, 'spring', 2018, 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22455, '2014-1-60-025', 'CSE435', 2, 'spring', 2018, 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22456, '2014-1-60-025', 'CSE435', 2, 'spring', 2018, 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22457, '2014-1-60-026', 'CSE435', 2, 'Spring', 2018, 'CO2', 16, 55.65, 'PO12', NULL, NULL),
(22458, '2014-1-60-026', 'CSE435', 2, 'Spring', 2018, 'CO2', 16, 55.65, 'PO5', NULL, NULL),
(22459, '2014-1-60-026', 'CSE435', 2, 'Spring', 2018, 'CO2', 16, 55.65, 'PO2', NULL, NULL),
(22460, '2014-1-60-026', 'CSE435', 2, 'Spring', 2018, 'CO1', 24, 83.48, 'PO12', NULL, NULL),
(22461, '2014-1-60-026', 'CSE435', 2, 'Spring', 2018, 'CO3', 17, 59.13, 'PO2', NULL, NULL),
(22462, '2014-1-60-026', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22463, '2014-1-60-026', 'CSE435', 2, 'Spring', 2018, 'CO3', 17, 59.13, 'PO3', NULL, NULL),
(22464, '2014-1-60-026', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22465, '2014-1-60-026', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22466, '2014-1-60-026', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22467, '2014-1-60-027', 'CSE435', 2, 'spring', 2018, 'CO2', 18, 62.61, 'PO12', NULL, NULL),
(22468, '2014-1-60-027', 'CSE435', 2, 'spring', 2018, 'CO2', 18, 62.61, 'PO5', NULL, NULL),
(22469, '2014-1-60-027', 'CSE435', 2, 'spring', 2018, 'CO2', 18, 62.61, 'PO2', NULL, NULL),
(22470, '2014-1-60-027', 'CSE435', 2, 'spring', 2018, 'CO1', 28, 97.39, 'PO12', NULL, NULL),
(22471, '2014-1-60-027', 'CSE435', 2, 'spring', 2018, 'CO3', 19, 66.09, 'PO2', NULL, NULL),
(22472, '2014-1-60-027', 'CSE435', 2, 'spring', 2018, 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22473, '2014-1-60-027', 'CSE435', 2, 'spring', 2018, 'CO3', 19, 66.09, 'PO3', NULL, NULL),
(22474, '2014-1-60-027', 'CSE435', 2, 'spring', 2018, 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22475, '2014-1-60-027', 'CSE435', 2, 'spring', 2018, 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22476, '2014-1-60-027', 'CSE435', 2, 'spring', 2018, 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22477, '2014-1-60-028', 'CSE435', 2, 'Spring', 2018, 'CO2', 19, 66.09, 'PO12', NULL, NULL),
(22478, '2014-1-60-028', 'CSE435', 2, 'Spring', 2018, 'CO2', 19, 66.09, 'PO5', NULL, NULL),
(22479, '2014-1-60-028', 'CSE435', 2, 'Spring', 2018, 'CO2', 19, 66.09, 'PO2', NULL, NULL),
(22480, '2014-1-60-028', 'CSE435', 2, 'Spring', 2018, 'CO1', 24, 83.48, 'PO12', NULL, NULL),
(22481, '2014-1-60-028', 'CSE435', 2, 'Spring', 2018, 'CO3', 14, 48.7, 'PO2', NULL, NULL),
(22482, '2014-1-60-028', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22483, '2014-1-60-028', 'CSE435', 2, 'Spring', 2018, 'CO3', 14, 48.7, 'PO3', NULL, NULL),
(22484, '2014-1-60-028', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22485, '2014-1-60-028', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22486, '2014-1-60-028', 'CSE435', 2, 'Spring', 2018, 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22487, '2014-1-60-029', 'CSE435', 2, 'spring', 2018, 'CO2', NULL, NULL, 'PO12', NULL, NULL),
(22488, '2014-1-60-029', 'CSE435', 2, 'spring', 2018, 'CO2', NULL, NULL, 'PO5', NULL, NULL),
(22489, '2014-1-60-029', 'CSE435', 2, 'spring', 2018, 'CO2', NULL, NULL, 'PO2', NULL, NULL),
(22490, '2014-1-60-029', 'CSE435', 2, 'spring', 2018, 'CO1', NULL, NULL, 'PO12', NULL, NULL),
(22491, '2014-1-60-029', 'CSE435', 2, 'spring', 2018, 'CO3', NULL, NULL, 'PO2', NULL, NULL),
(22492, '2014-1-60-029', 'CSE435', 2, 'spring', 2018, 'CO4', NULL, NULL, 'PO2', NULL, NULL),
(22493, '2014-1-60-029', 'CSE435', 2, 'spring', 2018, 'CO3', NULL, NULL, 'PO3', NULL, NULL),
(22494, '2014-1-60-029', 'CSE435', 2, 'spring', 2018, 'CO4', NULL, NULL, 'PO5', NULL, NULL),
(22495, '2014-1-60-029', 'CSE435', 2, 'spring', 2018, 'CO4', NULL, NULL, 'PO9', NULL, NULL),
(22496, '2014-1-60-029', 'CSE435', 2, 'spring', 2018, 'CO4', NULL, NULL, 'PO10', NULL, NULL),
(22497, '2014-1-60-003', 'CSE435', 1, 'Spring', 2018, 'CO2', NULL, NULL, 'PO12', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22498, '2014-1-60-003', 'CSE435', 1, 'Spring', 2018, 'CO2', NULL, NULL, 'PO5', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22499, '2014-1-60-003', 'CSE435', 1, 'Spring', 2018, 'CO2', NULL, NULL, 'PO2', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22500, '2014-1-60-003', 'CSE435', 1, 'Spring', 2018, 'CO1', NULL, NULL, 'PO12', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22501, '2014-1-60-003', 'CSE435', 1, 'Spring', 2018, 'CO3', NULL, NULL, 'PO2', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22502, '2014-1-60-003', 'CSE435', 1, 'Spring', 2018, 'CO4', NULL, NULL, 'PO2', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22503, '2014-1-60-003', 'CSE435', 1, 'Spring', 2018, 'CO4', NULL, NULL, 'PO3', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22504, '2014-1-60-003', 'CSE435', 1, 'Spring', 2018, 'CO4', NULL, NULL, 'PO5', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22505, '2014-1-60-003', 'CSE435', 1, 'Spring', 2018, 'CO4', NULL, NULL, 'PO9', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22506, '2014-1-60-003', 'CSE435', 1, 'Spring', 2018, 'CO4', NULL, NULL, 'PO10', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22507, '2014-1-60-003', 'CSE435', 1, 'Spring', 2018, 'CO4', NULL, NULL, 'PO2', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22508, '2014-1-60-003', 'CSE435', 1, 'Spring', 2018, 'CO4', NULL, NULL, 'PO6', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22509, '2014-1-60-003', 'CSE435', 1, 'Spring', 2018, 'CO4', NULL, NULL, 'PO12', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22510, '2014-1-60-003', 'CSE435', 1, 'Spring', 2018, 'CO3', NULL, NULL, 'PO3', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22511, '2014-1-60-003', 'CSE435', 1, 'Spring', 2018, 'CO3', NULL, NULL, 'PO6', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22512, '2014-1-60-003', 'CSE435', 1, 'Spring', 2018, 'CO3', NULL, NULL, 'PO9', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22513, '2014-1-60-003', 'CSE435', 1, 'Spring', 2018, 'CO1', NULL, NULL, 'PO1', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22514, '2014-1-60-003', 'CSE435', 1, 'Spring', 2018, 'CO1', NULL, NULL, 'PO5', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22515, '2014-1-60-003', 'CSE435', 1, 'Spring', 2018, 'CO1', NULL, NULL, 'PO9', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22516, '2014-1-60-003', 'CSE435', 1, 'Spring', 2018, 'CO2', NULL, NULL, 'PO2', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22517, '2014-1-60-003', 'CSE435', 1, 'Spring', 2018, 'CO2', NULL, NULL, 'PO5', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22518, '2014-1-60-003', 'CSE435', 1, 'Spring', 2018, 'CO2', NULL, NULL, 'PO11', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10');

-- --------------------------------------------------------

--
-- Table structure for table `po`
--

CREATE TABLE IF NOT EXISTS `po` (
  `po_id` int(11) NOT NULL,
  `po_code` varchar(255) DEFAULT NULL,
  `po_text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `po`
--

INSERT INTO `po` (`po_id`, `po_code`, `po_text`) VALUES
(1, 'PO1', 'po');

-- --------------------------------------------------------

--
-- Table structure for table `po_according_to_co`
--

CREATE TABLE IF NOT EXISTS `po_according_to_co` (
  `id` int(11) NOT NULL,
  `s_id` varchar(100) NOT NULL,
  `course_code` varchar(100) NOT NULL,
  `sec_no` int(11) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `year` int(4) NOT NULL,
  `po` varchar(10) NOT NULL,
  `co` varchar(15) NOT NULL,
  `po_per` float DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7622 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `po_attainment`
--

CREATE TABLE IF NOT EXISTS `po_attainment` (
  `id` int(11) NOT NULL,
  `course_code` varchar(100) NOT NULL,
  `sec_no` int(11) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `year` int(4) NOT NULL,
  `po` varchar(15) DEFAULT NULL,
  `po_per` float DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `po_attainment_individual`
--

CREATE TABLE IF NOT EXISTS `po_attainment_individual` (
  `id` int(11) NOT NULL,
  `s_id` varchar(100) NOT NULL,
  `course_code` varchar(100) NOT NULL,
  `sec_no` int(11) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `year` int(4) NOT NULL,
  `po` varchar(10) NOT NULL,
  `po_per` float DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4045 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_processing`
--

CREATE TABLE IF NOT EXISTS `result_processing` (
  `id` int(11) NOT NULL,
  `marks` varchar(244) NOT NULL,
  `s_id` varchar(244) NOT NULL,
  `assigned_course_id` varchar(50) NOT NULL,
  `course_code` varchar(244) NOT NULL,
  `sec_no` varchar(244) NOT NULL,
  `semester` varchar(244) NOT NULL,
  `year` varchar(244) NOT NULL,
  `co_for_component` varchar(244) NOT NULL,
  `component` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result_processing`
--

INSERT INTO `result_processing` (`id`, `marks`, `s_id`, `assigned_course_id`, `course_code`, `sec_no`, `semester`, `year`, `co_for_component`, `component`) VALUES
(1, '5', '1', '2', 'CSC113', '2', 'Spring', '2022', 'CO1', 'ASSIGMENT 1');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE IF NOT EXISTS `semester` (
  `semester_id` int(11) NOT NULL,
  `semester` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`semester_id`, `semester`) VALUES
(1, 'Spring'),
(2, 'Fall'),
(3, 'Summer');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `course_code` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `sec_no` varchar(255) DEFAULT NULL,
  `semester` varchar(244) DEFAULT NULL,
  `year` varchar(244) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `course_code`, `grade`, `sec_no`, `semester`, `year`) VALUES
(1, 'Atif Jalal', 'CSC456', 'B+', '2', 'Spring', '2022'),
(2, 'Rehan tayyab', 'CSC456', 'A', '1', 'Spring', '2022'),
(3, 'Aadil Pervez', 'CSC456', 'C+', '2', 'Spring', '2022'),
(4, 'Mahnoor', 'CSC456', 'B-', '1', 'Spring', '2022'),
(5, 'Zain', 'CSC456', 'B+', '2', 'Spring', '2022'),
(6, 'Melhan', 'CSC407', 'a', '2', 'fall', '2022'),
(7, 'adiil', 'CSC456', 'a', '2', 'fall', '2022'),
(8, 'kisa', 'CSC407', 'a', '2', 'spring', '2022'),
(9, 'muneb', 'CSC407', 'b', '2', 'spring', '2022'),
(11, 'rehana', 'CSC407', 'b', '2', 'spring', '2022'),
(12, 'adila', 'CSC407', 'f', '8', 'spring', '2022'),
(13, 'naima', 'SEN220', 'f', '8', 'fall', '2022'),
(14, 'haider', 'SEN220', 'd', '1', 'fall', '2022'),
(15, 'asif', 'SEN220', 'd', '1', 'fall', '2022'),
(16, 'azan', 'CSC113', 'c', '2', 'fall', '2022'),
(17, 'faiq', 'ITC411', 'd', '3', 'spring', '2022'),
(18, 'sabooor', 'CSC456', 'c', '2', 'fall', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `student_enrollment`
--

CREATE TABLE IF NOT EXISTS `student_enrollment` (
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `st_en`
--

CREATE TABLE IF NOT EXISTS `st_en` (
  `id` int(11) NOT NULL,
  `s_id` varchar(244) DEFAULT NULL,
  `assigned_course_id` varchar(244) DEFAULT NULL,
  `name` varchar(244) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `st_en`
--

INSERT INTO `st_en` (`id`, `s_id`, `assigned_course_id`, `name`) VALUES
(1, '2', '1', 'Book1.xlsx');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE IF NOT EXISTS `user_type` (
  `user_type_id` int(11) NOT NULL,
  `user_type` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`user_type_id`, `user_type`) VALUES
(1, 'faculty');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_type_id`);

--
-- Indexes for table `assigned_course`
--
ALTER TABLE `assigned_course`
  ADD PRIMARY KEY (`assigned_course_id`);

--
-- Indexes for table `co`
--
ALTER TABLE `co`
  ADD PRIMARY KEY (`co_id`);

--
-- Indexes for table `comp`
--
ALTER TABLE `comp`
  ADD PRIMARY KEY (`comp_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `course_outcome`
--
ALTER TABLE `course_outcome`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `co_attainment`
--
ALTER TABLE `co_attainment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `co_attainment_individual`
--
ALTER TABLE `co_attainment_individual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `mapping`
--
ALTER TABLE `mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks_component`
--
ALTER TABLE `marks_component`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks_dist`
--
ALTER TABLE `marks_dist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks_distribution`
--
ALTER TABLE `marks_distribution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offered_course`
--
ALTER TABLE `offered_course`
  ADD PRIMARY KEY (`offered_course_id`);

--
-- Indexes for table `percent_of_co`
--
ALTER TABLE `percent_of_co`
  ADD PRIMARY KEY (`id`,`s_id`);

--
-- Indexes for table `po`
--
ALTER TABLE `po`
  ADD PRIMARY KEY (`po_id`);

--
-- Indexes for table `po_according_to_co`
--
ALTER TABLE `po_according_to_co`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `po_attainment`
--
ALTER TABLE `po_attainment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `po_attainment_individual`
--
ALTER TABLE `po_attainment_individual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_processing`
--
ALTER TABLE `result_processing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`semester_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `st_en`
--
ALTER TABLE `st_en`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`user_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `assigned_course`
--
ALTER TABLE `assigned_course`
  MODIFY `assigned_course_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `co`
--
ALTER TABLE `co`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `comp`
--
ALTER TABLE `comp`
  MODIFY `comp_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `course_outcome`
--
ALTER TABLE `course_outcome`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `co_attainment`
--
ALTER TABLE `co_attainment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `co_attainment_individual`
--
ALTER TABLE `co_attainment_individual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1194519;
--
-- AUTO_INCREMENT for table `dept`
--
ALTER TABLE `dept`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `mapping`
--
ALTER TABLE `mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `marks_component`
--
ALTER TABLE `marks_component`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `marks_dist`
--
ALTER TABLE `marks_dist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `marks_distribution`
--
ALTER TABLE `marks_distribution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `offered_course`
--
ALTER TABLE `offered_course`
  MODIFY `offered_course_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `percent_of_co`
--
ALTER TABLE `percent_of_co`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22519;
--
-- AUTO_INCREMENT for table `po`
--
ALTER TABLE `po`
  MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `po_according_to_co`
--
ALTER TABLE `po_according_to_co`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7622;
--
-- AUTO_INCREMENT for table `po_attainment`
--
ALTER TABLE `po_attainment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `po_attainment_individual`
--
ALTER TABLE `po_attainment_individual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4045;
--
-- AUTO_INCREMENT for table `result_processing`
--
ALTER TABLE `result_processing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `semester_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `st_en`
--
ALTER TABLE `st_en`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
