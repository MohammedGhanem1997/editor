-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2022 at 05:31 PM
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
(7, 'fsf', 2, '2022-04-10 00:08:02', '2022-04-10 00:08:02');

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

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `url`, `User_id`, `folder_id`, `created_at`, `updated_at`) VALUES
(25, 'uploads/ads/1649478303rFIA4uA6OLlwKl0fAwwWVkggEG6xqhqR2Wfpsuvqimage1.jpg', 1, 3, '2022-04-09 02:25:03', '2022-04-09 02:25:03'),
(26, 'uploads/ads/1649478524rFIA4uA6OLlwKl0fAwwWVkggEG6xqhqR2Wfpsuvqimage1.jpg', 1, 3, '2022-04-09 02:28:44', '2022-04-09 02:28:44'),
(27, 'uploads/ads/1649480093rFIA4uA6OLlwKl0fAwwWVkggEG6xqhqR2Wfpsuvqimage1.jpg', 1, 1, '2022-04-09 02:54:53', '2022-04-09 02:54:53'),
(28, 'uploads/ads/1649555669WmJMSGWNykNh1JoH0ES7TVWgGUovQOy4qYS3PkCiimage1.jpg', 2, 1, '2022-04-09 23:54:29', '2022-04-09 23:54:29'),
(29, 'uploads/ads/1649555701WmJMSGWNykNh1JoH0ES7TVWgGUovQOy4qYS3PkCiimage1.jpg', 2, 1, '2022-04-09 23:55:01', '2022-04-09 23:55:01'),
(30, 'uploads/ads/1649555816WmJMSGWNykNh1JoH0ES7TVWgGUovQOy4qYS3PkCiimage1.jpg', 2, 1, '2022-04-09 23:56:56', '2022-04-09 23:56:56'),
(31, 'uploads/ads/1649557267RAON12upIVqfsju0rI0CUKNwqpB43ToMDKAcXHrWimage1.jpg', 2, 1, '2022-04-10 00:21:07', '2022-04-10 00:21:07'),
(32, 'uploads/ads/1649557308RAON12upIVqfsju0rI0CUKNwqpB43ToMDKAcXHrWimage1.jpg', 2, 1, '2022-04-10 00:21:48', '2022-04-10 00:21:48'),
(33, 'uploads/ads/1649557386RAON12upIVqfsju0rI0CUKNwqpB43ToMDKAcXHrWimage1.jpg', 2, 1, '2022-04-10 00:23:06', '2022-04-10 00:23:06'),
(34, 'uploads/ads/1649557686RAON12upIVqfsju0rI0CUKNwqpB43ToMDKAcXHrWimage1.jpg', 2, 4, '2022-04-10 00:28:06', '2022-04-10 00:28:06'),
(35, 'uploads/ads/1649557740RAON12upIVqfsju0rI0CUKNwqpB43ToMDKAcXHrWimage1.jpg', 2, 4, '2022-04-10 00:29:01', '2022-04-10 00:29:01'),
(36, 'uploads/ads/1649557789RAON12upIVqfsju0rI0CUKNwqpB43ToMDKAcXHrWimage1.jpg', 2, 1, '2022-04-10 00:29:49', '2022-04-10 00:29:49'),
(37, 'uploads/ads/1649557814RAON12upIVqfsju0rI0CUKNwqpB43ToMDKAcXHrWimage1.jpg', 2, 7, '2022-04-10 00:30:14', '2022-04-10 00:30:14'),
(38, 'uploads/ads/1649557855RAON12upIVqfsju0rI0CUKNwqpB43ToMDKAcXHrWimage1.png', 2, 7, '2022-04-10 00:30:55', '2022-04-10 00:30:55'),
(39, 'uploads/ads/1649558186RAON12upIVqfsju0rI0CUKNwqpB43ToMDKAcXHrWimage1.png', 2, NULL, '2022-04-10 00:36:26', '2022-04-10 00:36:26'),
(40, 'uploads/ads/1649558205RAON12upIVqfsju0rI0CUKNwqpB43ToMDKAcXHrWimage1.png', 2, NULL, '2022-04-10 00:36:45', '2022-04-10 00:36:45'),
(41, 'uploads/ads/1649558242RAON12upIVqfsju0rI0CUKNwqpB43ToMDKAcXHrWimage1.jpg', 2, NULL, '2022-04-10 00:37:22', '2022-04-10 00:37:22');

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
(1, NULL, 'gahnem', '876544', '44555', 'naser city', NULL, 3, 1, '2022-04-10 12:41:39', '2022-04-10 13:27:49');

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
(1, 'ghanem', 'ghanem@gmail.com', '2022-04-14 13:38:31', '$2y$10$RVehMb3XS5q17TL51Z.q/eOIoQ1VYIdJ1/MnSR/LleDsXue/i8..O', '0XzsEjLUi4OPpoV2s7dHBSS1LB6sxGF5jnpU4MyFg2JneEqdzdxhS0bxBPKW', 1, 1, '2022-04-08 17:28:47', '2022-04-10 11:29:42'),
(2, 'ghanem for test', 'ghanem1@gmail.com', NULL, '$2y$10$EO724fO6MosLdT9z6/9m8uYRGbpca9nuO0W4.7vBhf3ciwargA/CC', NULL, 0, 0, '2022-04-09 23:29:51', '2022-04-10 13:18:46'),
(4, 'ghanem', 'ghanem2@gmail.com', NULL, '$2y$10$ht/Q33kA387cwnmRtAEPB.AD9WIQC68Ynffqzsl39UHMPf16zvPSC', NULL, 0, 1, '2022-04-10 01:01:50', '2022-04-10 01:01:50');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

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
