-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2024 at 10:55 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mr.404`
--

-- --------------------------------------------------------

--
-- Table structure for table `availableinvestment`
--

CREATE TABLE `availableinvestment` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_bin NOT NULL,
  `banner` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `farmType` varchar(250) COLLATE utf8_bin NOT NULL,
  `countdown` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `companyName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `companyLogo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `currentBid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `incomePercentage` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `tier` int(10) NOT NULL,
  `Contract_Address` varchar(225) COLLATE utf8_bin NOT NULL,
  `Token_ID` varchar(225) COLLATE utf8_bin NOT NULL,
  `Token_Standard` varchar(225) COLLATE utf8_bin NOT NULL,
  `Family` varchar(225) COLLATE utf8_bin NOT NULL,
  `min_duration` varchar(225) COLLATE utf8_bin NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `bonus`
--

CREATE TABLE `bonus` (
  `refer` varchar(100) COLLATE utf8_bin NOT NULL,
  `referal` varchar(100) COLLATE utf8_bin NOT NULL,
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `bonus`
--

INSERT INTO `bonus` (`refer`, `referal`, `id`, `date`) VALUES
('ourfarmdatabase@gmail.com', 'adurauiux@gmail.com', 1, '2023-11-27 22:39:28');

-- --------------------------------------------------------

--
-- Table structure for table `invest`
--

CREATE TABLE `invest` (
  `id` int(255) NOT NULL,
  `invest_Adress` varchar(255) COLLATE utf8_bin NOT NULL,
  `investor_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `amount` varchar(255) COLLATE utf8_bin NOT NULL,
  `duration` int(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `legalbalance`
--

CREATE TABLE `legalbalance` (
  `id` int(11) NOT NULL,
  `user_id` varchar(225) NOT NULL,
  `balance` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `legalbalance`
--

INSERT INTO `legalbalance` (`id`, `user_id`, `balance`) VALUES
(1, '1', '2000'),
(2, '2', '500');

-- --------------------------------------------------------

--
-- Table structure for table `myguests`
--

CREATE TABLE `myguests` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `profile` text COLLATE utf8_bin NOT NULL,
  `passwd` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `myguests`
--

INSERT INTO `myguests` (`id`, `firstname`, `lastname`, `email`, `phone`, `profile`, `passwd`, `date`) VALUES
(1, 'Ademola', 'Aduragbemi', 'adurauiux@gmail.com', '09051547147', 'avatar.png', '$2y$10$luUv3Gn0wmjV2FNNFY0Lz.yltlcl.V/lRL33y2C3gd1AXUL/BoeOC', '2023-11-27 22:36:46'),
(2, 'Ademola', 'Aduragbemi', 'ourfarmdatabase@gmail.com', '+2349051547147', 'avatar.png', '$2y$10$0/N9Ng0WKr3rz/n0cxoZmuIP2TLxr6hTRR4UJWlk0o4eERvFB/DKK', '2023-11-27 22:39:28');

-- --------------------------------------------------------

--
-- Table structure for table `verification_now`
--

CREATE TABLE `verification_now` (
  `mail` varchar(100) COLLATE utf8_bin NOT NULL,
  `Verivication_code` varchar(7) COLLATE utf8_bin NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `welcomebonus`
--

CREATE TABLE `welcomebonus` (
  `id` int(11) NOT NULL,
  `user_id` text NOT NULL,
  `balance` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `welcomebonus`
--

INSERT INTO `welcomebonus` (`id`, `user_id`, `balance`) VALUES
(1, '1', '500'),
(2, '2', '500');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bonus`
--
ALTER TABLE `bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invest`
--
ALTER TABLE `invest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `legalbalance`
--
ALTER TABLE `legalbalance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myguests`
--
ALTER TABLE `myguests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `welcomebonus`
--
ALTER TABLE `welcomebonus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bonus`
--
ALTER TABLE `bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `invest`
--
ALTER TABLE `invest`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `legalbalance`
--
ALTER TABLE `legalbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `myguests`
--
ALTER TABLE `myguests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `welcomebonus`
--
ALTER TABLE `welcomebonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
