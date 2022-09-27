-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2022 at 07:58 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plaa_application`
--

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
(1, 'Bahasa Verbal', NULL, '2022-09-18 19:29:15'),
(2, 'Bahasa Non Verbal', NULL, '2022-09-18 19:29:21'),
(3, 'Motorik Kasar', NULL, '2022-09-18 19:29:27'),
(4, 'Motorik Halus', NULL, '2022-09-18 19:29:33'),
(5, 'Interaksi Sosial dan Emosi', NULL, '2022-09-18 19:29:53'),
(6, 'Kemandirian / Self Help', '2022-09-18 19:30:03', '2022-09-18 19:30:03'),
(7, 'Akademik dan Pra Akademik (Membaca)', '2022-09-18 19:30:15', '2022-09-18 19:30:15'),
(8, 'Akademik dan Pra Akademik (Berhitung)', '2022-09-18 19:30:19', '2022-09-18 19:30:19'),
(9, 'Akademik dan Pra Akademik (Menulis)', '2022-09-18 19:30:23', '2022-09-18 19:30:23');

-- --------------------------------------------------------

--
-- Table structure for table `data_users`
--

CREATE TABLE `data_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggallahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_users`
--

INSERT INTO `data_users` (`id`, `nama_lengkap`, `gender`, `tempat`, `tanggallahir`, `created_at`, `updated_at`) VALUES
(1, 'Novaldi', 'Laki-laki', 'fwefwe', '2022-09-13', '2022-09-20 19:17:06', '2022-09-20 19:17:06'),
(2, 'Axel', 'Laki-laki', 'Bandung', '2022-09-21', '2022-09-21 00:05:04', '2022-09-21 00:05:04'),
(3, 'Axel', 'Laki-laki', 'bandung', '2022-09-21', '2022-09-21 00:09:53', '2022-09-21 00:09:53'),
(4, 'Axel', 'Laki-laki', 'asdad', '2022-09-21', '2022-09-21 00:16:10', '2022-09-21 00:16:10'),
(5, 'Axel', 'Laki-laki', 'Bandung', '2022-09-21', '2022-09-21 00:31:34', '2022-09-21 00:31:34'),
(6, 'Axel', 'Laki-laki', 'bandung', '2022-09-13', '2022-09-21 00:42:10', '2022-09-21 00:42:10'),
(7, 'Axel Eldrian Hadiwibowo', 'Laki-laki', 'bandun', '2022-09-22', '2022-09-21 21:53:39', '2022-09-21 21:53:39'),
(8, 'axel', 'Laki-laki', 'badung', '2022-09-07', '2022-09-22 00:24:55', '2022-09-22 00:24:55'),
(9, 'fajri', 'Laki-laki', 'asdas', '2022-09-08', '2022-09-22 00:36:07', '2022-09-22 00:36:07'),
(10, 'Axel', 'Laki-laki', 'bandung', '2022-09-22', '2022-09-22 01:12:25', '2022-09-22 01:12:25'),
(11, 'hilman', 'Laki-laki', 'bandung', '2022-09-22', '2022-09-22 02:34:54', '2022-09-22 02:34:54'),
(12, 'Axel', 'Laki-laki', 'bandung', '2022-09-21', '2022-09-22 18:49:42', '2022-09-22 18:49:42'),
(13, 'axel', 'Perempuan', 'ansdao', '2022-09-23', '2022-09-22 23:49:24', '2022-09-22 23:49:24'),
(14, 'Axel', 'Laki-laki', 'bandung', '2022-09-23', '2022-09-23 01:43:01', '2022-09-23 01:43:01'),
(15, 'axel', 'Perempuan', 'asdad', '2022-09-23', '2022-09-23 01:47:38', '2022-09-23 01:47:38'),
(16, 'fajri', 'Laki-laki', 'bandung', '2022-09-23', '2022-09-23 06:26:30', '2022-09-23 06:26:30'),
(17, 'total', 'Perempuan', 'asd', '2022-09-23', '2022-09-23 06:29:41', '2022-09-23 06:29:41'),
(18, 'asdads', 'Laki-laki', 'asdasd', '2022-09-06', '2022-09-23 06:44:20', '2022-09-23 06:44:20'),
(19, 'Testing Beneran', 'Laki-laki', 'Bandung-test', '2022-09-19', '2022-09-23 08:35:02', '2022-09-23 08:35:02'),
(20, 'fajri', 'Laki-laki', 'bandung', '2022-09-23', '2022-09-23 08:59:07', '2022-09-23 08:59:07');

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
-- Table structure for table `finalresult`
--

CREATE TABLE `finalresult` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `final_points` float DEFAULT NULL,
  `hasil_survei` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rekomendasi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finalresult`
--

INSERT INTO `finalresult` (`id`, `id_user`, `final_points`, `hasil_survei`, `rekomendasi`, `created_at`, `updated_at`) VALUES
(7, 10, 246, '', 'coba', '2022-09-23 00:36:03', '2022-09-23 00:36:03'),
(8, 16, 444.4, '', 'iya anaknya autis banget', '2022-09-23 06:28:56', '2022-09-23 06:28:56'),
(9, 18, 577.5, 'Sedang', 'adsasd', '2022-09-23 06:47:08', '2022-09-23 06:47:08'),
(10, 18, 577.5, 'Sedang', 'asdasdasd', '2022-09-23 08:58:16', '2022-09-23 08:58:16'),
(11, 20, 606.3, 'Sedang', 'fajri tidak autis', '2022-09-23 09:01:19', '2022-09-23 09:01:19');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_04_020715_create_permissions_table', 1),
(6, '2022_02_04_020803_create_roles_table', 1),
(7, '2022_02_04_020910_create_role_user_table', 1),
(8, '2022_02_04_021018_create_permission_role_table', 1),
(9, '2022_04_13_070826_create_categories_table', 1),
(10, '2022_04_13_070920_create_questions_table', 1),
(11, '2022_04_13_071022_create_options_table', 1),
(12, '2022_04_13_072027_create_results_table', 1),
(13, '2022_04_13_072320_create_question_result_table', 1),
(14, '2022_09_20_082735_create_datauser_table', 1),
(15, '2022_09_20_083345_create_finalresult_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `option_text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `question_id`, `option_text`, `points`, `created_at`, `updated_at`) VALUES
(41, 11, 'Dapat', 8, '2022-09-18 20:15:48', '2022-09-23 02:55:43'),
(43, 12, 'Dapat', 7.5, '2022-09-18 20:16:40', '2022-09-23 02:55:58'),
(44, 13, 'Dapat', 8.4, '2022-09-18 20:16:48', '2022-09-23 02:56:32'),
(45, 14, 'Dapat', 6.9, '2022-09-18 20:16:54', '2022-09-23 02:56:47'),
(46, 15, 'Dapat', 6.6, '2022-09-18 20:16:59', '2022-09-23 02:57:09'),
(47, 16, 'Dapat', 6.1, '2022-09-18 20:19:11', '2022-09-23 02:57:30'),
(48, 17, 'Dapat', 5.8, '2022-09-18 20:19:17', '2022-09-23 02:58:04'),
(49, 18, 'Dapat', 6.4, '2022-09-18 20:19:22', '2022-09-23 02:59:01'),
(50, 19, 'Dapat', 6.9, '2022-09-18 20:19:36', '2022-09-23 02:59:19'),
(51, 20, 'Dapat', 7.5, '2022-09-18 20:19:50', '2022-09-18 20:19:50'),
(52, 21, 'Dapat', 8.1, '2022-09-18 20:19:55', '2022-09-18 20:19:55'),
(54, 22, 'Dapat', 7.4, '2022-09-18 20:20:12', '2022-09-18 20:20:12'),
(55, 23, 'Dapat', 7.9, '2022-09-18 20:20:18', '2022-09-18 20:20:18'),
(56, 24, 'Dapat', 7, '2022-09-18 20:20:24', '2022-09-18 20:20:24'),
(57, 25, 'Dapat', 7.4, '2022-09-18 20:20:29', '2022-09-18 20:20:29'),
(58, 26, 'Dapat', 6.3, '2022-09-18 20:20:34', '2022-09-18 20:20:34'),
(59, 27, 'Dapat', 7.3, '2022-09-18 20:20:39', '2022-09-18 20:20:39'),
(60, 28, 'Dapat', 6.5, '2022-09-18 20:20:45', '2022-09-18 20:20:45'),
(61, 29, 'Dapat', 6.6, '2022-09-18 20:20:49', '2022-09-18 20:20:49'),
(62, 30, 'Dapat', 7, '2022-09-18 20:20:54', '2022-09-18 20:20:54'),
(63, 31, 'Dapat', 5.5, '2022-09-18 20:25:20', '2022-09-18 20:25:20'),
(64, 32, 'Dapat', 8.1, '2022-09-18 20:25:26', '2022-09-18 20:25:26'),
(65, 33, 'Dapat', 7.9, '2022-09-18 20:25:32', '2022-09-18 20:25:32'),
(66, 34, 'Dapat', 7.5, '2022-09-18 20:25:38', '2022-09-18 20:25:38'),
(67, 35, 'Dapat', 7.9, '2022-09-18 20:25:44', '2022-09-18 20:25:44'),
(68, 36, 'Dapat', 6.9, '2022-09-18 20:25:50', '2022-09-18 20:25:50'),
(70, 37, 'Dapat', 6.8, '2022-09-18 20:26:04', '2022-09-18 20:26:04'),
(71, 38, 'Dapat', 7, '2022-09-18 20:26:49', '2022-09-18 20:26:49'),
(72, 39, 'Dapat', 7.9, '2022-09-18 20:26:55', '2022-09-18 20:26:55'),
(73, 40, 'Dapat', 7.1, '2022-09-18 20:26:59', '2022-09-18 20:26:59'),
(76, 41, 'Dapat', 7.5, '2022-09-18 20:27:14', '2022-09-18 20:27:14'),
(77, 42, 'Dapat', 4.9, '2022-09-18 20:27:23', '2022-09-18 20:27:23'),
(79, 43, 'Dapat', 6.8, '2022-09-18 20:27:33', '2022-09-18 20:27:33'),
(80, 44, 'Dapat', 7.1, '2022-09-18 20:27:38', '2022-09-18 20:27:38'),
(81, 45, 'Dapat', 7.9, '2022-09-18 20:27:42', '2022-09-18 20:27:42'),
(82, 46, 'Dapat', 7.5, '2022-09-18 20:27:46', '2022-09-18 20:27:46'),
(83, 47, 'Dapat', 4.9, '2022-09-18 20:27:50', '2022-09-18 20:27:50'),
(84, 48, 'Dapat', 6.5, '2022-09-18 20:27:55', '2022-09-18 20:27:55'),
(85, 49, 'Dapat', 7.8, '2022-09-18 20:27:59', '2022-09-18 20:27:59'),
(86, 50, 'Dapat', 7.5, '2022-09-18 20:28:03', '2022-09-18 20:28:03'),
(87, 70, 'Dapat', 7.6, '2022-09-18 20:56:45', '2022-09-18 20:56:45'),
(88, 69, 'Dapat', 4.8, '2022-09-18 20:56:50', '2022-09-18 20:56:50'),
(89, 68, 'Dapat', 7.3, '2022-09-18 20:56:55', '2022-09-18 20:56:55'),
(90, 67, 'Dapat', 7.8, '2022-09-18 20:57:01', '2022-09-18 20:57:01'),
(91, 66, 'Dapat', 5.3, '2022-09-18 20:57:16', '2022-09-18 20:57:16'),
(92, 65, 'Dapat', 7, '2022-09-18 20:57:21', '2022-09-18 20:57:21'),
(93, 64, 'Dapat', 7.8, '2022-09-18 20:57:26', '2022-09-18 20:57:26'),
(94, 63, 'Dapat', 5.3, '2022-09-18 20:57:32', '2022-09-18 20:57:32'),
(96, 62, 'Dapat', 4.9, '2022-09-18 20:57:46', '2022-09-18 20:57:46'),
(97, 61, 'Dapat', 7.8, '2022-09-18 20:57:55', '2022-09-18 20:57:55'),
(98, 60, 'Dapat', 7.1, '2022-09-18 20:58:01', '2022-09-18 20:58:01'),
(99, 59, 'Dapat', 7.4, '2022-09-18 20:58:06', '2022-09-18 20:58:06'),
(100, 58, 'Dapat', 5, '2022-09-18 20:58:11', '2022-09-18 20:58:11'),
(101, 57, 'Dapat', 5.4, '2022-09-18 20:58:20', '2022-09-18 20:58:20'),
(102, 56, 'Dapat', 7.5, '2022-09-18 20:58:29', '2022-09-18 20:58:29'),
(103, 55, 'Dapat', 6.4, '2022-09-18 20:58:34', '2022-09-18 20:58:34'),
(104, 54, 'Dapat', 7.6, '2022-09-18 20:58:40', '2022-09-18 20:58:40'),
(105, 53, 'Dapat', 4.8, '2022-09-18 20:58:45', '2022-09-18 20:58:45'),
(106, 52, 'Dapat', 5.9, '2022-09-18 20:58:51', '2022-09-18 20:58:51'),
(107, 51, 'Dapat', 7.6, '2022-09-18 20:59:01', '2022-09-18 20:59:01'),
(108, 71, 'Dapat', 7.4, '2022-09-18 21:11:52', '2022-09-18 21:11:52'),
(109, 72, 'Dapat', 7.6, '2022-09-18 21:11:57', '2022-09-18 21:11:57'),
(111, 73, 'Dapat', 7, '2022-09-18 21:12:05', '2022-09-18 21:12:05'),
(112, 74, 'Dapat', 5.3, '2022-09-18 21:12:09', '2022-09-18 21:12:09'),
(113, 75, 'Dapat', 7.5, '2022-09-18 21:12:13', '2022-09-18 21:12:13'),
(114, 76, 'Dapat', 7.8, '2022-09-18 21:12:17', '2022-09-18 21:12:17'),
(115, 77, 'Dapat', 6.9, '2022-09-18 21:12:21', '2022-09-18 21:12:21'),
(116, 78, 'Dapat', 5.6, '2022-09-18 21:12:25', '2022-09-18 21:12:25'),
(117, 79, 'Dapat', 6.9, '2022-09-18 21:12:30', '2022-09-18 21:12:30'),
(118, 80, 'Dapat', 4.3, '2022-09-18 21:12:36', '2022-09-18 21:12:36'),
(119, 81, 'Dapat', 4.5, '2022-09-18 21:12:42', '2022-09-18 21:12:42'),
(120, 82, 'Dapat', 4.8, '2022-09-18 21:12:48', '2022-09-18 21:12:48'),
(121, 83, 'Dapat', 6.3, '2022-09-18 21:12:52', '2022-09-18 21:12:52'),
(122, 84, 'Dapat', 6.1, '2022-09-18 21:12:57', '2022-09-18 21:12:57'),
(123, 85, 'Dapat', 4.9, '2022-09-18 21:13:02', '2022-09-18 21:13:02'),
(124, 86, 'Dapat', 6.8, '2022-09-18 21:13:06', '2022-09-18 21:13:06'),
(125, 87, 'Dapat', 6.9, '2022-09-18 21:13:11', '2022-09-18 21:13:11'),
(126, 88, 'Dapat', 6.1, '2022-09-18 21:13:16', '2022-09-18 21:13:16'),
(127, 89, 'Dapat', 6, '2022-09-18 21:13:20', '2022-09-18 21:13:20'),
(128, 90, 'Dapat', 7.4, '2022-09-18 21:13:25', '2022-09-18 21:13:25'),
(129, 91, 'Dapat', 7.9, '2022-09-18 22:21:06', '2022-09-18 22:21:06'),
(130, 92, 'Dapat', 8, '2022-09-18 22:21:13', '2022-09-18 22:21:13'),
(131, 93, 'Dapat', 7.9, '2022-09-18 22:21:20', '2022-09-18 22:21:20'),
(132, 94, 'Dapat', 7.6, '2022-09-18 22:21:28', '2022-09-18 22:21:28'),
(133, 95, 'Dapat', 7.6, '2022-09-18 22:21:35', '2022-09-18 22:21:35'),
(135, 96, 'Dapat', 7.6, '2022-09-18 22:22:44', '2022-09-18 22:22:44'),
(136, 97, 'Dapat', 8.5, '2022-09-18 22:22:58', '2022-09-18 22:22:58'),
(137, 98, 'Dapat', 7.8, '2022-09-18 22:23:12', '2022-09-18 22:23:12'),
(140, 99, 'Dapat', 7.1, '2022-09-18 22:23:40', '2022-09-18 22:23:40'),
(141, 100, 'Dapat', 8.1, '2022-09-18 22:23:50', '2022-09-18 22:23:50'),
(142, 101, 'Dapat', 6.1, '2022-09-18 22:23:56', '2022-09-18 22:23:56'),
(144, 102, 'Dapat', 7.8, '2022-09-18 22:24:11', '2022-09-18 22:24:11'),
(145, 103, 'Dapat', 6.9, '2022-09-18 22:24:24', '2022-09-18 22:24:24'),
(146, 104, 'Dapat', 7.4, '2022-09-18 22:24:33', '2022-09-18 22:24:33'),
(147, 105, 'Dapat', 8, '2022-09-18 22:24:42', '2022-09-18 22:24:42'),
(149, 106, 'Dapat', 8.4, '2022-09-18 22:24:57', '2022-09-18 22:24:57'),
(150, 107, 'Dapat', 7.6, '2022-09-18 22:25:35', '2022-09-18 22:25:35'),
(151, 108, 'Dapat', 5.1, '2022-09-18 22:25:47', '2022-09-18 22:25:47'),
(152, 109, 'Dapat', 5.8, '2022-09-18 22:25:56', '2022-09-18 22:25:56'),
(154, 110, 'Dapat', 5.5, '2022-09-18 22:26:12', '2022-09-18 22:26:12'),
(155, 111, 'Dapat', 5, '2022-09-18 22:26:20', '2022-09-18 22:26:20'),
(156, 112, 'Dapat', 5.6, '2022-09-18 22:26:29', '2022-09-18 22:26:29'),
(157, 113, 'Dapat', 5.6, '2022-09-18 22:26:38', '2022-09-18 22:26:38'),
(158, 114, 'Dapat', 7.3, '2022-09-18 22:27:36', '2022-09-18 22:27:36'),
(159, 115, 'Dapat', 7.1, '2022-09-18 22:27:44', '2022-09-18 22:27:44'),
(160, 116, 'Dapat', 5.9, '2022-09-18 22:27:53', '2022-09-18 22:27:53'),
(162, 117, 'Dapat', 5.8, '2022-09-18 22:28:09', '2022-09-18 22:28:09'),
(163, 118, 'Dapat', 5.4, '2022-09-18 22:28:17', '2022-09-18 22:28:17'),
(164, 119, 'Dapat', 5.5, '2022-09-18 22:28:25', '2022-09-18 22:28:25'),
(165, 120, 'Dapat', 8.3, '2022-09-18 22:28:33', '2022-09-18 22:28:33'),
(166, 121, 'Dapat', 5.8, '2022-09-18 22:28:43', '2022-09-18 22:28:43'),
(167, 122, 'Dapat', 5.5, '2022-09-18 22:28:51', '2022-09-18 22:28:51'),
(168, 123, 'Dapat', 6, '2022-09-18 22:28:58', '2022-09-18 22:28:58'),
(169, 124, 'Dapat', 5.9, '2022-09-18 22:29:07', '2022-09-18 22:29:07'),
(170, 125, 'Dapat', 5.4, '2022-09-18 22:29:14', '2022-09-18 22:29:14'),
(171, 126, 'Dapat', 5.3, '2022-09-18 22:29:22', '2022-09-18 22:29:22'),
(172, 127, 'Dapat', 4.9, '2022-09-18 22:29:31', '2022-09-18 22:29:31'),
(173, 128, 'Dapat', 5, '2022-09-18 22:29:42', '2022-09-18 22:29:42'),
(174, 129, 'Dapat', 5.4, '2022-09-18 22:29:51', '2022-09-18 22:29:51'),
(175, 130, 'Dapat', 5.1, '2022-09-18 22:29:59', '2022-09-18 22:29:59'),
(176, 131, 'Dapat', 7.9, '2022-09-18 23:31:11', '2022-09-18 23:31:11'),
(177, 132, 'Dapat', 8.4, '2022-09-18 23:31:20', '2022-09-18 23:31:20'),
(178, 133, 'Dapat', 8.3, '2022-09-18 23:31:28', '2022-09-18 23:31:28'),
(179, 134, 'Dapat', 7.6, '2022-09-18 23:31:36', '2022-09-18 23:31:36'),
(180, 135, 'Dapat', 8.8, '2022-09-18 23:31:43', '2022-09-18 23:31:43'),
(181, 136, 'Dapat', 6.4, '2022-09-18 23:31:51', '2022-09-18 23:31:51'),
(182, 137, 'Dapat', 6.3, '2022-09-18 23:31:59', '2022-09-18 23:31:59'),
(184, 138, 'Dapat', 6.8, '2022-09-18 23:32:14', '2022-09-18 23:32:14'),
(185, 139, 'Dapat', 7.4, '2022-09-18 23:32:24', '2022-09-18 23:32:24'),
(186, 140, 'Dapat', 7.1, '2022-09-18 23:32:32', '2022-09-18 23:32:32'),
(187, 141, 'Dapat', 7.3, '2022-09-18 23:32:40', '2022-09-18 23:32:40'),
(188, 142, 'Dapat', 7.4, '2022-09-18 23:32:48', '2022-09-18 23:32:48'),
(189, 143, 'Dapat', 7.1, '2022-09-18 23:32:56', '2022-09-18 23:32:56'),
(190, 144, 'Dapat', 7.4, '2022-09-18 23:33:11', '2022-09-18 23:33:11'),
(191, 145, 'Dapat', 7.1, '2022-09-18 23:33:24', '2022-09-18 23:33:24'),
(192, 146, 'Dapat', 7.3, '2022-09-18 23:33:31', '2022-09-18 23:33:31'),
(194, 147, 'Dapat', 6.8, '2022-09-18 23:33:48', '2022-09-18 23:33:48'),
(195, 148, 'Dapat', 6.7, '2022-09-18 23:33:57', '2022-09-18 23:33:57'),
(196, 149, 'Dapat', 7, '2022-09-18 23:34:07', '2022-09-18 23:34:07'),
(197, 150, 'Dapat', 7.9, '2022-09-18 23:34:15', '2022-09-18 23:34:15'),
(198, 151, 'Dapat', 7.8, '2022-09-18 23:34:27', '2022-09-18 23:34:27'),
(199, 152, 'Dapat', 8, '2022-09-18 23:34:36', '2022-09-18 23:34:36'),
(200, 153, 'Dapat', 7.6, '2022-09-18 23:34:43', '2022-09-18 23:34:43'),
(201, 154, 'Dapat', 6.1, '2022-09-18 23:34:50', '2022-09-18 23:34:50'),
(203, 155, 'Dapat', 6.3, '2022-09-18 23:35:07', '2022-09-18 23:35:07'),
(204, 156, 'Dapat', 6, '2022-09-18 23:35:14', '2022-09-18 23:35:14'),
(205, 157, 'Dapat', 7.5, '2022-09-18 23:35:22', '2022-09-18 23:35:22'),
(206, 158, 'Dapat', 7.3, '2022-09-18 23:35:31', '2022-09-18 23:35:31'),
(207, 159, 'Dapat', 7, '2022-09-18 23:35:40', '2022-09-18 23:35:40'),
(248, 11, 'Tidak Dapat', 0, '2022-09-18 20:15:48', '2022-09-18 20:15:48'),
(250, 12, 'Tidak Dapat', 0, '2022-09-18 20:16:40', '2022-09-18 20:16:40'),
(251, 13, 'Tidak Dapat', 0, '2022-09-18 20:16:48', '2022-09-18 20:16:48'),
(252, 14, 'Tidak Dapat', 0, '2022-09-18 20:16:54', '2022-09-18 20:16:54'),
(253, 15, 'Tidak Dapat', 0, '2022-09-18 20:16:59', '2022-09-18 20:17:03'),
(254, 16, 'Tidak Dapat', 0, '2022-09-18 20:19:11', '2022-09-18 20:19:11'),
(255, 17, 'Tidak Dapat', 0, '2022-09-18 20:19:17', '2022-09-18 20:19:17'),
(256, 18, 'Tidak Dapat', 0, '2022-09-18 20:19:22', '2022-09-18 20:19:22'),
(257, 19, 'Tidak Dapat', 0, '2022-09-18 20:19:36', '2022-09-18 20:19:36'),
(258, 20, 'Tidak Dapat', 0, '2022-09-18 20:19:50', '2022-09-18 20:19:50'),
(259, 21, 'Tidak Dapat', 0, '2022-09-18 20:19:55', '2022-09-18 20:19:55'),
(261, 22, 'Tidak Dapat', 0, '2022-09-18 20:20:12', '2022-09-18 20:20:12'),
(262, 23, 'Tidak Dapat', 0, '2022-09-18 20:20:18', '2022-09-18 20:20:18'),
(263, 24, 'Tidak Dapat', 0, '2022-09-18 20:20:24', '2022-09-18 20:20:24'),
(264, 25, 'Tidak Dapat', 0, '2022-09-18 20:20:29', '2022-09-18 20:20:29'),
(265, 26, 'Tidak Dapat', 0, '2022-09-18 20:20:34', '2022-09-18 20:20:34'),
(266, 27, 'Tidak Dapat', 0, '2022-09-18 20:20:39', '2022-09-18 20:20:39'),
(267, 28, 'Tidak Dapat', 0, '2022-09-18 20:20:45', '2022-09-18 20:20:45'),
(268, 29, 'Tidak Dapat', 0, '2022-09-18 20:20:49', '2022-09-18 20:20:49'),
(269, 30, 'Tidak Dapat', 0, '2022-09-18 20:20:54', '2022-09-18 20:20:54'),
(270, 31, 'Tidak Dapat', 0, '2022-09-18 20:25:20', '2022-09-18 20:25:20'),
(271, 32, 'Tidak Dapat', 0, '2022-09-18 20:25:26', '2022-09-18 20:25:26'),
(272, 33, 'Tidak Dapat', 0, '2022-09-18 20:25:32', '2022-09-18 20:25:32'),
(273, 34, 'Tidak Dapat', 0, '2022-09-18 20:25:38', '2022-09-18 20:25:38'),
(274, 35, 'Tidak Dapat', 0, '2022-09-18 20:25:44', '2022-09-18 20:25:44'),
(275, 36, 'Tidak Dapat', 0, '2022-09-18 20:25:50', '2022-09-18 20:25:50'),
(277, 37, 'Tidak Dapat', 0, '2022-09-18 20:26:04', '2022-09-18 20:26:04'),
(278, 38, 'Tidak Dapat', 0, '2022-09-18 20:26:49', '2022-09-18 20:26:49'),
(279, 39, 'Tidak Dapat', 0, '2022-09-18 20:26:55', '2022-09-18 20:26:55'),
(280, 40, 'Tidak Dapat', 0, '2022-09-18 20:26:59', '2022-09-18 20:26:59'),
(283, 41, 'Tidak Dapat', 0, '2022-09-18 20:27:14', '2022-09-18 20:27:14'),
(284, 42, 'Tidak Dapat', 0, '2022-09-18 20:27:23', '2022-09-18 20:27:23'),
(286, 43, 'Tidak Dapat', 0, '2022-09-18 20:27:33', '2022-09-18 20:27:33'),
(287, 44, 'Tidak Dapat', 0, '2022-09-18 20:27:38', '2022-09-18 20:27:38'),
(288, 45, 'Tidak Dapat', 0, '2022-09-18 20:27:42', '2022-09-18 20:27:42'),
(289, 46, 'Tidak Dapat', 0, '2022-09-18 20:27:46', '2022-09-18 20:27:46'),
(290, 47, 'Tidak Dapat', 0, '2022-09-18 20:27:50', '2022-09-18 20:27:50'),
(291, 48, 'Tidak Dapat', 0, '2022-09-18 20:27:55', '2022-09-18 20:27:55'),
(292, 49, 'Tidak Dapat', 0, '2022-09-18 20:27:59', '2022-09-18 20:27:59'),
(293, 50, 'Tidak Dapat', 0, '2022-09-18 20:28:03', '2022-09-18 20:28:03'),
(294, 70, 'Tidak Dapat', 0, '2022-09-18 20:56:45', '2022-09-18 20:56:45'),
(295, 69, 'Tidak Dapat', 0, '2022-09-18 20:56:50', '2022-09-18 20:56:50'),
(296, 68, 'Tidak Dapat', 0, '2022-09-18 20:56:55', '2022-09-18 20:56:55'),
(297, 67, 'Tidak Dapat', 0, '2022-09-18 20:57:01', '2022-09-18 20:57:01'),
(298, 66, 'Tidak Dapat', 0, '2022-09-18 20:57:16', '2022-09-18 20:57:16'),
(299, 65, 'Tidak Dapat', 0, '2022-09-18 20:57:21', '2022-09-18 20:57:21'),
(300, 64, 'Tidak Dapat', 0, '2022-09-18 20:57:26', '2022-09-18 20:57:26'),
(301, 63, 'Tidak Dapat', 0, '2022-09-18 20:57:32', '2022-09-18 20:57:32'),
(303, 62, 'Tidak Dapat', 0, '2022-09-18 20:57:46', '2022-09-18 20:57:46'),
(304, 61, 'Tidak Dapat', 0, '2022-09-18 20:57:55', '2022-09-18 20:57:55'),
(305, 60, 'Tidak Dapat', 0, '2022-09-18 20:58:01', '2022-09-18 20:58:01'),
(306, 59, 'Tidak Dapat', 0, '2022-09-18 20:58:06', '2022-09-18 20:58:06'),
(307, 58, 'Tidak Dapat', 0, '2022-09-18 20:58:11', '2022-09-18 20:58:11'),
(308, 57, 'Tidak Dapat', 0, '2022-09-18 20:58:20', '2022-09-18 20:58:20'),
(309, 56, 'Tidak Dapat', 0, '2022-09-18 20:58:29', '2022-09-18 20:58:29'),
(310, 55, 'Tidak Dapat', 0, '2022-09-18 20:58:34', '2022-09-18 20:58:34'),
(311, 54, 'Tidak Dapat', 0, '2022-09-18 20:58:40', '2022-09-18 20:58:40'),
(312, 53, 'Tidak Dapat', 0, '2022-09-18 20:58:45', '2022-09-18 20:58:45'),
(313, 52, 'Tidak Dapat', 0, '2022-09-18 20:58:51', '2022-09-18 20:58:51'),
(314, 51, 'Tidak Dapat', 0, '2022-09-18 20:59:01', '2022-09-18 20:59:01'),
(315, 71, 'Tidak Dapat', 0, '2022-09-18 21:11:52', '2022-09-18 21:11:52'),
(316, 72, 'Tidak Dapat', 0, '2022-09-18 21:11:57', '2022-09-18 21:11:57'),
(318, 73, 'Tidak Dapat', 0, '2022-09-18 21:12:05', '2022-09-18 21:12:05'),
(319, 74, 'Tidak Dapat', 0, '2022-09-18 21:12:09', '2022-09-18 21:12:09'),
(320, 75, 'Tidak Dapat', 0, '2022-09-18 21:12:13', '2022-09-18 21:12:13'),
(321, 76, 'Tidak Dapat', 0, '2022-09-18 21:12:17', '2022-09-18 21:12:17'),
(322, 77, 'Tidak Dapat', 0, '2022-09-18 21:12:21', '2022-09-18 21:12:21'),
(323, 78, 'Tidak Dapat', 0, '2022-09-18 21:12:25', '2022-09-18 21:12:25'),
(324, 79, 'Tidak Dapat', 0, '2022-09-18 21:12:30', '2022-09-18 21:12:30'),
(325, 80, 'Tidak Dapat', 0, '2022-09-18 21:12:36', '2022-09-18 21:12:36'),
(326, 81, 'Tidak Dapat', 0, '2022-09-18 21:12:42', '2022-09-18 21:12:42'),
(327, 82, 'Tidak Dapat', 0, '2022-09-18 21:12:48', '2022-09-18 21:12:48'),
(328, 83, 'Tidak Dapat', 0, '2022-09-18 21:12:52', '2022-09-18 21:12:52'),
(329, 84, 'Tidak Dapat', 0, '2022-09-18 21:12:57', '2022-09-18 21:12:57'),
(330, 85, 'Tidak Dapat', 0, '2022-09-18 21:13:02', '2022-09-18 21:13:02'),
(331, 86, 'Tidak Dapat', 0, '2022-09-18 21:13:06', '2022-09-18 21:13:06'),
(332, 87, 'Tidak Dapat', 0, '2022-09-18 21:13:11', '2022-09-18 21:13:11'),
(333, 88, 'Tidak Dapat', 0, '2022-09-18 21:13:16', '2022-09-18 21:13:16'),
(334, 89, 'Tidak Dapat', 0, '2022-09-18 21:13:20', '2022-09-18 21:13:20'),
(335, 90, 'Tidak Dapat', 0, '2022-09-18 21:13:25', '2022-09-18 21:13:25'),
(336, 91, 'Tidak Dapat', 0, '2022-09-18 22:21:06', '2022-09-18 22:21:06'),
(337, 92, 'Tidak Dapat', 0, '2022-09-18 22:21:13', '2022-09-18 22:21:13'),
(338, 93, 'Tidak Dapat', 0, '2022-09-18 22:21:20', '2022-09-18 22:21:20'),
(339, 94, 'Tidak Dapat', 0, '2022-09-18 22:21:28', '2022-09-18 22:21:28'),
(340, 95, 'Tidak Dapat', 0, '2022-09-18 22:21:35', '2022-09-18 22:21:35'),
(342, 96, 'Tidak Dapat', 0, '2022-09-18 22:22:44', '2022-09-18 22:22:44'),
(343, 97, 'Tidak Dapat', 0, '2022-09-18 22:22:58', '2022-09-18 22:22:58'),
(344, 98, 'Tidak Dapat', 0, '2022-09-18 22:23:12', '2022-09-18 22:23:12'),
(347, 99, 'Tidak Dapat', 0, '2022-09-18 22:23:40', '2022-09-18 22:23:40'),
(348, 100, 'Tidak Dapat', 0, '2022-09-18 22:23:50', '2022-09-18 22:23:50'),
(349, 101, 'Tidak Dapat', 0, '2022-09-18 22:23:56', '2022-09-18 22:23:56'),
(351, 102, 'Tidak Dapat', 0, '2022-09-18 22:24:11', '2022-09-18 22:24:11'),
(352, 103, 'Tidak Dapat', 0, '2022-09-18 22:24:24', '2022-09-18 22:24:24'),
(353, 104, 'Tidak Dapat', 0, '2022-09-18 22:24:33', '2022-09-18 22:24:33'),
(354, 105, 'Tidak Dapat', 0, '2022-09-18 22:24:42', '2022-09-18 22:24:42'),
(356, 106, 'Tidak Dapat', 0, '2022-09-18 22:24:57', '2022-09-18 22:24:57'),
(357, 107, 'Tidak Dapat', 0, '2022-09-18 22:25:35', '2022-09-18 22:25:35'),
(358, 108, 'Tidak Dapat', 0, '2022-09-18 22:25:47', '2022-09-18 22:25:47'),
(359, 109, 'Tidak Dapat', 0, '2022-09-18 22:25:56', '2022-09-18 22:25:56'),
(361, 110, 'Tidak Dapat', 0, '2022-09-18 22:26:12', '2022-09-18 22:26:12'),
(362, 111, 'Tidak Dapat', 0, '2022-09-18 22:26:20', '2022-09-18 22:26:20'),
(363, 112, 'Tidak Dapat', 0, '2022-09-18 22:26:29', '2022-09-18 22:26:29'),
(364, 113, 'Tidak Dapat', 0, '2022-09-18 22:26:38', '2022-09-18 22:26:38'),
(365, 114, 'Tidak Dapat', 0, '2022-09-18 22:27:36', '2022-09-18 22:27:36'),
(366, 115, 'Tidak Dapat', 0, '2022-09-18 22:27:44', '2022-09-18 22:27:44'),
(367, 116, 'Tidak Dapat', 0, '2022-09-18 22:27:53', '2022-09-18 22:27:53'),
(369, 117, 'Tidak Dapat', 0, '2022-09-18 22:28:09', '2022-09-18 22:28:09'),
(370, 118, 'Tidak Dapat', 0, '2022-09-18 22:28:17', '2022-09-18 22:28:17'),
(371, 119, 'Tidak Dapat', 0, '2022-09-18 22:28:25', '2022-09-18 22:28:25'),
(372, 120, 'Tidak Dapat', 0, '2022-09-18 22:28:33', '2022-09-18 22:28:33'),
(373, 121, 'Tidak Dapat', 0, '2022-09-18 22:28:43', '2022-09-18 22:28:43'),
(374, 122, 'Tidak Dapat', 0, '2022-09-18 22:28:51', '2022-09-18 22:28:51'),
(375, 123, 'Tidak Dapat', 0, '2022-09-18 22:28:58', '2022-09-18 22:28:58'),
(376, 124, 'Tidak Dapat', 0, '2022-09-18 22:29:07', '2022-09-18 22:29:07'),
(377, 125, 'Tidak Dapat', 0, '2022-09-18 22:29:14', '2022-09-18 22:29:14'),
(378, 126, 'Tidak Dapat', 0, '2022-09-18 22:29:22', '2022-09-18 22:29:22'),
(379, 127, 'Tidak Dapat', 0, '2022-09-18 22:29:31', '2022-09-18 22:29:31'),
(380, 128, 'Tidak Dapat', 0, '2022-09-18 22:29:42', '2022-09-18 22:29:42'),
(381, 129, 'Tidak Dapat', 0, '2022-09-18 22:29:51', '2022-09-18 22:29:51'),
(382, 130, 'Tidak Dapat', 0, '2022-09-18 22:29:59', '2022-09-18 22:29:59'),
(383, 131, 'Tidak Dapat', 0, '2022-09-18 23:31:11', '2022-09-18 23:31:11'),
(384, 132, 'Tidak Dapat', 0, '2022-09-18 23:31:20', '2022-09-18 23:31:20'),
(385, 133, 'Tidak Dapat', 0, '2022-09-18 23:31:28', '2022-09-18 23:31:28'),
(386, 134, 'Tidak Dapat', 0, '2022-09-18 23:31:36', '2022-09-18 23:31:36'),
(387, 135, 'Tidak Dapat', 0, '2022-09-18 23:31:43', '2022-09-18 23:31:43'),
(388, 136, 'Tidak Dapat', 0, '2022-09-18 23:31:51', '2022-09-18 23:31:51'),
(389, 137, 'Tidak Dapat', 0, '2022-09-18 23:31:59', '2022-09-18 23:31:59'),
(391, 138, 'Tidak Dapat', 0, '2022-09-18 23:32:14', '2022-09-18 23:32:14'),
(392, 139, 'Tidak Dapat', 0, '2022-09-18 23:32:24', '2022-09-18 23:32:24'),
(393, 140, 'Tidak Dapat', 0, '2022-09-18 23:32:32', '2022-09-18 23:32:32'),
(394, 141, 'Tidak Dapat', 0, '2022-09-18 23:32:40', '2022-09-18 23:32:40'),
(395, 142, 'Tidak Dapat', 0, '2022-09-18 23:32:48', '2022-09-18 23:32:48'),
(396, 143, 'Tidak Dapat', 0, '2022-09-18 23:32:56', '2022-09-18 23:32:56'),
(397, 144, 'Tidak Dapat', 0, '2022-09-18 23:33:11', '2022-09-18 23:33:11'),
(398, 145, 'Tidak Dapat', 0, '2022-09-18 23:33:24', '2022-09-18 23:33:24'),
(399, 146, 'Tidak Dapat', 0, '2022-09-18 23:33:31', '2022-09-18 23:33:31'),
(401, 147, 'Tidak Dapat', 0, '2022-09-18 23:33:48', '2022-09-18 23:33:48'),
(402, 148, 'Tidak Dapat', 0, '2022-09-18 23:33:57', '2022-09-18 23:33:57'),
(403, 149, 'Tidak Dapat', 0, '2022-09-18 23:34:07', '2022-09-18 23:34:07'),
(404, 150, 'Tidak Dapat', 0, '2022-09-18 23:34:15', '2022-09-18 23:34:15'),
(405, 151, 'Tidak Dapat', 0, '2022-09-18 23:34:27', '2022-09-18 23:34:27'),
(406, 152, 'Tidak Dapat', 0, '2022-09-18 23:34:36', '2022-09-18 23:34:36'),
(407, 153, 'Tidak Dapat', 0, '2022-09-18 23:34:43', '2022-09-18 23:34:43'),
(408, 154, 'Tidak Dapat', 0, '2022-09-18 23:34:50', '2022-09-18 23:34:50'),
(410, 155, 'Tidak Dapat', 0, '2022-09-18 23:35:07', '2022-09-18 23:35:07'),
(411, 156, 'Tidak Dapat', 0, '2022-09-18 23:35:14', '2022-09-18 23:35:14'),
(412, 157, 'Tidak Dapat', 0, '2022-09-18 23:35:22', '2022-09-18 23:35:22'),
(413, 158, 'Tidak Dapat', 0, '2022-09-18 23:35:31', '2022-09-18 23:35:31'),
(414, 159, 'Tidak Dapat', 0, '2022-09-18 23:35:40', '2022-09-18 23:35:40');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'user_management_access', NULL, NULL),
(2, 'user_management_create', NULL, NULL),
(3, 'user_management_edit', NULL, NULL),
(4, 'user_management_view', NULL, NULL),
(5, 'user_management_delete', NULL, NULL),
(6, 'permission_access', NULL, NULL),
(7, 'permission_create', NULL, NULL),
(8, 'permission_edit', NULL, NULL),
(9, 'permission_view', NULL, NULL),
(10, 'permission_delete', NULL, NULL),
(11, 'role_access', NULL, NULL),
(12, 'role_create', NULL, NULL),
(13, 'role_edit', NULL, NULL),
(14, 'role_view', NULL, NULL),
(15, 'role_delete', NULL, NULL),
(16, 'user_access', NULL, NULL),
(17, 'user_create', NULL, NULL),
(18, 'user_edit', NULL, NULL),
(19, 'user_view', NULL, NULL),
(20, 'user_delete', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 1, NULL, NULL),
(9, 9, 1, NULL, NULL),
(10, 10, 1, NULL, NULL),
(11, 11, 1, NULL, NULL),
(12, 12, 1, NULL, NULL),
(13, 13, 1, NULL, NULL),
(14, 14, 1, NULL, NULL),
(15, 15, 1, NULL, NULL),
(16, 16, 1, NULL, NULL),
(17, 17, 1, NULL, NULL),
(18, 18, 1, NULL, NULL),
(19, 19, 1, NULL, NULL),
(20, 20, 1, NULL, NULL),
(21, 1, 2, NULL, NULL),
(34, 3, 2, NULL, NULL),
(35, 4, 2, NULL, NULL),
(36, 5, 2, NULL, NULL),
(37, 6, 2, NULL, NULL),
(38, 8, 2, NULL, NULL),
(39, 9, 2, NULL, NULL),
(40, 10, 2, NULL, NULL),
(41, 11, 2, NULL, NULL),
(42, 13, 2, NULL, NULL),
(43, 14, 2, NULL, NULL),
(44, 15, 2, NULL, NULL),
(45, 16, 2, NULL, NULL),
(46, 18, 2, NULL, NULL),
(47, 19, 2, NULL, NULL),
(48, 20, 2, NULL, NULL);

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
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `question_text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `category_id`, `question_text`, `image_path`, `created_at`, `updated_at`) VALUES
(11, 2, 'Merespon ketika di panggil namanya. Contoh : “Halo Budi”, atau “Selamat pagi Budi”', '', '2022-09-18 19:41:28', '2022-09-18 19:48:27'),
(12, 2, 'Merespon ketika di larang atau di perintah. Contoh : “Budi coba angkat satu tangan kamu” atau lebih informalnya “Budi coba salim kakak”', '', '2022-09-18 19:48:40', '2022-09-18 19:48:40'),
(13, 2, 'Memberi isyarat jika menginginkan sesuatu yang  sifanya kebutuhan yang mendasar seperti Menginginkan makan, minum, dsb. Contoh : Pasien menunjukan isyarat seperti menyentuh perutnya ketika merasa lapar, atau menyentuh leher ketika haus.', '', '2022-09-18 19:48:53', '2022-09-18 19:48:53'),
(14, 2, 'Memberi isyarat jika menginginkan sesuatu yang sifatnya bukan kebutuhan yang mendasar seperti meminta ambilkan mainan, meminta ambilkan benda yang sulit di jangkaunya dsb. Contoh : Pasien menunjuk benda-benda yang dia inginkan ke kita sembari meminta kepada kita', '', '2022-09-18 19:49:07', '2022-09-18 19:49:07'),
(15, 2, 'Dapat menunjukkan sesuatu (hal yang sering di jumpainya sehari-hari) sesuai dengan  yang ditanyakan. Seperti mana mama/ibu, dsb, mana piring, sendok dsb', '', '2022-09-18 19:50:32', '2022-09-18 19:50:32'),
(16, 2, 'Memberi reaksi yang tepat ketika di tanya “dimana”? Contoh : Ketika di tanya “dimana kucing Budi?” maka pasien dapat membawa kita ke kucingnya atau menunjuk tempat kucing berada.', '', '2022-09-18 19:51:50', '2022-09-18 19:51:50'),
(17, 2, 'Mengerti dan mau menunjukkan arti kata di bawah, dan atas. Contoh : Pasien dapat menujuk ke arah bawah atau atas dengan jarinya atau bagian tubuh lainnya', '', '2022-09-18 19:52:00', '2022-09-18 19:52:00'),
(18, 2, 'Mengikuti perintah membawa benda yang sudah di kenalnya di tempat lain Contoh : Ketika diminta “tolong angkat piring itu” maka pasien mengangkat piring', '', '2022-09-18 19:55:35', '2022-09-18 19:55:35'),
(19, 2, 'Mengerti kalimat sederhana yang terdiri dari 2 kata yang memiliki makna tersendiri Contoh : Apakah pasien mengerti dengan kata seperti “Sapu tangan”,”Meja makan”,”Baju basah”, dsb', '', '2022-09-18 19:55:47', '2022-09-18 19:55:47'),
(20, 2, 'Mengerti dua perintah sederhana yang berhubungan  Contoh : Pasien paham ketika di perintahkan untuk tidak boleh lari dan jalan pelan, dsb', '', '2022-09-18 19:55:57', '2022-09-18 19:55:57'),
(21, 2, 'Menunjukkan 2-3 gambar benda yang biasa di gunakannya (mis:  baju, sepatu, piring )', '', '2022-09-18 19:56:05', '2022-09-18 19:56:05'),
(22, 2, 'Menunjukkan 2 -3 gambar binatang  yang sesuai ( ayam, gajah, kambing)', '', '2022-09-18 19:56:26', '2022-09-18 19:56:26'),
(23, 2, 'Menunjukkan kekesalan/kejengkelan karena tidak di mengerti Contoh ekspresi kesal/jengkel', '/image/1a.jpeg', '2022-09-18 19:56:45', '2022-09-18 19:56:45'),
(24, 2, 'Mengerti dan dapat menunjukkan perbandingan 2 benda yang berbeda dalam ukuran  Contoh : Ketika kita perintah untuk tunjuk mana yang lebih besar di antara kedua benda yang berbeda ukuran, maka pasien dapat menunjuk benda yang lebih besar', '', '2022-09-18 19:56:55', '2022-09-18 19:56:55'),
(25, 2, 'Memahami kegiatan pura-pura ( pura-pura minum, makan, masak-masakan dsb ) Contoh : Ketika berpura-pura makan dengan bahan bukan makanan, pasien sadar akan hal tersebut dan tidak memmakan barang yang seharusnya bukan makanan', '', '2022-09-18 19:57:07', '2022-09-18 19:57:07'),
(26, 2, 'Memahami fungsi 2 - 3 benda yang ada di sekitarnya (kursi, sendok, dan tempat tidur )', '', '2022-09-18 19:57:16', '2022-09-18 19:57:16'),
(27, 2, 'Menunjuk yang mana ekspresi sedih, senang dan marah (Minimal 2). (Gambar)', '/image/1b.jpeg', '2022-09-18 20:02:20', '2022-09-18 20:04:27'),
(28, 2, 'Mengerti 2 perintah yang tidak berhubungan Contoh : Pasien mengerti dan melaksanakan ketika diperintah ambil sapu lalu duduk', '', '2022-09-18 20:02:32', '2022-09-18 20:02:32'),
(29, 2, 'Mengenal ekspresi takut, kaget , marah, sedih, dsb. (Minimal mengenal 2 ekspresi)', '', '2022-09-18 20:02:53', '2022-09-18 20:03:56'),
(30, 2, 'Mengerti tiga perintah yang tidak berhubungan  Contoh : Pasien mengerti dan melaksanakan ketika diperintah jangan makan(pasien tidak makan), ambil buku(pasien pergi mengambil buku) lalu simpan sepatu(pasien tidak menyimpan sepatu karena tidak membawa sepatu/tetap di tempat)', '', '2022-09-18 20:03:04', '2022-09-18 20:03:04'),
(31, 1, 'Dapat menggunakan satu kata dalam kalimat Contoh : Iya, Ibu, Ayah, Makan', '', '2022-09-18 20:21:33', '2022-09-18 20:21:33'),
(32, 1, 'Menyebutkan nama sendiri Contoh : ketika ditanya nama pasien, pasien dapat menyebutkan namanya', '', '2022-09-18 20:21:42', '2022-09-18 20:21:42'),
(33, 1, 'Meniru kata yang diucapkan Contoh : ketika disebutkan kata seperti (mama, Bola, Sapu, Meja dst) maka pasien dapat menirunya dengan jelas', '', '2022-09-18 20:21:48', '2022-09-18 20:21:48'),
(34, 1, 'Menyebutkan min 2 gambar benda dan fungsinya Contoh : “sendok untuk makan atau gelas berfungsi untuk minum, dsb)', '', '2022-09-18 20:21:55', '2022-09-18 20:21:55'),
(35, 1, 'Menyebutkan min 3 objek familiar Contoh : meja, kursi, sepatu, dll', '', '2022-09-18 20:22:41', '2022-09-18 20:22:41'),
(36, 1, 'Menggunakan dua kata dalam kalimat (mau makan, dsb)', '', '2022-09-18 20:22:45', '2022-09-18 20:22:45'),
(37, 1, 'Mengucapkan konsep waktu ( pagi , malam dsb)', '', '2022-09-18 20:22:52', '2022-09-18 20:22:52'),
(38, 1, 'Mengucapkan salam Contoh : Selamat pagi, Assalamualaikum jika dalam islam, dsb', '', '2022-09-18 20:23:02', '2022-09-18 20:23:02'),
(39, 1, 'Menyebutkan minimal 3 nama gambar binatang (Gambar) Contoh : Jika ditunjukan salah satu dari gambar di atas, maka pasien dapat menyebutkan nama binatang tersebut dengan benar', '/image/2a.jpeg', '2022-09-18 20:23:19', '2022-09-18 20:23:19'),
(40, 1, 'Mengulang kata sesuai bunyinya ( Makan, Bola dsb)', '', '2022-09-18 20:23:36', '2022-09-18 20:23:36'),
(41, 1, 'Menggunakan namanya untuk menyebut dirinya Contoh : Ketika ditanya tentang hal yang berhubungan dgn diri pasien, pasien dpt menjawab dengan menyebutkan namanya seperti“Budi tadi sudah makan”', '', '2022-09-18 20:23:46', '2022-09-18 20:23:46'),
(42, 1, 'Menggunakan kata ukuran Contoh : “Lemari itu besar dan sendok itu kecil” atau “Meja itu panjang”', '', '2022-09-18 20:23:54', '2022-09-18 20:23:54'),
(43, 1, 'Menggunakan 3 kata dalam kalimat Contoh : “Mau main bola”', '', '2022-09-18 20:24:01', '2022-09-18 20:24:01'),
(44, 1, 'Menggunakna kata ganti “aku” / “saya” Contoh : “Aku makan bersama kakak”', '', '2022-09-18 20:24:10', '2022-09-18 20:24:10'),
(45, 1, 'Menyebutkan anggota tubuh min 3 buah Contoh : “Ini tangan, mulut, dan mata”', '', '2022-09-18 20:24:17', '2022-09-18 20:24:17'),
(46, 1, 'Mengucapkan kata menolak ketika tidak mau Contoh : “Budi tidak mau tidur”', '', '2022-09-18 20:24:23', '2022-09-18 20:24:23'),
(47, 1, 'Mengucapkan kalimat yang dapat dimengerti orang lain (yang masih asing)', '', '2022-09-18 20:24:34', '2022-09-18 20:24:34'),
(48, 1, 'Mengucapkan salam sesuai dengan konsep waktu Contoh : “Selamat pagi” di pagi hari dan “Selamat siang” di siang hari', '', '2022-09-18 20:24:41', '2022-09-18 20:24:41'),
(49, 1, 'Mengucapkan terimakasih Contoh : “Terima kasih kakak”', '', '2022-09-18 20:24:48', '2022-09-18 20:24:48'),
(50, 1, 'Menggunakan kata tanya ; apa, dimana, kapan? Contoh :  “Nama kakak siapa?”, “Makan dimana?”', '', '2022-09-18 20:24:56', '2022-09-18 20:24:56'),
(51, 3, 'Berjalan dengan cepat / lambat', '', '2022-09-18 20:39:43', '2022-09-18 20:39:43'),
(52, 3, 'Berjalan mundur', '', '2022-09-18 20:39:52', '2022-09-18 20:39:52'),
(53, 3, 'Berjalan miring', '', '2022-09-18 20:40:01', '2022-09-18 20:40:01'),
(54, 3, 'Naik turun tangga dengan pegangan', '', '2022-09-18 20:41:59', '2022-09-18 20:41:59'),
(55, 3, 'Lompat dengan 2 kaki bersamaan', '', '2022-09-18 20:42:08', '2022-09-18 20:48:24'),
(56, 3, 'Berdiri pada satu kaki (selama 3 detik)', '', '2022-09-18 20:42:26', '2022-09-18 20:42:26'),
(57, 3, 'Bergoyang ketika mendengar irama musik', '', '2022-09-18 20:52:09', '2022-09-18 20:52:09'),
(58, 3, 'Merangkak dengan kedua kaki', '', '2022-09-18 20:52:20', '2022-09-18 20:52:20'),
(59, 3, 'Merayap dengan kaki bergantian', '', '2022-09-18 20:52:32', '2022-09-18 20:52:32'),
(60, 3, 'Menggelindingkan bola', '', '2022-09-18 20:54:14', '2022-09-18 20:54:14'),
(61, 3, 'Naik turun tangga tanpa pegangan', '', '2022-09-18 20:54:24', '2022-09-18 20:54:24'),
(62, 3, 'Berjalan dengan rintangan', '', '2022-09-18 20:54:32', '2022-09-18 20:54:32'),
(63, 3, 'Menendang bola dengan mengayunkan kaki', '', '2022-09-18 20:54:45', '2022-09-18 20:54:45'),
(64, 3, 'Mengayuh sepeda', '', '2022-09-18 20:55:02', '2022-09-18 20:55:02'),
(65, 3, 'Melempar dan menangkap bola yang bertujuan', '', '2022-09-18 20:55:14', '2022-09-18 20:55:14'),
(66, 3, 'Memantulkan dan menangkap bola besar', '', '2022-09-18 20:55:23', '2022-09-18 20:55:23'),
(67, 3, 'Meloncat dengan satu kaki bergantian dengan jeda', '', '2022-09-18 20:55:45', '2022-09-18 20:55:45'),
(68, 3, 'Mengendarai sepeda roda tiga', '', '2022-09-18 20:55:56', '2022-09-18 20:55:56'),
(69, 3, 'Melempar bola di atas kepala', '', '2022-09-18 20:56:04', '2022-09-18 20:56:04'),
(70, 3, 'Berdiri dengan tumit diangkat (jinjit)', '', '2022-09-18 20:56:13', '2022-09-18 20:56:13'),
(71, 4, 'Meniru membuat 4 – 5 menara dari balok ukuran sedang.', '', '2022-09-18 21:04:27', '2022-09-18 21:04:27'),
(72, 4, 'Mengerjakan puzzle sederhana (bentuk geometrik)', '', '2022-09-18 21:04:35', '2022-09-18 21:04:35'),
(73, 4, 'Mengerjakan puzzle 6 keping', '', '2022-09-18 21:04:42', '2022-09-18 21:04:42'),
(74, 4, 'Memegang alat  tulis dengan pincert graps ( 3 jari )', '', '2022-09-18 21:04:51', '2022-09-18 21:04:51'),
(75, 4, 'Meniru membuat garis lurus vertikal dan horizontal', '', '2022-09-18 21:05:04', '2022-09-18 21:05:04'),
(76, 4, 'Meniru membuat lingkaran', '', '2022-09-18 21:05:13', '2022-09-18 21:05:13'),
(77, 4, 'Mewarnai gambar sederhana seperti gambar Apel, Ikan   dsb, tanpa keluar garis', '', '2022-09-18 21:05:21', '2022-09-18 21:05:21'),
(78, 4, 'Meronce ukuran sedang dengan 1 pola', '', '2022-09-18 21:05:57', '2022-09-18 21:05:57'),
(79, 4, 'Meronce ukuran sedang dengan  2 pola bergantian', '', '2022-09-18 21:06:06', '2022-09-18 21:06:06'),
(80, 4, 'Menyelesaikan 1 pola menjahit sederhana (bentuk celana, ataupun bentuk lainnya)', '', '2022-09-18 21:06:39', '2022-09-18 21:06:39'),
(81, 4, 'Melipat kertas/kain menjadi 1, 2,  dan diagonal', '', '2022-09-18 21:06:47', '2022-09-18 21:06:47'),
(82, 4, 'Memegang gunting dengan benar', '', '2022-09-18 21:06:55', '2022-09-18 21:06:55'),
(83, 4, 'Menggunting kertas pola garis lurus', '', '2022-09-18 21:07:02', '2022-09-18 21:07:02'),
(84, 4, 'Menggunting kertas dengan pola (Kotak,Lingkaran, dsb)', '', '2022-09-18 21:07:19', '2022-09-18 21:07:19'),
(85, 4, 'Menempel dengan pola sederhana (bentuk geometrik)', '', '2022-09-18 21:07:28', '2022-09-18 21:07:28'),
(86, 4, 'Meniru membuat tanda x, dan +', '', '2022-09-18 21:07:43', '2022-09-18 21:07:43'),
(87, 4, 'Menuangkan biji-bijian menggunakan sendok dari satu tempat ke tempat lain tanpa tumpah', '', '2022-09-18 21:07:51', '2022-09-18 21:07:51'),
(88, 4, 'Meniru membuat angka (menulis, maupun membentuk angka dari bahan yang tersedia)', '', '2022-09-18 21:07:59', '2022-09-18 21:09:36'),
(89, 4, 'Meniru membuat huruf (menulis, maupun membentuk huruf dari bahan yang ada)', '', '2022-09-18 21:08:09', '2022-09-18 21:09:11'),
(90, 4, 'Membentuk Ular dan telur dari plastisin', '', '2022-09-18 21:08:17', '2022-09-18 21:08:17'),
(91, 5, 'Mengenali diri sendiri di kaca atau gambar/foto', '', '2022-09-18 21:13:53', '2022-09-18 21:13:53'),
(92, 5, 'Bermain sendiri, memulai permainannya sendiri', '', '2022-09-18 21:14:00', '2022-09-18 21:14:00'),
(93, 5, 'Meniru tingkah laku orang dewasa dalam bermain', '', '2022-09-18 21:14:09', '2022-09-18 21:14:09'),
(94, 5, 'Bermain dengan teman sebaya', '', '2022-09-18 21:14:18', '2022-09-18 21:14:18'),
(95, 5, 'Mau beinteraksi dengan orang dewasa', '', '2022-09-18 21:14:26', '2022-09-18 21:14:26'),
(96, 5, 'Dapat dialihkan/ diberi pengertian jika ada keinginan tidak terpenuhi', '', '2022-09-18 21:14:34', '2022-09-18 21:14:34'),
(97, 5, 'Menunjukkan emosi yang wajar jika marah, sedih, senang, takut, cemas.', '', '2022-09-18 21:14:42', '2022-09-18 21:14:42'),
(98, 5, 'Menunjukkan rasa ingin tahu', '', '2022-09-18 21:14:51', '2022-09-18 21:14:51'),
(99, 5, 'Mengamati anak-anak lain, dan mau bergabung sebentar', '', '2022-09-18 21:14:58', '2022-09-18 21:14:58'),
(100, 5, 'Dapat mempertahankan barang miliknya', '', '2022-09-18 21:15:07', '2022-09-18 21:15:07'),
(101, 5, 'Mengikuti kegiatan kelompok yang sederhana (misalnya menyanyi, bertepuk tangan, menari)', '', '2022-09-18 21:15:14', '2022-09-18 21:15:14'),
(102, 5, 'Mengikuti aturan dan rutinitas', '', '2022-09-18 21:15:22', '2022-09-18 21:15:22'),
(103, 5, 'Membagi mainan, bergantian dalam bermain dengan bantuan', '', '2022-09-18 21:15:30', '2022-09-18 21:15:30'),
(104, 5, 'Dapat menunggu giliran atau mengantri dengan benar', '', '2022-09-18 21:15:37', '2022-09-18 21:15:37'),
(105, 5, 'Menggunakan alat dengan benar', '', '2022-09-18 21:15:45', '2022-09-18 21:15:45'),
(106, 5, 'Mengekspresikan perasaan melalui bahasa nonverbal', '', '2022-09-18 21:15:52', '2022-09-18 21:15:52'),
(107, 5, 'Bertanggung jawab terhadap barang pribadi', '', '2022-09-18 21:16:00', '2022-09-18 21:16:00'),
(108, 5, 'Mengetahui identitas jenis kelamin', '', '2022-09-18 21:16:09', '2022-09-18 21:16:09'),
(109, 5, 'Mengucapkan salam', '', '2022-09-18 21:16:18', '2022-09-18 21:16:18'),
(110, 5, 'Mengucapkan terimakasih', '', '2022-09-18 21:16:30', '2022-09-18 21:16:30'),
(111, 6, 'Memegang gelas untuk minum', '', '2022-09-18 21:18:20', '2022-09-18 21:18:20'),
(112, 6, 'Memegang sendok dengan benar', '', '2022-09-18 21:18:28', '2022-09-18 21:18:28'),
(113, 6, 'Menggunakan sendok untuk makan', '', '2022-09-18 21:18:37', '2022-09-18 21:18:37'),
(114, 6, 'Merapikan mainan atas permintaan', '', '2022-09-18 21:18:58', '2022-09-18 21:18:58'),
(115, 6, 'Memberikan piring pada orang lain bila sudah makan', '', '2022-09-18 22:03:33', '2022-09-18 22:03:33'),
(116, 6, 'Duduk dengan sikap yang benar', '', '2022-09-18 22:03:44', '2022-09-18 22:03:44'),
(117, 6, 'Mencuci tangan sendiri', '', '2022-09-18 22:09:12', '2022-09-18 22:09:12'),
(118, 6, 'Membuka pintu yang berkenop', '', '2022-09-18 22:09:25', '2022-09-18 22:09:25'),
(119, 6, 'Membuka bungkus makanan', '', '2022-09-18 22:09:35', '2022-09-18 22:09:35'),
(120, 6, 'Memberi tahu  orang lain bila mau ke toilet', '', '2022-09-18 22:09:45', '2022-09-18 22:09:45'),
(121, 6, 'Membuka kaos kaki dan sepatu dengan sedikit bantuan', '', '2022-09-18 22:10:01', '2022-09-18 22:10:01'),
(122, 6, 'Melepas pakaian dengan sedikit atau tanpa bantuan', '', '2022-09-18 22:10:27', '2022-09-18 22:10:27'),
(123, 6, 'Memakai kaos kaki dan sepatu dengan sedikit atau tanpa bantuan', '', '2022-09-18 22:10:40', '2022-09-18 22:10:40'),
(124, 6, 'Memakai pakaian (tanpa kancing) dengan sedikit atau tanpa bantuan', '', '2022-09-18 22:11:26', '2022-09-18 22:11:26'),
(125, 6, 'Pergi ke toilet sendiri dengan sedikit atau tanpa bantuan', '', '2022-09-18 22:11:48', '2022-09-18 22:11:48'),
(126, 6, 'Menyisir rambut sendiri dengan sedikit atau tanpa bantuan', '', '2022-09-18 22:12:19', '2022-09-18 22:12:19'),
(127, 6, 'Menuangkan air dari teko walau sedikit tumpah', '', '2022-09-18 22:18:53', '2022-09-18 22:18:53'),
(128, 6, 'Membuka resleting jaket', '', '2022-09-18 22:19:06', '2022-09-18 22:19:06'),
(129, 6, 'Memakai pakaian yang berkancing besar dengan sedikit bantuan', '', '2022-09-18 22:19:36', '2022-09-18 22:19:36'),
(130, 6, 'Membuka dan memakai baju, celana dan sepatu tanpa bantuan', '', '2022-09-18 22:19:57', '2022-09-18 22:19:57'),
(131, 7, 'Menjodohkan dan / mengelompok bentuk. Disediakan gambar di bawah dengan nama bentuknya secara acak, pasien diharapkan untuk mencocokan bentuk tersebut sesuai dengan nama bentuknya.', '/image/7a.jpeg', '2022-09-18 22:45:41', '2022-09-18 22:45:41'),
(132, 7, 'Deskripsikan bentuk. Diberikan bentuk seperti gambar di bawah, pasien diharapkan bisa mendeskripsikan ciri-ciri dari bentuk tersebut', '/image/7a.jpeg', '2022-09-18 22:46:37', '2022-09-18 22:46:37'),
(133, 7, 'Perkembangan bahasa. Pasien cepat dalam memahami bahasa baru.', '', '2022-09-18 22:49:58', '2022-09-18 22:49:58'),
(134, 7, 'Memory Auditory. Menyebutkan ulang ucapan (2-3 objek auditory mis: sapu, sapi, dan sapa), Menyebutkan ulang angka (2-3 angka auditory mis: 3, 5, 7 ), Menyebutkan ulang huruf (2-3 huruf auditory mis : P, b, h )', '', '2022-09-18 22:51:05', '2022-09-18 22:51:05'),
(135, 7, 'Memory Visual. Memasang urut 2-3 objek visual ( gambar Palu, baju, bolu ), Menyebutkan urut 2-3 objek visual ( sendok, piring, gelas )', '', '2022-09-18 22:51:33', '2022-09-18 22:51:33'),
(136, 7, 'Menyebutkan lambang-lambang huruf dari A-Z . Urut maju ( A-B-C-D-E-F-G-H---Z), Urut Mundur (Z-Y-X-W-V-U-T—A), dan Secara Acak. Minimal 13 huruf', '', '2022-09-18 22:52:41', '2022-09-18 22:52:41'),
(137, 7, 'Membaca kata dengan pola “ konsonan-Vokal konsonan-Vokal” : . Ba-Ba, Bi-Bi, Bu-Bu dst atau Sa-Pi, Sa-pu, Me-ja, Bo-lu dst. Minimal 3 pola kata', '', '2022-09-18 22:53:42', '2022-09-18 22:53:42'),
(138, 7, 'Membaca Kata dengan pola “ Vokal-Konsonan- Vokal” : .  I- bu , A-ku, dst. Minimal 3 pola kata', '', '2022-09-18 22:54:34', '2022-09-18 22:54:34'),
(139, 8, 'Dapat mengolompokan minimal 2 dari setiap kategori berikut. Warna dasar dan campuran, Bentuk dasar dan kompleks, Ukuran besar x kecil, berat x ringan, panjang x pendek, dll', '', '2022-09-18 22:56:40', '2022-09-18 22:56:40'),
(140, 8, 'Menunjuk minimal 3 barang dengan urutan :  Terbesar  -  Terkecil, Terpanjang  -  Terpendek, Tertinggi  -  Terendah, Terbanyak  -  Tersedikit. (Setiap kategori, minimal 3 barang)', '', '2022-09-18 22:58:42', '2022-09-18 22:58:42'),
(141, 8, 'Menunjuk  isi 1 dari 2 hal yang sama banyak / beda :', '/image/11.jpeg', '2022-09-18 22:59:18', '2022-09-18 22:59:18'),
(142, 8, 'Menunjuk  isi 1 dari 2 hal yang sama banyak / beda :', '/image/12.jpeg', '2022-09-18 22:59:31', '2022-09-18 22:59:31'),
(143, 8, 'Menunjuk  isi 1 dari 2 hal yang sama banyak / beda :', '/image/13.jpeg', '2022-09-18 22:59:43', '2022-09-18 22:59:43'),
(144, 8, 'Menyebutkan isi kongkrit (1,2,3,4,5,6,7,8  dst)', '', '2022-09-18 23:00:50', '2022-09-18 23:00:50'),
(145, 8, 'Menyebutkan isi semi kongkrit ( 3, 6, 9  dst)', '', '2022-09-18 23:01:06', '2022-09-18 23:01:06'),
(146, 8, 'Menyebutkan isi abstrak, mis: Jumlah kaki sapi, jumlah roda becak ?', '', '2022-09-18 23:01:31', '2022-09-18 23:01:31'),
(147, 9, 'Meniru Bentuk :', '/image/1.jpeg', '2022-09-18 23:02:52', '2022-09-23 08:04:15'),
(148, 9, 'Meniru Bentuk :', '/image/2.jpeg', '2022-09-18 23:03:07', '2022-09-23 08:04:38'),
(149, 9, 'Meniru Bentuk :', '/image/3.jpeg', '2022-09-18 23:03:16', '2022-09-23 08:04:59'),
(150, 9, 'Meniru Bentuk :', '/image/4.jpeg', '2022-09-18 23:03:25', '2022-09-18 23:03:25'),
(151, 9, 'Meniru Bentuk :', '/image/5.jpeg', '2022-09-18 23:03:47', '2022-09-18 23:03:47'),
(152, 9, 'Meniru Bentuk :', '/image/6.jpeg', '2022-09-18 23:04:02', '2022-09-18 23:04:02'),
(153, 9, 'Menelusuri titik-titik dengan pola', '/image/7.jpeg', '2022-09-18 23:04:25', '2022-09-18 23:04:25'),
(154, 9, 'Menarik garis diantara dua garis :', '/image/8.jpeg', '2022-09-18 23:04:39', '2022-09-18 23:04:39'),
(155, 9, 'Menelusuri titik-titik di antara dua garis lengkung :', '/image/9.jpeg', '2022-09-18 23:04:56', '2022-09-18 23:04:56'),
(156, 9, 'Menelusuri titik-titik di antara dua garis berkelok-kelok :', '/image/10.jpeg', '2022-09-18 23:05:17', '2022-09-18 23:05:17'),
(157, 9, 'Meniru huruf  A – Z (minimal 13 huruf)', '', '2022-09-18 23:30:13', '2022-09-18 23:30:13'),
(158, 9, 'Menulis Angka   1  -  10 (minimal 5 angka)', '', '2022-09-18 23:30:33', '2022-09-18 23:30:33'),
(159, 9, 'Menulis Nama (minimal 3 nama)', '', '2022-09-18 23:30:56', '2022-09-18 23:30:56');

-- --------------------------------------------------------

--
-- Table structure for table `question_result`
--

CREATE TABLE `question_result` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `result_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `points` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_result`
--

INSERT INTO `question_result` (`id`, `result_id`, `question_id`, `option_id`, `points`, `created_at`, `updated_at`) VALUES
(239, 64, 31, 63, 5, NULL, NULL),
(240, 64, 35, 67, 5, NULL, NULL),
(241, 64, 37, 70, 5, NULL, NULL),
(242, 64, 40, 73, 5, NULL, NULL),
(243, 64, 42, 77, 5, NULL, NULL),
(244, 64, 45, 81, 5, NULL, NULL),
(245, 64, 48, 84, 5, NULL, NULL),
(246, 64, 50, 86, 5, NULL, NULL),
(247, 64, 151, 198, 6, NULL, NULL),
(248, 64, 32, 271, 0, NULL, NULL),
(249, 64, 33, 272, 0, NULL, NULL),
(250, 64, 34, 273, 0, NULL, NULL),
(251, 64, 36, 275, 0, NULL, NULL),
(252, 64, 38, 278, 0, NULL, NULL),
(253, 64, 39, 279, 0, NULL, NULL),
(254, 64, 41, 283, 0, NULL, NULL),
(255, 64, 43, 286, 0, NULL, NULL),
(256, 64, 44, 287, 0, NULL, NULL),
(257, 64, 46, 289, 0, NULL, NULL),
(258, 64, 47, 290, 0, NULL, NULL),
(259, 64, 49, 292, 0, NULL, NULL),
(260, 64, 130, 382, 0, NULL, NULL),
(261, 65, 11, 41, 5, NULL, NULL),
(262, 65, 15, 46, 5, NULL, NULL),
(263, 65, 18, 49, 5, NULL, NULL),
(264, 65, 20, 51, 5, NULL, NULL),
(265, 65, 23, 55, 5, NULL, NULL),
(266, 65, 26, 58, 5, NULL, NULL),
(267, 65, 30, 62, 5, NULL, NULL),
(268, 65, 12, 250, 0, NULL, NULL),
(269, 65, 13, 251, 0, NULL, NULL),
(270, 65, 14, 252, 0, NULL, NULL),
(271, 65, 16, 254, 0, NULL, NULL),
(272, 65, 17, 255, 0, NULL, NULL),
(273, 65, 19, 257, 0, NULL, NULL),
(274, 65, 21, 259, 0, NULL, NULL),
(275, 65, 22, 261, 0, NULL, NULL),
(276, 65, 24, 263, 0, NULL, NULL),
(277, 65, 25, 264, 0, NULL, NULL),
(278, 65, 27, 266, 0, NULL, NULL),
(279, 65, 28, 267, 0, NULL, NULL),
(280, 65, 29, 268, 0, NULL, NULL),
(281, 66, 70, 87, 5, NULL, NULL),
(282, 66, 65, 92, 5, NULL, NULL),
(283, 66, 63, 94, 5, NULL, NULL),
(284, 66, 61, 97, 5, NULL, NULL),
(285, 66, 58, 100, 5, NULL, NULL),
(286, 66, 56, 102, 5, NULL, NULL),
(287, 66, 69, 295, 0, NULL, NULL),
(288, 66, 68, 296, 0, NULL, NULL),
(289, 66, 67, 297, 0, NULL, NULL),
(290, 66, 66, 298, 0, NULL, NULL),
(291, 66, 64, 300, 0, NULL, NULL),
(292, 66, 62, 303, 0, NULL, NULL),
(293, 66, 60, 305, 0, NULL, NULL),
(294, 66, 59, 306, 0, NULL, NULL),
(295, 66, 57, 308, 0, NULL, NULL),
(296, 66, 55, 310, 0, NULL, NULL),
(297, 66, 54, 311, 0, NULL, NULL),
(298, 66, 53, 312, 0, NULL, NULL),
(299, 66, 52, 313, 0, NULL, NULL),
(300, 66, 51, 314, 0, NULL, NULL),
(301, 67, 71, 108, 5, NULL, NULL),
(302, 67, 73, 111, 5, NULL, NULL),
(303, 67, 75, 113, 5, NULL, NULL),
(304, 67, 79, 117, 5, NULL, NULL),
(305, 67, 81, 119, 5, NULL, NULL),
(306, 67, 83, 121, 5, NULL, NULL),
(307, 67, 85, 123, 5, NULL, NULL),
(308, 67, 87, 125, 5, NULL, NULL),
(309, 67, 72, 316, 0, NULL, NULL),
(310, 67, 74, 319, 0, NULL, NULL),
(311, 67, 76, 321, 0, NULL, NULL),
(312, 67, 77, 322, 0, NULL, NULL),
(313, 67, 78, 323, 0, NULL, NULL),
(314, 67, 80, 325, 0, NULL, NULL),
(315, 67, 82, 327, 0, NULL, NULL),
(316, 67, 84, 329, 0, NULL, NULL),
(317, 67, 86, 331, 0, NULL, NULL),
(318, 67, 88, 333, 0, NULL, NULL),
(319, 67, 89, 334, 0, NULL, NULL),
(320, 67, 90, 335, 0, NULL, NULL),
(321, 68, 147, 194, 5, NULL, NULL),
(322, 68, 150, 197, 5, NULL, NULL),
(323, 68, 153, 200, 5, NULL, NULL),
(324, 68, 156, 204, 5, NULL, NULL),
(325, 68, 159, 207, 5, NULL, NULL),
(326, 68, 148, 402, 0, NULL, NULL),
(327, 68, 149, 403, 0, NULL, NULL),
(328, 68, 152, 406, 0, NULL, NULL),
(329, 68, 154, 408, 0, NULL, NULL),
(330, 68, 155, 410, 0, NULL, NULL),
(331, 68, 157, 412, 0, NULL, NULL),
(332, 68, 158, 413, 0, NULL, NULL),
(333, 69, 95, 133, 5, NULL, NULL),
(334, 69, 97, 136, 5, NULL, NULL),
(335, 69, 99, 140, 5, NULL, NULL),
(336, 69, 104, 146, 5, NULL, NULL),
(337, 69, 108, 151, 5, NULL, NULL),
(338, 69, 91, 336, 0, NULL, NULL),
(339, 69, 92, 337, 0, NULL, NULL),
(340, 69, 93, 338, 0, NULL, NULL),
(341, 69, 94, 339, 0, NULL, NULL),
(342, 69, 96, 342, 0, NULL, NULL),
(343, 69, 98, 344, 0, NULL, NULL),
(344, 69, 100, 348, 0, NULL, NULL),
(345, 69, 101, 349, 0, NULL, NULL),
(346, 69, 102, 351, 0, NULL, NULL),
(347, 69, 103, 352, 0, NULL, NULL),
(348, 69, 105, 354, 0, NULL, NULL),
(349, 69, 106, 356, 0, NULL, NULL),
(350, 69, 107, 357, 0, NULL, NULL),
(351, 69, 109, 359, 0, NULL, NULL),
(352, 69, 110, 361, 0, NULL, NULL),
(353, 70, 111, 155, 5, NULL, NULL),
(354, 70, 113, 157, 5, NULL, NULL),
(355, 70, 118, 163, 5, NULL, NULL),
(356, 70, 127, 172, 5, NULL, NULL),
(357, 70, 112, 363, 0, NULL, NULL),
(358, 70, 114, 365, 0, NULL, NULL),
(359, 70, 115, 366, 0, NULL, NULL),
(360, 70, 116, 367, 0, NULL, NULL),
(361, 70, 117, 369, 0, NULL, NULL),
(362, 70, 119, 371, 0, NULL, NULL),
(363, 70, 120, 372, 0, NULL, NULL),
(364, 70, 121, 373, 0, NULL, NULL),
(365, 70, 122, 374, 0, NULL, NULL),
(366, 70, 123, 375, 0, NULL, NULL),
(367, 70, 124, 376, 0, NULL, NULL),
(368, 70, 125, 377, 0, NULL, NULL),
(369, 70, 126, 378, 0, NULL, NULL),
(370, 70, 128, 380, 0, NULL, NULL),
(371, 70, 129, 381, 0, NULL, NULL),
(372, 71, 139, 185, 5, NULL, NULL),
(373, 71, 140, 186, 5, NULL, NULL),
(374, 71, 144, 190, 5, NULL, NULL),
(375, 71, 141, 394, 0, NULL, NULL),
(376, 71, 142, 395, 0, NULL, NULL),
(377, 71, 143, 396, 0, NULL, NULL),
(378, 71, 145, 398, 0, NULL, NULL),
(379, 71, 146, 399, 0, NULL, NULL),
(380, 72, 135, 180, 5, NULL, NULL),
(381, 72, 138, 184, 5, NULL, NULL),
(382, 72, 131, 383, 0, NULL, NULL),
(383, 72, 132, 384, 0, NULL, NULL),
(384, 72, 133, 385, 0, NULL, NULL),
(385, 72, 134, 386, 0, NULL, NULL),
(386, 72, 136, 388, 0, NULL, NULL),
(387, 72, 137, 389, 0, NULL, NULL),
(388, 73, 31, 63, 5, NULL, NULL),
(389, 73, 37, 70, 5, NULL, NULL),
(390, 73, 39, 72, 5, NULL, NULL),
(391, 73, 41, 76, 5, NULL, NULL),
(392, 73, 50, 86, 5, NULL, NULL),
(393, 73, 151, 198, 6, NULL, NULL),
(394, 73, 32, 271, 0, NULL, NULL),
(395, 73, 33, 272, 0, NULL, NULL),
(396, 73, 34, 273, 0, NULL, NULL),
(397, 73, 35, 274, 0, NULL, NULL),
(398, 73, 36, 275, 0, NULL, NULL),
(399, 73, 38, 278, 0, NULL, NULL),
(400, 73, 40, 280, 0, NULL, NULL),
(401, 73, 42, 284, 0, NULL, NULL),
(402, 73, 43, 286, 0, NULL, NULL),
(403, 73, 44, 287, 0, NULL, NULL),
(404, 73, 45, 288, 0, NULL, NULL),
(405, 73, 46, 289, 0, NULL, NULL),
(406, 73, 47, 290, 0, NULL, NULL),
(407, 73, 48, 291, 0, NULL, NULL),
(408, 73, 49, 292, 0, NULL, NULL),
(409, 73, 130, 382, 0, NULL, NULL),
(410, 74, 91, 129, 5, NULL, NULL),
(411, 74, 92, 130, 5, NULL, NULL),
(412, 74, 94, 132, 5, NULL, NULL),
(413, 74, 96, 135, 5, NULL, NULL),
(414, 74, 108, 151, 5, NULL, NULL),
(415, 74, 93, 338, 0, NULL, NULL),
(416, 74, 95, 340, 0, NULL, NULL),
(417, 74, 97, 343, 0, NULL, NULL),
(418, 74, 98, 344, 0, NULL, NULL),
(419, 74, 99, 347, 0, NULL, NULL),
(420, 74, 100, 348, 0, NULL, NULL),
(421, 74, 101, 349, 0, NULL, NULL),
(422, 74, 102, 351, 0, NULL, NULL),
(423, 74, 103, 352, 0, NULL, NULL),
(424, 74, 104, 353, 0, NULL, NULL),
(425, 74, 105, 354, 0, NULL, NULL),
(426, 74, 106, 356, 0, NULL, NULL),
(427, 74, 107, 357, 0, NULL, NULL),
(428, 74, 109, 359, 0, NULL, NULL),
(429, 74, 110, 361, 0, NULL, NULL),
(430, 75, 13, 44, 5, NULL, NULL),
(431, 75, 15, 46, 5, NULL, NULL),
(432, 75, 17, 48, 5, NULL, NULL),
(433, 75, 20, 51, 5, NULL, NULL),
(434, 75, 21, 52, 5, NULL, NULL),
(435, 75, 25, 57, 5, NULL, NULL),
(436, 75, 26, 58, 5, NULL, NULL),
(437, 75, 27, 59, 5, NULL, NULL),
(438, 75, 29, 61, 5, NULL, NULL),
(439, 75, 11, 248, 0, NULL, NULL),
(440, 75, 12, 250, 0, NULL, NULL),
(441, 75, 14, 252, 0, NULL, NULL),
(442, 75, 16, 254, 0, NULL, NULL),
(443, 75, 18, 256, 0, NULL, NULL),
(444, 75, 19, 257, 0, NULL, NULL),
(445, 75, 22, 261, 0, NULL, NULL),
(446, 75, 23, 262, 0, NULL, NULL),
(447, 75, 24, 263, 0, NULL, NULL),
(448, 75, 28, 267, 0, NULL, NULL),
(449, 75, 30, 269, 0, NULL, NULL),
(450, 76, 70, 87, 5, NULL, NULL),
(451, 76, 67, 90, 5, NULL, NULL),
(452, 76, 64, 93, 5, NULL, NULL),
(453, 76, 59, 99, 5, NULL, NULL),
(454, 76, 56, 102, 5, NULL, NULL),
(455, 76, 54, 104, 5, NULL, NULL),
(456, 76, 51, 107, 5, NULL, NULL),
(457, 76, 69, 295, 0, NULL, NULL),
(458, 76, 68, 296, 0, NULL, NULL),
(459, 76, 66, 298, 0, NULL, NULL),
(460, 76, 65, 299, 0, NULL, NULL),
(461, 76, 63, 301, 0, NULL, NULL),
(462, 76, 62, 303, 0, NULL, NULL),
(463, 76, 61, 304, 0, NULL, NULL),
(464, 76, 60, 305, 0, NULL, NULL),
(465, 76, 58, 307, 0, NULL, NULL),
(466, 76, 57, 308, 0, NULL, NULL),
(467, 76, 55, 310, 0, NULL, NULL),
(468, 76, 53, 312, 0, NULL, NULL),
(469, 76, 52, 313, 0, NULL, NULL),
(470, 77, 71, 108, 5, NULL, NULL),
(471, 77, 73, 111, 5, NULL, NULL),
(472, 77, 76, 114, 5, NULL, NULL),
(473, 77, 72, 316, 0, NULL, NULL),
(474, 77, 74, 319, 0, NULL, NULL),
(475, 77, 75, 320, 0, NULL, NULL),
(476, 77, 77, 322, 0, NULL, NULL),
(477, 77, 78, 323, 0, NULL, NULL),
(478, 77, 79, 324, 0, NULL, NULL),
(479, 77, 80, 325, 0, NULL, NULL),
(480, 77, 81, 326, 0, NULL, NULL),
(481, 77, 82, 327, 0, NULL, NULL),
(482, 77, 83, 328, 0, NULL, NULL),
(483, 77, 84, 329, 0, NULL, NULL),
(484, 77, 85, 330, 0, NULL, NULL),
(485, 77, 86, 331, 0, NULL, NULL),
(486, 77, 87, 332, 0, NULL, NULL),
(487, 77, 88, 333, 0, NULL, NULL),
(488, 77, 89, 334, 0, NULL, NULL),
(489, 77, 90, 335, 0, NULL, NULL),
(490, 78, 115, 159, 5, NULL, NULL),
(491, 78, 122, 167, 5, NULL, NULL),
(492, 78, 126, 171, 5, NULL, NULL),
(493, 78, 127, 172, 5, NULL, NULL),
(494, 78, 128, 173, 5, NULL, NULL),
(495, 78, 111, 362, 0, NULL, NULL),
(496, 78, 112, 363, 0, NULL, NULL),
(497, 78, 113, 364, 0, NULL, NULL),
(498, 78, 114, 365, 0, NULL, NULL),
(499, 78, 116, 367, 0, NULL, NULL),
(500, 78, 117, 369, 0, NULL, NULL),
(501, 78, 118, 370, 0, NULL, NULL),
(502, 78, 119, 371, 0, NULL, NULL),
(503, 78, 120, 372, 0, NULL, NULL),
(504, 78, 121, 373, 0, NULL, NULL),
(505, 78, 123, 375, 0, NULL, NULL),
(506, 78, 124, 376, 0, NULL, NULL),
(507, 78, 125, 377, 0, NULL, NULL),
(508, 78, 129, 381, 0, NULL, NULL),
(509, 79, 131, 176, 5, NULL, NULL),
(510, 79, 134, 179, 5, NULL, NULL),
(511, 79, 132, 384, 0, NULL, NULL),
(512, 79, 133, 385, 0, NULL, NULL),
(513, 79, 135, 387, 0, NULL, NULL),
(514, 79, 136, 388, 0, NULL, NULL),
(515, 79, 137, 389, 0, NULL, NULL),
(516, 79, 138, 391, 0, NULL, NULL),
(517, 80, 139, 185, 5, NULL, NULL),
(518, 80, 142, 188, 5, NULL, NULL),
(519, 80, 145, 191, 5, NULL, NULL),
(520, 80, 146, 192, 5, NULL, NULL),
(521, 80, 140, 393, 0, NULL, NULL),
(522, 80, 141, 394, 0, NULL, NULL),
(523, 80, 143, 396, 0, NULL, NULL),
(524, 80, 144, 397, 0, NULL, NULL),
(525, 81, 147, 194, 5, NULL, NULL),
(526, 81, 148, 195, 5, NULL, NULL),
(527, 81, 149, 196, 5, NULL, NULL),
(528, 81, 154, 201, 5, NULL, NULL),
(529, 81, 156, 204, 5, NULL, NULL),
(530, 81, 157, 205, 5, NULL, NULL),
(531, 81, 159, 207, 5, NULL, NULL),
(532, 81, 150, 404, 0, NULL, NULL),
(533, 81, 152, 406, 0, NULL, NULL),
(534, 81, 153, 407, 0, NULL, NULL),
(535, 81, 155, 410, 0, NULL, NULL),
(536, 81, 158, 413, 0, NULL, NULL),
(537, 82, 31, 63, 6, NULL, NULL),
(538, 82, 34, 66, 8, NULL, NULL),
(539, 82, 39, 72, 8, NULL, NULL),
(540, 82, 41, 76, 8, NULL, NULL),
(541, 82, 44, 80, 7, NULL, NULL),
(542, 82, 46, 82, 8, NULL, NULL),
(543, 82, 47, 83, 5, NULL, NULL),
(544, 82, 49, 85, 8, NULL, NULL),
(545, 82, 50, 86, 8, NULL, NULL),
(546, 82, 32, 271, 0, NULL, NULL),
(547, 82, 33, 272, 0, NULL, NULL),
(548, 82, 35, 274, 0, NULL, NULL),
(549, 82, 36, 275, 0, NULL, NULL),
(550, 82, 37, 277, 0, NULL, NULL),
(551, 82, 38, 278, 0, NULL, NULL),
(552, 82, 40, 280, 0, NULL, NULL),
(553, 82, 42, 284, 0, NULL, NULL),
(554, 82, 43, 286, 0, NULL, NULL),
(555, 82, 45, 288, 0, NULL, NULL),
(556, 82, 48, 291, 0, NULL, NULL),
(557, 82, 130, 382, 0, NULL, NULL),
(558, 82, 151, 405, 0, NULL, NULL),
(559, 83, 11, 41, 8, NULL, NULL),
(560, 83, 12, 43, 8, NULL, NULL),
(561, 83, 14, 45, 7, NULL, NULL),
(562, 83, 15, 46, 7, NULL, NULL),
(563, 83, 18, 49, 6, NULL, NULL),
(564, 83, 21, 52, 8, NULL, NULL),
(565, 83, 27, 59, 7, NULL, NULL),
(566, 83, 30, 62, 7, NULL, NULL),
(567, 83, 13, 251, 0, NULL, NULL),
(568, 83, 16, 254, 0, NULL, NULL),
(569, 83, 17, 255, 0, NULL, NULL),
(570, 83, 19, 257, 0, NULL, NULL),
(571, 83, 20, 258, 0, NULL, NULL),
(572, 83, 22, 261, 0, NULL, NULL),
(573, 83, 23, 262, 0, NULL, NULL),
(574, 83, 24, 263, 0, NULL, NULL),
(575, 83, 25, 264, 0, NULL, NULL),
(576, 83, 26, 265, 0, NULL, NULL),
(577, 83, 28, 267, 0, NULL, NULL),
(578, 83, 29, 268, 0, NULL, NULL),
(579, 84, 70, 87, 8, NULL, NULL),
(580, 84, 66, 91, 5, NULL, NULL),
(581, 84, 64, 93, 8, NULL, NULL),
(582, 84, 63, 94, 5, NULL, NULL),
(583, 84, 59, 99, 7, NULL, NULL),
(584, 84, 58, 100, 5, NULL, NULL),
(585, 84, 55, 103, 6, NULL, NULL),
(586, 84, 53, 105, 5, NULL, NULL),
(587, 84, 69, 295, 0, NULL, NULL),
(588, 84, 68, 296, 0, NULL, NULL),
(589, 84, 67, 297, 0, NULL, NULL),
(590, 84, 65, 299, 0, NULL, NULL),
(591, 84, 62, 303, 0, NULL, NULL),
(592, 84, 61, 304, 0, NULL, NULL),
(593, 84, 60, 305, 0, NULL, NULL),
(594, 84, 57, 308, 0, NULL, NULL),
(595, 84, 56, 309, 0, NULL, NULL),
(596, 84, 54, 311, 0, NULL, NULL),
(597, 84, 52, 313, 0, NULL, NULL),
(598, 84, 51, 314, 0, NULL, NULL),
(599, 85, 79, 117, 7, NULL, NULL),
(600, 85, 80, 118, 4, NULL, NULL),
(601, 85, 81, 119, 5, NULL, NULL),
(602, 85, 82, 120, 5, NULL, NULL),
(603, 85, 84, 122, 6, NULL, NULL),
(604, 85, 87, 125, 7, NULL, NULL),
(605, 85, 71, 315, 0, NULL, NULL),
(606, 85, 72, 316, 0, NULL, NULL),
(607, 85, 73, 318, 0, NULL, NULL),
(608, 85, 74, 319, 0, NULL, NULL),
(609, 85, 75, 320, 0, NULL, NULL),
(610, 85, 76, 321, 0, NULL, NULL),
(611, 85, 77, 322, 0, NULL, NULL),
(612, 85, 78, 323, 0, NULL, NULL),
(613, 85, 83, 328, 0, NULL, NULL),
(614, 85, 85, 330, 0, NULL, NULL),
(615, 85, 86, 331, 0, NULL, NULL),
(616, 85, 88, 333, 0, NULL, NULL),
(617, 85, 89, 334, 0, NULL, NULL),
(618, 85, 90, 335, 0, NULL, NULL),
(619, 86, 94, 132, 8, NULL, NULL),
(620, 86, 101, 142, 6, NULL, NULL),
(621, 86, 107, 150, 8, NULL, NULL),
(622, 86, 91, 336, 0, NULL, NULL),
(623, 86, 92, 337, 0, NULL, NULL),
(624, 86, 93, 338, 0, NULL, NULL),
(625, 86, 95, 340, 0, NULL, NULL),
(626, 86, 96, 342, 0, NULL, NULL),
(627, 86, 97, 343, 0, NULL, NULL),
(628, 86, 98, 344, 0, NULL, NULL),
(629, 86, 99, 347, 0, NULL, NULL),
(630, 86, 100, 348, 0, NULL, NULL),
(631, 86, 102, 351, 0, NULL, NULL),
(632, 86, 103, 352, 0, NULL, NULL),
(633, 86, 104, 353, 0, NULL, NULL),
(634, 86, 105, 354, 0, NULL, NULL),
(635, 86, 106, 356, 0, NULL, NULL),
(636, 86, 108, 358, 0, NULL, NULL),
(637, 86, 109, 359, 0, NULL, NULL),
(638, 86, 110, 361, 0, NULL, NULL),
(639, 87, 112, 156, 6, NULL, NULL),
(640, 87, 114, 158, 7, NULL, NULL),
(641, 87, 117, 162, 6, NULL, NULL),
(642, 87, 120, 165, 8, NULL, NULL),
(643, 87, 121, 166, 6, NULL, NULL),
(644, 87, 122, 167, 6, NULL, NULL),
(645, 87, 123, 168, 6, NULL, NULL),
(646, 87, 124, 169, 6, NULL, NULL),
(647, 87, 125, 170, 5, NULL, NULL),
(648, 87, 126, 171, 5, NULL, NULL),
(649, 87, 127, 172, 5, NULL, NULL),
(650, 87, 128, 173, 5, NULL, NULL),
(651, 87, 129, 174, 5, NULL, NULL),
(652, 87, 111, 362, 0, NULL, NULL),
(653, 87, 113, 364, 0, NULL, NULL),
(654, 87, 115, 366, 0, NULL, NULL),
(655, 87, 116, 367, 0, NULL, NULL),
(656, 87, 118, 370, 0, NULL, NULL),
(657, 87, 119, 371, 0, NULL, NULL),
(658, 88, 135, 180, 9, NULL, NULL),
(659, 88, 136, 181, 6, NULL, NULL),
(660, 88, 137, 182, 6, NULL, NULL),
(661, 88, 131, 383, 0, NULL, NULL),
(662, 88, 132, 384, 0, NULL, NULL),
(663, 88, 133, 385, 0, NULL, NULL),
(664, 88, 134, 386, 0, NULL, NULL),
(665, 88, 138, 391, 0, NULL, NULL),
(666, 89, 139, 185, 7, NULL, NULL),
(667, 89, 140, 186, 7, NULL, NULL),
(668, 89, 141, 187, 7, NULL, NULL),
(669, 89, 142, 188, 7, NULL, NULL),
(670, 89, 143, 189, 7, NULL, NULL),
(671, 89, 145, 191, 7, NULL, NULL),
(672, 89, 146, 192, 7, NULL, NULL),
(673, 89, 144, 397, 0, NULL, NULL),
(674, 90, 147, 194, 7, NULL, NULL),
(675, 90, 148, 195, 7, NULL, NULL),
(676, 90, 149, 196, 7, NULL, NULL),
(677, 90, 150, 197, 8, NULL, NULL),
(678, 90, 152, 199, 8, NULL, NULL),
(679, 90, 153, 200, 8, NULL, NULL),
(680, 90, 154, 201, 6, NULL, NULL),
(681, 90, 156, 204, 6, NULL, NULL),
(682, 90, 157, 205, 8, NULL, NULL),
(683, 90, 159, 207, 7, NULL, NULL),
(684, 90, 155, 410, 0, NULL, NULL),
(685, 90, 158, 413, 0, NULL, NULL),
(686, 91, 31, 63, 6, NULL, NULL),
(687, 91, 32, 64, 8, NULL, NULL),
(688, 91, 33, 65, 8, NULL, NULL),
(689, 91, 34, 66, 8, NULL, NULL),
(690, 91, 35, 67, 8, NULL, NULL),
(691, 91, 36, 68, 7, NULL, NULL),
(692, 91, 37, 70, 7, NULL, NULL),
(693, 91, 38, 71, 7, NULL, NULL),
(694, 91, 39, 72, 8, NULL, NULL),
(695, 91, 40, 73, 7, NULL, NULL),
(696, 91, 41, 76, 8, NULL, NULL),
(697, 91, 42, 77, 5, NULL, NULL),
(698, 91, 43, 79, 7, NULL, NULL),
(699, 91, 44, 80, 7, NULL, NULL),
(700, 91, 45, 81, 8, NULL, NULL),
(701, 91, 46, 82, 8, NULL, NULL),
(702, 91, 47, 83, 5, NULL, NULL),
(703, 91, 48, 84, 7, NULL, NULL),
(704, 91, 49, 85, 8, NULL, NULL),
(705, 91, 50, 86, 8, NULL, NULL),
(706, 91, 130, 175, 5, NULL, NULL),
(707, 91, 151, 198, 8, NULL, NULL),
(708, 92, 11, 41, 8, NULL, NULL),
(709, 92, 12, 43, 8, NULL, NULL),
(710, 92, 13, 44, 8, NULL, NULL),
(711, 92, 14, 45, 7, NULL, NULL),
(712, 92, 15, 46, 7, NULL, NULL),
(713, 92, 16, 47, 6, NULL, NULL),
(714, 92, 17, 48, 6, NULL, NULL),
(715, 92, 18, 49, 6, NULL, NULL),
(716, 92, 19, 50, 7, NULL, NULL),
(717, 92, 20, 51, 8, NULL, NULL),
(718, 92, 21, 52, 8, NULL, NULL),
(719, 92, 22, 54, 7, NULL, NULL),
(720, 92, 23, 55, 8, NULL, NULL),
(721, 92, 24, 56, 7, NULL, NULL),
(722, 92, 25, 57, 7, NULL, NULL),
(723, 92, 26, 58, 6, NULL, NULL),
(724, 92, 27, 59, 7, NULL, NULL),
(725, 92, 28, 60, 7, NULL, NULL),
(726, 92, 29, 61, 7, NULL, NULL),
(727, 92, 30, 62, 7, NULL, NULL),
(728, 93, 70, 87, 8, NULL, NULL),
(729, 93, 69, 88, 5, NULL, NULL),
(730, 93, 68, 89, 7, NULL, NULL),
(731, 93, 67, 90, 8, NULL, NULL),
(732, 93, 66, 91, 5, NULL, NULL),
(733, 93, 65, 92, 7, NULL, NULL),
(734, 93, 64, 93, 8, NULL, NULL),
(735, 93, 63, 94, 5, NULL, NULL),
(736, 93, 62, 96, 5, NULL, NULL),
(737, 93, 61, 97, 8, NULL, NULL),
(738, 93, 60, 98, 7, NULL, NULL),
(739, 93, 59, 99, 7, NULL, NULL),
(740, 93, 58, 100, 5, NULL, NULL),
(741, 93, 57, 101, 5, NULL, NULL),
(742, 93, 56, 102, 8, NULL, NULL),
(743, 93, 55, 103, 6, NULL, NULL),
(744, 93, 54, 104, 8, NULL, NULL),
(745, 93, 53, 105, 5, NULL, NULL),
(746, 93, 52, 106, 6, NULL, NULL),
(747, 93, 51, 107, 8, NULL, NULL),
(748, 94, 91, 129, 8, NULL, NULL),
(749, 94, 92, 130, 8, NULL, NULL),
(750, 94, 93, 131, 8, NULL, NULL),
(751, 94, 94, 132, 8, NULL, NULL),
(752, 94, 95, 133, 8, NULL, NULL),
(753, 94, 96, 135, 8, NULL, NULL),
(754, 94, 97, 136, 9, NULL, NULL),
(755, 94, 98, 137, 8, NULL, NULL),
(756, 94, 99, 140, 7, NULL, NULL),
(757, 94, 100, 141, 8, NULL, NULL),
(758, 94, 101, 142, 6, NULL, NULL),
(759, 94, 102, 144, 8, NULL, NULL),
(760, 94, 103, 145, 7, NULL, NULL),
(761, 94, 104, 146, 7, NULL, NULL),
(762, 94, 105, 147, 8, NULL, NULL),
(763, 94, 106, 149, 8, NULL, NULL),
(764, 94, 107, 150, 8, NULL, NULL),
(765, 94, 108, 151, 5, NULL, NULL),
(766, 94, 109, 152, 6, NULL, NULL),
(767, 94, 110, 154, 6, NULL, NULL),
(768, 95, 147, 194, 7, NULL, NULL),
(769, 95, 148, 195, 7, NULL, NULL),
(770, 95, 149, 196, 7, NULL, NULL),
(771, 95, 150, 197, 8, NULL, NULL),
(772, 95, 152, 199, 8, NULL, NULL),
(773, 95, 153, 200, 8, NULL, NULL),
(774, 95, 154, 201, 6, NULL, NULL),
(775, 95, 155, 203, 6, NULL, NULL),
(776, 95, 156, 204, 6, NULL, NULL),
(777, 95, 157, 205, 8, NULL, NULL),
(778, 95, 158, 206, 7, NULL, NULL),
(779, 95, 159, 207, 7, NULL, NULL),
(780, 96, 139, 185, 7, NULL, NULL),
(781, 96, 140, 186, 7, NULL, NULL),
(782, 96, 141, 187, 7, NULL, NULL),
(783, 96, 142, 188, 7, NULL, NULL),
(784, 96, 143, 189, 7, NULL, NULL),
(785, 96, 144, 190, 7, NULL, NULL),
(786, 96, 145, 191, 7, NULL, NULL),
(787, 96, 146, 192, 7, NULL, NULL),
(788, 97, 131, 176, 8, NULL, NULL),
(789, 97, 132, 177, 8, NULL, NULL),
(790, 97, 133, 178, 8, NULL, NULL),
(791, 97, 134, 179, 8, NULL, NULL),
(792, 97, 135, 180, 9, NULL, NULL),
(793, 97, 136, 181, 6, NULL, NULL),
(794, 97, 137, 182, 6, NULL, NULL),
(795, 97, 138, 184, 7, NULL, NULL),
(796, 98, 111, 155, 5, NULL, NULL),
(797, 98, 112, 156, 6, NULL, NULL),
(798, 98, 113, 157, 6, NULL, NULL),
(799, 98, 114, 158, 7, NULL, NULL),
(800, 98, 115, 159, 7, NULL, NULL),
(801, 98, 116, 160, 6, NULL, NULL),
(802, 98, 117, 162, 6, NULL, NULL),
(803, 98, 118, 163, 5, NULL, NULL),
(804, 98, 119, 164, 6, NULL, NULL),
(805, 98, 120, 165, 8, NULL, NULL),
(806, 98, 121, 166, 6, NULL, NULL),
(807, 98, 122, 167, 6, NULL, NULL),
(808, 98, 123, 168, 6, NULL, NULL),
(809, 98, 124, 169, 6, NULL, NULL),
(810, 98, 125, 170, 5, NULL, NULL),
(811, 98, 126, 171, 5, NULL, NULL),
(812, 98, 127, 172, 5, NULL, NULL),
(813, 98, 128, 173, 5, NULL, NULL),
(814, 98, 129, 174, 5, NULL, NULL),
(815, 99, 71, 108, 7, NULL, NULL),
(816, 99, 72, 109, 8, NULL, NULL),
(817, 99, 73, 111, 7, NULL, NULL),
(818, 99, 74, 112, 5, NULL, NULL),
(819, 99, 75, 113, 8, NULL, NULL),
(820, 99, 76, 114, 8, NULL, NULL),
(821, 99, 77, 115, 7, NULL, NULL),
(822, 99, 78, 116, 6, NULL, NULL),
(823, 99, 79, 117, 7, NULL, NULL),
(824, 99, 80, 118, 4, NULL, NULL),
(825, 99, 81, 119, 5, NULL, NULL),
(826, 99, 82, 120, 5, NULL, NULL),
(827, 99, 83, 121, 6, NULL, NULL),
(828, 99, 84, 122, 6, NULL, NULL),
(829, 99, 85, 123, 5, NULL, NULL),
(830, 99, 86, 124, 7, NULL, NULL),
(831, 99, 87, 125, 7, NULL, NULL),
(832, 99, 88, 126, 6, NULL, NULL),
(833, 99, 89, 127, 6, NULL, NULL),
(834, 99, 90, 128, 7, NULL, NULL),
(835, 100, 131, 176, 8, NULL, NULL),
(836, 100, 132, 177, 8, NULL, NULL),
(837, 100, 135, 180, 9, NULL, NULL),
(838, 100, 137, 182, 6, NULL, NULL),
(839, 100, 133, 385, 0, NULL, NULL),
(840, 100, 134, 386, 0, NULL, NULL),
(841, 100, 136, 388, 0, NULL, NULL),
(842, 100, 138, 391, 0, NULL, NULL),
(843, 101, 131, 176, 8, NULL, NULL),
(844, 101, 133, 178, 8, NULL, NULL),
(845, 101, 132, 384, 0, NULL, NULL),
(846, 101, 134, 386, 0, NULL, NULL),
(847, 101, 135, 387, 0, NULL, NULL),
(848, 101, 136, 388, 0, NULL, NULL),
(849, 101, 137, 389, 0, NULL, NULL),
(850, 101, 138, 391, 0, NULL, NULL),
(851, 102, 139, 185, 7, NULL, NULL),
(852, 102, 140, 186, 7, NULL, NULL),
(853, 102, 142, 188, 7, NULL, NULL),
(854, 102, 144, 190, 7, NULL, NULL),
(855, 102, 141, 394, 0, NULL, NULL),
(856, 102, 143, 396, 0, NULL, NULL),
(857, 102, 145, 398, 0, NULL, NULL),
(858, 102, 146, 399, 0, NULL, NULL),
(859, 103, 139, 185, 7, NULL, NULL),
(860, 103, 146, 192, 7, NULL, NULL),
(861, 103, 140, 393, 0, NULL, NULL),
(862, 103, 141, 394, 0, NULL, NULL),
(863, 103, 142, 395, 0, NULL, NULL),
(864, 103, 143, 396, 0, NULL, NULL),
(865, 103, 144, 397, 0, NULL, NULL),
(866, 103, 145, 398, 0, NULL, NULL),
(867, 104, 147, 194, 7, NULL, NULL),
(868, 104, 148, 195, 7, NULL, NULL),
(869, 104, 150, 197, 8, NULL, NULL),
(870, 104, 153, 200, 8, NULL, NULL),
(871, 104, 154, 201, 6, NULL, NULL),
(872, 104, 156, 204, 6, NULL, NULL),
(873, 104, 157, 205, 8, NULL, NULL),
(874, 104, 158, 206, 7, NULL, NULL),
(875, 104, 149, 403, 0, NULL, NULL),
(876, 104, 152, 406, 0, NULL, NULL),
(877, 104, 155, 410, 0, NULL, NULL),
(878, 104, 159, 414, 0, NULL, NULL),
(879, 105, 111, 155, 5, NULL, NULL),
(880, 105, 113, 157, 6, NULL, NULL),
(881, 105, 114, 158, 7, NULL, NULL),
(882, 105, 116, 160, 6, NULL, NULL),
(883, 105, 118, 163, 5, NULL, NULL),
(884, 105, 119, 164, 6, NULL, NULL),
(885, 105, 121, 166, 6, NULL, NULL),
(886, 105, 122, 167, 6, NULL, NULL),
(887, 105, 124, 169, 6, NULL, NULL),
(888, 105, 125, 170, 5, NULL, NULL),
(889, 105, 126, 171, 5, NULL, NULL),
(890, 105, 127, 172, 5, NULL, NULL),
(891, 105, 129, 174, 5, NULL, NULL),
(892, 105, 112, 363, 0, NULL, NULL),
(893, 105, 115, 366, 0, NULL, NULL),
(894, 105, 117, 369, 0, NULL, NULL),
(895, 105, 120, 372, 0, NULL, NULL),
(896, 105, 123, 375, 0, NULL, NULL),
(897, 105, 128, 380, 0, NULL, NULL),
(898, 106, 147, 194, 7, NULL, NULL),
(899, 106, 149, 196, 7, NULL, NULL),
(900, 106, 152, 199, 8, NULL, NULL),
(901, 106, 153, 200, 8, NULL, NULL),
(902, 106, 154, 201, 6, NULL, NULL),
(903, 106, 156, 204, 6, NULL, NULL),
(904, 106, 157, 205, 8, NULL, NULL),
(905, 106, 158, 206, 7, NULL, NULL),
(906, 106, 159, 207, 7, NULL, NULL),
(907, 106, 148, 402, 0, NULL, NULL),
(908, 106, 150, 404, 0, NULL, NULL),
(909, 106, 155, 410, 0, NULL, NULL),
(910, 107, 91, 129, 8, NULL, NULL),
(911, 107, 92, 130, 8, NULL, NULL),
(912, 107, 93, 131, 8, NULL, NULL),
(913, 107, 94, 132, 8, NULL, NULL),
(914, 107, 95, 133, 8, NULL, NULL),
(915, 107, 97, 136, 9, NULL, NULL),
(916, 107, 101, 142, 6, NULL, NULL),
(917, 107, 108, 151, 5, NULL, NULL),
(918, 107, 96, 342, 0, NULL, NULL),
(919, 107, 98, 344, 0, NULL, NULL),
(920, 107, 99, 347, 0, NULL, NULL),
(921, 107, 100, 348, 0, NULL, NULL),
(922, 107, 102, 351, 0, NULL, NULL),
(923, 107, 103, 352, 0, NULL, NULL),
(924, 107, 104, 353, 0, NULL, NULL),
(925, 107, 105, 354, 0, NULL, NULL),
(926, 107, 106, 356, 0, NULL, NULL),
(927, 107, 107, 357, 0, NULL, NULL),
(928, 107, 109, 359, 0, NULL, NULL),
(929, 107, 110, 361, 0, NULL, NULL),
(930, 108, 71, 108, 7, NULL, NULL),
(931, 108, 72, 109, 8, NULL, NULL),
(932, 108, 75, 113, 8, NULL, NULL),
(933, 108, 78, 116, 6, NULL, NULL),
(934, 108, 81, 119, 5, NULL, NULL),
(935, 108, 83, 121, 6, NULL, NULL),
(936, 108, 84, 122, 6, NULL, NULL),
(937, 108, 85, 123, 5, NULL, NULL),
(938, 108, 73, 318, 0, NULL, NULL),
(939, 108, 74, 319, 0, NULL, NULL),
(940, 108, 76, 321, 0, NULL, NULL),
(941, 108, 77, 322, 0, NULL, NULL),
(942, 108, 79, 324, 0, NULL, NULL),
(943, 108, 80, 325, 0, NULL, NULL),
(944, 108, 82, 327, 0, NULL, NULL),
(945, 108, 86, 331, 0, NULL, NULL),
(946, 108, 87, 332, 0, NULL, NULL),
(947, 108, 88, 333, 0, NULL, NULL),
(948, 108, 89, 334, 0, NULL, NULL),
(949, 108, 90, 335, 0, NULL, NULL),
(950, 109, 31, 63, 6, NULL, NULL),
(951, 109, 35, 67, 8, NULL, NULL),
(952, 109, 38, 71, 7, NULL, NULL),
(953, 109, 40, 73, 7, NULL, NULL),
(954, 109, 42, 77, 5, NULL, NULL),
(955, 109, 44, 80, 7, NULL, NULL),
(956, 109, 45, 81, 8, NULL, NULL),
(957, 109, 47, 83, 5, NULL, NULL),
(958, 109, 48, 84, 7, NULL, NULL),
(959, 109, 50, 86, 8, NULL, NULL),
(960, 109, 130, 175, 5, NULL, NULL),
(961, 109, 32, 271, 0, NULL, NULL),
(962, 109, 33, 272, 0, NULL, NULL),
(963, 109, 34, 273, 0, NULL, NULL),
(964, 109, 36, 275, 0, NULL, NULL),
(965, 109, 37, 277, 0, NULL, NULL),
(966, 109, 39, 279, 0, NULL, NULL),
(967, 109, 41, 283, 0, NULL, NULL),
(968, 109, 43, 286, 0, NULL, NULL),
(969, 109, 46, 289, 0, NULL, NULL),
(970, 109, 49, 292, 0, NULL, NULL),
(971, 109, 151, 405, 0, NULL, NULL),
(972, 110, 69, 88, 5, NULL, NULL),
(973, 110, 65, 92, 7, NULL, NULL),
(974, 110, 63, 94, 5, NULL, NULL),
(975, 110, 61, 97, 8, NULL, NULL),
(976, 110, 59, 99, 7, NULL, NULL),
(977, 110, 58, 100, 5, NULL, NULL),
(978, 110, 56, 102, 8, NULL, NULL),
(979, 110, 52, 106, 6, NULL, NULL),
(980, 110, 51, 107, 8, NULL, NULL),
(981, 110, 70, 294, 0, NULL, NULL),
(982, 110, 68, 296, 0, NULL, NULL),
(983, 110, 67, 297, 0, NULL, NULL),
(984, 110, 66, 298, 0, NULL, NULL),
(985, 110, 64, 300, 0, NULL, NULL),
(986, 110, 62, 303, 0, NULL, NULL),
(987, 110, 60, 305, 0, NULL, NULL),
(988, 110, 57, 308, 0, NULL, NULL),
(989, 110, 55, 310, 0, NULL, NULL),
(990, 110, 54, 311, 0, NULL, NULL),
(991, 110, 53, 312, 0, NULL, NULL),
(992, 111, 11, 41, 8, NULL, NULL),
(993, 111, 14, 45, 7, NULL, NULL),
(994, 111, 16, 47, 6, NULL, NULL),
(995, 111, 18, 49, 6, NULL, NULL),
(996, 111, 23, 55, 8, NULL, NULL),
(997, 111, 25, 57, 7, NULL, NULL),
(998, 111, 26, 58, 6, NULL, NULL),
(999, 111, 28, 60, 7, NULL, NULL),
(1000, 111, 12, 250, 0, NULL, NULL),
(1001, 111, 13, 251, 0, NULL, NULL),
(1002, 111, 15, 253, 0, NULL, NULL),
(1003, 111, 17, 255, 0, NULL, NULL),
(1004, 111, 19, 257, 0, NULL, NULL),
(1005, 111, 20, 258, 0, NULL, NULL),
(1006, 111, 21, 259, 0, NULL, NULL),
(1007, 111, 22, 261, 0, NULL, NULL),
(1008, 111, 24, 263, 0, NULL, NULL),
(1009, 111, 27, 266, 0, NULL, NULL),
(1010, 111, 29, 268, 0, NULL, NULL),
(1011, 111, 30, 269, 0, NULL, NULL),
(1012, 112, 147, 194, 7, NULL, NULL),
(1013, 112, 148, 195, 7, NULL, NULL),
(1014, 112, 149, 196, 7, NULL, NULL),
(1015, 112, 150, 197, 8, NULL, NULL),
(1016, 112, 151, 198, 8, NULL, NULL),
(1017, 112, 152, 199, 8, NULL, NULL),
(1018, 112, 153, 200, 8, NULL, NULL),
(1019, 112, 154, 201, 6, NULL, NULL),
(1020, 112, 155, 203, 6, NULL, NULL),
(1021, 112, 156, 204, 6, NULL, NULL),
(1022, 112, 157, 205, 8, NULL, NULL),
(1023, 112, 158, 413, 0, NULL, NULL),
(1024, 112, 159, 414, 0, NULL, NULL),
(1025, 113, 139, 185, 7, NULL, NULL),
(1026, 113, 140, 186, 7, NULL, NULL),
(1027, 113, 141, 187, 7, NULL, NULL),
(1028, 113, 142, 188, 7, NULL, NULL),
(1029, 113, 143, 189, 7, NULL, NULL),
(1030, 113, 144, 190, 7, NULL, NULL),
(1031, 113, 146, 192, 7, NULL, NULL),
(1032, 113, 145, 398, 0, NULL, NULL),
(1033, 114, 131, 176, 8, NULL, NULL),
(1034, 114, 132, 177, 8, NULL, NULL),
(1035, 114, 133, 178, 8, NULL, NULL),
(1036, 114, 134, 179, 8, NULL, NULL),
(1037, 114, 137, 182, 6, NULL, NULL),
(1038, 114, 138, 184, 7, NULL, NULL),
(1039, 114, 135, 387, 0, NULL, NULL),
(1040, 114, 136, 388, 0, NULL, NULL),
(1041, 115, 31, 63, 6, NULL, NULL),
(1042, 115, 36, 68, 7, NULL, NULL),
(1043, 115, 37, 70, 7, NULL, NULL),
(1044, 115, 39, 72, 8, NULL, NULL),
(1045, 115, 40, 73, 7, NULL, NULL),
(1046, 115, 42, 77, 5, NULL, NULL),
(1047, 115, 43, 79, 7, NULL, NULL),
(1048, 115, 44, 80, 7, NULL, NULL),
(1049, 115, 48, 84, 7, NULL, NULL),
(1050, 115, 49, 85, 8, NULL, NULL),
(1051, 115, 32, 271, 0, NULL, NULL),
(1052, 115, 33, 272, 0, NULL, NULL),
(1053, 115, 34, 273, 0, NULL, NULL),
(1054, 115, 35, 274, 0, NULL, NULL),
(1055, 115, 38, 278, 0, NULL, NULL),
(1056, 115, 41, 283, 0, NULL, NULL),
(1057, 115, 45, 288, 0, NULL, NULL),
(1058, 115, 46, 289, 0, NULL, NULL),
(1059, 115, 47, 290, 0, NULL, NULL),
(1060, 115, 50, 293, 0, NULL, NULL),
(1061, 116, 111, 155, 5, NULL, NULL),
(1062, 116, 112, 156, 6, NULL, NULL),
(1063, 116, 114, 158, 7, NULL, NULL),
(1064, 116, 116, 160, 6, NULL, NULL),
(1065, 116, 118, 163, 5, NULL, NULL),
(1066, 116, 120, 165, 8, NULL, NULL),
(1067, 116, 121, 166, 6, NULL, NULL),
(1068, 116, 123, 168, 6, NULL, NULL),
(1069, 116, 125, 170, 5, NULL, NULL),
(1070, 116, 129, 174, 5, NULL, NULL),
(1071, 116, 113, 364, 0, NULL, NULL),
(1072, 116, 115, 366, 0, NULL, NULL),
(1073, 116, 117, 369, 0, NULL, NULL),
(1074, 116, 119, 371, 0, NULL, NULL),
(1075, 116, 122, 374, 0, NULL, NULL),
(1076, 116, 124, 376, 0, NULL, NULL),
(1077, 116, 126, 378, 0, NULL, NULL),
(1078, 116, 127, 379, 0, NULL, NULL),
(1079, 116, 128, 380, 0, NULL, NULL),
(1080, 116, 130, 382, 0, NULL, NULL),
(1081, 117, 91, 129, 8, NULL, NULL),
(1082, 117, 92, 130, 8, NULL, NULL),
(1083, 117, 93, 131, 8, NULL, NULL),
(1084, 117, 95, 133, 8, NULL, NULL),
(1085, 117, 104, 146, 7, NULL, NULL),
(1086, 117, 106, 149, 8, NULL, NULL),
(1087, 117, 108, 151, 5, NULL, NULL),
(1088, 117, 110, 154, 6, NULL, NULL),
(1089, 117, 94, 339, 0, NULL, NULL),
(1090, 117, 96, 342, 0, NULL, NULL),
(1091, 117, 97, 343, 0, NULL, NULL),
(1092, 117, 98, 344, 0, NULL, NULL),
(1093, 117, 99, 347, 0, NULL, NULL),
(1094, 117, 100, 348, 0, NULL, NULL),
(1095, 117, 101, 349, 0, NULL, NULL),
(1096, 117, 102, 351, 0, NULL, NULL),
(1097, 117, 103, 352, 0, NULL, NULL),
(1098, 117, 105, 354, 0, NULL, NULL),
(1099, 117, 107, 357, 0, NULL, NULL),
(1100, 117, 109, 359, 0, NULL, NULL),
(1101, 118, 71, 108, 7, NULL, NULL),
(1102, 118, 73, 111, 7, NULL, NULL),
(1103, 118, 80, 118, 4, NULL, NULL),
(1104, 118, 72, 316, 0, NULL, NULL),
(1105, 118, 74, 319, 0, NULL, NULL),
(1106, 118, 75, 320, 0, NULL, NULL),
(1107, 118, 76, 321, 0, NULL, NULL),
(1108, 118, 77, 322, 0, NULL, NULL),
(1109, 118, 78, 323, 0, NULL, NULL),
(1110, 118, 79, 324, 0, NULL, NULL),
(1111, 118, 81, 326, 0, NULL, NULL),
(1112, 118, 82, 327, 0, NULL, NULL),
(1113, 118, 83, 328, 0, NULL, NULL),
(1114, 118, 84, 329, 0, NULL, NULL),
(1115, 118, 85, 330, 0, NULL, NULL),
(1116, 118, 86, 331, 0, NULL, NULL),
(1117, 118, 87, 332, 0, NULL, NULL),
(1118, 118, 88, 333, 0, NULL, NULL),
(1119, 118, 89, 334, 0, NULL, NULL),
(1120, 118, 90, 335, 0, NULL, NULL),
(1121, 119, 67, 90, 8, NULL, NULL),
(1122, 119, 63, 94, 5, NULL, NULL),
(1123, 119, 62, 96, 5, NULL, NULL),
(1124, 119, 57, 101, 5, NULL, NULL),
(1125, 119, 55, 103, 6, NULL, NULL),
(1126, 119, 54, 104, 8, NULL, NULL),
(1127, 119, 52, 106, 6, NULL, NULL),
(1128, 119, 51, 107, 8, NULL, NULL),
(1129, 119, 70, 294, 0, NULL, NULL),
(1130, 119, 69, 295, 0, NULL, NULL),
(1131, 119, 68, 296, 0, NULL, NULL),
(1132, 119, 66, 298, 0, NULL, NULL),
(1133, 119, 65, 299, 0, NULL, NULL),
(1134, 119, 64, 300, 0, NULL, NULL),
(1135, 119, 61, 304, 0, NULL, NULL),
(1136, 119, 60, 305, 0, NULL, NULL),
(1137, 119, 59, 306, 0, NULL, NULL),
(1138, 119, 58, 307, 0, NULL, NULL),
(1139, 119, 56, 309, 0, NULL, NULL),
(1140, 119, 53, 312, 0, NULL, NULL),
(1141, 120, 11, 41, 8, NULL, NULL),
(1142, 120, 23, 55, 8, NULL, NULL),
(1143, 120, 26, 58, 6, NULL, NULL),
(1144, 120, 27, 59, 7, NULL, NULL),
(1145, 120, 28, 60, 7, NULL, NULL),
(1146, 120, 29, 61, 7, NULL, NULL),
(1147, 120, 30, 62, 7, NULL, NULL),
(1148, 120, 12, 250, 0, NULL, NULL),
(1149, 120, 13, 251, 0, NULL, NULL),
(1150, 120, 14, 252, 0, NULL, NULL),
(1151, 120, 15, 253, 0, NULL, NULL),
(1152, 120, 16, 254, 0, NULL, NULL),
(1153, 120, 17, 255, 0, NULL, NULL),
(1154, 120, 18, 256, 0, NULL, NULL),
(1155, 120, 19, 257, 0, NULL, NULL),
(1156, 120, 20, 258, 0, NULL, NULL),
(1157, 120, 21, 259, 0, NULL, NULL),
(1158, 120, 22, 261, 0, NULL, NULL),
(1159, 120, 24, 263, 0, NULL, NULL),
(1160, 120, 25, 264, 0, NULL, NULL),
(1161, 121, 31, 63, 6, NULL, NULL),
(1162, 121, 32, 64, 8, NULL, NULL),
(1163, 121, 34, 66, 8, NULL, NULL),
(1164, 121, 35, 67, 8, NULL, NULL),
(1165, 121, 37, 70, 7, NULL, NULL),
(1166, 121, 40, 73, 7, NULL, NULL),
(1167, 121, 43, 79, 7, NULL, NULL),
(1168, 121, 45, 81, 8, NULL, NULL),
(1169, 121, 46, 82, 8, NULL, NULL),
(1170, 121, 48, 84, 7, NULL, NULL),
(1171, 121, 50, 86, 8, NULL, NULL),
(1172, 121, 33, 272, 0, NULL, NULL),
(1173, 121, 36, 275, 0, NULL, NULL),
(1174, 121, 38, 278, 0, NULL, NULL),
(1175, 121, 39, 279, 0, NULL, NULL),
(1176, 121, 41, 283, 0, NULL, NULL),
(1177, 121, 42, 284, 0, NULL, NULL),
(1178, 121, 44, 287, 0, NULL, NULL),
(1179, 121, 47, 290, 0, NULL, NULL),
(1180, 121, 49, 292, 0, NULL, NULL),
(1181, 122, 11, 41, 8, NULL, NULL),
(1182, 122, 16, 47, 6, NULL, NULL),
(1183, 122, 18, 49, 6, NULL, NULL),
(1184, 122, 20, 51, 8, NULL, NULL),
(1185, 122, 23, 55, 8, NULL, NULL),
(1186, 122, 29, 61, 7, NULL, NULL),
(1187, 122, 12, 250, 0, NULL, NULL),
(1188, 122, 13, 251, 0, NULL, NULL),
(1189, 122, 14, 252, 0, NULL, NULL),
(1190, 122, 15, 253, 0, NULL, NULL),
(1191, 122, 17, 255, 0, NULL, NULL),
(1192, 122, 19, 257, 0, NULL, NULL),
(1193, 122, 21, 259, 0, NULL, NULL),
(1194, 122, 22, 261, 0, NULL, NULL),
(1195, 122, 24, 263, 0, NULL, NULL),
(1196, 122, 25, 264, 0, NULL, NULL),
(1197, 122, 26, 265, 0, NULL, NULL),
(1198, 122, 27, 266, 0, NULL, NULL),
(1199, 122, 28, 267, 0, NULL, NULL),
(1200, 122, 30, 269, 0, NULL, NULL),
(1201, 123, 70, 87, 8, NULL, NULL),
(1202, 123, 69, 88, 5, NULL, NULL),
(1203, 123, 68, 89, 7, NULL, NULL),
(1204, 123, 66, 91, 5, NULL, NULL),
(1205, 123, 64, 93, 8, NULL, NULL),
(1206, 123, 63, 94, 5, NULL, NULL),
(1207, 123, 61, 97, 8, NULL, NULL),
(1208, 123, 59, 99, 7, NULL, NULL),
(1209, 123, 57, 101, 5, NULL, NULL),
(1210, 123, 55, 103, 6, NULL, NULL),
(1211, 123, 54, 104, 8, NULL, NULL),
(1212, 123, 52, 106, 6, NULL, NULL),
(1213, 123, 51, 107, 8, NULL, NULL),
(1214, 123, 67, 297, 0, NULL, NULL),
(1215, 123, 65, 299, 0, NULL, NULL),
(1216, 123, 62, 303, 0, NULL, NULL),
(1217, 123, 60, 305, 0, NULL, NULL),
(1218, 123, 58, 307, 0, NULL, NULL),
(1219, 123, 56, 309, 0, NULL, NULL),
(1220, 123, 53, 312, 0, NULL, NULL),
(1221, 124, 71, 108, 7, NULL, NULL),
(1222, 124, 72, 109, 8, NULL, NULL),
(1223, 124, 73, 111, 7, NULL, NULL),
(1224, 124, 74, 112, 5, NULL, NULL),
(1225, 124, 78, 116, 6, NULL, NULL),
(1226, 124, 80, 118, 4, NULL, NULL),
(1227, 124, 83, 121, 6, NULL, NULL),
(1228, 124, 84, 122, 6, NULL, NULL),
(1229, 124, 85, 123, 5, NULL, NULL),
(1230, 124, 86, 124, 7, NULL, NULL),
(1231, 124, 89, 127, 6, NULL, NULL),
(1232, 124, 90, 128, 7, NULL, NULL),
(1233, 124, 75, 320, 0, NULL, NULL),
(1234, 124, 76, 321, 0, NULL, NULL),
(1235, 124, 77, 322, 0, NULL, NULL),
(1236, 124, 79, 324, 0, NULL, NULL),
(1237, 124, 81, 326, 0, NULL, NULL),
(1238, 124, 82, 327, 0, NULL, NULL),
(1239, 124, 87, 332, 0, NULL, NULL),
(1240, 124, 88, 333, 0, NULL, NULL),
(1241, 125, 91, 129, 8, NULL, NULL),
(1242, 125, 93, 131, 8, NULL, NULL),
(1243, 125, 94, 132, 8, NULL, NULL),
(1244, 125, 95, 133, 8, NULL, NULL),
(1245, 125, 97, 136, 9, NULL, NULL),
(1246, 125, 98, 137, 8, NULL, NULL),
(1247, 125, 101, 142, 6, NULL, NULL),
(1248, 125, 102, 144, 8, NULL, NULL),
(1249, 125, 103, 145, 7, NULL, NULL),
(1250, 125, 104, 146, 7, NULL, NULL),
(1251, 125, 106, 149, 8, NULL, NULL),
(1252, 125, 107, 150, 8, NULL, NULL),
(1253, 125, 109, 152, 6, NULL, NULL),
(1254, 125, 110, 154, 6, NULL, NULL),
(1255, 125, 92, 337, 0, NULL, NULL),
(1256, 125, 96, 342, 0, NULL, NULL),
(1257, 125, 99, 347, 0, NULL, NULL),
(1258, 125, 100, 348, 0, NULL, NULL),
(1259, 125, 105, 354, 0, NULL, NULL),
(1260, 125, 108, 358, 0, NULL, NULL),
(1261, 126, 111, 155, 5, NULL, NULL),
(1262, 126, 112, 156, 6, NULL, NULL),
(1263, 126, 113, 157, 6, NULL, NULL),
(1264, 126, 116, 160, 6, NULL, NULL),
(1265, 126, 122, 167, 6, NULL, NULL),
(1266, 126, 123, 168, 6, NULL, NULL),
(1267, 126, 124, 169, 6, NULL, NULL),
(1268, 126, 125, 170, 5, NULL, NULL),
(1269, 126, 126, 171, 5, NULL, NULL),
(1270, 126, 127, 172, 5, NULL, NULL),
(1271, 126, 130, 175, 5, NULL, NULL),
(1272, 126, 114, 365, 0, NULL, NULL),
(1273, 126, 115, 366, 0, NULL, NULL),
(1274, 126, 117, 369, 0, NULL, NULL),
(1275, 126, 118, 370, 0, NULL, NULL),
(1276, 126, 119, 371, 0, NULL, NULL),
(1277, 126, 120, 372, 0, NULL, NULL),
(1278, 126, 121, 373, 0, NULL, NULL),
(1279, 126, 128, 380, 0, NULL, NULL),
(1280, 126, 129, 381, 0, NULL, NULL),
(1281, 127, 131, 176, 8, NULL, NULL),
(1282, 127, 132, 177, 8, NULL, NULL),
(1283, 127, 133, 178, 8, NULL, NULL),
(1284, 127, 134, 179, 8, NULL, NULL),
(1285, 127, 135, 180, 9, NULL, NULL),
(1286, 127, 137, 182, 6, NULL, NULL),
(1287, 127, 136, 388, 0, NULL, NULL),
(1288, 127, 138, 391, 0, NULL, NULL),
(1289, 128, 139, 185, 7, NULL, NULL),
(1290, 128, 141, 187, 7, NULL, NULL),
(1291, 128, 142, 188, 7, NULL, NULL),
(1292, 128, 143, 189, 7, NULL, NULL),
(1293, 128, 144, 190, 7, NULL, NULL),
(1294, 128, 145, 191, 7, NULL, NULL),
(1295, 128, 146, 192, 7, NULL, NULL),
(1296, 128, 140, 393, 0, NULL, NULL),
(1297, 129, 147, 194, 7, NULL, NULL),
(1298, 129, 150, 197, 8, NULL, NULL),
(1299, 129, 153, 200, 8, NULL, NULL),
(1300, 129, 154, 201, 6, NULL, NULL),
(1301, 129, 155, 203, 6, NULL, NULL),
(1302, 129, 156, 204, 6, NULL, NULL),
(1303, 129, 157, 205, 8, NULL, NULL),
(1304, 129, 158, 206, 7, NULL, NULL),
(1305, 129, 159, 207, 7, NULL, NULL),
(1306, 129, 148, 402, 0, NULL, NULL),
(1307, 129, 149, 403, 0, NULL, NULL),
(1308, 129, 151, 405, 0, NULL, NULL),
(1309, 129, 152, 406, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_points` float NOT NULL,
  `hasil_survei` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_survei` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `user_id`, `total_points`, `hasil_survei`, `jenis_survei`, `created_at`, `updated_at`) VALUES
(64, 10, 46, 'B', 1, '2022-09-22 01:12:35', '2022-09-22 01:12:35'),
(65, 10, 35, 'B', 2, '2022-09-22 01:12:43', '2022-09-22 01:12:43'),
(66, 10, 30, 'B', 3, '2022-09-22 01:12:51', '2022-09-22 01:12:51'),
(67, 10, 40, 'B', 4, '2022-09-22 01:13:04', '2022-09-22 01:13:04'),
(68, 10, 25, 'A', 9, '2022-09-22 01:13:10', '2022-09-22 01:13:10'),
(69, 10, 25, 'A', 5, '2022-09-22 01:13:18', '2022-09-22 01:13:18'),
(70, 10, 20, 'A', 6, '2022-09-22 01:13:27', '2022-09-22 01:13:27'),
(71, 10, 15, 'A', 8, '2022-09-22 01:13:45', '2022-09-22 01:13:45'),
(72, 10, 10, 'A', 7, '2022-09-22 01:13:46', '2022-09-22 01:13:46'),
(73, 11, 31, 'B', 1, '2022-09-22 02:35:04', '2022-09-22 02:35:04'),
(74, 11, 25, 'A', 5, '2022-09-22 02:35:17', '2022-09-22 02:35:17'),
(75, 11, 45, 'B', 2, '2022-09-23 02:46:42', '2022-09-23 02:46:42'),
(76, 11, 35, 'B', 3, '2022-09-23 02:47:00', '2022-09-23 02:47:00'),
(77, 11, 15, 'A', 4, '2022-09-23 02:47:17', '2022-09-23 02:47:17'),
(78, 11, 25, 'A', 6, '2022-09-23 02:47:57', '2022-09-23 02:47:57'),
(79, 11, 10, 'A', 7, '2022-09-23 02:48:11', '2022-09-23 02:48:11'),
(80, 11, 20, 'A', 8, '2022-09-23 02:48:37', '2022-09-23 02:48:37'),
(81, 11, 35, 'B', 9, '2022-09-23 02:49:03', '2022-09-23 02:49:03'),
(82, 16, 63.2, 'C', 1, '2022-09-23 06:26:57', '2022-09-23 06:26:57'),
(83, 16, 57.8, 'B', 2, '2022-09-23 06:27:08', '2022-09-23 06:27:08'),
(84, 16, 49.6, 'B', 3, '2022-09-23 06:27:27', '2022-09-23 06:27:27'),
(85, 16, 33.5, 'B', 4, '2022-09-23 06:27:37', '2022-09-23 06:27:37'),
(86, 16, 21.3, 'A', 5, '2022-09-23 06:27:46', '2022-09-23 06:27:46'),
(87, 16, 76.2, 'C', 6, '2022-09-23 06:27:59', '2022-09-23 06:27:59'),
(88, 16, 21.5, 'A', 7, '2022-09-23 06:28:06', '2022-09-23 06:28:06'),
(89, 16, 50.7, 'B', 8, '2022-09-23 06:28:15', '2022-09-23 06:28:15'),
(90, 16, 70.6, 'C', 9, '2022-09-23 06:28:26', '2022-09-23 06:28:26'),
(91, 17, 153.9, 'D', 1, '2022-09-23 06:30:00', '2022-09-23 06:30:00'),
(92, 17, 141.6, 'D', 2, '2022-09-23 06:30:19', '2022-09-23 06:30:19'),
(93, 17, 130.3, 'D', 3, '2022-09-23 06:30:34', '2022-09-23 06:30:34'),
(94, 17, 146.7, 'D', 5, '2022-09-23 06:30:54', '2022-09-23 06:30:54'),
(95, 17, 84.2, 'D', 9, '2022-09-23 06:31:39', '2022-09-23 06:31:39'),
(96, 17, 58.1, 'B', 8, '2022-09-23 06:31:59', '2022-09-23 06:31:59'),
(97, 17, 60.5, 'C', 7, '2022-09-23 06:32:07', '2022-09-23 06:32:07'),
(98, 17, 110.7, 'D', 6, '2022-09-23 06:32:24', '2022-09-23 06:32:24'),
(99, 17, 126.1, 'D', 4, '2022-09-23 06:32:41', '2022-09-23 06:32:41'),
(100, 18, 31.4, 'B', 7, '2022-09-23 06:44:27', '2022-09-23 06:44:27'),
(101, 18, 16.2, 'A', 7, '2022-09-23 06:44:32', '2022-09-23 06:44:32'),
(102, 18, 29.3, 'A', 8, '2022-09-23 06:44:34', '2022-09-23 06:44:34'),
(103, 18, 14.7, 'A', 8, '2022-09-23 06:44:44', '2022-09-23 06:44:44'),
(104, 18, 55.9, 'B', 9, '2022-09-23 06:44:45', '2022-09-23 06:44:45'),
(105, 18, 72.9, 'C', 6, '2022-09-23 06:44:58', '2022-09-23 06:44:58'),
(106, 18, 63.3, 'C', 9, '2022-09-23 06:45:02', '2022-09-23 06:45:02'),
(107, 18, 58.7, 'B', 5, '2022-09-23 06:45:07', '2022-09-23 06:45:07'),
(108, 18, 49.9, 'B', 4, '2022-09-23 06:45:22', '2022-09-23 06:45:22'),
(109, 18, 71.4, 'C', 1, '2022-09-23 06:45:27', '2022-09-23 06:45:27'),
(110, 18, 58.3, 'B', 3, '2022-09-23 06:45:41', '2022-09-23 06:45:41'),
(111, 18, 55.5, 'B', 2, '2022-09-23 06:45:46', '2022-09-23 06:45:46'),
(112, 19, 77.7, 'Berat', 9, '2022-09-23 08:35:17', '2022-09-23 08:35:17'),
(113, 19, 51, 'Berat', 8, '2022-09-23 08:35:25', '2022-09-23 08:35:25'),
(114, 19, 45.3, 'Berat', 7, '2022-09-23 08:35:33', '2022-09-23 08:35:33'),
(115, 19, 67.3, 'Sedang', 1, '2022-09-23 08:35:37', '2022-09-23 08:35:37'),
(116, 19, 60.1, 'Sedang', 6, '2022-09-23 08:35:42', '2022-09-23 08:35:42'),
(117, 19, 57.8, 'Sedang', 5, '2022-09-23 08:36:05', '2022-09-23 08:36:05'),
(118, 19, 18.7, 'Ringan', 4, '2022-09-23 08:36:19', '2022-09-23 08:36:19'),
(119, 19, 50.9, 'Sedang', 3, '2022-09-23 08:36:35', '2022-09-23 08:36:35'),
(120, 19, 49.6, 'Sedang', 2, '2022-09-23 08:36:41', '2022-09-23 08:36:41'),
(121, 20, 79.1, 'Sedang', 1, '2022-09-23 08:59:17', '2022-09-23 08:59:17'),
(122, 20, 42.5, 'Ringan', 2, '2022-09-23 08:59:28', '2022-09-23 08:59:28'),
(123, 20, 86.2, 'Sedang', 3, '2022-09-23 08:59:40', '2022-09-23 08:59:40'),
(124, 20, 74.7, 'Sedang', 4, '2022-09-23 08:59:54', '2022-09-23 08:59:54'),
(125, 20, 102.8, 'Berat', 5, '2022-09-23 09:00:09', '2022-09-23 09:00:09'),
(126, 20, 60.2, 'Sedang', 6, '2022-09-23 09:00:21', '2022-09-23 09:00:21'),
(127, 20, 47.3, 'Berat', 7, '2022-09-23 09:00:28', '2022-09-23 09:00:28'),
(128, 20, 51, 'Berat', 8, '2022-09-23 09:00:37', '2022-09-23 09:00:37'),
(129, 20, 62.5, 'Berat', 9, '2022-09-23 09:00:51', '2022-09-23 09:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 2, 3, NULL, NULL),
(4, 2, 4, NULL, NULL),
(5, 2, 5, NULL, NULL),
(6, 2, 6, NULL, NULL),
(7, 2, 7, NULL, NULL),
(8, 2, 8, NULL, NULL);

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
(1, 'admin', 'admin@example.com', NULL, '$2y$10$SeA6a/pcH6gKgvYs2A2Y0upODH5Idd274Cr8WquFQ5W1xPMFCaxGi', NULL, NULL, NULL),
(2, 'tes', 'tes@example.com', NULL, '$2y$10$3YmzBwyrGjZWkCGrWYXITeG89EzReMqbRah7ammvXrp7RK5wMTRfi', NULL, '2022-09-19 16:16:46', '2022-09-19 16:16:46'),
(3, 'axel', 'axel@gmail.com', NULL, '$2y$10$o3nmuChUpEG1UMVC7XxtHe3exztKjU6PhdHjP9dgxbwcoWPOnlBpy', NULL, '2022-09-21 00:31:12', '2022-09-21 00:31:12'),
(4, 'ella', 'ella@gmail.com', NULL, '$2y$10$3R0XuLPAIYvdxkca5eya9OnLrXf0gYbpFnKuopgGetvoWO3ICvD0K', NULL, '2022-09-21 21:35:46', '2022-09-21 21:35:46'),
(5, 'axel', 'axel@upi.edu', NULL, '$2y$10$TAZ9QxEtnfGmx2iFZkkLgOfZ.D/JOLxbcvgxD2MLSsTYu4HUf8TDG', NULL, '2022-09-22 01:36:00', '2022-09-22 01:36:00'),
(6, 'axel2', 'axel2@upi.edu', NULL, '$2y$10$QeIYXYC1GglUrx3Ne2B.4OB/zL/Chj5smnIBiKtchaatBAcQhUg.y', NULL, '2022-09-22 02:34:11', '2022-09-22 02:34:11'),
(7, 'alex', 'alex@gmail.com', NULL, '$2y$10$tP6pQnciT3frEZ.Ux9y5muWqonbd4YuxtVGRHcuigZxURYgJFrp.2', NULL, '2022-09-22 09:56:14', '2022-09-22 09:56:14'),
(8, 'Fajri Maulana Iskandar', 'fajrimaulana402@gmail.com', NULL, '$2y$10$e.eivpB/ZkjLTCgxFKgqF.fqmMGdQBSfyeximfzwvVnlgmc87psQO', NULL, '2022-09-23 01:52:18', '2022-09-23 01:52:18'),
(9, 'Guru', 'guru@example.com', NULL, '$2y$10$/GE0l4kQqwOY3hNDcR7x1OGoUSZDBP.hDc5B/JMSkF3gUYrd70ME6', NULL, '2022-09-23 07:02:58', '2022-09-23 07:02:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_users`
--
ALTER TABLE `data_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `finalresult`
--
ALTER TABLE `finalresult`
  ADD PRIMARY KEY (`id`),
  ADD KEY `finalresult_id_user_foreign` (`id_user`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_question_id_foreign` (`question_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_category_id_foreign` (`category_id`);

--
-- Indexes for table `question_result`
--
ALTER TABLE `question_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_result_result_id_foreign` (`result_id`),
  ADD KEY `question_result_question_id_foreign` (`question_id`),
  ADD KEY `question_result_option_id_foreign` (`option_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `results_user_id_foreign` (`user_id`),
  ADD KEY `results_jenis_survei_foreign` (`jenis_survei`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `data_users`
--
ALTER TABLE `data_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `finalresult`
--
ALTER TABLE `finalresult`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=415;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `question_result`
--
ALTER TABLE `question_result`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1310;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `finalresult`
--
ALTER TABLE `finalresult`
  ADD CONSTRAINT `finalresult_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `data_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `question_result`
--
ALTER TABLE `question_result`
  ADD CONSTRAINT `question_result_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `question_result_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `question_result_result_id_foreign` FOREIGN KEY (`result_id`) REFERENCES `results` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_jenis_survei_foreign` FOREIGN KEY (`jenis_survei`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `data_users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
