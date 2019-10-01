-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 01, 2019 at 06:51 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9
 
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
 
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
 
--
-- Database: `wedgewood pacific`
--
 
-- --------------------------------------------------------
 
--
-- Table structure for table `department`
--
 
CREATE TABLE `department` (
  `DepartmentName` char(35) NOT NULL DEFAULT 'PRIMARY KEY',
  `BudgetCode` char(30) NOT NULL,
  `OfficeNumber` char(15) NOT NULL,
  `DepartmentPhone` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 
--
-- Dumping data for table `department`
--
 
INSERT INTO `department` (`DepartmentName`, `BudgetCode`, `OfficeNumber`, `DepartmentPhone`) VALUES
('PRIMARY KEY', '', '', ''),
('Administration', 'BC-100-10', 'BLDG10-210', '360-285-8100'),
('PRIMARY KEY', '', '', ''),
('Finance', 'BC-400-10', 'BLDG01-110', '360-285-8400'),
('PRIMARY KEY', '', '', ''),
('Sales and Marketing', 'BC600-10', 'BLDG01-250', '360-285-8500');
 
-- --------------------------------------------------------
 
--
-- Table structure for table `Employee`
--
 
CREATE TABLE `Employee` (
  `EmployeeNumber` int(11) NOT NULL,
  `FirstName` char(25) NOT NULL,
  `LastName` char(25) NOT NULL,
  `Department` char(35) NOT NULL,
  `Position` char(35) DEFAULT NULL,
  `Supervisor` int(11) DEFAULT NULL,
  `OfficePhone` char(12) DEFAULT NULL,
  `EmailAddress` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 
--
-- Dumping data for table `Employee`
--
 
INSERT INTO `Employee` (`EmployeeNumber`, `FirstName`, `LastName`, `Department`, `Position`, `Supervisor`, `OfficePhone`, `EmailAddress`) VALUES
(1, 'Mary', 'Jacobs', 'Administration', 'CEO', 0, '360-285-8110', 'Mary.Jacobs@WP.com'),
(5, 'Alan', 'Adams', 'Humsn Resources', 'HR1', 4, '360-285-8320', 'Alan.Adams@WP.com'),
(16, 'Mary', 'Smith', 'Production', 'OPS3', 1, '360-285-8810', 'Mary.Smith@WP.com');
 
--
-- Indexes for dumped tables
--
 
--
-- Indexes for table `department`
--
ALTER TABLE `department` ADD FULLTEXT KEY `DepartmentName` (`DepartmentName`);
COMMIT;
 
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
