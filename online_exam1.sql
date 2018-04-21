-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2017 at 09:24 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `online_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
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

CREATE TABLE IF NOT EXISTS `ae_apt` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL,
  UNIQUE KEY `unique` (`question`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ae_apt`
--

INSERT INTO `ae_apt` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?', '120 metres', '180 metres', '324 metres', '150 metres', 4),
('A train 125 m long passes a man, running at 5 km/hr in the same direction in which the train is going, in 10 seconds. The speed of the train is:', '45 km/hr', '50 km/hr', '54 km/hr', '55 km/hr', 2),
('A can do a work in 15 days and B in 20 days. If they work on it together for 4 days, then the fraction of the work that is left is :', '1/4', '1/10', '7/15', '8/15', 4),
(' 	\n\nA sum of money at simple interest amounts to Rs. 815 in 3 years and to Rs. 854 in 4 years. The sum is: ', 'Rs. 650', 'Rs. 690', ' 	Rs. 698', 'Rs. 700', 3),
('From a group of 7 men and 6 women, five persons are to be selected to form a committee so that at least 3 men are there on the committee. In how many ways can it be done? ', '564', '645', '735', '756', 4),
('Two numbers are respectively 20% and 50% more than a third number. The ratio of the two numbers is: ', '2 : 5', '3 : 5', ' 	4 : 5', '6 : 7', 3),
('Find the greatest number that will divide 43, 91 and 183 so as to leave the same remainder in each case. ', '4', '7', '9', '13', 1),
('A right triangle with sides 3 cm, 4 cm and 5 cm is rotated the side of 3 cm to form a cone. The volume of the cone so formed is:', '12 pi cm3', '15  pi cm3', '16 pi  cm3', '20  pi cm3', 1),
('Which of the following statements is not correct?', 'log10 10 = 1', 'log (2 + 3) = log (2 x 3)', 'log10 1 = 0', 'log (1 + 2 + 3) = log 1 + log ', 2),
('The cube root of .000216 is: ', '.6', '.06', '77', '87', 2),
('In the first 10 overs of a cricket game, the run rate was only 3.2. What should be the run rate in the remaining 40 overs to reach the target of 282 runs? ', '6.25', '6.5', '6.75', '7', 1),
('In each question below a sentence broken into five or six parts. Join these parts to make a meaningful sentence. The correct order of parts is the answer.\r\n1. I 	2. immediately 	3. salary\r\n4. my 	5. want', '43152 ', '15432', '25143', '42351', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ae_eng`
--

CREATE TABLE IF NOT EXISTS `ae_eng` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL,
  UNIQUE KEY `unique` (`question`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ae_tech`
--

CREATE TABLE IF NOT EXISTS `ae_tech` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL,
  UNIQUE KEY `unique` (`question`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ce_apt`
--

CREATE TABLE IF NOT EXISTS `ce_apt` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL,
  UNIQUE KEY `unique` (`question`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ce_apt`
--

INSERT INTO `ce_apt` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?', '120 metres', '180 metres', '324 metres', '150 metres', 4),
('A train 125 m long passes a man, running at 5 km/hr in the same direction in which the train is going, in 10 seconds. The speed of the train is:', '45 km/hr', '50 km/hr', '54 km/hr', '55 km/hr', 2),
('A can do a work in 15 days and B in 20 days. If they work on it together for 4 days, then the fraction of the work that is left is :', '1/4', '1/10', '7/15', '8/15', 4),
(' 	\n\nA sum of money at simple interest amounts to Rs. 815 in 3 years and to Rs. 854 in 4 years. The sum is: ', 'Rs. 650', 'Rs. 690', ' 	Rs. 698', 'Rs. 700', 3),
('From a group of 7 men and 6 women, five persons are to be selected to form a committee so that at least 3 men are there on the committee. In how many ways can it be done? ', '564', '645', '735', '756', 4),
('Two numbers are respectively 20% and 50% more than a third number. The ratio of the two numbers is: ', '2 : 5', '3 : 5', ' 	4 : 5', '6 : 7', 3),
('Find the greatest number that will divide 43, 91 and 183 so as to leave the same remainder in each case. ', '4', '7', '9', '13', 1),
('A right triangle with sides 3 cm, 4 cm and 5 cm is rotated the side of 3 cm to form a cone. The volume of the cone so formed is:', '12 pi cm3', '15  pi cm3', '16 pi  cm3', '20  pi cm3', 1),
('Which of the following statements is not correct?', 'log10 10 = 1', 'log (2 + 3) = log (2 x 3)', 'log10 1 = 0', 'log (1 + 2 + 3) = log 1 + log ', 2),
('The cube root of .000216 is: ', '.6', '.06', '77', '87', 2),
('In the first 10 overs of a cricket game, the run rate was only 3.2. What should be the run rate in the remaining 40 overs to reach the target of 282 runs? ', '6.25', '6.5', '6.75', '7', 1),
('In each question below a sentence broken into five or six parts. Join these parts to make a meaningful sentence. The correct order of parts is the answer.\r\n1. I 	2. immediately 	3. salary\r\n4. my 	5. want', '43152 ', '15432', '25143', '42351', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ce_eng`
--

CREATE TABLE IF NOT EXISTS `ce_eng` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL,
  UNIQUE KEY `unique` (`question`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ce_eng`
--

INSERT INTO `ce_eng` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('Read each sentence to find out whether there is any grammatical error in it. The error, if any will be in one part of the sentence. The letter of that part is the answer. If there is no error, the answer is 4. (Ignore the errors of punctuation, if any).(solve as per the direction given above)', 'We discussed about the problem', 'on the eve of the examination', 'that I found it very easy to w', 'No error.', 1),
('In the following questions choose the word which is the exact OPPOSITE of the given words.\nENORMOUS:', 'Soft', 'Soft', 'Tiny', 'Weak', 3),
('choose the word which best expresses the meaning of the given word.\r\nCORPULENT:', 'Lean', 'Gaunt', 'Emaciated', 'Obese', 4),
('Find the correctly spelt words.', 'Efficient', 'Treatmeant', 'Beterment', 'Employd', 1),
('Pick out the most effective word(s) from the given words to fill in the blank to make the sentence meaningfully complete.\r\nFate smiles ...... those who untiringly grapple with stark realities of life.', 'with  	', 'over  	', 'on 	', 'round', 3),
('In each question below, there is a sentence of which some parts have been jumbled up. Rearrange these parts which are labelled P, Q, R and S to produce the correct sentence. Choose the proper sequence.\r\nWhen he :\r\nP : 	did not know\r\nQ : 	he was nervous and\r\nR : 	heard the hue and cry at midnight\r\nS : 	what to do\r\nThe Proper sequence should be:', 'RQPS', 'QSPR', 'SQPR', 'PQRS', 1),
('An incomplete statement (Stem) followed by fillers is given. Pick out the best one which can complete incomplete stem correctly and meaningfully.\r\nDespite his best efforts to conceal his anger ......', 'we could detect that he was ve', 'he failed to give us an impres', 'people came to know that he wa', 'he could succeed in doing it e', 3),
('Some proverbs/idioms are given below together with their meanings. Choose the correct meaning of proverb/idiom, If there is no correct meaning given, E (i.e.) .None of these will be the answer. \r\n To make clean breast of', 'To gain prominence', 'To praise oneself', 'To confess without of reserve', 'None of these', 3),
('Today most businessmen are very worried. To begin with, they are not used to competition.In the past they sold whatever ...(1)... produced at whatever prices they chose. But ...(2)... increasing competition, customers began to ...(3)... and choose. Imports suddenly became ...(4)... available and that too at cheaper ...(5)... ', 'it', 'he', 'they', 'we', 3),
('Each question consist of two words which have a certain relationship to each other followed by four pairs of related words, Select the pair which has the same relationship.   	\r\nDIVA:OPERA', 'producer:theatre', 'director:drama', 'conductor:bus', 'thespian:play', 4);

-- --------------------------------------------------------

--
-- Table structure for table `ce_tech`
--

CREATE TABLE IF NOT EXISTS `ce_tech` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL,
  UNIQUE KEY `unique` (`question`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cse_apt`
--

CREATE TABLE IF NOT EXISTS `cse_apt` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL,
  UNIQUE KEY `unique` (`question`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cse_apt`
--

INSERT INTO `cse_apt` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?', '120 metres', '180 metres', '324 metres', '150 metres', 4),
('A train 125 m long passes a man, running at 5 km/hr in the same direction in which the train is going, in 10 seconds. The speed of the train is:', '45 km/hr', '50 km/hr', '54 km/hr', '55 km/hr', 2),
('A can do a work in 15 days and B in 20 days. If they work on it together for 4 days, then the fraction of the work that is left is :', '1/4', '1/10', '7/15', '8/15', 4),
(' 	\n\nA sum of money at simple interest amounts to Rs. 815 in 3 years and to Rs. 854 in 4 years. The sum is: ', 'Rs. 650', 'Rs. 690', ' 	Rs. 698', 'Rs. 700', 3),
('From a group of 7 men and 6 women, five persons are to be selected to form a committee so that at least 3 men are there on the committee. In how many ways can it be done? ', '564', '645', '735', '756', 4),
('Two numbers are respectively 20% and 50% more than a third number. The ratio of the two numbers is: ', '2 : 5', '3 : 5', ' 	4 : 5', '6 : 7', 3),
('Find the greatest number that will divide 43, 91 and 183 so as to leave the same remainder in each case. ', '4', '7', '9', '13', 1),
('A right triangle with sides 3 cm, 4 cm and 5 cm is rotated the side of 3 cm to form a cone. The volume of the cone so formed is:', '12 pi cm3', '15  pi cm3', '16 pi  cm3', '20  pi cm3', 1),
('Which of the following statements is not correct?', 'log10 10 = 1', 'log (2 + 3) = log (2 x 3)', 'log10 1 = 0', 'log (1 + 2 + 3) = log 1 + log ', 2),
('The cube root of .000216 is: ', '.6', '.06', '77', '87', 2),
('In the first 10 overs of a cricket game, the run rate was only 3.2. What should be the run rate in the remaining 40 overs to reach the target of 282 runs? ', '6.25', '6.5', '6.75', '7', 1),
('In each question below a sentence broken into five or six parts. Join these parts to make a meaningful sentence. The correct order of parts is the answer.\r\n1. I 	2. immediately 	3. salary\r\n4. my 	5. want', '43152 ', '15432', '25143', '42351', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cse_eng`
--

CREATE TABLE IF NOT EXISTS `cse_eng` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL,
  UNIQUE KEY `unique` (`question`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cse_eng`
--

INSERT INTO `cse_eng` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('Read each sentence to find out whether there is any grammatical error in it. The error, if any will be in one part of the sentence. The letter of that part is the answer. If there is no error, the answer is 4. (Ignore the errors of punctuation, if any).(solve as per the direction given above)', 'We discussed about the problem', 'on the eve of the examination', 'that I found it very easy to w', 'No error.', 1),
('In the following questions choose the word which is the exact OPPOSITE of the given words.\nENORMOUS:', 'Soft', 'Soft', 'Tiny', 'Weak', 3),
('choose the word which best expresses the meaning of the given word.\r\nCORPULENT:', 'Lean', 'Gaunt', 'Emaciated', 'Obese', 4),
('Find the correctly spelt words.', 'Efficient', 'Treatmeant', 'Beterment', 'Employd', 1),
('Pick out the most effective word(s) from the given words to fill in the blank to make the sentence meaningfully complete.\r\nFate smiles ...... those who untiringly grapple with stark realities of life.', 'with  	', 'over  	', 'on 	', 'round', 3),
('In each question below, there is a sentence of which some parts have been jumbled up. Rearrange these parts which are labelled P, Q, R and S to produce the correct sentence. Choose the proper sequence.\r\nWhen he :\r\nP : 	did not know\r\nQ : 	he was nervous and\r\nR : 	heard the hue and cry at midnight\r\nS : 	what to do\r\nThe Proper sequence should be:', 'RQPS', 'QSPR', 'SQPR', 'PQRS', 1),
('An incomplete statement (Stem) followed by fillers is given. Pick out the best one which can complete incomplete stem correctly and meaningfully.\r\nDespite his best efforts to conceal his anger ......', 'we could detect that he was ve', 'he failed to give us an impres', 'people came to know that he wa', 'he could succeed in doing it e', 3),
('Some proverbs/idioms are given below together with their meanings. Choose the correct meaning of proverb/idiom, If there is no correct meaning given, E (i.e.) .None of these will be the answer. \r\n To make clean breast of', 'To gain prominence', 'To praise oneself', 'To confess without of reserve', 'None of these', 3),
('Today most businessmen are very worried. To begin with, they are not used to competition.In the past they sold whatever ...(1)... produced at whatever prices they chose. But ...(2)... increasing competition, customers began to ...(3)... and choose. Imports suddenly became ...(4)... available and that too at cheaper ...(5)... ', 'it', 'he', 'they', 'we', 3),
('Each question consist of two words which have a certain relationship to each other followed by four pairs of related words, Select the pair which has the same relationship.   	\r\nDIVA:OPERA', 'producer:theatre', 'director:drama', 'conductor:bus', 'thespian:play', 4);

-- --------------------------------------------------------

--
-- Table structure for table `cse_tech`
--

CREATE TABLE IF NOT EXISTS `cse_tech` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL,
  UNIQUE KEY `unique` (`question`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cse_tech`
--

INSERT INTO `cse_tech` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('The keyword used to transfer control from a function back to the calling function is', 'switch', 'goto', 'go back', 'return', 4),
('What is (void*)0?', 'Representation of NULL pointer', 'Representation of void pointer', 'Error', 'None of above', 1),
('In which header file is the NULL macro defined?', 'stdio.h', 'stddef.h', 'stdio.h and stddef.h', 'math.h', 3),
('How many bytes are occupied by near, far and huge pointers (DOS)?', 'near=2 far=4 huge=4', 'near=4 far=8 huge=8', 'near=2 far=4 huge=8', 'near=4 far=4 huge=8', 1),
('Which of the following function sets first n characters of a string to a given character?', 'strinit()', 'strnset()', 'strset()', 'strcset()', 2),
('If the two strings are identical, then strcmp() function returns', '-1', '1', '0', 'Yes', 3),
('In which numbering system can the binary number 1011011111000101 be easily converted to?', 'Decimal system', 'Hexadecimal system', 'Octal system', 'No need to convert', 2),
('Which bitwise operator is suitable for turning off a particular bit in a number?', '&& operator', '& operator', '|| operator', '! operator', 2),
('What will the function rewind() do?', 'Reposition the file pointer to', 'Reposition the file pointer st', 'Reposition the file pointer to', 'Reposition the file pointer to', 4),
('What is stderr ?', 'standard error', 'standard error types', 'standard error streams', 'standard error definitions', 3);

-- --------------------------------------------------------

--
-- Table structure for table `ece_apt`
--

CREATE TABLE IF NOT EXISTS `ece_apt` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL,
  UNIQUE KEY `unique` (`question`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ece_apt`
--

INSERT INTO `ece_apt` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?', '120 metres', '180 metres', '324 metres', '150 metres', 4),
('A train 125 m long passes a man, running at 5 km/hr in the same direction in which the train is going, in 10 seconds. The speed of the train is:', '45 km/hr', '50 km/hr', '54 km/hr', '55 km/hr', 2),
('A can do a work in 15 days and B in 20 days. If they work on it together for 4 days, then the fraction of the work that is left is :', '1/4', '1/10', '7/15', '8/15', 4),
(' 	\n\nA sum of money at simple interest amounts to Rs. 815 in 3 years and to Rs. 854 in 4 years. The sum is: ', 'Rs. 650', 'Rs. 690', ' 	Rs. 698', 'Rs. 700', 3),
('From a group of 7 men and 6 women, five persons are to be selected to form a committee so that at least 3 men are there on the committee. In how many ways can it be done? ', '564', '645', '735', '756', 4),
('Two numbers are respectively 20% and 50% more than a third number. The ratio of the two numbers is: ', '2 : 5', '3 : 5', ' 	4 : 5', '6 : 7', 3),
('Find the greatest number that will divide 43, 91 and 183 so as to leave the same remainder in each case. ', '4', '7', '9', '13', 1),
('A right triangle with sides 3 cm, 4 cm and 5 cm is rotated the side of 3 cm to form a cone. The volume of the cone so formed is:', '12 pi cm3', '15  pi cm3', '16 pi  cm3', '20  pi cm3', 1),
('Which of the following statements is not correct?', 'log10 10 = 1', 'log (2 + 3) = log (2 x 3)', 'log10 1 = 0', 'log (1 + 2 + 3) = log 1 + log ', 2),
('The cube root of .000216 is: ', '.6', '.06', '77', '87', 2),
('In the first 10 overs of a cricket game, the run rate was only 3.2. What should be the run rate in the remaining 40 overs to reach the target of 282 runs? ', '6.25', '6.5', '6.75', '7', 1),
('In each question below a sentence broken into five or six parts. Join these parts to make a meaningful sentence. The correct order of parts is the answer.\r\n1. I 	2. immediately 	3. salary\r\n4. my 	5. want', '43152 ', '15432', '25143', '42351', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ece_eng`
--

CREATE TABLE IF NOT EXISTS `ece_eng` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL,
  UNIQUE KEY `unique` (`question`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ece_eng`
--

INSERT INTO `ece_eng` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('Read each sentence to find out whether there is any grammatical error in it. The error, if any will be in one part of the sentence. The letter of that part is the answer. If there is no error, the answer is 4. (Ignore the errors of punctuation, if any).(solve as per the direction given above)', 'We discussed about the problem', 'on the eve of the examination', 'that I found it very easy to w', 'No error.', 1),
('In the following questions choose the word which is the exact OPPOSITE of the given words.\nENORMOUS:', 'Soft', 'Soft', 'Tiny', 'Weak', 3),
('choose the word which best expresses the meaning of the given word.\r\nCORPULENT:', 'Lean', 'Gaunt', 'Emaciated', 'Obese', 4),
('Find the correctly spelt words.', 'Efficient', 'Treatmeant', 'Beterment', 'Employd', 1),
('Pick out the most effective word(s) from the given words to fill in the blank to make the sentence meaningfully complete.\r\nFate smiles ...... those who untiringly grapple with stark realities of life.', 'with  	', 'over  	', 'on 	', 'round', 3),
('In each question below, there is a sentence of which some parts have been jumbled up. Rearrange these parts which are labelled P, Q, R and S to produce the correct sentence. Choose the proper sequence.\r\nWhen he :\r\nP : 	did not know\r\nQ : 	he was nervous and\r\nR : 	heard the hue and cry at midnight\r\nS : 	what to do\r\nThe Proper sequence should be:', 'RQPS', 'QSPR', 'SQPR', 'PQRS', 1),
('An incomplete statement (Stem) followed by fillers is given. Pick out the best one which can complete incomplete stem correctly and meaningfully.\r\nDespite his best efforts to conceal his anger ......', 'we could detect that he was ve', 'he failed to give us an impres', 'people came to know that he wa', 'he could succeed in doing it e', 3),
('Some proverbs/idioms are given below together with their meanings. Choose the correct meaning of proverb/idiom, If there is no correct meaning given, E (i.e.) .None of these will be the answer. \r\n To make clean breast of', 'To gain prominence', 'To praise oneself', 'To confess without of reserve', 'None of these', 3),
('Today most businessmen are very worried. To begin with, they are not used to competition.In the past they sold whatever ...(1)... produced at whatever prices they chose. But ...(2)... increasing competition, customers began to ...(3)... and choose. Imports suddenly became ...(4)... available and that too at cheaper ...(5)... ', 'it', 'he', 'they', 'we', 3),
('Each question consist of two words which have a certain relationship to each other followed by four pairs of related words, Select the pair which has the same relationship.   	\r\nDIVA:OPERA', 'producer:theatre', 'director:drama', 'conductor:bus', 'thespian:play', 4);

-- --------------------------------------------------------

--
-- Table structure for table `ece_tech`
--

CREATE TABLE IF NOT EXISTS `ece_tech` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL,
  UNIQUE KEY `unique` (`question`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ece_tech`
--

INSERT INTO `ece_tech` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('what is a semiconductor material', 'silicon', 'copper', 'alluminium', 'iron', 1),
('Which capacitor-store higher amount of energy?', 'Air capacitor', 'Paper capacitor', 'Mica capacitor', 'Plastic film capacitor', 3),
('Assertion (A): Atomic number of sodium is 11.\r\nReason (R): Sodium has a body centred cubic lattice.', 'Both A and R are true and R is', 'Both A and R are true but R is', 'A is true but R is false', 'A is false but R is true', 2),
('An RLC series circuit is underdamped. To make it overdamped, the value of R', 'has to be increased', 'has to be decreased', 'has to be increased to infinit', 'has to be reduced to zero', 1),
('Henry is equivalent to', 'Volts/Ampere', 'Weber/Volt', 'Weber/Ampere', 'Weber/Ampere2', 3),
(' To increase Q factor of a coil, the wire should be', 'long', 'thin', 'thick', 'long and thin', 3),
('An ammeter of 0-25 A range has a guaranteed accuracy of 1% of full scale reading. The current measured is 5 A. The limiting error is', '2%', '2.5%', ' 4%', '5%', 4),
(' The coil of a moving iron instrument has a resistance of 500 ? and an inductance of 1 H. It reads 250 V when a 250 V dc is applied. If series resistance is 2000 ?, its reading when fed by 250 V, 50 Hz ac will be', '260 V', '252 V', '250 V', '248 V', 4),
('In 3 phase power measurement by two wattmeter method, the reading of one wattmeter is zero. The power factor of load is', '1', '0.5', '0', '0.8', 2),
('In a CRO which of the following is not a part of electron gun', 'cathode', 'grid', 'accelerating anode', 'X - Y plates', 4);

-- --------------------------------------------------------

--
-- Table structure for table `ee_apt`
--

CREATE TABLE IF NOT EXISTS `ee_apt` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL,
  UNIQUE KEY `unique` (`question`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ee_apt`
--

INSERT INTO `ee_apt` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?', '120 metres', '180 metres', '324 metres', '150 metres', 4),
('A train 125 m long passes a man, running at 5 km/hr in the same direction in which the train is going, in 10 seconds. The speed of the train is:', '45 km/hr', '50 km/hr', '54 km/hr', '55 km/hr', 2),
('A can do a work in 15 days and B in 20 days. If they work on it together for 4 days, then the fraction of the work that is left is :', '1/4', '1/10', '7/15', '8/15', 4),
(' 	\n\nA sum of money at simple interest amounts to Rs. 815 in 3 years and to Rs. 854 in 4 years. The sum is: ', 'Rs. 650', 'Rs. 690', ' 	Rs. 698', 'Rs. 700', 3),
('From a group of 7 men and 6 women, five persons are to be selected to form a committee so that at least 3 men are there on the committee. In how many ways can it be done? ', '564', '645', '735', '756', 4),
('Two numbers are respectively 20% and 50% more than a third number. The ratio of the two numbers is: ', '2 : 5', '3 : 5', ' 	4 : 5', '6 : 7', 3),
('Find the greatest number that will divide 43, 91 and 183 so as to leave the same remainder in each case. ', '4', '7', '9', '13', 1),
('A right triangle with sides 3 cm, 4 cm and 5 cm is rotated the side of 3 cm to form a cone. The volume of the cone so formed is:', '12 pi cm3', '15  pi cm3', '16 pi  cm3', '20  pi cm3', 1),
('Which of the following statements is not correct?', 'log10 10 = 1', 'log (2 + 3) = log (2 x 3)', 'log10 1 = 0', 'log (1 + 2 + 3) = log 1 + log ', 2),
('The cube root of .000216 is: ', '.6', '.06', '77', '87', 2),
('In the first 10 overs of a cricket game, the run rate was only 3.2. What should be the run rate in the remaining 40 overs to reach the target of 282 runs? ', '6.25', '6.5', '6.75', '7', 1),
('In each question below a sentence broken into five or six parts. Join these parts to make a meaningful sentence. The correct order of parts is the answer.\r\n1. I 	2. immediately 	3. salary\r\n4. my 	5. want', '43152 ', '15432', '25143', '42351', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ee_eng`
--

CREATE TABLE IF NOT EXISTS `ee_eng` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL,
  UNIQUE KEY `unique` (`question`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ee_eng`
--

INSERT INTO `ee_eng` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('Read each sentence to find out whether there is any grammatical error in it. The error, if any will be in one part of the sentence. The letter of that part is the answer. If there is no error, the answer is 4. (Ignore the errors of punctuation, if any).(solve as per the direction given above)', 'We discussed about the problem', 'on the eve of the examination', 'that I found it very easy to w', 'No error.', 1),
('In the following questions choose the word which is the exact OPPOSITE of the given words.\nENORMOUS:', 'Soft', 'Soft', 'Tiny', 'Weak', 3),
('choose the word which best expresses the meaning of the given word.\r\nCORPULENT:', 'Lean', 'Gaunt', 'Emaciated', 'Obese', 4),
('Find the correctly spelt words.', 'Efficient', 'Treatmeant', 'Beterment', 'Employd', 1),
('Pick out the most effective word(s) from the given words to fill in the blank to make the sentence meaningfully complete.\r\nFate smiles ...... those who untiringly grapple with stark realities of life.', 'with  	', 'over  	', 'on 	', 'round', 3),
('In each question below, there is a sentence of which some parts have been jumbled up. Rearrange these parts which are labelled P, Q, R and S to produce the correct sentence. Choose the proper sequence.\r\nWhen he :\r\nP : 	did not know\r\nQ : 	he was nervous and\r\nR : 	heard the hue and cry at midnight\r\nS : 	what to do\r\nThe Proper sequence should be:', 'RQPS', 'QSPR', 'SQPR', 'PQRS', 1),
('An incomplete statement (Stem) followed by fillers is given. Pick out the best one which can complete incomplete stem correctly and meaningfully.\r\nDespite his best efforts to conceal his anger ......', 'we could detect that he was ve', 'he failed to give us an impres', 'people came to know that he wa', 'he could succeed in doing it e', 3),
('Some proverbs/idioms are given below together with their meanings. Choose the correct meaning of proverb/idiom, If there is no correct meaning given, E (i.e.) .None of these will be the answer. \r\n To make clean breast of', 'To gain prominence', 'To praise oneself', 'To confess without of reserve', 'None of these', 3),
('Today most businessmen are very worried. To begin with, they are not used to competition.In the past they sold whatever ...(1)... produced at whatever prices they chose. But ...(2)... increasing competition, customers began to ...(3)... and choose. Imports suddenly became ...(4)... available and that too at cheaper ...(5)... ', 'it', 'he', 'they', 'we', 3),
('Each question consist of two words which have a certain relationship to each other followed by four pairs of related words, Select the pair which has the same relationship.   	\r\nDIVA:OPERA', 'producer:theatre', 'director:drama', 'conductor:bus', 'thespian:play', 4);

-- --------------------------------------------------------

--
-- Table structure for table `ee_tech`
--

CREATE TABLE IF NOT EXISTS `ee_tech` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL,
  UNIQUE KEY `unique` (`question`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mba_apt`
--

CREATE TABLE IF NOT EXISTS `mba_apt` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL,
  UNIQUE KEY `unique` (`question`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mba_apt`
--

INSERT INTO `mba_apt` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?', '120 metres', '180 metres', '324 metres', '150 metres', 4),
('A train 125 m long passes a man, running at 5 km/hr in the same direction in which the train is going, in 10 seconds. The speed of the train is:', '45 km/hr', '50 km/hr', '54 km/hr', '55 km/hr', 2),
('A can do a work in 15 days and B in 20 days. If they work on it together for 4 days, then the fraction of the work that is left is :', '1/4', '1/10', '7/15', '8/15', 4),
(' 	\n\nA sum of money at simple interest amounts to Rs. 815 in 3 years and to Rs. 854 in 4 years. The sum is: ', 'Rs. 650', 'Rs. 690', ' 	Rs. 698', 'Rs. 700', 3),
('From a group of 7 men and 6 women, five persons are to be selected to form a committee so that at least 3 men are there on the committee. In how many ways can it be done? ', '564', '645', '735', '756', 4),
('Two numbers are respectively 20% and 50% more than a third number. The ratio of the two numbers is: ', '2 : 5', '3 : 5', ' 	4 : 5', '6 : 7', 3),
('Find the greatest number that will divide 43, 91 and 183 so as to leave the same remainder in each case. ', '4', '7', '9', '13', 1),
('A right triangle with sides 3 cm, 4 cm and 5 cm is rotated the side of 3 cm to form a cone. The volume of the cone so formed is:', '12 pi cm3', '15  pi cm3', '16 pi  cm3', '20  pi cm3', 1),
('Which of the following statements is not correct?', 'log10 10 = 1', 'log (2 + 3) = log (2 x 3)', 'log10 1 = 0', 'log (1 + 2 + 3) = log 1 + log ', 2),
('The cube root of .000216 is: ', '.6', '.06', '77', '87', 2),
('In the first 10 overs of a cricket game, the run rate was only 3.2. What should be the run rate in the remaining 40 overs to reach the target of 282 runs? ', '6.25', '6.5', '6.75', '7', 1),
('In each question below a sentence broken into five or six parts. Join these parts to make a meaningful sentence. The correct order of parts is the answer.\r\n1. I 	2. immediately 	3. salary\r\n4. my 	5. want', '43152 ', '15432', '25143', '42351', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mba_eng`
--

CREATE TABLE IF NOT EXISTS `mba_eng` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL,
  UNIQUE KEY `unique` (`question`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mba_eng`
--

INSERT INTO `mba_eng` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('Read each sentence to find out whether there is any grammatical error in it. The error, if any will be in one part of the sentence. The letter of that part is the answer. If there is no error, the answer is 4. (Ignore the errors of punctuation, if any).(solve as per the direction given above)', 'We discussed about the problem', 'on the eve of the examination', 'that I found it very easy to w', 'No error.', 1),
('In the following questions choose the word which is the exact OPPOSITE of the given words.\nENORMOUS:', 'Soft', 'Soft', 'Tiny', 'Weak', 3),
('choose the word which best expresses the meaning of the given word.\r\nCORPULENT:', 'Lean', 'Gaunt', 'Emaciated', 'Obese', 4),
('Find the correctly spelt words.', 'Efficient', 'Treatmeant', 'Beterment', 'Employd', 1),
('Pick out the most effective word(s) from the given words to fill in the blank to make the sentence meaningfully complete.\r\nFate smiles ...... those who untiringly grapple with stark realities of life.', 'with  	', 'over  	', 'on 	', 'round', 3),
('In each question below, there is a sentence of which some parts have been jumbled up. Rearrange these parts which are labelled P, Q, R and S to produce the correct sentence. Choose the proper sequence.\r\nWhen he :\r\nP : 	did not know\r\nQ : 	he was nervous and\r\nR : 	heard the hue and cry at midnight\r\nS : 	what to do\r\nThe Proper sequence should be:', 'RQPS', 'QSPR', 'SQPR', 'PQRS', 1),
('An incomplete statement (Stem) followed by fillers is given. Pick out the best one which can complete incomplete stem correctly and meaningfully.\r\nDespite his best efforts to conceal his anger ......', 'we could detect that he was ve', 'he failed to give us an impres', 'people came to know that he wa', 'he could succeed in doing it e', 3),
('Some proverbs/idioms are given below together with their meanings. Choose the correct meaning of proverb/idiom, If there is no correct meaning given, E (i.e.) .None of these will be the answer. \r\n To make clean breast of', 'To gain prominence', 'To praise oneself', 'To confess without of reserve', 'None of these', 3),
('Today most businessmen are very worried. To begin with, they are not used to competition.In the past they sold whatever ...(1)... produced at whatever prices they chose. But ...(2)... increasing competition, customers began to ...(3)... and choose. Imports suddenly became ...(4)... available and that too at cheaper ...(5)... ', 'it', 'he', 'they', 'we', 3),
('Each question consist of two words which have a certain relationship to each other followed by four pairs of related words, Select the pair which has the same relationship.   	\r\nDIVA:OPERA', 'producer:theatre', 'director:drama', 'conductor:bus', 'thespian:play', 4);

-- --------------------------------------------------------

--
-- Table structure for table `mba_tech`
--

CREATE TABLE IF NOT EXISTS `mba_tech` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL,
  UNIQUE KEY `unique` (`question`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mca_apt`
--

CREATE TABLE IF NOT EXISTS `mca_apt` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL,
  UNIQUE KEY `unique` (`question`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mca_apt`
--

INSERT INTO `mca_apt` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?', '120 metres', '180 metres', '324 metres', '150 metres', 4),
('A train 125 m long passes a man, running at 5 km/hr in the same direction in which the train is going, in 10 seconds. The speed of the train is:', '45 km/hr', '50 km/hr', '54 km/hr', '55 km/hr', 2),
('A can do a work in 15 days and B in 20 days. If they work on it together for 4 days, then the fraction of the work that is left is :', '1/4', '1/10', '7/15', '8/15', 4),
(' 	\n\nA sum of money at simple interest amounts to Rs. 815 in 3 years and to Rs. 854 in 4 years. The sum is: ', 'Rs. 650', 'Rs. 690', ' 	Rs. 698', 'Rs. 700', 3),
('From a group of 7 men and 6 women, five persons are to be selected to form a committee so that at least 3 men are there on the committee. In how many ways can it be done? ', '564', '645', '735', '756', 4),
('Two numbers are respectively 20% and 50% more than a third number. The ratio of the two numbers is: ', '2 : 5', '3 : 5', ' 	4 : 5', '6 : 7', 3),
('Find the greatest number that will divide 43, 91 and 183 so as to leave the same remainder in each case. ', '4', '7', '9', '13', 1),
('A right triangle with sides 3 cm, 4 cm and 5 cm is rotated the side of 3 cm to form a cone. The volume of the cone so formed is:', '12 pi cm3', '15  pi cm3', '16 pi  cm3', '20  pi cm3', 1),
('Which of the following statements is not correct?', 'log10 10 = 1', 'log (2 + 3) = log (2 x 3)', 'log10 1 = 0', 'log (1 + 2 + 3) = log 1 + log ', 2),
('The cube root of .000216 is: ', '.6', '.06', '77', '87', 2),
('In the first 10 overs of a cricket game, the run rate was only 3.2. What should be the run rate in the remaining 40 overs to reach the target of 282 runs? ', '6.25', '6.5', '6.75', '7', 1),
('In each question below a sentence broken into five or six parts. Join these parts to make a meaningful sentence. The correct order of parts is the answer.\r\n1. I 	2. immediately 	3. salary\r\n4. my 	5. want', '43152 ', '15432', '25143', '42351', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mca_eng`
--

CREATE TABLE IF NOT EXISTS `mca_eng` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL,
  UNIQUE KEY `unique` (`question`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mca_eng`
--

INSERT INTO `mca_eng` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('Read each sentence to find out whether there is any grammatical error in it. The error, if any will be in one part of the sentence. The letter of that part is the answer. If there is no error, the answer is 4. (Ignore the errors of punctuation, if any).(solve as per the direction given above)', 'We discussed about the problem', 'on the eve of the examination', 'that I found it very easy to w', 'No error.', 1),
('In the following questions choose the word which is the exact OPPOSITE of the given words.\nENORMOUS:', 'Soft', 'Soft', 'Tiny', 'Weak', 3),
('choose the word which best expresses the meaning of the given word.\r\nCORPULENT:', 'Lean', 'Gaunt', 'Emaciated', 'Obese', 4),
('Find the correctly spelt words.', 'Efficient', 'Treatmeant', 'Beterment', 'Employd', 1),
('Pick out the most effective word(s) from the given words to fill in the blank to make the sentence meaningfully complete.\r\nFate smiles ...... those who untiringly grapple with stark realities of life.', 'with  	', 'over  	', 'on 	', 'round', 3),
('In each question below, there is a sentence of which some parts have been jumbled up. Rearrange these parts which are labelled P, Q, R and S to produce the correct sentence. Choose the proper sequence.\r\nWhen he :\r\nP : 	did not know\r\nQ : 	he was nervous and\r\nR : 	heard the hue and cry at midnight\r\nS : 	what to do\r\nThe Proper sequence should be:', 'RQPS', 'QSPR', 'SQPR', 'PQRS', 1),
('An incomplete statement (Stem) followed by fillers is given. Pick out the best one which can complete incomplete stem correctly and meaningfully.\r\nDespite his best efforts to conceal his anger ......', 'we could detect that he was ve', 'he failed to give us an impres', 'people came to know that he wa', 'he could succeed in doing it e', 3),
('Some proverbs/idioms are given below together with their meanings. Choose the correct meaning of proverb/idiom, If there is no correct meaning given, E (i.e.) .None of these will be the answer. \r\n To make clean breast of', 'To gain prominence', 'To praise oneself', 'To confess without of reserve', 'None of these', 3),
('Today most businessmen are very worried. To begin with, they are not used to competition.In the past they sold whatever ...(1)... produced at whatever prices they chose. But ...(2)... increasing competition, customers began to ...(3)... and choose. Imports suddenly became ...(4)... available and that too at cheaper ...(5)... ', 'it', 'he', 'they', 'we', 3),
('Each question consist of two words which have a certain relationship to each other followed by four pairs of related words, Select the pair which has the same relationship.   	\r\nDIVA:OPERA', 'producer:theatre', 'director:drama', 'conductor:bus', 'thespian:play', 4);

-- --------------------------------------------------------

--
-- Table structure for table `mca_tech`
--

CREATE TABLE IF NOT EXISTS `mca_tech` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL,
  UNIQUE KEY `unique` (`question`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `me_apt`
--

CREATE TABLE IF NOT EXISTS `me_apt` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL,
  UNIQUE KEY `unique` (`question`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `me_apt`
--

INSERT INTO `me_apt` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?', '120 metres', '180 metres', '324 metres', '150 metres', 4),
('A train 125 m long passes a man, running at 5 km/hr in the same direction in which the train is going, in 10 seconds. The speed of the train is:', '45 km/hr', '50 km/hr', '54 km/hr', '55 km/hr', 2),
('A can do a work in 15 days and B in 20 days. If they work on it together for 4 days, then the fraction of the work that is left is :', '1/4', '1/10', '7/15', '8/15', 4),
(' 	\n\nA sum of money at simple interest amounts to Rs. 815 in 3 years and to Rs. 854 in 4 years. The sum is: ', 'Rs. 650', 'Rs. 690', ' 	Rs. 698', 'Rs. 700', 3),
('From a group of 7 men and 6 women, five persons are to be selected to form a committee so that at least 3 men are there on the committee. In how many ways can it be done? ', '564', '645', '735', '756', 4),
('Two numbers are respectively 20% and 50% more than a third number. The ratio of the two numbers is: ', '2 : 5', '3 : 5', ' 	4 : 5', '6 : 7', 3),
('Find the greatest number that will divide 43, 91 and 183 so as to leave the same remainder in each case. ', '4', '7', '9', '13', 1),
('A right triangle with sides 3 cm, 4 cm and 5 cm is rotated the side of 3 cm to form a cone. The volume of the cone so formed is:', '12 pi cm3', '15  pi cm3', '16 pi  cm3', '20  pi cm3', 1),
('Which of the following statements is not correct?', 'log10 10 = 1', 'log (2 + 3) = log (2 x 3)', 'log10 1 = 0', 'log (1 + 2 + 3) = log 1 + log ', 2),
('The cube root of .000216 is: ', '.6', '.06', '77', '87', 2),
('In the first 10 overs of a cricket game, the run rate was only 3.2. What should be the run rate in the remaining 40 overs to reach the target of 282 runs? ', '6.25', '6.5', '6.75', '7', 1),
('In each question below a sentence broken into five or six parts. Join these parts to make a meaningful sentence. The correct order of parts is the answer.\r\n1. I 	2. immediately 	3. salary\r\n4. my 	5. want', '43152 ', '15432', '25143', '42351', 2);

-- --------------------------------------------------------

--
-- Table structure for table `me_eng`
--

CREATE TABLE IF NOT EXISTS `me_eng` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL,
  UNIQUE KEY `unique` (`question`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `me_eng`
--

INSERT INTO `me_eng` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('Read each sentence to find out whether there is any grammatical error in it. The error, if any will be in one part of the sentence. The letter of that part is the answer. If there is no error, the answer is 4. (Ignore the errors of punctuation, if any).(solve as per the direction given above)', 'We discussed about the problem', 'on the eve of the examination', 'that I found it very easy to w', 'No error.', 1),
('In the following questions choose the word which is the exact OPPOSITE of the given words.\nENORMOUS:', 'Soft', 'Soft', 'Tiny', 'Weak', 3),
('choose the word which best expresses the meaning of the given word.\r\nCORPULENT:', 'Lean', 'Gaunt', 'Emaciated', 'Obese', 4),
('Find the correctly spelt words.', 'Efficient', 'Treatmeant', 'Beterment', 'Employd', 1),
('Pick out the most effective word(s) from the given words to fill in the blank to make the sentence meaningfully complete.\r\nFate smiles ...... those who untiringly grapple with stark realities of life.', 'with  	', 'over  	', 'on 	', 'round', 3),
('In each question below, there is a sentence of which some parts have been jumbled up. Rearrange these parts which are labelled P, Q, R and S to produce the correct sentence. Choose the proper sequence.\r\nWhen he :\r\nP : 	did not know\r\nQ : 	he was nervous and\r\nR : 	heard the hue and cry at midnight\r\nS : 	what to do\r\nThe Proper sequence should be:', 'RQPS', 'QSPR', 'SQPR', 'PQRS', 1),
('An incomplete statement (Stem) followed by fillers is given. Pick out the best one which can complete incomplete stem correctly and meaningfully.\r\nDespite his best efforts to conceal his anger ......', 'we could detect that he was ve', 'he failed to give us an impres', 'people came to know that he wa', 'he could succeed in doing it e', 3),
('Some proverbs/idioms are given below together with their meanings. Choose the correct meaning of proverb/idiom, If there is no correct meaning given, E (i.e.) .None of these will be the answer. \r\n To make clean breast of', 'To gain prominence', 'To praise oneself', 'To confess without of reserve', 'None of these', 3),
('Today most businessmen are very worried. To begin with, they are not used to competition.In the past they sold whatever ...(1)... produced at whatever prices they chose. But ...(2)... increasing competition, customers began to ...(3)... and choose. Imports suddenly became ...(4)... available and that too at cheaper ...(5)... ', 'it', 'he', 'they', 'we', 3),
('Each question consist of two words which have a certain relationship to each other followed by four pairs of related words, Select the pair which has the same relationship.   	\r\nDIVA:OPERA', 'producer:theatre', 'director:drama', 'conductor:bus', 'thespian:play', 4);

-- --------------------------------------------------------

--
-- Table structure for table `me_tech`
--

CREATE TABLE IF NOT EXISTS `me_tech` (
  `question` text NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` int(1) NOT NULL,
  UNIQUE KEY `unique` (`question`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE IF NOT EXISTS `result` (
  `roll_no` varchar(10) NOT NULL,
  `apt_marks` int(4) NOT NULL DEFAULT '0',
  `tech_marks` int(4) NOT NULL DEFAULT '0',
  `eng_marks` int(4) NOT NULL DEFAULT '0',
  KEY `roll_no` (`roll_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`roll_no`, `apt_marks`, `tech_marks`, `eng_marks`) VALUES
('62', 1, 3, 3),
('90', 4, 1, 7),
('11', 1, 0, 0),
('55', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `name` varchar(10) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `contact_no` int(11) DEFAULT NULL,
  `branch` varchar(5) NOT NULL,
  `year` varchar(5) NOT NULL,
  `user_info_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`roll_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`name`, `roll_no`, `password`, `email`, `contact_no`, `branch`, `year`, `user_info_time`) VALUES
('paaqn', '11', 'qwe', 'fgdh@gh.nm', 12345678, 'CSE', 'First', '2017-06-15 06:48:21'),
('gfdh', '55', '123', 'hfgd@gh.com', 2147483647, 'CSE', 'First', '2017-06-19 16:21:08'),
('prateek', '62', '123', '123@123.123', 123, 'CSE', 'First', '2017-06-14 16:04:41'),
('vinit', '90', '83870600', 'vinitgupta@gmail.com', 2147483647, 'CSE', 'Third', '2017-06-15 06:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE IF NOT EXISTS `user_logs` (
  `roll_no` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `user_logs_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `roll_no` (`roll_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
