-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 28, 2019 at 05:31 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `binara_tennis_selections`
--

-- --------------------------------------------------------

--
-- Table structure for table `match_formations`
--

CREATE TABLE `match_formations` (
  `Match_ID` int(3) NOT NULL,
  `Player_1` varchar(20) DEFAULT NULL,
  `Player_2` varchar(20) DEFAULT NULL,
  `P_1_Score` varchar(3) DEFAULT NULL,
  `P_2_Score` varchar(3) DEFAULT NULL,
  `Winner` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `match_formations`
--

INSERT INTO `match_formations` (`Match_ID`, `Player_1`, `Player_2`, `P_1_Score`, `P_2_Score`, `Winner`) VALUES
(1, 'Thenuka', 'Isuru', '5', '10', 'Isuru'),
(2, 'Thenuka', 'Chalaka', '10', '4', 'Thenuka'),
(3, 'Thenuka', 'Pandula', '6', '10', 'Pandula'),
(4, 'Thenuka', 'Sahan', '6', '10', 'Sahan'),
(5, 'Thenuka', 'Akila', '4', '10', 'Akila'),
(6, 'Thenuka', 'Pathmika', NULL, NULL, NULL),
(7, 'Thenuka', 'Abises', NULL, NULL, NULL),
(8, 'Thenuka', 'Anjana', '3', '10', 'Anjana'),
(9, 'Thenuka', 'Uthpala', NULL, NULL, NULL),
(10, 'Thenuka', 'Shakya', '5', '10', 'Shakya'),
(11, 'Thenuka', 'Charindu', NULL, NULL, NULL),
(12, 'Thenuka', 'Shanuka', '3', '10', 'Anjana'),
(13, 'Thenuka', 'Ravindu', NULL, NULL, NULL),
(14, 'Thenuka', 'Chathura', '10', '3', 'Thenuka'),
(15, 'Thenuka', 'Tharindu', '10', '5', 'Thenuka'),
(16, 'Isuru', 'Chalaka', '10', '4', 'Isuru'),
(17, 'Isuru', 'Pandula', '10', '4', 'Isuru'),
(18, 'Isuru', 'Sahan', '10', '12', 'Sahan'),
(19, 'Isuru', 'Akila', '12', '10', 'Isuru'),
(20, 'Isuru', 'Pathmika', '2', '10', 'Pathmika'),
(21, 'Isuru', 'Abises', '7', '10', 'Abises'),
(22, 'Isuru', 'Anjana', '1', '10', 'Anjana'),
(23, 'Isuru', 'Uthpala', NULL, NULL, NULL),
(24, 'Isuru', 'Shakya', '4', '10', 'Shakya'),
(25, 'Isuru', 'Charindu', NULL, NULL, NULL),
(26, 'Isuru', 'Shanuka', '2', '10', 'Shanuka'),
(27, 'Isuru', 'Ravindu', NULL, NULL, NULL),
(28, 'Isuru', 'Chathura', '10', '4', 'Isuru'),
(29, 'Isuru', 'Tharindu', '7', '10', 'Tharindu'),
(30, 'Chalaka', 'Pandula', '4', '10', 'Chalaka'),
(31, 'Chalaka', 'Sahan', NULL, NULL, NULL),
(32, 'Chalaka', 'Akila', '7', '10', 'Akila'),
(33, 'Chalaka', 'Pathmika', '1', '10', 'Pathmika'),
(34, 'Chalaka', 'Abises', '1', '10', 'Abises'),
(35, 'Chalaka', 'Anjana', '5', '10', 'Anjana'),
(36, 'Chalaka', 'Uthpala', NULL, NULL, NULL),
(37, 'Chalaka', 'Shakya', NULL, NULL, NULL),
(38, 'Chalaka', 'Charindu', NULL, NULL, NULL),
(39, 'Chalaka', 'Shanuka', '0', '10', 'Shanuka'),
(40, 'Chalaka', 'Ravindu', NULL, NULL, NULL),
(41, 'Chalaka', 'Chathura', '3', '10', 'Chathura'),
(42, 'Chalaka', 'Tharindu', '5', '10', 'Tharindu'),
(43, 'Pandula', 'Sahan', NULL, NULL, NULL),
(44, 'Pandula', 'Akila', NULL, NULL, NULL),
(45, 'Pandula', 'Pathmika', '15', '13', 'Pandula'),
(46, 'Pandula', 'Abises', '2', '10', 'Abises'),
(47, 'Pandula', 'Anjana', '10', '8', 'Pandula'),
(48, 'Pandula', 'Uthpala', NULL, NULL, NULL),
(49, 'Pandula', 'Shakya', NULL, NULL, NULL),
(50, 'Pandula', 'Charindu', NULL, NULL, NULL),
(51, 'Pandula', 'Shanuka', '4', '10', 'Shanuka'),
(52, 'Pandula', 'Ravindu', NULL, NULL, NULL),
(53, 'Pandula', 'Chathura', NULL, NULL, NULL),
(54, 'Pandula', 'Tharindu', '10', '8', 'Pandula'),
(55, 'Sahan', 'Akila', '10', '6', 'Sahan'),
(56, 'Sahan', 'Pathmika', '11', '9', 'Sahan'),
(57, 'Sahan', 'Abises', '10', '7', 'Sahan'),
(58, 'Sahan', 'Anjana', '4', '10', 'Anjana'),
(59, 'Sahan', 'Uthpala', NULL, NULL, NULL),
(60, 'Sahan', 'Shakya', '10', '8', 'Sahan'),
(61, 'Sahan', 'Charindu', NULL, NULL, NULL),
(62, 'Sahan', 'Shanuka', '5', '10', 'Shanuka'),
(63, 'Sahan', 'Ravindu', NULL, NULL, NULL),
(64, 'Sahan', 'Chathura', '10', '1', 'Sahan'),
(65, 'Sahan', 'Tharindu', '10', '7', 'Sahan'),
(66, 'Akila', 'Pathmika', '11', '9', 'Akila'),
(67, 'Akila', 'Abises', '6', '10', 'Abises'),
(68, 'Akila', 'Anjana', '8', '10', 'Anjana'),
(69, 'Akila', 'Uthpala', NULL, NULL, NULL),
(70, 'Akila', 'Shakya', NULL, NULL, NULL),
(71, 'Akila', 'Charindu', '9', '10', 'Charindu'),
(72, 'Akila', 'Shanuka', '2', '10', 'Shanuka'),
(73, 'Akila', 'Ravindu', NULL, NULL, NULL),
(74, 'Akila', 'Chathura', '10', '5', 'Akila'),
(75, 'Akila', 'Tharindu', '5', '10', 'Tharindu'),
(76, 'Pathmika', 'Abises', '10', '8', 'Pathmika'),
(77, 'Pathmika', 'Anjana', '6', '10', 'Anjana'),
(78, 'Pathmika', 'Uthpala', NULL, NULL, NULL),
(79, 'Pathmika', 'Shakya', NULL, NULL, NULL),
(80, 'Pathmika', 'Charindu', NULL, NULL, NULL),
(81, 'Pathmika', 'Shanuka', '2', '10', 'Shanuka'),
(82, 'Pathmika', 'Ravindu', '6', '10', 'Ravindu'),
(83, 'Pathmika', 'Chathura', '00', '00', 'Pathmika'),
(84, 'Pathmika', 'Tharindu', '10', '1', 'Pathmika'),
(85, 'Abises', 'Anjana', '6', '10', 'Anjana'),
(86, 'Abises', 'Uthpala', NULL, NULL, NULL),
(87, 'Abises', 'Shakya', NULL, NULL, NULL),
(88, 'Abises', 'Charindu', '10', '3', 'Abises'),
(89, 'Abises', 'Shanuka', '10', '5', 'Abises'),
(90, 'Abises', 'Ravindu', NULL, NULL, NULL),
(91, 'Abises', 'Chathura', '10', '4', 'Abises'),
(92, 'Abises', 'Tharindu', '00', '00', 'Abises'),
(93, 'Anjana', 'Uthpala', NULL, NULL, NULL),
(94, 'Anjana', 'Shakya', '8', '10', 'Shakya'),
(95, 'Anjana', 'Charindu', NULL, NULL, NULL),
(96, 'Anjana', 'Shanuka', '5', '10', 'Shanuka'),
(97, 'Anjana', 'Ravindu', NULL, NULL, NULL),
(98, 'Anjana', 'Chathura', NULL, NULL, NULL),
(99, 'Anjana', 'Tharindu', '10', '7', 'Anjana'),
(100, 'Uthpala', 'Shakya', NULL, NULL, NULL),
(101, 'Uthpala', 'Charindu', NULL, NULL, NULL),
(102, 'Uthpala', 'Shanuka', NULL, NULL, NULL),
(103, 'Uthpala', 'Ravindu', NULL, NULL, NULL),
(104, 'Uthpala', 'Chathura', NULL, NULL, NULL),
(105, 'Uthpala', 'Tharindu', NULL, NULL, NULL),
(106, 'Shakya', 'Charindu', NULL, NULL, NULL),
(107, 'Shakya', 'Shanuka', '5', '10', 'Shanuka'),
(108, 'Shakya', 'Ravindu', '4', '10', 'Ravindu'),
(109, 'Shakya', 'Chathura', '10', '4', 'Shakya'),
(110, 'Shakya', 'Tharindu', '6', '10', 'Tharindu'),
(111, 'Charindu', 'Shanuka', NULL, NULL, NULL),
(112, 'Charindu', 'Ravindu', NULL, NULL, NULL),
(113, 'Charindu', 'Chathura', NULL, NULL, NULL),
(114, 'Charindu', 'Tharindu', NULL, NULL, NULL),
(115, 'Shanuka', 'Ravindu', NULL, NULL, NULL),
(116, 'Shanuka', 'Chathura', '10', '2', 'Shanuka'),
(117, 'Shanuka', 'Tharindu', '10', '4', 'Shanuka'),
(118, 'Ravindu', 'Chathura', NULL, NULL, NULL),
(119, 'Ravindu', 'Tharindu', NULL, NULL, NULL),
(120, 'Chathura', 'Tharindu', '1', '10', 'Tharindu');

-- --------------------------------------------------------

--
-- Table structure for table `match_formations_w`
--

CREATE TABLE `match_formations_w` (
  `Match_ID` int(3) NOT NULL,
  `Player_1` varchar(20) DEFAULT NULL,
  `Player_2` varchar(20) DEFAULT NULL,
  `P_1_Score` varchar(3) DEFAULT NULL,
  `P_2_Score` varchar(3) DEFAULT NULL,
  `Winner` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `match_formations_w`
--

INSERT INTO `match_formations_w` (`Match_ID`, `Player_1`, `Player_2`, `P_1_Score`, `P_2_Score`, `Winner`) VALUES
(1, 'Bavanthi', 'Dilhani', '4', '10', 'Dilhani'),
(2, 'Bavanthi', 'Randie', NULL, NULL, NULL),
(3, 'Bavanthi', 'Malithya', '3', '10', 'Malithya'),
(4, 'Bavanthi', 'Amaya', '2', '10', 'Amaya'),
(5, 'Bavanthi', 'Nitharshana', NULL, NULL, NULL),
(6, 'Bavanthi', 'Sandareka', '3', '10', 'Sandareka'),
(7, 'Bavanthi', 'Maheshi', '3', '10', 'Maheshi'),
(8, 'Bavanthi', 'Tharindi', NULL, NULL, NULL),
(9, 'Bavanthi', 'Anuki', NULL, NULL, NULL),
(10, 'Bavanthi', 'Thilini', NULL, NULL, NULL),
(11, 'Dilhani', 'Randie', '3', '10', 'Randie'),
(12, 'Dilhani', 'Malithya', '10', '6', 'Dilhani'),
(13, 'Dilhani', 'Amaya', '8', '10', 'Amaya'),
(14, 'Dilhani', 'Nitharshana', '4', '10', 'Nitharshana'),
(15, 'Dilhani', 'Sandareka', NULL, NULL, NULL),
(16, 'Dilhani', 'Maheshi', NULL, NULL, NULL),
(17, 'Dilhani', 'Tharindi', NULL, NULL, NULL),
(18, 'Dilhani', 'Anuki', '12', '10', 'Dilhani'),
(19, 'Dilhani', 'Thilini', NULL, NULL, NULL),
(20, 'Randie', 'Malithya', '10', '1', 'Randie'),
(21, 'Randie', 'Amaya', '10', '6', 'Randie'),
(22, 'Randie', 'Nitharshana', '4', '10', 'Nitharshana'),
(23, 'Randie', 'Sandareka', NULL, NULL, NULL),
(24, 'Randie', 'Maheshi', '10', '0', 'Randie'),
(25, 'Randie', 'Tharindi', NULL, NULL, NULL),
(26, 'Randie', 'Anuki', '10', '3', 'Randie'),
(27, 'Randie', 'Thilini', NULL, NULL, NULL),
(28, 'Malithya', 'Amaya', '5', '10', 'Amaya'),
(29, 'Malithya', 'Nitharshana', '1', '10', 'Nitharshana'),
(30, 'Malithya', 'Sandareka', '8', '10', 'Sandareka'),
(31, 'Malithya', 'Maheshi', NULL, NULL, NULL),
(32, 'Malithya', 'Tharindi', NULL, NULL, NULL),
(33, 'Malithya', 'Anuki', '8', '10', 'Anuki'),
(34, 'Malithya', 'Thilini', NULL, NULL, NULL),
(35, 'Amaya', 'Nitharshana', NULL, NULL, NULL),
(36, 'Amaya', 'Sandareka', NULL, NULL, NULL),
(37, 'Amaya', 'Maheshi', NULL, NULL, NULL),
(38, 'Amaya', 'Tharindi', NULL, NULL, NULL),
(39, 'Amaya', 'Anuki', '10', '6', 'Amaya'),
(40, 'Amaya', 'Thilini', NULL, NULL, NULL),
(41, 'Nitharshana', 'Sandareka', NULL, NULL, NULL),
(42, 'Nitharshana', 'Maheshi', NULL, NULL, NULL),
(43, 'Nitharshana', 'Tharindi', NULL, NULL, NULL),
(44, 'Nitharshana', 'Anuki', '10', '7', 'Nitharshana'),
(45, 'Nitharshana', 'Thilini', NULL, NULL, NULL),
(46, 'Sandareka', 'Maheshi', NULL, NULL, NULL),
(47, 'Sandareka', 'Tharindi', NULL, NULL, NULL),
(48, 'Sandareka', 'Anuki', NULL, NULL, NULL),
(49, 'Sandareka', 'Thilini', '12', '10', 'Sandareka'),
(50, 'Maheshi', 'Tharindi', NULL, NULL, NULL),
(51, 'Maheshi', 'Anuki', '3', '10', 'Anuki'),
(52, 'Maheshi', 'Thilini', NULL, NULL, NULL),
(53, 'Tharindi', 'Anuki', NULL, NULL, NULL),
(54, 'Tharindi', 'Thilini', NULL, NULL, NULL),
(55, 'Anuki', 'Thilini', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `ID` int(3) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Gender` varchar(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`ID`, `Name`, `Gender`) VALUES
(1, 'Thenuka', 'Male'),
(2, 'Isuru', 'Male'),
(3, 'Chalaka', 'Male'),
(4, 'Pandula', 'Male'),
(5, 'Sahan', 'Male'),
(6, 'Akila', 'Male'),
(7, 'Pathmika', 'Male'),
(8, 'Abises', 'Male'),
(9, 'Anjana', 'Male'),
(10, 'Uthpala', 'Male'),
(11, 'Shakya', 'Male'),
(12, 'Charindu', 'Male'),
(13, 'Shanuka', 'Male'),
(14, 'Ravindu', 'Male'),
(15, 'Chathura', 'Male'),
(16, 'Tharindu', 'Male'),
(17, 'Bavanthi', 'Female'),
(18, 'Dilhani', 'Female'),
(19, 'Randie', 'Female'),
(20, 'Malithya', 'Female'),
(21, 'Amaya', 'Female'),
(22, 'Nitharshana', 'Female'),
(23, 'Sandareka', 'Female'),
(24, 'Maheshi', 'Female'),
(25, 'Tharindi', 'Female'),
(26, 'Anuki', 'Female'),
(27, 'Thilini', 'Female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `match_formations`
--
ALTER TABLE `match_formations`
  ADD PRIMARY KEY (`Match_ID`);

--
-- Indexes for table `match_formations_w`
--
ALTER TABLE `match_formations_w`
  ADD PRIMARY KEY (`Match_ID`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `match_formations`
--
ALTER TABLE `match_formations`
  MODIFY `Match_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `match_formations_w`
--
ALTER TABLE `match_formations_w`
  MODIFY `Match_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
