-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 15 Mar 2026 pada 13.14
-- Versi Server: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee`
--

CREATE TABLE `employee` (
  `Name` varchar(50) DEFAULT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `Join_Date` date DEFAULT NULL,
  `Release_Date` date DEFAULT NULL,
  `Year_of_Experience` float DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `employee`
--

INSERT INTO `employee` (`Name`, `Position`, `Join_Date`, `Release_Date`, `Year_of_Experience`, `Salary`) VALUES
('Jacky', 'Solution Architect', '2018-07-25', '2022-07-25', 8, 150),
('John', 'Assistant Manager', '2016-02-02', '2021-02-02', 12, 155),
('Alano', 'Manager', '2010-11-09', NULL, 14, 175),
('Aaron', 'Engineer', '2021-08-16', '2022-08-16', 1, 85),
('Allen', 'Engineer', '2024-06-06', NULL, 4, 85),
('Peter', 'Team Leader', '2020-01-09', NULL, 3, 85),
('Albert', 'Engineer', '2024-01-24', NULL, 2.5, 85);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
