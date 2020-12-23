-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2020 at 05:35 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `000825144`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('admin', 'Pranav S', 'nevinjames2001@gmail.com', '2896983628', '1430 upper Sherman Avenue', 'sQF0IZI='),
('ajith', 'Ajith', '', '', '', '4VcqfMk='),
('birju', 'BIRJU KUMAR', 'bkm123r@gmail.com', '8903079750', '', '4VcqfMk='),
('ckumar', 'CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', '', '4VcqfMk='),
('nevinjames', 'Nevin James', 'nevinjames2001@gmail.com', '2896983628', '28 West 3rd Street', 'vgBvIZJjeY8ijA=='),
('nevinjames1', 'Nevin James', 'nevinjames2001@gmail.com', '2896983628', '28 West 3rd Street', 'vgBvIZJjeY8ijA=='),
('nevinjames2', 'Nevin James', 'nevinjames2001@gmail.com', '2896983628', '28 West 3rd Street', 'vgBv'),
('nidha', 'nidha', 'nidha@gmail.com', '', '', '4VcqfMk='),
('pratheek083', 'Pratheek Shiri', 'pratheek@gmail.com', '', '', '4VcqfMk='),
('rakshithk00', 'Rakshith Kotian', 'rakshith@gmail.com', '', '', '4VcqfMk=');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
