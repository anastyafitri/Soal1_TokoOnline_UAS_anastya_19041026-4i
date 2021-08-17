-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2021 at 04:41 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--
CREATE DATABASE IF NOT EXISTS `store` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `store`;

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

DROP TABLE IF EXISTS `barangs`;
CREATE TABLE IF NOT EXISTS `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id`, `nama_barang`, `gambar`, `harga`, `stok`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'BB CREAM TO POWDER', 'barang1.jpeg', 30000, 50, 'shade : ivory dan natural', '2021-08-16 14:27:52', '2021-08-16 14:27:52'),
(2, 'TWO WAY CAKE POWDER', 'barang2.jpeg', 25000, 55, 'shade natural', '2021-08-16 14:34:38', '2021-08-16 14:34:38'),
(3, 'SERUM FOUNDATION', 'barang3.jpeg', 40000, 60, 'shade : beige,natural,dan ivory', '2021-08-16 14:30:23', '2021-08-16 14:30:23'),
(4, 'LOOSE POWDER', 'barang4.jpeg', 20000, 47, 'shade ivory', '2021-08-16 14:30:23', '2021-08-16 14:30:23'),
(5, 'BB CREAM', 'barang5.jpeg', 55000, 70, 'shade :ivory,natural,dan beige', '2021-08-16 14:32:51', '2021-08-16 14:32:51'),
(6, 'CONCEALING BASE', 'barang6.jpeg', 28000, 70, 'shade : natural', '2021-08-16 14:32:51', '2021-08-16 14:32:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2021_08_16_075210_create_pesanans_table', 1),
(5, '2021_08_16_075540_create_pesanan_details_table', 1),
(6, '2021_08_16_074515_create_barangs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesanans`
--

DROP TABLE IF EXISTS `pesanans`;
CREATE TABLE IF NOT EXISTS `pesanans` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanans`
--

INSERT INTO `pesanans` (`id`, `user_id`, `tanggal`, `status`, `kode`, `jumlah_harga`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-08-16', '0', 991, 80000, '2021-08-16 07:38:23', '2021-08-16 07:38:34');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_details`
--

DROP TABLE IF EXISTS `pesanan_details`;
CREATE TABLE IF NOT EXISTS `pesanan_details` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `barang_id` int(11) NOT NULL,
  `pesanan_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanan_details`
--

INSERT INTO `pesanan_details` (`id`, `barang_id`, `pesanan_id`, `jumlah`, `jumlah_harga`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 30000, '2021-08-16 07:38:23', '2021-08-16 07:38:23'),
(2, 2, 1, 2, 50000, '2021-08-16 07:38:34', '2021-08-16 07:38:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nohp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `alamat`, `nohp`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'anastya', 'tya123@gmail.com', NULL, '$2y$10$3h4xcVVPsyOwWk797JHcDuNQq0Hhi/TiHXVzrsyBnHpBKtGIsF8.2', NULL, NULL, NULL, '2021-08-16 07:36:16', '2021-08-16 07:36:16');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
