-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2018 at 03:00 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Rasel Arifin', 'raseln90@gmail.com', '$2y$10$pJWARTsMPWOsTlpnh7nIuevKXGM2nX641iIQFvL2QwoRcjviUDkka', '0123456789', 1, '2018-03-17 22:32:12', '2018-04-03 01:38:35'),
(7, 'Nazmul Haque', 'nazmulhaquer24@gmail.com', '$2y$10$GuljnICdExR8H4UpyYchHebyE2zMR/jL9tio5.A/uGmDmrHpCoyJq', '01721643846', 1, '2018-03-21 22:32:12', '2018-03-23 03:49:35'),
(8, 'Nazmul Haque', 'nazmul@gmail.com', '$2y$10$g74aYGXG2/B3Vg7KoBcpKuRfmXlBkDrr7jFktTXUfwpelo3XV8/8.', '1234567890', 1, '2018-04-04 06:25:48', '2018-04-04 06:26:45');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

CREATE TABLE `admin_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role`
--

INSERT INTO `admin_role` (`id`, `admin_id`, `role_id`, `created_at`, `updated_at`) VALUES
(2, 7, 3, NULL, NULL),
(3, 7, 4, NULL, NULL),
(4, 1, 2, NULL, NULL),
(5, 8, 2, NULL, NULL),
(6, 8, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Bangladesh', 'bangladesh', '2018-03-05 05:53:47', '2018-03-05 05:53:47'),
(2, 'India', 'india', '2018-03-13 01:53:03', '2018-03-20 22:11:58'),
(3, 'Laravel', 'laravel', '2018-03-13 23:58:49', '2018-03-13 23:58:49'),
(4, 'International', 'international', '2018-03-20 22:11:42', '2018-03-20 22:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `category_posts`
--

CREATE TABLE `category_posts` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_posts`
--

INSERT INTO `category_posts` (`post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(3, 1, '2018-03-05 05:58:14', '2018-03-05 05:58:14'),
(4, 1, '2018-03-05 05:59:19', '2018-03-05 05:59:19'),
(5, 1, '2018-03-05 07:59:22', '2018-03-05 07:59:22'),
(3, 2, '2018-03-13 01:53:28', '2018-03-13 01:53:28'),
(5, 2, '2018-03-13 03:38:37', '2018-03-13 03:38:37'),
(6, 2, '2018-03-13 23:51:55', '2018-03-13 23:51:55'),
(8, 1, '2018-03-13 23:54:19', '2018-03-13 23:54:19'),
(9, 2, '2018-03-13 23:55:49', '2018-03-13 23:55:49'),
(10, 2, '2018-03-13 23:57:41', '2018-03-13 23:57:41'),
(11, 2, '2018-03-14 00:00:12', '2018-03-14 00:00:12'),
(11, 3, '2018-03-14 00:00:12', '2018-03-14 00:00:12'),
(12, 1, '2018-03-14 00:01:21', '2018-03-14 00:01:21'),
(12, 2, '2018-03-14 00:01:21', '2018-03-14 00:01:21'),
(12, 3, '2018-03-14 00:01:21', '2018-03-14 00:01:21'),
(13, 2, '2018-03-18 04:57:58', '2018-03-18 04:57:58'),
(14, 1, '2018-03-20 22:26:27', '2018-03-20 22:26:27'),
(14, 2, '2018-03-20 22:26:27', '2018-03-20 22:26:27'),
(14, 4, '2018-03-20 22:26:27', '2018-03-20 22:26:27');

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
(31, '2014_10_12_000000_create_users_table', 1),
(32, '2014_10_12_100000_create_password_resets_table', 1),
(33, '2018_01_28_062346_create_posts_table', 1),
(34, '2018_01_28_064743_create_tags_table', 1),
(35, '2018_01_28_065106_create_categories_table', 1),
(36, '2018_01_28_065808_create_category_posts_table', 1),
(37, '2018_01_28_070535_create_post_tags_table', 1),
(38, '2018_01_28_071211_create_admins_table', 1),
(39, '2018_01_28_071822_create_roles_table', 1),
(40, '2018_01_28_072154_create_admin_roles_table', 1),
(41, '2018_03_21_065343_create_permissions_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `for`, `created_at`, `updated_at`) VALUES
(4, 'Post-create', 'post', '2018-03-21 03:29:16', '2018-03-21 03:29:16'),
(5, 'Post-update', 'post', '2018-03-21 03:32:50', '2018-03-21 03:32:50'),
(6, 'Post-delete', 'post', '2018-03-21 03:33:11', '2018-03-21 03:33:11'),
(7, 'User-create', 'user', '2018-03-21 03:34:18', '2018-03-21 03:34:18'),
(8, 'User-update', 'user', '2018-03-21 03:35:25', '2018-03-21 03:35:25'),
(9, 'User-delete', 'user', '2018-03-21 03:35:56', '2018-03-21 03:35:56'),
(10, 'Post-Publish', 'post', '2018-03-21 03:37:13', '2018-03-21 03:37:13'),
(11, 'Tag-CRUD', 'other', '2018-03-21 03:38:08', '2018-03-21 03:38:08'),
(12, 'Category-CRUD', 'other', '2018-03-21 03:38:40', '2018-03-21 03:38:40');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(5, 6),
(5, 11),
(5, 13),
(3, 5),
(3, 10),
(4, 4),
(4, 5),
(2, 6),
(2, 4),
(2, 12),
(4, 11);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `posted_by` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `like` int(11) DEFAULT NULL,
  `dislike` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `subtitle`, `slug`, `body`, `status`, `posted_by`, `image`, `like`, `dislike`, `created_at`, `updated_at`) VALUES
(3, 'Man must explore, and this is exploration at its greatest', 'Problems look mighty small from 150 miles up', 'laravel', '<p>Never in all their history have men been able truly to conceive of the world as one: a single sphere, a globe, having the qualities of a globe, a round earth in which all the directions eventually meet, in which there is no center because every point, or none, is center &mdash; an equal earth which all men occupy as equals. The airman&#39;s earth, if free men make it, will be truly round: a globe in practice, not in theory.</p>\r\n\r\n<p>Science cuts two ways, of course; its products can be used for both good and evil. But there&#39;s no turning back from science. The early warnings about technological dangers also come from science.</p>\r\n\r\n<p>What was most significant about the lunar voyage was not that man set foot on the Moon but that they set eye on the earth.</p>\r\n\r\n<p>A Chinese tale tells of some men sent to harm a young girl who, upon seeing her beauty, become her protectors rather than her violators. That&#39;s how I felt seeing the Earth for the first time. I could not help but love and cherish her.</p>\r\n\r\n<p>For those who have seen the Earth from space, and for the hundreds and perhaps thousands more who will, the experience most certainly changes your perspective. The things that we share in our world are far more valuable than those which divide us.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code class=\"language-css\"> p {color:red;} </code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>The Final Frontier</h2>\r\n\r\n<p>There can be no thought of finishing for &lsquo;aiming for the stars.&rsquo; Both figuratively and literally, it is a task to occupy the generations. And no matter how much progress one makes, there is always the thrill of just beginning.</p>\r\n\r\n<p>There can be no thought of finishing for &lsquo;aiming for the stars.&rsquo; Both figuratively and literally, it is a task to occupy the generations. And no matter how much progress one makes, there is always the thrill of just beginning.</p>\r\n\r\n<blockquote>The dreams of yesterday are the hopes of today and the reality of tomorrow. Science has not yet mastered prophecy. We predict too much for the next year and yet far too little for the next ten.</blockquote>\r\n\r\n<p>Spaceflights cannot be stopped. This is not the work of any one man or even a group of men. It is a historical process which mankind is carrying out in accordance with the natural laws of human development.</p>\r\n\r\n<h2>Reaching for the Stars</h2>\r\n\r\n<p>As we got further and further away, it [the Earth] diminished in size. Finally it shrank to the size of a marble, the most beautiful you can imagine. That beautiful, warm, living object looked so fragile, so delicate, that if you touched it with a finger it would crumble and fall apart. Seeing this has to change a man.</p>\r\n\r\n<p>To go places and do things that have never been done before &ndash; that&rsquo;s what living is all about.</p>\r\n\r\n<p>Space, the final frontier. These are the voyages of the Starship Enterprise. Its five-year mission: to explore strange new worlds, to seek out new life and new civilizations, to boldly go where no man has gone before.</p>\r\n\r\n<p>As I stand out here in the wonders of the unknown at Hadley, I sort of realize there&rsquo;s a fundamental truth to our nature, Man must explore, and this is exploration at its greatest.</p>\r\n\r\n<p>Placeholder text by&nbsp;<a href=\"http://spaceipsum.com/\">Space Ipsum</a>. Photographs by&nbsp;<a href=\"https://www.flickr.com/photos/nasacommons/\">NASA on The Commons</a>.</p>\r\n\r\n<h1 style=\"text-align:center\">&nbsp;</h1>', 1, NULL, 'public/WQJZnzDrTPDvBcQfLVKXkwYCJVVoaVwiRL2mzwSe.jpeg', NULL, NULL, '2018-03-05 05:58:14', '2018-03-18 10:03:27'),
(4, 'Post Title Here Kee', 'Title here', 'post-title', '<p>HHHHHHH</p>', 1, NULL, 'public/Lb921TdV8hLEBWmA2OaecoB4PQdjpT5X31HNqr7e.jpeg', NULL, NULL, '2018-03-05 05:59:19', '2018-03-18 14:20:05'),
(5, 'Bootstrap tagsinput', 'Post  SubTitle Here', 'slug here', 'hello Bangladesh', 1, NULL, NULL, NULL, NULL, '2018-03-05 07:59:20', '2018-03-13 03:38:37'),
(6, 'My  Title', 'Subtitle here', 'category-two', 'This is body here', 1, NULL, NULL, NULL, NULL, '2018-03-13 23:51:55', '2018-03-13 23:51:55'),
(8, 'This is Post Title', 'Post  SubTitle Here', 'category', 'look mighty&nbsp;', 1, NULL, NULL, NULL, NULL, '2018-03-13 23:54:19', '2018-03-13 23:54:19'),
(9, 'This is exploration at its greatest', 'small from 150 miles up', 'its greatest', 'Man must explore, and this is exploration at its greatest', 1, NULL, NULL, NULL, NULL, '2018-03-13 23:55:49', '2018-03-13 23:55:49'),
(10, 'Man must explore', 'Exploration at its greatest', 'its greatest', 'Man must explore, and this is exploration at its greatest. Man must explore, and this is exploration at its greatest', 1, NULL, NULL, NULL, NULL, '2018-03-13 23:57:41', '2018-03-13 23:57:41'),
(11, 'Must explore', 'look mighty small', 'look mighty small', 'look mighty small&nbsp;look mighty small&nbsp;look mighty small', 1, NULL, NULL, NULL, NULL, '2018-03-14 00:00:12', '2018-03-14 00:00:12'),
(12, 'Bootstrap Admin Tags input', 'Post  Sub Title', 'Tag slug', '<p>look mighty smalllook mighty smalllook mighty smalllook mighty small&nbsp;&nbsp;I believe every human has a finite number of heartbeats.&nbsp;I believe every human has a finite number of heartbeats.&nbsp;I believe every human has a finite number of heartbeats.</p>', 1, NULL, 'public/ZDWTfi94rf4KMAUdCIx4qek5jOixcZSn69er4bgN.jpeg', NULL, NULL, '2018-03-14 00:01:21', '2018-03-20 22:30:26'),
(13, 'Bootstrap tagsinput', 'Post  SubTitle Here', 'laravel-to', '<p>GGGGGGGGGGGGGG</p>', 1, NULL, 'public/3q6X7FaQVy0TYwt46Az0XBaKUb85iVqyCzpQupO3.jpeg', NULL, NULL, '2018-03-18 04:57:57', '2018-03-18 08:58:20'),
(14, 'I believe every human has a finite number of heartbeats.', 'I don\'t intend to waste any of mine.', 'I believe every human has a finite number of heartbeats.', '<h1 style=\"text-align:center\"><strong>&nbsp;&nbsp;I believe every human has a finite number of heartbeats.</strong></h1>\r\n\r\n<p>I believe every human has a finite number of heartbeats. I don&#39;t intend to waste any of mine.&nbsp;&nbsp;I believe every human has a finite number of heartbeats. I don&#39;t intend to waste any of mine.&nbsp;I believe every human has a finite number of heartbeats. I don&#39;t intend to waste any of mine.&nbsp;I believe every human has a finite number of heartbeats. I don&#39;t intend to waste any of mine.&nbsp;I believe every human has a finite number of heartbeats. I don&#39;t intend to waste any of mine.&nbsp;I believe every human has a finite number of heartbeats. I don&#39;t intend to waste any of mine.&nbsp;I believe every human has a finite number of heartbeats. I don&#39;t intend to waste any of mine.&nbsp;I believe every human has a finite number of heartbeats. I don&#39;t intend to waste any of mine.</p>', 1, NULL, 'public/Fq25X7criCheJRDhpFZpWHR7vDXlXM58F4vGaZE3.jpeg', NULL, NULL, '2018-03-20 22:26:26', '2018-03-20 22:26:26');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(3, 1, '2018-03-05 05:58:14', '2018-03-05 05:58:14'),
(4, 1, '2018-03-05 05:59:19', '2018-03-05 05:59:19'),
(5, 1, '2018-03-05 07:59:22', '2018-03-05 07:59:22'),
(3, 2, '2018-03-13 01:53:28', '2018-03-13 01:53:28'),
(5, 2, '2018-03-13 03:38:37', '2018-03-13 03:38:37'),
(6, 2, '2018-03-13 23:51:55', '2018-03-13 23:51:55'),
(8, 1, '2018-03-13 23:54:19', '2018-03-13 23:54:19'),
(9, 2, '2018-03-13 23:55:50', '2018-03-13 23:55:50'),
(10, 1, '2018-03-13 23:57:41', '2018-03-13 23:57:41'),
(11, 2, '2018-03-14 00:00:12', '2018-03-14 00:00:12'),
(11, 3, '2018-03-14 00:00:12', '2018-03-14 00:00:12'),
(12, 1, '2018-03-14 00:01:21', '2018-03-14 00:01:21'),
(12, 2, '2018-03-14 00:01:21', '2018-03-14 00:01:21'),
(12, 3, '2018-03-14 00:01:21', '2018-03-14 00:01:21'),
(13, 2, '2018-03-18 04:57:58', '2018-03-18 04:57:58'),
(14, 3, '2018-03-20 22:26:27', '2018-03-20 22:26:27'),
(14, 4, '2018-03-20 22:26:27', '2018-03-20 22:26:27');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Editor', '2018-03-20 23:35:11', '2018-03-20 23:57:10'),
(3, 'Publisher', '2018-03-20 23:58:37', '2018-03-20 23:58:37'),
(4, 'Writter', '2018-03-20 23:59:42', '2018-03-20 23:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'bangla', 'bangla', '2018-03-05 05:54:24', '2018-03-20 22:14:47'),
(2, 'english', 'english', '2018-03-13 01:52:11', '2018-03-13 01:52:11'),
(3, 'man', 'man', '2018-03-13 23:58:29', '2018-03-13 23:58:29'),
(4, 'women', 'women', '2018-03-20 22:14:38', '2018-03-20 22:14:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nazmul Haque', 'nazmulhaque@gmail.com', '$2y$10$pJWARTsMPWOsTlpnh7nIuevKXGM2nX641iIQFvL2QwoRcjviUDkka', 'SwBsSUU2CcefSKGMDVlY1S5ymfamya5PWMMS6XDpf1iqR9kL3OqwZI7B7xSb', '2018-03-19 21:15:42', '2018-03-19 21:15:42'),
(2, 'Nazmul Haque', 'nazmulhaquer24@gmail.com', '$2y$10$d3IxAvSLFxAfXMd6pJxYg.JhljjAHHfhfx7w1VkBPxAsKpTq6TsvK', 'WEGVWvnkS4P7ZGUQQotP1FLFzoIDwuFuoH8812Q5jwrhjiX6WgI0Y1k39kA3', '2018-03-19 23:46:18', '2018-03-19 23:46:18'),
(3, 'Nazmul Haque', 'raseln24@gmail.com', '$2y$10$Kux59NnF/PiGoGQHwToYLOHKB6XA.yd7oMyloj1leANmPsdOj2aj.', 'UDavb0lwCqh5LUzyCybkwypbmcwa3nTTA8S6vFiGuVkiDccRIaqQKEiHlUJ9', '2018-03-24 23:55:14', '2018-03-24 23:55:14'),
(4, 'Antnio Meria', 'rasel201124@gmail.com', '$2y$10$nc11tPTc36bzj34DoO/Ky.E1e0Fzc0YSWRRzLtZEYne5ZWT33hkoi', 'uAE8C0cMt7WYNPIWKG3hpeHqlUVfW0bxQQaschLMtN7dlUJL2ePL2TkM7cdN', '2018-04-04 06:35:16', '2018-04-04 06:35:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD KEY `category_posts_post_id_index` (`post_id`),
  ADD KEY `category_posts_category_id_index` (`category_id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD KEY `post_tags_post_id_index` (`post_id`),
  ADD KEY `post_tags_tag_id_index` (`tag_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD CONSTRAINT `category_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
