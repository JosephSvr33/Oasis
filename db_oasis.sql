-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2020 at 12:10 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_oasis`
--

-- --------------------------------------------------------

--
-- Table structure for table `addquestion_tbl`
--

CREATE TABLE `addquestion_tbl` (
  `q_id` int(11) NOT NULL,
  `fac_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `module` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL,
  `Question` varchar(500) NOT NULL,
  `Answer` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addquestion_tbl`
--

INSERT INTO `addquestion_tbl` (`q_id`, `fac_id`, `course_id`, `module`, `date`, `status`, `Question`, `Answer`) VALUES
(4, 7, 1, 2, '2020-05-10', 0, '<p>123</p>\r\n', '<p>123</p>\r\n'),
(5, 7, 1, 2, '2020-05-10', 0, '<p>What is Communication ?</p>\r\n', '<p>Communication is&hellip;.</p>\r\n'),
(6, 7, 1, 3, '2020-05-10', 0, '<p>test</p>\r\n', '<p>test</p>\r\n'),
(7, 7, 1, 1, '2020-05-10', 0, '<p>test</p>\r\n', '<p>test</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `batch_tbl`
--

CREATE TABLE `batch_tbl` (
  `bth_id` int(11) NOT NULL,
  `bth_name` varchar(50) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `affiliation` varchar(10) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `batch_tbl`
--

INSERT INTO `batch_tbl` (`bth_id`, `bth_name`, `dept_id`, `affiliation`, `status`) VALUES
(1, 'Lateral Entry ', 1, 'KTU', 1),
(2, 'Regular', 1, 'KTU', 1),
(3, 'Integrated Mca', 1, 'KTU', 1),
(4, 'DD Mca', 1, 'MG', 1),
(5, 'Lateral Entry', 1, 'MG', 0),
(6, 'Regular Mca', 1, 'MG', 0),
(7, 'testBatch', 1, 'KTU', 0);

-- --------------------------------------------------------

--
-- Table structure for table `certuploader_tbl`
--

CREATE TABLE `certuploader_tbl` (
  `id` int(11) NOT NULL,
  `title` varchar(25) NOT NULL,
  `path` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `certuploader_tbl`
--

INSERT INTO `certuploader_tbl` (`id`, `title`, `path`, `status`) VALUES
(1, 'img', '../CertUploads/33174445f4ba9952cecd47e92feed022.jpg', 0),
(2, 'img2', '../CertUploads/b774163d8ad52f43f91789370206a60c.jpg', 0),
(3, 'tee', '../CertUploads/c18666989b066dbfae006e766b7d1623.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `complaint_tbl`
--

CREATE TABLE `complaint_tbl` (
  `com_id` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `complaint` varchar(200) NOT NULL,
  `regDate` date NOT NULL,
  `status` int(11) NOT NULL,
  `stu_email` varchar(25) NOT NULL,
  `remark` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaint_tbl`
--

INSERT INTO `complaint_tbl` (`com_id`, `typeid`, `title`, `complaint`, `regDate`, `status`, `stu_email`, `remark`) VALUES
(1, 2, 'Wifi not working', 'Wifi not working properly', '2020-04-30', 0, 'S1010', '');

-- --------------------------------------------------------

--
-- Table structure for table `courseassign_tbl`
--

CREATE TABLE `courseassign_tbl` (
  `assign_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `sem` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courseassign_tbl`
--

INSERT INTO `courseassign_tbl` (`assign_id`, `pro_id`, `sem`, `course_id`, `status`) VALUES
(1, 4, 1, 1, 1),
(2, 4, 1, 2, 1),
(3, 3, 3, 1, 1),
(4, 3, 3, 2, 1),
(5, 6, 7, 2, 1),
(6, 6, 7, 1, 1),
(7, 4, 1, 3, 1),
(8, 4, 1, 4, 1),
(9, 4, 1, 5, 1),
(10, 4, 2, 6, 1),
(11, 4, 2, 7, 1),
(12, 4, 2, 8, 1),
(13, 4, 2, 9, 1),
(14, 4, 2, 10, 1),
(15, 4, 3, 11, 1),
(16, 4, 3, 12, 1),
(17, 4, 3, 13, 1),
(18, 4, 3, 14, 1),
(19, 4, 3, 15, 1),
(20, 4, 3, 16, 1),
(21, 4, 4, 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `coursefac_tbl`
--

CREATE TABLE `coursefac_tbl` (
  `ass_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `fac_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coursefac_tbl`
--

INSERT INTO `coursefac_tbl` (`ass_id`, `course_id`, `fac_id`, `pro_id`, `status`) VALUES
(1, 1, 7, 4, 1),
(2, 2, 10, 4, 1),
(3, 4, 14, 3, 1),
(4, 17, 18, 4, 1),
(5, 5, 19, 4, 1),
(6, 3, 22, 4, 1),
(7, 14, 10, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `coursematerial_tbl`
--

CREATE TABLE `coursematerial_tbl` (
  `m_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `fac_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `path` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coursematerial_tbl`
--

INSERT INTO `coursematerial_tbl` (`m_id`, `course_id`, `fac_id`, `title`, `path`, `status`) VALUES
(1, 0, 0, '', '../Course/courseMaterial/b17708fd0157733f4240026ab7813576.png', 1),
(2, 1, 0, 'img', '../Course/courseMaterial/5090a5e1d1d6e79b98ff21c93ebcf7b8.png', 1),
(3, 1, 7, 'test', '../Course/courseMaterial/84714bbbce9fe15c344d0916513c82d9.png', 1),
(4, 1, 7, 'test', '../Course/courseMaterial/120a9a3a85efe856215dc8ef8fa4c275.docx', 1),
(5, 1, 7, 'test', '../Course/courseMaterial/a1c0b1555eea5ff07e587a8d59d6574f.pdf', 1),
(6, 1, 7, 'test', '../Course/courseMaterial/ef1da34b4c66bcd4312def2835aa0404.pdf', 1),
(7, 1, 27, 'module', '../Course/courseMaterial/3d04ec2e8a81ec40bb28d6a6a0d7b93b.docx', 1),
(8, 2, 5, 'test', '../Course/courseMaterial/838bc6561e171781b6d795cb31571dde.pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_tbl`
--

CREATE TABLE `course_tbl` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `course_code` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_tbl`
--

INSERT INTO `course_tbl` (`course_id`, `course_name`, `course_code`, `status`) VALUES
(1, 'Computer Network', 'RLMCA 201', 1),
(2, 'Software Engineering', 'RLMCA 203', 1),
(3, 'Web Programming', 'RLMCA205', 1),
(4, 'Database Management System', 'RLMCA207', 1),
(5, 'Design and Analysis of Algorithm', 'RLMCA209', 1),
(6, 'Application Development and Maintanance', 'RLMCA202', 1),
(7, 'Advanced Database System', 'RLMCA204', 1),
(8, 'Big Data', 'RLMCA206', 1),
(9, 'Machine Learning', 'RLMCA208', 1),
(10, 'Mobile Computing', 'RLMCA210', 1),
(11, 'Web Data Mining', 'RLMCA303', 1),
(12, 'Ecommerce', 'RLMCA301', 1),
(13, 'Cryptography and Cyber Security', 'RLMCA305', 1),
(14, 'Python Programming', 'RLMCA307', 1),
(15, 'Cloud Computing', 'RLMCA369', 1),
(16, 'Mini Project and Seminar', 'RLMCA381', 1),
(17, 'Project and VivaVoice', 'RLMCA401', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dept_tbl`
--

CREATE TABLE `dept_tbl` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dept_tbl`
--

INSERT INTO `dept_tbl` (`dept_id`, `dept_name`, `status`) VALUES
(1, 'Master of Computer Application', 1),
(2, 'Computer Science and Engineering', 1),
(3, 'Information Technology', 1),
(4, 'test', 0),
(5, 'testDepartment', 1);

-- --------------------------------------------------------

--
-- Table structure for table `desig_tbl`
--

CREATE TABLE `desig_tbl` (
  `desig_ig` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `desig` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desig_tbl`
--

INSERT INTO `desig_tbl` (`desig_ig`, `dept_id`, `desig`) VALUES
(1, 1, 'Associate Professor'),
(2, 1, 'Assistant Professor'),
(3, 1, 'Head Of Department'),
(4, 1, 'Lab Instructor');

-- --------------------------------------------------------

--
-- Table structure for table `examadd_tbl`
--

CREATE TABLE `examadd_tbl` (
  `add_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `comment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `examadd_tbl`
--

INSERT INTO `examadd_tbl` (`add_id`, `type_id`, `comment`) VALUES
(1, 3, 'Module Test'),
(2, 1, 'First Series Exam'),
(3, 6, 'University Semester Exam'),
(4, 2, 'Second Series');

-- --------------------------------------------------------

--
-- Table structure for table `exammark_tbl`
--

CREATE TABLE `exammark_tbl` (
  `mark_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `stu_id` int(11) NOT NULL,
  `mark` int(11) NOT NULL,
  `dateUploaded` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exammark_tbl`
--

INSERT INTO `exammark_tbl` (`mark_id`, `exam_id`, `pro_id`, `course_id`, `stu_id`, `mark`, `dateUploaded`, `status`) VALUES
(1, 7, 4, 1, 1, 15, '2020-05-26', 1),
(2, 7, 4, 1, 2, 15, '2020-05-26', 1),
(3, 7, 4, 1, 3, 15, '2020-05-26', 1),
(4, 7, 4, 1, 4, 15, '2020-05-26', 1),
(5, 7, 4, 1, 5, 15, '2020-05-26', 1),
(6, 7, 4, 1, 26, 15, '2020-05-26', 1),
(7, 7, 4, 1, 27, 15, '2020-05-26', 1),
(8, 7, 4, 1, 28, 15, '2020-05-26', 1),
(9, 7, 4, 1, 40, 15, '2020-05-26', 1),
(10, 7, 4, 1, 41, 15, '2020-05-26', 1),
(11, 2, 4, 1, 1, 10, '2020-05-26', 1),
(12, 2, 4, 1, 2, 10, '2020-05-26', 1),
(13, 2, 4, 1, 3, 10, '2020-05-26', 1),
(14, 2, 4, 1, 4, 10, '2020-05-26', 1),
(15, 2, 4, 1, 5, 10, '2020-05-26', 1),
(16, 2, 4, 1, 26, 10, '2020-05-26', 1),
(17, 2, 4, 1, 27, 10, '2020-05-26', 1),
(18, 2, 4, 1, 28, 10, '2020-05-26', 1),
(19, 2, 4, 1, 40, 10, '2020-05-26', 1),
(20, 2, 4, 1, 41, 10, '2020-05-26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `examschedule_tbl`
--

CREATE TABLE `examschedule_tbl` (
  `sch_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `course_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `examschedule_tbl`
--

INSERT INTO `examschedule_tbl` (`sch_id`, `type_id`, `date`, `remarks`, `course_id`, `status`) VALUES
(2, 3, '2020-05-12', 'First Module Test', 1, 1),
(3, 3, '2020-05-12', 'First Module Test', 2, 0),
(4, 3, '2020-05-13', 'First Module Test', 3, 0),
(5, 3, '2020-05-14', 'First Module Test', 4, 0),
(6, 3, '2020-05-13', 'First Module Test', 5, 0),
(7, 1, '2020-05-20', 'First Series Exam', 1, 1),
(8, 2, '2020-06-22', 'Second series Exam', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `examtype_tbl`
--

CREATE TABLE `examtype_tbl` (
  `type_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `examtype_tbl`
--

INSERT INTO `examtype_tbl` (`type_id`, `type`, `status`) VALUES
(1, 'Internal Exam - Series I', 1),
(2, 'Internal Exam - Series II', 1),
(3, 'Module Test', 1),
(4, 'Weekly Test', 1),
(5, 'Monthly Test', 1),
(6, 'End Semester Exam', 1),
(7, 'Other Valuation Test', 1);

-- --------------------------------------------------------

--
-- Table structure for table `facleave_tbl`
--

CREATE TABLE `facleave_tbl` (
  `id` int(11) NOT NULL,
  `fac_email` varchar(150) NOT NULL,
  `reason` varchar(150) NOT NULL,
  `dates` varchar(100) NOT NULL,
  `requestDate` date NOT NULL,
  `Comment` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facleave_tbl`
--

INSERT INTO `facleave_tbl` (`id`, `fac_email`, `reason`, `dates`, `requestDate`, `Comment`, `status`) VALUES
(1, 'EP125', 'Headache', '2020-05-04', '2020-05-01', 'Feeling headache', 0),
(2, 'EP108', 'test leave', '2020-05-04', '2020-05-01', 'test', 0);

-- --------------------------------------------------------

--
-- Table structure for table `facpunch_tbl`
--

CREATE TABLE `facpunch_tbl` (
  `pid` int(11) NOT NULL,
  `regid` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp(),
  `inserted` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facpunch_tbl`
--

INSERT INTO `facpunch_tbl` (`pid`, `regid`, `date`, `status`, `lastUpdated`, `inserted`) VALUES
(18, '11123', '2020-03-27', 1, '2020-03-27 06:33:53', '2020-03-27 11:59:00'),
(20, '11065', '2020-03-27', 0, '2020-03-27 06:32:01', '2020-03-27 12:01:19'),
(21, '11123', '2020-04-17', 1, '2020-04-17 07:41:15', '2020-04-17 13:11:15'),
(22, '11123', '2020-04-20', 1, '2020-04-20 05:54:17', '2020-04-20 11:24:17'),
(23, 'AJC0E5ea473e0a1b20', '2020-07-13', 1, '2020-07-13 01:27:28', '2020-07-13 06:57:28'),
(24, 'AJC0E5ea478ea4a121', '2020-07-13', 1, '2020-07-13 04:59:57', '2020-07-13 10:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `facultytest_tbl`
--

CREATE TABLE `facultytest_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `img` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facultytest_tbl`
--

INSERT INTO `facultytest_tbl` (`id`, `name`, `regno`, `img`, `status`) VALUES
(1, 'Sooraj', '11123', '11123.jpg', 0),
(2, 'Abey Shaji', '11061', '11061.jpg', 0),
(3, 'Kiran', '11097', '', 0),
(4, 'Amjatha P I', '11065', '11065.jpg', 0),
(5, 'Abin Jose', '11062', '11062.jpg', 0),
(6, 'Amal Augustine', '11064', '11064.jpg', 0),
(7, 'Antony Jacob', '11055', '11055.jpg', 0),
(8, 'Haritha', '11057', '11057.jpg', 0),
(9, 'Ancy John', '11066', '11066.jpg', 0),
(10, 'Angel Mathew', '11067', '11067.jpg', 0),
(11, 'Anjaly George', '11070', '11070.jpg', 0),
(12, 'Anju Joseph', '11071', '11071.jpg', 0),
(13, 'Anju T Shaju', '11073', '11073.jpg', 0),
(14, 'Arjun M', '11075', '11075.jpg', 0),
(15, 'Arya B', '11076', '11076.jpg', 0),
(16, 'Arya', '11077', '11077.jpg', 0),
(17, 'Ashbin', '11079', '11079.jpg', 0),
(18, 'Ashwaty', '11080', '11080.jpg', 0),
(19, 'Bency', '11081', '11081.jpg', 0),
(20, 'Chinchu', '11082', '11082.jpg', 0),
(21, 'Daniya', '11083', '11083.jpg', 0),
(22, 'Dija', '11084', '11084.jpg', 0),
(23, 'Emily', '11086', '11086.jpg', 0),
(24, 'Feba', '11087', '11087.jpg', 0),
(25, 'Georgin', '11088', '11088.jpg', 0),
(26, 'Indraja', '11091', '11091.jpg', 0),
(27, 'Jeffin', '11093', '11093.jpg', 0),
(28, 'Jefin', '11094', '11094.jpg', 0),
(29, 'Jilcy', '11095', '11095.jpg', 0),
(30, 'Lakshya', '11099', '11099.jpg', 0),
(31, 'Leo', '11100', '11100.jpg', 0),
(32, 'Litty', '11101', '11101.jpg', 0),
(33, 'Maria', '11102', '11102.jpg', 0),
(34, 'Meenu', '11103', '11103.jpg', 0),
(35, 'Nubina', '11108', '11108.jpg', 0),
(36, 'Priya', '11110', '11110.jpg', 0),
(37, 'Ragin', '11111', '11111.jpg', 0),
(38, 'Rincy', '11114', '11114.jpg', 0),
(39, 'Rini', '11115', '11115.jpg', 0),
(40, 'Rinu', '11116', '11116.jpg', 0),
(41, 'Shani', '11120', '11120.jpg', 0),
(42, 'Susan', '11127', '11127.jpg', 0),
(43, 'Tikku', '11128', '11128.jpg', 0),
(44, 'Sreelakshmi', '11184', '11184.jpg', 0),
(45, 'Archana', '11185', '11185.jpg', 0),
(46, 'Suby', '11194', '11194.jpg', 0),
(47, 'Sofi', '11195', '11195.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_tbl`
--

CREATE TABLE `faculty_tbl` (
  `fac_id` int(11) NOT NULL,
  `fac_name` varchar(25) NOT NULL,
  `fac_phno` varchar(10) NOT NULL,
  `fac_email` varchar(25) NOT NULL,
  `fac_gender` varchar(10) NOT NULL,
  `fac_dob` date NOT NULL,
  `fac_qualify` int(11) NOT NULL,
  `fac_role` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `fac_address` varchar(50) NOT NULL,
  `fac_city` varchar(25) NOT NULL,
  `fac_dist` varchar(20) NOT NULL,
  `fac_state` varchar(20) NOT NULL,
  `fac_country` varchar(20) NOT NULL,
  `fac_pin` int(11) NOT NULL,
  `fac_status` int(11) NOT NULL,
  `empno` varchar(200) NOT NULL,
  `fac_img` varchar(200) NOT NULL,
  `accessno` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty_tbl`
--

INSERT INTO `faculty_tbl` (`fac_id`, `fac_name`, `fac_phno`, `fac_email`, `fac_gender`, `fac_dob`, `fac_qualify`, `fac_role`, `dept_id`, `fac_address`, `fac_city`, `fac_dist`, `fac_state`, `fac_country`, `fac_pin`, `fac_status`, `empno`, `fac_img`, `accessno`) VALUES
(3, 'test', '8289955543', 'qqq@qq.qq', 'female', '0000-00-00', 1, 1, 1, 'test', 'test', 'Idukki', 'Kerala', 'India', 123456, 0, 'AJC0E5ea1e5d9508fb', '../staffUploads/f6c3b41522ac7dacd39e7963bce0219f.jpg', 'EP101'),
(4, 'Anoop G', '9847987585', 'anoop@amaljyothi.in', 'male', '1997-10-22', 1, 4, 1, 'MELANNOOR KAROTTU, PANAMATTAM, ELAMGULAM,', 'KANJIRAPPALLY', 'Kottayam', 'Kerala', 'India', 686522, 1, 'AJC0E5ea1f3138a696', '../staffUploads/b8fa44689dbf312fc2a4accf88c61e5c.jpg', 'EP102'),
(5, 'Fr Rubin Thottupurathu', '8289955543', 'rubinjose@amaljyothi.in', 'male', '1997-10-22', 5, 3, 1, 'test', 'test', 'Kottayam', 'Kerala', 'India', 683102, 1, 'AJC0E5ea473e0a1b20', '../staffUploads/05d02cedf02185ca06272e5857a10261.jpg', 'EP103'),
(6, 'Dr Juby Mathew', '8289955543', 'juby@ajce.in', 'male', '1997-10-22', 5, 1, 1, 'Pallivathukal, Chathenthara P.O, Kollamula', 'Ranni', 'Pathanamthitta', 'Kerala', 'India', 686510, 1, 'AJC0E5ea475d9060c7', '../staffUploads/2d5ab1cace4ee646e4cedb87f173a37e.jpg', 'EP104'),
(7, 'Jobin T J', '8289955543', 'jobin@ajce.in', 'male', '1997-10-22', 3, 2, 1, 'Thekkevayalil, Koovappally P O', 'KANJIRAPPALLY', 'Kottayam', 'Kerala', 'India', 686518, 1, 'AJC0E5ea476700b284', '../staffUploads/ce42cb0eaabde4215fed5c8b1fbf6e84.jpg', 'EP105'),
(8, 'Merin Manoj', '8289955543', 'merin@ajce.in', 'female', '1997-10-22', 3, 2, 1, 'Thadathel, Cheruvally', 'KANJIRAPPALLY', 'Kottayam', 'Kerala', 'India', 686543, 0, 'AJC0E5ea47737bfa9b', '../staffUploads/122a13724211fe48a5eb5dd1586e12d8.jpg', 'EP106'),
(9, 'Lisha Varghese', '8289955543', 'lisha@ajce.in', 'female', '1997-10-22', 3, 2, 1, 'OLICKAL, PATTITHANAM', 'KANAKKARY', 'Kottayam', 'Kerala', 'India', 686631, 1, 'AJC0E5ea477d742946', '../staffUploads/bbc9d9ff12c7b7573151d0323bc0d7bd.jpg', 'EP107'),
(10, 'Sr Elsin Chakkalackal S H', '8289955543', 'elsin@ajce.in', 'female', '1997-10-22', 2, 2, 1, 'S.H Provincial House ', 'KANJIRAPPALLY', 'Kottayam', 'Kerala', 'India', 686512, 1, 'AJC0E5ea4785714235', '../staffUploads/1e4b884dd14ab6fd71692c1d9781b2d0.jpg', 'EP108'),
(11, 'Ajith G S', '8289955543', 'ajith@ajce.in', 'male', '1997-10-22', 3, 2, 1, 'GOLULAM, PAYIKUZHI, OACHIRA', 'KARUNAGAPALLY', 'Kollam', 'Kerala', 'India', 690526, 1, 'AJC0E5ea478ea4a121', '../staffUploads/472c96798d9d80b6f6fcbbd3dba05d53.png', 'EP109'),
(12, 'Shelly Shiju George', '8289955543', 'shelly@ajce.in', 'female', '1997-10-22', 2, 2, 1, 'Mullaseril House, Thiruvalla, Nedumpurom', 'Thiruvalla', 'Pathanamthitta', 'Kerala', 'India', 689110, 0, 'AJC0E5ea4799c55216', '../staffUploads/ec939f28eb85cf86a653e4be43927e94.png', 'EP110'),
(13, 'Jinson Devis', '8289955543', 'jinson@ajce.in', 'male', '1997-10-22', 2, 2, 1, 'Maliekal, Kidangoor South P O', 'Kidangoor', 'Kottayam', 'Kerala', 'India', 686583, 0, 'AJC0E5ea47a1c5236e', '../staffUploads/f2b143ce181de202b92d42ec33dd444f.jpg', 'EP111'),
(14, 'Jetty Benjamin', '8289955543', 'jetty@ajce.in', 'female', '1997-10-22', 1, 2, 1, 'test', 'Kottayam', 'Kottayam', 'Kerala', 'India', 686510, 1, 'AJC0E5ea47a81e0de8', '../staffUploads/fbc55b30a10772b280adf1997e7c4f42.jpg', 'EP112'),
(15, 'Gloriya Mathew', '8289955543', 'gloriya@ajce.in', 'female', '1997-10-22', 3, 2, 1, 'Muthiyaparayil(H), Kanjirappally. P.O', 'KANJIRAPPALLY', 'Kottayam', 'Kerala', 'India', 656507, 0, 'AJC0E5ea47b1b9f18a', '../staffUploads/2425549cbd40bd5c104ddeb17658968d.jpg', 'EP113'),
(16, 'Anit James', '8289955543', 'anit@ajce.in', 'female', '1997-10-22', 1, 2, 1, 'Kudakaparambil House, Chinnar , Upputhara', 'Peermadu', 'Idukki', 'Kerala', 'India', 685502, 0, 'AJC0E5ea47b861cf20', '../staffUploads/301bc3fd11e629de7080553093e43762.jpg', 'EP114'),
(17, 'Sona Maria Sebastian', '8289955543', 'sona@ajce.in', 'female', '1997-10-22', 1, 2, 1, 'Chirackalakath H, Koovappally P.O Kulapuram', 'KANJIRAPPALLY', 'Kottayam', 'Kerala', 'India', 686518, 0, 'AJC0E5ea47bf0b09cf', '../staffUploads/c6cc6e16a679b64cf7c6ca06b1a5598f.jpg', 'EP115'),
(18, 'Teenu V Therese', '8289955543', 'teenu@ajce.in', 'female', '1997-10-22', 1, 2, 1, 'OLICKAL HOUSE, ANAKKAL P.O, PONMALA', 'KANJIRAPPALLY', 'Kottayam', 'Kerala', 'India', 686508, 1, 'AJC0E5ea47c63cadfa', '../staffUploads/369db5143ccdb340cf3354c9e094e03a.jpg', 'EP116'),
(19, 'Sruthimol Kurian', '8289955543', 'sruthimol@ajce.in', 'female', '1997-10-22', 1, 2, 1, 'KUTTICKATTUPARAMBIL, VIZHIKKITHODU P.O', 'KANJIRAPPALLY', 'Kottayam', 'Kerala', 'India', 686518, 1, 'AJC0E5ea47cdf2b3b2', '../staffUploads/1877e62306ddab3703aa2e09f97ff7ce.jpg', 'EP117'),
(20, 'Nimmy Francis', '8289955543', 'nimmy@ajce.in', 'female', '1997-10-22', 1, 2, 1, 'EANTHUMTHOTTATHIL, KIZHAKKUM BHAGAM,', 'ETTUMANOOR', 'Kottayam', 'Kerala', 'India', 686631, 0, 'AJC0E5ea47d9de7276', '../staffUploads/49e835606a28bc21d3fdeebea6f04e8a.jpg', 'EP118'),
(21, 'Navyamol K T', '8289955543', 'navyamol@ajce.in', 'female', '1997-10-22', 1, 2, 1, 'CHARIVUPARAMBIL, MUNDAKAYAM P O', 'KANJIRAPPALLY', 'Kottayam', 'Kerala', 'India', 686513, 0, 'AJC0E5ea47e290494c', '../staffUploads/beaad7f494eac20cfff76564dd193db7.jpg', 'EP119'),
(22, 'Grace Joseph', '8289955543', 'grace@ajce.in', 'female', '1997-10-22', 1, 2, 1, 'test', 'Kattapana', 'Idukki', 'Kerala', 'India', 686502, 1, 'AJC0E5ea47ea7669bf', '../staffUploads/5b0301adde87c62f3c34e6cc4a6f6c04.jpg', 'EP120'),
(23, 'Rony Tom', '8289955543', 'rony@ajce.in', 'male', '1997-10-22', 1, 2, 1, 'Elanjimattom House, Thampalakkadu PO', 'KANJIRAPPALLY', 'Kottayam', 'Kerala', 'India', 686506, 0, 'AJC0E5ea47f1d6b866', '../staffUploads/f12bcebea34bb1cd4f902942e2b63526.jpg', 'EP121'),
(24, 'Binumon Joseph', '8289955543', 'binumon@ajce.in', 'male', '1997-10-22', 1, 2, 1, 'Kuttippalackal, Vellaramkunnu', 'Peermadu', 'Idukki', 'Kerala', 'India', 685535, 1, 'AJC0E5ea47f7fb04d0', '../staffUploads/8f68098dc7babe582808eadaf497dd2e.jpg', 'EP122'),
(25, 'Meera Rose Mathew', '8289955543', 'meera@ajce.in', 'female', '1997-10-22', 1, 2, 1, 'Chackalayil House, Poovanthuruthu P.O', 'Kottayam', 'Kottayam', 'Kerala', 'India', 686012, 1, 'AJC0E5ea480038b36a', '../staffUploads/3b4f1d0325189a9c44bf7313641b5fea.jpg', 'EP123'),
(26, 'Ginumol Joseph', '8289955543', 'ginumol@ajce.in', 'female', '1997-10-22', 1, 2, 1, 'Kaithavana(H), Sasthanada p.o, Anavilasam', 'Udumbanchola', 'Idukki', 'Kerala', 'India', 685535, 1, 'AJC0E5ea4808cb4e67', '../staffUploads/74096ef98c7beee1bcd71da3f5e2f8a0.jpg', 'EP124'),
(27, 'Rini Kurian', '8289955543', 'rini@ajce.in', 'female', '1997-10-22', 1, 2, 1, 'Thaivelikkakom ,Vattayal Ward, Thiruvampady', 'Ambalappuzha', 'Alappuzha', 'Kerala', 'India', 688002, 1, 'AJC0E5ea4811e473e1', '../staffUploads/ccdf66bede75b8eeef40c8cbd4b5692e.jpg', 'EP125');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_tbl`
--

CREATE TABLE `feedback_tbl` (
  `feedback_id` int(11) NOT NULL,
  `stu_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `feedback` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback_tbl`
--

INSERT INTO `feedback_tbl` (`feedback_id`, `stu_id`, `course_id`, `feedback`) VALUES
(1, 40, 17, 'feedback');

-- --------------------------------------------------------

--
-- Table structure for table `feepayment_tbl`
--

CREATE TABLE `feepayment_tbl` (
  `payment_id` int(11) NOT NULL,
  `order_id` varchar(25) NOT NULL,
  `txnid` varchar(50) NOT NULL,
  `txndate` date NOT NULL,
  `txnstatus` varchar(50) NOT NULL,
  `banktxnid` varchar(50) NOT NULL,
  `stu_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feepayment_tbl`
--

INSERT INTO `feepayment_tbl` (`payment_id`, `order_id`, `txnid`, `txndate`, `txnstatus`, `banktxnid`, `stu_id`, `date`, `status`) VALUES
(1, 'orderId', '20200712111212800110168114801697517', '2020-07-12', 'TXN_SUCCESS', '777001113878682', 40, '2020-07-12', 1),
(2, 'orderId', '20200712111212800110168526201744469', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(3, 'orderId', '20200712111212800110168526201744469', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(4, 'orderId', '20200712111212800110168526201744469', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(5, 'orderId', '20200712111212800110168526201744469', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(6, 'orderId', '20200712111212800110168526201744469', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(7, 'orderId', '20200712111212800110168526201744469', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(8, 'orderId', '20200712111212800110168526201744469', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(9, 'orderId', '20200712111212800110168526201744469', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(10, 'orderId', '20200712111212800110168526201744469', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(11, 'orderId', '20200712111212800110168526201744469', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(12, 'orderId', '20200712111212800110168526201744469', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(13, 'orderId', '20200712111212800110168526201744469', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(14, 'orderId', '20200712111212800110168526201744469', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(15, 'orderId', '20200712111212800110168526201744469', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(16, 'orderId', '20200712111212800110168054701720916', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(17, 'orderId', '20200712111212800110168054701720916', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(18, 'orderId', '20200712111212800110168054701720916', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(19, 'orderId', '20200712111212800110168054701720916', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(20, 'orderId', '20200712111212800110168054701720916', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(21, 'orderId', '20200712111212800110168054701720916', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(22, 'orderId', '20200712111212800110168054701720916', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(23, 'orderId', '20200712111212800110168054701720916', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(24, 'orderId', '20200712111212800110168054701720916', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(25, 'orderId', '20200712111212800110168054701720916', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(26, 'orderId', '20200712111212800110168054701720916', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(27, 'orderId', '20200712111212800110168054701720916', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(28, 'orderId', '20200712111212800110168054701720916', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(29, 'orderId', '20200712111212800110168054701720916', '2020-07-12', 'TXN_SUCCESS', '', 40, '2020-07-12', 1),
(30, 'orderId', '20200713111212800110168915801730188', '2020-07-13', 'TXN_SUCCESS', '', 40, '2020-07-13', 1),
(31, 'orderId', '20200713111212800110168915801730188', '2020-07-13', 'TXN_SUCCESS', '', 40, '2020-07-13', 1),
(32, 'orderId', '20200713111212800110168915801730188', '2020-07-13', 'TXN_SUCCESS', '', 40, '2020-07-13', 1),
(33, 'orderId', '20200713111212800110168915801730188', '2020-07-13', 'TXN_SUCCESS', '', 40, '2020-07-13', 1),
(34, 'orderId', '20200713111212800110168915801730188', '2020-07-13', 'TXN_SUCCESS', '', 40, '2020-07-13', 1),
(35, 'orderId', '20200713111212800110168915801730188', '2020-07-13', 'TXN_SUCCESS', '', 40, '2020-07-13', 1),
(36, 'orderId', '20200713111212800110168915801730188', '2020-07-13', 'TXN_SUCCESS', '', 40, '2020-07-13', 1),
(37, 'orderId', '20200713111212800110168915801730188', '2020-07-13', 'TXN_SUCCESS', '', 40, '2020-07-13', 1),
(38, 'orderId', '20200713111212800110168915801730188', '2020-07-13', 'TXN_SUCCESS', '', 40, '2020-07-13', 1),
(39, 'orderId', '20200713111212800110168915801730188', '2020-07-13', 'TXN_SUCCESS', '', 40, '2020-07-13', 1),
(40, 'orderId', '20200713111212800110168915801730188', '2020-07-13', 'TXN_SUCCESS', '', 40, '2020-07-13', 1),
(41, 'orderId', '20200713111212800110168915801730188', '2020-07-13', 'TXN_SUCCESS', '', 40, '2020-07-13', 1),
(42, 'orderId', '20200713111212800110168915801730188', '2020-07-13', 'TXN_SUCCESS', '', 40, '2020-07-13', 1),
(43, 'orderId', '20200713111212800110168915801730188', '2020-07-13', 'TXN_SUCCESS', '', 40, '2020-07-13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fee_tbl`
--

CREATE TABLE `fee_tbl` (
  `fee_id` int(11) NOT NULL,
  `fees` varchar(25) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `sem_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fee_tbl`
--

INSERT INTO `fee_tbl` (`fee_id`, `fees`, `pro_id`, `sem_id`, `status`) VALUES
(1, '24750', 4, 4, 1),
(2, '27000', 4, 3, 1),
(3, '24500', 4, 2, 1),
(4, '21000', 4, 1, 1),
(5, '21000', 7, 1, 1),
(6, '22500', 7, 2, 1),
(7, '27500', 7, 3, 1),
(8, '24700', 7, 4, 1),
(9, '20000', 3, 1, 1),
(10, '20000', 3, 2, 1),
(11, '20000', 3, 3, 1),
(12, '22000', 3, 4, 1),
(13, '23000', 3, 5, 1),
(14, '27000', 3, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_tbl`
--

CREATE TABLE `login_tbl` (
  `login_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `user_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_tbl`
--

INSERT INTO `login_tbl` (`login_id`, `username`, `pass`, `user_type`) VALUES
(2, 'EP100', '84c1a5087afba731ef686456b49e68fa', 1),
(4, 'EP101', 'd41d8cd98f00b204e9800998ecf8427e', 1),
(5, 'EP102', '84c1a5087afba731ef686456b49e68fa', 1),
(6, 'EP103', '84c1a5087afba731ef686456b49e68fa', 1),
(7, 'EP104', '84c1a5087afba731ef686456b49e68fa', 1),
(8, 'EP105', '84c1a5087afba731ef686456b49e68fa', 1),
(9, 'EP106', '84c1a5087afba731ef686456b49e68fa', 1),
(10, 'EP107', '84c1a5087afba731ef686456b49e68fa', 1),
(11, 'EP108', '84c1a5087afba731ef686456b49e68fa', 1),
(12, 'EP109', '84c1a5087afba731ef686456b49e68fa', 1),
(13, 'EP110', '84c1a5087afba731ef686456b49e68fa', 1),
(14, 'EP111', '84c1a5087afba731ef686456b49e68fa', 1),
(15, 'EP112', '84c1a5087afba731ef686456b49e68fa', 1),
(16, 'EP113', '84c1a5087afba731ef686456b49e68fa', 1),
(17, 'EP114', '84c1a5087afba731ef686456b49e68fa', 1),
(18, 'EP115', '84c1a5087afba731ef686456b49e68fa', 1),
(19, 'EP116', '84c1a5087afba731ef686456b49e68fa', 1),
(20, 'EP117', '84c1a5087afba731ef686456b49e68fa', 1),
(21, 'EP118', '84c1a5087afba731ef686456b49e68fa', 1),
(22, 'EP119', '84c1a5087afba731ef686456b49e68fa', 1),
(23, 'EP120', '84c1a5087afba731ef686456b49e68fa', 1),
(24, 'EP121', '84c1a5087afba731ef686456b49e68fa', 1),
(25, 'EP122', '84c1a5087afba731ef686456b49e68fa', 1),
(26, 'EP123', '84c1a5087afba731ef686456b49e68fa', 1),
(27, 'EP124', '84c1a5087afba731ef686456b49e68fa', 1),
(28, 'EP125', '84c1a5087afba731ef686456b49e68fa', 1),
(29, 'S1000', '28bb0b66c2381e40ac312d370b262bd5', 2),
(30, 'S1001', '84c1a5087afba731ef686456b49e68fa', 2),
(31, 'S1002', '84c1a5087afba731ef686456b49e68fa', 2),
(32, 'S1003', '84c1a5087afba731ef686456b49e68fa', 2),
(33, 'S1004', '84c1a5087afba731ef686456b49e68fa', 2),
(34, 'S1005', '84c1a5087afba731ef686456b49e68fa', 2),
(35, 'S1006', '84c1a5087afba731ef686456b49e68fa', 2),
(36, 'S1007', '84c1a5087afba731ef686456b49e68fa', 2),
(37, 'S1008', '84c1a5087afba731ef686456b49e68fa', 2),
(38, 'S1009', '84c1a5087afba731ef686456b49e68fa', 2),
(39, 'S1010', '84c1a5087afba731ef686456b49e68fa', 2),
(40, 'S1011', '84c1a5087afba731ef686456b49e68fa', 2),
(41, 'S1012', '84c1a5087afba731ef686456b49e68fa', 2),
(42, 'S1013', '84c1a5087afba731ef686456b49e68fa', 2),
(43, 'S1014', '84c1a5087afba731ef686456b49e68fa', 2),
(44, 'S1015', '84c1a5087afba731ef686456b49e68fa', 2),
(45, 'S1016', 'd41d8cd98f00b204e9800998ecf8427e', 2),
(46, 'S1017', 'abdc0eb23c4101bd208ae6ff9c0f9bdd', 2),
(47, 'S1018', '84c1a5087afba731ef686456b49e68fa', 2),
(48, 'S1019', '84c1a5087afba731ef686456b49e68fa', 2),
(49, 'S1020', 'd41d8cd98f00b204e9800998ecf8427e', 2),
(50, 'S1021', 'd41d8cd98f00b204e9800998ecf8427e', 2),
(51, 'S1022', '84c1a5087afba731ef686456b49e68fa', 2),
(52, 'S1023', '84c1a5087afba731ef686456b49e68fa', 2),
(53, 'S1024', '84c1a5087afba731ef686456b49e68fa', 2),
(54, 'S1025', '84c1a5087afba731ef686456b49e68fa', 2),
(55, 'S1026', '84c1a5087afba731ef686456b49e68fa', 2),
(56, 'S1027', '84c1a5087afba731ef686456b49e68fa', 2),
(57, 'S1028', '84c1a5087afba731ef686456b49e68fa', 2),
(58, 'S1029', '84c1a5087afba731ef686456b49e68fa', 2),
(59, 'S1030', '84c1a5087afba731ef686456b49e68fa', 2),
(60, 'S1031', '84c1a5087afba731ef686456b49e68fa', 2),
(61, 'S1032', '84c1a5087afba731ef686456b49e68fa', 2),
(62, 'S1033', '84c1a5087afba731ef686456b49e68fa', 2),
(63, 'S1034', '84c1a5087afba731ef686456b49e68fa', 2),
(64, 'S1035', '84c1a5087afba731ef686456b49e68fa', 2),
(65, 'S1036', '84c1a5087afba731ef686456b49e68fa', 2),
(66, 'S1037', '84c1a5087afba731ef686456b49e68fa', 2),
(67, 'S1038', '84c1a5087afba731ef686456b49e68fa', 2),
(68, 'S1039', '84c1a5087afba731ef686456b49e68fa', 2),
(69, 'S1040', '84c1a5087afba731ef686456b49e68fa', 2),
(70, 'S1041', '84c1a5087afba731ef686456b49e68fa', 2),
(71, 'S1042', '84c1a5087afba731ef686456b49e68fa', 2),
(72, 'S1043', '84c1a5087afba731ef686456b49e68fa', 2),
(73, 'S1044', '84c1a5087afba731ef686456b49e68fa', 2),
(74, 'S1045', '84c1a5087afba731ef686456b49e68fa', 2),
(75, 'S1046', '84c1a5087afba731ef686456b49e68fa', 2),
(76, 'admin@oasis', 'facec8109a0b0afce2df70cc24bd6e1f', 0);

-- --------------------------------------------------------

--
-- Table structure for table `passout_tbl`
--

CREATE TABLE `passout_tbl` (
  `passout_id` int(11) NOT NULL,
  `bth_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passout_tbl`
--

INSERT INTO `passout_tbl` (`passout_id`, `bth_id`, `pro_id`, `year`, `remark`, `status`) VALUES
(1, 1, 4, 2020, 'test', 0),
(2, 1, 8, 2020, 'testPassout', 1);

-- --------------------------------------------------------

--
-- Table structure for table `programme_tbl`
--

CREATE TABLE `programme_tbl` (
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(50) NOT NULL,
  `bth_id` int(11) NOT NULL,
  `pro_from` smallint(6) NOT NULL,
  `pro_to` smallint(6) NOT NULL,
  `fac_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `programme_tbl`
--

INSERT INTO `programme_tbl` (`pro_id`, `pro_name`, `bth_id`, `pro_from`, `pro_to`, `fac_id`, `status`) VALUES
(3, 'Regular 2017 2020', 2, 2017, 2020, 12, 1),
(4, 'Mca LE 2018 20', 1, 2018, 2020, 14, 1),
(5, 'DD Mca 2015 20', 4, 2015, 2020, 9, 1),
(6, 'Int Mca 2016 2021', 3, 2016, 2021, 17, 1),
(7, 'LE 2019 2021', 1, 2019, 2021, 18, 1),
(8, 'testPrograme11', 1, 2019, 2020, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `qualify_tbl`
--

CREATE TABLE `qualify_tbl` (
  `quali_id` int(11) NOT NULL,
  `qualify` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `qualify_tbl`
--

INSERT INTO `qualify_tbl` (`quali_id`, `qualify`) VALUES
(1, 'MCA- Computer Applications'),
(2, 'Pursuing Ph D- Computer Science and Engineering '),
(3, 'M.Tech- Computer Science and Engineering'),
(4, 'Post Doctoral Fellowship'),
(5, 'Ph D'),
(6, 'M Phil- Computer Applications'),
(7, 'MDIT'),
(8, 'M.Sc'),
(9, 'M.E'),
(10, 'B.Tech'),
(11, 'PGDCA- Computer Applications');

-- --------------------------------------------------------

--
-- Table structure for table `semprogramme_tbl`
--

CREATE TABLE `semprogramme_tbl` (
  `sem_id` int(11) NOT NULL,
  `sem` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `semprogramme_tbl`
--

INSERT INTO `semprogramme_tbl` (`sem_id`, `sem`, `pro_id`, `status`) VALUES
(1, 6, 3, 1),
(2, 4, 4, 1),
(3, 10, 5, 1),
(4, 2, 7, 1),
(5, 3, 7, 1),
(6, 6, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stuattend_tbl`
--

CREATE TABLE `stuattend_tbl` (
  `attend_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `sem` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `stu_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stuattend_tbl`
--

INSERT INTO `stuattend_tbl` (`attend_id`, `pro_id`, `sem`, `course_id`, `date`, `stu_id`, `status`) VALUES
(1, 4, 4, 17, '2020-05-18', 1, 1),
(2, 4, 4, 17, '2020-05-18', 3, 1),
(3, 4, 4, 17, '2020-05-18', 5, 1),
(4, 4, 4, 17, '2020-05-18', 26, 1),
(5, 4, 4, 17, '2020-05-18', 27, 1),
(6, 4, 4, 17, '2020-05-18', 28, 1),
(7, 4, 4, 17, '2020-05-18', 40, 1),
(8, 4, 4, 17, '2020-05-18', 41, 1),
(9, 4, 4, 17, '2020-05-16', 1, 1),
(10, 4, 4, 17, '2020-05-16', 2, 1),
(11, 4, 4, 17, '2020-05-16', 3, 1),
(12, 4, 4, 17, '2020-05-16', 4, 1),
(13, 4, 4, 17, '2020-05-16', 5, 1),
(14, 4, 4, 17, '2020-05-16', 26, 1),
(15, 4, 4, 17, '2020-05-16', 27, 1),
(16, 4, 4, 17, '2020-05-16', 28, 1),
(17, 4, 4, 17, '2020-05-16', 40, 1),
(18, 4, 4, 17, '2020-05-16', 41, 1),
(19, 4, 4, 17, '2020-05-19', 2, 1),
(20, 4, 4, 17, '2020-05-19', 4, 1),
(21, 4, 4, 17, '2020-05-19', 5, 1),
(22, 4, 4, 17, '2020-05-19', 26, 1),
(23, 4, 4, 17, '2020-05-19', 27, 1),
(24, 4, 4, 17, '2020-05-19', 28, 1),
(25, 4, 4, 17, '2020-05-19', 40, 1),
(26, 4, 4, 17, '2020-07-10', 1, 1),
(27, 4, 4, 17, '2020-07-10', 2, 1),
(28, 4, 4, 17, '2020-07-10', 3, 1),
(29, 4, 4, 17, '2020-07-10', 4, 1),
(30, 4, 4, 17, '2020-07-10', 5, 1),
(31, 4, 4, 17, '2020-07-10', 26, 1),
(32, 4, 4, 17, '2020-07-10', 27, 1),
(33, 4, 4, 17, '2020-07-10', 28, 1),
(34, 4, 4, 17, '2020-07-10', 41, 1),
(35, 4, 2, 6, '2020-07-10', 29, 1),
(36, 4, 2, 6, '2020-07-10', 30, 1),
(37, 4, 2, 6, '2020-07-10', 31, 1),
(38, 4, 2, 6, '2020-07-10', 33, 1),
(39, 4, 2, 6, '2020-07-10', 35, 1),
(40, 4, 4, 17, '2020-07-17', 1, 1),
(41, 4, 4, 17, '2020-07-17', 2, 1),
(42, 4, 4, 17, '2020-07-17', 3, 1),
(43, 4, 4, 17, '2020-07-17', 4, 1),
(44, 4, 4, 17, '2020-07-17', 26, 1),
(45, 4, 4, 17, '2020-07-17', 27, 1),
(46, 4, 4, 17, '2020-07-17', 28, 1),
(47, 4, 4, 17, '2020-07-17', 41, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stu_tbl`
--

CREATE TABLE `stu_tbl` (
  `stu_id` int(11) NOT NULL,
  `stu_name` varchar(50) NOT NULL,
  `stu_regNo` varchar(200) NOT NULL,
  `stu_phone` varchar(10) NOT NULL,
  `stu_email` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(7) NOT NULL,
  `status` int(11) NOT NULL,
  `stu_Add` varchar(50) NOT NULL,
  `stu_city` varchar(20) NOT NULL,
  `stu_district` varchar(30) NOT NULL,
  `stu_state` varchar(25) NOT NULL,
  `stu_country` varchar(20) NOT NULL,
  `stu_pin` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `path` varchar(200) NOT NULL,
  `accessno` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stu_tbl`
--

INSERT INTO `stu_tbl` (`stu_id`, `stu_name`, `stu_regNo`, `stu_phone`, `stu_email`, `dob`, `gender`, `status`, `stu_Add`, `stu_city`, `stu_district`, `stu_state`, `stu_country`, `stu_pin`, `pro_id`, `path`, `accessno`) VALUES
(1, 'Abey Shaji', 'AJC0S5ea70b77aa44b', '8289955543', 'abeyshaji@mca.ajce.in', '1996-05-22', 'male', 1, 'test', 'test', 'Pathanamthitta', 'Kerala', 'India', 683102, 4, '../studentUploads/9e5ffb296a94b0c047b8589028f6270e.jpg', 'S1000'),
(2, 'Abin Jose', 'AJC0S5ea70e790f668', '8289955543', 'abinjose@mca.ajce.in', '1997-10-22', 'male', 1, 'test', 'test', 'Kottayam', 'Kerala', 'India', 683102, 4, '../studentUploads/e08e6595c52dc6607532794b3e57f437.jpg', 'S1001'),
(3, 'Amal Augustine', 'AJC0S5ea70f49c96d1', '8289955543', 'amal@mca.ajce.in', '1997-10-22', 'male', 1, 'test', 'test', 'Kottayam', 'Kerala', 'India', 683102, 4, '../studentUploads/aad4d96bbdf7a16f3a4dea8d5234025d.jpg', 'S1002'),
(4, 'Amjatha P I', 'AJC0S5ea70f9588af8', '8289955543', 'amjatha@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Kottayam', 'Kerala', 'India', 683102, 4, '../studentUploads/ced8154bf8d732e7f1800062fb6a46a2.jpg', 'S1003'),
(5, 'Ancy John', 'AJC0S5ea70fea7ae79', '8289955543', 'ancy@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Kottayam', 'Kerala', 'India', 683102, 4, '../studentUploads/2e8f97830f89fa12b63d0c71326e3a06.jpg', 'S1004'),
(6, 'Angel Mathew', 'AJC0S5ea71067d7d76', '8289955543', 'angel@mca.ajce.in', '1997-10-22', 'male', 1, 'test', 'test', 'Kottayam', 'Kerala', 'India', 683102, 3, '../studentUploads/d8b0d1f3f1d30d9f6f8c198e874013c5.jpg', 'S1005'),
(7, 'Antony Jacob', 'AJC0S5ea710b197288', '8289955543', 'antony@mca.ajce.in', '1997-10-22', 'male', 1, 'test', 'test', 'Kottayam', 'Kerala', 'India', 683102, 3, '../studentUploads/887a52958ba55cbcaa30c68b49a199bb.jpg', 'S1006'),
(8, 'Anjaly George', 'AJC0S5ea71129e7ed9', '8289955543', 'anjaly@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Kottayam', 'Kerala', 'India', 683102, 3, '../studentUploads/d696ea245cb4c296fa22fd4f686029b6.jpg', 'S1007'),
(9, 'Anju Joseph', 'AJC0S5ea711779a0b0', '8289955543', 'anju@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Alappuzha', 'Kerala', 'India', 683102, 3, '../studentUploads/2414234ca08633c6ae127da1b9901611.jpg', 'S1008'),
(10, 'Anju T Shaju', 'AJC0S5ea711ccdc9bf', '8289955543', 'anjushaju@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Pathanamthitta', 'Kerala', 'India', 683102, 3, '../studentUploads/0e67f58c3b77286d4a34dfbca0cb8f33.jpg', 'S1009'),
(11, 'Arjun M', 'AJC0S5ea71217966a1', '8289955543', 'arjunm@mca.ajce.in', '1997-10-22', 'male', 1, 'test', 'test', 'Pathanamthitta', 'Kerala', 'India', 683102, 5, '../studentUploads/b6b395da0f3a3d9449b6197e50247417.jpg', 'S1010'),
(12, 'Arya B', 'AJC0S5ea712621d6c5', '8289955543', 'aryab@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Pathanamthitta', 'Kerala', 'India', 683102, 5, '../studentUploads/a177a2e12a95d22222f85ba0d632f972.jpg', 'S1011'),
(13, 'Arya S Kumar', 'AJC0S5ea712ed446ea', '8289955543', 'aryaskumar@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Kottayam', 'Kerala', 'India', 683102, 5, '../studentUploads/e7239c12d0977321eae0a42849be8196.jpg', 'S1012'),
(14, 'Ashbin Elizebeth', 'AJC0S5ea7134614075', '8289955543', 'ashbin@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Kottayam', 'Kerala', 'India', 683102, 5, '../studentUploads/4a9d928478f508f88ed7092d58d6e24b.jpg', 'S1013'),
(15, 'Aswathy', 'AJC0S5ea7139fdb658', '8289955543', 'aswathy@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Kottayam', 'Kerala', 'India', 683102, 5, '../studentUploads/ff09e783d44ba1c1664f88775302eae8.jpg', 'S1014'),
(16, 'Haritha N H', 'AJC0S5ea714009f734', '8289955543', 'haritha@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Thrissur', 'Kerala', 'India', 683102, 5, '../studentUploads/25c2cace17c31ea43bcf9a4b8f1a1e49.jpg', 'S1015'),
(17, 'Bency Babu', 'AJC0S5ea7144f4e346', '8289955543', 'bency@mca.ajce.in', '0000-00-00', 'female', 1, 'test', 'test', 'Kottayam', 'Kerala', 'India', 683102, 5, '../studentUploads/00ffccf1cd9aaf4471806ba354b2c788.jpg', 'S1016'),
(18, 'Chinchu Anilkumar', 'AJC0S5ea714c9c464b', '8289955543', 'chinchu@mca.ajce.in', '1997-01-22', 'female', 1, 'test', 'test', 'Pathanamthitta', 'Kerala', 'India', 683102, 6, '../studentUploads/308129b0cbdc1befc4ea6bd7efb31550.jpg', 'S1017'),
(19, 'Daniya Rose John', 'AJC0S5ea7163e6390b', '8289955543', 'daniya@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Kottayam', 'Kerala', 'India', 683102, 6, '../studentUploads/17668c58288d7b2d0a7231d5d4a7953d.jpg', 'S1018'),
(20, 'Dija', 'AJC0S5ea71683245db', '8289955543', 'dija@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Kottayam', 'Kerala', 'India', 683102, 6, '../studentUploads/bb58f9508b06486d833876e48001d7ab.jpg', 'S1019'),
(21, 'Emily John', 'AJC0S5ea716bde6f31', '8289955543', 'emily@mca.ajce.in', '0000-00-00', 'female', 1, 'test', 'test', 'Kottayam', 'Kerala', 'India', 683102, 6, '../studentUploads/959eb91bb20ac5bf2e7c38ce196547fd.jpg', 'S1020'),
(22, 'Feba', 'AJC0S5ea71711b0313', '8289955543', 'feba@mca.ajce.in', '0000-00-00', 'female', 1, 'test', 'test', 'Kottayam', 'Kerala', 'India', 683102, 6, '../studentUploads/58e255f324e72cdbb3f7577a2cbf2ff4.jpg', 'S1021'),
(23, 'Georgin John George', 'AJC0S5ea71768965d1', '8289955543', 'georgin@mca.ajce.in', '1997-10-22', 'male', 1, 'test', 'test', 'Kottayam', 'Kerala', 'India', 683102, 6, '../studentUploads/95598d880c9a7f766356687ac2af6a4d.jpg', 'S1022'),
(24, 'Indraja Saji', 'AJC0S5ea717be0389b', '8289955543', 'indraja@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Kollam', 'Kerala', 'India', 683102, 6, '../studentUploads/5dadfa2a87af63c985d8377b8a3d4721.jpg', 'S1023'),
(25, 'Jeffin Jose', 'AJC0S5ea71802f16bb', '8289955543', 'jeffinjose@mca.ajce.in', '1997-10-22', 'male', 1, 'test', 'test', 'Idukki', 'Kerala', 'India', 683102, 6, '../studentUploads/adaf17dc685b1cbdd58cf5fa8b87c1b6.jpg', 'S1024'),
(26, 'Jefin Shaji', 'AJC0S5ea718610e91e', '8289955543', 'jefinshaji@mca.ajce.in', '1997-10-22', 'male', 1, 'test', 'test', 'Idukki', 'Kerala', 'India', 683102, 4, '../studentUploads/fe7e6223d4ff1b26c4d8fc2bd27e4baf.jpg', 'S1025'),
(27, 'Jilcy Abraham', 'AJC0S5ea7190d75e76', '8289955543', 'jilcy@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Kottayam', 'Kerala', 'India', 683102, 4, '../studentUploads/a47ff75da69bf1017a1bf743f491a1b3.jpg', 'S1026'),
(28, 'Lakshya', 'AJC0S5ea7199ff19db', '8289955543', 'lakshya@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Thiruvananthapuram', 'Kerala', 'India', 683102, 4, '../studentUploads/6362d5e2558a5bc3aa069a67129e1b6d.jpg', 'S1027'),
(29, 'Leo Babu', 'AJC0S5ea719e39940d', '8289955543', 'leo@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Kottayam', 'Kerala', 'India', 683102, 7, '../studentUploads/9a2763601fc4f20838aa7ea7388a372d.jpg', 'S1028'),
(30, 'Litty Thomas', 'AJC0S5ea71a5059c2b', '8289955543', 'litty@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Wayanad', 'Kerala', 'India', 683102, 7, '../studentUploads/e522def2f02eae207d25371541ca3260.jpg', 'S1029'),
(31, 'Maria Thomas', 'AJC0S5ea71aaae7478', '8289955543', 'mariathomas@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Pathanamthitta', 'Kerala', 'India', 683102, 7, '../studentUploads/236de8b0913ef4f0a0664496bee5da79.jpg', 'S1030'),
(32, 'Meenu Mathew', 'AJC0S5ea71afd25e6c', '8289955543', 'meenumathew@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Kottayam', 'Kerala', 'India', 683102, 7, '../studentUploads/bcd4410bd4d79a63a4078112b4c72ef6.jpg', 'S1031'),
(33, 'Nubina Niyas', 'AJC0S5ea71b56b4a6d', '8289955543', 'nubinaniyas@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Kottayam', 'Kerala', 'India', 683102, 7, '../studentUploads/8ee4cc093150ad9e5c2f8d2df2c3ca79.jpg', 'S1032'),
(34, 'Priya Kumari', 'AJC0S5ea71ba5c28aa', '8289955543', 'priyakumari@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Kottayam', 'Kerala', 'India', 683102, 7, '../studentUploads/81c342e188ef1a33271b798f31734cae.jpg', 'S1033'),
(35, 'Ragin Thankachhan', 'AJC0S5ea71bf81e65e', '8289955543', 'ragin@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Wayanad', 'Kerala', 'India', 683102, 7, '../studentUploads/a9527dc348bf9a521a9d2c151e4a51d6.jpg', 'S1034'),
(36, 'Rincy mol', 'AJC0S5ea71c40a77c4', '8289955543', 'rincymol@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Pathanamthitta', 'Kerala', 'India', 683102, 3, '../studentUploads/1940db7257795b6b84de4a3ee5549cc6.jpg', 'S1035'),
(37, 'Rinimol', 'AJC0S5ea71c8ec0c75', '8289955543', 'rinimol@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Alappuzha', 'Kerala', 'India', 683102, 3, '../studentUploads/c1f150d91d54919e0a962751f05f1311.jpg', 'S1036'),
(38, 'Rinu Merin', 'AJC0S5ea71cd7f0bcc', '8289955543', 'rinumerin@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Kottayam', 'Kerala', 'India', 683102, 3, '../studentUploads/402f2727c02e37129379174fb3fb5294.jpg', 'S1037'),
(39, 'Shani Mariam George', 'AJC0S5ea71d2624bba', '8289955543', 'shanimariamgeorge@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Kottayam', 'Kerala', 'India', 683102, 3, '../studentUploads/cc0510aaf4c4ff78e1a5b2f9733671de.jpg', 'S1038'),
(40, 'Sooraj V Rajan', 'AJC0S5ea71d6a5e3c2', '8289955543', 'soorajvrajan@mca.ajce.in', '1997-10-22', 'male', 1, 'Vallayil House, Desom P O', 'Aluva', 'Ernakulam', 'Kerala', 'India', 683102, 4, '../studentUploads/ea63ebf7b429bb19e0dc18cae67bf87b.jpg', 'S1039'),
(41, 'Susan K Thomas', 'AJC0S5ea71dd184624', '8289955543', 'susankthomas@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Kottayam', 'Kerala', 'India', 683102, 4, '../studentUploads/1c3249c83edd9b5407019da48518563f.jpg', 'S1040'),
(42, 'Tikku Tom', 'AJC0S5ea71e227ed50', '8289955543', 'tikkutom@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Idukki', 'Kerala', 'India', 683102, 5, '../studentUploads/e4cd7c3356ccf7a003ff9bcdbc4807f1.jpg', 'S1041'),
(43, 'Sreelakshmi', 'AJC0S5ea71e7796eac', '8289955543', 'sreelakshmi@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Alappuzha', 'Kerala', 'India', 683102, 3, '../studentUploads/9583015d66e06409923761b8922fbf0f.jpg', 'S1042'),
(44, 'Archana K', 'AJC0S5ea71ebc6fdb8', '8289955543', 'archanak@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Alappuzha', 'Kerala', 'India', 683102, 5, '../studentUploads/55b231a4fa897c7b84b23c862519898e.jpg', 'S1043'),
(45, 'Sulfikar Ali', 'AJC0S5ea71f0d6d106', '8289955543', 'sulfikar@mca.ajce.in', '1997-10-22', 'male', 1, 'test', 'test', 'Malappuram', 'Kerala', 'India', 683102, 6, '../studentUploads/5949bd9eda937659073f3b808b531d45.jpg', 'S1044'),
(46, 'Subi S Babu', 'AJC0S5ea71f6039fa8', '8289955543', 'subisbabu@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Pathanamthitta', 'Kerala', 'India', 683102, 7, '../studentUploads/d370251786179e253317a7310d86d57c.jpg', 'S1045'),
(47, 'Sofy Sam', 'AJC0S5ea71fa29cbc4', '8289955543', 'sofysam@mca.ajce.in', '1997-10-22', 'female', 1, 'test', 'test', 'Pathanamthitta', 'Kerala', 'India', 683102, 3, '../studentUploads/b90729e4862882e876c37d8a48c37037.jpg', 'S1046');

-- --------------------------------------------------------

--
-- Table structure for table `timetable_tbl`
--

CREATE TABLE `timetable_tbl` (
  `table_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `sem` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `period` int(11) NOT NULL,
  `course` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timetable_tbl`
--

INSERT INTO `timetable_tbl` (`table_id`, `pro_id`, `sem`, `day`, `period`, `course`, `status`) VALUES
(1, 4, 4, 1, 1, 17, 1),
(2, 4, 4, 1, 2, 17, 1),
(3, 4, 4, 1, 3, 17, 1),
(4, 4, 4, 1, 4, 17, 1),
(5, 4, 4, 1, 5, 17, 1),
(6, 4, 4, 1, 6, 17, 1),
(7, 4, 4, 2, 1, 17, 1),
(8, 4, 4, 2, 2, 17, 1),
(9, 4, 4, 2, 3, 17, 1),
(10, 4, 4, 2, 4, 17, 1),
(11, 4, 4, 2, 5, 17, 1),
(12, 4, 4, 2, 6, 17, 1),
(13, 4, 4, 3, 1, 17, 1),
(14, 4, 4, 3, 2, 17, 1),
(15, 4, 4, 3, 3, 17, 1),
(16, 4, 4, 3, 4, 17, 1),
(17, 4, 4, 3, 5, 17, 1),
(18, 4, 4, 3, 6, 17, 1),
(19, 4, 4, 4, 1, 17, 1),
(20, 4, 4, 4, 2, 17, 1),
(21, 4, 4, 4, 3, 17, 1),
(22, 4, 4, 4, 4, 17, 1),
(23, 4, 4, 4, 5, 17, 1),
(24, 4, 4, 4, 6, 17, 1),
(25, 4, 4, 5, 1, 17, 1),
(26, 4, 4, 5, 2, 17, 1),
(27, 4, 4, 5, 3, 17, 1),
(28, 4, 4, 5, 4, 17, 1),
(29, 4, 4, 5, 5, 17, 1),
(30, 4, 4, 5, 6, 17, 1),
(31, 3, 3, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `typecomplaint_tbl`
--

CREATE TABLE `typecomplaint_tbl` (
  `id` int(11) NOT NULL,
  `Complaint` varchar(25) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `typecomplaint_tbl`
--

INSERT INTO `typecomplaint_tbl` (`id`, `Complaint`, `status`) VALUES
(1, 'Faculty Complaint', 0),
(2, 'Electrical Complaint', 0),
(3, 'Others', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_tbl`
--

CREATE TABLE `vehicle_tbl` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `cc` varchar(10) NOT NULL,
  `user` varchar(25) NOT NULL,
  `requestDate` date NOT NULL,
  `vehicleNumber` varchar(50) NOT NULL,
  `Licence` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_tbl`
--

INSERT INTO `vehicle_tbl` (`id`, `vehicle`, `type`, `cc`, `user`, `requestDate`, `vehicleNumber`, `Licence`, `status`) VALUES
(1, 'Honda CBR', 'Bike', '150', 'S1010', '2020-04-30', 'KL 05 A 8482', '41/8084/2015', 0),
(2, 'Honda CBR', 'Scooter', '150', 'S1039', '2020-05-01', 'KL 05 A 8482', '41/8084/2015', 1),
(3, 'test', 'Car', '123', 'EP103', '2020-07-02', 'qwerty', 'qwer5t', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addquestion_tbl`
--
ALTER TABLE `addquestion_tbl`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `batch_tbl`
--
ALTER TABLE `batch_tbl`
  ADD PRIMARY KEY (`bth_id`),
  ADD UNIQUE KEY `bth_id` (`bth_id`,`dept_id`);

--
-- Indexes for table `certuploader_tbl`
--
ALTER TABLE `certuploader_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint_tbl`
--
ALTER TABLE `complaint_tbl`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `courseassign_tbl`
--
ALTER TABLE `courseassign_tbl`
  ADD PRIMARY KEY (`assign_id`);

--
-- Indexes for table `coursefac_tbl`
--
ALTER TABLE `coursefac_tbl`
  ADD PRIMARY KEY (`ass_id`);

--
-- Indexes for table `coursematerial_tbl`
--
ALTER TABLE `coursematerial_tbl`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `course_tbl`
--
ALTER TABLE `course_tbl`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `dept_tbl`
--
ALTER TABLE `dept_tbl`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `desig_tbl`
--
ALTER TABLE `desig_tbl`
  ADD PRIMARY KEY (`desig_ig`);

--
-- Indexes for table `examadd_tbl`
--
ALTER TABLE `examadd_tbl`
  ADD PRIMARY KEY (`add_id`);

--
-- Indexes for table `exammark_tbl`
--
ALTER TABLE `exammark_tbl`
  ADD PRIMARY KEY (`mark_id`),
  ADD UNIQUE KEY `exam_id` (`exam_id`,`pro_id`,`course_id`,`stu_id`);

--
-- Indexes for table `examschedule_tbl`
--
ALTER TABLE `examschedule_tbl`
  ADD PRIMARY KEY (`sch_id`);

--
-- Indexes for table `facleave_tbl`
--
ALTER TABLE `facleave_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facpunch_tbl`
--
ALTER TABLE `facpunch_tbl`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `facultytest_tbl`
--
ALTER TABLE `facultytest_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_tbl`
--
ALTER TABLE `faculty_tbl`
  ADD PRIMARY KEY (`fac_id`),
  ADD UNIQUE KEY `fac_phno` (`fac_phno`,`fac_email`,`empno`,`accessno`);

--
-- Indexes for table `feedback_tbl`
--
ALTER TABLE `feedback_tbl`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `feepayment_tbl`
--
ALTER TABLE `feepayment_tbl`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `fee_tbl`
--
ALTER TABLE `fee_tbl`
  ADD PRIMARY KEY (`fee_id`);

--
-- Indexes for table `login_tbl`
--
ALTER TABLE `login_tbl`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `passout_tbl`
--
ALTER TABLE `passout_tbl`
  ADD PRIMARY KEY (`passout_id`);

--
-- Indexes for table `programme_tbl`
--
ALTER TABLE `programme_tbl`
  ADD PRIMARY KEY (`pro_id`),
  ADD UNIQUE KEY `pro_id` (`pro_id`,`bth_id`);

--
-- Indexes for table `qualify_tbl`
--
ALTER TABLE `qualify_tbl`
  ADD PRIMARY KEY (`quali_id`);

--
-- Indexes for table `semprogramme_tbl`
--
ALTER TABLE `semprogramme_tbl`
  ADD PRIMARY KEY (`sem_id`);

--
-- Indexes for table `stuattend_tbl`
--
ALTER TABLE `stuattend_tbl`
  ADD PRIMARY KEY (`attend_id`);

--
-- Indexes for table `stu_tbl`
--
ALTER TABLE `stu_tbl`
  ADD PRIMARY KEY (`stu_id`),
  ADD UNIQUE KEY `stu_id` (`stu_id`,`stu_regNo`,`accessno`);

--
-- Indexes for table `timetable_tbl`
--
ALTER TABLE `timetable_tbl`
  ADD PRIMARY KEY (`table_id`);

--
-- Indexes for table `typecomplaint_tbl`
--
ALTER TABLE `typecomplaint_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_tbl`
--
ALTER TABLE `vehicle_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addquestion_tbl`
--
ALTER TABLE `addquestion_tbl`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `batch_tbl`
--
ALTER TABLE `batch_tbl`
  MODIFY `bth_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `certuploader_tbl`
--
ALTER TABLE `certuploader_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `complaint_tbl`
--
ALTER TABLE `complaint_tbl`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courseassign_tbl`
--
ALTER TABLE `courseassign_tbl`
  MODIFY `assign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `coursefac_tbl`
--
ALTER TABLE `coursefac_tbl`
  MODIFY `ass_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `coursematerial_tbl`
--
ALTER TABLE `coursematerial_tbl`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `course_tbl`
--
ALTER TABLE `course_tbl`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `dept_tbl`
--
ALTER TABLE `dept_tbl`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `desig_tbl`
--
ALTER TABLE `desig_tbl`
  MODIFY `desig_ig` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `examadd_tbl`
--
ALTER TABLE `examadd_tbl`
  MODIFY `add_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exammark_tbl`
--
ALTER TABLE `exammark_tbl`
  MODIFY `mark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `examschedule_tbl`
--
ALTER TABLE `examschedule_tbl`
  MODIFY `sch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `facleave_tbl`
--
ALTER TABLE `facleave_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `facpunch_tbl`
--
ALTER TABLE `facpunch_tbl`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `facultytest_tbl`
--
ALTER TABLE `facultytest_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `faculty_tbl`
--
ALTER TABLE `faculty_tbl`
  MODIFY `fac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `feedback_tbl`
--
ALTER TABLE `feedback_tbl`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feepayment_tbl`
--
ALTER TABLE `feepayment_tbl`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `fee_tbl`
--
ALTER TABLE `fee_tbl`
  MODIFY `fee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `login_tbl`
--
ALTER TABLE `login_tbl`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `passout_tbl`
--
ALTER TABLE `passout_tbl`
  MODIFY `passout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `programme_tbl`
--
ALTER TABLE `programme_tbl`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `qualify_tbl`
--
ALTER TABLE `qualify_tbl`
  MODIFY `quali_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `semprogramme_tbl`
--
ALTER TABLE `semprogramme_tbl`
  MODIFY `sem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stuattend_tbl`
--
ALTER TABLE `stuattend_tbl`
  MODIFY `attend_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `stu_tbl`
--
ALTER TABLE `stu_tbl`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `timetable_tbl`
--
ALTER TABLE `timetable_tbl`
  MODIFY `table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `typecomplaint_tbl`
--
ALTER TABLE `typecomplaint_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicle_tbl`
--
ALTER TABLE `vehicle_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
