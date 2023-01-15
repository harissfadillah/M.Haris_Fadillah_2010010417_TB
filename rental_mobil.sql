-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2023 at 10:44 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_mobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_mobil`
--

CREATE TABLE `db_mobil` (
  `id_mobil` int(10) NOT NULL,
  `nama_mobil` varchar(30) NOT NULL,
  `merk_mobil` varchar(30) NOT NULL,
  `harga_rental` bigint(30) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_mobil`
--

INSERT INTO `db_mobil` (`id_mobil`, `nama_mobil`, `merk_mobil`, `harga_rental`, `status`) VALUES
(1, 'Xenia', 'Daihatsu', 500000, 'READY'),
(2, 'Avanza', 'Toyota', 500000, 'READY'),
(3, 'Alphard', 'Toyota', 1000000, 'NOTREADY');

-- --------------------------------------------------------

--
-- Table structure for table `db_penyewa`
--

CREATE TABLE `db_penyewa` (
  `id_penyewa` int(10) NOT NULL,
  `nama_penyewa` varchar(30) NOT NULL,
  `no_hp` varchar(30) NOT NULL,
  `no_ktp` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_penyewa`
--

INSERT INTO `db_penyewa` (`id_penyewa`, `nama_penyewa`, `no_hp`, `no_ktp`, `alamat`, `status`) VALUES
(1, 'Ridho', '082171485612', '013245694254', 'Tanjung Tabalong', 'Ready'),
(2, 'Iqbal', '083146794821', '2165786435164648', 'Banjarbaru', 'Ready'),
(4, 'riski', '08124567892', '63012458789612', 'Martapura', 'Ready');

-- --------------------------------------------------------

--
-- Table structure for table `db_transaksi`
--

CREATE TABLE `db_transaksi` (
  `id_penyewa` int(10) NOT NULL,
  `nama_penyewa` varchar(50) NOT NULL,
  `id_mobil` varchar(50) NOT NULL,
  `tgl_pinjam` varchar(30) NOT NULL,
  `tgl_kembali` varchar(30) NOT NULL,
  `harga_sewa` bigint(30) NOT NULL,
  `lama_sewa` varchar(30) NOT NULL,
  `total_sewa` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_transaksi`
--

INSERT INTO `db_transaksi` (`id_penyewa`, `nama_penyewa`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga_sewa`, `lama_sewa`, `total_sewa`) VALUES
(1, 'Ridho', '1', '14-01-2023', '16-01-2023', 500000, '2', '1000000'),
(2, 'Iqbal', '2', '14-01-2023', '17-01-2023', 500000, '3', '1500000'),
(3, 'subahan', '1', '14-01-2023', '15-01-2023', 500000, '1', '500000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_mobil`
--
ALTER TABLE `db_mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `db_penyewa`
--
ALTER TABLE `db_penyewa`
  ADD PRIMARY KEY (`id_penyewa`);

--
-- Indexes for table `db_transaksi`
--
ALTER TABLE `db_transaksi`
  ADD PRIMARY KEY (`id_penyewa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_mobil`
--
ALTER TABLE `db_mobil`
  MODIFY `id_mobil` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `db_penyewa`
--
ALTER TABLE `db_penyewa`
  MODIFY `id_penyewa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `db_transaksi`
--
ALTER TABLE `db_transaksi`
  MODIFY `id_penyewa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=654654646;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
