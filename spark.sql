-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2021 at 09:09 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spark`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(11) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(9) NOT NULL,
  `datetime` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(25, 'Sumit kumar', 'Nikhil Sharma', 1000, '2021-07-13'),
(26, 'Sumit kumar', 'Suraj kr singh', 200, '2021-07-13'),
(27, 'Sumant kumar', 'Badshah Khan', 2, '2021-07-17'),
(28, 'Sumant kumar', 'Rakesh Roshan', 9, '2021-07-17'),
(32, 'Badshah Khan', 'Sumant kumar', 1, '2021-07-17'),
(33, 'Shilpa Rao', 'Sumant kumar', 3000, '2021-07-17'),
(34, 'Imran Hashmin', 'Gujjar Singh', 500, '2021-07-17'),
(35, 'Preeti Choudhary', 'Sumant kumar', 900, '2021-07-17'),
(36, 'Shilpa Rao', 'Imran Hashmin', 666, '2021-07-17'),
(37, 'Rakesh Roshan', 'Gujjar Singh', 500, '2021-07-17'),
(38, 'Badshah Khan', 'Imran Hashmin', 900, '2021-07-17'),
(39, 'Imran Hashmin', 'Badshah Khan', 900, '2021-07-18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `balance` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Sumant kumar', 'smtkr23@gmail.com', '11190'),
(2, 'Rakesh Roshan', 'roshanrakesh789@gmail.com', '17009'),
(3, 'Gujjar Singh', 'gujjarfrommela@gmail.com', '11896'),
(4, 'Imran Hashmin', 'hashminfrommurder2@gmail.com', '15822'),
(5, 'Selmon Bhai', 'selmonbhaiop143@gmail.com', '11790'),
(6, 'Badshah Khan', 'badshahkhan786@gmail.com', '10000'),
(7, 'Shilpa Rao', 'shilpa12rao@gmail.com', '19343'),
(8, 'Saurabh Kumar', 'srbhagrawalop@gmail.com', '27809'),
(9, 'Preeti Choudhary', 'choudhary4preeti@gmail.com', '18190'),
(10, 'Akshay Kumar', 'akkikhiladi420@gmail.com', '23800');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
