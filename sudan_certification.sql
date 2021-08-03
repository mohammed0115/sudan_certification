-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 03, 2021 at 03:59 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sudan_certification`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'sudan'),
(2, 'egypt');

-- --------------------------------------------------------

--
-- Table structure for table `Sheet2`
--

CREATE TABLE `Sheet2` (
  `empid` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `salary` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Sheet2`
--

INSERT INTO `Sheet2` (`empid`, `salary`) VALUES
('1', '3000'),
('2', '4000'),
('3', '6000');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `English` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Quaran` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `physic` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `chemical` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `mathmatic` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Arabic` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Engineering` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `total` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `result` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`, `English`, `Quaran`, `physic`, `chemical`, `mathmatic`, `Arabic`, `Engineering`, `total`, `result`) VALUES
('24142', 'محمد كمال محمد حسب الله ', '80', '72', '75', '79', '77', '79', '80', '77.4', 'نجاح'),
('24172', 'اليراء هشام اسماعيل محمد', '80', '80', '75', '80', '77', '79', '80', '78.7', 'نجاح');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'mohemmed_kamal0115498898', '$2y$10$ZZWUvGHzDzt1SevgXiRNje3tpiD6d2/oJptRDV/PBx9tXp56pviB2', '2021-08-02 10:09:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
