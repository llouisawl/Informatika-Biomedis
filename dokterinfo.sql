-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2024 at 05:12 PM
-- Server version: 11.1.0-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `si_kesehatan`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokterinfo`
--

CREATE TABLE `dokterinfo` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `spesialis` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `profil` text NOT NULL,
  `jadwal` text NOT NULL,
  `kontak_email` varchar(255) NOT NULL,
  `kontak_telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dokterinfo`
--

INSERT INTO `dokterinfo` (`id`, `nama`, `spesialis`, `gambar`, `profil`, `jadwal`, `kontak_email`, `kontak_telepon`) VALUES
(1, 'Dr tes jo', 'Gigi', 'team6.jpg', 'dokter handal', 'Senin|03:04|lantai 5\r\nSelasa|09:04|lantai 9', 'lolonglaw31@gmail.com', '081342811535'),
(3, 'louisa', 'Gigi', 'team5.jpg', 'gigi', 'Senin|10:10|lantai 3', 'louisalolong026@student.unsrat.ac.id', '081342811535'),
(4, 'Dr tes jok', 'Penyakit Dalam', 'team1.jpg', 'hjhj', 'Senin|00:02|lantai 3', 'louisalolong026@student.unsrat.ac.id', '081342811535'),
(5, 'LOUIS', 'Penyakit Dalam', 'team5.jpg', 'jkjkjk', 'Senin|09:00|gedung lantai satu\nSelasa|09:00|gedung lantai dua', 'lolonglaw31@gmail.com', '081342811535'),
(7, 'louisa', 'Kulit', 'team6.jpg', 'Ahli Kulit Terkenal', 'Senin|10:10|lantai 8', 'lolonglaw31@gmail.com', '081342811535');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokterinfo`
--
ALTER TABLE `dokterinfo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokterinfo`
--
ALTER TABLE `dokterinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
