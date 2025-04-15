-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2025 at 10:17 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gabilms`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `BookId` int(10) NOT NULL,
  `Author` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`BookId`, `Author`) VALUES
(3, 'Jay Prakash'),
(4, 'Jay Prakash'),
(5, 'x'),
(6, 'a1'),
(7, 'Bogart'),
(7, 'Kenneth'),
(8, 'Auer'),
(8, 'Davil J.'),
(9, 'Rob'),
(9, 'Williams'),
(10, 'Deiteil'),
(11, 'Sharma'),
(12, 'Barney Stinson'),
(13, 'Puri'),
(14, 'Manna'),
(15, 'Jindal U.C'),
(16, 'Prasad'),
(17, 'Aravind Alex'),
(17, 'Haldar Sibsankar'),
(18, 'Sandhu'),
(18, 'Singh'),
(19, ''),
(20, ''),
(21, ''),
(22, ''),
(23, ''),
(24, ''),
(25, ''),
(26, ''),
(27, ''),
(28, 'Brempong'),
(28, 'Daniel Obour'),
(28, 'Senior'),
(29, 'Brempong'),
(29, 'Daniel Obour'),
(29, 'Senior');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `year` year(4) NOT NULL,
  `quantity` int(11) DEFAULT 0,
  `available` bigint(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `title`, `author`, `isbn`, `year`, `quantity`, `available`) VALUES
(4, 'Computing', 'Obrempong', '12345', '2019', 18, 14),
(5, 'Maths', 'Ernest Alpha', '8585', '0000', 30, 26),
(6, 'DBM', 'Dake', 'Vibee1234', '0000', 40, 10),
(7, 'Government', 'Adusei Starno', '12345', '2024', 2, 0),
(8, 'PHP', 'Don Jazzy', 'Ja124', '2015', 3, 3),
(9, 'Python', 'Fenteng Sampson ', 'FS124', '2025', 10, 10),
(10, 'Practicals', 'Michael Afriyie', 'MA124', '2022', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `loan_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `loan_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `returned` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `M_Id` int(10) NOT NULL,
  `RollNo` varchar(50) DEFAULT NULL,
  `Msg` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`M_Id`, `RollNo`, `Msg`, `Date`, `Time`) VALUES
(1, 'Bless', 'Your request for issue of BookId: 5 has been accepted', '2025-02-14', '08:43:02'),
(2, '', 'Your request for issue of BookId:  has been accepted', '2025-02-14', '08:47:31'),
(3, '', 'Your request for issue of BookId:  has been accepted', '2025-02-14', '08:47:49'),
(4, 'Hannah', 'Your request for issue of BookId: 4 has been accepted', '2025-02-14', '11:53:10'),
(5, 'Bless', 'Your request for issue of BookId: 3 with this name Communication Skills has been rejected', '2025-02-14', '11:53:22'),
(6, 'Kofi', 'Your request for issue of BookId: 5 has been accepted', '2025-02-14', '12:47:51'),
(7, 'Hannah', 'Your request for issue of BookId: 5 has been accepted', '2025-02-14', '12:48:02'),
(8, 'Bless', 'Your request for issue of BookId: 4 has been accepted', '2025-02-14', '13:00:18'),
(9, 'Bless', 'Your request for issue of BookId: 4 has been accepted', '2025-02-14', '13:00:18'),
(10, 'Bless', 'Your request for issue of BookId: 6 has been accepted', '2025-02-14', '13:00:31'),
(11, 'Hannah', 'Your request for issue of BookId: 6 has been accepted', '2025-02-14', '13:00:42'),
(12, 'Fire', 'Your request for issue of BookId: 7 has been accepted', '2025-02-14', '22:43:58'),
(13, 'Hannah', 'Your request for issue of BookId: 7 has been accepted', '2025-02-14', '22:44:06'),
(14, 'Hannah', 'Your request for issue of BookId: 3 has been accepted', '2025-02-15', '02:07:38'),
(15, 'Hannah', 'Your request for renewal of BookId: 5 has been accepted', '2025-02-15', '03:36:03'),
(16, 'Hannah', 'Your request for renewal of BookId: 6 has been accepted', '2025-02-15', '03:36:42'),
(17, 'Kofi', 'Your request for renewal of BookId: 5 has been accepted', '2025-02-15', '03:43:10'),
(18, 'Kofi', 'Your request for issue of BookId: 4 has been accepted', '2025-02-15', '03:45:44'),
(19, 'Kofi', 'Your request for issue of BookId: 6 has been accepted', '2025-02-15', '03:45:49'),
(20, 'Kofi', 'Your request for issue of BookId: 3 has been accepted', '2025-02-15', '03:45:52'),
(21, 'Kofi', 'Your request for renewal of BookId: 3 has been accepted', '2025-02-15', '03:48:34'),
(22, 'Kofi', 'Your request for renewal of BookId: 4 has been accepted', '2025-02-15', '03:48:38'),
(23, 'Kofi', 'Your request for renewal of BookId: 4 has been accepted', '2025-02-15', '03:48:43'),
(24, 'Kofi', 'Your request for renewal of BookId: 6 has been accepted', '2025-02-15', '03:48:47'),
(25, 'Hannah', 'Your request for return of BookId: 3  has been accepted', '2025-02-15', '07:19:03'),
(26, 'Kofi', 'Your request for return of BookId: 3  has been accepted', '2025-02-15', '07:19:56'),
(27, 'Kofi', 'Your request for return of BookId: 4  has been accepted', '2025-02-15', '07:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `RollNo` varchar(50) NOT NULL,
  `book_id` int(10) NOT NULL,
  `Date_of_Issue` date DEFAULT NULL,
  `Due_Date` date DEFAULT NULL,
  `Date_of_Return` date DEFAULT NULL,
  `Dues` int(10) DEFAULT NULL,
  `Renewals_left` int(10) DEFAULT NULL,
  `Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`RollNo`, `book_id`, `Date_of_Issue`, `Due_Date`, `Date_of_Return`, `Dues`, `Renewals_left`, `Time`) VALUES
('Bless', 3, NULL, NULL, NULL, NULL, NULL, '12:18:15'),
('Bless', 4, '2025-02-14', '2025-08-13', NULL, NULL, 1, '08:39:49'),
('Bless', 5, '2025-02-14', '2025-08-13', NULL, NULL, 1, '08:39:46'),
('Bless', 6, '2025-02-14', '2025-08-13', NULL, NULL, 1, '08:39:53'),
('Fire', 3, NULL, NULL, NULL, NULL, NULL, '08:41:42'),
('Fire', 4, NULL, NULL, NULL, NULL, NULL, '08:41:36'),
('Fire', 5, NULL, NULL, NULL, NULL, NULL, '08:41:34'),
('Fire', 6, NULL, NULL, NULL, NULL, NULL, '08:41:37'),
('Fire', 7, '2025-02-14', '2025-08-13', NULL, NULL, 1, '22:42:59'),
('Hannah', 3, '2025-02-15', '2025-08-14', '2025-02-15', -180, 1, '11:55:30'),
('Hannah', 4, '2025-02-14', '2026-02-09', NULL, NULL, 0, '11:51:26'),
('Hannah', 5, '2025-02-14', '2026-02-09', NULL, NULL, 0, '11:51:20'),
('Hannah', 6, '2025-02-14', '2026-02-09', NULL, NULL, 0, '11:55:26'),
('Hannah', 7, '2025-02-14', '2025-08-13', NULL, NULL, 1, '22:43:33'),
('Kofi', 3, '2025-02-15', '2026-02-10', '2025-02-15', -360, 0, '08:41:08'),
('Kofi', 4, '2025-02-15', '2026-08-09', '2025-02-15', -540, 0, '08:41:03'),
('Kofi', 5, '2025-02-14', '2026-02-09', NULL, NULL, 0, '08:41:00'),
('Kofi', 6, '2025-02-15', '2026-02-10', NULL, NULL, 0, '08:41:05'),
('Kofi', 9, NULL, NULL, NULL, NULL, NULL, '00:49:08');

-- --------------------------------------------------------

--
-- Table structure for table `renew`
--

CREATE TABLE `renew` (
  `RollNo` varchar(50) NOT NULL,
  `BookId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `renew`
--

INSERT INTO `renew` (`RollNo`, `BookId`) VALUES
('', 0),
('b160001cs', 11),
('b160158cs', 2),
('b160158cs', 9),
('b160158cs', 18),
('b160511cs', 11),
('Hannah', 0),
('Hannah', 4);

-- --------------------------------------------------------

--
-- Table structure for table `return`
--

CREATE TABLE `return` (
  `RollNo` varchar(50) NOT NULL,
  `BookId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `return`
--

INSERT INTO `return` (`RollNo`, `BookId`) VALUES
('b160003ch', 9),
('b160158cs', 1),
('b160158cs', 18),
('b160511cs', 10),
('b160511cs', 13),
('Hannah', 0),
('Hannah', 4),
('Hannah', 5),
('Hannah', 6),
('Hannah', 7),
('Kofi', 5),
('Kofi', 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `Category` varchar(250) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Admin','User') NOT NULL,
  `RollNo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `fullname`, `Category`, `password`, `email`, `role`, `RollNo`) VALUES
(2, 'Obour', 'Brempong Daniel Obour Senior', '', '$2y$10$P4l0VFJfmQq/kszLP4/kA.8dr7nTRQFeb2E8qyPLdgTgjvA8DcT22', '054422442@gmail.com', 'Admin', ''),
(10, 'Korkor', 'Korkor Brempong', 'ST', 'Vibrant123$', 'bless@gmail.com', 'User', ''),
(11, 'Kofi', 'Kofi Dani ', 'GEN', '$2y$10$C7r2aXRlNOOAGgTK6eidle7/OgCdui3CG9WyGIQ7oDuKiljWfwibm', 'nanan@gmail.com', 'User', ''),
(14, 'Munat', 'Maumunatu Mohammed', 'GEN', '$2y$10$QRorPj6FWzYBm.QuZC1Buu0nwBwj3mXzJeTT.qqgRXvDcYPA6q87G', 'munat@gmail.com', 'User', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`BookId`,`Author`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`loan_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`M_Id`),
  ADD KEY `RollNo` (`RollNo`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`RollNo`,`book_id`),
  ADD KEY `BookId` (`book_id`);

--
-- Indexes for table `renew`
--
ALTER TABLE `renew`
  ADD PRIMARY KEY (`RollNo`,`BookId`),
  ADD KEY `BookId` (`BookId`);

--
-- Indexes for table `return`
--
ALTER TABLE `return`
  ADD PRIMARY KEY (`RollNo`,`BookId`),
  ADD KEY `BookId` (`BookId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `M_Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `loans`
--
ALTER TABLE `loans`
  ADD CONSTRAINT `loans_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `loans_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
