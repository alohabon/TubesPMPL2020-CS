-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2018 at 03:32 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cakeshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `kdPegawai` varchar(5) NOT NULL,
  `nama` text NOT NULL,
  `alamat` varchar(35) NOT NULL,
  `pekerjaan` text NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`kdPegawai`, `nama`, `alamat`, `pekerjaan`, `password`) VALUES
('A0001', 'Admin1', 'Jl. 123', 'admin', 'admin1'),
('K0001', 'Koki1', 'Jl. 123', 'koki', 'koki1'),
('P0001', 'Pengantar1', 'Jl. 123', 'pengantar', 'pengantar1');

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `kdPembeli` varchar(10) NOT NULL,
  `nama` text NOT NULL,
  `noTlp` int(12) NOT NULL,
  `email` varchar(15) NOT NULL,
  `alamat` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `kdProduk` varchar(5) NOT NULL,
  `nama` text NOT NULL,
  `harga` int(7) NOT NULL,
  `desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`kdProduk`, `nama`, `harga`, `desc`) VALUES
('C001', 'Cake A', 150000, 'asdasdwjekfniw'),
('C002', 'Cake B', 100000, 'kwlelkwnef'),
('C003', 'Cake C', 130000, 'asdacacs');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `kdTrx` varchar(5) NOT NULL,
  `pembeli` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `hargaTotal` int(10) NOT NULL,
  `statusCheckout` tinyint(1) NOT NULL,
  `statusPembayaran` tinyint(1) NOT NULL,
  `statusProduksi` tinyint(1) NOT NULL,
  `statusAntar` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`kdPegawai`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`kdPembeli`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`kdProduk`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`kdTrx`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
