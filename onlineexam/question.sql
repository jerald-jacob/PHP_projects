-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 08, 2019 at 10:24 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

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
(32, 'what is your name', 'newton', 'manuval', 'accelaration', 'displacement', 'newton', 6);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`e_id`) REFERENCES `exam` (`e_id`);
