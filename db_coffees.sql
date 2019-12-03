-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 02, 2019 at 07:00 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_coffees`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coffee`
--

CREATE TABLE `tbl_coffee` (
  `ID` int(11) NOT NULL,
  `Name` varchar(35) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_coffee`
--

INSERT INTO `tbl_coffee` (`ID`, `Name`) VALUES
(1, 'Espresso'),
(2, 'Espresso Con Panna'),
(3, 'Americano'),
(4, 'Cafe Latte'),
(5, 'Cappuccino'),
(6, 'Flat White'),
(7, 'Cafe Mocha'),
(8, 'Caramel Macchiato'),
(9, 'Affogato'),
(10, 'Cortado');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coffee_meta`
--

CREATE TABLE `tbl_coffee_meta` (
  `ID` int(11) NOT NULL,
  `coffee_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `legends_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `value` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_coffee_meta`
--

INSERT INTO `tbl_coffee_meta` (`ID`, `coffee_id`, `legends_id`, `value`) VALUES
(1, '1', '1', '30ml'),
(2, '2', '1', '30ml'),
(3, '2', '7', 'yes'),
(4, '3', '1', '30ml'),
(5, '3', '2', '150ml'),
(6, '4', '1', '30ml'),
(7, '4', '3', '150ml'),
(8, '4', '9', '10ml'),
(9, '5', '1', '30ml'),
(10, '5', '3', '75ml'),
(11, '5', '9', '75ml'),
(12, '6', '1', '30ml'),
(13, '6', '3', '120ml'),
(14, '6', '9', '5ml'),
(15, '7', '1', '30ml'),
(16, '7', '4', '30ml'),
(17, '7', '3', '120ml'),
(18, '7', '7', 'yes'),
(19, '8', '1', '30ml'),
(20, '8', '6', '30ml'),
(21, '8', '3', '120ml'),
(22, '8', '9', '5ml'),
(23, '9', '1', '30ml'),
(24, '9', '5', 'one scoop'),
(25, '10', '1', '30ml'),
(26, '10', '3', '150ml'),
(27, '10', '8', '30ml');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_legends`
--

CREATE TABLE `tbl_legends` (
  `ID` int(11) NOT NULL,
  `Legends` varchar(35) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_legends`
--

INSERT INTO `tbl_legends` (`ID`, `Legends`) VALUES
(1, 'Espresso'),
(2, 'Water'),
(3, 'Steamed Milk'),
(4, 'Chocolate Syrup'),
(5, 'Ice Cream'),
(6, 'Caramel Syrup'),
(7, 'Whip'),
(8, 'Vanilla Syrup'),
(9, 'Milk Form');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_coffee`
--
ALTER TABLE `tbl_coffee`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_coffee_meta`
--
ALTER TABLE `tbl_coffee_meta`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_legends`
--
ALTER TABLE `tbl_legends`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_coffee`
--
ALTER TABLE `tbl_coffee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_coffee_meta`
--
ALTER TABLE `tbl_coffee_meta`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_legends`
--
ALTER TABLE `tbl_legends`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
