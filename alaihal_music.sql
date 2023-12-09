-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 09, 2023 at 12:49 PM
-- Server version: 10.3.37-MariaDB-cll-lve
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alaihal_music`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `releasedate` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL,
  `public` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `name`, `releasedate`, `image`, `slug`, `pid`, `public`, `created_at`, `updated_at`) VALUES
(2, 'Maindhanagiya Kadavul', NULL, 'maindhanagiya-kadavul.jpg', 'maindhanagiya-kadavul', 2, 1, '2023-12-05 06:13:59', '2023-12-05 06:13:59'),
(3, 'Thirithuva Kadavul', NULL, 'thirithuva-kadavul.jpg', 'thirithuva-kadavul', 2, 1, '2023-12-05 06:20:42', '2023-12-05 06:20:59'),
(4, 'Keerthanaigal', NULL, 'keerthanaigal.png', 'keerthanaigal', 3, 1, '2023-12-05 06:21:48', '2023-12-05 07:36:31'),
(5, 'Madha Song', NULL, 'madha-song.png', 'madha-song', 3, 1, '2023-12-05 06:22:25', '2023-12-05 07:36:12');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(128) DEFAULT NULL,
  `country` varchar(32) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `website` varchar(128) DEFAULT NULL,
  `facebook` varchar(256) DEFAULT NULL,
  `twitter` varchar(256) DEFAULT NULL,
  `instagram` varchar(256) DEFAULT NULL,
  `youtube` varchar(256) DEFAULT NULL,
  `telegram` varchar(256) DEFAULT NULL,
  `public` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `description`, `image`, `country`, `city`, `website`, `facebook`, `twitter`, `instagram`, `youtube`, `telegram`, `public`, `created_at`, `updated_at`) VALUES
(2, 'Swarnalatha', NULL, 'MTvPn0NhIpaRi10MiupA0obvtN4uWtdGxyjtztcU.png', 'India', 'Chennai', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-12-05 08:07:04', '2023-12-05 08:07:04'),
(3, 'John Jebaraj', NULL, 'zmZM7uv8Jn8W8XTiRydz3HPH3HTjvcCejUhimoRk.png', 'India', 'Nagai', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-12-05 08:07:35', '2023-12-05 08:07:35'),
(4, 'KrishnaRaj', NULL, '8bi6fitrlQtGounoqREihnrcNEzpJ8YIZNDVZ6uq.png', 'India', 'Coimbatore', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-12-05 08:08:03', '2023-12-05 08:08:03'),
(5, 'Prem Kumar', NULL, 'oatrjmKEru0Mt0UY4BSbF8qpHaRMeKBuxZ4lDxy6.png', 'India', 'Tiruchirapalli', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-12-05 08:08:30', '2023-12-05 08:08:30');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `uid`, `tid`, `message`, `created_at`, `updated_at`) VALUES
(1, 3, 11, 'hii', '2023-12-05 11:41:54', '2023-12-05 11:41:54');

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `by` int(11) NOT NULL,
  `track` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `downloads`
--

INSERT INTO `downloads` (`id`, `by`, `track`, `time`) VALUES
(1, 3, 11, '2023-12-05 17:07:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `by` int(11) NOT NULL,
  `track` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `by`, `track`, `time`) VALUES
(2, 2, 4, '2023-11-14 04:41:37'),
(3, 3, 11, '2023-12-05 17:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_24_094857_create_tracks_table', 1),
(6, '2023_06_24_095100_create_artists_table', 1),
(7, '2023_06_24_095313_create_views_table', 1),
(8, '2023_06_24_095333_create_downloads_table', 1),
(9, '2023_06_24_095418_create_likes_table', 1),
(10, '2023_06_24_095447_create_comments_table', 1),
(11, '2023_06_24_095521_create_playlists_table', 1),
(12, '2023_06_24_095548_create_playlistentries_table', 1),
(13, '2023_06_24_095618_create_relations_table', 1),
(14, '2023_06_24_095655_create_reports_table', 1),
(15, '2023_06_24_095741_create_settings_table', 1),
(16, '2023_06_26_031110_create_users_table', 1),
(17, '2023_07_05_022243_create_productions_table', 1),
(18, '2023_07_05_140624_create_albums_table', 1),
(19, '2023_07_17_015019_create_pages_table', 1),
(20, '2023_07_19_075428_create_app_widgets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'Alaihal Music', 'e2bf4ada6d9ec1eb2b6556221b404b15600d7f8ce36f52be63ce38178b62b640', '[\"*\"]', '2023-11-29 10:39:34', NULL, '2023-11-13 23:10:19', '2023-11-29 10:39:34'),
(2, 'App\\Models\\User', 3, 'Alaihal Music', 'b1a14c951a19c8c56e92d8b15f4cb8a329e775f30a246412315a88625810232c', '[\"*\"]', '2023-12-05 11:56:28', NULL, '2023-12-01 22:32:47', '2023-12-05 11:56:28'),
(3, 'App\\Models\\User', 4, 'Alaihal Music', '8cd98f139e99fab51c18634addcc2f86caab17bf3a636e6b26bb892958de879d', '[\"*\"]', '2023-12-05 11:26:00', NULL, '2023-12-05 11:21:45', '2023-12-05 11:26:00'),
(4, 'App\\Models\\User', 5, 'Alaihal Music', '6b22d0928b79ccc1215d5922d2fd98d56e08758abbbf05fd958504316259da64', '[\"*\"]', '2023-12-07 21:49:51', NULL, '2023-12-05 12:21:49', '2023-12-07 21:49:51'),
(5, 'App\\Models\\User', 6, 'Alaihal Music', '7bf08d81db0e41b1a831f655ec0ca56ffdc9c38004e07c5d587cc8b1ec9cec20', '[\"*\"]', '2023-12-08 01:33:34', NULL, '2023-12-08 01:32:57', '2023-12-08 01:33:34');

-- --------------------------------------------------------

--
-- Table structure for table `playlistentries`
--

CREATE TABLE `playlistentries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `playlist` int(11) NOT NULL,
  `track` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `playlistentries`
--

INSERT INTO `playlistentries` (`id`, `playlist`, `track`) VALUES
(7, 4, 11),
(8, 5, 11);

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `by` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(512) DEFAULT NULL,
  `public` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `by`, `name`, `description`, `image`, `public`, `created_at`, `updated_at`) VALUES
(4, 3, 'Jesus', NULL, NULL, 1, '2023-12-05 11:44:12', '2023-12-05 11:44:12'),
(5, 3, 'Jesus', NULL, NULL, 2, '2023-12-05 11:44:45', '2023-12-05 11:51:47');

-- --------------------------------------------------------

--
-- Table structure for table `productions`
--

CREATE TABLE `productions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `public` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productions`
--

INSERT INTO `productions` (`id`, `name`, `image`, `slug`, `public`, `created_at`, `updated_at`) VALUES
(2, 'Alaihal Music', 'VZVJbacDn4pm9Ks1DqplHQ9MP8xthTl1EcaxlTqD.png', 'Alaihal', 1, '2023-12-05 05:26:47', '2023-12-05 05:59:20'),
(3, 'Irai Alaihal', '1NXXDRvamOWCpgch3aFoIhDrT6cRB2iVZzU3whrt.jpg', 'Irai', 1, '2023-12-05 05:59:05', '2023-12-05 05:59:05');

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `leader` int(11) NOT NULL,
  `subscriber` int(11) NOT NULL,
  `type` varchar(16) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `relations`
--

INSERT INTO `relations` (`id`, `leader`, `subscriber`, `type`, `time`) VALUES
(1, 2, 3, 'artist', '2023-12-05 17:06:42'),
(2, 2, 6, 'artist', '2023-12-08 07:03:17');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `track` varchar(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `content` text NOT NULL,
  `type` int(11) NOT NULL,
  `reason` tinyint(4) NOT NULL,
  `by` int(11) NOT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `title` varchar(64) NOT NULL,
  `logo` varchar(128) NOT NULL,
  `tagline` varchar(128) NOT NULL,
  `paginate` int(11) NOT NULL,
  `m_per_page` int(11) NOT NULL,
  `e_per_page` int(11) NOT NULL,
  `s_per_page` int(11) NOT NULL,
  `mail` int(11) NOT NULL,
  `email_activation` tinyint(4) NOT NULL,
  `smtp_email` int(11) NOT NULL,
  `smtp_host` varchar(128) DEFAULT NULL,
  `smtp_port` int(11) NOT NULL,
  `smtp_encryption` varchar(32) NOT NULL,
  `smtp_username` varchar(128) DEFAULT NULL,
  `smtp_password` varchar(128) DEFAULT NULL,
  `locale` varchar(32) NOT NULL,
  `timezone` varchar(32) NOT NULL,
  `android_interstitial_ad` mediumtext DEFAULT NULL,
  `android_max_interstitial_ad_click` mediumtext NOT NULL,
  `android_app_open_ad` mediumtext DEFAULT NULL,
  `ios_interstitial_ad` mediumtext DEFAULT NULL,
  `ios_max_interstitial_ad_click` mediumtext NOT NULL,
  `ios_app_open_ad` mediumtext DEFAULT NULL,
  `android_interstitial_status` int(11) NOT NULL,
  `android_app_open_status` int(11) NOT NULL,
  `ios_interstitial_status` int(11) NOT NULL,
  `ios_app_open_status` int(11) NOT NULL,
  `facebook` varchar(256) DEFAULT NULL,
  `twitter` varchar(256) DEFAULT NULL,
  `instagram` varchar(256) DEFAULT NULL,
  `youtube` varchar(256) DEFAULT NULL,
  `telegram` varchar(256) DEFAULT NULL,
  `tos_url` varchar(128) DEFAULT NULL,
  `privacy_url` varchar(128) DEFAULT NULL,
  `cookie_url` varchar(128) DEFAULT NULL,
  `ps_url` varchar(256) DEFAULT NULL,
  `as_url` varchar(256) DEFAULT NULL,
  `custom_js` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`title`, `logo`, `tagline`, `paginate`, `m_per_page`, `e_per_page`, `s_per_page`, `mail`, `email_activation`, `smtp_email`, `smtp_host`, `smtp_port`, `smtp_encryption`, `smtp_username`, `smtp_password`, `locale`, `timezone`, `android_interstitial_ad`, `android_max_interstitial_ad_click`, `android_app_open_ad`, `ios_interstitial_ad`, `ios_max_interstitial_ad_click`, `ios_app_open_ad`, `android_interstitial_status`, `android_app_open_status`, `ios_interstitial_status`, `ios_app_open_status`, `facebook`, `twitter`, `instagram`, `youtube`, `telegram`, `tos_url`, `privacy_url`, `cookie_url`, `ps_url`, `as_url`, `custom_js`) VALUES
('Alaihal Music', 'logo.png', 'Christian Songs Platform', 10, 50, 10, 25, 1, 0, 0, NULL, 0, 'tls', NULL, NULL, 'en', 'UTC', 'ca-app-pub-3940256099942544/1033173712', '5', 'ca-app-pub-3940256099942544/3419835294', 'ca-app-pub-3940256099942544/4411468910', '5', 'ca-app-pub-3940256099942544/5662855259', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE `tracks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `artist_id` varchar(255) NOT NULL,
  `title` varchar(128) NOT NULL,
  `description` text DEFAULT NULL,
  `name` varchar(512) NOT NULL,
  `album_id` int(11) NOT NULL,
  `art` varchar(512) NOT NULL,
  `lyric` varchar(512) NOT NULL,
  `release` timestamp NULL DEFAULT NULL,
  `size` int(11) NOT NULL,
  `download` int(11) NOT NULL,
  `public` int(11) NOT NULL DEFAULT 1,
  `likes` int(11) NOT NULL DEFAULT 0,
  `downloads` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`id`, `artist_id`, `title`, `description`, `name`, `album_id`, `art`, `lyric`, `release`, `size`, `download`, `public`, `likes`, `downloads`, `views`, `created_at`, `updated_at`) VALUES
(6, '2', 'Neeye Nirandharam', '', 'Irai/madha-song/neeye-nirandharam.mp3', 5, 'Irai/madha-song/neeye-nirandharam.png', '', NULL, 5840877, 1, 1, 0, 0, 1, '2023-12-05 08:10:17', '2023-12-05 08:25:40'),
(7, '3', 'Azhaikirar Yesu Andavar', '', 'Alaihal/thirithuva-kadavul/azhaikirar-yesu-andavar.mp3', 3, 'Alaihal/thirithuva-kadavul/azhaikirar-yesu-andavar.png', '', NULL, 4633662, 1, 1, 0, 0, 0, '2023-12-05 08:11:42', '2023-12-05 08:11:42'),
(8, '4', 'Ulagamellam', '', 'Irai/keerthanaigal/ulagamellam.mp3', 4, 'Irai/keerthanaigal/ulagamellam.png', '', NULL, 5044824, 1, 1, 0, 0, 1, '2023-12-05 08:12:48', '2023-12-05 11:28:15'),
(9, '5', 'Andavarai Naan', '', 'Alaihal/maindhanagiya-kadavul/andavarai-naan.mp3', 2, 'Alaihal/maindhanagiya-kadavul/andavarai-naan.png', '', NULL, 4443510, 1, 1, 0, 0, 2, '2023-12-05 08:13:40', '2023-12-05 08:35:50'),
(10, '2', 'Nandri Koori', '', 'Alaihal/maindhanagiya-kadavul/nandri-koori.mp3', 2, 'Alaihal/maindhanagiya-kadavul/nandri-koori.png', '', NULL, 4022340, 1, 1, 0, 0, 1, '2023-12-05 08:14:38', '2023-12-05 08:32:05'),
(11, '3', 'Saranalayam', '', 'Alaihal/maindhanagiya-kadavul/saranalayam.mp3', 2, 'Alaihal/maindhanagiya-kadavul/saranalayam.png', '', NULL, 6153627, 1, 1, 1, 1, 3, '2023-12-05 08:15:35', '2023-12-08 02:37:37'),
(12, '3', 'Ovvoru Pakirvum', '', 'Alaihal/maindhanagiya-kadavul/ovvoru-pakirvum.mp3', 2, 'Alaihal/maindhanagiya-kadavul/ovvoru-pakirvum.png', '', NULL, 5023140, 1, 1, 0, 0, 3, '2023-12-05 08:16:29', '2023-12-05 12:19:14'),
(13, '4', 'Uravu Onduu', '', 'Irai/keerthanaigal/uravu-onduu.mp3', 4, 'Irai/keerthanaigal/uravu-onduu.png', '', NULL, 5945127, 1, 1, 0, 0, 0, '2023-12-05 08:17:28', '2023-12-05 08:17:28'),
(14, '5', 'Pamaalai Paduvom', '', 'Irai/keerthanaigal/pamaalai-paduvom.mp3', 4, 'Irai/keerthanaigal/pamaalai-paduvom.png', '', NULL, 5744133, 1, 1, 0, 0, 0, '2023-12-05 08:18:16', '2023-12-05 08:18:16'),
(15, '5', 'Nilayila', '', 'Alaihal/thirithuva-kadavul/nilayila.mp3', 3, 'Alaihal/thirithuva-kadavul/nilayila.png', '', NULL, 5306700, 1, 1, 0, 0, 1, '2023-12-05 08:19:19', '2023-12-05 08:26:59'),
(16, '4', 'Ungazhidaye', '', 'Alaihal/thirithuva-kadavul/ungazhidaye.mp3', 3, 'Alaihal/thirithuva-kadavul/ungazhidaye.png', '', NULL, 5151576, 1, 1, 0, 0, 2, '2023-12-05 08:20:10', '2023-12-05 12:16:38'),
(17, '2', 'Ponnum Porulum', '', 'Irai/madha-song/ponnum-porulum.mp3', 5, 'Irai/madha-song/ponnum-porulum.png', '', NULL, 4176213, 1, 1, 0, 2, 8, '2023-12-05 08:21:50', '2023-12-08 02:36:58'),
(18, '2', 'Thuli Thuli', '', 'Irai/madha-song/thuli-thuli.mp3', 5, 'Irai/madha-song/thuli-thuli.jpeg', 'Irai/madha-song/thuli-thuli.lrc', NULL, 4923186, 1, 1, 0, 0, 3, '2023-12-05 11:56:06', '2023-12-08 02:36:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `first_name` varchar(32) NOT NULL DEFAULT '',
  `last_name` varchar(32) NOT NULL DEFAULT '',
  `country` varchar(32) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `website` varchar(128) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `facebook` varchar(256) DEFAULT NULL,
  `twitter` varchar(256) DEFAULT NULL,
  `instagram` varchar(256) DEFAULT NULL,
  `youtube` varchar(256) DEFAULT NULL,
  `telegram` varchar(256) DEFAULT NULL,
  `image` varchar(128) NOT NULL DEFAULT 'default.png',
  `cover` varchar(128) NOT NULL DEFAULT 'default.png',
  `gender` tinyint(4) NOT NULL DEFAULT 0,
  `online` int(11) NOT NULL DEFAULT 0,
  `offline` tinyint(4) NOT NULL DEFAULT 0,
  `ip` varchar(45) NOT NULL,
  `private` int(11) NOT NULL DEFAULT 0,
  `suspended` int(11) NOT NULL DEFAULT 0,
  `type` varchar(128) NOT NULL DEFAULT 'normal',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `email_verified_at`, `remember_token`, `role`, `first_name`, `last_name`, `country`, `city`, `website`, `description`, `facebook`, `twitter`, `instagram`, `youtube`, `telegram`, `image`, `cover`, `gender`, `online`, `offline`, `ip`, `private`, `suspended`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'nivesh', '$2y$10$znQOPXZwb1NYuRf5SpOP5eXtcb6ErAF99gyvX3NG0MunE3Y9Vtroa', 'niveshrajs@gmail.com', NULL, NULL, 1, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', 'default.png', 0, 0, 0, '217.20.116.183', 0, 0, 'normal', '2023-11-13 04:52:02', '2023-11-13 04:52:02', NULL),
(2, 'InfantJoy', '$2y$10$RF7UEFmy6DHFgELNgtS/zeNEGKPpGnTpCqsUSFIncqzJcUQWCVhdW', 'infantjoy123@gmail.com', NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', 'default.png', 0, 0, 0, '120.138.12.106', 0, 0, 'normal', '2023-11-13 23:10:19', '2023-11-13 23:10:19', NULL),
(3, 'Leenas', '$2y$10$JhSumFKMdXtcDAfaV4wnouRLpWVAco7l1ElUZnpqOY/.vk6OJ/sdm', 'infantleenas25@gmail.com', NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ZG7NU1iX2KLT5siettIOLLhpXYLYaikhDAawBU1A.jpg', 'XM1zZQ3W67bRWfAihG4QhowZLaFjo3nCemU9onAV.jpg', 0, 0, 0, '103.28.246.238', 0, 0, 'normal', '2023-12-01 22:32:47', '2023-12-01 22:36:53', NULL),
(4, 'InfantLeenas', '$2y$10$GNEBLHfQlS1JN1/iEFIFSegMkYKvlqjLYU.zbePvv7aNn9t9SzXIy', 'infantleenas@gmail.com', NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', 'default.png', 0, 0, 0, '120.138.12.121', 0, 0, 'normal', '2023-12-05 11:21:45', '2023-12-05 11:21:45', NULL),
(5, 'rajraj', '$2y$10$0H1M/beqSpof9jDVwqeP6.lYIoPVGfZ4ta6.65QBl3qch2rwZJsl.', 'raj@gmail.com', NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', 'default.png', 0, 0, 0, '152.58.221.114', 0, 0, 'normal', '2023-12-05 12:21:49', '2023-12-05 12:21:49', NULL),
(6, 'Kabhinisha', '$2y$10$q9ExHbgAYK2ptfwW.9GqDuh5RdW0WtQm1BQ.iC6YEUFjoigAAQkm2', 'info@kabhinisha.com', NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', 'default.png', 0, 0, 0, '103.28.246.15', 0, 0, 'normal', '2023-12-08 01:32:57', '2023-12-08 01:32:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `by` int(11) NOT NULL,
  `track` int(11) NOT NULL,
  `cleared` tinyint(4) NOT NULL DEFAULT 0,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `by`, `track`, `cleared`, `time`) VALUES
(1, 3, 5, 0, '2023-12-02 04:07:50'),
(2, 3, 6, 0, '2023-12-05 13:55:40'),
(3, 3, 17, 0, '2023-12-05 13:55:40'),
(4, 3, 15, 0, '2023-12-05 13:56:59'),
(5, 3, 9, 0, '2023-12-05 13:57:18'),
(6, 3, 10, 0, '2023-12-05 14:02:05'),
(7, 3, 11, 0, '2023-12-05 14:05:27'),
(8, 3, 9, 0, '2023-12-05 14:05:50'),
(9, 3, 12, 0, '2023-12-05 14:05:58'),
(10, 3, 12, 0, '2023-12-05 17:00:36'),
(11, 3, 11, 0, '2023-12-05 17:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text DEFAULT NULL,
  `sort_id` int(11) DEFAULT NULL,
  `public` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `title`, `type`, `value`, `sort_id`, `public`, `created_at`, `updated_at`) VALUES
(1, 'Slider Latest Music', 'slider', NULL, 1, 1, '2023-11-13 04:52:02', '2023-11-13 04:52:02'),
(2, 'Artist', 'artists', NULL, 2, 1, '2023-11-13 04:52:02', '2023-11-13 04:52:02'),
(3, 'Albums', 'albums', NULL, 3, 1, '2023-11-13 04:52:02', '2023-11-13 04:52:02'),
(4, 'Productions', 'productions', NULL, 4, 1, '2023-11-13 04:52:02', '2023-11-13 04:52:02'),
(5, 'Admob Banner Ads', 'ads', '{\"android\":\"ca-app-pub-3940256099942544\\/6300978111\",\"ios\":\"ca-app-pub-3940256099942544\\/2934735716\"}', 5, 2, '2023-11-13 04:52:02', '2023-12-05 05:35:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `by` (`by`),
  ADD KEY `track` (`track`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `by` (`by`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `playlistentries`
--
ALTER TABLE `playlistentries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `playlist` (`playlist`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `by` (`by`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `productions`
--
ALTER TABLE `productions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `leader` (`leader`),
  ADD KEY `subscriber` (`subscriber`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `state` (`state`);

--
-- Indexes for table `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `artist_id` (`artist_id`),
  ADD KEY `title` (`title`),
  ADD KEY `name` (`name`),
  ADD KEY `album_id` (`album_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `id` (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `first_name` (`first_name`),
  ADD KEY `last_name` (`last_name`),
  ADD KEY `suspended` (`suspended`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `by` (`by`),
  ADD KEY `cleared` (`cleared`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `playlistentries`
--
ALTER TABLE `playlistentries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `productions`
--
ALTER TABLE `productions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracks`
--
ALTER TABLE `tracks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
