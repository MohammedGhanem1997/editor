-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2022 at 05:49 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vero`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'gesrg', 2, '2022-04-08 18:45:39', '2022-04-08 18:45:39'),
(2, 'fdgsrdh', 2, '2022-04-08 18:48:25', '2022-04-08 18:48:25'),
(3, 'rgsrg', 2, '2022-04-08 18:50:16', '2022-04-08 18:50:16'),
(4, 'ghlghls', 2, '2022-04-08 18:52:15', '2022-04-08 18:52:15'),
(5, 'sfgsarg', 2, '2022-04-08 19:03:22', '2022-04-08 19:03:22'),
(6, 'ghlghls', 2, '2022-04-08 19:04:03', '2022-04-08 19:04:03'),
(7, 'fsf', 2, '2022-04-10 00:08:02', '2022-04-10 00:08:02'),
(8, 'favorite', 4, '2022-04-10 13:34:35', '2022-04-10 13:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `User_id` bigint(20) UNSIGNED NOT NULL,
  `folder_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_04_07_191217_create_galleries_table', 1),
(5, '2022_04_08_185923_create_folders_table', 1),
(6, '2022_02_03_075612_create_s_e_o_s_table', 1),
(8, '2022_02_06_070743_create_site_controls_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_controls`
--

CREATE TABLE `site_controls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_controls`
--

INSERT INTO `site_controls` (`id`, `logo`, `site_name`, `phone`, `mobile`, `address`, `email`, `seen`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'gahnem', '876544', '44555', 'naser city', NULL, 8, 1, '2022-04-10 12:41:39', '2022-04-10 13:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `s_e_o_s`
--

CREATE TABLE `s_e_o_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colunm_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `s_e_o_s`
--

INSERT INTO `s_e_o_s` (`id`, `table`, `meta`, `description`, `colunm_id`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'title', 'ghanem editor', 1, '2022-02-16 10:41:55', '2022-04-10 11:11:56'),
(2, 'Home', 'facebook', 'facebock', 1, '2022-02-16 10:41:55', '2022-04-10 11:11:56'),
(3, 'Home', 'instagram', 'instagram', 1, '2022-02-16 10:41:55', '2022-04-10 11:11:56'),
(4, 'Home', 'keyward', 'ljfha , ohil , ohl , uk , lgilh, oihop,', 1, '2022-02-16 10:41:55', '2022-04-10 11:11:56'),
(5, 'Home', 'description', 'hgoaisrhpg oiergoijrgjsropigjsoooooooooopre i  htepghposerhg[jt', 1, '2022-02-16 10:41:55', '2022-04-10 11:11:56'),
(6, 'Home', 'author', 'ghanem', 1, '2022-02-16 10:41:56', '2022-04-10 11:11:56'),
(7, 'Home', 'viewport', 'h seyherthb erdthers b', 1, '2022-02-16 10:41:56', '2022-04-10 11:11:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `admin`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ghanem', 'ghanem@gmail.com', '2022-04-14 13:38:31', '$2y$10$NIOiJNBAAjA2.GdcyTa5WOZ8K1IJ5ZDU1xKs49yUz5wrQuhVj5kfy', 'zyCjiLL2hZiR1ovZTlN5erZfAcgRbMhlHh8EcUs2H1CTfkSBenF95YlZdkF3', 1, 1, '2022-04-08 17:28:47', '2022-04-10 13:41:45'),
(2, 'ghanem for test', 'ghanem1@gmail.com', NULL, '$2y$10$EO724fO6MosLdT9z6/9m8uYRGbpca9nuO0W4.7vBhf3ciwargA/CC', NULL, 0, 0, '2022-04-09 23:29:51', '2022-04-10 13:18:46'),
(4, 'ghanem', 'ghanem2@gmail.com', '2022-04-05 15:34:06', '$2y$10$ht/Q33kA387cwnmRtAEPB.AD9WIQC68Ynffqzsl39UHMPf16zvPSC', NULL, 0, 1, '2022-04-10 01:01:50', '2022-04-10 01:01:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `site_controls`
--
ALTER TABLE `site_controls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_e_o_s`
--
ALTER TABLE `s_e_o_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `folders`
--
ALTER TABLE `folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `site_controls`
--
ALTER TABLE `site_controls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `s_e_o_s`
--
ALTER TABLE `s_e_o_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
