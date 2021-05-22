-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2020 at 02:57 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saloon`
--
CREATE DATABASE IF NOT EXISTS `saloon` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `saloon`;

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `id` int(11) NOT NULL,
  `time` varchar(50) NOT NULL,
  `availability` varchar(5) NOT NULL,
  `bookBy` varchar(50) DEFAULT NULL,
  `CustomerContact` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reserve`
--

INSERT INTO `reserve` (`id`, `time`, `availability`, `bookBy`, `CustomerContact`) VALUES
(1, '9:00 AM', 'A', NULL, NULL),
(2, '10:00 AM', 'A', '', ''),
(3, '11:00 AM', 'A', NULL, NULL),
(4, '12:00 AM', 'A', NULL, NULL),
(5, '01:00 PM', 'A', '', ''),
(6, '02:00 PM', 'A', '', ''),
(7, '3: 00 PM', 'A', NULL, NULL),
(8, '4: 00 PM', 'A', '', ''),
(9, '5: 00 PM', 'A', '', ''),
(10, '6: 00 PM', 'A', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `reserved`
--

CREATE TABLE `reserved` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `Status` varchar(20) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reserved`
--

INSERT INTO `reserved` (`id`, `name`, `time`, `contact`, `Status`) VALUES
(12, 'vahocoxew@mailinator.com', '02:00 PM', '567', 'Pending'),
(15, 'wefosoku@mailinator.com', '10:00 AM', '72', 'Pending'),
(16, 'tugehy@mailinator.com', '01:00 PM', '186', 'Approved'),
(17, 'jyxypycov@mailinator.com', '4: 00 PM', '653', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(7) NOT NULL DEFAULT 'user',
  `contact` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `type`, `contact`, `password`) VALUES
(1, 'admin@admin.com', 'admin', 'admin', '629', '111111'),
(2, 'user@gmail.com', 'user', 'user', '123', '111111'),
(3, 'w@w.com', 'test', 'user', '077144656', '111111'),
(4, 'nexavuce@mailinator.com', 'jukesevunu', 'user', '706', 'Pa$$w0rd!'),
(5, 'asdss@gmail.com', 'rtt', 'user', '4353453545', '123123'),
(6, 'john@john.com', 'john', 'user', '353546546546', '123123'),
(7, 'test@t.com', 'kumuw', 'user', '571', '111111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reserved`
--
ALTER TABLE `reserved`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reserved`
--
ALTER TABLE `reserved`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
