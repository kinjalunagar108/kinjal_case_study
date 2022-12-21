-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2022 at 10:33 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `session_id`, `user_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 'CbmZ61M95nyODPcFwI63OIb7h48tFm2vZ2GbpBTY', 12, 3, 8, '2022-12-21 02:48:29', '2022-12-21 03:29:40'),
(2, 'dmuUGwfJmxSSHSTRaf1AJVs54MCSu9BMBrECSloc', NULL, 3, 10, '2022-12-21 02:53:29', '2022-12-21 02:53:29'),
(3, '0MQVnuPZMCh5IswapA55Xj5FrkTOdIwqcxbNyndZ', NULL, 4, 10, '2022-12-21 03:31:39', '2022-12-21 03:31:39'),
(4, 'hEGpO2AvrH4dUjJ5izzuNEgspa1624sri6YdSLld', NULL, 4, 10, '2022-12-21 03:31:47', '2022-12-21 03:31:47'),
(5, '7qcoQD26blthXshN8upOeKyPddwUNo8DflLFs49A', 12, 4, 10, '2022-12-21 03:34:51', '2022-12-21 03:34:51');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Furniture', '2022-12-20 13:51:11', '2022-12-20 13:51:11'),
(2, 'Clothes', '2022-12-20 13:52:25', '2022-12-20 13:52:25'),
(3, 'Jewellery', '2022-12-20 13:53:58', '2022-12-20 13:53:58'),
(4, 'Shoes', '2022-12-20 14:02:05', '2022-12-20 14:02:05');

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_12_20_184052_create_categories_table', 2),
(11, '2022_12_20_192451_create_products_table', 3),
(12, '2022_12_21_052416_create_carts_table', 4),
(13, '2022_12_21_052951_create_cart_items_table', 4),
(14, '2022_12_21_075229_create_carts_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('7d0a209fc61bde3940f470eff29d08a59dd82974bcb08b35fe452be12cdbaabd19f65b0b662b6bd6', 14, 1, 'API Token', '[]', 0, '2022-12-20 12:59:05', '2022-12-20 12:59:05', '2023-12-20 18:29:05'),
('86c2e21c9be68f86d9bce85a3efd6c7de52c18eeec8483b5d7f53b82ff2a20a56c5d065aff27980a', 12, 1, 'auth_token', '[]', 0, '2022-12-20 12:57:06', '2022-12-20 12:57:06', '2023-12-20 18:27:06'),
('9896cdf61f17c87f910d79590b1d2edfa324d5cd4b9535b9aab143a23fa46e497c92007dc218fc45', 12, 1, 'API Token', '[]', 0, '2022-12-20 12:57:47', '2022-12-20 12:57:47', '2023-12-20 18:27:47'),
('eac68c0ee278c26d632e6d3352e97e0cca972a081e1bc0014956e58ee6c6e6f3e0599e34a4ba6532', 12, 1, 'API Token', '[]', 0, '2022-12-20 12:57:31', '2022-12-20 12:57:31', '2023-12-20 18:27:31');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'H4jA1GUoBi7MzJtwK4NnuyEUm41sWiU5Ugu6S2GZ', NULL, 'http://localhost', 1, 0, 0, '2022-12-20 10:49:03', '2022-12-20 10:49:03'),
(2, NULL, 'Laravel Password Grant Client', 'TmRK40ubzhmSIj9NLoOms5hGYYE9jxkvPOkpGowX', 'users', 'http://localhost', 0, 1, 0, '2022-12-20 10:49:03', '2022-12-20 10:49:03');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-12-20 10:49:03', '2022-12-20 10:49:03');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'MyApp', 'a2f9323a9ba2d2a0abefab3cb12d39d9fab99b751cb99534dbf2e44a48acea76', '[\"*\"]', NULL, NULL, '2022-12-20 12:04:11', '2022-12-20 12:04:11'),
(2, 'App\\Models\\User', 3, 'MyApp', 'f256ce4f1ebe40168e092644bc5aaff2daae182184a0d4a581cbe7ac8e22f479', '[\"*\"]', NULL, NULL, '2022-12-20 12:09:50', '2022-12-20 12:09:50'),
(3, 'App\\Models\\User', 4, 'MyApp', 'f94e8076af6e6f67da3fff509d9aa838e086f898ada4a41073a3373528c5b3e3', '[\"*\"]', NULL, NULL, '2022-12-20 12:20:13', '2022-12-20 12:20:13'),
(4, 'App\\Models\\User', 5, 'MyApp', '2805db43bc4f76f99b027ab337820d37c39ad8ef55cb40d454bad6db283da86c', '[\"*\"]', NULL, NULL, '2022-12-20 12:21:01', '2022-12-20 12:21:01'),
(5, 'App\\Models\\User', 7, 'MyApp', 'd343562e400e6954eba843626fef18694e85571155bb975259d8e6b126e3855b', '[\"*\"]', NULL, NULL, '2022-12-20 12:23:45', '2022-12-20 12:23:45'),
(6, 'App\\Models\\User', 8, 'MyApp', 'ebc5146042562eef86cb21dadeaea4d67f95e8261ec950b8ddf65d417882bfbe', '[\"*\"]', NULL, NULL, '2022-12-20 12:24:41', '2022-12-20 12:24:41'),
(7, 'App\\Models\\User', 8, 'MyApp', '6a8a85c30e77a223fac0e41735c59b709875c9d44e4384f829e0bcd632ef3697', '[\"*\"]', NULL, NULL, '2022-12-20 12:24:41', '2022-12-20 12:24:41'),
(8, 'App\\Models\\User', 9, 'MyApp', '67f42c99e8e871e8e7d318761441be5e44e676bdde55a952cd88fc84e9e2a4a0', '[\"*\"]', NULL, NULL, '2022-12-20 12:26:18', '2022-12-20 12:26:18'),
(9, 'App\\Models\\User', 11, 'API Token', '9968abad025ab73de4eef2534984e504be398e3463959a1aaf8441aa378acd37', '[\"*\"]', NULL, NULL, '2022-12-20 12:28:46', '2022-12-20 12:28:46'),
(10, 'App\\Models\\User', 12, 'API Token', 'cf5ddef01353ce191c9ed88dce06dba49db35e3cd8003c5fbf32b39a492627bb', '[\"*\"]', NULL, NULL, '2022-12-20 12:32:56', '2022-12-20 12:32:56'),
(11, 'App\\Models\\User', 12, 'API Token', '7165880adedef3fb722a30bf3c72a8f5c8ab92e3819a35494b0c9c6960bed63e', '[\"*\"]', NULL, NULL, '2022-12-20 12:38:36', '2022-12-20 12:38:36'),
(12, 'App\\Models\\User', 12, 'API Token', '38690d3c5cbcaeda283073ec416e1aecb942e5b903267106b28f636a44debd0f', '[\"*\"]', NULL, NULL, '2022-12-20 12:41:47', '2022-12-20 12:41:47'),
(13, 'App\\Models\\User', 12, 'API Token', '6553cd7df37c1c6822f560df4bbae97fd8706e8667e3b6c77f3a43606751bfe1', '[\"*\"]', NULL, NULL, '2022-12-20 12:46:59', '2022-12-20 12:46:59'),
(14, 'App\\Models\\User', 12, 'auth_token', '6e0388ddcf9617163179dce186d363d9045eb1159800d541e4e8699d8248426e', '[\"*\"]', NULL, NULL, '2022-12-20 12:48:31', '2022-12-20 12:48:31'),
(15, 'App\\Models\\User', 12, 'auth_token', 'a842a9758f96d463827523c1ed5ed40edc5dd25aa138f1d2ca3651fad05928c5', '[\"*\"]', NULL, NULL, '2022-12-20 12:48:51', '2022-12-20 12:48:51'),
(16, 'App\\Models\\User', 12, 'auth_token', '8e14a7bf6e77d82d79e51babe16ae6107f47d339d61c92da4761335fcc3d9ea1', '[\"*\"]', NULL, NULL, '2022-12-20 12:49:18', '2022-12-20 12:49:18'),
(17, 'App\\Models\\User', 13, 'auth_token', '196f5d8d525b91793966fd56ba197c526639909b0e3e9460e5dfd3099b066c6b', '[\"*\"]', NULL, NULL, '2022-12-20 12:51:07', '2022-12-20 12:51:07');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category_id`, `description`, `avatar`, `created_at`, `updated_at`) VALUES
(3, 'Sofa', 9000, 1, 'Made for the new age, this sofa features a minimalist, modern design that also offers a breakthrough in space management.', '1671598335.jpg', '2022-12-20 23:22:15', '2022-12-20 23:22:15'),
(4, 'golden set', 56000, 3, 'Made for the new age, this sofa features a minimalist, modern design that also offers a breakthrough in space management.', '1671598459.jpg', '2022-12-20 23:24:19', '2022-12-20 23:24:19');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kinjal', 'kinjalunagar108@gmail.com', NULL, '$2y$10$XcBWe.36WHHXIjexHQHI4ObnY2omoqRFoaTKQ6Ag6LgAWIS1yUlsa', NULL, '2022-12-20 12:04:11', '2022-12-20 12:04:11'),
(12, 'divya', 'divya@gmail.com', NULL, '$2y$10$t9R0HfJTA8qLoZ8vh2Y8Ve5J3b412cdoisclLYC9/M1WMjTFCFdfK', NULL, '2022-12-20 12:32:56', '2022-12-20 12:32:56'),
(13, 'aniket', 'aniket@gmail.com', NULL, '$2y$10$elY9s0TUy0JNMCQiTRrzSuo1tuS1YuQY5SP6ipWL0U6ZDCtfHwvSS', NULL, '2022-12-20 12:51:07', '2022-12-20 12:51:07'),
(14, 'anikett', 'anikett@gmail.com', NULL, '$2y$10$HNJ7btIbPsNXKBFcRZIUyOTgoEHybWHLFuhq6L5EWrez5QuxKJaMK', NULL, '2022-12-20 12:59:05', '2022-12-20 12:59:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
