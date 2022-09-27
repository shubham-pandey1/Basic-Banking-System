-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2022 at 04:05 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--
CREATE DATABASE IF NOT EXISTS `bank` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bank`;

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `sr` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Message` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`sr`, `Name`, `Email`, `Message`) VALUES
(1, 'Shubham Pandey', 'www.shubhamp1@gmail.com', 'hello'),
(2, 'Shubham Pandey', 'www.shubhamp1@gmail.com', 'shubham'),
(3, 'Sra', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `Sr.` int(10) NOT NULL,
  `Sender` varchar(50) DEFAULT NULL,
  `Receiver` varchar(50) DEFAULT NULL,
  `Amount` bigint(20) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`Sr.`, `Sender`, `Receiver`, `Amount`, `Status`) VALUES
(1, '1234567891', '1234567890', 100, 'succeed'),
(2, '1234567891', '1234567890', 100, 'succeed'),
(3, '1234567899', '1234567895', 200, 'succeed'),
(4, '1234567899', '1234567895', 200, 'succeed'),
(5, '1234567890', '1234567891', 100, 'succeed'),
(6, '1234567890', '1234567894', 50000, 'failed');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Sr.` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Accno` varchar(20) NOT NULL,
  `blc` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Sr.`, `Name`, `Email`, `Accno`, `blc`) VALUES
(1, 'Shubham', 'shubham@gmail.com', '1234567890', 10000),
(2, 'Manjeet', 'manjeet@gmail.com', '1234567891', 20000),
(3, 'Aditya', 'aditya@gmail.com', '1234567892', 50000),
(4, 'Rahul', 'rahul@gmail.com', '1234567893', 5000),
(5, 'Ankur', 'ankur@gmail.com', '1234567894', 10000),
(6, 'Vijay', 'vijay@gmail.com', '1234567895', 50400),
(7, 'Hamza', 'hamza@gmail.com', '1234567896', 8000),
(8, 'Shobhit', 'shobhit@gmail.com', '1234567897', 20000),
(9, 'abdul', 'abdul@gmail.com', '1234567898', 20000),
(10, 'Janardan', 'janardan@gmail.com', '1234567899', 29600);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`sr`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`Sr.`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Sr.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `sr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `Sr.` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Sr.` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
