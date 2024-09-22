-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2024 at 06:17 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_bukutamu`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku_tamu`
--

CREATE TABLE `buku_tamu` (
  `id_tamu` varchar(5) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_tamu` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `bertemu` varchar(255) NOT NULL,
  `kepentingan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku_tamu`
--

INSERT INTO `buku_tamu` (`id_tamu`, `tanggal`, `nama_tamu`, `alamat`, `no_hp`, `bertemu`, `kepentingan`) VALUES
('zt223', '2024-09-17', 'emul', 'kp.smakzie', '121233445', 'bapa', 'pribadi'),
('zt224', '2024-09-19', 'airil', 'kp.karangtengah', '0877365478', 'ahay', 'les privat');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` varchar(5) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_role` enum('admin','operator') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `user_role`) VALUES
('usr02', 'admin', '$2y$10$Y0RrTHz40Qdw1p1DmGA6wuMi2Nb/wqURnHy6T.Jg4dTbC4lFWkldS', 'admin'),
('usr03', 'abi', '$2y$10$eq7y0u.dHqdzQI4zIOuHe.2zH7WgqdqdkVHss/dQn6V5UA/pwRoKO', 'operator'),
('usr04', 'ahay', '$2y$10$UP2jnm6AkjSsDkHDiU8Po.q.EHDFwRcdBfOfcBqmP26uDz3bw9i2K', 'admin'),
('usr05', '1', '$2y$10$Oe6kE5pqOcL3l6reFu1KIemD74e/RMC05s7n04rak0GDA/N3BjSje', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku_tamu`
--
ALTER TABLE `buku_tamu`
  ADD PRIMARY KEY (`id_tamu`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
