-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2017 at 10:44 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`password`) VALUES
('25031996'),
('25031996');

-- --------------------------------------------------------

--
-- Table structure for table `ae_apt`
--

CREATE TABLE `ae_apt` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ae_eng`
--

CREATE TABLE `ae_eng` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ae_eng`
--

INSERT INTO `ae_eng` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('ques1', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques2', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques3', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques4', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques5', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques6', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques7', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques8', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques9', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques10', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques11', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques12', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques13', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques14', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques15', 'opt1', 'opt2', 'opt3', 'opt4', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ae_tech`
--

CREATE TABLE `ae_tech` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ce_apt`
--

CREATE TABLE `ce_apt` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ce_eng`
--

CREATE TABLE `ce_eng` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ce_tech`
--

CREATE TABLE `ce_tech` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `compiler_test`
--

CREATE TABLE `compiler_test` (
  `q_id` int(100) NOT NULL,
  `topic` varchar(50) NOT NULL,
  `question` varchar(1000) DEFAULT NULL,
  `input_format` varchar(1000) DEFAULT NULL,
  `output_format` varchar(1000) DEFAULT NULL,
  `input1` varchar(1000) DEFAULT NULL,
  `input2` varchar(1000) DEFAULT NULL,
  `input3` varchar(1000) DEFAULT NULL,
  `output1` varchar(1000) DEFAULT NULL,
  `output2` varchar(1000) DEFAULT NULL,
  `output3` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `compiler_test`
--

INSERT INTO `compiler_test` (`q_id`, `topic`, `question`, `input_format`, `output_format`, `input1`, `input2`, `input3`, `output1`, `output2`, `output3`) VALUES
(1, 'topic1', 'ques1', 'ip1', 'op1', 'inp1', 'inp2', 'inp3', 'out1', 'out2', 'out3'),
(2, 'topic1', 'ques1', 'ip1', 'op1', 'inp1', 'inp2', 'inp3', 'out1', 'out2', 'out3'),
(3, 'topic1', 'ques1', 'ip1', 'op1', 'inp1', 'inp2', 'inp3', 'out1', 'out2', 'out3'),
(4, 'topic1', 'ques1', 'ip1', 'op1', 'inp1', 'inp2', 'inp3', 'out1', 'out2', 'out3'),
(5, 'topic1', 'ques1', 'ip1', 'op1', 'inp1', 'inp2', 'inp3', 'out1', 'out2', 'out3'),
(6, 'topic1', 'ques1', 'ip1', 'op1', 'inp1', 'inp2', 'inp3', 'out1', 'out2', 'out3'),
(7, 'topic1', 'ques1', 'ip1', 'op1', 'inp1', 'inp2', 'inp3', 'out1', 'out2', 'out3');

-- --------------------------------------------------------

--
-- Table structure for table `cse_apt`
--

CREATE TABLE `cse_apt` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cse_apt`
--

INSERT INTO `cse_apt` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('ques1', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques2', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques3', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques4', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques5', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques6', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques7', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques8', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques9', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques10', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques11', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques12', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques13', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques14', 'opt1', 'opt2', 'opt3', 'opt4', 0),
('ques15', 'opt1', 'opt2', 'opt3', 'opt4', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cse_eng`
--

CREATE TABLE `cse_eng` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cse_tech`
--

CREATE TABLE `cse_tech` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cse_tech`
--

INSERT INTO `cse_tech` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('which of the following is a programming language?', 'HTML', 'CSS', 'JavaScript', 'C', 4),
('which operator is used for declaring a pointer?', '*', '?', '/', '$', 1),
('who discovered C?', 'prateek', 'dheeraj', 'dennis unc', 'fakru', 3);

-- --------------------------------------------------------

--
-- Table structure for table `ece_apt`
--

CREATE TABLE `ece_apt` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ece_eng`
--

CREATE TABLE `ece_eng` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ece_tech`
--

CREATE TABLE `ece_tech` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ece_tech`
--

INSERT INTO `ece_tech` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('what is a semiconductor materials', 'silicon', 'copper', 'aluminium', 'iron', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ee_apt`
--

CREATE TABLE `ee_apt` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ee_eng`
--

CREATE TABLE `ee_eng` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ee_tech`
--

CREATE TABLE `ee_tech` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mba_apt`
--

CREATE TABLE `mba_apt` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mba_eng`
--

CREATE TABLE `mba_eng` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mba_tech`
--

CREATE TABLE `mba_tech` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mca_apt`
--

CREATE TABLE `mca_apt` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mca_eng`
--

CREATE TABLE `mca_eng` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mca_tech`
--

CREATE TABLE `mca_tech` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `me_apt`
--

CREATE TABLE `me_apt` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `me_eng`
--

CREATE TABLE `me_eng` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `me_tech`
--

CREATE TABLE `me_tech` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `roll_no` varchar(10) NOT NULL,
  `apt_marks` int(4) NOT NULL,
  `tech_marks` int(4) NOT NULL,
  `eng_marks` int(4) NOT NULL,
  `total` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`roll_no`, `apt_marks`, `tech_marks`, `eng_marks`, `total`) VALUES
('27', 0, 2, 0, 12),
('27', 0, 2, 0, 12);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `name` varchar(10) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `contact_no` int(11) DEFAULT NULL,
  `branch` varchar(5) NOT NULL,
  `year` varchar(5) NOT NULL,
  `user_info_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`name`, `roll_no`, `password`, `email`, `contact_no`, `branch`, `year`, `user_info_time`) VALUES
('dheeraj', '27', '123', 'dheerajagrawal1525@g', 9090, 'cse', '3', '2017-06-13 14:59:57'),
('prateek', '62', '123', 'gull@chutuya', 135135, 'ECE', 'Third', '2017-06-14 12:01:09');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `roll_no` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `user_logs_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ae_apt`
--
ALTER TABLE `ae_apt`
  ADD UNIQUE KEY `unique` (`question`(10));

--
-- Indexes for table `ae_eng`
--
ALTER TABLE `ae_eng`
  ADD UNIQUE KEY `unique` (`question`(10));

--
-- Indexes for table `ae_tech`
--
ALTER TABLE `ae_tech`
  ADD UNIQUE KEY `unique` (`question`(10));

--
-- Indexes for table `ce_apt`
--
ALTER TABLE `ce_apt`
  ADD UNIQUE KEY `unique` (`question`(10));

--
-- Indexes for table `ce_eng`
--
ALTER TABLE `ce_eng`
  ADD UNIQUE KEY `unique` (`question`(10));

--
-- Indexes for table `ce_tech`
--
ALTER TABLE `ce_tech`
  ADD UNIQUE KEY `unique` (`question`(10));

--
-- Indexes for table `compiler_test`
--
ALTER TABLE `compiler_test`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `cse_apt`
--
ALTER TABLE `cse_apt`
  ADD UNIQUE KEY `unique` (`question`(10));

--
-- Indexes for table `cse_eng`
--
ALTER TABLE `cse_eng`
  ADD UNIQUE KEY `unique` (`question`(10));

--
-- Indexes for table `cse_tech`
--
ALTER TABLE `cse_tech`
  ADD UNIQUE KEY `unique` (`question`(10));

--
-- Indexes for table `ece_apt`
--
ALTER TABLE `ece_apt`
  ADD UNIQUE KEY `unique` (`question`(10));

--
-- Indexes for table `ece_eng`
--
ALTER TABLE `ece_eng`
  ADD UNIQUE KEY `unique` (`question`(10));

--
-- Indexes for table `ece_tech`
--
ALTER TABLE `ece_tech`
  ADD UNIQUE KEY `unique` (`question`(10));

--
-- Indexes for table `ee_apt`
--
ALTER TABLE `ee_apt`
  ADD UNIQUE KEY `unique` (`question`(10));

--
-- Indexes for table `ee_eng`
--
ALTER TABLE `ee_eng`
  ADD UNIQUE KEY `unique` (`question`(10));

--
-- Indexes for table `ee_tech`
--
ALTER TABLE `ee_tech`
  ADD UNIQUE KEY `unique` (`question`(10));

--
-- Indexes for table `mba_apt`
--
ALTER TABLE `mba_apt`
  ADD UNIQUE KEY `unique` (`question`(10));

--
-- Indexes for table `mba_eng`
--
ALTER TABLE `mba_eng`
  ADD UNIQUE KEY `unique` (`question`(10));

--
-- Indexes for table `mba_tech`
--
ALTER TABLE `mba_tech`
  ADD UNIQUE KEY `unique` (`question`(10));

--
-- Indexes for table `mca_apt`
--
ALTER TABLE `mca_apt`
  ADD UNIQUE KEY `unique` (`question`(10));

--
-- Indexes for table `mca_eng`
--
ALTER TABLE `mca_eng`
  ADD UNIQUE KEY `unique` (`question`(10));

--
-- Indexes for table `mca_tech`
--
ALTER TABLE `mca_tech`
  ADD UNIQUE KEY `unique` (`question`(10));

--
-- Indexes for table `me_apt`
--
ALTER TABLE `me_apt`
  ADD UNIQUE KEY `unique` (`question`(10));

--
-- Indexes for table `me_eng`
--
ALTER TABLE `me_eng`
  ADD UNIQUE KEY `unique` (`question`(10));

--
-- Indexes for table `me_tech`
--
ALTER TABLE `me_tech`
  ADD UNIQUE KEY `unique` (`question`(10));

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD KEY `roll_no` (`roll_no`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`roll_no`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD KEY `roll_no` (`roll_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `compiler_test`
--
ALTER TABLE `compiler_test`
  MODIFY `q_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`roll_no`) REFERENCES `user_info` (`roll_no`),
  ADD CONSTRAINT `result_ibfk_2` FOREIGN KEY (`roll_no`) REFERENCES `user_info` (`roll_no`);

--
-- Constraints for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD CONSTRAINT `user_logs_ibfk_1` FOREIGN KEY (`roll_no`) REFERENCES `user_info` (`roll_no`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
