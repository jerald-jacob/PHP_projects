-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2018 at 07:08 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akhil`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(54) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(10) NOT NULL,
  `course` varchar(20) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `semister` int(10) NOT NULL,
  `file` varchar(200) NOT NULL,
  `teacher_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `course`, `subject`, `semister`, `file`, `teacher_name`) VALUES
(10, 'BCA', 'sql', 2, 'akhil_documentation.docx', 'aju'),
(14, 'BCA', 'php', 5, 'hadoop_command_reference.pdf', 'aju'),
(16, 'B COM', 'php', 4, 'Module 2 And Module 4 (Setup).docx', 'manu'),
(17, 'BCA', '', 1, 'ajil.pdf', 'aju'),
(18, 'BCA', 'MATHS', 5, 'ajil.docx', 'aju');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `comments` text NOT NULL,
  `img_id` varchar(30) NOT NULL,
  `date_publish` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `comments`, `img_id`, `date_publish`) VALUES
(52, 'kelvin', 'hai', '62', '2018-01-31 08:26:18'),
(54, 'ajil', 'ITS GOOD', '17pmc201', '2018-02-12 02:54:57');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(22) NOT NULL,
  `course_name` varchar(20) NOT NULL,
  `sem` int(20) NOT NULL,
  `Department` varchar(44) NOT NULL,
  `course_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course_name`, `sem`, `Department`, `course_id`) VALUES
(19, 'BCA', 6, 'COMPUTER', '17BCA'),
(20, 'BBA', 6, 'BBA', '14BBA');

-- --------------------------------------------------------

--
-- Table structure for table `course_subject`
--

CREATE TABLE `course_subject` (
  `id` int(22) NOT NULL,
  `department` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `teacher` varchar(100) NOT NULL,
  `semister` varchar(20) NOT NULL,
  `teacher_id` varchar(15) NOT NULL,
  `subject_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_subject`
--

INSERT INTO `course_subject` (`id`, `department`, `course`, `subject`, `teacher`, `semister`, `teacher_id`, `subject_id`) VALUES
(28, 'COMPUTER', 'BCA', 'JAVA', 'manu', '5', '20', '15JAVA'),
(29, 'COMPUTER', 'BCA', 'SQL', 'aju', '5', '19', '356SQL'),
(30, 'COMPUTER', 'BCA', 'DBMS', 'aju', '5', '19', '980DBMS'),
(31, 'BBA', 'BBA', 'MATHS', 'aju', '1', '19', '76MATHS');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `event_name` varchar(55) NOT NULL,
  `details` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `date_of_updating` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `event_name`, `details`, `image`, `date_of_updating`) VALUES
(5, 'ghghjjj', 'ghjjk', 'a4.jpg', '2018-01-27 19:39:03'),
(6, 'event', 'ofgkaldsfkasd adhfoasdfkasd kfsdkfaksdf lkasdflkasdflka sdfkasdlkasflkasdfkaslfka sdfkskfaskfsklflkak sfa sfoisafafi aifoiaoifafa sfiaf ifiaj ioaoiafash', '11.jpg', '2018-01-28 16:15:00'),
(7, 'new', 'somthing worng', 'hadoop_arc.PNG', '2018-02-03 10:43:09');

-- --------------------------------------------------------

--
-- Table structure for table `internal`
--

CREATE TABLE `internal` (
  `id` int(11) NOT NULL,
  `Student_Id` varchar(50) NOT NULL,
  `semister` int(12) NOT NULL,
  `Mark` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `internal`
--

INSERT INTO `internal` (`id`, `Student_Id`, `semister`, `Mark`) VALUES
(10, ' 17pmc318', 5, '123'),
(13, ' 17pmc318', 4, '124');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `mem_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `course` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `semister` varchar(44) NOT NULL,
  `status` varchar(20) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `phnumber` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`mem_id`, `username`, `password`, `fname`, `lname`, `address`, `course`, `gender`, `semister`, `status`, `Department`, `phnumber`) VALUES
(49, '17pmc318', '17PMC318', 'JERALD', 'JACOB', 'CHIRATHALAYATTU', 'BCA', 'Male', '5', '1', 'COMPUTER', '7510615035'),
(50, '11BBA', '11BBA', 'JOBIN', 'JOSEPH', 'HAI', 'BBA', 'Male', '5', '0', 'BBA', '8975468798');

-- --------------------------------------------------------

--
-- Table structure for table `memberlogin`
--

CREATE TABLE `memberlogin` (
  `mem_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memberlogin`
--

INSERT INTO `memberlogin` (`mem_id`, `username`, `password`, `fname`, `lname`, `address`, `contact`, `picture`, `gender`) VALUES
(3, 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `to_id` varchar(50) NOT NULL,
  `recipiat_id` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `msgtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `to_id`, `recipiat_id`, `message`, `msgtime`) VALUES
(1, '17pmc318', 'admin', 'hai admin', '2018-02-25 08:49:34'),
(2, '17pmc318', 'admin', 'how are you', '2018-02-25 08:49:34'),
(9, 'admin', '17pmc318', 'hai', '2018-02-25 10:19:07'),
(12, '11BBA', '14pmc101', 'hai', '2018-02-25 10:57:39'),
(13, '14pmc101', '11BBA', ' onnula', '2018-02-25 11:49:49'),
(14, '14pmc101', '17pmc318', 'hai jerald', '2018-02-25 13:29:06'),
(15, '17pmc318', '14pmc101', 'had', '2018-03-02 17:38:02'),
(16, '14pmc101', '11BBA', 'hai jerald', '2018-03-02 17:39:55');

-- --------------------------------------------------------

--
-- Table structure for table `personel`
--

CREATE TABLE `personel` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `latest_image` varchar(100) NOT NULL,
  `IM_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personel`
--

INSERT INTO `personel` (`id`, `username`, `latest_image`, `IM_ID`) VALUES
(0, 'ajmal', 'user_profile.png', 1),
(0, 'arun ', 'IMG-20170716-WA0014.jpg', 2),
(0, 'JERALD', 'IMG_E9318.JPG', 6),
(0, 'JOBIN', '', 7);

-- --------------------------------------------------------

--
-- Table structure for table `student_attachments`
--

CREATE TABLE `student_attachments` (
  `f_id` int(11) NOT NULL,
  `course` varchar(20) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `semister` varchar(20) NOT NULL,
  `file` text NOT NULL,
  `stdent_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_attachments`
--

INSERT INTO `student_attachments` (`f_id`, `course`, `subject`, `semister`, `file`, `stdent_name`) VALUES
(20, 'BCA', 'SQL', '5', 'akhil_documentation.pdf', 'JERALD');

-- --------------------------------------------------------

--
-- Table structure for table `study_metrial`
--

CREATE TABLE `study_metrial` (
  `id` int(10) NOT NULL,
  `course` varchar(50) NOT NULL,
  `semister` varchar(50) NOT NULL,
  `attachment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_event`
--

CREATE TABLE `teacher_event` (
  `id` int(11) NOT NULL,
  `course` varchar(50) NOT NULL,
  `semister` varchar(50) NOT NULL,
  `news` text NOT NULL,
  `attachments` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_event`
--

INSERT INTO `teacher_event` (`id`, `course`, `semister`, `news`, `attachments`) VALUES
(1, 'BCA', '5', 'assignment on hadoop', 'ajil.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_member`
--

CREATE TABLE `teacher_member` (
  `id` int(44) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `address` varchar(200) NOT NULL,
  `department` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(11) NOT NULL,
  `phnumber` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_member`
--

INSERT INTO `teacher_member` (`id`, `fname`, `lname`, `address`, `department`, `gender`, `username`, `password`, `status`, `phnumber`) VALUES
(19, 'aju', 'jolly', 'aksdg', 'computer', 'Male', '14pmc101', '14pmc101', '1', '9874589568'),
(20, 'manu', 'varghese', 'ugi', 'computer', 'Male', '14pmc100', '14pmc100', '0', '9446480689');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `upload_time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `file_name`, `upload_time`) VALUES
(12, 'Screenshot (2).png', '2018-01-13 16:42:57'),
(13, 'carrental.sql', '2018-01-13 16:45:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_subject`
--
ALTER TABLE `course_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `internal`
--
ALTER TABLE `internal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mem_id`);

--
-- Indexes for table `memberlogin`
--
ALTER TABLE `memberlogin`
  ADD PRIMARY KEY (`mem_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personel`
--
ALTER TABLE `personel`
  ADD PRIMARY KEY (`IM_ID`);

--
-- Indexes for table `student_attachments`
--
ALTER TABLE `student_attachments`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `study_metrial`
--
ALTER TABLE `study_metrial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_event`
--
ALTER TABLE `teacher_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_member`
--
ALTER TABLE `teacher_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(54) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `course_subject`
--
ALTER TABLE `course_subject`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `internal`
--
ALTER TABLE `internal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `memberlogin`
--
ALTER TABLE `memberlogin`
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `personel`
--
ALTER TABLE `personel`
  MODIFY `IM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `student_attachments`
--
ALTER TABLE `student_attachments`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `study_metrial`
--
ALTER TABLE `study_metrial`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teacher_event`
--
ALTER TABLE `teacher_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `teacher_member`
--
ALTER TABLE `teacher_member`
  MODIFY `id` int(44) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
