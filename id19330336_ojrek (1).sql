-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 01, 2022 at 05:15 AM
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
(19, 'Lunartechno.id', '081333169082', 'Jln Candi Telagawangi No.71', NULL, NULL, 'Indonesia', 'lunartechno.id@gmail.com', 1, '2022-06-23 03:18:25', '2022-06-23 01:48:59', 'Rizky Haris Risaldi', 'Rizky Haris Risaldi');

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
(5, 19, 'IT Department', '2022-06-23 07:39:58', '2022-06-23 02:11:54', 'Rizky Haris Risaldi', 'Rizky Haris Risaldi'),
(9, 19, 'HRD', '2022-07-28 09:01:38', '2022-07-28 09:01:38', 'Ical Risaldi', 'Ical Risaldi');

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
(2, '2022_06_16_023931_create_companies_table', 1),
(3, '2022_06_16_023933_create_role_table', 1),
(4, '2022_06_16_023934_create_departments_table', 1),
(5, '2022_06_16_023936_create_positions_table', 1),
(6, '2022_06_16_023937_create_users_table', 1),
(7, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(8, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(9, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(10, '2016_06_01_000004_create_oauth_clients_table', 2),
(11, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(12, '2022_06_23_064504_add_nik_to_users_table', 3);

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
('01533d00166ad5115606a4a4f53b2cd72b61bd3613434198932fbef19e31f0c8e2f1a980258ee92f', 14, 5, 'dataPegawai', '[]', 1, '2022-07-25 23:44:57', '2022-07-25 23:44:57', '2022-08-02 06:44:57'),
('01a2d811c49253562687143cf89b3833672ca1ede63df53bd20f28da8c57bf6d9697609c74251b49', 14, 5, 'dataPegawai', '[]', 1, '2022-06-22 21:03:49', '2022-06-22 21:03:49', '2022-07-23 04:03:49'),
('08e8bc699d8fc2dac5e7446c849de9232d5b19356cf81f1469190d8a6c6a1218b0325ca7f71e7378', 14, 5, 'dataPegawai', '[]', 1, '2022-07-19 20:59:03', '2022-07-19 20:59:03', '2022-07-27 03:59:03'),
('11313d834fac626a6eed75ce315ed675a567278208eed18b767795f7e24590b87140cf2b99d942e7', 14, 5, 'dataPegawai', '[]', 1, '2022-06-22 20:28:22', '2022-06-22 20:28:22', '2022-07-23 03:28:22'),
('186cc58746ef3600efc9ea6c97f70092e1df948e85e53336b8afc3775b035b00235004e8902c7565', 14, 5, 'dataPegawai', '[]', 1, '2022-07-05 01:32:35', '2022-07-05 01:32:35', '2022-07-12 08:32:35'),
('202ce8b87c53c4c24a75961cf8d3a912dc54dfb751eec20a9133c6b2d4552b0ca8a602b38826c5f7', 10, 5, 'dataPegawai', '[]', 0, '2022-06-22 01:14:53', '2022-06-22 01:14:53', '2023-06-22 08:14:53'),
('204809fa6d7a1e124a7d1f3d4fae5a79a85ddecb60af1185ddb1698cebb776ffaf93cd8edc90a632', 15, 5, 'dataPegawai', '[]', 1, '2022-07-05 00:26:09', '2022-07-05 00:26:09', '2022-07-12 07:26:09'),
('35da58a115ed625b6b61eec1c72b1f75d9cd211ec3dfea091feb049be23ecc1524040665ea68567c', 13, 5, 'DataPegawai', '[]', 0, '2022-06-22 02:12:33', '2022-06-22 02:12:33', '2023-06-22 09:12:33'),
('3630ba5a72277263168762bcccd2244b30b56136c74073a2a3a8f414e8b37009b2490a07f09a92b7', 14, 5, 'dataPegawai', '[]', 1, '2022-07-25 19:57:35', '2022-07-25 19:57:35', '2022-08-02 02:57:35'),
('4761f986e72a0c63a627ff309815fc6cb36dc6297f8314eec52c3b6ec971a3d78ddd1a491b488967', 15, 5, 'dataPegawai', '[]', 1, '2022-07-05 00:26:14', '2022-07-05 00:26:14', '2022-07-12 07:26:14'),
('487238d3b70ea5a6e61796eeab09ca77055f56168a9f94900242a6d112535fa81ca73c20b9ee99ab', 15, 5, 'dataPegawai', '[]', 1, '2022-07-26 00:25:59', '2022-07-26 00:25:59', '2022-08-02 07:25:59'),
('4bf03496a414cdb4b3a191b76b8d4e9079a27ef43a73d002131d8ee2203833cfe6656d30b97e5230', 15, 5, 'dataPegawai', '[]', 1, '2022-07-05 00:56:16', '2022-07-05 00:56:16', '2022-07-12 07:56:16'),
('505f9114ee67032d7547c10f35941715c928b4d9e3fad43abd61fb2b234246b6ca628d3db9fb0979', 9, 5, 'DataPegawai', '[]', 0, '2022-06-22 00:04:40', '2022-06-22 00:04:40', '2023-06-22 07:04:40'),
('53fd3c493644375dfaffae4d9c98e7ddd62363cf852c0f1de210bd95d8cb4e4ad1354a256704f723', 14, 5, 'dataPegawai', '[]', 1, '2022-07-27 23:19:04', '2022-07-27 23:19:04', '2022-08-04 06:19:04'),
('5582c167e013e2c177aa6cfb56d7f7843586ed16ddb5c91e131269ef52d97f2c1e5f0d9c6b2bca34', 14, 5, 'dataPegawai', '[]', 1, '2022-06-23 00:31:35', '2022-06-23 00:31:35', '2022-07-23 07:31:35'),
('591a3541c2c687185b5da774c8f5f29633f7be8da20537a387c9b15bf2abbc8cb8f5bc9c9234f183', 14, 5, 'dataPegawai', '[]', 1, '2022-07-25 23:39:29', '2022-07-25 23:39:29', '2022-08-02 06:39:29'),
('64b85c9c0008bb5f693997e8220982792d7d11445f521f267ec3e9cc526a1bfb54658ad6e1c314e0', 15, 5, 'dataPegawai', '[]', 1, '2022-07-26 00:39:46', '2022-07-26 00:39:46', '2022-08-02 07:39:46'),
('68ecf9cb80d51e9bd26037034b7d6072905eb2a7fa021c9a1fa4ce81747f15d746846173030598be', 14, 5, 'dataPegawai', '[]', 1, '2022-07-25 19:56:52', '2022-07-25 19:56:52', '2022-08-02 02:56:52'),
('69f280d92a573ce17f3667240cd92662ffca57ecc6ea57c1dcf9b6f3fd4c611bffe4a9387d46a5ec', 14, 5, 'dataPegawai', '[]', 1, '2022-06-22 21:02:07', '2022-06-22 21:02:07', '2022-07-23 04:02:07'),
('6e86aa1952becb042a65bc5b016360d402adbfa672029cc25de115bfca843fa211b0afe6c8ced765', 14, 5, 'dataPegawai', '[]', 1, '2022-07-25 19:47:06', '2022-07-25 19:47:06', '2022-08-02 02:47:06'),
('7a1215c314587a14bb5d32230a245f084e3456e6f3cf40253e9514af7db26a5fe639430477b8c070', 14, 5, 'dataPegawai', '[]', 1, '2022-07-25 19:44:54', '2022-07-25 19:44:54', '2022-08-02 02:44:54'),
('8ada6a10146e9a23e19570a656cb168b6626e0e8773a92f76f0e5072096d2db42a0e8422269866a0', 10, 5, 'DataPegawai', '[]', 0, '2022-06-22 01:03:31', '2022-06-22 01:03:31', '2023-06-22 08:03:31'),
('8f8650b2a6688a37c7e653728be3313134b9f8ff5c592a6d7f666edefdc9fb1ecb4bfdf805026e68', 11, 5, 'DataPegawai', '[]', 0, '2022-06-22 01:16:13', '2022-06-22 01:16:13', '2023-06-22 08:16:13'),
('90a4a7e1a2d3d3d4b521d1b121c57c3df5830dd651464309dbf9c3d44cae1921f961f541d03e92c8', 15, 5, 'dataPegawai', '[]', 1, '2022-07-05 00:10:22', '2022-07-05 00:10:22', '2022-07-12 07:10:22'),
('92934842cc721d7ac7b8cc5b0670210a0157d813b8d1d1fd1b519a6addbc0d57a24af789c77fff9b', 14, 5, 'dataPegawai', '[]', 1, '2022-07-25 21:14:12', '2022-07-25 21:14:12', '2022-08-02 04:14:12'),
('94e2d6e5b6c9ceb8b0e6037bacd3e3dda3bb99a2974f1e852d6142ef5be051219de8628d959346d9', 15, 5, 'dataPegawai', '[]', 1, '2022-07-05 01:01:32', '2022-07-05 01:01:32', '2022-07-12 08:01:32'),
('9af999762d043c33cdf656fa0b2ba677f1b757e7c5cff62291f1c5fcfa38337553168447ef8efdc5', 15, 5, 'dataPegawai', '[]', 0, '2022-07-27 23:21:05', '2022-07-27 23:21:05', '2022-08-04 06:21:05'),
('9d4b16b845b3d76ca92390659582a75486fa82b7d92b368e1efc28243dcd6313ba64c54f10839150', 12, 5, 'DataPegawai', '[]', 0, '2022-06-22 01:27:34', '2022-06-22 01:27:34', '2023-06-22 08:27:34'),
('a57a93933e7a5b1fc9033e563b72b3f9f3012b52464a98e8e88c259b1b0cdbbe2d86d483c99577e8', 14, 5, 'dataPegawai', '[]', 1, '2022-07-25 19:46:07', '2022-07-25 19:46:07', '2022-08-02 02:46:07'),
('a6649195f1e65e4d5cdc7997577e6751324e7db182affba4069d0be9b9929f643fcb138b6d2bee11', 14, 5, 'dataPegawai', '[]', 1, '2022-07-25 23:17:22', '2022-07-25 23:17:22', '2022-08-02 06:17:22'),
('a6773a1b22404811fe2326ba1d19f4ddcc7975beaf535bc2d9576c78f19e879d491bfb9d56dcd20f', 14, 5, 'dataPegawai', '[]', 1, '2022-07-04 20:49:53', '2022-07-04 20:49:53', '2022-07-12 03:49:53'),
('a769d77ab7b863f478c4a488f24dce3fbd0e8405160d8aa233a66eaad944c8ef4bb45946ff9c6ca1', 14, 5, 'DataPegawai', '[]', 1, '2022-06-22 20:18:25', '2022-06-22 20:18:25', '2022-07-23 03:18:25'),
('aa78fdd425b6fe42b2f8d80f206531fd6a4b8c8fd2ea27f84e1c03f9503ac2e3336ee8a242854e67', 15, 5, 'dataPegawai', '[]', 1, '2022-07-05 00:34:31', '2022-07-05 00:34:31', '2022-07-12 07:34:31'),
('aaf44554b331f668534afe616afc51a5901fe4db425447a8e9c802dd7b770218aac36044dbbfcac8', 15, 5, 'dataPegawai', '[]', 1, '2022-07-05 00:33:50', '2022-07-05 00:33:50', '2022-07-12 07:33:50'),
('b6b99a073d842b0dfe69d93d79f99d8a820bf94d0f83478015ee9f2c1a443b605c5c5ea581fe384d', 14, 5, 'dataPegawai', '[]', 1, '2022-07-26 00:48:03', '2022-07-26 00:48:03', '2022-08-02 07:48:03'),
('bb409abc4a863f1bd25b6cdbc29dbb18223f6c45ff3980cac640fbdfd52bfcce4c5177e2ee66524f', 15, 5, 'dataPegawai', '[]', 1, '2022-07-05 00:30:41', '2022-07-05 00:30:41', '2022-07-12 07:30:41'),
('bd38e862041dc536486b7c589bf306655d4a0cf4a9dd25d1a33b9a82751087bea580685905c52836', 14, 5, 'dataPegawai', '[]', 1, '2022-07-25 23:33:04', '2022-07-25 23:33:04', '2022-08-02 06:33:04'),
('be913be62b14df865c664ea12bc8c129b5801dae9c645b2b2d8b090ea366b7370622ec46034b6b97', 14, 5, 'dataPegawai', '[]', 1, '2022-07-25 23:19:19', '2022-07-25 23:19:19', '2022-08-02 06:19:19'),
('c44044d897867db17bae28c93bfadb61cb33bb9132b243a2c879ecec300946308fe19d4bd3acc063', 15, 5, 'dataPegawai', '[]', 1, '2022-07-26 00:26:07', '2022-07-26 00:26:07', '2022-08-02 07:26:07'),
('c99bbc6c6229458af4adf4afd5e1fde7196b9b3973c5c0d4ec3413a91164fb36d43de7fb098342f7', 14, 5, 'dataPegawai', '[]', 1, '2022-06-22 21:05:28', '2022-06-22 21:05:28', '2022-07-23 04:05:28'),
('d03b4fe31bdcb52acbbe26669f76b80e8a70f6a0cd57394fd2f120eef98392c229878f5178ec8dda', 15, 5, 'dataPegawai', '[]', 1, '2022-07-27 21:00:10', '2022-07-27 21:00:10', '2022-08-04 04:00:10'),
('d282562c4501c537c6596cd48cac60829d4bbce9911be2ea1739d07c0c36afd5fc944a508c806316', 14, 5, 'dataPegawai', '[]', 1, '2022-07-25 23:33:44', '2022-07-25 23:33:44', '2022-08-02 06:33:44'),
('d4126c3d353d6cbd3874d683aa4daf5c24b6520782d90680afd0d54bd59079bf51d24c862740b473', 14, 5, 'dataPegawai', '[]', 1, '2022-07-25 19:43:25', '2022-07-25 19:43:25', '2022-08-02 02:43:25'),
('d5f273f27cb7641e8061cda66b55cd964eb5877f83aed5ea2d9f869b63675310cff6d2f30a2cb3ea', 14, 5, 'dataPegawai', '[]', 1, '2022-07-25 19:43:35', '2022-07-25 19:43:35', '2022-08-02 02:43:35'),
('d67eaf14cfa8998500f6b6ddd90e254e77f66d88b0148eb330d55a8c7ec02a6a74749eb02af735f1', 14, 5, 'dataPegawai', '[]', 1, '2022-07-25 23:34:30', '2022-07-25 23:34:30', '2022-08-02 06:34:30'),
('e731f4ee6dfb27a5cfb47c7ea084c29ebc5a22bb21d2a47a6affefbc58168fca7aef2f417dfda950', 14, 5, 'dataPegawai', '[]', 1, '2022-07-04 20:43:26', '2022-07-04 20:43:26', '2022-07-12 03:43:26'),
('f2f2119d5ecdfd4991fa29e255e13c2fd53d58b60a5e8ee14e62034161f2dd6c652ed0abbdb7106c', 15, 5, 'dataPegawai', '[]', 1, '2022-07-26 00:51:27', '2022-07-26 00:51:27', '2022-08-02 07:51:27'),
('f901dd33c2160e92ea412c2fd7a79e6b5763e90e0d08bf78706a5b8a43b8774df230826e9adedba0', 15, 5, 'dataPegawai', '[]', 1, '2022-07-05 00:51:49', '2022-07-05 00:51:49', '2022-07-12 07:51:49');

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
(1, NULL, 'Laravel Personal Access Client', 'F096rm5EdAGH7wWm2F13oXCDJ9pwCWEAXvvjSXKv', NULL, 'http://localhost', 1, 0, 0, '2022-06-21 18:50:48', '2022-06-21 18:50:48'),
(2, NULL, 'Laravel Password Grant Client', 'wi1nqkD0f9gYGLwoWG1xSnIKmRnrXKAiWf0N8rOl', 'users', 'http://localhost', 0, 1, 0, '2022-06-21 18:50:48', '2022-06-21 18:50:48'),
(3, NULL, 'Laravel Personal Access Client', '6qSTjOVV4ASEAslQUZzCNcpoG59tOxkTJs8PHUEz', NULL, 'http://localhost', 1, 0, 0, '2022-06-21 18:51:13', '2022-06-21 18:51:13'),
(4, NULL, 'Laravel Password Grant Client', '2lMq4ezSjcRLOI1Z7yScTrokBGhjti9SPsr16mLm', 'users', 'http://localhost', 0, 1, 0, '2022-06-21 18:51:13', '2022-06-21 18:51:13'),
(5, NULL, 'Laravel Personal Access Client', 'mzu8nx3DmfoADEivTBpWPAO0ouK6LvqoaNCbxtwf', NULL, 'http://localhost', 1, 0, 0, '2022-06-21 20:56:31', '2022-06-21 20:56:31'),
(6, NULL, 'Laravel Password Grant Client', 'mWd3afTQ9qwhgsDL3sXoqwAaVs3dlh7MidhbTvwL', 'users', 'http://localhost', 0, 1, 0, '2022-06-21 20:56:31', '2022-06-21 20:56:31');

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
(1, 1, '2022-06-21 18:50:48', '2022-06-21 18:50:48'),
(2, 3, '2022-06-21 18:51:13', '2022-06-21 18:51:13'),
(3, 5, '2022-06-21 20:56:31', '2022-06-21 20:56:31');

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 3, 'dataPegawai', 'b05edd5c69198de6fc58ef1efeb4bab17fd3d3d22e590fca20e82b30ef0f4efc', '[\"*\"]', NULL, '2022-06-21 20:48:15', '2022-06-21 20:48:15'),
(2, 'App\\Models\\User', 4, 'dataPegawai', 'ece40df0c67b4fe6b5a48c63784cacc170704d20d7ee5daae6f03855a8ce8d28', '[\"*\"]', NULL, '2022-06-21 20:49:48', '2022-06-21 20:49:48'),
(3, 'App\\Models\\User', 5, 'dataPegawai', 'cde9af8b9d4ba7279bfa30b2aca46a35905a723b8bf6dcb6212e539ffff9fab1', '[\"*\"]', NULL, '2022-06-21 20:51:02', '2022-06-21 20:51:02'),
(4, 'App\\Models\\User', 6, 'dataPegawai', 'f76417e8ff36653bbab78c42a2fa66c5c446b455fb7a688cf7ca1fca7974b437', '[\"*\"]', NULL, '2022-06-21 23:44:16', '2022-06-21 23:44:16'),
(5, 'App\\Models\\User', 8, 'DataPegawai', '35995be5578c8dfd13baeba946e16e33e01f8332728e7732fab1174fcb3d3e00', '[\"*\"]', NULL, '2022-06-21 23:54:50', '2022-06-21 23:54:50'),
(6, 'App\\Models\\User', 8, 'DataPegawai', 'b36232acb97652ded814c6ca2599ead14527ffb91ab4ec9526c3ad46f9755b00', '[\"*\"]', NULL, '2022-06-21 23:59:42', '2022-06-21 23:59:42');

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
(1, 5, 'Head Department', 1, '2022-06-23 07:39:58', '2022-06-23 07:39:58', 'Rizky Haris Risaldi', 'Rizky Haris Risaldi'),
(2, 5, 'Staff', 2, '2022-06-23 07:39:58', '2022-06-23 07:39:58', 'Rizky Haris Risaldi', 'Rizky Haris Risaldi'),
(9, 5, 'Supervisor', 3, '2022-07-05 08:35:27', '2022-07-05 08:35:27', 'Rizky Haris Risaldi', 'Rizky Haris Risaldi'),
(10, 9, 'Head Department', 1, '2022-07-28 09:01:38', '2022-07-28 09:01:38', 'Ical Risaldi', 'Ical Risaldi'),
(11, 9, 'Staff', 2, '2022-07-28 09:01:38', '2022-07-28 09:01:38', 'Ical Risaldi', 'Ical Risaldi');

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
(1, 'superadmin', '2022-06-20 20:48:17', '2022-06-20 20:48:17', 'ical', 'ical'),
(2, 'admin', '2022-06-20 20:48:17', '2022-06-20 20:48:17', 'ical', 'ical'),
(3, 'user', '2022-06-20 20:48:17', '2022-06-20 20:48:17', 'ical', 'ical');

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
(14, 'Rizky Haris Risaldi', 'ical.oyi@gmail.com', NULL, '081333169082', '1996-05-23', '2021-03-01', 19, 5, 1, 3, NULL, '$2y$10$29QvskNeTs9qWDifBd0qsOCsQa5EM8YHJ8tP197hXS8jpPkG8Ewy2', NULL, 1, '2022-06-23 03:18:25', '2022-07-27 23:20:33', 'Rizky Haris Risaldi', 'Rizky Haris Risaldi', '14'),
(15, 'Ical Risaldi', 'iclrisaldi@gmail.com', 'Malang Bos ku', '08123456780', NULL, NULL, 19, NULL, NULL, 1, NULL, '$2y$10$DbCD59NG6w0r3NNa7gpMiOqiNqJ4dDn.aS9epKYepNzc26A7n6SvO', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI1IiwianRpIjoiOWFmOTk5NzYyZDA0M2MzM2NkZjY1NmZhMGIyYmE2NzdmMWI3NTdlN2M1Y2ZmNjIyOTFmMWM1ZmNmYTM4MzM3NTUzMTY4NDQ3ZWY4ZWZkYzUiLCJpYXQiOjE2NTg5ODkyNjUuMTI4MTYxLCJuYmYiOjE2NTg5ODkyNjUuMTI4MTYzLCJleHAiOjE2NTk1OTQwNjUuMTI1Mzg3LCJzdWIiOiIxNSIsInNjb3BlcyI6W119.LXlWLI8Y0f3u5RfK_wRKGAwKX8aAcIed2ZHuKgX6I8qBJ7R56HvQhG8KicxGsnr4xYCbEpjnKaMx9hfyf1XsfTYvTO7mTRSJMochSrmdj-_PRbGRUHKCJMd93IOf97k_vgSDnB-FhYCvdvboidDboC0BRijtdP6SKsDS5JIpQkn1pbQokMbEVgbl6B_lbtJV23lhql8x8vl98OIZHPBAzSMBmx8cI3FRzS3cW3rcE2sb760jDgMU1GboOJ4JgdgAPxHyiG6-U-MV8eUUTDh7RXS_GZYENue4SQcskpd4UxyepKtj31RcdDR2ZNUVxsqKXyge4gnoCLtTnKBWeCGKQgHCD1ku7E9kSHF3TXlEmy2ZIHTHuiWrR0Jf1YQq7w47UnErkl--qBBVhMCbFVawREdm7hrmgLlZfRnV90gH5vuq5FHhFY8CtovtybsU5Nm8HgB8WkbN8BBqVFkCvDP9dRW_hlbnkb5L6t_bqWLY1Pa_kbbsKezI8NBT9GE9VZn1E1i7A11h20qCzjK5DQ_nSnr3hHlLBzJcl9mXeA_oVt6ANrPl_ySS-UZsH_6Sst8Lzczy_xoVQaV__A9o4ECAHyVEh-mwN34wgAI71BpGhOAoz3s-J5Q2KI7TBqqarIWrk94_F5a8uB1cJDxXKZQPKA_vJZd_cfwaZAEFNV97p90', 1, '2022-07-05 07:09:20', '2022-07-27 23:21:05', 'Rizky Haris Risaldi', 'Rizky Haris Risaldi', NULL);

--
-- Indexes for dumped tables
--

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
  ADD KEY `users_department_id_foreign` (`department_id`),
  ADD KEY `users_position_id_foreign` (`position_id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `positions`
--
ALTER TABLE `positions`
  ADD CONSTRAINT `positions_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `users_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `users_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`),
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
