-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2017 at 05:35 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `websm`
--

-- --------------------------------------------------------

--
-- Table structure for table `shelter`
--

CREATE TABLE `shelter` (
  `id` int(10) NOT NULL,
  `tactical` char(50) CHARACTER SET utf8 NOT NULL,
  `name` char(100) CHARACTER SET utf8 NOT NULL,
  `type` char(50) CHARACTER SET utf8 NOT NULL,
  `status` char(50) CHARACTER SET utf8 NOT NULL,
  `adult` char(10) CHARACTER SET utf8 NOT NULL,
  `children` char(10) CHARACTER SET utf8 NOT NULL,
  `leo` char(10) CHARACTER SET utf8 NOT NULL,
  `ems` char(10) CHARACTER SET utf8 NOT NULL,
  `pets` char(10) CHARACTER SET utf8 NOT NULL,
  `sheltered` char(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shelter`
--

INSERT INTO `shelter` (`id`, `tactical`, `name`, `type`, `status`, `adult`, `children`, `leo`, `ems`, `pets`, `sheltered`) VALUES
(1, 'KSES', 'Kelley Smith Elementry School', 'Special Needs', 'Closed', '0', '0', '0', '0', '0', '0'),
(2, 'QIR', 'QI Roberts', 'General Needs', 'Closed', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(10) NOT NULL,
  `name` char(100) CHARACTER SET utf8 NOT NULL,
  `status` char(100) CHARACTER SET utf8 NOT NULL,
  `adult` char(10) CHARACTER SET utf8 NOT NULL,
  `children` char(10) CHARACTER SET utf8 NOT NULL,
  `leo` char(10) CHARACTER SET utf8 NOT NULL,
  `ems` char(10) CHARACTER SET utf8 NOT NULL,
  `pets` char(10) CHARACTER SET utf8 NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `status`, `adult`, `children`, `leo`, `ems`, `pets`, `date`) VALUES
(1, 'Kelley Smith Elementry School', 'Closed', '0', '0', '0', '0', '0', '0000-00-00 00:00:00'),
(2, 'QI Roberts Middel School', 'Closed', '0', '0', '0', '0', '0', '0000-00-00 00:00:00'),
(33, 'Cresent City High School', 'Open', '35', '8', '1', '2', '0', '0000-00-00 00:00:00'),
(34, 'Cresent City High School', 'Stand By', '35', '8', '1', '2', '0', '0000-00-00 00:00:00'),
(38, 'Cresent City High School', 'Open', '35', '18', '1', '2', '0', '0000-00-00 00:00:00'),
(61, 'Closed', '', '', '', '', '3', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `status_type`
--

CREATE TABLE `status_type` (
  `id` int(10) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_type`
--

INSERT INTO `status_type` (`id`, `name`) VALUES
(1, 'Closed'),
(5, 'DeMob'),
(4, 'Full'),
(3, 'Open'),
(2, 'Stand Buy');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', '$2y$10$.GhwUvS54H0qLM9W7z/nFOlFnMTfkUqG.RTBUwUAVNQOq6GsVGlem', '2017-07-04 10:06:33'),
(2, 'QIRoberts', '$2y$10$sQvLPG4zQxNEEqdnfRiLuOcve11zx16CyrOlpEgIaHJNUV02QLeUy', '2017-07-04 12:19:23'),
(3, 'KellySmith', '$2y$10$EblVgcvsD7Ddz2703YxPY.dH5LpqmVwOEb2CNrsZbCCNYgxGKWwEe', '2017-07-04 12:19:54'),
(4, 'PalatkaHS', '$2y$10$oqxLgaEF8n3E0wrOJPit3.IDuINR5pJ.4ToDPe/HAAhydXtlgVFv2', '2017-07-04 12:44:03'),
(5, 'N7WWK', '$2y$10$.qHxQzJiWAz3W7AEOW4diedqA6otK0vxkVIDo0RWzkfnv8azcHFFW', '2017-07-04 13:14:28'),
(6, 'splash', '$2y$10$kNtO8vdUUh1vYZjhfglHM.MZQaYZx/XGl2sV0NCDY7051xaG.vsUm', '2017-07-08 10:52:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shelter`
--
ALTER TABLE `shelter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`,`status`,`adult`,`children`,`leo`,`ems`,`pets`),
  ADD KEY `name_2` (`name`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `status_type`
--
ALTER TABLE `status_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `id` (`id`),
  ADD KEY `name_2` (`name`),
  ADD KEY `id_2` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shelter`
--
ALTER TABLE `shelter`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `status_type`
--
ALTER TABLE `status_type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
