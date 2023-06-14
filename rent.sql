-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 04:35 PM
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
-- Database: `rent`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminusers`
--

CREATE TABLE `adminusers` (
  `id` int(23) NOT NULL,
  `fname` varchar(23) NOT NULL,
  `lname` varchar(23) NOT NULL,
  `email` varchar(23) NOT NULL,
  `password` varchar(23) NOT NULL,
  `role_as` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminusers`
--

INSERT INTO `adminusers` (`id`, `fname`, `lname`, `email`, `password`, `role_as`, `status`, `created_at`) VALUES
(4, 'nur', 'ahmed', 'nur@gmail.com', '123', 0, 1, '2023-05-20 23:02:34'),
(6, 'yared', 'abebe', 'yd@gmail.com', '123', 0, 0, '2023-05-21 18:19:17'),
(10, 'abdi', 'ali', 'ab@gmail.com', '123', 0, 0, '2023-05-28 09:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(25) NOT NULL,
  `name` varchar(233) NOT NULL,
  `status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `status`) VALUES
(1, 'Real Estate', 1),
(2, 'commerce house', 1),
(4, 'Villa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(10) NOT NULL,
  `ownership` varchar(25) NOT NULL,
  `company` varchar(50) DEFAULT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(25) NOT NULL,
  `purpose` varchar(25) NOT NULL,
  `price` int(12) NOT NULL,
  `area` varchar(10) NOT NULL,
  `parking` varchar(25) DEFAULT '0',
  `description` varchar(199) NOT NULL,
  `image` varchar(191) NOT NULL,
  `bed` varchar(12) DEFAULT '0',
  `history` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `saleregister`
--

CREATE TABLE `saleregister` (
  `id` int(25) NOT NULL,
  `fname` varchar(23) NOT NULL,
  `lname` varchar(23) NOT NULL,
  `email` varchar(23) NOT NULL,
  `password` int(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saleregister`
--

INSERT INTO `saleregister` (`id`, `fname`, `lname`, `email`, `password`) VALUES
(1, 'yared', 'abebe', 'ts@gmail.com', 123),
(2, 'yared', 'abebe', 'stud1@gmail.com', 123),
(3, 'ur', 'n', 'yater@gmail.com', 123),
(4, 'lo', 'abe', 'lo@gmail.com', 123);

-- --------------------------------------------------------

--
-- Table structure for table `sellerpost`
--

CREATE TABLE `sellerpost` (
  `id` int(12) NOT NULL,
  `name` varchar(12) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(22) NOT NULL,
  `purpose` varchar(191) NOT NULL,
  `pass` varchar(191) NOT NULL,
  `price` varchar(11) NOT NULL,
  `area` varchar(12) NOT NULL,
  `parking` varchar(45) NOT NULL,
  `description` varchar(255) NOT NULL,
  `img` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sellerpost`
--

INSERT INTO `sellerpost` (`id`, `name`, `phone`, `email`, `purpose`, `pass`, `price`, `area`, `parking`, `description`, `img`) VALUES
(2, 'nure', '091298', 'ur@gmail.com', 'Apartment', 'this Apartmenthome address bahir dar 01 kebele behind the poly campus. ', '123', '400', 'yes', 'lkglttt', '1685742033.jpg'),
(3, 'loli', '12596231', 'lo@gmail.com', 'Villa', 'Stunning 2 Bedroom Apartment with Palm Views and Luxury Fendi Fittings within Damac Heights.', '450000', '400', 'yes', 'Stunning 2 Bedroom Apartment with Palm Views and Luxury Fendi Fittings within Damac Heights.\r\n- Fendi Unit Specification\r\n- Chiller Free\r\n- Stunning Palm Views\r\n- Large Balcony\r\n- Shared Spa, Gym, Swimming Pool, Residence Lounge and Games Room\r\n', '1686002412.jpg'),
(4, 'Ydint', '0921455', 'ypr@gmail.com', 'Office', 'office to be unique, but buying a new chair or desk is only part of the story. How you lay out your office can be as important', '12,000', '123', 'no', 'office to be unique, but buying a new chair or desk is only part of the story. How you lay out your office can be as important office to be unique, but buying a new chair or desk is only part of the story. How you la', '1686061358.png'),
(5, 'THE WORLD', '110934', 'stud@gmail.com', 'Apartment', 'Surrounded by pristine waters on all sides, these waterfront apartments are prominently positioned on the coveted Western Crescent of Palm Jumeirah.', '30,000', '123', 'no', 'Surrounded by pristine waters on all sides, these waterfront apartments are prominently positioned on the coveted Western Crescent of Palm Jumeirah.', '1686061732.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminusers`
--
ALTER TABLE `adminusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saleregister`
--
ALTER TABLE `saleregister`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellerpost`
--
ALTER TABLE `sellerpost`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminusers`
--
ALTER TABLE `adminusers`
  MODIFY `id` int(23) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saleregister`
--
ALTER TABLE `saleregister`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sellerpost`
--
ALTER TABLE `sellerpost`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
