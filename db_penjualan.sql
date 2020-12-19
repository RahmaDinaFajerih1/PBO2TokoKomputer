-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2020 at 06:54 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `kode_barang` varchar(8) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `kategori` varchar(15) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`kode_barang`, `nama_barang`, `kategori`, `harga`, `stok`) VALUES
('BRG-1000', 'Kaikki Punk', 'Keyboard', 79900, 296),
('BRG-1001', 'Bonkyo Wireless Optical', 'Mouse', 59900, 293),
('BRG-1002', 'SPC OFFICE LED', 'Monitor', 699000, 87),
('BRG-1003', 'Samsung Metal U Disk', 'Flashdisk', 48100, 124),
('BRG-1004', 'Toshiba Canvio 1TB', 'Hardisk', 636500, 107),
('BRG-1005', 'Y103 23.8 inch All-in-one', 'Komputer', 7368572, 9),
('BRG-1006', 'MacBook Pro 2019 16\"', 'Laptop', 31557000, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_penjualan`
--

CREATE TABLE `tb_detail_penjualan` (
  `no_detail` int(5) NOT NULL,
  `no_nota` varchar(8) NOT NULL,
  `kode_barang` varchar(8) NOT NULL,
  `qty` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_detail_penjualan`
--

INSERT INTO `tb_detail_penjualan` (`no_detail`, `no_nota`, `kode_barang`, `qty`) VALUES
(1, 'NTA-1000', 'BRG-1001', 2),
(2, 'NTA-1001', 'BRG-1000', 3),
(3, 'NTA-1001', 'BRG-1002', 5),
(4, 'NTA-1000', 'BRG-1005', 4),
(5, 'NTA-1000', 'BRG-1003', 2),
(6, 'NTA-1000', 'BRG-1003', 12),
(7, 'NTA-1000', 'BRG-1001', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `id_pelanggan` varchar(8) NOT NULL,
  `nama_pelanggan` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat`, `no_telepon`) VALUES
('PLG-1000', 'Kia', 'Banjarbaru', '089629665729');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`username`, `password`, `status`) VALUES
('admin', 'admin', 'admin'),
('gudang', 'gudang', 'gudang'),
('kasir', 'kasir', 'kasir');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penjualan`
--

CREATE TABLE `tb_penjualan` (
  `no_nota` varchar(8) NOT NULL,
  `tanggal` date NOT NULL,
  `id_pelanggan` varchar(8) NOT NULL,
  `total_transaksi` int(10) NOT NULL,
  `total_bayar` int(10) NOT NULL,
  `kembali` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penjualan`
--

INSERT INTO `tb_penjualan` (`no_nota`, `tanggal`, `id_pelanggan`, `total_transaksi`, `total_bayar`, `kembali`) VALUES
('NTA-1000', '2020-11-30', 'PLG-1000', 1116300, 1250000, 133700);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `tb_detail_penjualan`
--
ALTER TABLE `tb_detail_penjualan`
  ADD PRIMARY KEY (`no_detail`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  ADD PRIMARY KEY (`no_nota`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_detail_penjualan`
--
ALTER TABLE `tb_detail_penjualan`
  MODIFY `no_detail` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
