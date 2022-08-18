-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 18, 2022 at 06:00 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id19330336_ojrek`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expired_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `phone`, `address`, `location`, `city`, `country`, `email`, `isActive`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Lunartechno.id', '081234567890', 'Jln. Candi Telagawangi no. 21', NULL, 'Malang', 'Indonesia', 'lunartechno.id@lunartechno.id', 1, '2022-08-09 03:21:32', '2022-08-09 01:52:59', 'Rizky Haris Risaldi', 'Rizky Haris Risaldi'),
(2, 'THE OYI UTAPES', '081234567890', 'Jln. Sidomukti 1/1 Bululawang', NULL, 'Kabupaten Malang', 'Indonesia', 'theoyiutapes@theoyi.com', 1, '2022-08-09 03:23:25', '2022-08-09 03:23:25', 'Ical Oyi', 'Ical Oyi');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `company_id`, `name`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(3, 2, 'IT', '2022-08-09 03:51:21', '2022-08-09 03:51:21', 'Ical Oyi', 'Ical Oyi'),
(4, 2, 'Marketing and Communication', '2022-08-09 06:27:01', '2022-08-09 06:27:01', 'Ical Oyi', 'Ical Oyi'),
(10, 1, 'IT', '2022-08-09 09:06:24', '2022-08-09 09:06:24', 'Rizky Haris Risaldi', 'Rizky Haris Risaldi');

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
(149, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(150, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(151, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(152, '2016_06_01_000004_create_oauth_clients_table', 1),
(153, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(154, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(155, '2022_06_16_023931_create_companies_table', 1),
(156, '2022_06_16_023933_create_role_table', 1),
(157, '2022_06_16_023934_create_departments_table', 1),
(158, '2022_06_16_023936_create_positions_table', 1),
(159, '2022_06_16_023937_create_users_table', 1),
(160, '2022_06_23_064504_add_nik_to_users_table', 1),
(161, '2022_08_04_075415_change_department_relation_on_users_table', 1),
(162, '2022_08_04_081401_change_position_relation_on_departments_and_users_table', 1),
(167, '2022_08_11_033823_create_news_table', 2),
(169, '2022_08_16_024646_create_table_announcement', 3);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `company_id`, `title`, `subtitle`, `url`, `img_url`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 1, 'Komnas HAM Tunda Pemeriksaan Ferdy Sambo', 'Komisi Nasional Hak Asasi Manusia (Komnas HAM) menunda pemeriksaan Irjen Ferdy Sambo terkait kasus pembunuhan Nofriansyah Yoshua Hutabarat atau Brigadir J. Komisioner Komnas HAM bidang Penyelidikan dan Pengawasan M Choirul Anam mengatakan, kepastian penundaan pemeriksaan setelah mendapat konfirmasi dari Ketua Timsus Inspektur Pengawas Umum (Irwasum) Polri Komjen Agung Budi Maryoto.', 'https://nasional.kompas.com/read/2022/08/11/12505631/komnas-ham-tunda-pemeriksaan-ferdy-sambo', 'https://asset.kompas.com/crops/EYumZhFBW8kd5woWeQckSRjULQY=/119x0:1199x720/750x500/data/photo/2022/08/07/62ef0a311587b.jpg', '2022-08-11 07:13:02', '2022-08-11 07:13:02', 'Rizky Haris Risaldi', 'Rizky Haris Risaldi'),
(2, 1, 'Trump Diam Saja Saat 6 Jam Diperiksa Jaksa Agung New York', 'Mantan Presiden Amerika Serikat (AS) Donald Trump pada Rabu (10/8/2022) menolak menjawab pertanyaan di bawah sumpah tentang dugaan penipuan di bisnis keluarganya. Trump berdalih, dia tidak punya pilihan selain menerapkan Amendemen Kelima yang mengizinkan individu tetap diam selama interogasi. Trump diperiksa selama enam jam di kantor Jaksa Agung New York di Manhattan.', 'kompas.com/global/read/2022/08/11/131300470/trump-diam-saja-saat-6-jam-diperiksa-jaksa-agung-new-york', 'https://asset.kompas.com/crops/449sJI_1iwiU-gqbjUI-aWpCxrg=/283x0:726x295/750x500/data/photo/2022/08/11/62f44a9fbe2f9.jpg', '2022-08-11 07:14:59', '2022-08-11 07:14:59', 'Rizky Haris Risaldi', 'Rizky Haris Risaldi');

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
('0bf266f388c2954ec5a42a3668bb2752cfd142b7ec8106063a14d01255826e6c5f3a310cd5fb963d', 1, 1, 'dataPegawai', '[]', 1, '2022-08-16 00:25:48', '2022-08-16 00:25:48', '2022-08-23 07:25:48'),
('14fa9ea03cf2968368f31d934181bc75c47465dff0d98be781b3c413ef805d4b7dbd5b5add410174', 1, 1, 'DataPegawai', '[]', 1, '2022-08-08 20:21:33', '2022-08-08 20:21:33', '2022-08-16 03:21:33'),
('234df02cd7bfe4b94fe2f96d8bb292f1ca866475bc3c0cecd6edb23609188d0f37734cc0abead8a9', 1, 1, 'dataPegawai', '[]', 1, '2022-08-16 00:06:46', '2022-08-16 00:06:46', '2022-08-23 07:06:46'),
('242f24e355288d1e33361e9066a9fb1db4beb1e18b855e9f2dd67fd26b15251f1942f72d47111bf7', 1, 1, 'dataPegawai', '[]', 1, '2022-08-09 02:05:14', '2022-08-09 02:05:14', '2022-08-16 09:05:14'),
('427095cb5c812365ed787c1438b089dde0376c412dec0d47febb8cb224f83febbf996a5926c6ed70', 1, 1, 'dataPegawai', '[]', 1, '2022-08-16 00:35:07', '2022-08-16 00:35:07', '2022-08-23 07:35:07'),
('5366ebd0d5058663347fb13be95a1cc6446f65edf3f1b0e850916c86fa694f00766433ac773c4b86', 1, 1, 'dataPegawai', '[]', 1, '2022-08-15 23:42:45', '2022-08-15 23:42:45', '2022-08-23 06:42:45'),
('5e973d437ed06e3fa764302e175a548f937f5d1208f9bb44767a588c1621caca8e1277dba8c607e9', 1, 1, 'dataPegawai', '[]', 1, '2022-08-11 02:40:14', '2022-08-11 02:40:14', '2022-08-18 09:40:14'),
('68973c744a47e939682f1c20d6dc9ceac2f6dd010ebf9bc3b1dd9e7c3e4db020d74fa46beb00ae07', 1, 1, 'dataPegawai', '[]', 0, '2022-08-16 00:56:07', '2022-08-16 00:56:07', '2022-08-23 07:56:07'),
('73f50e6d6e1f03cdbb7260fdc797edee104b498d90b4d6b339b2f6fe9b41d22465ddd85afec561f9', 1, 1, 'dataPegawai', '[]', 1, '2022-08-16 00:51:47', '2022-08-16 00:51:47', '2022-08-23 07:51:47'),
('7ce731b0f84c2efc02f5a010de9f368d85a1a60821b85ed24ef0dd5acd5660228e2a57a1b1e278b5', 1, 1, 'dataPegawai', '[]', 1, '2022-08-11 01:20:04', '2022-08-11 01:20:04', '2022-08-18 08:20:04'),
('b7fc63aa9dd2a97f6a20ce9292dda8b87833c71d8995b6f701d56b078d65109647d7cfd6ef03fbd2', 2, 1, 'DataPegawai', '[]', 1, '2022-08-08 20:23:26', '2022-08-08 20:23:26', '2022-08-16 03:23:26'),
('cac328cfe188a3c69c2ef523e55cd944cb0f3a3e37df2be7eeb70c7e70d7d19631c0400a970e3c9f', 1, 1, 'dataPegawai', '[]', 1, '2022-08-16 00:11:09', '2022-08-16 00:11:09', '2022-08-23 07:11:09'),
('caed92a9c3adedfdc19496cdde0f2ca5aafe74c9f759d69531cc0abf4b873004fa07edc48e3ad0e6', 1, 1, 'dataPegawai', '[]', 1, '2022-08-11 02:45:13', '2022-08-11 02:45:13', '2022-08-18 09:45:13'),
('d7d34cb7fd461f2ce99e47f6cc58d01895e36f146b2ae11d2ada4b2c15e4780927e13ee2c3472ed6', 1, 1, 'dataPegawai', '[]', 1, '2022-08-10 23:55:22', '2022-08-10 23:55:22', '2022-08-18 06:55:22'),
('e677f528b5be2d3ccd8c4877e0306ec4ed217db92edc173a2597dc9b938f0b37d623600fbdfa80e2', 1, 1, 'dataPegawai', '[]', 1, '2022-08-09 00:38:24', '2022-08-09 00:38:24', '2022-08-16 07:38:24');

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
(1, NULL, 'Laravel Personal Access Client', 'k2FvY7SjTzyQcyBA67wNPb3tmQoMSl35UV3zyYee', NULL, 'http://localhost', 1, 0, 0, '2022-08-08 20:19:24', '2022-08-08 20:19:24'),
(2, NULL, 'Laravel Password Grant Client', 'On8jn4SH3LnsW2rZZV1TMi6ipeN7qNFzw6norub3', 'users', 'http://localhost', 0, 1, 0, '2022-08-08 20:19:24', '2022-08-08 20:19:24');

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
(1, 1, '2022-08-08 20:19:24', '2022-08-08 20:19:24');

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
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `department_id`, `name`, `level`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(7, 3, 'Head', 1, '2022-08-09 03:51:21', '2022-08-09 03:51:21', 'Ical Oyi', 'Ical Oyi'),
(8, 3, 'PIC', 2, '2022-08-09 03:51:21', '2022-08-09 03:51:21', 'Ical Oyi', 'Ical Oyi'),
(9, 3, 'Senior Developer', 3, '2022-08-09 03:51:21', '2022-08-09 03:51:21', 'Ical Oyi', 'Ical Oyi'),
(10, 3, 'Junior Developer', 4, '2022-08-09 03:51:21', '2022-08-09 03:51:21', 'Ical Oyi', 'Ical Oyi'),
(11, 4, 'Head', 1, '2022-08-09 06:27:01', '2022-08-09 06:27:01', 'Ical Oyi', 'Ical Oyi'),
(12, 4, 'Supervisor', 2, '2022-08-09 06:27:01', '2022-08-09 06:27:01', 'Ical Oyi', 'Ical Oyi'),
(13, 4, 'Staff', 3, '2022-08-09 06:27:01', '2022-08-09 06:27:01', 'Ical Oyi', 'Ical Oyi'),
(14, 4, 'Junior', 4, '2022-08-09 06:27:01', '2022-08-09 06:27:01', 'Ical Oyi', 'Ical Oyi'),
(15, 4, 'Internship', 5, '2022-08-09 06:27:01', '2022-08-09 06:27:01', 'Ical Oyi', 'Ical Oyi'),
(29, 10, 'Head', 1, '2022-08-09 09:06:24', '2022-08-09 09:06:24', 'Rizky Haris Risaldi', 'Rizky Haris Risaldi'),
(30, 10, 'Supervisor', 2, '2022-08-09 09:06:24', '2022-08-09 09:06:24', 'Rizky Haris Risaldi', 'Rizky Haris Risaldi'),
(31, 10, 'Staff', 3, '2022-08-09 09:06:24', '2022-08-09 09:06:24', 'Rizky Haris Risaldi', 'Rizky Haris Risaldi');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'superadmin', '2022-08-08 20:19:20', '2022-08-08 20:19:20', 'ical', 'ical'),
(2, 'admin', '2022-08-08 20:19:20', '2022-08-08 20:19:20', 'ical', 'ical'),
(3, 'user', '2022-08-08 20:19:20', '2022-08-08 20:19:20', 'ical', 'ical');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `join_at` date DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `position_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NIK` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address`, `phone`, `birthday`, `join_at`, `company_id`, `department_id`, `position_id`, `role_id`, `email_verified_at`, `password`, `remember_token`, `isActive`, `created_at`, `updated_at`, `created_by`, `updated_by`, `NIK`) VALUES
(1, 'Rizky Haris Risaldi', 'r.harisrisaldi@lunartechno.id', NULL, '081234567890', '1996-05-23', '2022-08-09', 1, 10, 29, 1, NULL, '$2y$10$0jtigmkYhK.K7ojyAhljduJ3YQfhOfjCmLSFFQBE9WKBFpOjm1/1u', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNjg5NzNjNzQ0YTQ3ZTkzOTY4MmYxYzIwZDZkYzljZWFjMmY2ZGQwMTBlYmY5YmMzYjFkZDllN2MzZTRkYjAyMGQ3NGZhNDZiZWIwMGFlMDciLCJpYXQiOjE2NjA2MzY1NjcuODU0MDE5LCJuYmYiOjE2NjA2MzY1NjcuODU0MDI1LCJleHAiOjE2NjEyNDEzNjcuODUxMTI2LCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.Y3bAiRrDQidugJAlnmHTvCDNVTUqGSdTMM5DMKXfNoFz98CBC4dQDpVSOIyixIXn6Kylp3w0SIsIJZ5u8P9NEXnwit8mE9Afj_ji0C1x8PA9VR4SfLKta3VIoNtU-666ayJVvqmJAqsO2bhb-ConEgH4PuSaX7X4ZEMvMR2y3GYyX8U1lfyQXpP-hSnywrBGwLf2flTlBy-8h91oq7usiroG0gdAkfjcBuvbI_IYOMrSx6AdzbOq8V7GzHLrNOKfzpgvE3Pi1XMtNiy6v6k_6fuD1dE5A9o32e3KS84NBBSG_7FLNsACg5WSy9QpNZq_TlL9DURYJpYRHA9vnsqmL2o5n1bLqNGiiCyr75gGjaptFxDM-jbVMeM4NXJ69F7M83be_M_A_-yQeBnoiVcZl-zJr1we8_AFcuFJhBcx3GETonvUS9puWslICP_wFEkBYT0axBhglYYzLSmvy3qWaVJ9jBkGohOf6jpyyGkoMlJCO7hZBntlbUc098Sky0wAPpuxa_1HcTcy5AeuW3cDw_yG1Mf1JBJuQePRahzLIWFhN1LnGNRYGtv3fPZTUku9UVRIEpAVyp5NdlNjSTLhm80bM92s7u3RBi4la5c1inaJlS6A-P-gw_ccTTzglEpSWb2ti47wshhZHRg9y6loZqvj0SCoWtqcp4Dv1eo7K34', 1, '2022-08-09 03:21:33', '2022-08-16 00:56:07', 'Rizky Haris Risaldi', 'Rizky Haris Risaldi', '1'),
(2, 'Ical Oyi', 'ical.oyi@theoyi.com', NULL, '081234567890', NULL, '2022-08-09', 2, NULL, NULL, 1, NULL, '$2y$10$Y8Y7xapPItwo90gXZGxZZ.r6k8f1amfKGL.AWPNIHAdyK2RfAmDWC', NULL, 1, '2022-08-09 03:23:26', '2022-08-09 00:37:46', 'Ical Oyi', 'Ical Oyi', '2'),
(3, 'Ical Risaldi', 'ical.risaldi@theoyi.co.id', NULL, '081234567890', NULL, '2022-08-09', 2, 3, 7, 3, NULL, '$2y$10$6Af3ZdveOWkZzuMwhgsHXO7PvnIdv7kLlzlCdeN/N3/oJF0sCfwz2', NULL, 1, '2022-08-09 07:36:59', '2022-08-09 00:37:24', 'Ical Oyi', 'Ical Oyi', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `announcements_company_id_foreign` (`company_id`),
  ADD KEY `announcements_department_id_foreign` (`department_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_email_unique` (`email`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments_company_id_foreign` (`company_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_company_id_foreign` (`company_id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `positions_department_id_foreign` (`department_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_company_id_foreign` (`company_id`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_department_id_foreign` (`department_id`),
  ADD KEY `users_position_id_foreign` (`position_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `announcements_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `announcements_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `positions`
--
ALTER TABLE `positions`
  ADD CONSTRAINT `positions_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `users_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
