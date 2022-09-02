-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 02, 2022 at 08:49 AM
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

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `company_id`, `department_id`, `title`, `subtitle`, `url`, `img_url`, `expired_at`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 1, NULL, 'Peraturan WFH', 'Test Loor', NULL, NULL, '2022-08-30 17:00:00', '2022-08-31 08:08:06', '2022-08-31 08:08:06', 'Rizky Haris Risaldi', 'Rizky Haris Risaldi'),
(2, 1, NULL, 'Peraturan WFH', 'Test Loor 2', 'https://www.djkn.kemenkeu.go.id/kpknl-palu/baca-artikel/14156/Bekerja-dari-Rumah-Work-From-HomeWFH-Menghadapi-COVID-19-pada-PPKM-Level-4.html', NULL, '2022-08-29 17:00:00', '2022-08-31 08:09:39', '2022-09-01 01:49:15', 'Rizky Haris Risaldi', 'Ical Oyi'),
(3, 1, NULL, 'Bekerja dari Rumah (Work From Home/WFH) : Menghadapi COVID-19 pada PPKM Level 4', 'Sejak merebaknya Covid-19 di Indonesia, seluruh kegiatan sehari hari yang dilakukan memiliki batasan dan aturan yang harus dipatuhi. Pemerintah mengambil beberapa langkah dalam mengatasi Covid-19 seperti penerapan Pembatasan Sosial Berskala Besar (PSBB) hingga penerapan Pemberlakuan Pembatasan Kegiatan Masyarakat (PPKM) Level 4. Kasus Covid-19 di Sulawesi Tengah sendiri merupakan  tertinggi di Luar Jawa Bali. Khususnya Kota Palu terdapat 20 dari 46 kelurahan yang masuk dalam level 4 dan berstatus zona merah1. Sebagai akibatnya seluruh perkantoran baik pemerintah maupun swasta menerapkan skema bekerja dari rumah (Work From Home/WFH) perubahan sistem kerja sebagai salah satu kebijakan pemerintah dalam upaya pencegahan Covid-19. WFH merupakan salah satu bentuk dari flexible working, yaitu sebuah konsep sistem kerja jarak jauh, dengan demikian perkantoran hanya boleh mempekerjakan karyawan sebanyak 25% dan karyawan yang melakukan (Work From Home/WFH) sebanyak 75%. Keputusan tersebut berdasarkan surat edaran Wali Kota Palu Nomor : 443/789/HUKUM/2021 tentang Perpanjangan Pemberlakuan Pembatasan Kegiatan Masyarakat (PPKM) LEVEL 4 di Kota Palu, yang merupakan tindak lanjut atas imbauan Presiden Joko Widodo. \n\nMenyikapi situasi saat ini, maka Kementerian Keuangan khususnya Kantor Pelayanan Kekayaan Negara dan Lelang (KPKNL) Palu menetapkan skema WFH dengan melakukan kegiatan pertemuan, rapat, dan sharing melalui Zoom Meeting. Bekerja dari rumah tentunya tetap melakukan pekerjaan kantor seperti biasa, namun tak di pungkiri jika masih ada beberapa pekerjaan yang tidak dapat dilakukan dirumah, seperti pemeriksaan kelengkapan berkas dan kebutuhan pelayanan yang harus dilakukan secara tatap muka.\n\nKebijakan yang diberlakukan secara mendadak ini tentu saja menjadi tantangan bagi Aparatur Sipil Negara (ASN) dalam pelaksanaannya. Dibutuhkan kesiapan sumber daya dan infrastruktur untuk mendukung efektivitas pelaksanaan kebijakan ini. Bagaimanapun, implementasi WFH pada ASN bukanlah disebabkan karena budaya kerja fleksibel yang tertanam sejak awal di instansi pemerintah, namun lebih dikarenakan adanya tuntutan pencegahan penyebaran Covid-19. Disamping itu, budaya kerja baru bagi ASN ini dipastikan memberikan dampak positif dan negatif yang dirasakan (Dampak Positif, Dampak Negatif dan Produktivitas Pegawai, 2020).\n\nDampak Positif yang dapat dirasakan saat melakukan (Work From Home/WFH)  :\n\n·       Keleluasaan menentukan jadwal kerja (Fleksibilitas)\n\nSistem kerja WFH memberikan seseorang kebebasan dalam mengatur jam kerja, tidak terikat oleh waktu yang ditentukan sehingga memberikan dampak yang positif terhadap hasil kerja.\n\n·       Berkurangnya biaya perjalanan\n\nSistem kerja WFH nyatanya memberikan penghematan biaya dikarenakan pegawai tidak perlu menghabiskan waktu dalam perjalanan dari rumah menuju ke kantor dan juga sebaliknya.\n\n·       Berkurangnya tingkat ketidakhadiran dan keterlambatan\n\nDengan menggunakan sistem kerja WFH pegawai dapat mengerjakan pekerjaan dengan santai dan tidak terikat oleh waktu untuk sampai ke tempat kerja\n\n·       Dapat menghindari kontak langsung dengan orang lain\n\nMenjalankan WFH tentu saja cara yang dapat mengurangi untuk kontak langsung dengan orang lain, sehingga dapat meminimalisir penularan Covid-19\n\nDampak negatif yang dapat dirasakan saat melakukan (Work From Home/WFH) :\n\n·       Terbatasnya pengalaman belajar langsung (on-the-job) dan berkurangnya transfer pengetahuan secara langsung\n\nMenjalankan WFH tentu saja tidak dapat melakukan komunikasi dengan maksimal dalam melakukan pekerjaan, dan pengalaman yang didapatkan sungguh sangat terbatas.\n\n·       Terkendala oleh jaringan internet\n\nDengan sistem WFH terkendala oleh jaringan internet merupakan hal yang sering terjadi, karena terkadang fasilitas yang di ada dirumah tidak selengkap fasilitas kerja saat di kantor\n\n·       Kesulitan membedakan antara waktu kerja dan urusan pribadi\n\nRisiko lain dari pelaksanaan WFH adalah tidak dipungkiri bahwa seseorang dapat melakukan pekerjaan kantor bersamaan dengan pekerjaan rumah sehingga terdapat gangguan dalam menyelesaikan pekerjaan\n\nPerubahan saat ini dalam tatanan kerja akibat Covid-19 menuntut ASN untuk beradaptasi sehingga tetap produktif. Meskipun pada awalnya sistem kerja WFH dilakukan sebagai respon pencegahan penyebaran Covid-19, namun pada akhirnya hal tersebut akan menjadi sebuah bagian dari tatanan kehidupan normal yang baru. Faktanya hingga kini pendemi Covid-19 masih belum berakhir, hingga saat ini kajian mengenai durasi pandemi hanya berupa prediksi, namun semua itu dikembalikan kepada faktor perilaku pemerintah dan masyarakat dalam menghadapi pandemi. Namun, mari hadapi situasi ini dengan menerapkan protokol kesehatan dan vaksinasi yang sedang digalakkan pemerintah dalam bentuk perlindungan diri dari terpapar Covid-19, karena perjuangan melawan Covid-19 merupakan wujud yang dimulai dari diri sendiri.\n\n \n\nPenulis : Tim Seksi Hukum dan Informasi', NULL, 'https://asset.kompas.com/crops/449sJI_1iwiU-gqbjUI-aWpCxrg=/283x0:726x295/750x500/data/photo/2022/08/11/62f44a9fbe2f9.jpg', '2022-09-01 08:54:57', '2022-09-01 07:17:29', '2022-09-01 01:51:50', 'Rizky Haris Risaldi', 'Rizky Haris Risaldi');

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
(1, 'Lunartechno.id', '081234567890', 'Jalan Tanah Abang III No. 6', '-6.176662629206363, 106.81791454553606', 'Central Jakarta', 'Indonesia', 'lunartechno.id@lunartechno.id', 1, '2022-08-09 03:21:32', '2022-08-30 02:26:59', 'Rizky Haris Risaldi', 'Rizky Haris Risaldi'),
(2, 'THE OYI UTAPES', '081234567890', 'Jalan Minangkabau Timur Raya', '-6.208799978625688, 106.84559997171164', 'South Jakarta', 'Indonesia', 'theoyiutapes@theoyi.com', 1, '2022-08-09 03:23:25', '2022-08-30 01:25:37', 'Ical Oyi', 'Ical Oyi');

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
(2, 1, 'Trump Diam Saja Saat 6 Jam Diperiksa Jaksa Agung New York', 'Mantan Presiden Amerika Serikat (AS) Donald Trump pada Rabu (10/8/2022) menolak menjawab pertanyaan di bawah sumpah tentang dugaan penipuan di bisnis keluarganya. Trump berdalih, dia tidak punya pilihan selain menerapkan Amendemen Kelima yang mengizinkan individu tetap diam selama interogasi. Trump diperiksa selama enam jam di kantor Jaksa Agung New York di Manhattan.', 'kompas.com/global/read/2022/08/11/131300470/trump-diam-saja-saat-6-jam-diperiksa-jaksa-agung-new-york', 'https://asset.kompas.com/crops/449sJI_1iwiU-gqbjUI-aWpCxrg=/283x0:726x295/750x500/data/photo/2022/08/11/62f44a9fbe2f9.jpg', '2022-08-11 07:14:59', '2022-08-11 07:14:59', 'Rizky Haris Risaldi', 'Rizky Haris Risaldi'),
(3, 2, 'Kepulauan Solomon Abaikan Permintaan Isi Bahan Bakar Kapal Penjaga Pantai AS', 'HONIARA - Sebuah kapal penjaga pantai Amerika Serikat (AS) tidak dapat melakukan kunjungan rutin ke pelabuhan di Kepuluan Solomon . Penyebabnya, pemerintah negara itu tidak merespons permintaan untuk mengisi bahan bakar dan logistik. Kapal penjaga pantai AS, USCGC Oliver Henry, sedang berpatroli untuk penangkapan ikan ilegal di Pasifik Selatan untuk agen perikanan regional ketika gagal mendapatkan akses untuk mengisi bahan bakar di Honiara, ibu kota Kepulauan Solomon.', 'https://international.sindonews.com/read/867233/40/kepulauan-solomon-abaikan-permintaan-isi-bahan-bakar-kapal-penjaga-pantai-as-1661497706', 'https://pict.sindonews.net/dyn/732/pena/news/2022/08/26/40/867233/kepulauan-solomon-abaikan-permintaan-isi-bahan-bakar-kapal-penjaga-pantai-as-egt.jpg', '2022-08-26 08:21:10', '2022-08-26 08:21:10', 'Ical Oyi', 'Ical Oyi'),
(4, 1, 'Liga Inggris: Jurgen Klopp Dapat Peringatan, Liverpool Sedang Tidak Baik-baik Saja', 'Bola.com, Jakarta - Mantan bintang Tottenham Hotspur dan Chelsea, Glenn Hoddle memperingatkan Jurgen Klopp bahwa situasi Liverpool sekarang tidak baik.\n\nThe Reds mengalami awal terburuk dalam satu musim dalam sejarah Premier League, tanpa kemenangan dalam tiga pertandingan pembukaa. Skuad asuhan Jurgen Klopp baru memetik dua poin setelah bermain imbang melawan Fulham dan Crystal Palace sebelum kekalahan dari Manchester United.', 'https://www.bola.com/inggris/read/5052555/liga-inggris-jurgen-klopp-dapat-peringatan-liverpool-sedang-tidak-baik-baik-saja', NULL, '2022-08-26 10:04:31', '2022-08-26 10:04:31', 'Rizky Haris Risaldi', 'Rizky Haris Risaldi'),
(5, 1, 'Bekerja dari Rumah (Work From Home/WFH) : Menghadapi COVID-19 pada PPKM Level 4', 'Sejak merebaknya Covid-19 di Indonesia, seluruh kegiatan sehari hari yang dilakukan memiliki batasan dan aturan yang harus dipatuhi. Pemerintah mengambil beberapa langkah dalam mengatasi Covid-19 seperti penerapan Pembatasan Sosial Berskala Besar (PSBB) hingga penerapan Pemberlakuan Pembatasan Kegiatan Masyarakat (PPKM) Level 4. Kasus Covid-19 di Sulawesi Tengah sendiri merupakan  tertinggi di Luar Jawa Bali. Khususnya Kota Palu terdapat 20 dari 46 kelurahan yang masuk dalam level 4 dan berstatus zona merah1. Sebagai akibatnya seluruh perkantoran baik pemerintah maupun swasta menerapkan skema bekerja dari rumah (Work From Home/WFH) perubahan sistem kerja sebagai salah satu kebijakan pemerintah dalam upaya pencegahan Covid-19. WFH merupakan salah satu bentuk dari flexible working, yaitu sebuah konsep sistem kerja jarak jauh, dengan demikian perkantoran hanya boleh mempekerjakan karyawan sebanyak 25% dan karyawan yang melakukan (Work From Home/WFH) sebanyak 75%. Keputusan tersebut berdasarkan surat edaran Wali Kota Palu Nomor : 443/789/HUKUM/2021 tentang Perpanjangan Pemberlakuan Pembatasan Kegiatan Masyarakat (PPKM) LEVEL 4 di Kota Palu, yang merupakan tindak lanjut atas imbauan Presiden Joko Widodo. \n\nMenyikapi situasi saat ini, maka Kementerian Keuangan khususnya Kantor Pelayanan Kekayaan Negara dan Lelang (KPKNL) Palu menetapkan skema WFH dengan melakukan kegiatan pertemuan, rapat, dan sharing melalui Zoom Meeting. Bekerja dari rumah tentunya tetap melakukan pekerjaan kantor seperti biasa, namun tak di pungkiri jika masih ada beberapa pekerjaan yang tidak dapat dilakukan dirumah, seperti pemeriksaan kelengkapan berkas dan kebutuhan pelayanan yang harus dilakukan secara tatap muka.\n\nKebijakan yang diberlakukan secara mendadak ini tentu saja menjadi tantangan bagi Aparatur Sipil Negara (ASN) dalam pelaksanaannya. Dibutuhkan kesiapan sumber daya dan infrastruktur untuk mendukung efektivitas pelaksanaan kebijakan ini. Bagaimanapun, implementasi WFH pada ASN bukanlah disebabkan karena budaya kerja fleksibel yang tertanam sejak awal di instansi pemerintah, namun lebih dikarenakan adanya tuntutan pencegahan penyebaran Covid-19. Disamping itu, budaya kerja baru bagi ASN ini dipastikan memberikan dampak positif dan negatif yang dirasakan (Dampak Positif, Dampak Negatif dan Produktivitas Pegawai, 2020).\n\nDampak Positif yang dapat dirasakan saat melakukan (Work From Home/WFH)  :\n\n·       Keleluasaan menentukan jadwal kerja (Fleksibilitas)\n\nSistem kerja WFH memberikan seseorang kebebasan dalam mengatur jam kerja, tidak terikat oleh waktu yang ditentukan sehingga memberikan dampak yang positif terhadap hasil kerja.\n\n·       Berkurangnya biaya perjalanan\n\nSistem kerja WFH nyatanya memberikan penghematan biaya dikarenakan pegawai tidak perlu menghabiskan waktu dalam perjalanan dari rumah menuju ke kantor dan juga sebaliknya.\n\n·       Berkurangnya tingkat ketidakhadiran dan keterlambatan\n\nDengan menggunakan sistem kerja WFH pegawai dapat mengerjakan pekerjaan dengan santai dan tidak terikat oleh waktu untuk sampai ke tempat kerja\n\n·       Dapat menghindari kontak langsung dengan orang lain\n\nMenjalankan WFH tentu saja cara yang dapat mengurangi untuk kontak langsung dengan orang lain, sehingga dapat meminimalisir penularan Covid-19\n\nDampak negatif yang dapat dirasakan saat melakukan (Work From Home/WFH) :\n\n·       Terbatasnya pengalaman belajar langsung (on-the-job) dan berkurangnya transfer pengetahuan secara langsung\n\nMenjalankan WFH tentu saja tidak dapat melakukan komunikasi dengan maksimal dalam melakukan pekerjaan, dan pengalaman yang didapatkan sungguh sangat terbatas.\n\n·       Terkendala oleh jaringan internet\n\nDengan sistem WFH terkendala oleh jaringan internet merupakan hal yang sering terjadi, karena terkadang fasilitas yang di ada dirumah tidak selengkap fasilitas kerja saat di kantor\n\n·       Kesulitan membedakan antara waktu kerja dan urusan pribadi\n\nRisiko lain dari pelaksanaan WFH adalah tidak dipungkiri bahwa seseorang dapat melakukan pekerjaan kantor bersamaan dengan pekerjaan rumah sehingga terdapat gangguan dalam menyelesaikan pekerjaan\n\nPerubahan saat ini dalam tatanan kerja akibat Covid-19 menuntut ASN untuk beradaptasi sehingga tetap produktif. Meskipun pada awalnya sistem kerja WFH dilakukan sebagai respon pencegahan penyebaran Covid-19, namun pada akhirnya hal tersebut akan menjadi sebuah bagian dari tatanan kehidupan normal yang baru. Faktanya hingga kini pendemi Covid-19 masih belum berakhir, hingga saat ini kajian mengenai durasi pandemi hanya berupa prediksi, namun semua itu dikembalikan kepada faktor perilaku pemerintah dan masyarakat dalam menghadapi pandemi. Namun, mari hadapi situasi ini dengan menerapkan protokol kesehatan dan vaksinasi yang sedang digalakkan pemerintah dalam bentuk perlindungan diri dari terpapar Covid-19, karena perjuangan melawan Covid-19 merupakan wujud yang dimulai dari diri sendiri.\n\n \n\nPenulis : Tim Seksi Hukum dan Informasi', 'https://www.djkn.kemenkeu.go.id/kpknl-palu/baca-artikel/14156/Bekerja-dari-Rumah-Work-From-HomeWFH-Menghadapi-COVID-19-pada-PPKM-Level-4.html', 'https://www.djkn.kemenkeu.go.id/files/images/2021/08/3fc9d680-7416-4ed9-bcfe-0eced2f3c35e-min2.jpg', '2022-09-01 07:09:14', '2022-09-01 07:09:14', 'Rizky Haris Risaldi', 'Rizky Haris Risaldi');

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
('0a2cedfed018bd6b8d269b66c1fa94f7e68e9cb99cc00ee71f870f97fc136046214e3097767bef10', 2, 1, 'dataPegawai', '[]', 1, '2022-08-26 00:40:13', '2022-08-26 00:40:13', '2022-09-02 07:40:13'),
('0bf266f388c2954ec5a42a3668bb2752cfd142b7ec8106063a14d01255826e6c5f3a310cd5fb963d', 1, 1, 'dataPegawai', '[]', 1, '2022-08-16 00:25:48', '2022-08-16 00:25:48', '2022-08-23 07:25:48'),
('0ff9b0182006d459f05dc4c6341821a9123372c629fc37c11dacf5bf41aa25eaeef765e7623b5e5d', 1, 1, 'dataPegawai', '[]', 1, '2022-08-30 01:27:09', '2022-08-30 01:27:09', '2022-09-06 08:27:09'),
('14fa9ea03cf2968368f31d934181bc75c47465dff0d98be781b3c413ef805d4b7dbd5b5add410174', 1, 1, 'DataPegawai', '[]', 1, '2022-08-08 20:21:33', '2022-08-08 20:21:33', '2022-08-16 03:21:33'),
('16362000575275673b6f5a6c6ea30a9eb1f40b6a807d4fdd09cddf878850f0931c52b5c00d3a5fe6', 1, 1, 'dataPegawai', '[]', 1, '2022-08-26 00:54:25', '2022-08-26 00:54:25', '2022-09-02 07:54:25'),
('1d2c9b5d2119b06e56fb2d87db603c3839d25b06483e7e246c552bc173330fd7da075378bb8ea29b', 2, 1, 'dataPegawai', '[]', 1, '2022-08-31 20:30:47', '2022-08-31 20:30:47', '2022-09-08 03:30:47'),
('234df02cd7bfe4b94fe2f96d8bb292f1ca866475bc3c0cecd6edb23609188d0f37734cc0abead8a9', 1, 1, 'dataPegawai', '[]', 1, '2022-08-16 00:06:46', '2022-08-16 00:06:46', '2022-08-23 07:06:46'),
('242f24e355288d1e33361e9066a9fb1db4beb1e18b855e9f2dd67fd26b15251f1942f72d47111bf7', 1, 1, 'dataPegawai', '[]', 1, '2022-08-09 02:05:14', '2022-08-09 02:05:14', '2022-08-16 09:05:14'),
('427095cb5c812365ed787c1438b089dde0376c412dec0d47febb8cb224f83febbf996a5926c6ed70', 1, 1, 'dataPegawai', '[]', 1, '2022-08-16 00:35:07', '2022-08-16 00:35:07', '2022-08-23 07:35:07'),
('49c36dfbf923a888603d0a5da3335b431d7f063d7fdaf96a23198a8e060b3e9ca64e9f6910b90602', 1, 1, 'dataPegawai', '[]', 1, '2022-08-28 21:37:02', '2022-08-28 21:37:02', '2022-09-05 04:37:02'),
('5366ebd0d5058663347fb13be95a1cc6446f65edf3f1b0e850916c86fa694f00766433ac773c4b86', 1, 1, 'dataPegawai', '[]', 1, '2022-08-15 23:42:45', '2022-08-15 23:42:45', '2022-08-23 06:42:45'),
('5e973d437ed06e3fa764302e175a548f937f5d1208f9bb44767a588c1621caca8e1277dba8c607e9', 1, 1, 'dataPegawai', '[]', 1, '2022-08-11 02:40:14', '2022-08-11 02:40:14', '2022-08-18 09:40:14'),
('68973c744a47e939682f1c20d6dc9ceac2f6dd010ebf9bc3b1dd9e7c3e4db020d74fa46beb00ae07', 1, 1, 'dataPegawai', '[]', 1, '2022-08-16 00:56:07', '2022-08-16 00:56:07', '2022-08-23 07:56:07'),
('73f50e6d6e1f03cdbb7260fdc797edee104b498d90b4d6b339b2f6fe9b41d22465ddd85afec561f9', 1, 1, 'dataPegawai', '[]', 1, '2022-08-16 00:51:47', '2022-08-16 00:51:47', '2022-08-23 07:51:47'),
('7ce731b0f84c2efc02f5a010de9f368d85a1a60821b85ed24ef0dd5acd5660228e2a57a1b1e278b5', 1, 1, 'dataPegawai', '[]', 1, '2022-08-11 01:20:04', '2022-08-11 01:20:04', '2022-08-18 08:20:04'),
('814a7761ffbae86b9d48ba6873555849a20a2557f77ed75073cee42e6278856d9d52e98bb9afb57c', 1, 1, 'dataPegawai', '[]', 1, '2022-08-31 02:27:15', '2022-08-31 02:27:15', '2022-09-07 09:27:15'),
('834abadb36dc97cc7f63236af831b1dd1c41692d95b98060597a16d31e951cacb78c83b248c48037', 1, 1, 'dataPegawai', '[]', 1, '2022-08-28 21:26:10', '2022-08-28 21:26:10', '2022-09-05 04:26:10'),
('859540376cf4593d53c0f2edfcb9299d79887d808822a6184acbe4c0af803535aa24cfe919533318', 1, 1, 'dataPegawai', '[]', 1, '2022-08-28 21:22:23', '2022-08-28 21:22:23', '2022-09-05 04:22:23'),
('875ef93cde9f994e1d89bec5615225a400af5175599598da1a4ae1d13ac0c27af8bfbf4889a7eec9', 4, 1, 'dataPegawai', '[]', 0, '2022-09-01 00:49:06', '2022-09-01 00:49:06', '2022-09-08 07:49:06'),
('88499901b7d17bf2c8079fddb86772747e9fb70303148a2c54f2b6da1683bb044057debafdf2301a', 1, 1, 'dataPegawai', '[]', 1, '2022-08-30 23:54:45', '2022-08-30 23:54:45', '2022-09-07 06:54:45'),
('8ac7dd5ebc3ad213d7b0d08c3b1de13f5581f877f9b07effefb5940f0b7239c0a221461648d35b34', 2, 1, 'dataPegawai', '[]', 1, '2022-08-30 19:58:42', '2022-08-30 19:58:42', '2022-09-07 02:58:42'),
('a3a1c5e0a6d487940ce431b11707087e217eb20b680a07c5e49de8709a6c72641f8229bfa8996213', 1, 1, 'dataPegawai', '[]', 0, '2022-09-01 00:55:53', '2022-09-01 00:55:53', '2022-09-08 07:55:53'),
('a722560d4d52b8390b545c0571ad6b8c71a7f4a06d64d1e7622d040751f0d04a000e1e6afdc53889', 1, 1, 'dataPegawai', '[]', 1, '2022-09-01 00:04:56', '2022-09-01 00:04:56', '2022-09-08 07:04:56'),
('aefa6b4adcacb6725ac687fd5d3453f3525f5f1fccd37986a520c17627214ae557ac73fbabb631ce', 1, 1, 'dataPegawai', '[]', 1, '2022-08-30 01:27:54', '2022-08-30 01:27:54', '2022-09-06 08:27:54'),
('b7fc63aa9dd2a97f6a20ce9292dda8b87833c71d8995b6f701d56b078d65109647d7cfd6ef03fbd2', 2, 1, 'DataPegawai', '[]', 1, '2022-08-08 20:23:26', '2022-08-08 20:23:26', '2022-08-16 03:23:26'),
('b862907cba774e2ab7e8b17ecaf73861271bcc73214cbef24902335ca8c2363a790bc05d0e816921', 1, 1, 'dataPegawai', '[]', 1, '2022-08-28 21:46:01', '2022-08-28 21:46:01', '2022-09-05 04:46:01'),
('b99ad626289359796f68a023e1e592e560169c3ccfbeb22ead8bc2c875608008d3a8d4e9ab5e7967', 1, 1, 'dataPegawai', '[]', 1, '2022-08-23 06:43:09', '2022-08-23 06:43:09', '2022-08-30 13:43:09'),
('bbc43a7fdf9129b28654f051d7330f064c46b1d69b29f64fd0b9d00cfbc9705fbca40456003ab4e9', 2, 1, 'dataPegawai', '[]', 1, '2022-09-01 00:54:28', '2022-09-01 00:54:28', '2022-09-08 07:54:28'),
('cac328cfe188a3c69c2ef523e55cd944cb0f3a3e37df2be7eeb70c7e70d7d19631c0400a970e3c9f', 1, 1, 'dataPegawai', '[]', 1, '2022-08-16 00:11:09', '2022-08-16 00:11:09', '2022-08-23 07:11:09'),
('caed92a9c3adedfdc19496cdde0f2ca5aafe74c9f759d69531cc0abf4b873004fa07edc48e3ad0e6', 1, 1, 'dataPegawai', '[]', 1, '2022-08-11 02:45:13', '2022-08-11 02:45:13', '2022-08-18 09:45:13'),
('d36aafbd73b98ca062e025ee3a9d44fad3dad36f2b30bf6432f249b1be925ad766c5c8583faee67c', 1, 1, 'dataPegawai', '[]', 1, '2022-09-01 00:16:33', '2022-09-01 00:16:33', '2022-09-08 07:16:33'),
('d4a84c59572d43273b5b020aae516d6cbbe9b4448a885e1e9cd73ae96b08f8170ab68253974cee05', 2, 1, 'dataPegawai', '[]', 0, '2022-09-01 01:29:33', '2022-09-01 01:29:33', '2022-09-08 08:29:33'),
('d7d34cb7fd461f2ce99e47f6cc58d01895e36f146b2ae11d2ada4b2c15e4780927e13ee2c3472ed6', 1, 1, 'dataPegawai', '[]', 1, '2022-08-10 23:55:22', '2022-08-10 23:55:22', '2022-08-18 06:55:22'),
('dc900fff59897e88aaf9e8d3949de11e63fcba71f7d12877f183412be1a9ac83bc81dd53ef388674', 1, 1, 'dataPegawai', '[]', 1, '2022-08-31 01:00:38', '2022-08-31 01:00:38', '2022-09-07 08:00:38'),
('e17c021daed1cf331ec3a7d6b77c79f814009333297161f7a311e590f41bc5234e59def4f1a85c7a', 1, 1, 'dataPegawai', '[]', 1, '2022-08-24 01:42:53', '2022-08-24 01:42:53', '2022-08-31 08:42:53'),
('e677f528b5be2d3ccd8c4877e0306ec4ed217db92edc173a2597dc9b938f0b37d623600fbdfa80e2', 1, 1, 'dataPegawai', '[]', 1, '2022-08-09 00:38:24', '2022-08-09 00:38:24', '2022-08-16 07:38:24'),
('fee41fa3ce6dd991b628f38d8afab3a1e1cb3dfa051dc349d7fda651a5b540e3cc94d96c4646d3e0', 1, 1, 'dataPegawai', '[]', 1, '2022-09-01 00:00:53', '2022-09-01 00:00:53', '2022-09-08 07:00:53'),
('ff46c826b2867bdbfcedd3f9b6f7c8ee25580557fe85edc278b7f6e46ecb861e83e01a6f84fa0784', 1, 1, 'dataPegawai', '[]', 1, '2022-09-01 00:24:38', '2022-09-01 00:24:38', '2022-09-08 07:24:38');

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
(1, 'Rizky Haris Risaldi', 'r.harisrisaldi@lunartechno.id', NULL, '081234567890', '1996-05-23', '2022-08-09', 1, 10, 29, 1, NULL, '$2y$10$0jtigmkYhK.K7ojyAhljduJ3YQfhOfjCmLSFFQBE9WKBFpOjm1/1u', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYTNhMWM1ZTBhNmQ0ODc5NDBjZTQzMWIxMTcwNzA4N2UyMTdlYjIwYjY4MGEwN2M1ZTQ5ZGU4NzA5YTZjNzI2NDFmODIyOWJmYTg5OTYyMTMiLCJpYXQiOjE2NjIwMTg5NTMuNDEyODE3LCJuYmYiOjE2NjIwMTg5NTMuNDEyODE5LCJleHAiOjE2NjI2MjM3NTMuNDEwNTM5LCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.kU_tA6IXZXnyUaJlVKt7YzGqL-sKmNqX1iu28QbExTsY1kow6zz15_6lEW_EaP3UBm-Rm0EcBXAnFZ7AFiCD_x-SUiYrhRtpSJQNxFoh-9jg-tVv4wkkd8Y_uF8c7FBd2M6sSHjh_bQlw2f5YLzRBJ81QZcbT5hlri-cTJazFeopUV_x3oB2fF-UG9eielr2fhOd3Kd1noAFNAvcP9e11pXXGgSlhZXj6gkPjpA4JyjwCQFno8mWfGqv7UENkXh4EX12dsad2NxQWXst08IexVia5zSxLcHq5H1mPyG6XNH-E8AmM-zzR-q9s09Gzkt_6yNB1w2uhz0otvCJq01FGBE3jBZaWuQvoPPkdB5mUEuQSV7H8qNs509Hc2HkY_0S0DTJuqDZ8sQfy3km0W8H0XCElNo4ea1R-_IEFfmZzqAedalVsuoCumxBIrNiI8GTqfVU7fFUSX53dODFHbjswthYIX5po6vb2PzT4G5kO9rvOCZFdWuvHv72GhPMvLHWU9vtpUDH0g2gXR_jETzneMtZjGDXogeyX3Hogt5IfkGYiAINzpBKh-zbnzoldsletew72UNM_ybBONXx4sUVRD_3l5p5cA7izS4BlZ7W3eC9MjrEU7lwdfuYyhL41TMYS7O75ex-4rK3oIe9zIirvODTOH_GWdHz9pN8Kergaoc', 1, '2022-08-09 03:21:33', '2022-09-01 00:55:53', 'Rizky Haris Risaldi', 'Rizky Haris Risaldi', '1'),
(2, 'Ical Oyi', 'ical.oyi@theoyi.com', NULL, '081234567890', NULL, '2022-08-09', 2, 3, 8, 1, NULL, '$2y$10$Y8Y7xapPItwo90gXZGxZZ.r6k8f1amfKGL.AWPNIHAdyK2RfAmDWC', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZDRhODRjNTk1NzJkNDMyNzNiNWIwMjBhYWU1MTZkNmNiYmU5YjQ0NDhhODg1ZTFlOWNkNzNhZTk2YjA4ZjgxNzBhYjY4MjUzOTc0Y2VlMDUiLCJpYXQiOjE2NjIwMjA5NzMuMjc0NzU3LCJuYmYiOjE2NjIwMjA5NzMuMjc0NzU5LCJleHAiOjE2NjI2MjU3NzMuMjcwNTc5LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.Ste4vmc8gXkSTvYM6PjPQoS0HPCsawMwgPRHYaAkPORADxG6HgLYAIumxsHDIQMY5YSeJSpv4fP6V4yp8pKh5i9AZsrWTC8uR-KN29HjZC8O1ov3iqWpsHdsP6gS4iujLGoP16izL5b7eq0FkHcXK8g_XDXb93ApmHJAibWxD_mzGThP8ZwYI0BW450DquIL6ZIFd32y1JKYiQsTP7gJU1sUFFDQybCmqQp8-QUuSLrZafv78c30gj8Tb5Yox7iX5S8TyOPkcKVZB58YKdHwPWfZmWqG1AaHeW8hR6We4qSiCxm3keSCf95ZnlmP_ccpwaJipG-mRYFKUMENJ4D2POPVGUJk_1PA2Yfw6ds1IhUh8BDuiPhc-b-e3mOcHY4j8DnTWMRwHEptKXpkLVlnFmH-qMA8LDD_DFRjTCDc18v31CrTK-sLYmfqnEXGl5jRIFQHtZC3y9i2r1w8gA5toaK0fjAAS42n1OWlDEeaAjsPhcE-EV0bkMiutYfSIkt_c-7-MrJlbFLm2gOeAiJHJVq4dlTvbTAZlOCcqX2ZZtcFmRvO3zPhK-32qj5wIX06orkKcPQF31ukHbsc3hAbu98on05ZWLqADdhXnaYMqHCXXBIzio3F5Llynuf2XZWjKj5uzJrmOEWdOG3tHmFjW9C_QPyQhMGUThYYNwUVWiY', 1, '2022-08-09 03:23:26', '2022-09-01 01:29:33', 'Ical Oyi', 'Ical Oyi', '2'),
(3, 'Ical Risaldi', 'ical.risaldi@theoyi.co.id', NULL, '081234567890', NULL, '2022-08-09', 2, 3, 7, 3, NULL, '$2y$10$6Af3ZdveOWkZzuMwhgsHXO7PvnIdv7kLlzlCdeN/N3/oJF0sCfwz2', NULL, 1, '2022-08-09 07:36:59', '2022-08-09 00:37:24', 'Ical Oyi', 'Ical Oyi', '3'),
(4, 'Ical Risaldi', 'r.harisrisaldi@theoyi.com', NULL, '081234567890', NULL, NULL, 1, 10, 30, 3, NULL, '$2y$10$ALzps6jD2hySlbwnDCi9QuZqSYRtNa5.lQPW3C8nmMmyS3v6pf/Wu', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiODc1ZWY5M2NkZTlmOTk0ZTFkODliZWM1NjE1MjI1YTQwMGFmNTE3NTU5OTU5OGRhMWE0YWUxZDEzYWMwYzI3YWY4YmZiZjQ4ODlhN2VlYzkiLCJpYXQiOjE2NjIwMTg1NDYuNjMzMzMxLCJuYmYiOjE2NjIwMTg1NDYuNjMzMzMyLCJleHAiOjE2NjI2MjMzNDYuNjI2NjI3LCJzdWIiOiI0Iiwic2NvcGVzIjpbXX0.jUDleqwVSG98WsuKrcZWR42WRA6rRXCHRw34_ykl7CmxfeZ0Tg7XLLXAf7pKSk1MmftyXqE2EPwJTERx3DdItxYAOZVjoKeb7wQ7kD3FX33tCGBxCg2QAnZgtT5zeAdgPm9ESSs6j5iyGvZ3U6ml3Un52vkq1s1hbDCH5tRsoIH-3G3pw2geXnHBtEviQry4_Segx85P8PAsIoWURFClqOg7cPBAO8QCCyLyN-AMEZCIkV8TOZK8Yp3mhm5wQjMyPOQsWGr-qnk0AGp3CusBYJM1aTOxf152QqtOPsISOP27B4ssVB6We4r4ffR8z2Lo4LYjjwzdCH0iZpG0lr1zCw-wj_TMcECFgIvCe4YmB2rXfQZ_CRfdzKrsp2XOL0wt9_-qce71aMlxk2ieoffTTtttq1CvfI5mdco2cAUKrVfsp12SxIoyuU80TOUgNyi60Is1UTvnJo4fUwyyPHF3EDtX856DPdDIio7Cjw6K1hkP0q1IMiWNOvnhmerkakSiJm9z9CQqL5awBfws6OpnWbzWMvDbY8e_5uxRVnMnDvntvJ8RRBCTURGLC2fUlwnmnr6jftL8cjLms8uUMGNlD8gy1U8DBw01u-b-mlTZMMm9qtE9InZ5l6QJmHjXplhmsrW_yhCNPk2juVD_ZNypvTfoiB7nvnLi_EgrXk03rxk', 1, '2022-09-01 07:48:09', '2022-09-01 00:49:06', 'Rizky Haris Risaldi', 'Rizky Haris Risaldi', '4');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
