-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2021 at 10:13 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my-bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(4) NOT NULL,
  `sender` text NOT NULL,
  `recevier` text NOT NULL,
  `balance` int(100) NOT NULL,
  `datetime` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `recevier`, `balance`, `datetime`) VALUES
(4, 'Raj', 'Ravi', 5000, '2021-01-02 22:52:16.062910'),
(5, 'Yash', 'Ravi', 20000, '2021-01-03 21:45:17.431309'),
(6, 'Yash', 'Raj', 10000, '2021-01-05 10:40:25.970902'),
(7, 'Ravi', 'Raj', 50000, '2021-01-07 15:02:44.733684'),
(8, 'Raj', 'Ravi', 40000, '2021-01-07 15:03:00.771552');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `balance` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Raj', 'raj@gmail.com', 40000),
(2, 'Meera', 'meera@gmail.com', 20000),
(3, 'Khushi', 'khushi@gmail.com', 30000),
(4, 'Ravi', 'ravi@gmail.com', 40000),
(5, 'Yash', 'yash@gmail.com', 20000),
(6, 'Abhi', 'abhi@gmail.com', 50000),
(7, 'Chintan', 'chitan@gmail.com', 25000),
(8, 'Nirmal', 'nirmal@gmail.com', 15000),
(9, 'Hemang', 'hemang@gmail.com', 60000),
(10, 'Harsh', 'harsh @gmail.com', 50000);

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
  MODIFY `sno` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
