-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 29, 2023 at 04:43 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backtrack`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` int(20) NOT NULL,
  `kuantiti` int(11) NOT NULL,
  `gambar` varchar(191) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id_cart`, `id_user`, `id_produk`, `nama`, `harga`, `kuantiti`, `gambar`, `kategori`, `total`) VALUES
(1, 1, 64, 'CPU Fan Water Cooler Blue', 1760000, 7, '2121010131311612084289fanwatercooler.jfif', 'Komputer', 1760000),
(2, 5, 63, 'AMD Ryzhen 9 5000X CPU 12 Core', 5000000, 3, '2121010131311612084235amdryzhen95900X.jpg', 'Komputer', 5000000),
(3, 5, 62, 'Mobo MSI Gaming', 2600000, 1, '2121010131311612084164mobomsigaming.jfif', 'Komputer', 2600000),
(5, 9, 67, 'NINGRUM WIDYA ASTUTI KUSUMA PUTRI', 3, 9, '23230101282816749120082121010124241611470962Findx2-pro.png', 'Laptop', 3),
(6, 9, 68, 'sadam', 32, 1, '2121010124241611450092lenovothinkpade480.jpg', 'Tarik', 32);

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tentang` varchar(50) NOT NULL,
  `pesan` text NOT NULL,
  `tgl` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `nama`, `email`, `tentang`, `pesan`, `tgl`) VALUES
(3, 'Faiz', 'faiz@gmail.com', 'Keren Cuy', 'Keren banget bang web mu', '2023-01-29 10:07:04');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pesan` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nominal` int(20) NOT NULL,
  `gambar` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pesan`, `nama`, `nominal`, `gambar`) VALUES
(3, '1219061106', 'Bayu Pamungkas', 9000000, '1171632372-2021-01-31-09-25-26-lenovoyoga.jpg'),
(4, '184795202', 'Bayu Pamungkas', 6760000, '1044008663-2021-02-01-04-45-52-Bukti-Transfer-BRI-Terbaru-dan-Terlengkap.jpg'),
(5, '1455538211', 'bayu', 62990000, '1688404207-2021-02-01-04-55-04-Bukti-Transfer-BRI-Terbaru-dan-Terlengkap.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_produk`, `jual`) VALUES
(7, 63, 2),
(8, 64, 1),
(9, 59, 10),
(10, 58, 5);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `derek` varchar(20) NOT NULL,
  `harga` int(20) NOT NULL,
  `gambar` varchar(191) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `createat` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updateat` datetime DEFAULT NULL,
  `nohp` varchar(50) NOT NULL,
  `daya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama`, `derek`, `harga`, `gambar`, `kategori`, `deskripsi`, `createat`, `updateat`, `nohp`, `daya`) VALUES
(77, 'sadam', 'Derek Boom', 22500, 'derekboom.jpg', 'Derek Boom', 'Mobil derek boom atau kran biasanya diperuntukan menderek mobil yang keadaannya cukup parah. Biasanya, derek ini memiliki crane di belakangnya dan digunakan untuk mobil yang masuk ke dalam parit ataupun untuk membalikan kendaraan yang kondisinya terbalik.', '2023-01-29 20:51:37', '0000-00-00 00:00:00', '0852444231', 250),
(79, 'Faiz', 'Derek Tarik', 50000, 'derektarik.jpg', 'Derek Tarik', 'Mobil derek ini menggunakan rantai untuk menarik kendaraan di belakangnya. Akan tetapi, pengemudi mobil yang diderek harus ikut untuk mengemudikannya di belakang. Berbeda dengan kebanyakan derek yang hanya meninggalkan mobilnya saja tanpa harus ikut masuk untuk dikendalikan lagi.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8219230403', 750),
(80, 'joko', 'Derek Roda Depan Dia', 75000, 'derek ban depan tarik.jpg', 'Derek Roda Depan Diangkat', 'Derek jenis ini dilakukan pada mobil yang rem parkirnya masih dalam keadaan aktif. Biasanya digunakan untuk kendaraan yang parkir sembarangan. Sehingga ketika diderek, roda yang masih terkunci akan diangkat dan mobil berjalan dengan satu tumpuan saja. Seringnya, mobil derek ini digunakan oleh Dinas Perhubungan untuk mengangkut mobil yang salah parkir.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '87284587814', 500),
(81, 'ilham', 'Derek Towing', 100000, 'derek towing.jpg', 'Derek Towing', 'Derek towing biasanya digunakan untuk mengangkut kendaraan dari show room ke rumah pembeli atau mengangkut mobil yang mogok ke bengkel, hingga mobil yang mengalami kerusakan parah dan tidak bisa dijalankan. Derek ini dilakukan dengan cara meletakan mobil  ke atas kendaraan truk.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '85282149687', 750),
(82, 'adjid', 'Derek Hidrolik', 50000, 'derek hidrolik.jpg', 'Derek Hidrolik', 'Derek ini digunakan untuk mengangkut mobil-mobil yang memiliki ground clearance rendah, biasanya mobil ini sudah memodifikasi beberapa bagian, salah satunya velg. Derek ini menggunakan teknologi hidrolik. Sehingga, bak mobil derek akan diturunkan ke bagian paling rendah kemudian mobil akan dinaikan ke atas bak angkut. Caranya memang terlihat hampir mirip dengan derek towing atau gendong.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '85386487165124', 300);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id_status` int(1) NOT NULL,
  `keterangan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id_status`, `keterangan`) VALUES
(0, ''),
(1, 'Di proses'),
(2, 'Di kirim'),
(3, 'Di terima');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `id_pesan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `telepon` int(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `kuantiti_total` int(11) NOT NULL,
  `total_akhir` int(20) NOT NULL,
  `pembayaran` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `pesan_at` datetime NOT NULL,
  `kirim_at` datetime NOT NULL,
  `terima_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_pesan`, `id_user`, `pengirim`, `penerima`, `alamat`, `telepon`, `email`, `kuantiti_total`, `total_akhir`, `pembayaran`, `id_status`, `pesan_at`, `kirim_at`, `terima_at`) VALUES
(4, 184795202, 1, 'Bayu Pamungkas', 'Marniyem', 'Jawa Tengah , Wonosari , Jamaica, Rt 11 Rw 2', 2147483647, 'marniyem@gmail.com', 2, 6760000, 1, 2, '2021-01-31 11:41:38', '2021-02-01 04:53:09', '0000-00-00 00:00:00'),
(3, 1098598934, 1, 'Narto Saminto', 'Saskeh ', 'Konoha. rt 02 Rw 03', 2147483647, 'saske@gmail.com', 1, 5000000, 0, 0, '2021-01-31 11:34:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1219061106, 1, 'Bayu Pamungkas', 'bayu pamungkas', 'lopawon, Kebobang, Wonosari', 2147483647, 'bayu@gmail.com', 1, 9000000, 1, 3, '2021-01-31 04:56:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1455538211, 1, 'Bayu Pamungkas', 'bayu pamungkas', 'lopawon, Kebobang, Wonosari', 2147483647, 'bayu@gmail.com', 15, 62990000, 1, 2, '2021-01-31 12:00:33', '2023-01-27 08:44:09', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id_transaksi` int(11) NOT NULL,
  `id_pesan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `kuantiti` int(11) NOT NULL,
  `total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id_transaksi`, `id_pesan`, `id_produk`, `kuantiti`, `total`) VALUES
(1, 1219061106, 61, 1, 9000000),
(9, 1098598934, 63, 1, 5000000),
(10, 184795202, 63, 1, 5000000),
(11, 184795202, 64, 1, 1760000),
(12, 1455538211, 59, 10, 32990000),
(13, 1455538211, 58, 5, 30000000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sandi` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `role` varchar(15) NOT NULL,
  `createat` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updateat` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `sandi`, `image`, `role`, `createat`, `updateat`) VALUES
(1, 'Bayu Pamungkas', 'bayhek335@gmail.com', '$2y$10$JACVc4V32Jp/fpJJNWJc7eOT9F2sBQcYhZraZUWDrPz6W8R7/ElM6', 'default.png', '1', '2021-01-31 16:28:35', NULL),
(5, 'sadam', 'sadam@gmail.com', '$2y$10$CfNNAWsA0.NLFIKTWD6x.OJLWYJ.G4EXBxrt9iHYaNsH3Afha1QEO', 'default.png', '2', '2023-01-27 04:56:39', '0000-00-00 00:00:00'),
(9, 'faiz', 'faiz@gmail.com', '9d4d4ab0dfdb72a54b895d78b90b09c7', '', '1', '2023-01-28 04:26:22', NULL),
(10, 'joko', 'joko@gmail.com', '202cb962ac59075b964b07152d234b70', '', '2', '2023-01-28 04:32:28', NULL),
(11, 'saya', 'saya@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '2', '2023-01-29 20:23:15', NULL),
(12, 'adjid', 'adjid@gmail.com', '$2y$10$DBgCNCM1qUPOMiVqCkQsd.lxjPRwyborH..hyUkqmEhjvfsqR8eDu', 'default.png', '2', '2023-01-29 04:15:23', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD UNIQUE KEY `id_pesan` (`id_pesan`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_pesan`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
