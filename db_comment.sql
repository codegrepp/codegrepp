-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 06:28 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_comment`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`id`, `username`, `password`, `email`, `create_at`) VALUES
(1, 'admin', '$2y$10$DRIwe4K.Wt7AKRm.xrvoi.dKuwdfJyV8LgRXB.tn4cBQ2PEZGRjHy', 'admin@gmail.com', '2022-12-08 05:13:04'),
(2, 'Ramya', '$2y$10$j0k4m5N4ORLqdyzmgQff6.ywjZF8D32UBaeVTiHh009H7CEJwSbfq', 'abc@gmail.com', '2022-12-08 05:25:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_comments`
--

CREATE TABLE `tbl_user_comments` (
  `id` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `message` varchar(500) NOT NULL,
  `create_at_timestamp` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_comments`
--

INSERT INTO `tbl_user_comments` (`id`, `username`, `message`, `create_at_timestamp`) VALUES
(2, 'Richard', 'Wonderful Experience', '2022-07-14 16:23:43'),
(3, 'Rita', 'Glad to meet you', '2022-07-14 16:24:07'),
(400, 'Rashmi', 'I am in America', '2022-12-08 10:23:27'),
(401, 'William ', 'Have a Nice Day', '2022-12-08 10:24:05'),
(402, 'Raksha', 'Hi,How are you?', '2022-12-08 10:33:23'),
(403, 'Rakhi', 'How is your uncle?', '2022-12-08 10:56:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_comments`
--
ALTER TABLE `tbl_user_comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_user_comments`
--
ALTER TABLE `tbl_user_comments`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=404;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
