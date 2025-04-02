-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 08, 2025 at 12:52 AM
-- Server version: 8.0.40
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SchoolDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `Courses`
--

CREATE TABLE `Courses` (
  `CourseID` int NOT NULL,
  `CourseName` varchar(100) NOT NULL,
  `Credits` int DEFAULT NULL
) ;

--
-- Dumping data for table `Courses`
--

INSERT INTO `Courses` (`CourseID`, `CourseName`, `Credits`) VALUES
(101, 'Mathematics', 3),
(102, 'English Literature', 4),
(103, 'Computer Science', 3),
(104, 'History', 3),
(105, 'Physics', 4),
(106, 'Chemistry', 4),
(107, 'Biology', 3),
(108, 'Art', 2),
(109, 'Physical Education', 1),
(110, 'Music', 3),
(111, 'Introduction to SQL', 3);

-- --------------------------------------------------------

--
-- Table structure for table `Enrollments`
--

CREATE TABLE `Enrollments` (
  `EnrollmentID` int NOT NULL,
  `StudentID` int DEFAULT NULL,
  `CourseID` int DEFAULT NULL,
  `EnrollmentDate` timestamp NULL DEFAULT (now()),
  `Grade` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Enrollments`
--

INSERT INTO `Enrollments` (`EnrollmentID`, `StudentID`, `CourseID`, `EnrollmentDate`, `Grade`) VALUES
(1, 1, 101, '2025-01-15 05:00:00', 'A'),
(2, 1, 102, '2025-01-15 05:00:00', 'B'),
(3, 2, 103, '2025-01-16 05:00:00', 'A'),
(4, 3, 104, '2025-01-17 05:00:00', 'C'),
(5, 4, 105, '2025-01-18 05:00:00', 'B'),
(6, 5, 106, '2025-01-19 05:00:00', 'A'),
(7, 6, 107, '2025-01-20 05:00:00', 'B'),
(8, 7, 108, '2025-01-21 05:00:00', 'C'),
(9, 8, 109, '2025-01-22 05:00:00', 'A'),
(10, 9, 110, '2025-01-23 05:00:00', 'B'),
(11, 10, 103, '2025-03-05 05:00:00', 'B'),
(12, 2, 104, '2025-03-05 05:00:00', 'A'),
(13, 3, 104, '2025-03-05 05:00:00', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `Students`
--

CREATE TABLE `Students` (
  `StudentID` int NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Students`
--

INSERT INTO `Students` (`StudentID`, `FirstName`, `LastName`, `Email`, `Phone`) VALUES
(1, 'Alice', 'Smith', 'alice.smith@example.com', '555-0101'),
(2, 'Bob', 'Johnson', 'bob.johnson@example.com', '555-0102'),
(3, 'Charlie', 'Williams', 'charlie.williams@example.com', '555-0103'),
(4, 'Diana', 'Jones', 'diana.jones@example.com', '555-0104'),
(5, 'Eve', 'Brown', 'eve.brown@example.com', '555-0105'),
(6, 'Frank', 'Davis', 'frank.davis@example.com', '555-0106'),
(7, 'Grace', 'Miller', 'grace.miller@newemail.com', '555-0122'),
(8, 'Hank', 'Wilson', 'hank.wilson@example.com', '555-0108'),
(9, 'Ivy', 'Moore', 'ivy.moore@example.com', '555-0109'),
(10, 'Jack', 'Taylor', 'jack.taylor@example.com', '555-0110'),
(11, 'Kylie', 'Johnson', 'kylie.johnson@example.com', '555-0111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Courses`
--
ALTER TABLE `Courses`
  ADD PRIMARY KEY (`CourseID`);

--
-- Indexes for table `Enrollments`
--
ALTER TABLE `Enrollments`
  ADD PRIMARY KEY (`EnrollmentID`),
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `Students`
--
ALTER TABLE `Students`
  ADD PRIMARY KEY (`StudentID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Enrollments`
--
ALTER TABLE `Enrollments`
  ADD CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `Students` (`StudentID`),
  ADD CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `Courses` (`CourseID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
