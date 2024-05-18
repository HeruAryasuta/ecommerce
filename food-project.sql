-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2024 at 02:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `gambar_produk`
--

CREATE TABLE `gambar_produk` (
  `id` int(11) NOT NULL,
  `fileName` varchar(255) NOT NULL,
  `idProduk` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gambar_produk`
--

INSERT INTO `gambar_produk` (`id`, `fileName`, `idProduk`, `createdAt`, `updatedAt`) VALUES
(1, '22ce5222-f0a6-4540-a52c-8bdb16df21d9 1.png', 5, '2024-05-18 05:13:14', '2024-05-18 05:13:14'),
(2, '49604b21-5024-40e0-ad06-460b7ddcda35 1.png', 6, '2024-05-18 05:13:14', '2024-05-18 05:13:14'),
(3, 'ffb2d8e4-0e94-4d5e-aee2-0331057697b0 1.png', 7, '2024-05-18 05:13:14', '2024-05-18 05:13:14');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `icon`, `title`, `createdAt`, `updatedAt`) VALUES
(1, 'assets/images/noodles.png', 'Noodle', '2024-05-18 04:42:59', '2024-05-18 04:42:59'),
(2, 'assets/images/chickens.png', 'Chicken', '2024-05-18 04:42:59', '2024-05-18 04:42:59'),
(3, 'assets/images/snack.png', 'Snack', '2024-05-18 04:42:59', '2024-05-18 04:42:59'),
(4, 'assets/images/gyoza.png', 'Gyoza', '2024-05-18 04:42:59', '2024-05-18 04:42:59');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `ongkir` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `nama`, `ongkir`, `createdAt`, `updatedAt`) VALUES
(1, 'Banda Sakti', 5000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Blang Mangat', 7000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Muara Satu', 10000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Muara Dua', 12000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Samudra', 15000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Geudong', 15000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Meurah mulia', 13000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Paya Bakong', 15000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Syamtalira Bayu', 15000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Banda Baro', 15000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Dewantara', 17000, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idProduk` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `idOrder` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id`, `idUser`, `idProduk`, `amount`, `idOrder`, `createdAt`, `updatedAt`) VALUES
(4, 4, 5, 1, '8a281feb-0507-4158-a6ff-fdbc9f9bdd20', '2024-05-18 09:12:49', '2024-05-18 11:17:06'),
(5, 4, 7, 3, 'ec760366-840e-4353-a23b-dad48df7deeb', '2024-05-18 09:12:53', '2024-05-18 11:07:37'),
(6, 4, 6, 5, '196ef4d6-3561-44b1-b684-7e0687b38250', '2024-05-18 10:00:28', '2024-05-18 11:16:59');

-- --------------------------------------------------------

--
-- Table structure for table `metode_bayar`
--

CREATE TABLE `metode_bayar` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `metode_bayar`
--

INSERT INTO `metode_bayar` (`id`, `nama`, `gambar`, `createdAt`, `updatedAt`) VALUES
(1, 'COD', 'cod.png', '2024-05-18 03:40:45', '2024-05-18 03:40:45'),
(2, 'Transfer Bank', 'tf_bank.png', '2024-05-18 03:40:45', '2024-05-18 03:40:45'),
(3, 'Take Away', 'take_away.png', '2024-05-18 03:40:45', '2024-05-18 03:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` varchar(255) NOT NULL,
  `idUser` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending',
  `idMetodeBayar` int(11) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `idUser`, `status`, `idMetodeBayar`, `ongkir`, `createdAt`, `updatedAt`) VALUES
('196ef4d6-3561-44b1-b684-7e0687b38250', 4, 'Dikirim', 1, 12000, '2024-05-18 11:08:36', '2024-05-18 11:08:36'),
('8a281feb-0507-4158-a6ff-fdbc9f9bdd20', 4, 'Dikirim', 1, 12000, '2024-05-18 11:17:06', '2024-05-18 11:17:06'),
('ec760366-840e-4353-a23b-dad48df7deeb', 4, 'Dikirim', 1, 12000, '2024-05-18 10:43:37', '2024-05-18 10:43:37');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `idKategori` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `deskripsi`, `harga`, `idKategori`, `stock`, `createdAt`, `updatedAt`) VALUES
(5, 'Korean Spicy chiken', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus sunt vitae quidem facilis deleniti, dolorum neque provident, alias voluptas numquam repellat ipsa quo explicabo porro aliquam laborum vero dolor quasi, odio dignissimos!', 15000, 2, 10, '2024-05-18 05:01:44', '2024-05-18 05:01:44'),
(6, 'Ramen', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus sunt vitae quidem facilis deleniti, dolorum neque provident, alias voluptas numquam repellat ipsa quo explicabo porro aliquam laborum vero dolor quasi, odio dignissimos!', 35000, 1, 10, '2024-05-18 05:01:44', '2024-05-18 05:01:44'),
(7, 'Spicy Potato', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus sunt vitae quidem facilis deleniti, dolorum neque provident, alias voluptas numquam repellat ipsa quo explicabo porro aliquam laborum vero dolor quasi, odio dignissimos!', 15000, 3, 10, '2024-05-18 05:01:44', '2024-05-18 05:01:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `hp` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `idKecamatan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `hp`, `alamat`, `password`, `token`, `createdAt`, `updatedAt`, `idKecamatan`) VALUES
(4, 'Zuzuzu', '081818', 'White house', '$2b$12$HsvMpqMrsfq1kyit49rKYeCtaVm4gtdny4EeOOeYG.gX2EmVkRPxa', NULL, '2024-05-18 05:19:51', '2024-05-18 11:30:46', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gambar_produk`
--
ALTER TABLE `gambar_produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProduk` (`idProduk`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `idProduk` (`idProduk`),
  ADD KEY `idOrder` (`idOrder`);

--
-- Indexes for table `metode_bayar`
--
ALTER TABLE `metode_bayar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `idMetodeBayar` (`idMetodeBayar`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idKategori` (`idKategori`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idKecamatan` (`idKecamatan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gambar_produk`
--
ALTER TABLE `gambar_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `metode_bayar`
--
ALTER TABLE `metode_bayar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gambar_produk`
--
ALTER TABLE `gambar_produk`
  ADD CONSTRAINT `gambar_produk_ibfk_1` FOREIGN KEY (`idProduk`) REFERENCES `produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `keranjang_ibfk_106` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `keranjang_ibfk_107` FOREIGN KEY (`idProduk`) REFERENCES `produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `keranjang_ibfk_108` FOREIGN KEY (`idOrder`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_71` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_72` FOREIGN KEY (`idMetodeBayar`) REFERENCES `metode_bayar` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`idKategori`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`idKecamatan`) REFERENCES `kecamatan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
