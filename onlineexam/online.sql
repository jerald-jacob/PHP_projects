-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 05, 2019 at 09:09 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `online`
--

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE IF NOT EXISTS `exam` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_name` text,
  `subject` varchar(20) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`e_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`e_id`, `exam_name`, `subject`, `staff_id`) VALUES
(3, '1 sem improvment exam 2019', 'computer science', 6),
(4, '1 sem improvment exam 2019', 'mathematics', 6),
(5, '1 sem improvment exam 2019', 'G K', 6),
(6, '1 sem improvment exam 2019', 'physics', 6),
(7, 'bsc mathematics', 'mathematics', 6),
(8, '5  bsc maths  sem', 'english', 6);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `password`, `username`, `type`) VALUES
(1, 'admin', 'admin', 'admin'),
(6, 'staff', 'staff', 'staff'),
(7, 'staff', 'staff', 'staff'),
(8, 'staff', 'staff', 'staff'),
(10, 'staff', 'staff', 'staff'),
(11, 'staff', 'staff', 'staff'),
(12, 'staff', 'staff', 'staff'),
(13, 'staff', 'staff', 'staff'),
(14, 'staff', 'staff', 'staff'),
(15, 'staff', 'staff', 'staff'),
(16, 'dffg', 'staff', 'staff'),
(17, 'hbjb', 's1', 'staff'),
(18, 'fgfg', 'dfvgfgv', 'staff'),
(19, 'fcgcf', 'fgccf g', 'staff'),
(20, 'hdshj', 'fgccf g', 'staff'),
(21, 'gydfcydgf', 'fgccf g', 'staff'),
(22, 'uhyb', 'bhuj', 'staff'),
(23, 'ghhhhbvu', 'b jhm nbgj', 'staff'),
(24, 'bjgb b', 'b jhm nbgj', 'staff'),
(25, ' vhnj cj ', 'b jhm nbgj', 'staff'),
(26, 'zz', '', 'staff'),
(27, 'staff', 'staff', 'staff'),
(28, 'student', 'student', 'staff'),
(29, 'student', 'student', 'staff'),
(30, 'student', 'student', 'staff'),
(31, 'password', 'username', 'staff'),
(32, 'staff', 'staff', 'student'),
(33, 'sesna', 'student', 'student'),
(34, '', '', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `q_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(1000) DEFAULT NULL,
  `option_a` varchar(500) DEFAULT NULL,
  `option_b` varchar(500) DEFAULT NULL,
  `option_c` varchar(500) DEFAULT NULL,
  `option_d` varchar(500) DEFAULT NULL,
  `answer` varchar(500) DEFAULT NULL,
  `e_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`q_id`),
  KEY `e_id` (`e_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`q_id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `answer`, `e_id`) VALUES
(1, 'Who is the  present prime minister of India?', 'Jawaharlal Nehru', 'Ramnad kovind', 'Narendra Modi', 'Rahul Gandhi', NULL, 5),
(2, 'Who is the  present prime minister of India?', 'Jawaharlal Nehru', 'Ramnad kovind', 'Narendra Modi', 'Rahul Gandhi', NULL, 5),
(3, 'Who is the  present prime minister of India?', 'Jawaharlal Nehru', 'Ramnad kovind', 'Narendra Modi', 'Rahul Gandhi', NULL, 5),
(4, 'Who is the  present prime minister of India?', 'Jawaharlal Nehru', 'Ramnad kovind', 'Narendra Modi', 'Rahul Gandhi', NULL, 5),
(5, 'Who is the  present prime minister of India?', 'Jawaharlal Nehru', 'Ramnad kovind', 'Narendra Modi', 'Rahul Gandhi', NULL, 5),
(6, 'Who is the  present prime minister of India?', 'Jawaharlal Nehru', 'Ramnad kovind', 'Narendra Modi', 'Rahul Gandhi', NULL, 5),
(7, 'Who is the  present prime minister of India?', 'Jawaharlal Nehru', 'Ramnad kovind', 'Narendra Modi', 'Rahul Gandhi', NULL, 5),
(8, 'Who is the  present prime minister of India?', 'Jawaharlal Nehru', 'Ramnad kovind', 'Narendra Modi', 'Rahul Gandhi', NULL, 5),
(9, 'What is rate of change of speed?', 'Torque', 'velocity', 'accelaration', 'displacement', 'velocity', 6),
(10, 'What is rate of change of speed?', 'Torque', 'velocity', 'accelaration', 'displacement', NULL, 6),
(11, 'What is rate of change of speed?', 'Torque', 'velocity', 'accelaration', 'displacement', NULL, 6),
(12, 'What is rate of change of speed?', 'Torque', 'velocity', 'accelaration', 'displacement', NULL, 6),
(13, 'What is rate of change of speed?', 'Torque', 'velocity', 'accelaration', 'displacement', NULL, 6),
(14, 'What is rate of change of speed?', 'Torque', 'velocity', 'accelaration', 'displacement', NULL, 6),
(15, 'What is rate of change of speed?', 'Torque', 'velocity', 'accelaration', 'displacement', NULL, 6),
(16, 'What is rate of change of speed?', 'Torque', 'velocity', 'accelaration', 'displacement', NULL, 6),
(17, 'What is rate of change of speed?', 'Torque', 'velocity', 'accelaration', 'displacement', NULL, 6),
(18, 'What is rate of change of speed?', 'Torque', 'velocity', 'accelaration', 'displacement', NULL, 6),
(19, 'What is rate of change of speed?', 'Torque', 'velocity', 'accelaration', 'displacement', NULL, 6),
(20, 'What is rate of change of speed?', 'Torque', 'velocity', 'accelaration', 'displacement', NULL, 6),
(21, 'What is rate of change of speed?', 'Torque', 'velocity', 'accelaration', 'displacement', NULL, 6),
(22, 'What is rate of change of speed?', 'Torque', 'velocity', 'accelaration', 'displacement', NULL, 6),
(23, 'What is rate of change of speed?', 'Torque', 'velocity', 'accelaration', 'displacement', NULL, 6),
(24, 'What is rate of change of speed?', 'Torque', 'velocity', 'accelaration', 'displacement', NULL, 6),
(25, 'What is rate of change of speed?', 'Torque', 'velocity', 'accelaration', 'displacement', NULL, 6),
(26, 'What is rate of change of speed?', 'Torque', 'velocity', 'accelaration', 'displacement', NULL, 6),
(27, 'What is rate of change of speed?', 'Torque', 'velocity', 'accelaration', 'displacement', NULL, 6),
(28, 'What is rate of change of speed?', 'Torque', 'velocity', 'accelaration', 'displacement', NULL, 6),
(29, 'What is rate of change of speed?', 'Torque', 'velocity', 'accelaration', 'displacement', NULL, 6),
(30, 'What is rate of change of speed?', 'Torque', 'velocity', 'accelaration', 'displacement', NULL, 6),
(31, 'What is rate of change of speed?', 'Torque', 'velocity', 'accelaration', 'displacement', NULL, 6),
(32, 'what is your name', 'newton', 'manuval', 'accelaration', 'displacement', 'displacement', 6),
(33, 'what is your name', 'newton', 'manuval', 'accelaration', 'displacement', NULL, 6),
(34, 'what is your name', 'newton', 'manuval', 'accelaration', 'displacement', NULL, 6),
(35, 'what is your name', 'newton', 'manuval', 'accelaration', 'displacement', NULL, 6),
(36, 'iu9ityh', 'rf98uyh', '98g9frg', 'r98tg9rf', 'diufhguif', 'rf98uyh', 6),
(37, 'he .....my friend', 'is', 'were', 'are', 'be', 'is', 8);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `Reg_no` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(20) DEFAULT NULL,
  `department` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Reg_no`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Reg_no`, `s_name`, `department`, `user_id`) VALUES
(1, 'dhuruntham', 'Mathematics', 28),
(2, 'tholvi', 'Mathematics', 28),
(3, 'sijo', 'Mathematics', 6),
(4, 'sesna', 'Mathematics', 33),
(5, '', '', 34);

-- --------------------------------------------------------

--
-- Table structure for table `s_exam`
--

CREATE TABLE IF NOT EXISTS `s_exam` (
  `ans_id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `answer` varchar(500) DEFAULT NULL,
  `Reg_no` int(11) DEFAULT NULL,
  `q_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ans_id`),
  KEY `Reg_no` (`Reg_no`),
  KEY `q_id` (`q_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_exam`
--


-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `T_name` varchar(20) DEFAULT NULL,
  `department` varchar(20) DEFAULT NULL,
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`staff_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`T_name`, `department`, `staff_id`, `user_id`) VALUES
(' vc cgbc', 'Mathematics', 1, 21),
('hjbh', 'Mathematics', 2, 22),
(' bnjm', 'Mathematics', 3, 23),
(' bnjm', 'Mathematics', 4, 24),
(' bnjm', 'Mathematics', 5, 25),
('z', 'Malayalam', 6, 26),
('shanet', 'Mathematics', 7, 6),
('manuval', 'Mathematics', 8, 31);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `exam_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `teacher` (`staff_id`);

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`e_id`) REFERENCES `exam` (`e_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `login` (`user_id`);

--
-- Constraints for table `s_exam`
--
ALTER TABLE `s_exam`
  ADD CONSTRAINT `s_exam_ibfk_1` FOREIGN KEY (`Reg_no`) REFERENCES `student` (`Reg_no`),
  ADD CONSTRAINT `s_exam_ibfk_2` FOREIGN KEY (`q_id`) REFERENCES `question` (`q_id`);

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `login` (`user_id`);
