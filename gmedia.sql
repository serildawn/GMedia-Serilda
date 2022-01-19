-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2022 at 06:38 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gmedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_01_04_164424_create_users_table', 1),
(3, '2022_01_05_140439_create_pesertas_table', 1),
(4, '2022_01_05_140507_create_katagoris_table', 1),
(5, '2022_01_05_204630_create_pelatihans_table', 1),
(6, '2022_01_13_140804_create_bookings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesertas`
--

CREATE TABLE `pesertas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesertas`
--

INSERT INTO `pesertas` (`id`, `nip`, `nama`, `alamat`, `jenis_kelamin`, `tgl_lahir`, `created_at`, `updated_at`) VALUES
(1, '1211212333', 'Serilda Wahyu Nofita', 'Jalan Kesumba Dalam nomer 1000', 'Perempuan', '1998-11-17', '2022-01-18 02:16:38', '2022-01-18 02:16:38'),
(2, '1211212332', 'Cirilda Wahyu', 'joyosari', 'Perempuan', '1999-12-16', '2022-01-18 02:17:53', '2022-01-18 02:17:53'),
(3, '12112123321', 'ahmad', 'wikarsa', 'Laki-laki', '2022-01-07', '2022-01-18 03:06:35', '2022-01-18 03:06:35'),
(4, '0121212121111', 'hafizh diaz', 'singosari', 'Laki-laki', '2022-01-07', '2022-01-18 03:08:28', '2022-01-18 03:08:28'),
(5, '098712776131', 'Yusuf', 'japan raya', 'Laki-laki', '2021-10-08', '2022-01-18 03:09:02', '2022-01-18 03:09:02'),
(6, '213454123', 'Izmir Tais', 'Bondowoso', 'Perempuan', '2014-07-15', '2022-01-18 03:11:25', '2022-01-18 03:11:25'),
(7, '19012000121', 'Selvy', 'Pungging', 'Perempuan', '2000-01-19', '2022-01-18 03:12:32', '2022-01-18 03:12:32'),
(8, '13031999200', 'Fawwaz Ramzy Darmawan', 'Krian', 'Laki-laki', '1999-03-13', '2022-01-18 03:13:22', '2022-01-18 03:13:22'),
(9, '03011997001', 'Aflah Brilianto', 'Madiun', 'Laki-laki', '1997-01-03', '2022-01-18 03:14:03', '2022-01-18 03:14:03'),
(10, '0998122171', 'Yessy', 'Gresik', 'Perempuan', '1997-02-05', '2022-01-18 03:15:17', '2022-01-18 03:15:17'),
(11, '0912218176', 'Nissa Auwliya', 'Surabaya', 'Perempuan', '1999-05-05', '2022-01-18 03:17:16', '2022-01-18 03:17:16'),
(12, '01212121215', 'Raja Sanjaya', 'Sidoarjo', 'Laki-laki', '1998-08-19', '2022-01-18 05:49:27', '2022-01-18 05:49:27'),
(13, '0912771212', 'Zinedane', 'Wonoayu', 'Perempuan', '1998-03-20', '2022-01-18 06:25:01', '2022-01-18 06:25:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admindata', '$2y$10$g9tipd1SQzVASnUn2ymA7eaI1mgFw4ozvEBPiKRuEM3Lov6crQVo.', 'RcU7vVmeFBQRwYj31b43cx8oIjgwPOvIkDoBgIC8BSpKxyJKRabNygwhTiZg', '2022-01-18 00:49:30', '2022-01-18 00:49:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pesertas`
--
ALTER TABLE `pesertas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesertas`
--
ALTER TABLE `pesertas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
