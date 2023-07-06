-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 06, 2023 at 12:59 AM
-- Server version: 8.0.30
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kimthai`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `image`, `desc`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home banner', 'banners\\July2023\\ALb2q476VgLrnob7oqml.png', NULL, 'ACTIVE', '2023-07-04 01:34:00', '2023-07-05 02:33:10'),
(2, 'Home banner 2', 'banners\\July2023\\08IZaJd5FCx3vPufXsqJ.png', NULL, 'ACTIVE', '2023-07-04 01:34:20', '2023-07-04 01:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fromDate` timestamp NULL DEFAULT NULL,
  `toDate` timestamp NULL DEFAULT NULL,
  `numbers` int DEFAULT NULL,
  `adult` int DEFAULT NULL,
  `children` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `phone`, `fromDate`, `toDate`, `numbers`, `adult`, `children`, `price`, `status`, `room`, `created_at`, `updated_at`) VALUES
(2, 'Nguyen Quang Hai', '0359808267', '2023-07-05 17:00:00', '2023-07-14 17:00:00', NULL, 1, 0, NULL, 'dat-phong', 'Phòng SUPERIOR', '2023-07-04 19:38:13', '2023-07-04 19:38:13'),
(3, 'Nguyen Quang Hai', '0359808267', '2023-07-05 17:00:00', '2023-07-06 17:00:00', NULL, 1, 0, NULL, 'dat-phong', 'Phòng SUPERIOR', '2023-07-04 19:39:15', '2023-07-04 19:39:15'),
(5, 'Nguyen Quang Hai', '0359808267', '2023-07-06 17:00:00', '2023-07-13 17:00:00', NULL, 3, NULL, NULL, 'dat-phong', 'Phòng FAMILY', '2023-07-04 21:19:45', '2023-07-04 21:19:45'),
(6, 'Nguyen Quang Hai', '0359808267', '2023-07-05 17:00:00', '2023-07-07 17:00:00', NULL, 3, 3, NULL, 'dat-phong', 'Phòng TRIPLE', '2023-07-05 01:35:42', '2023-07-05 01:35:42'),
(7, 'Nguyễn Quang Hải', '0359808267', '2023-07-05 17:00:00', '2023-07-14 17:00:00', NULL, 4, NULL, NULL, 'dat-phong', 'Phòng VIP', '2023-07-05 01:42:07', '2023-07-05 01:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `order` int NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Tin Tức', 'tin-tuc', '2023-07-04 00:52:35', '2023-07-04 02:12:41');

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `title`, `slug`, `desc`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Phòng đơn', 'phong-don', 'a', 'collections\\July2023\\f1csguLYepO1dkVctsRT.png', 'ACTIVE', '2023-07-04 00:58:24', '2023-07-04 00:58:24'),
(3, 'Phòng vip', 'phong-vip', NULL, 'collections\\July2023\\pgQfyxv6NLKNe3PSMrK0.png', 'ACTIVE', '2023-07-04 01:39:49', '2023-07-04 01:39:49'),
(4, 'Hội trường', 'hoi-truong', 'Hội trường', 'collections\\July2023\\4Q3Qma3ZGxWLmUBQedeX.jpg', 'ACTIVE', '2023-07-04 02:01:49', '2023-07-04 02:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Nguyen Quang Hai', 'admin@admin.com', 359808267, 'a', '2023-07-04 20:53:37', '2023-07-04 20:53:37'),
(2, 'Nguyen Quang Hai', 'admin@admin.com', 359808267, 'a', '2023-07-04 21:02:56', '2023-07-04 21:02:56'),
(3, 'Nguyen Quang Hai', 'superadmin@admin.com', 359808267, 'a', '2023-07-04 21:03:23', '2023-07-04 21:03:23'),
(4, 'Nguyen Quang Hai', 'content@gmail.com', 359808267, 'a', '2023-07-05 01:41:07', '2023-07-05 01:41:07');

-- --------------------------------------------------------

--
-- Table structure for table `cuisines`
--

CREATE TABLE `cuisines` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cuisines`
--

INSERT INTO `cuisines` (`id`, `title`, `slug`, `desc`, `image`, `content`, `status`, `created_at`, `updated_at`, `price`) VALUES
(1, 'Mì xào', 'mi-xao', 'a', 'cuisines\\July2023\\NwuAuHjRsGLCgOWt8sB9.png', '<p>a</p>', 'ACTIVE', '2023-07-04 01:18:00', '2023-07-04 18:11:39', '80000');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int UNSIGNED NOT NULL,
  `data_type_id` int UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:collections,slug\"}}', 3),
(59, 7, 'desc', 'text_area', 'Desc', 0, 0, 1, 1, 1, 1, '{}', 4),
(60, 7, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'status', 'select_dropdown', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 6),
(62, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(63, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(64, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(65, 8, 'title', 'text', 'Tên phòng', 0, 1, 1, 1, 1, 1, '{}', 2),
(66, 8, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:rooms,slug\"}}', 3),
(67, 8, 'desc', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 4),
(68, 8, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{}', 5),
(69, 8, 'images', 'multiple_images', 'Hình ảnh thêm', 0, 0, 1, 1, 1, 1, '{}', 6),
(70, 8, 'content', 'rich_text_box', 'Nội Dung', 0, 0, 1, 1, 1, 1, '{}', 7),
(71, 8, 'price', 'text', 'Giá phòng', 0, 1, 1, 1, 1, 1, '{}', 8),
(72, 8, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(73, 8, 'category_id', 'text', 'Category Id', 0, 1, 1, 1, 1, 1, '{}', 10),
(74, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(75, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(76, 8, 'room_belongsto_collection_relationship', 'relationship', 'Loại phòng', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Collection\",\"table\":\"collections\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(77, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(78, 9, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 2),
(79, 9, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:cuisines,slug\"}}', 3),
(80, 9, 'desc', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 4),
(81, 9, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{}', 6),
(82, 9, 'content', 'rich_text_box', 'Nội Dung', 0, 0, 1, 1, 1, 1, '{}', 7),
(83, 9, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 8),
(84, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 9),
(85, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(86, 9, 'price', 'text', 'Giá bán', 0, 1, 1, 1, 1, 1, '{}', 5),
(87, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(88, 10, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 2),
(89, 10, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:services,slug\"}}', 3),
(90, 10, 'desc', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 4),
(91, 10, 'images', 'multiple_images', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{}', 5),
(92, 10, 'content', 'rich_text_box', 'Nội Dung', 0, 0, 1, 1, 1, 1, '{}', 6),
(93, 10, 'status', 'select_dropdown', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 7),
(94, 10, 'type', 'select_dropdown', 'Loại dịch vụ', 0, 1, 1, 1, 1, 1, '{\"default\":\"SPA\",\"options\":{\"SPA\":\"L\\u00c0M \\u0110\\u1eb8P\",\"HOTLE\":\"KH\\u00c1CH S\\u1ea0N\",\"ROOM\":\"PH\\u00d2NG H\\u1eccP\"}}', 8),
(95, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(96, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(97, 10, 'icon', 'image', 'Icon', 0, 0, 1, 1, 1, 1, '{}', 11),
(98, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(99, 11, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 2),
(100, 11, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{}', 3),
(101, 11, 'desc', 'text', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 4),
(102, 11, 'status', 'select_dropdown', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 5),
(103, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 6),
(104, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(105, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(106, 12, 'name', 'text', 'Tên Khách Hàng', 0, 1, 1, 1, 1, 1, '{}', 2),
(107, 12, 'phone', 'text', 'Số điện thoại', 0, 1, 1, 1, 1, 1, '{}', 3),
(108, 12, 'fromDate', 'timestamp', 'Ngày đến', 0, 1, 1, 1, 1, 1, '{}', 4),
(109, 12, 'toDate', 'timestamp', 'Ngày đi', 0, 1, 1, 1, 1, 1, '{}', 5),
(110, 12, 'numbers', 'text', 'Số ngày ở', 0, 0, 1, 1, 1, 1, '{}', 6),
(111, 12, 'adult', 'text', 'Người lớn', 0, 0, 1, 1, 1, 1, '{}', 7),
(112, 12, 'children', 'text', 'Trẻ em', 0, 0, 1, 1, 1, 1, '{}', 8),
(113, 12, 'price', 'text', 'Giá', 0, 0, 1, 1, 1, 1, '{}', 9),
(114, 12, 'status', 'text', 'Trạng thái', 0, 0, 1, 1, 1, 1, '{}', 10),
(116, 12, 'room', 'text', 'Phòng', 0, 1, 1, 1, 1, 1, '{}', 12),
(117, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 13),
(118, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(119, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(120, 13, 'name', 'text', 'Họ và Tên', 0, 1, 1, 1, 1, 1, '{}', 2),
(121, 13, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(122, 13, 'phone', 'text', 'Số điện thoại', 0, 1, 1, 1, 1, 1, '{}', 4),
(123, 13, 'content', 'text', 'Nội Dung', 0, 1, 1, 1, 1, 1, '{}', 5),
(124, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(125, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2023-07-04 00:52:34', '2023-07-04 00:52:34'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-07-04 00:52:34', '2023-07-04 00:52:34'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-07-04 00:52:34', '2023-07-04 00:52:34'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(7, 'collections', 'collections', 'Loại phòng', 'Loại phòng', 'voyager-diamond', 'App\\Collection', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-07-04 00:55:31', '2023-07-04 00:58:04'),
(8, 'rooms', 'rooms', 'Phòng khách sạn', 'Phòng khách sạn', NULL, 'App\\Room', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-07-04 01:06:08', '2023-07-04 01:10:57'),
(9, 'cuisines', 'cuisines', 'Ẩm thực', 'Ẩm thực', 'voyager-beer', 'App\\Cuisine', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-07-04 01:17:53', '2023-07-04 01:19:09'),
(10, 'services', 'services', 'Dịch vụ', 'Dịch vụ', 'voyager-wineglass', 'App\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-07-04 01:27:04', '2023-07-04 01:31:02'),
(11, 'banners', 'banners', 'Banner', 'Banners', 'voyager-photos', 'App\\Banner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-07-04 01:33:38', '2023-07-04 01:33:38'),
(12, 'books', 'books', 'Liên hệ đặt phòng', 'Liên hệ đặt phòng', 'voyager-buy', 'App\\Book', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-07-04 19:34:57', '2023-07-04 19:38:51'),
(13, 'contacts', 'contacts', 'Liên hệ', 'Liên hệ', NULL, 'App\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-07-04 20:52:21', '2023-07-04 20:52:21');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(2, 'home_menu', '2023-07-04 02:29:28', '2023-07-04 02:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2023-07-04 00:52:35', '2023-07-04 00:52:35', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 10, '2023-07-04 00:52:35', '2023-07-04 20:53:24', 'voyager.media.index', NULL),
(3, 1, 'Tài khoản', '', '_self', 'voyager-person', '#000000', 15, 2, '2023-07-04 00:52:35', '2023-07-04 00:59:51', 'voyager.users.index', 'null'),
(4, 1, 'Phân quyền', '', '_self', 'voyager-lock', '#000000', 15, 1, '2023-07-04 00:52:35', '2023-07-04 00:59:41', 'voyager.roles.index', 'null'),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 11, '2023-07-04 00:52:35', '2023-07-04 20:53:24', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2023-07-04 00:52:35', '2023-07-04 00:58:37', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2023-07-04 00:52:35', '2023-07-04 00:58:37', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2023-07-04 00:52:35', '2023-07-04 00:58:37', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2023-07-04 00:52:35', '2023-07-04 00:58:37', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 12, '2023-07-04 00:52:35', '2023-07-04 20:53:24', 'voyager.settings.index', NULL),
(11, 1, 'Danh mục bài viết', '', '_self', 'voyager-categories', '#000000', 16, 1, '2023-07-04 00:52:35', '2023-07-04 01:00:43', 'voyager.categories.index', 'null'),
(12, 1, 'Bài viết', '', '_self', 'voyager-news', '#000000', 16, 2, '2023-07-04 00:52:35', '2023-07-04 01:00:43', 'voyager.posts.index', 'null'),
(13, 1, 'Trang giới thiệu', '', '_self', 'voyager-file-text', '#000000', NULL, 3, '2023-07-04 00:52:35', '2023-07-04 01:34:35', 'voyager.pages.index', 'null'),
(14, 1, 'Loại phòng', '', '_self', 'voyager-archive', '#000000', 18, 1, '2023-07-04 00:55:31', '2023-07-04 01:12:24', 'voyager.collections.index', 'null'),
(15, 1, 'Quản lý tài khoản', '', '_self', 'voyager-categories', '#000000', NULL, 9, '2023-07-04 00:59:25', '2023-07-04 20:53:24', NULL, ''),
(16, 1, 'Quản lý bài viết', '', '_self', 'voyager-categories', '#000000', NULL, 8, '2023-07-04 01:00:03', '2023-07-04 20:53:24', NULL, ''),
(17, 1, 'Phòng khách sạn', '', '_self', 'voyager-star', '#000000', 18, 2, '2023-07-04 01:06:08', '2023-07-04 01:12:57', 'voyager.rooms.index', 'null'),
(18, 1, 'Quản lý phòng', '', '_self', 'voyager-shop', '#000000', NULL, 4, '2023-07-04 01:12:13', '2023-07-04 01:34:35', NULL, ''),
(19, 1, 'Ẩm thực', '', '_self', 'voyager-beer', NULL, NULL, 5, '2023-07-04 01:17:53', '2023-07-04 01:34:35', 'voyager.cuisines.index', NULL),
(20, 1, 'Dịch vụ', '', '_self', 'voyager-wineglass', NULL, NULL, 6, '2023-07-04 01:27:04', '2023-07-04 01:34:35', 'voyager.services.index', NULL),
(21, 1, 'Banners', '', '_self', 'voyager-photos', NULL, NULL, 2, '2023-07-04 01:33:38', '2023-07-04 01:34:35', 'voyager.banners.index', NULL),
(22, 2, 'Trang chủ', '', '_self', NULL, '#000000', NULL, 1, '2023-07-04 02:29:39', '2023-07-04 02:30:35', NULL, ''),
(23, 2, 'Giới thiệu', '/about', '_self', NULL, '#000000', NULL, 2, '2023-07-04 02:29:47', '2023-07-04 18:52:04', NULL, ''),
(24, 2, 'Phòng nghỉ', '/rooms', '_self', NULL, '#000000', NULL, 3, '2023-07-04 02:30:00', '2023-07-04 18:56:18', NULL, ''),
(25, 2, 'Spa', '/services/lam-dep', '_self', NULL, '#000000', NULL, 4, '2023-07-04 02:30:08', '2023-07-05 01:16:02', NULL, ''),
(26, 2, 'Ẩm thực', '/cuisines', '_self', NULL, '#000000', NULL, 5, '2023-07-04 02:30:16', '2023-07-04 23:52:34', NULL, ''),
(27, 2, 'Liên hệ', '/contact', '_self', NULL, '#000000', NULL, 7, '2023-07-04 02:30:23', '2023-07-04 20:29:33', NULL, ''),
(28, 2, 'Phòng đơn', '/collections/phong-don', '_self', NULL, '#000000', 24, 1, '2023-07-04 02:30:32', '2023-07-04 19:00:40', NULL, ''),
(29, 2, 'Phòng VIP', '/collections/phong-vip', '_self', NULL, '#000000', 24, 2, '2023-07-04 02:30:43', '2023-07-04 19:00:46', NULL, ''),
(30, 2, 'Hội trường', '/collections/hoi-truong', '_self', NULL, '#000000', 24, 3, '2023-07-04 02:30:56', '2023-07-04 19:00:59', NULL, ''),
(31, 1, 'Liên hệ đặt phòng', '', '_self', 'voyager-buy', NULL, 18, 3, '2023-07-04 19:34:57', '2023-07-04 19:39:46', 'voyager.books.index', NULL),
(32, 2, 'Tin tức', '/posts', '_self', NULL, '#000000', NULL, 6, '2023-07-04 19:42:57', '2023-07-04 19:42:59', NULL, ''),
(33, 1, 'Liên hệ', '', '_self', 'voyager-chat', '#000000', NULL, 7, '2023-07-04 20:52:21', '2023-07-04 20:53:24', 'voyager.contacts.index', 'null'),
(35, 2, 'Tiếng anh', '/greeting/en', '_self', NULL, '#000000', 34, 1, '2023-07-05 02:46:55', '2023-07-05 02:47:07', NULL, ''),
(36, 2, 'Tiếng việt', '/greeting/vi', '_self', NULL, '#000000', 34, 2, '2023-07-05 02:47:04', '2023-07-05 02:56:59', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int UNSIGNED NOT NULL,
  `author_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Giới thiệu về chúng tôi', 'Tọa lạc giữa trung tâm thành phố Thái Nguyên, cách quốc tế Nội Bài 70km, Khách sạn Kim Thái có một vị trí lý tưởng gần các địa điểm du lịch, trung tâm thương mại – giải trí, rất thuận tiện cho du khách di chuyển khi tới đây. Khách sạn Kim Thái có hệ thống 69 phòng với các hạng phòng phù hợp với từng yêu cầu của khách hàng: Apartment, Superior, Deluxe, Family, Triple, Junior Twin & Double. Mỗi phòng nghỉ tại khách sạn này đều được trang các thiết bị thiết yếu, cao cấp đáp ứng đủ tiêu chuẩn của một khách sạn 3 sao.', '<p><img src=\"http://localhost/KimThaiHotel/public/storage/pages/July2023/about-01.jpg\" alt=\"\" width=\"100%\" height=\"100%\"></p>\r\n<p>Toạ lạc tại trung t&acirc;m thành ph&ocirc;́ Thái Nguy&ecirc;n, khách sạn Kim Thái là m&ocirc;̣t trong những khách sạn hàng đ&acirc;̀u của tỉnh, đạt ti&ecirc;u chu&acirc;̉n 3 sao, hàng năm lu&ocirc;n là đi&ecirc;̉m đ&ecirc;́n được r&acirc;́t nhi&ecirc;̀u du khách trong và ngoài nước lựa chọn đ&ecirc;̉ nghỉ ngơi và làm vi&ecirc;̣c m&ocirc;̃i khi đặt ch&acirc;n đ&ecirc;́n xứ chè.<br>Với địa th&ecirc;́ v&ocirc; cùng thu&acirc;̣n lợi, khi nghỉ ngơi tại đ&acirc;y, du khách có th&ecirc;̉ d&ecirc;̃ dàng đi đ&ecirc;́n các khu vui chơi, ăn u&ocirc;́ng nh&ocirc;̣n nhịp. Kh&ocirc;ng chỉ v&acirc;̣y, chỉ m&acirc;́t vài phút di chuy&ecirc;̉n, du khách sẽ được ngắm nhìn con s&ocirc;ng C&acirc;̀u chảy qua giữa thành ph&ocirc;́ tạo n&ecirc;n nét đẹp v&ocirc; cùng thơ m&ocirc;̣ng; hoặc tham quan đi&ecirc;̉m du lịch văn hoá đặc trưng của tỉnh là Bảo tàng văn hoá các d&acirc;n t&ocirc;̣c Vi&ecirc;̣t Nam. Đặc bi&ecirc;̣t, với vị trí đắc địa, nằm g&acirc;̀n với khu cơ quan hàng chính của tỉnh và thành ph&ocirc;́ Thái Nguy&ecirc;n, khách sạn cũng là m&ocirc;̣t lựa chọn th&ocirc;ng minh đ&ocirc;́i với những khách hàng có nhu c&acirc;̀u đ&ecirc;́n đ&ecirc;̉ c&ocirc;ng tác.<br>Với 69 phòng ti&ecirc;u chu&acirc;̉n qu&ocirc;́c t&ecirc;́, khách sạn Kim Thái có nhi&ecirc;̀u loại phòng phù hợp với mọi nhu c&acirc;̀u khác nhau của bạn và gia đình. T&acirc;́t cả các phòng đ&ecirc;̀u được thi&ecirc;́t k&ecirc;́ trang nhã, tinh t&ecirc;́ với ki&ecirc;́n trúc hi&ecirc;̣n đại, sang trọng, đ&acirc;̀y đủ ti&ecirc;̣n nghi mang lại cảm giác th&acirc;n thi&ecirc;̣n, thoải mái cho b&acirc;́t kỳ ai nghỉ ngơi tại đ&acirc;y. Với thi&ecirc;́t k&ecirc;́ các cửa s&ocirc;̉ có hướng nhìn ra toàn cảnh thành ph&ocirc;́, vào ban ngày du khách có thể phóng t&acirc;̀m mắt nhìn th&acirc;́y cảnh thi&ecirc;n nhi&ecirc;n của thành ph&ocirc;́ trung du mi&ecirc;̀n núi và sự náo nhi&ecirc;̣t, lung linh của thành ph&ocirc;́ lúc l&ecirc;n đèn. Đó có th&ecirc;̉ là những trải nghi&ecirc;̣m khó qu&ecirc;n và khác bi&ecirc;̣t đ&ocirc;́i với m&ocirc;̃i du khách khi ghé qua.<br>Tại nhà hàng của khách sạn, du khách sẽ có dịp được thưởng thức nhi&ecirc;̀u món ngon theo hương vị ch&acirc;u &Acirc;u được ch&ecirc;́ bi&ecirc;́n từ những loại thực ph&acirc;̉m tươi, sạch và giàu dưỡng ch&acirc;́t. Đặc bi&ecirc;́t với thi&ecirc;́t k&ecirc;́ hi&ecirc;̣n đại, theo phong cách ch&acirc;u &Acirc;u, tại các phòng ăn, du khách cũng có th&ecirc;̉ vừa ăn vừa ngắm toàn cảnh thành ph&ocirc;́ trong kh&ocirc;ng gian sang trọng.<br>Đ&ecirc;́n với Kim Thái, du khách sẽ được t&acirc;̣n hưởng những dịch vụ tuy&ecirc;̣t vời và ti&ecirc;̣n lợi. Với hệ thống ph&ograve;ng họp, hội nghị có sức chứa g&acirc;̀n 200 người, cùng đ&ocirc;̣i ngũ nh&acirc;n vi&ecirc;n có nhi&ecirc;̀u kinh nghi&ecirc;̣m, khách sạn sẽ khi&ecirc;́n bạn hoàn toàn tin tưởng khi làm vi&ecirc;̣c, t&ocirc;̉ chức sự ki&ecirc;̣n tại đ&acirc;y. B&ecirc;n cạnh đó, khách sạn còn là nơi đ&acirc;̀u ti&ecirc;n tại Thái Nguy&ecirc;n có s&acirc;n tập Golf, hứa hẹn sẽ mang đ&ecirc;́n cho m&ocirc;̃i du khách những trải nghi&ecirc;̣m v&ecirc;̀ m&ocirc;̣t cu&ocirc;̣c s&ocirc;́ng thượng lưu.<br>Hãy đ&ecirc;́n với chúng t&ocirc;i, bạn sẽ có được những trải nghi&ecirc;̣m t&ocirc;́t nh&acirc;́t!</p>', 'pages\\July2023\\a4bhofWxGnD9eR0cqB1R.jpg', 'about', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2023-07-04 00:52:35', '2023-07-04 02:40:52');

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
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(2, 'browse_bread', NULL, '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(3, 'browse_database', NULL, '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(4, 'browse_media', NULL, '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(5, 'browse_compass', NULL, '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(6, 'browse_menus', 'menus', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(7, 'read_menus', 'menus', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(8, 'edit_menus', 'menus', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(9, 'add_menus', 'menus', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(10, 'delete_menus', 'menus', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(11, 'browse_roles', 'roles', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(12, 'read_roles', 'roles', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(13, 'edit_roles', 'roles', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(14, 'add_roles', 'roles', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(15, 'delete_roles', 'roles', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(16, 'browse_users', 'users', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(17, 'read_users', 'users', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(18, 'edit_users', 'users', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(19, 'add_users', 'users', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(20, 'delete_users', 'users', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(21, 'browse_settings', 'settings', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(22, 'read_settings', 'settings', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(23, 'edit_settings', 'settings', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(24, 'add_settings', 'settings', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(25, 'delete_settings', 'settings', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(26, 'browse_categories', 'categories', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(27, 'read_categories', 'categories', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(28, 'edit_categories', 'categories', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(29, 'add_categories', 'categories', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(30, 'delete_categories', 'categories', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(31, 'browse_posts', 'posts', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(32, 'read_posts', 'posts', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(33, 'edit_posts', 'posts', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(34, 'add_posts', 'posts', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(35, 'delete_posts', 'posts', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(36, 'browse_pages', 'pages', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(37, 'read_pages', 'pages', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(38, 'edit_pages', 'pages', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(39, 'add_pages', 'pages', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(40, 'delete_pages', 'pages', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(41, 'browse_collections', 'collections', '2023-07-04 00:55:31', '2023-07-04 00:55:31'),
(42, 'read_collections', 'collections', '2023-07-04 00:55:31', '2023-07-04 00:55:31'),
(43, 'edit_collections', 'collections', '2023-07-04 00:55:31', '2023-07-04 00:55:31'),
(44, 'add_collections', 'collections', '2023-07-04 00:55:31', '2023-07-04 00:55:31'),
(45, 'delete_collections', 'collections', '2023-07-04 00:55:31', '2023-07-04 00:55:31'),
(46, 'browse_rooms', 'rooms', '2023-07-04 01:06:08', '2023-07-04 01:06:08'),
(47, 'read_rooms', 'rooms', '2023-07-04 01:06:08', '2023-07-04 01:06:08'),
(48, 'edit_rooms', 'rooms', '2023-07-04 01:06:08', '2023-07-04 01:06:08'),
(49, 'add_rooms', 'rooms', '2023-07-04 01:06:08', '2023-07-04 01:06:08'),
(50, 'delete_rooms', 'rooms', '2023-07-04 01:06:08', '2023-07-04 01:06:08'),
(51, 'browse_cuisines', 'cuisines', '2023-07-04 01:17:53', '2023-07-04 01:17:53'),
(52, 'read_cuisines', 'cuisines', '2023-07-04 01:17:53', '2023-07-04 01:17:53'),
(53, 'edit_cuisines', 'cuisines', '2023-07-04 01:17:53', '2023-07-04 01:17:53'),
(54, 'add_cuisines', 'cuisines', '2023-07-04 01:17:53', '2023-07-04 01:17:53'),
(55, 'delete_cuisines', 'cuisines', '2023-07-04 01:17:53', '2023-07-04 01:17:53'),
(56, 'browse_services', 'services', '2023-07-04 01:27:04', '2023-07-04 01:27:04'),
(57, 'read_services', 'services', '2023-07-04 01:27:04', '2023-07-04 01:27:04'),
(58, 'edit_services', 'services', '2023-07-04 01:27:04', '2023-07-04 01:27:04'),
(59, 'add_services', 'services', '2023-07-04 01:27:04', '2023-07-04 01:27:04'),
(60, 'delete_services', 'services', '2023-07-04 01:27:04', '2023-07-04 01:27:04'),
(61, 'browse_banners', 'banners', '2023-07-04 01:33:38', '2023-07-04 01:33:38'),
(62, 'read_banners', 'banners', '2023-07-04 01:33:38', '2023-07-04 01:33:38'),
(63, 'edit_banners', 'banners', '2023-07-04 01:33:38', '2023-07-04 01:33:38'),
(64, 'add_banners', 'banners', '2023-07-04 01:33:38', '2023-07-04 01:33:38'),
(65, 'delete_banners', 'banners', '2023-07-04 01:33:38', '2023-07-04 01:33:38'),
(66, 'browse_books', 'books', '2023-07-04 19:34:57', '2023-07-04 19:34:57'),
(67, 'read_books', 'books', '2023-07-04 19:34:57', '2023-07-04 19:34:57'),
(68, 'edit_books', 'books', '2023-07-04 19:34:57', '2023-07-04 19:34:57'),
(69, 'add_books', 'books', '2023-07-04 19:34:57', '2023-07-04 19:34:57'),
(70, 'delete_books', 'books', '2023-07-04 19:34:57', '2023-07-04 19:34:57'),
(71, 'browse_contacts', 'contacts', '2023-07-04 20:52:21', '2023-07-04 20:52:21'),
(72, 'read_contacts', 'contacts', '2023-07-04 20:52:21', '2023-07-04 20:52:21'),
(73, 'edit_contacts', 'contacts', '2023-07-04 20:52:21', '2023-07-04 20:52:21'),
(74, 'add_contacts', 'contacts', '2023-07-04 20:52:21', '2023-07-04 20:52:21'),
(75, 'delete_contacts', 'contacts', '2023-07-04 20:52:21', '2023-07-04 20:52:21');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int UNSIGNED NOT NULL,
  `author_id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(5, 1, 1, 'CHÚC MỪNG SINH NHẬT ANH CHỊ EM CBCNV KIM THÁI', NULL, 'Tháng 2 tháng của những cơn mưa phùn đan xen với chút se lạnh của mùa đông, hòa vào đó là sự ấm áp, nhẹ nhàng của những tia nắng đầu mùa. Bên cạnh đó, tháng 2 cũng mang trong mình một sự tươi mới, trẻ trung và sự nhiệt huyết', '<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xdj266r x126k92a\">\r\n<div dir=\"auto\">[ CH&Uacute;C MỪNG SINH NHẬT ANH CHỊ EM CBCNV KIM TH&Aacute;I ]&nbsp;<span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t5/1/16/1f382.png\" alt=\"🎂\" width=\"16\" height=\"16\" loading=\"lazy\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tbf/1/16/1f9c1.png\" alt=\"🧁\" width=\"16\" height=\"16\" loading=\"lazy\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" alt=\"❤️\" width=\"16\" height=\"16\" loading=\"lazy\"></span></div>\r\n</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\">\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t99/1/16/1f33a.png\" alt=\"🌺\" width=\"16\" height=\"16\" loading=\"lazy\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t99/1/16/1f33a.png\" alt=\"🌺\" width=\"16\" height=\"16\" loading=\"lazy\"></span>Th&aacute;ng 2 th&aacute;ng của những cơn mưa ph&ugrave;n đan xen với ch&uacute;t se lạnh của m&ugrave;a đ&ocirc;ng, h&ograve;a v&agrave;o đ&oacute; l&agrave; sự ấm &aacute;p, nhẹ nh&agrave;ng của những tia nắng đầu m&ugrave;a. B&ecirc;n cạnh đ&oacute;, th&aacute;ng 2 cũng mang trong m&igrave;nh một sự tươi mới, trẻ trung v&agrave; sự nhiệt huyết .<span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" alt=\"❤️\" width=\"16\" height=\"16\" loading=\"lazy\"></span></div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t9b/1/16/1f33c.png\" alt=\"🌼\" width=\"16\" height=\"16\" loading=\"lazy\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t9b/1/16/1f33c.png\" alt=\"🌼\" width=\"16\" height=\"16\" loading=\"lazy\"></span>Ho&agrave; chung với kh&ocirc;ng kh&iacute; của th&aacute;ng ngập tr&agrave;n y&ecirc;u thương n&agrave;y, C&ocirc;ng ty cổ phần Kim Th&aacute;i xin gửi lời ch&uacute;c mừng sinh nhật đến c&aacute;c Anh chị em CBCNV Kim Th&aacute;i. Ngo&agrave;i tổ ấm nhỏ của m&igrave;nh, hy vọng c&ocirc;ng ty sẽ l&agrave; nơi anh chị em gửi gắm y&ecirc;u thương. C&ocirc;ng ty xin ch&uacute;c c&aacute;c anh chị c&oacute; sinh nhật trong th&aacute;ng 1+2 c&oacute; một sinh nhật thật vui vẻ, &yacute; nghĩa, lu&ocirc;n tr&agrave;n đầy y&ecirc;u thương, nhiều niềm vui v&agrave; hạnh ph&uacute;c.<span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tf0/1/16/1f338.png\" alt=\"🌸\" width=\"16\" height=\"16\" loading=\"lazy\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t5/1/16/1f382.png\" alt=\"🎂\" width=\"16\" height=\"16\" loading=\"lazy\"></span></div>\r\n<div dir=\"auto\"><img class=\"alignnone size-medium wp-image-1296\" src=\"http://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4123819859241_5b7571ed42fea3205ab477d221921491-300x169.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4123819859241_5b7571ed42fea3205ab477d221921491-300x169.jpg 300w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4123819859241_5b7571ed42fea3205ab477d221921491-1024x576.jpg 1024w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4123819859241_5b7571ed42fea3205ab477d221921491-768x432.jpg 768w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4123819859241_5b7571ed42fea3205ab477d221921491-1536x864.jpg 1536w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4123819859241_5b7571ed42fea3205ab477d221921491-2048x1152.jpg 2048w\" alt=\"\" width=\"300\" height=\"169\" loading=\"lazy\">&nbsp;<img class=\"alignnone size-medium wp-image-1303\" src=\"http://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4125525721652_e2050e016a898f015581124e89a50c19-300x197.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4125525721652_e2050e016a898f015581124e89a50c19-300x197.jpg 300w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4125525721652_e2050e016a898f015581124e89a50c19-1024x671.jpg 1024w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4125525721652_e2050e016a898f015581124e89a50c19-768x503.jpg 768w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4125525721652_e2050e016a898f015581124e89a50c19-1536x1007.jpg 1536w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4125525721652_e2050e016a898f015581124e89a50c19-2048x1342.jpg 2048w\" alt=\"\" width=\"300\" height=\"197\" loading=\"lazy\">&nbsp;<img class=\"alignnone size-medium wp-image-1304\" src=\"http://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4125525774683_10af9a4bb7aba34cf3ad7009e4321f36-300x225.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4125525774683_10af9a4bb7aba34cf3ad7009e4321f36-300x225.jpg 300w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4125525774683_10af9a4bb7aba34cf3ad7009e4321f36-1024x768.jpg 1024w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4125525774683_10af9a4bb7aba34cf3ad7009e4321f36-768x576.jpg 768w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4125525774683_10af9a4bb7aba34cf3ad7009e4321f36-1536x1152.jpg 1536w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4125525774683_10af9a4bb7aba34cf3ad7009e4321f36-2048x1536.jpg 2048w\" alt=\"\" width=\"300\" height=\"225\" loading=\"lazy\"></div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t28/1/16/1f352.png\" alt=\"🍒\" width=\"16\" height=\"16\" loading=\"lazy\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t28/1/16/1f352.png\" alt=\"🍒\" width=\"16\" height=\"16\" loading=\"lazy\"></span>Ch&uacute;c Anh chị em lu&ocirc;n tr&agrave;n đầy nhiệt huyết</div>\r\n<div dir=\"auto\">v&agrave; ch&aacute;y hết m&igrave;nh với đam m&ecirc;&nbsp;<span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t1a/1/16/1f33b.png\" alt=\"🌻\" width=\"16\" height=\"16\" loading=\"lazy\"></span></div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t5/1/16/1f382.png\" alt=\"🎂\" width=\"16\" height=\"16\" loading=\"lazy\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6d/1/16/1f973.png\" alt=\"🥳\" width=\"16\" height=\"16\" loading=\"lazy\"></span>Ch&uacute;c mừng sinh nhật Anh chị em Kim Th&aacute;i&nbsp;<span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t5/1/16/1f382.png\" alt=\"🎂\" width=\"16\" height=\"16\" loading=\"lazy\"></span></div>\r\n<div dir=\"auto\"><img class=\"alignnone size-medium wp-image-1300\" src=\"http://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4123821334189_f5082e2e583bbfe4c482129a363d5981-300x239.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4123821334189_f5082e2e583bbfe4c482129a363d5981-300x239.jpg 300w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4123821334189_f5082e2e583bbfe4c482129a363d5981-1024x814.jpg 1024w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4123821334189_f5082e2e583bbfe4c482129a363d5981-768x611.jpg 768w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4123821334189_f5082e2e583bbfe4c482129a363d5981-1536x1222.jpg 1536w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4123821334189_f5082e2e583bbfe4c482129a363d5981-2048x1629.jpg 2048w\" alt=\"\" width=\"300\" height=\"239\" loading=\"lazy\">&nbsp;<img class=\"alignnone size-medium wp-image-1299\" src=\"http://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4123819863605_9f7320ccb57a229b263fd176e16b092a-300x266.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4123819863605_9f7320ccb57a229b263fd176e16b092a-300x266.jpg 300w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4123819863605_9f7320ccb57a229b263fd176e16b092a-1024x906.jpg 1024w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4123819863605_9f7320ccb57a229b263fd176e16b092a-768x680.jpg 768w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4123819863605_9f7320ccb57a229b263fd176e16b092a-1536x1360.jpg 1536w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4123819863605_9f7320ccb57a229b263fd176e16b092a-2048x1813.jpg 2048w\" alt=\"\" width=\"300\" height=\"266\" loading=\"lazy\">&nbsp;<img class=\"alignnone size-medium wp-image-1298\" src=\"http://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4123819861933_bb442a0aac39a91e1694c7f57d989d42-300x200.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4123819861933_bb442a0aac39a91e1694c7f57d989d42-300x200.jpg 300w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4123819861933_bb442a0aac39a91e1694c7f57d989d42-1024x684.jpg 1024w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4123819861933_bb442a0aac39a91e1694c7f57d989d42-768x513.jpg 768w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4123819861933_bb442a0aac39a91e1694c7f57d989d42-1536x1026.jpg 1536w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4123819861933_bb442a0aac39a91e1694c7f57d989d42-2048x1368.jpg 2048w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/z4123819861933_bb442a0aac39a91e1694c7f57d989d42-750x500.jpg 750w\" alt=\"\" width=\"300\" height=\"200\" loading=\"lazy\"></div>\r\n<div dir=\"auto\"><a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1qq9wsj xo1l8bm\" tabindex=\"0\" role=\"link\" href=\"https://www.facebook.com/hashtag/chucmungsinhnhat?__eep__=6&amp;__cft__[0]=AZXGrwX5B_75rItnfsrDqdRhDkAhsOU1s99AdRyoJ1YdaS6CMv0mHAVIeCGRXvuMaX69Z1uVs2EHsbwqJZjYDP6QWQdiYDu5UKuHZLKyFRFN6Roj-g31zOSpzfJ01RH7mJY7hsATST5SiMNrDA-wkFkuKkYi0AvYqH_DqLVld3rp83d3owtDTVH2nR7S3mIKmpPlzK7FQC-q9H2hSf2egzet&amp;__tn__=*NK-R\">#chucmungsinhnhat</a>&nbsp;<a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1qq9wsj xo1l8bm\" tabindex=\"0\" role=\"link\" href=\"https://www.facebook.com/hashtag/sinhnhat?__eep__=6&amp;__cft__[0]=AZXGrwX5B_75rItnfsrDqdRhDkAhsOU1s99AdRyoJ1YdaS6CMv0mHAVIeCGRXvuMaX69Z1uVs2EHsbwqJZjYDP6QWQdiYDu5UKuHZLKyFRFN6Roj-g31zOSpzfJ01RH7mJY7hsATST5SiMNrDA-wkFkuKkYi0AvYqH_DqLVld3rp83d3owtDTVH2nR7S3mIKmpPlzK7FQC-q9H2hSf2egzet&amp;__tn__=*NK-R\">#sinhnhat</a>&nbsp;<a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1qq9wsj xo1l8bm\" tabindex=\"0\" role=\"link\" href=\"https://www.facebook.com/hashtag/chucmung?__eep__=6&amp;__cft__[0]=AZXGrwX5B_75rItnfsrDqdRhDkAhsOU1s99AdRyoJ1YdaS6CMv0mHAVIeCGRXvuMaX69Z1uVs2EHsbwqJZjYDP6QWQdiYDu5UKuHZLKyFRFN6Roj-g31zOSpzfJ01RH7mJY7hsATST5SiMNrDA-wkFkuKkYi0AvYqH_DqLVld3rp83d3owtDTVH2nR7S3mIKmpPlzK7FQC-q9H2hSf2egzet&amp;__tn__=*NK-R\">#chucmung</a>&nbsp;<a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1qq9wsj xo1l8bm\" tabindex=\"0\" role=\"link\" href=\"https://www.facebook.com/hashtag/sinhnhatthang?__eep__=6&amp;__cft__[0]=AZXGrwX5B_75rItnfsrDqdRhDkAhsOU1s99AdRyoJ1YdaS6CMv0mHAVIeCGRXvuMaX69Z1uVs2EHsbwqJZjYDP6QWQdiYDu5UKuHZLKyFRFN6Roj-g31zOSpzfJ01RH7mJY7hsATST5SiMNrDA-wkFkuKkYi0AvYqH_DqLVld3rp83d3owtDTVH2nR7S3mIKmpPlzK7FQC-q9H2hSf2egzet&amp;__tn__=*NK-R\">#sinhnhatthang</a>&nbsp;<a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1qq9wsj xo1l8bm\" tabindex=\"0\" role=\"link\" href=\"https://www.facebook.com/hashtag/sinhnhatnhanvien?__eep__=6&amp;__cft__[0]=AZXGrwX5B_75rItnfsrDqdRhDkAhsOU1s99AdRyoJ1YdaS6CMv0mHAVIeCGRXvuMaX69Z1uVs2EHsbwqJZjYDP6QWQdiYDu5UKuHZLKyFRFN6Roj-g31zOSpzfJ01RH7mJY7hsATST5SiMNrDA-wkFkuKkYi0AvYqH_DqLVld3rp83d3owtDTVH2nR7S3mIKmpPlzK7FQC-q9H2hSf2egzet&amp;__tn__=*NK-R\">#sinhnhatnhanvien</a></div>\r\n</div>', 'posts\\July2023\\VCHsXTxsNiegbKE6tEN7.jpg', 'chuc-mung-sinh-nhat-anh-chi-em-cbcnv-kim-thai', NULL, NULL, 'PUBLISHED', 0, '2023-07-04 02:13:47', '2023-07-04 02:13:47'),
(6, 1, 1, 'CHÀO ĐÓN NGÀY LỄ TÌNH YÊU 14/2', NULL, 'Hãy dành cho một nửa yêu thương điều lãng mạn bất ngờ trong không gian tinh tế để cảm xúc được thăng hoa cùng những vũ điệu đậm chất “tình yêu” được thiết kế dành riêng cho ngày lễ Tình Nhân.\r\nTất cả hãy để 𝗞𝗜𝗠 𝗧𝗛𝗔𝗜 𝗛𝗢𝗧𝗘𝗟 thay lời bạn muốn nói đến nửa yêu thương trong ngày đặc biệt này!', '<div dir=\"auto\">Bạn v&agrave; người ấy đ&atilde; c&ugrave;ng nhau bước qua bao nhi&ecirc;u m&ugrave;a y&ecirc;u rồi?</div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t17/1/16/1f49d.png\" alt=\"💝\" width=\"16\" height=\"16\" loading=\"lazy\"></span>&nbsp;H&atilde;y c&ugrave;ng nhau đ&aacute;nh dấu chặng đường t&igrave;nh y&ecirc;u, h&acirc;m n&oacute;ng t&igrave;nh cảm bằng một chuyến nghỉ dưỡng đẳng cấp nhưng v&ocirc; c&ugrave;ng ấm &aacute;p tại 𝗞𝗜𝗠 𝗧𝗛𝗔𝗜 𝗛𝗢𝗧𝗘𝗟</div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t17/1/16/1f49d.png\" alt=\"💝\" width=\"16\" height=\"16\" loading=\"lazy\"></span>&nbsp;H&atilde;y d&agrave;nh cho một nửa y&ecirc;u thương điều l&atilde;ng mạn bất ngờ trong kh&ocirc;ng gian tinh tế để cảm x&uacute;c được thăng hoa c&ugrave;ng những vũ điệu đậm chất &ldquo;t&igrave;nh y&ecirc;u&rdquo; được thiết kế d&agrave;nh ri&ecirc;ng cho ng&agrave;y lễ T&igrave;nh Nh&acirc;n.</div>\r\n<div dir=\"auto\">Tất cả h&atilde;y để 𝗞𝗜𝗠 𝗧𝗛𝗔𝗜 𝗛𝗢𝗧𝗘𝗟 thay lời bạn muốn n&oacute;i đến nửa y&ecirc;u thương trong ng&agrave;y đặc biệt n&agrave;y!</div>\r\n<div dir=\"auto\">&ndash;<span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t71/1/16/1f339.png\" alt=\"🌹\" width=\"16\" height=\"16\" loading=\"lazy\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t71/1/16/1f339.png\" alt=\"🌹\" width=\"16\" height=\"16\" loading=\"lazy\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t71/1/16/1f339.png\" alt=\"🌹\" width=\"16\" height=\"16\" loading=\"lazy\"></span>&ndash;</div>\r\n<div dir=\"auto\"><img class=\"alignnone size-medium wp-image-1310\" src=\"http://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8685-300x200.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"https://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8685-300x200.jpg 300w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8685-1024x683.jpg 1024w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8685-768x512.jpg 768w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8685-1536x1024.jpg 1536w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8685-2048x1365.jpg 2048w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8685-750x500.jpg 750w\" alt=\"\" width=\"300\" height=\"200\" loading=\"lazy\"></div>\r\n<div dir=\"auto\">❥Combo 𝓣𝓱𝓾̛𝓸̛𝓷𝓰 𝓜𝓮̂ 𝓢𝓪𝔂 chỉ 𝟐.𝟒𝟗𝟎.𝟎𝟎𝟎 𝐕𝐍Đ/2 người</div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" alt=\"❤️\" width=\"16\" height=\"16\" loading=\"lazy\"></span>&nbsp;01 đ&ecirc;m lưu tr&uacute; hạng ph&ograve;ng VIP sang trọng.</div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" alt=\"❤️\" width=\"16\" height=\"16\" loading=\"lazy\"></span>&nbsp;Ăn sáng buffet 3 sao đẳng cấp tại tầng 15, ngắm trọn th&agrave;nh phố</div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" alt=\"❤️\" width=\"16\" height=\"16\" loading=\"lazy\"></span>&nbsp;Trang tr&iacute; Valentine si&ecirc;u lung linh trong ph&ograve;ng</div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" alt=\"❤️\" width=\"16\" height=\"16\" loading=\"lazy\"></span>&nbsp;1 bữa ăn t&ocirc;́i tại phòng bao g&ocirc;̀m :</div>\r\n<div dir=\"auto\">+ 2 su&acirc;́t bò Fuji nướng sốt bơ tỏi</div>\r\n<div dir=\"auto\">+ 1 salad hoa quả</div>\r\n<div dir=\"auto\">+ 1 su&acirc;́t Bruschetta</div>\r\n<div dir=\"auto\">+ 2 ly rượu vang đỏ<span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tf/1/16/1f942.png\" alt=\"🥂\" width=\"16\" height=\"16\" loading=\"lazy\"></span></div>\r\n<div dir=\"auto\">+ 1 đĩa hoa quả tráng mi&ecirc;̣ng (theo mùa)</div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" alt=\"❤️\" width=\"16\" height=\"16\" loading=\"lazy\"></span>&nbsp;TẶNG G&Oacute;I GỘI ĐẦU MASSAGE VAI CỔ G&Aacute;Y + X&Ocirc;NG CH&Acirc;N MIỄN PH&Iacute; CHO 2 NGƯỜI tại Amona Spa</div>\r\n<div dir=\"auto\">&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;</div>\r\n<div dir=\"auto\"><img class=\"alignnone size-medium wp-image-1311\" src=\"http://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8691-200x300.jpg\" sizes=\"(max-width: 200px) 100vw, 200px\" srcset=\"https://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8691-200x300.jpg 200w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8691-683x1024.jpg 683w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8691-768x1152.jpg 768w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8691-1024x1536.jpg 1024w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8691-1365x2048.jpg 1365w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8691-scaled.jpg 1707w\" alt=\"\" width=\"200\" height=\"300\" loading=\"lazy\"></div>\r\n<div dir=\"auto\">❥Combo 𝓨𝓮̂𝓾 𝓝𝓸̂̀𝓷𝓰 𝓒𝓱𝓪́𝔂 chỉ 𝟑.𝟏𝟗𝟎.𝟎𝟎𝟎 𝐕𝐍Đ/2 người</div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" alt=\"❤️\" width=\"16\" height=\"16\" loading=\"lazy\"></span>&nbsp;01 đ&ecirc;m lưu tr&uacute; hạng ph&ograve;ng SUITE sang trọng.</div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" alt=\"❤️\" width=\"16\" height=\"16\" loading=\"lazy\"></span>&nbsp;Ăn sáng buffet 3 sao đẳng cấp tại tầng 15, ngắm trọn th&agrave;nh phố</div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" alt=\"❤️\" width=\"16\" height=\"16\" loading=\"lazy\"></span>&nbsp;Trang tr&iacute; Valentine si&ecirc;u lung linh trong ph&ograve;ng</div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" alt=\"❤️\" width=\"16\" height=\"16\" loading=\"lazy\"></span>&nbsp;1 bữa ăn t&ocirc;́i tại phòng bao g&ocirc;̀m :</div>\r\n<div dir=\"auto\">+ 2 su&acirc;́t bò Fuji &ldquo;𝗗𝗮́𝘁 𝗩𝗮̀𝗻𝗴&rdquo;</div>\r\n<div dir=\"auto\">+ 1 su&acirc;́t Bruschetta</div>\r\n<div dir=\"auto\">+ 2 ly rượu vang đỏ<span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tf/1/16/1f942.png\" alt=\"🥂\" width=\"16\" height=\"16\" loading=\"lazy\"></span></div>\r\n<div dir=\"auto\">+ 1 đĩa phomai d&acirc;y Nga</div>\r\n<div dir=\"auto\">+ 1 salad hoa quả</div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" alt=\"❤️\" width=\"16\" height=\"16\" loading=\"lazy\"></span>&nbsp;TẶNG G&Oacute;I MASSAGE BODY 60&prime; + X&Ocirc;NG CH&Acirc;N MIỄN PH&Iacute; CHO 2 NGƯỜI tại Amona Spa</div>\r\n<div dir=\"auto\">&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;</div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tbd/1/16/26d4.png\" alt=\"⛔️\" width=\"16\" height=\"16\" loading=\"lazy\"></span>Lưu &yacute;: Chỉ &aacute;p dụng cho booking đặt ph&ograve;ng trước, Q&uacute;y kh&aacute;ch n&ecirc;n đặt ph&ograve;ng trước để ch&uacute;ng t&ocirc;i chuẩn bị được chu đ&aacute;o nhất<span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t76/1/16/1f48b.png\" alt=\"💋\" width=\"16\" height=\"16\" loading=\"lazy\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tf0/1/16/1f338.png\" alt=\"🌸\" width=\"16\" height=\"16\" loading=\"lazy\"></span></div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" alt=\"❤\" width=\"16\" height=\"16\" loading=\"lazy\"></span>Chương tr&igrave;nh &aacute;p dụng từ ng&agrave;y 8/2 đến hết ng&agrave;y 19/2/2023<span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t5b/1/16/270b_1f3fb.png\" alt=\"✋🏻\" width=\"16\" height=\"16\" loading=\"lazy\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tfb/1/16/263a.png\" alt=\"☺️\" width=\"16\" height=\"16\" loading=\"lazy\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tfb/1/16/263a.png\" alt=\"☺️\" width=\"16\" height=\"16\" loading=\"lazy\"></span></div>\r\n<div dir=\"auto\">𝗞𝗜𝗠 𝗧𝗛𝗔𝗜 𝗛𝗢𝗧𝗘𝗟</div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tf6/1/16/1f3e0.png\" alt=\"🏠\" width=\"16\" height=\"16\" loading=\"lazy\"></span>: KS Kim Th&aacute;i, số 3, đường Ho&agrave;ng Văn Thụ, TP.Th&aacute;i Nguy&ecirc;n</div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t22/1/16/260e.png\" alt=\"☎️\" width=\"16\" height=\"16\" loading=\"lazy\"></span>&nbsp;0208.3933. 566</div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/td8/1/16/1f4f2.png\" alt=\"📲\" width=\"16\" height=\"16\" loading=\"lazy\"></span>&nbsp;‭ 0886.835.588</div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tc0/1/16/1f4e9.png\" alt=\"📩\" width=\"16\" height=\"16\" loading=\"lazy\"></span>&nbsp;Kimthaihoteltn@gmail.com</div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t41/1/16/1f30f.png\" alt=\"🌏\" width=\"16\" height=\"16\" loading=\"lazy\"></span>&nbsp;<a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1fey0fg\" tabindex=\"0\" role=\"link\" href=\"https://l.facebook.com/l.php?u=http%3A%2F%2FWWW.kimthaihotel.com.vn%2F%3Ffbclid%3DIwAR1FW7S6tgiFZ8rj5oun4AgPrZqPCnCSpr8rqd6S6fpcaQAbE59cbNWRdIs&amp;h=AT1xAFuOXRFCZ_OnIBsff_u78OT4NXx1GPY8cfKBtzGgtTWf4f4e_3uqhS5DHLtxr9wJbWhtqaoW4dvjSVbJdjGldsueXgUWSYY4fq3sQG6HKI_yjoTXYoN0B1cGhCY5N8tq&amp;__tn__=-UK-R&amp;c[0]=AT1XucBLB32g2b0WEeUMnZy25ZIpynZgfZSRsLl9AJoH2OeBWVA2paD2GC4ZZ82T7Inja__jzgcGYyO-1D6X3SPddcOQ8rW8dhY0Y55HqWF9om9oRa1yNJS9cg_4ePbBQoaRYyJubnwLaI9fzrHF0DWtGOJrW24bvLHJ78Rs8ctd7JHxYHMlYD-Lw4bGQLa7mjbabNdwB70q3bZUrkCGMc9skzo-VmaMx84HNTk\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">WWW.kimthaihotel.com.vn</a></div>\r\n<div dir=\"auto\"><a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1qq9wsj xo1l8bm\" tabindex=\"0\" role=\"link\" href=\"https://www.facebook.com/hashtag/valentine?__eep__=6&amp;__cft__[0]=AZWyyxhetBOnrz5ztv_KdGBB6-aCcosXkO3iO7DkXqtroHlNbtO_ngHup3QZai-iH4uQ0k4UyxDEuzqq45Gyhtna4zeW5gfMwD4mwo19bLgI60Ry29t4MUzSHFDKQxIhSQZbrbWkkbMCLW-dJxNhjCHB_feHO8m7pAWDupY284sa2Lbn0U0CWBM8x3jJMFhUxwx7JOKJdqtlxgIpOppE52fO&amp;__tn__=*NK-R\">#valentine</a>&nbsp;<a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1qq9wsj xo1l8bm\" tabindex=\"0\" role=\"link\" href=\"https://www.facebook.com/hashtag/ngayletinhyeu?__eep__=6&amp;__cft__[0]=AZWyyxhetBOnrz5ztv_KdGBB6-aCcosXkO3iO7DkXqtroHlNbtO_ngHup3QZai-iH4uQ0k4UyxDEuzqq45Gyhtna4zeW5gfMwD4mwo19bLgI60Ry29t4MUzSHFDKQxIhSQZbrbWkkbMCLW-dJxNhjCHB_feHO8m7pAWDupY284sa2Lbn0U0CWBM8x3jJMFhUxwx7JOKJdqtlxgIpOppE52fO&amp;__tn__=*NK-R\">#ngayletinhyeu</a>&nbsp;<a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1qq9wsj xo1l8bm\" tabindex=\"0\" role=\"link\" href=\"https://www.facebook.com/hashtag/phonghoneymoon?__eep__=6&amp;__cft__[0]=AZWyyxhetBOnrz5ztv_KdGBB6-aCcosXkO3iO7DkXqtroHlNbtO_ngHup3QZai-iH4uQ0k4UyxDEuzqq45Gyhtna4zeW5gfMwD4mwo19bLgI60Ry29t4MUzSHFDKQxIhSQZbrbWkkbMCLW-dJxNhjCHB_feHO8m7pAWDupY284sa2Lbn0U0CWBM8x3jJMFhUxwx7JOKJdqtlxgIpOppE52fO&amp;__tn__=*NK-R\">#phonghoneymoon</a>&nbsp;<a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1qq9wsj xo1l8bm\" tabindex=\"0\" role=\"link\" href=\"https://www.facebook.com/hashtag/langman?__eep__=6&amp;__cft__[0]=AZWyyxhetBOnrz5ztv_KdGBB6-aCcosXkO3iO7DkXqtroHlNbtO_ngHup3QZai-iH4uQ0k4UyxDEuzqq45Gyhtna4zeW5gfMwD4mwo19bLgI60Ry29t4MUzSHFDKQxIhSQZbrbWkkbMCLW-dJxNhjCHB_feHO8m7pAWDupY284sa2Lbn0U0CWBM8x3jJMFhUxwx7JOKJdqtlxgIpOppE52fO&amp;__tn__=*NK-R\">#langman</a>&nbsp;<a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1qq9wsj xo1l8bm\" tabindex=\"0\" role=\"link\" href=\"https://www.facebook.com/hashtag/kynghi?__eep__=6&amp;__cft__[0]=AZWyyxhetBOnrz5ztv_KdGBB6-aCcosXkO3iO7DkXqtroHlNbtO_ngHup3QZai-iH4uQ0k4UyxDEuzqq45Gyhtna4zeW5gfMwD4mwo19bLgI60Ry29t4MUzSHFDKQxIhSQZbrbWkkbMCLW-dJxNhjCHB_feHO8m7pAWDupY284sa2Lbn0U0CWBM8x3jJMFhUxwx7JOKJdqtlxgIpOppE52fO&amp;__tn__=*NK-R\">#kynghi</a>&nbsp;<a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1qq9wsj xo1l8bm\" tabindex=\"0\" role=\"link\" href=\"https://www.facebook.com/hashtag/kimthaihotel?__eep__=6&amp;__cft__[0]=AZWyyxhetBOnrz5ztv_KdGBB6-aCcosXkO3iO7DkXqtroHlNbtO_ngHup3QZai-iH4uQ0k4UyxDEuzqq45Gyhtna4zeW5gfMwD4mwo19bLgI60Ry29t4MUzSHFDKQxIhSQZbrbWkkbMCLW-dJxNhjCHB_feHO8m7pAWDupY284sa2Lbn0U0CWBM8x3jJMFhUxwx7JOKJdqtlxgIpOppE52fO&amp;__tn__=*NK-R\">#kimthaihotel</a>&nbsp;<a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1qq9wsj xo1l8bm\" tabindex=\"0\" role=\"link\" href=\"https://www.facebook.com/hashtag/khachsankimthai?__eep__=6&amp;__cft__[0]=AZWyyxhetBOnrz5ztv_KdGBB6-aCcosXkO3iO7DkXqtroHlNbtO_ngHup3QZai-iH4uQ0k4UyxDEuzqq45Gyhtna4zeW5gfMwD4mwo19bLgI60Ry29t4MUzSHFDKQxIhSQZbrbWkkbMCLW-dJxNhjCHB_feHO8m7pAWDupY284sa2Lbn0U0CWBM8x3jJMFhUxwx7JOKJdqtlxgIpOppE52fO&amp;__tn__=*NK-R\">#khachsankimthai</a>&nbsp;<a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1qq9wsj xo1l8bm\" tabindex=\"0\" role=\"link\" href=\"https://www.facebook.com/hashtag/kimthairestaurant?__eep__=6&amp;__cft__[0]=AZWyyxhetBOnrz5ztv_KdGBB6-aCcosXkO3iO7DkXqtroHlNbtO_ngHup3QZai-iH4uQ0k4UyxDEuzqq45Gyhtna4zeW5gfMwD4mwo19bLgI60Ry29t4MUzSHFDKQxIhSQZbrbWkkbMCLW-dJxNhjCHB_feHO8m7pAWDupY284sa2Lbn0U0CWBM8x3jJMFhUxwx7JOKJdqtlxgIpOppE52fO&amp;__tn__=*NK-R\">#kimthairestaurant</a>&nbsp;<a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1qq9wsj xo1l8bm\" tabindex=\"0\" role=\"link\" href=\"https://www.facebook.com/hashtag/khachsanthainguyen?__eep__=6&amp;__cft__[0]=AZWyyxhetBOnrz5ztv_KdGBB6-aCcosXkO3iO7DkXqtroHlNbtO_ngHup3QZai-iH4uQ0k4UyxDEuzqq45Gyhtna4zeW5gfMwD4mwo19bLgI60Ry29t4MUzSHFDKQxIhSQZbrbWkkbMCLW-dJxNhjCHB_feHO8m7pAWDupY284sa2Lbn0U0CWBM8x3jJMFhUxwx7JOKJdqtlxgIpOppE52fO&amp;__tn__=*NK-R\">#khachsanthainguyen</a></div>\r\n<div dir=\"auto\"><a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1qq9wsj xo1l8bm\" tabindex=\"0\" role=\"link\" href=\"https://www.facebook.com/hashtag/amonaspa?__eep__=6&amp;__cft__[0]=AZWyyxhetBOnrz5ztv_KdGBB6-aCcosXkO3iO7DkXqtroHlNbtO_ngHup3QZai-iH4uQ0k4UyxDEuzqq45Gyhtna4zeW5gfMwD4mwo19bLgI60Ry29t4MUzSHFDKQxIhSQZbrbWkkbMCLW-dJxNhjCHB_feHO8m7pAWDupY284sa2Lbn0U0CWBM8x3jJMFhUxwx7JOKJdqtlxgIpOppE52fO&amp;__tn__=*NK-R\">#amonaspa</a>&nbsp;<a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1qq9wsj xo1l8bm\" tabindex=\"0\" role=\"link\" href=\"https://www.facebook.com/hashtag/amona?__eep__=6&amp;__cft__[0]=AZWyyxhetBOnrz5ztv_KdGBB6-aCcosXkO3iO7DkXqtroHlNbtO_ngHup3QZai-iH4uQ0k4UyxDEuzqq45Gyhtna4zeW5gfMwD4mwo19bLgI60Ry29t4MUzSHFDKQxIhSQZbrbWkkbMCLW-dJxNhjCHB_feHO8m7pAWDupY284sa2Lbn0U0CWBM8x3jJMFhUxwx7JOKJdqtlxgIpOppE52fO&amp;__tn__=*NK-R\">#amona</a>&nbsp;<a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1qq9wsj xo1l8bm\" tabindex=\"0\" role=\"link\" href=\"https://www.facebook.com/hashtag/spaduongsinh?__eep__=6&amp;__cft__[0]=AZWyyxhetBOnrz5ztv_KdGBB6-aCcosXkO3iO7DkXqtroHlNbtO_ngHup3QZai-iH4uQ0k4UyxDEuzqq45Gyhtna4zeW5gfMwD4mwo19bLgI60Ry29t4MUzSHFDKQxIhSQZbrbWkkbMCLW-dJxNhjCHB_feHO8m7pAWDupY284sa2Lbn0U0CWBM8x3jJMFhUxwx7JOKJdqtlxgIpOppE52fO&amp;__tn__=*NK-R\">#spaduongsinh</a>&nbsp;<a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1qq9wsj xo1l8bm\" tabindex=\"0\" role=\"link\" href=\"https://www.facebook.com/hashtag/massagebody?__eep__=6&amp;__cft__[0]=AZWyyxhetBOnrz5ztv_KdGBB6-aCcosXkO3iO7DkXqtroHlNbtO_ngHup3QZai-iH4uQ0k4UyxDEuzqq45Gyhtna4zeW5gfMwD4mwo19bLgI60Ry29t4MUzSHFDKQxIhSQZbrbWkkbMCLW-dJxNhjCHB_feHO8m7pAWDupY284sa2Lbn0U0CWBM8x3jJMFhUxwx7JOKJdqtlxgIpOppE52fO&amp;__tn__=*NK-R\">#massagebody</a>&nbsp;<a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1qq9wsj xo1l8bm\" tabindex=\"0\" role=\"link\" href=\"https://www.facebook.com/hashtag/goidauduongsinh?__eep__=6&amp;__cft__[0]=AZWyyxhetBOnrz5ztv_KdGBB6-aCcosXkO3iO7DkXqtroHlNbtO_ngHup3QZai-iH4uQ0k4UyxDEuzqq45Gyhtna4zeW5gfMwD4mwo19bLgI60Ry29t4MUzSHFDKQxIhSQZbrbWkkbMCLW-dJxNhjCHB_feHO8m7pAWDupY284sa2Lbn0U0CWBM8x3jJMFhUxwx7JOKJdqtlxgIpOppE52fO&amp;__tn__=*NK-R\">#goidauduongsinh</a></div>\r\n<div dir=\"auto\"><img class=\"alignnone size-medium wp-image-1309\" src=\"http://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8530-200x300.jpg\" sizes=\"(max-width: 200px) 100vw, 200px\" srcset=\"https://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8530-200x300.jpg 200w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8530-683x1024.jpg 683w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8530-768x1152.jpg 768w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8530-1024x1536.jpg 1024w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8530-1365x2048.jpg 1365w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8530-scaled.jpg 1707w\" alt=\"\" width=\"200\" height=\"300\" loading=\"lazy\"><img class=\"alignnone size-medium wp-image-1308\" src=\"http://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8320-200x300.jpg\" sizes=\"(max-width: 200px) 100vw, 200px\" srcset=\"https://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8320-200x300.jpg 200w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8320-683x1024.jpg 683w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8320-768x1152.jpg 768w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8320-1024x1536.jpg 1024w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8320-1365x2048.jpg 1365w, https://kimthaihotel.com.vn/wp-content/uploads/2023/02/6w3a8320-scaled.jpg 1707w\" alt=\"\" width=\"200\" height=\"300\" loading=\"lazy\"></div>', 'posts\\July2023\\bdxh1s95yGIDD11Tf6AE.jpg', 'chao-don-ngay-le-tinh-yeu-14-2', NULL, NULL, 'PUBLISHED', 0, '2023-07-04 02:16:55', '2023-07-04 02:16:55'),
(7, 1, 1, 'HỘI CHỢ TRIỂN LÃM “CHỢ QUÊ” CHÀO MỪNG DỊP TẾT CƠM 10/10 TẠI KHU SINH THÁI NHÀ TÔI', NULL, 'Đây là tết rất ý nghĩa đối với cộng đồng các dân tộc miền núi cũng như người Tày -Nùng để chọn ra những sản vật tạ ơn trời đất. Khu du lịch Sinh Thái Nhà Tôi đã chuẩn bị các thực đơn cho dịp tết Cơm mới phục vụ du khách tuần lễ văn hóa truyền thống này', '<div class=\"xdj266r x11i5rnm xat24cr x1mh8g0r x1vvkbs x126k92a\">\r\n<div dir=\"auto\">Đ&acirc;y l&agrave; tết rất &yacute; nghĩa đối với cộng đồng c&aacute;c d&acirc;n tộc miền n&uacute;i cũng như người T&agrave;y -N&ugrave;ng để chọn ra những sản vật tạ ơn trời đất.</div>\r\n<div dir=\"auto\">Khu du lịch Sinh Th&aacute;i Nh&agrave; T&ocirc;i đ&atilde; chuẩn bị c&aacute;c thực đơn cho dịp tết Cơm mới phục vụ du kh&aacute;ch tuần lễ văn h&oacute;a truyền thống n&agrave;y. Du kh&aacute;ch đến đ&acirc;y c&oacute; thể trải nghiệm văn h&oacute;a v&agrave; thưởng thức những n&ocirc;ng sản, sản vật, cơm mới. C&aacute;c m&oacute;n ăn cơm mới trong dịp n&agrave;y gồm:</div>\r\n<div dir=\"auto\">C&Aacute;C M&Oacute;N</div>\r\n<div dir=\"auto\">+ Cốm nếp vải v&agrave; nếp c&aacute;i hoa v&agrave;ng</div>\r\n<div dir=\"auto\">+ Cơm lam</div>\r\n<div dir=\"auto\">+ X&ocirc;i ngũ sắc</div>\r\n<div dir=\"auto\">+ Cơm nắm muối lạc</div>\r\n<div dir=\"auto\">+ B&aacute;nh khảo</div>\r\n<div dir=\"auto\">+ B&aacute;nh chưng</div>\r\n<div dir=\"auto\">+ B&aacute;nh dầy</div>\r\n<div dir=\"auto\">+ B&aacute;nh nẳng ( B&aacute;nh tro chấm mật)</div>\r\n<div dir=\"auto\">+ Khau nhục</div>\r\n<div dir=\"auto\">+ Lạp sườn</div>\r\n<div dir=\"auto\">+Thịt lợn hun khỏi g&aacute;c bếp</div>\r\n</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\">\r\n<div dir=\"auto\">SẢN VẬT</div>\r\n<div dir=\"auto\">+ Măng kh&ocirc; nứa t&eacute;p (loại chọn)</div>\r\n<div dir=\"auto\">+ Nấm hương loại chọn</div>\r\n<div dir=\"auto\">+ Thịt lợn treo g&aacute;c bếp mua mang về</div>\r\n<div dir=\"auto\">+ Lạp sườn mua mang về</div>\r\n<div dir=\"auto\">+ Khau nhục mua mang về.</div>\r\n<div dir=\"auto\">+ Ch&egrave; uống Th&aacute;i Nguy&ecirc;n</div>\r\n</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\">\r\n<div dir=\"auto\">VĂN H&Oacute;A VĂN NGHỆ</div>\r\n<div dir=\"auto\">+ H&aacute;t then đ&agrave;n t&iacute;nh</div>\r\n<div dir=\"auto\">+ S&aacute;o m&egrave;o</div>\r\n<div dir=\"auto\">Giao lưu d&acirc;n vũ</div>\r\n<div dir=\"auto\">+ Tr&aacute;i nghiệm c&ugrave;ng gia đ&igrave;nh chế biến c&aacute;c m&oacute;n ăn truyền thống</div>\r\n<div dir=\"auto\">+ Ng&acirc;m ch&acirc;n l&aacute; thuốc d&acirc;n gian d&acirc;n tộc Dao</div>\r\n<div dir=\"auto\">Hotline: 0868.466.005</div>\r\n</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\">\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t77/1/16/1f3e1.png\" alt=\"🏡\" width=\"16\" height=\"16\" loading=\"lazy\"></span>&nbsp;Địa chỉ: khu sinh th&aacute;i Nh&agrave; T&ocirc;i &ndash; Sơn Cẩm -Th&aacute;i Nguy&ecirc;n</div>\r\n</div>', 'posts\\July2023\\gOmlKQSIZ8Dlq5Dk8BAA.jpg', 'hoi-cho-trien-lam-cho-que-chao-mung-dip-tet-com-10-10-tai-khu-sinh-thai-nha-toi', NULL, NULL, 'PUBLISHED', 0, '2023-07-04 02:18:10', '2023-07-04 02:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(2, 'user', 'Normal User', '2023-07-04 00:52:35', '2023-07-04 00:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `price` int DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `title`, `slug`, `desc`, `image`, `images`, `content`, `price`, `status`, `category_id`, `created_at`, `updated_at`) VALUES
(3, 'Phòng DELUXE', 'phong-deluxe', 'Diện tích phòng: Khoảng 30m2 Phòng 1 giường (1m8 x 2m) Có hướng cửa sổ nhìn ra thành phố, Viewer đẹp Phòng có trang bị wiffi miễn phí, Truyền hình cáp độ …', 'rooms\\July2023\\rX2bieCZBGEe8tKZDGJX.jpg', '[\"rooms\\\\July2023\\\\nNkdTUDJvzygsEbcDR2c.png\",\"rooms\\\\July2023\\\\C6M6QiUYi0dIVM4ODbhg.png\",\"rooms\\\\July2023\\\\n4QMPYuAfYsvwYm7pIn4.png\"]', '<ul>\r\n<li class=\"excerpt\">Diện t&iacute;ch ph&ograve;ng: Khoảng&nbsp;30m<sup>2</sup></li>\r\n<li>Ph&ograve;ng 1 giường (1m8&nbsp;x 2m)</li>\r\n<li>C&oacute; hướng cửa sổ nh&igrave;n ra th&agrave;nh phố, Viewer đẹp</li>\r\n<li>Ph&ograve;ng c&oacute; trang bị wiffi miễn ph&iacute;, Truyền h&igrave;nh c&aacute;p độ n&eacute;t cao, c&oacute; k&ecirc;nh H&agrave;n Quốc</li>\r\n<li>Gi&aacute; ph&ograve;ng đ&atilde; bao gồm:&nbsp; thuế GTGT 10%,Tr&agrave;, cafe h&ograve;a tan, 2 chai nước lọc miễn ph&iacute;, Ăn s&aacute;ng Bufed miễn ph&iacute; tại nh&agrave; h&agrave;ng tr&ecirc;n tầng 15 của Kh&aacute;ch Sạn</li>\r\n</ul>', 1000000, 'ACTIVE', 2, '2023-07-04 01:44:50', '2023-07-04 01:44:50'),
(4, 'Phòng TRIPLE', 'phong-triple', NULL, 'rooms\\July2023\\kKJEYWsC0QubOQVzD87y.jpg', '[\"rooms\\\\July2023\\\\LwUlezg1BkPFV049SNn6.png\",\"rooms\\\\July2023\\\\m1nEKRd8q4ekNiqQol8q.png\",\"rooms\\\\July2023\\\\9HQ3ofiZBIhduE5ZwpU1.png\"]', '<ul>\r\n<li>Diện t&iacute;ch ph&ograve;ng: Khoảng&nbsp;30m<sup>2</sup></li>\r\n<li>Ph&ograve;ng 3 giường đơn 1m2</li>\r\n<li>C&oacute; hướng cửa sổ nh&igrave;n ra th&agrave;nh phố, Viewer đẹp</li>\r\n<li>Ph&ograve;ng c&oacute; trang bị wiffi miễn ph&iacute;, Truyền h&igrave;nh c&aacute;p độ n&eacute;t cao, c&oacute; k&ecirc;nh H&agrave;n Quốc</li>\r\n<li>Gi&aacute; ph&ograve;ng đ&atilde; bao gồm:&nbsp; thuế GTGT 10%,Tr&agrave;, cafe h&ograve;a tan, 2 chai nước lọc miễn ph&iacute;, Ăn s&aacute;ng Bufed miễn ph&iacute; tại nh&agrave; h&agrave;ng tr&ecirc;n tầng 15 của Kh&aacute;ch Sạn</li>\r\n</ul>', 1300000, 'ACTIVE', 2, '2023-07-04 01:46:48', '2023-07-04 01:46:48'),
(5, 'Phòng FAMILY', 'phong-family', 'Diện tích phòng: Khoảng 30m2 Phòng 1 giường to (1m8 x 2m) và 1 giường đơn 1m2 Có hướng cửa sổ nhìn ra thành phố, Viewer đẹp Phòng có trang bị …', 'rooms\\July2023\\f3KgZ0oLGp6n5f5jf22R.jpg', '[\"rooms\\\\July2023\\\\g6Ez2VnqQ9XsImET9MOv.png\",\"rooms\\\\July2023\\\\80g8LWtmROFhinkRwVW3.png\",\"rooms\\\\July2023\\\\zIa48VryJfjs4fuIcbON.png\"]', '<ul>\r\n<li>Diện t&iacute;ch ph&ograve;ng: Khoảng 30m<sup>2</sup></li>\r\n<li>Ph&ograve;ng 1 giường to (1m8&nbsp;x 2m) v&agrave; 1 giường đơn 1m2</li>\r\n<li>C&oacute; hướng cửa sổ nh&igrave;n ra th&agrave;nh phố, Viewer đẹp</li>\r\n<li>Ph&ograve;ng c&oacute; trang bị wiffi miễn ph&iacute;, Truyền h&igrave;nh c&aacute;p độ n&eacute;t cao, c&oacute; k&ecirc;nh H&agrave;n Quốc</li>\r\n<li>Gi&aacute; ph&ograve;ng đ&atilde; bao gồm:&nbsp; thuế GTGT 10%,Tr&agrave;, cafe h&ograve;a tan, 2 chai nước lọc miễn ph&iacute;, Ăn s&aacute;ng Bufed miễn ph&iacute; tại nh&agrave; h&agrave;ng tr&ecirc;n tầng 15 của Kh&aacute;ch Sạn</li>\r\n</ul>', 1300000, 'ACTIVE', 2, '2023-07-04 01:48:31', '2023-07-04 01:48:31'),
(6, 'Phòng Booking', 'phong-booking', 'Diện tích phòng: Khoảng 30m2 Phòng 2 giường to ( 1m8 x 2m) Có hướng cửa sổ nhìn ra thành phố, Viewer đẹp Phòng có trang bị wiffi miễn phí, …', 'rooms\\July2023\\NIrpy6zCWxrnWFXuwrxQ.jpg', '[\"rooms\\\\July2023\\\\3X1BfeIW1cKhttFhwKcO.png\",\"rooms\\\\July2023\\\\eVJHF8gkxZrg43ojbdlt.png\",\"rooms\\\\July2023\\\\xxsyGLEcLhVvroI1iasn.png\"]', '<ul>\r\n<li>Diện t&iacute;ch ph&ograve;ng: Khoảng 30m<sup>2</sup></li>\r\n<li>Ph&ograve;ng 2 giường to ( 1m8 x 2m)</li>\r\n<li>C&oacute; hướng cửa sổ nh&igrave;n ra th&agrave;nh phố, Viewer đẹp</li>\r\n<li>Ph&ograve;ng c&oacute; trang bị wiffi miễn ph&iacute;, Truyền h&igrave;nh c&aacute;p độ n&eacute;t cao, c&oacute; k&ecirc;nh H&agrave;n Quốc</li>\r\n<li>Gi&aacute; ph&ograve;ng đ&atilde; bao gồm:&nbsp; thuế GTGT 10%,Tr&agrave;, cafe h&ograve;a tan, 2 chai nước lọc miễn ph&iacute;, Ăn s&aacute;ng Bufed miễn ph&iacute; tại nh&agrave; h&agrave;ng tr&ecirc;n tầng 15 của Kh&aacute;ch Sạn</li>\r\n</ul>', 1400000, 'ACTIVE', 2, '2023-07-04 01:50:09', '2023-07-04 01:50:09'),
(7, 'Phòng VIP', 'phong-vip', 'Diện tích phòng: Khoảng 30m2 Phòng 1 giường (2m2 x 2m) Có hướng cửa sổ nhìn ra thành phố, Viewer đẹp Phòng có trang bị wiffi miễn phí, Truyền hình …', 'rooms\\July2023\\ImIVc792mQsxwe812ACU.jpg', '[\"rooms\\\\July2023\\\\3oqEhaeJXn99dFxrLmmo.jpg\",\"rooms\\\\July2023\\\\tk7e6A977NZWxnyZsTBq.jpg\",\"rooms\\\\July2023\\\\EtTCf54B9uSrla8wBkpI.jpg\",\"rooms\\\\July2023\\\\FRfAmvu0psWHkc6CoimS.jpg\"]', '<ul>\r\n<li>Diện t&iacute;ch ph&ograve;ng: Khoảng 30m<sup>2</sup></li>\r\n<li>Ph&ograve;ng 1 giường (2m2 x 2m)</li>\r\n<li>C&oacute; hướng cửa sổ nh&igrave;n ra th&agrave;nh phố, Viewer đẹp</li>\r\n<li>Ph&ograve;ng c&oacute; trang bị wiffi miễn ph&iacute;, Truyền h&igrave;nh c&aacute;p độ n&eacute;t cao, c&oacute; k&ecirc;nh H&agrave;n Quốc</li>\r\n<li>Gi&aacute; ph&ograve;ng đ&atilde; bao gồm:&nbsp; thuế GTGT 10%,Tr&agrave;, cafe h&ograve;a tan, 2 chai nước lọc miễn ph&iacute;, Ăn s&aacute;ng Bufed miễn ph&iacute; tại nh&agrave; h&agrave;ng tr&ecirc;n tầng 15 của Kh&aacute;ch Sạn</li>\r\n</ul>', 1300000, 'ACTIVE', 3, '2023-07-04 01:51:00', '2023-07-05 01:58:07'),
(8, 'Phòng SUITE', 'phong-suite', 'Diện tích phòng: Khoảng 60m2 Phòng 1 giường to ( 2m2 x 2m) Có hướng cửa sổ nhìn ra thành phố, Viewer đẹp Phòng có trang bị wiffi miễn phí, Truyền …', 'rooms\\July2023\\QhhB1o4MxYa9eKDtYlfU.jpg', '[\"rooms\\\\July2023\\\\Gb426bpHUV0JlrVUM5If.jpg\",\"rooms\\\\July2023\\\\7VdN4sVHm5vKu8fIj3kR.jpg\",\"rooms\\\\July2023\\\\l6AGlHG5g2z6u9aFuIRP.jpg\"]', '<ul>\r\n<li>Diện t&iacute;ch ph&ograve;ng: Khoảng&nbsp;60m<sup>2</sup></li>\r\n<li>Ph&ograve;ng 1 giường to ( 2m2 x 2m)</li>\r\n<li>C&oacute; hướng cửa sổ nh&igrave;n ra th&agrave;nh phố, Viewer đẹp</li>\r\n<li>Ph&ograve;ng c&oacute; trang bị wiffi miễn ph&iacute;, Truyền h&igrave;nh c&aacute;p độ n&eacute;t cao, c&oacute; k&ecirc;nh H&agrave;n Quốc</li>\r\n<li>Gi&aacute; ph&ograve;ng đ&atilde; bao gồm:&nbsp; thuế GTGT 10%,Tr&agrave;, cafe h&ograve;a tan, 2 chai nước lọc miễn ph&iacute;, Ăn s&aacute;ng Bufed miễn ph&iacute; tại nh&agrave; h&agrave;ng tr&ecirc;n tầng 15 của Kh&aacute;ch Sạn</li>\r\n</ul>', 1800000, 'ACTIVE', 2, '2023-07-04 01:57:23', '2023-07-04 01:57:23'),
(9, 'Phòng JUNIOR TWIN', 'phong-junior-twin', 'Diện tích phòng: Khoảng 30m2 Phòng 2 giường ( 1m2) Có hướng cửa sổ nhìn ra thành phố, Viewer đẹp Phòng có trang bị wiffi miễn phí, Truyền hình cáp …', 'rooms\\July2023\\hgtNHksM28BfrroS5yAW.jpg', '[\"rooms\\\\July2023\\\\mzbw2U81grKwb2p8T7ty.jpg\",\"rooms\\\\July2023\\\\vX00fzO2PK3eaAe1vKxf.jpg\",\"rooms\\\\July2023\\\\ggE5NsMD8XneWyhWOLzN.jpg\"]', '<ul>\r\n<li>Diện t&iacute;ch ph&ograve;ng: Khoảng 30m<sup>2</sup></li>\r\n<li>Ph&ograve;ng 2 giường ( 1m2)</li>\r\n<li>C&oacute; hướng cửa sổ nh&igrave;n ra th&agrave;nh phố, Viewer đẹp</li>\r\n<li>Ph&ograve;ng c&oacute; trang bị wiffi miễn ph&iacute;, Truyền h&igrave;nh c&aacute;p độ n&eacute;t cao, c&oacute; k&ecirc;nh H&agrave;n Quốc</li>\r\n<li>Gi&aacute; ph&ograve;ng đ&atilde; bao gồm:&nbsp; thuế GTGT 10%,Tr&agrave;, cafe h&ograve;a tan, 2 chai nước lọc miễn ph&iacute;, Ăn s&aacute;ng Bufed miễn ph&iacute; tại nh&agrave; h&agrave;ng tr&ecirc;n tầng 15 của Kh&aacute;ch Sạn</li>\r\n</ul>', 1000000, 'ACTIVE', 2, '2023-07-04 01:59:00', '2023-07-04 21:06:37'),
(10, 'Phòng SUPERIOR', 'phong-superior', 'Diện tích phòng: Khoảng 30m2 Phòng 1 giường ( 1m8 x 2m ) Có hướng cửa sổ nhìn ra thành phố, Viewer đẹp Phòng có trang bị wiffi miễn phí, Truyền …', 'rooms\\July2023\\kgGyZkuZwtnbvuqfzvSp.jpg', '[\"rooms\\\\July2023\\\\aUdqADm8WBAdYjrDYkfD.jpg\",\"rooms\\\\July2023\\\\dEU4r1PBWxMuehrFbM7G.jpg\",\"rooms\\\\July2023\\\\0me3l9Dg8XwUVtxJWXtn.jpg\"]', '<ul>\r\n<li>Diện t&iacute;ch ph&ograve;ng: Khoảng 30m<sup>2</sup></li>\r\n<li>Ph&ograve;ng 1 giường (&nbsp;1m8 x 2m )</li>\r\n<li>C&oacute; hướng cửa sổ nh&igrave;n ra th&agrave;nh phố, Viewer đẹp</li>\r\n<li>Ph&ograve;ng c&oacute; trang bị wiffi miễn ph&iacute;, Truyền h&igrave;nh c&aacute;p độ n&eacute;t cao, c&oacute; k&ecirc;nh H&agrave;n Quốc</li>\r\n<li>Gi&aacute; ph&ograve;ng đ&atilde; bao gồm:&nbsp; thuế GTGT 10%, tr&agrave;, cafe h&ograve;a tan, 2 chai nước lọc miễn ph&iacute;, ăn s&aacute;ng Bufed miễn ph&iacute; tại nh&agrave; h&agrave;ng tr&ecirc;n tầng 15 của Kh&aacute;ch Sạn.</li>\r\n</ul>', 800000, 'ACTIVE', 2, '2023-07-04 02:00:25', '2023-07-04 02:00:25'),
(11, 'Phòng họp số 1', 'phong-hop-so-1', 'Room size: 136 m2 Backdrop : 2.6m x 4.8m Capacity: Max 150 pax Giá bao gồm máy chiếu: Nửa ngày: 4.000.000 VNĐ Cả ngày: 7.000.000 VNĐ Giá trên bao gồm : Hệ …', 'rooms\\July2023\\ak1m8gD54GVzihEB48a7.jpg', '[\"rooms\\\\July2023\\\\QB9UWJ9aiTLdt71fmESn.jpg\",\"rooms\\\\July2023\\\\94k9CovaCDLwnNHvqmRr.jpg\"]', '<p><strong>Room size</strong>: 136 m<sup>2</sup></p>\r\n<p><strong>Backdrop</strong>&nbsp;: 2.6m x 4.8m</p>\r\n<p><strong>Capacity</strong>: Max 150 pax</p>\r\n<p><strong>Gi&aacute; bao gồm m&aacute;y chiếu</strong>:</p>\r\n<ul>\r\n<li>Nửa ng&agrave;y: 4.000.000 VNĐ</li>\r\n<li>Cả ng&agrave;y: 7.000.000 VNĐ</li>\r\n</ul>\r\n<p><strong>Gi&aacute; tr&ecirc;n bao gồm</strong>&nbsp;: Hệ thống &acirc;m thanh , &aacute;nh s&aacute;ng, điều h&ograve;a, nước lọc r&oacute;t cốc (kh&ocirc;ng phải nước chai) , giấy b&uacute;t, bảng trắng, bảng Flipchart .&hellip;.</p>\r\n<p><strong>Gi&aacute; in Backdrop</strong>&nbsp;: 120.000 đ/m<sup>2&nbsp;</sup>(Gi&aacute; đ&atilde; bao gồm: in bạt, c&ocirc;ng treo, 10% Thuế GTGT), trong trường hợp qu&yacute; kh&aacute;ch tự mang bạt đến th&igrave; y&ecirc;u cầu c&oacute; nh&acirc;n vi&ecirc;n tự treo, nếu thu&ecirc; nh&acirc;n vi&ecirc;n nh&agrave; h&agrave;ng treo th&igrave; sẽ thu ph&iacute; l&agrave; 200.000 đ/ lần</p>\r\n<p><strong>M&agrave;n h&igrave;nh m&aacute;y chiếu</strong>: 1.200.000 đ/ ng&agrave;y (Thu&ecirc; ri&ecirc;ng mang ra ngo&agrave;i)</p>\r\n<p><strong>Nước kho&aacute;ng đ&oacute;ng chai</strong>: 5000 đ/ chai 350 ml v&agrave; 12.000 đ/ chai 500 ml</p>\r\n<p><em>Nghỉ giữa giờ c&oacute; dịch vụ Teabreak (tr&agrave;, coffee, hoa quả, b&aacute;nh ngọt, sữa, nước hoa quả&hellip;.) theo c&aacute;c set t&ugrave;y thuộc lựa chọn của kh&aacute;ch h&agrave;ng : từ 40.000 trở l&ecirc;n.</em></p>', 7000000, 'ACTIVE', 4, '2023-07-04 02:03:27', '2023-07-04 02:03:27'),
(12, 'Phòng họp số 2', 'phong-hop-so-2', 'Tổng diện tích: 60 m2 Backdrop : 1.2m x 2.2m Sức chứa: Max 50 pax Giá không bao gồm máy chiếu: Nửa ngày: 2.000.000 VNĐ Cả ngày: 4.000.000 VNĐ Giá trên bao gồm : Hệ thống …', 'rooms\\July2023\\ug1e1eybGdYwzsIsy8EU.jpg', '[\"rooms\\\\July2023\\\\z0VuSoGdCYk0w4zsqxid.jpg\",\"rooms\\\\July2023\\\\ZIuUD1UAY2Ug1VpZ5jF4.jpg\",\"rooms\\\\July2023\\\\nlShmaeugmPez6BJDWsg.jpg\"]', '<p><strong>Tổng diện t&iacute;ch</strong>:&nbsp;60 m<sup>2</sup></p>\r\n<p><strong>Backdrop</strong>&nbsp;:&nbsp;1.2m&nbsp;x&nbsp;2.2m</p>\r\n<p><strong>Sức chứa</strong>: Max 50 pax</p>\r\n<p><strong>Gi&aacute; kh&ocirc;ng bao gồm m&aacute;y chiếu</strong>:</p>\r\n<ul>\r\n<li>Nửa ng&agrave;y: 2.000.000 VNĐ</li>\r\n<li>Cả ng&agrave;y: 4.000.000 VNĐ</li>\r\n</ul>\r\n<p><strong>Gi&aacute; tr&ecirc;n bao gồm</strong>&nbsp;: Hệ thống &acirc;m thanh , &aacute;nh s&aacute;ng, điều h&ograve;a, nước lọc r&oacute;t cốc (kh&ocirc;ng phải nước chai) , giấy b&uacute;t, bảng trắng, bảng Flipchart .&hellip;.</p>\r\n<p><strong>Gi&aacute; in Backdrop</strong>&nbsp;: 120.000 đ/m<sup>2&nbsp;</sup>(Gi&aacute; đ&atilde; bao gồm: in bạt, c&ocirc;ng treo, 10% Thuế GTGT), trong trường hợp qu&yacute; kh&aacute;ch tự mang bạt đến th&igrave; y&ecirc;u cầu c&oacute; nh&acirc;n vi&ecirc;n tự treo, nếu thu&ecirc; nh&acirc;n vi&ecirc;n nh&agrave; h&agrave;ng treo th&igrave; sẽ thu ph&iacute; l&agrave; 200.000 đ/ lần</p>\r\n<p><strong>M&agrave;n h&igrave;nh m&aacute;y chiếu</strong>: 1.200.000 đ/ ng&agrave;y (Thu&ecirc; ri&ecirc;ng mang ra ngo&agrave;i)</p>\r\n<p><strong>Nước kho&aacute;ng đ&oacute;ng chai</strong>: 5000 đ/ chai 350 ml v&agrave; 12.000 đ/ chai 500 ml</p>\r\n<p><em>Nghỉ giữa giờ c&oacute; dịch vụ Teabreak (tr&agrave;, coffee, hoa quả, b&aacute;nh ngọt, sữa, nước hoa quả&hellip;.) theo c&aacute;c set t&ugrave;y thuộc lựa chọn của kh&aacute;ch h&agrave;ng : từ 40.000 trở l&ecirc;n.</em></p>', 4000000, 'ACTIVE', 4, '2023-07-04 02:04:29', '2023-07-04 02:04:29'),
(13, 'Phòng họp số 3', 'phong-hop-so-3', 'Sức chứa: Max 30 pax Giá bao gồm máy chiếu: Nửa ngày: 1.000.000 VNĐ Cả ngày: 2.000.000 VNĐ Giá trên bao gồm : Hệ thống âm thanh , ánh sáng, điều …', 'rooms\\July2023\\Zfnp0iYkqIaS4fqoezik.png', '[\"rooms\\\\July2023\\\\X7I4NKWQgfaK65rsnlhH.jpg\",\"rooms\\\\July2023\\\\svYZq3PcMLrZPP63jWKj.jpg\",\"rooms\\\\July2023\\\\mPJJZS5380LgewsUxFsu.jpg\"]', '<p><strong>Sức chứa</strong>: Max 30 pax</p>\r\n<p><strong>Gi&aacute; bao gồm m&aacute;y chiếu</strong>:</p>\r\n<ul>\r\n<li>Nửa ng&agrave;y: 1.000.000 VNĐ</li>\r\n<li>Cả ng&agrave;y: 2.000.000 VNĐ</li>\r\n</ul>\r\n<p><strong>Gi&aacute; tr&ecirc;n bao gồm</strong>&nbsp;: Hệ thống &acirc;m thanh , &aacute;nh s&aacute;ng, điều h&ograve;a, nước lọc r&oacute;t cốc (kh&ocirc;ng phải nước chai) , giấy b&uacute;t, bảng trắng, bảng Flipchart .&hellip;.</p>\r\n<p><strong>Gi&aacute; in Backdrop</strong>&nbsp;: 120.000 đ/m<sup>2&nbsp;</sup>(Gi&aacute; đ&atilde; bao gồm: in bạt, c&ocirc;ng treo, 10% Thuế GTGT), trong trường hợp qu&yacute; kh&aacute;ch tự mang bạt đến th&igrave; y&ecirc;u cầu c&oacute; nh&acirc;n vi&ecirc;n tự treo, nếu thu&ecirc; nh&acirc;n vi&ecirc;n nh&agrave; h&agrave;ng treo th&igrave; sẽ thu ph&iacute; l&agrave; 200.000 đ/ lần</p>\r\n<p><strong>M&agrave;n h&igrave;nh m&aacute;y chiếu</strong>: 1.200.000 đ/ ng&agrave;y (Thu&ecirc; ri&ecirc;ng mang ra ngo&agrave;i)</p>\r\n<p><strong>Nước kho&aacute;ng đ&oacute;ng chai</strong>: 5000 đ/ chai 350 ml v&agrave; 12.000 đ/ chai 500 ml</p>\r\n<p><em>Nghỉ giữa giờ c&oacute; dịch vụ Teabreak (tr&agrave;, coffee, hoa quả, b&aacute;nh ngọt, sữa, nước hoa quả&hellip;.) theo c&aacute;c set t&ugrave;y thuộc lựa chọn của kh&aacute;ch h&agrave;ng : từ 40.000 trở l&ecirc;n.</em></p>', 2000000, 'ACTIVE', 4, '2023-07-04 02:06:12', '2023-07-04 02:06:12');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `slug`, `desc`, `images`, `content`, `status`, `type`, `created_at`, `updated_at`, `icon`) VALUES
(2, 'LÀM ĐẸP', 'lam-dep', '𝗞𝗜𝗠 𝗧𝗛𝗔𝗜 𝐇𝐎𝐓𝐄𝐋 luôn mong muốn đem đến cho quý khách những trải nghiệm dịch vụ tuyệt vời nhất. Trong từng thiết kế, đều đã đạt đến độ hoàn mỹ của sự tinh tế và giản dị. Mỗi không gian được trưng bày đều vô cùng gần gũi tạo cho du khách cảm giác thoải mái và nhẹ nhàng, ấm áp hệt như đang được sống trong góc riêng của gia đình mình', '[\"services\\\\July2023\\\\tnDLIhA8oDtGOq6gQmfL.png\",\"services\\\\July2023\\\\G46ShALS1ArohpP9ocHx.png\"]', '<div class=\"xdj266r x11i5rnm xat24cr x1mh8g0r x1vvkbs x126k92a\">\r\n<div dir=\"auto\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://localhost/KimThaiHotel/public/storage/services/July2023/352381850_1697440687402813_7641706672087384858_n.jpg\" alt=\"\" width=\"70%\" height=\"70%\"></div>\r\n<div dir=\"auto\">𝗞𝗜𝗠 𝗧𝗛𝗔𝗜 𝐇𝐎𝐓𝐄𝐋 - 𝗥𝗘𝗦𝗧𝗔𝗨𝗥𝗔𝗡𝗧- 𝐒𝐏𝐀 𝐪𝐮𝐚𝐲 𝐭𝐫𝐨̛̉ 𝐥𝐚̣𝐢 𝐯𝐨̛́𝐢 𝐝𝐢𝐞̣̂𝐧 𝐦𝐚̣𝐨 𝐡𝐨𝐚̀𝐧 𝐭𝐨𝐚̀𝐧 𝐦𝐨̛́𝐢<span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6f/1/16/1f337.png\" alt=\"🌷\" width=\"16\" height=\"16\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t1e/1/16/1f33f.png\" alt=\"🌿\" width=\"16\" height=\"16\"></span></div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tc7/1/16/1f483.png\" alt=\"💃\" width=\"16\" height=\"16\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tc7/1/16/1f483.png\" alt=\"💃\" width=\"16\" height=\"16\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tc7/1/16/1f483.png\" alt=\"💃\" width=\"16\" height=\"16\"></span>C&oacute; phải bạn đang t&igrave;m kiếm một địa điểm nghỉ dưỡng l&yacute; tưởng cho gia đ&igrave;nh bạn, một nơi c&oacute;:</div>\r\n<div dir=\"auto\">- Dịch vụ lưu tr&uacute;</div>\r\n<div dir=\"auto\">- Nh&agrave; h&agrave;ng ẩm thực</div>\r\n<div dir=\"auto\">- Dịch vụ ph&ograve;ng họp, hội thảo</div>\r\n<div dir=\"auto\">- Trung t&acirc;m chăm s&oacute;c sức khỏe, Amona Spa</div>\r\n<div dir=\"auto\">𝗞𝗜𝗠 𝗧𝗛𝗔𝗜 𝐇𝐎𝐓𝐄𝐋 ch&iacute;nh l&agrave; lựa chọn tuyệt vời cho bạn<span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tea/1/16/1f970.png\" alt=\"🥰\" width=\"16\" height=\"16\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tea/1/16/1f970.png\" alt=\"🥰\" width=\"16\" height=\"16\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tea/1/16/1f970.png\" alt=\"🥰\" width=\"16\" height=\"16\"></span></div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t1e/1/16/1f33f.png\" alt=\"🌿\" width=\"16\" height=\"16\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t1e/1/16/1f33f.png\" alt=\"🌿\" width=\"16\" height=\"16\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t1e/1/16/1f33f.png\" alt=\"🌿\" width=\"16\" height=\"16\"></span>𝗞𝗜𝗠 𝗧𝗛𝗔𝗜 𝐇𝐎𝐓𝐄𝐋 lu&ocirc;n mong muốn đem đến cho qu&yacute; kh&aacute;ch những trải nghiệm dịch vụ tuyệt vời nhất. Trong từng thiết kế, đều đ&atilde; đạt đến độ ho&agrave;n mỹ của sự tinh tế v&agrave; giản dị. Mỗi kh&ocirc;ng gian được trưng b&agrave;y đều v&ocirc; c&ugrave;ng gần gũi tạo cho du kh&aacute;ch cảm gi&aacute;c thoải m&aacute;i v&agrave; nhẹ nh&agrave;ng, ấm &aacute;p hệt như đang được sống trong g&oacute;c ri&ecirc;ng của gia đ&igrave;nh m&igrave;nh.<span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tf0/1/16/1f338.png\" alt=\"🌸\" width=\"16\" height=\"16\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t99/1/16/1f33a.png\" alt=\"🌺\" width=\"16\" height=\"16\"></span></div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t7b/1/16/1f6c0.png\" alt=\"🛀\" width=\"16\" height=\"16\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tb/1/16/1f388.png\" alt=\"🎈\" width=\"16\" height=\"16\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t84/1/16/1f381.png\" alt=\"🎁\" width=\"16\" height=\"16\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t3/1/16/1f380.png\" alt=\"🎀\" width=\"16\" height=\"16\"></span>Đơn giản, mộc mạc, tinh tế nhưng kh&ocirc;ng hề đơn điệu, m&agrave; vẫn rất thời thượng v&agrave; tiện nghi. Đ&oacute; l&agrave; những g&igrave; m&agrave; 𝗞𝗜𝗠 𝗧𝗛𝗔𝗜 𝐇𝐎𝐓𝐄𝐋 đang muốn hướng tới.</div>\r\n</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\">\r\n<div dir=\"auto\">_____________________________</div>\r\n</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\">\r\n<div dir=\"auto\">𝗞𝗜𝗠 𝗧𝗛𝗔𝗜 𝗛𝗢𝗧𝗘𝗟</div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tf6/1/16/1f3e0.png\" alt=\"🏠\" width=\"16\" height=\"16\"></span>: KS Kim Th&aacute;i, số 3, đường Ho&agrave;ng Văn Thụ, TP.Th&aacute;i Nguy&ecirc;n</div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t22/1/16/260e.png\" alt=\"☎️\" width=\"16\" height=\"16\"></span> 0208.3933. 566</div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/td8/1/16/1f4f2.png\" alt=\"📲\" width=\"16\" height=\"16\"></span> ‭ 0886.835.588</div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tc0/1/16/1f4e9.png\" alt=\"📩\" width=\"16\" height=\"16\"></span> Kimthaihoteltn@gmail.com</div>\r\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t41/1/16/1f30f.png\" alt=\"🌏\" width=\"16\" height=\"16\"></span> <a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1fey0fg\" tabindex=\"0\" role=\"link\" href=\"https://l.facebook.com/l.php?u=http%3A%2F%2FWWW.kimthaihotel.com.vn%2F%3Ffbclid%3DIwAR2q-c67jmqSh3lhMK5J1S6TbAhDNPPUSiZIvAwCDN9rUoyDBuQBDK8XxHw&amp;h=AT0EYlQ-RM-M2kqTT9KRxz0MCYTGi_mGNEjbjLSquMY6hCrtP02HOyLOirQSKJhibft_rMltLSF4-O64JQVik3hM8lF84i_9DvqKvq4jwFmt0wa3IFWL9K3TIpwvA1D4VoINMou3TSTI_5qyKQbi&amp;__tn__=-UK-R&amp;c[0]=AT0OOSpTG14hzeYMOp3gBCt9xxXvRwblgNGLKBQTJ6gotvfXYUOj7ueW5dRdMMYzBBzsYi9VSqxylIepCZmfaU3oQfnzajFVCEpwvGEhQykUNZ3rDdN_UQnlP8-ah5wbTY8GuYMTZJRcwa4OT3NfZBD_M7rldZxqpamXc9hWBwUUDqN56qsi-IDxFQuD-oFIQ6Wm7fHDvE0tSg\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">WWW.kimthaihotel.com.vn</a></div>\r\n</div>', 'ACTIVE', 'SPA', '2023-07-04 02:07:00', '2023-07-05 01:03:28', 'services\\July2023\\7Hvpqx6YhKxMPeYcfH5C.png'),
(3, 'Phòng họp', 'phong-hop', 'Chúng tôi mang lại không gian thư giản và tiện nghi đáp ứng mọi nhu cầu cho bạn.\r\nLà khách sạn 5 sao đẳng cấp quốc tế, tọa lạc tại giao điểm của bốn quận chính, nơi được xem như trái tim và trung tâm của TP. Hồ Chí Minh. Với hệ thống phòng tiêu chuẩn và phòng hạng sang thiết kế đẹp mắt và trang nhã được chú trọng tới từng chi tiết sẽ đem lại sự tiện nghi và thoải mái tối đa cho quý khách dù là thời gian nghỉ ngơi thư giãn hay trong chuyến công tác..', '[\"services\\\\July2023\\\\QGMIpH5cQ72ccxk0w2Wv.jpg\",\"services\\\\July2023\\\\ZLmnjlZwrqWakxpopBvC.jpg\"]', '<p>Ch&uacute;ng t&ocirc;i mang lại kh&ocirc;ng gian thư giản v&agrave; tiện nghi đ&aacute;p ứng mọi nhu cầu cho bạn.</p>\r\n<p>L&agrave; kh&aacute;ch sạn 5 sao đẳng cấp quốc tế, tọa lạc tại giao điểm của bốn quận ch&iacute;nh, nơi được xem như tr&aacute;i tim v&agrave; trung t&acirc;m của TP. Hồ Ch&iacute; Minh. Với hệ thống ph&ograve;ng ti&ecirc;u chuẩn v&agrave; ph&ograve;ng hạng sang thiết kế đẹp mắt v&agrave; trang nh&atilde; được ch&uacute; trọng tới từng chi tiết sẽ đem lại sự tiện nghi v&agrave; thoải m&aacute;i tối đa cho qu&yacute; kh&aacute;ch d&ugrave; l&agrave; thời gian nghỉ ngơi thư gi&atilde;n hay trong chuyến c&ocirc;ng t&aacute;c..</p>', 'ACTIVE', 'ROOM', '2023-07-04 02:09:00', '2023-07-05 01:03:41', 'services\\July2023\\YXLcuQhhWyNVE2A21ngq.png'),
(4, 'Khách sạn', 'khach-san', 'Chúng tôi mang lại không gian thư giản và tiện nghi đáp ứng mọi nhu cầu cho bạn.\r\nLà khách sạn 5 sao đẳng cấp quốc tế, tọa lạc tại giao điểm của bốn quận chính, nơi được xem như trái tim và trung tâm của TP. Hồ Chí Minh. Với hệ thống phòng tiêu chuẩn và phòng hạng sang thiết kế đẹp mắt và trang nhã được chú trọng tới từng chi tiết sẽ đem lại sự tiện nghi và thoải mái tối đa cho quý khách dù là thời gian nghỉ ngơi thư giãn hay trong chuyến công tác...', '[\"services\\\\July2023\\\\Cd39C0nzoxxAoMmPg1Ah.jpg\",\"services\\\\July2023\\\\hkZRhBfEwEqVZ0IZ2vXB.jpg\"]', '<p class=\"txt_title_1\">Ch&uacute;ng t&ocirc;i mang lại kh&ocirc;ng gian thư giản v&agrave; tiện nghi đ&aacute;p ứng mọi nhu cầu cho bạn.</p>\r\n<p class=\"txt_title_2\">L&agrave; kh&aacute;ch sạn 5 sao đẳng cấp quốc tế, tọa lạc tại giao điểm của bốn quận ch&iacute;nh, nơi được xem như tr&aacute;i tim v&agrave; trung t&acirc;m của TP. Hồ Ch&iacute; Minh. Với hệ thống ph&ograve;ng ti&ecirc;u chuẩn v&agrave; ph&ograve;ng hạng sang thiết kế đẹp mắt v&agrave; trang nh&atilde; được ch&uacute; trọng tới từng chi tiết sẽ đem lại sự tiện nghi v&agrave; thoải m&aacute;i tối đa cho qu&yacute; kh&aacute;ch d&ugrave; l&agrave; thời gian nghỉ ngơi thư gi&atilde;n hay trong chuyến c&ocirc;ng t&aacute;c...</p>', 'ACTIVE', 'HOTLE', '2023-07-04 02:10:00', '2023-07-05 01:03:51', 'services\\July2023\\9GiEai0fsUPPH9TUs5Zc.png');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Khách sạn Kim Thái', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Toạ lạc tại trung tâm thành phố Thái Nguyên, khách sạn Kim Thái là một trong những khách sạn hàng đầu của tỉnh, đạt tiêu chuẩn 3 sao, hàng năm luôn là điểm đến được rất nhiều du khách trong và ngoài nước lựa chọn để nghỉ ngơi và làm việc mỗi khi đặt chân đến xứ Trà.', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\July2023\\0vWwoM6y2AqiiyqbUId9.png', '', 'image', 3, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.phone', 'phone', '02083933588', NULL, 'text', 6, 'Site'),
(12, 'site.address', 'address', 'Số 3 Đường Hoàng Văn thụ Tổ 1 Phường Phan Đình Phùng TP Thái Nguyên, Tỉnh Thái Nguyên', NULL, 'text', 7, 'Site'),
(13, 'site.email', 'email', 'Kimthaihoteltn@gmail.com', NULL, 'text', 8, 'Site'),
(14, 'site.map', 'map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3709.7815660669266!2d105.83505047603713!3d21.594447868107704!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313526e42cf9d641%3A0xeea98469784a1006!2zS2jDoWNoIHPhuqFuIEtpbSBUaMOhaSBIb3RlbA!5e0!3m2!1svi!2s!4v1688529873499!5m2!1svi!2s\" width=\"800\" height=\"600\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, 'text', 9, 'Site'),
(15, 'site-en.title_en', 'title_en', 'Kim Thai Hotel', NULL, 'text', 10, 'Site_en');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(31, 'menu_items', 'title', 27, 'en', 'Contact', '2023-07-04 20:29:33', '2023-07-05 03:20:31'),
(32, 'menu_items', 'title', 33, 'en', 'Liên hệ', '2023-07-04 20:53:15', '2023-07-04 20:53:15'),
(33, 'menu_items', 'title', 26, 'en', 'Cuisine', '2023-07-04 23:52:34', '2023-07-05 03:20:13'),
(34, 'menu_items', 'title', 25, 'en', 'Spa', '2023-07-05 01:16:02', '2023-07-05 01:16:02'),
(35, 'menu_items', 'title', 22, 'en', 'Home', '2023-07-05 02:47:18', '2023-07-05 02:47:18'),
(36, 'menu_items', 'title', 23, 'en', 'About', '2023-07-05 02:47:27', '2023-07-05 02:47:27'),
(37, 'menu_items', 'title', 24, 'en', 'Room', '2023-07-05 02:47:36', '2023-07-05 02:47:36'),
(38, 'menu_items', 'title', 36, 'en', 'Tiếng việt', '2023-07-05 02:56:59', '2023-07-05 02:56:59'),
(39, 'menu_items', 'title', 35, 'en', 'Tiếng anh', '2023-07-05 02:57:03', '2023-07-05 02:57:03'),
(40, 'menu_items', 'title', 28, 'en', 'Single room', '2023-07-05 03:19:17', '2023-07-05 03:19:17'),
(41, 'menu_items', 'title', 29, 'en', 'Vip room', '2023-07-05 03:19:37', '2023-07-05 03:19:37'),
(42, 'menu_items', 'title', 30, 'en', 'Hall', '2023-07-05 03:19:53', '2023-07-05 03:19:53'),
(43, 'menu_items', 'title', 32, 'en', 'News', '2023-07-05 03:20:21', '2023-07-05 03:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$nBOj2XaX5HCqcoWzRvJJn./dMUUZbnK3hFHChBURRcdy57O3dx5fu', 'yGmMQe5bFPMuhEXZxTd3Wr0m1SexHUdkNO4VV0VarZGWI43it8dqF68r9cLG', '{\"locale\":\"vi\"}', '2023-07-04 00:52:35', '2023-07-04 00:56:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuisines`
--
ALTER TABLE `cuisines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

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
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cuisines`
--
ALTER TABLE `cuisines`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
