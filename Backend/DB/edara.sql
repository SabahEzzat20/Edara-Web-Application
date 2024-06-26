-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Apr 23, 2024 at 12:56 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edara`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ID` int NOT NULL,
  `Name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `Description` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Photo` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `Stock` int NOT NULL,
  `WID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `Name`, `Description`, `Photo`, `Stock`, `WID`) VALUES
(47, 'product5', '2312121', '1683578231942.png', 10, 16);

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `ID` int NOT NULL,
  `SID` int NOT NULL,
  `WID` int NOT NULL,
  `PID` int NOT NULL,
  `Quantity` int NOT NULL,
  `State` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`ID`, `SID`, `WID`, `PID`, `Quantity`, `State`) VALUES
(20, 38, 16, 47, 5, 'Pending'),
(23, 38, 16, 47, -20, 'Pending'),
(25, 38, 16, 47, 80, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int NOT NULL,
  `Name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `Email` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `Password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Token` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Type` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Phone` int NOT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `Name`, `Email`, `Password`, `Token`, `Type`, `Phone`, `Status`) VALUES
(2, 'sdsssss', 'd@gmail.com', '$2b$10$1QEact7.A4sGveG4/cPwSeaaWOLFrbX0tldsKul1t.uVweI6kpd7O', '08741506796cb268a9d7c97323f554bd', '', 445665, 1),
(26, 'hazem', 'hazem@gmail.com', '$2b$10$1QEact7.A4sGveG4/cPwSeaaWOLFrbX0tldsKul1t.uVweI6kpd7O', '67cfd514a39588d9a389696ddc8b7548', 'Admin', 231231, 1),
(33, 'hazsemsam1', 'hazem12@gmail.com', '$2b$10$1QEact7.A4sGveG4/cPwSeaaWOLFrbX0tldsKul1t.uVweI6kpd7O', 'fbb39377f5ead13f985b7d2bba71e55f', 'Supervisor', 2147483647, 1),
(34, 'dds', 'dd@gmail.com', '$2b$10$1QEact7.A4sGveG4/cPwSeaaWOLFrbX0tldsKul1t.uVweI6kpd7O', 'a5089fea90ffd46a2af84b1f974675cb', 'Supervisor', 222222, 0),
(37, 'seif', 'seif@gmail.com', '$2b$10$1QEact7.A4sGveG4/cPwSeaaWOLFrbX0tldsKul1t.uVweI6kpd7O', 'dcc98e408314f3f0e675cc58a7c5858f', 'Supervisor', 8888888, 1),
(38, 'salma yasser', 'salma@gmail.com', '$2b$10$1QEact7.A4sGveG4/cPwSeaaWOLFrbX0tldsKul1t.uVweI6kpd7O', '88ac5bffb3e9687f7a665725fcec5bb6', 'Supervisor', 123456789, 0),
(40, 'seif tariq', 'seif1@gmail.com', '$2b$10$1QEact7.A4sGveG4/cPwSeaaWOLFrbX0tldsKul1t.uVweI6kpd7O', 'eaf60f7690aba04066ca86047f0c91df', 'Supervisor', 122222, 1);

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `ID` int NOT NULL,
  `Name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `Location` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Status` tinyint(1) NOT NULL,
  `SID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`ID`, `Name`, `Location`, `Status`, `SID`) VALUES
(16, 'aaaaa', 'aaaaaaa', 1, 38),
(19, 'bbbb', 'bbbb', 0, 40);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `C!` (`WID`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `pr` (`PID`),
  ADD KEY `sr` (`SID`),
  ADD KEY `wr` (`WID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `C2` (`SID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `C!` FOREIGN KEY (`WID`) REFERENCES `warehouses` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `pr` FOREIGN KEY (`PID`) REFERENCES `products` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sr` FOREIGN KEY (`SID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wr` FOREIGN KEY (`WID`) REFERENCES `warehouses` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD CONSTRAINT `C2` FOREIGN KEY (`SID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
