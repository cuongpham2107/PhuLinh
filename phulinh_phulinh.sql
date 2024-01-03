-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 03, 2024 at 02:35 PM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phulinh_phulinh`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
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
(4, 'banner', 'banners/September2023/9dQfESrBKJyLx6C0ynMu.jpg', NULL, 'ACTIVE', '2023-09-13 20:09:00', '2023-09-20 20:12:14'),
(5, 'banner2', 'banners/September2023/R6vkLEJ03V6kdNJ9t45f.jpg', NULL, 'INACTIVE', '2023-09-15 17:41:00', '2023-09-20 00:34:05');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
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
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `title`, `desc`, `image`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Địa điểm', NULL, NULL, '2023-09-13 21:14:00', '2023-09-15 01:12:17', 'dia-diem'),
(2, 'Ẩm thực', NULL, NULL, '2023-09-13 21:15:00', '2023-09-15 01:12:35', 'am-thuc'),
(3, 'Lưu trú', NULL, NULL, '2023-09-13 21:15:00', '2023-09-15 01:12:25', 'luu-tru');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
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
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Tác giả', 1, 0, 1, 1, 0, 1, '{}', 2),
(31, 5, 'category_id', 'text', 'Danh mục bài viết', 0, 0, 1, 1, 1, 0, '{}', 3),
(32, 5, 'title', 'text', 'Tiêu đề', 1, 1, 1, 1, 1, 1, '{}', 4),
(33, 5, 'excerpt', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 5),
(34, 5, 'body', 'rich_text_box', 'Nội dung', 1, 0, 1, 1, 1, 1, '{}', 6),
(35, 5, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 10),
(39, 5, 'status', 'select_dropdown', 'Trạng thái', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"C\\u00f4ng khai\",\"DRAFT\":\"Nh\\u00e1p\",\"PENDING\":\"\\u0110ang duy\\u1ec7t\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 0, 1, 1, 1, 1, '{}', 14),
(43, 5, 'featured', 'checkbox', 'Nổi bật', 1, 1, 1, 1, 1, 1, '{}', 15),
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
(98, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(99, 11, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 2),
(100, 11, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{}', 3),
(101, 11, 'desc', 'text', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 4),
(102, 11, 'status', 'select_dropdown', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 5),
(103, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 7),
(104, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(119, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(120, 13, 'name', 'text', 'Họ và Tên', 0, 1, 1, 1, 1, 1, '{}', 2),
(121, 13, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(122, 13, 'phone', 'text', 'Số điện thoại', 0, 1, 1, 1, 1, 1, '{}', 4),
(123, 13, 'content', 'text', 'Nội Dung', 0, 1, 1, 1, 1, 1, '{}', 5),
(124, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(125, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(127, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(128, 14, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 2),
(129, 14, 'desc', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 4),
(130, 14, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{}', 5),
(131, 14, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 6),
(132, 14, 'status', 'select_dropdown', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 7),
(133, 14, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 9),
(134, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(135, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(136, 15, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 2),
(137, 15, 'desc', 'text', 'Mô tả', 0, 1, 1, 1, 1, 1, '{}', 3),
(138, 15, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{}', 4),
(139, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(140, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(141, 14, 'location_belongsto_collection_relationship', 'relationship', 'Danh mục địa điểm', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Collection\",\"table\":\"collections\",\"type\":\"belongsTo\",\"column\":\"collection_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(142, 14, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:locations,slug\"}}', 3),
(143, 14, 'collection_id', 'text', 'Collection Id', 0, 1, 1, 1, 1, 1, '{}', 11),
(144, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(145, 16, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 2),
(146, 16, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:events,slug\"}}', 3),
(147, 16, 'desc', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 4),
(148, 16, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 7),
(149, 16, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{}', 5),
(150, 16, 'status', 'select_dropdown', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 8),
(151, 16, 'type', 'select_dropdown', 'Thể loại', 0, 1, 1, 1, 1, 1, '{\"default\":\"su-kien\",\"options\":{\"hinh-anh\":\"H\\u00ecnh \\u1ea3nh\",\"video\":\"Video\",\"su-kien\":\"S\\u1ef1 ki\\u1ec7n\"}}', 9),
(152, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(153, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(154, 16, 'link', 'text_area', 'Link', 0, 0, 1, 1, 1, 1, '{}', 6),
(155, 15, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:collections,slug\"}}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(5, 'posts', 'posts', 'Bài viết', 'Bài viết', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-07-04 00:52:35', '2023-09-21 23:48:12'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2023-07-04 00:52:35', '2023-07-04 00:52:35'),
(11, 'banners', 'banners', 'Banner', 'Banners', 'voyager-photos', 'App\\Banner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-07-04 01:33:38', '2023-07-05 18:27:21'),
(13, 'contacts', 'contacts', 'Liên hệ', 'Liên hệ', NULL, 'App\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-07-04 20:52:21', '2023-07-04 20:52:21'),
(14, 'locations', 'locations', 'Cẩm nang du lịch', 'Cẩm nang du lịch', 'voyager-diamond', 'App\\Location', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-09-13 21:05:57', '2023-10-30 01:46:25'),
(15, 'collections', 'collections', 'Danh mục', 'Danh mục', 'voyager-book', 'App\\Collection', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-09-13 21:09:51', '2023-09-15 01:10:10'),
(16, 'events', 'events', 'Hình ảnh & Sự kiện', 'Hình ảnh & Sự kiện', 'voyager-photos', 'App\\Event', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-09-14 01:19:02', '2023-09-14 20:52:17');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `slug`, `desc`, `body`, `image`, `status`, `type`, `created_at`, `updated_at`, `link`) VALUES
(1, 'Huyện Vị Xuyên nỗ lực xóa bỏ hủ tục lạc hậu gắn với xây dựng nếp sống văn minh', 'huyen-vi-xuyen-no-luc-xoa-bo-hu-tuc-lac-hau-gan-voi-xay-dung-nep-song-van-minh', NULL, NULL, 'events/September2023/UDsKzg7JMQLvNQvmSxsu.jpg', 'ACTIVE', 'video', '2023-09-14 01:25:00', '2023-09-15 00:12:53', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/QPdlq4TwQCo?si=gS-m5GjCqh7asphD\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(2, 'Vị Xuyên kỷ niệm 190 năm thành lập huyện, 75 năm thành lập Đảng bộ', 'vi-xuyen-ky-niem-190-nam-thanh-lap-huyen-75-nam-thanh-lap-dang-bo', NULL, NULL, 'events/September2023/HUE9hixi3W1756KSvL78.jpg', 'ACTIVE', 'video', '2023-09-14 01:28:00', '2023-09-14 20:54:12', '<iframe width=\"460\" height=\"315\" src=\"https://www.youtube.com/embed/5zeg8EWx29Y?si=oZUJ9Bw9jgqXmhnu\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(3, 'Lễ công bố xã Phú Linh, huyện Vị Xuyên đạt chuẩn Nông thôn mới năm 2017', 'le-cong-bo-xa-phu-linh-huyen-vi-xuyen-dat-chuan-nong-thon-moi-nam-2017', 'BHG - Tối ngày 28.12, Đảng bộ, chính quyền và nhân dân xã Phú Linh huyện Vị Xuyên đã long trọng tổ chức Lễ công bố xã đạt chuẩn nông thôn mới năm 2017', '<p>BHG - Tối ng&agrave;y 28.12, Đảng bộ, ch&iacute;nh quyền v&agrave; nh&acirc;n d&acirc;n x&atilde; Ph&uacute; Linh huyện Vị Xuy&ecirc;n đ&atilde; long trọng tổ chức Lễ c&ocirc;ng bố x&atilde; đạt chuẩn n&ocirc;ng th&ocirc;n mới năm 2017. Dự buổi lễ c&oacute; c&aacute;c đồng ch&iacute;: Vi Hữu Cầu, Ủy vi&ecirc;n BTV Tỉnh ủy, B&iacute; thư huyện ủy Vị Xuy&ecirc;n; l&atilde;nh đạo một số sở, ban, ng&agrave;nh của tỉnh; Thường trực Huyện ủy, HĐND, UBND, Uỷ ban MTTQ huyện; l&atilde;nh đạo cơ quan, đơn vị, đo&agrave;n thể huyện Vị Xuy&ecirc;n; l&atilde;nh đạo một số x&atilde;, thị trấn trong huyện c&ugrave;ng đ&ocirc;ng đảo nh&acirc;n d&acirc;n c&aacute;c d&acirc;n tộc x&atilde; Ph&uacute; Linh.</p>\r\n<table class=\"image center\" width=\"600\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"https://baohagiang.vn/file//dataimages/201712/original/images1388904_dong_chi_vi_huu_cau....jpg\" alt=\"Đồng ch&iacute; Vi Hữu Cầu trao Bằng c&ocirc;ng nhận đạt chuẩn Chương tr&igrave;nh n&ocirc;ng th&ocirc;n mới cho Đảng bộ, ch&iacute;nh quyền v&agrave; nh&acirc;n d&acirc;n x&atilde; Ph&uacute; Linh.\"></td>\r\n</tr>\r\n<tr>\r\n<td class=\"image_desc\">Đồng ch&iacute; Vi Hữu Cầu trao Bằng c&ocirc;ng nhận đạt chuẩn Chương tr&igrave;nh n&ocirc;ng th&ocirc;n mới cho Đảng bộ, ch&iacute;nh quyền v&agrave; nh&acirc;n d&acirc;n x&atilde; Ph&uacute; Linh.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Tại buổi lễ, Văn ph&ograve;ng Điều phối Chương tr&igrave;nh x&acirc;y dựng N&ocirc;ng th&ocirc;n mới tỉnh đ&atilde; c&ocirc;ng bố Quyết định số 2846 của Chủ tịch UBND tỉnh H&agrave; Giang về việc c&ocirc;ng nhận x&atilde; Ph&uacute; Linh đạt chuẩn N&ocirc;ng th&ocirc;n mới năm 2017. Ph&uacute; Linh l&agrave; 1 trong 5 x&atilde; điểm của huyện&nbsp;Vị Xuy&ecirc;n được chọn để thực hiện&nbsp;x&acirc;y dựng NTM.&nbsp;Trong thời gian qua Đảng bộ, ch&iacute;nh quyền v&agrave; nh&acirc;n d&acirc;n c&aacute;c d&acirc;n tộc trong x&atilde; đ&atilde;&nbsp;ph&aacute;t huy nội lực,&nbsp;với quyết t&acirc;m cao nhất ho&agrave;n th&agrave;nh 19/19 ti&ecirc;u ch&iacute; x&acirc;y dựng NTM.&nbsp;Diện mạo trung t&acirc;m x&atilde; v&agrave; c&aacute;c th&ocirc;n bản đ&atilde; được chỉnh trang, sạch đẹp. Nhiều ti&ecirc;u ch&iacute; được nh&acirc;n d&acirc;n của x&atilde; thực hiện đạt tỷ lệ cao như ti&ecirc;u ch&iacute; thu nhập đạt 25 triệu/người/năm; tỷ lệ lao động c&oacute; việc l&agrave;m chiếm 92%; x&atilde; được c&ocirc;ng nhận x&atilde; đạt chuẩn y tế. Trong qu&aacute; tr&igrave;nh thực hiện x&atilde; đ&atilde; huy động tốt nguồn lực sức d&acirc;n đ&oacute;ng g&oacute;p tr&ecirc;n 7,4 tỷ đồng v&agrave; huy động nguồn x&atilde; hội h&oacute;a gần 1 tỷ đồng đầu tư x&acirc;y dựng c&aacute;c c&ocirc;ng tr&igrave;nh NTM tại địa b&agrave;n&hellip;</p>\r\n<table class=\"image center\" width=\"600\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"https://baohagiang.vn/file//dataimages/201712/original/images1388905_dong_chi_Muong_Ngoc_Lao....jpg\" alt=\"Đồng ch&iacute; Mương Ngọc L&agrave;o, Ph&oacute; B&iacute; thư Thường trực Huyện ủy, Chủ tịch HĐND huyện trao khen thưởng của UBND huyện cho c&aacute;c tập thể, c&aacute; nh&acirc;n, hộ gia đ&igrave;nh c&oacute; th&agrave;nh t&iacute;ch trong phong tr&agrave;o.\"></td>\r\n</tr>\r\n<tr>\r\n<td class=\"image_desc\">Đồng ch&iacute; Mương Ngọc L&agrave;o, Ph&oacute; B&iacute; thư Thường trực Huyện ủy, Chủ tịch HĐND huyện trao khen thưởng của UBND huyện cho c&aacute;c tập thể, c&aacute; nh&acirc;n, hộ gia đ&igrave;nh c&oacute; th&agrave;nh t&iacute;ch trong phong tr&agrave;o.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Thừa ủy quyền của Chủ tịch UBND tỉnh, B&iacute; thư Huyện ủy Vi Hữu Cầu đ&atilde; trao Bằng c&ocirc;ng nhận x&atilde; đạt chuẩn NTM của Chủ tịch UBND tỉnh cho Đảng bộ, ch&iacute;nh quyền v&agrave; nh&acirc;n d&acirc;n x&atilde; Ph&uacute; Linh, c&ugrave;ng phần thưởng l&agrave; 500 triệu đồng để x&acirc;y dựng một c&ocirc;ng tr&igrave;nh ph&uacute;c lợi tr&ecirc;n địa b&agrave;n. Với phần thưởng n&agrave;y, UBND x&atilde; Ph&uacute; Linh c&oacute; tr&aacute;ch nhiệm quản l&yacute;, sử dụng đ&uacute;ng mục đ&iacute;ch, c&oacute; hiệu quả v&agrave; thực hiện thanh, quyết to&aacute;n theo đ&uacute;ng Luật Ng&acirc;n s&aacute;ch Nh&agrave; nước hiện h&agrave;nh. Đồng ch&iacute; cũng trao Bằng khen của Chủ tịch UBND tỉnh cho 11 tập thể, 6 c&aacute; nh&acirc;n v&agrave; 6 hộ gia đ&igrave;nh c&oacute; nhiều th&agrave;nh t&iacute;ch xuất sắc trong x&acirc;y dựng NTM. Ph&aacute;t biểu tại buổi lễ đồng ch&iacute; cũng y&ecirc;u cầu: Đảng bộ v&agrave; nh&acirc;n d&acirc;n x&atilde; Ph&uacute; Linh tiếp tục huy động tốt mọi nguồn lực để đẩy mạnh việc ho&agrave;n thiện c&aacute;c ti&ecirc;u ch&iacute; c&ograve;n yếu. Tiếp tục duy tr&igrave; c&aacute;c phong tr&agrave;o &ldquo; Sạch l&agrave;ng tốt c&acirc;y&rdquo;, &ldquo; Nh&agrave; sạch, vườn đẹp&rdquo;, &ldquo; 5 kh&ocirc;ng, 3 sạch&rdquo;; chỉnh trang khu&ocirc;n vi&ecirc;n, đường l&agrave;ng ng&otilde; x&oacute;m, vệ sinh m&ocirc;i trường sạch sẽ, khang trang; tổ chức c&aacute;c hoạt động văn h&oacute;a, văn nghệ, thể thao quần ch&uacute;ng nhằm tăng t&igrave;nh đo&agrave;n kết, n&acirc;ng cao đời sống tinh thần cho nh&acirc;n d&acirc;n...</p>\r\n<p>Cũng tại buổi lễ, Chủ tịch UBND huyện đ&atilde; khen thưởng 12 tập thể, 7 c&aacute; nh&acirc;n v&agrave; 6 hộ gia đ&igrave;nh c&oacute; th&agrave;nh t&iacute;ch xuất sắc trong phong tr&agrave;o thi đua x&acirc;y dựng Chương tr&igrave;nh mục ti&ecirc;u Quốc gia x&acirc;y dựng n&ocirc;ng th&ocirc;n mới tại x&atilde; Ph&uacute; Linh năm 2017.</p>', 'events/September2023/bPd8F2Oixe5kF2P9Faup.jpg', 'ACTIVE', 'su-kien', '2023-09-14 21:14:00', '2023-09-14 21:14:00', NULL);

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
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `title`, `desc`, `image`, `body`, `status`, `created_at`, `updated_at`, `slug`, `collection_id`) VALUES
(2, 'Hồ Noong', 'Hồ Noong là hồ nước ngọt tự nhiên, trải dài từ hai bản Noong 1 đến Noong 2', 'locations/September2023/BxSXDXACINehi6eezRFY.jpg', '<p>Hồ Noong l&agrave; hồ nước ngọt tự nhi&ecirc;n, trải d&agrave;i từ hai bản Noong 1 đến Noong 2.Hồ Noong được người d&acirc;n hai bản y&ecirc;u qu&yacute; v&iacute; như &ldquo;một đ&ocirc;i mắt rừng &rsquo;&rsquo; bởi giữa bốn bề l&agrave; rừng nuối, hồ Noong hiện l&ecirc;n phẳng lặng, lấp l&aacute;nh như &aacute;nh bạc. Mang trong m&igrave;nh vẻ đẹp tự nhi&ecirc;n k&igrave; b&iacute; hấp dẫn, hồ Noong được xem như ti&ecirc;n cảnh của H&agrave; Giang. Vậy th&igrave; tại sao bạn lại kh&ocirc;ng thử đến đ&acirc;y một lần nhỉ.</p>', 'ACTIVE', '2023-09-13 23:42:11', '2023-09-13 23:42:11', 'ho-noong', 1),
(3, 'Núi Tây Côn Lĩnh', 'Núi Tây Côn Lĩnh được mệnh danh là nóc nhà của núi rừng Đông Bắc', 'locations/September2023/n0QWBs0R6kjqGrg4m9qP.jpg', '<p>N&uacute;i T&acirc;y C&ocirc;n Lĩnh được mệnh danh l&agrave; n&oacute;c nh&agrave; của n&uacute;i rừng Đ&ocirc;ng Bắc.D&ugrave; đường đi T&acirc;y C&ocirc;n Lĩnh kh&oacute; khăn nhưng vẫn c&oacute; kh&aacute; nhiều du kh&aacute;ch v&agrave; phượt thủ lựa chọn nơi đ&acirc;y để kh&aacute;m ph&aacute; l&agrave; do sự h&ugrave;ng vĩ ở đỉnh ngọn n&uacute;i. Từ tr&ecirc;n đỉnh n&uacute;i, bạn c&oacute; thể ngắm nh&igrave;n cả một v&ugrave;ng trời thi&ecirc;n nhi&ecirc;n v&ugrave;ng cao tựa như ti&ecirc;n cảnh.</p>', 'ACTIVE', '2023-09-13 23:42:50', '2023-09-13 23:42:50', 'nui-tay-con-l-nh', 1),
(4, 'Chùa Sùng Khánh', 'Nhắc đến Vị Xuyên – Hà Giang chúng ta không thể nào bỏ lỡ những di tích lịch sử và danh lam thắng cảnh cấp quốc gia như di tích chùa Sùng Khánh', 'locations/September2023/ZxK7DlizoCqI7EM0vkGH.jpg', '<p>Nhắc đến Vị Xuy&ecirc;n &ndash; H&agrave; Giang ch&uacute;ng ta kh&ocirc;ng thể n&agrave;o bỏ lỡ những di t&iacute;ch lịch sử v&agrave; danh lam thắng cảnh cấp quốc gia như di t&iacute;ch ch&ugrave;a S&ugrave;ng Kh&aacute;nh. Ch&ugrave;a S&ugrave;ng Kh&aacute;nh hay c&ograve;n gọi l&agrave; ch&ugrave;a L&agrave;ng N&ugrave;ng, ch&ugrave;a gắn liền với lịch sử cũng như hệ tư tưởng phật gi&aacute;o thời đại L&yacute; Trần. Về ch&ugrave;a S&ugrave;ng Kh&aacute;nh, bạn sẽ c&oacute; một khoảng kh&ocirc;ng y&ecirc;n b&igrave;nh, tĩnh lặng giữa n&uacute;i non cao h&ugrave;ng vĩ.</p>', 'ACTIVE', '2023-09-13 23:44:13', '2023-09-13 23:44:13', 'chua-sung-khanh', 1),
(5, 'Làng văn hóa dân tộc Dao thôn Lùng Tao – Cao Bồ', 'Đến Vị Xuyên – Hà Giang bạn không nên bỏ lỡ cơ hội trải nghiệm cuộc sống của người dân nơi đây. Các homestay được lồng ghép vào môi trường sinh hoạt của người dân nơi đây, bạn sẽ được sinh sống cuộc sống của người dân Vị Xuyên nơi đây.', 'locations/September2023/iTD5gj87eupKLA3WLrEh.jpg', '<p>Đến Vị Xuy&ecirc;n &ndash; H&agrave; Giang bạn kh&ocirc;ng n&ecirc;n bỏ lỡ cơ hội trải nghiệm cuộc sống của người d&acirc;n nơi đ&acirc;y. C&aacute;c homestay được lồng gh&eacute;p v&agrave;o m&ocirc;i trường sinh hoạt của người d&acirc;n nơi đ&acirc;y, bạn sẽ được sinh sống cuộc sống của người d&acirc;n Vị Xuy&ecirc;n nơi đ&acirc;y.&nbsp;</p>', 'ACTIVE', '2023-09-13 23:44:48', '2023-09-13 23:44:48', 'lang-van-hoa-dan-toc-dao-thon-lung-tao-cao-bo', 1),
(7, 'Khách sạn Hương Trà', 'Khách sạn Hương Trà là một trong những điểm du lịch, dịch vụ của Công ty TNHH Hùng Cường huyện Vị Xuyên', 'locations/September2023/ZEXrGKSdr5O42qDzBRpj.jpg', '<p>Kh&aacute;ch sạn Hương Tr&agrave; nằm tr&ecirc;n trục đường quốc lộ 2, c&aacute;ch th&agrave;nh phố H&agrave; Giang 17km. Từ kh&aacute;ch sạn c&oacute; thể đi đến c&aacute;c điểm du lịch của H&agrave; Giang, con đường thuận tiện cho du kh&aacute;ch đi thăm quan những điểm du lịch những di t&iacute;ch lịch sử v&agrave; những thắng cảnh của H&agrave; Giang nơi địa đầu tổ quốc. Ngo&agrave;i ra kh&aacute;ch sạn c&ograve;n c&oacute; đầy đủ c&aacute;c hệ thống trang thiết bị phục vụ hội họp v&agrave; tổ chức c&aacute;c sự kiện, hội nghị, hội thảo, tổ chức tiệc cưới... bao gồm c&aacute;c ph&ograve;ng lớn trong nh&agrave; v&agrave; ngo&agrave;i trời. Với diện t&iacute;ch rộng c&oacute; sức chứa khoảng 1000 kh&aacute;ch cho tiệc đứng v&agrave; 450 kh&aacute;ch cho tiệc ngồi.</p>', 'ACTIVE', '2023-09-15 01:19:00', '2023-09-23 03:08:29', 'khach-san-huong-tra', 3),
(8, 'Đền Đôi Cô Cầu Má', 'Ngoài cảnh đẹp trữ tình, thiên nhiên hoang sơ, Hà Giang cũng sở hữu trong mình nhiều điểm du lịch tâm linh đầy huyền bí. Nơi khách đi Tour Hà Giang thường ghé qua nhiều nhất chính là Đền Đôi Cô Cầu Má - ngôi đền đặc biệt linh thiêng mang giá trị tâm linh cao được nhiều người biết đến.', 'locations/September2023/6B0HzBQSDA0hlSKiOLuY.jpg', '<div class=\"margin-bottom-20\">\r\n<p>Ngo&agrave;i cảnh đẹp trữ t&igrave;nh, thi&ecirc;n nhi&ecirc;n hoang sơ,&nbsp;<a class=\"internal-link\" href=\"https://www.kynghidongduong.vn/blog/le-hoi-hoa-tam-giac-mach-ha-giang-va-nhung-diem-check-in-voi-hoa-dep-nhat.html\" target=\"_blank\" rel=\"noopener\">H&agrave; Giang</a>&nbsp;cũng sở hữu trong m&igrave;nh nhiều điểm du lịch t&acirc;m linh đầy huyền b&iacute;. Nơi kh&aacute;ch đi&nbsp;<a class=\"internal-link\" href=\"https://www.kynghidongduong.vn/tours/tour-du-lich-ha-giang-cao-nguyen-da-dong-van-3-ngay-2-dem.html\" target=\"_blank\" rel=\"noopener\">Tour H&agrave; Giang</a>&nbsp;thường gh&eacute; qua nhiều nhất ch&iacute;nh l&agrave;&nbsp;<a class=\"internal-link\" href=\"https://www.kynghidongduong.vn/blog/ve-den-doi-co-cau-ma-trong-hanh-trinh-du-lich-ha-giang.html\" target=\"_blank\" rel=\"noopener\">Đền Đ&ocirc;i C&ocirc; Cầu M&aacute;</a><strong>&nbsp;</strong>- ng&ocirc;i đền&nbsp;đặc biệt linh thi&ecirc;ng mang gi&aacute; trị t&acirc;m linh cao được nhiều người biết đến.</p>\r\n</div>\r\n<h3 id=\"s-7921-t-iacute-ch-273-7873-n-272-ocirc-i-c-ocirc-c-7847-u-m-aacute-h-agrave-giang\"><strong>Sự t&iacute;ch đền Đ&ocirc;i C&ocirc; Cầu M&aacute; H&agrave; Giang</strong></h3>\r\n<div data-fancybox=\"images\"><img class=\"lazy img-content loaded\" src=\"https://www.kynghidongduong.vn/userfiles/images/Vietnam/Ha%20Giang/Den-doi-co-cau-ma-ha-giang-kynghidongduong.vn.jpg\" alt=\"tour h&agrave; giang từ h&agrave; nội\" loading=\"lazy\" data-src=\"/userfiles/images/Vietnam/Ha%20Giang/Den-doi-co-cau-ma-ha-giang-kynghidongduong.vn.jpg\" data-was-processed=\"true\"></div>\r\n<p>Sự t&iacute;ch đền Đ&ocirc;i C&ocirc; Cầu M&aacute; được hai người d&acirc;n kể lại v&agrave;o những năm 1921, thực d&acirc;n Ph&aacute;p x&acirc;y dựng tuyến quốc lộ 2 n&agrave;y, con s&ocirc;ng M&aacute; chảy rất mạnh, xiết n&ecirc;n lần n&agrave;o x&acirc;y cầu cũng bị sập. L&uacute;c n&agrave;y, &ocirc;ng chủ thầu người Ph&aacute;p đ&agrave;nh phải nhờ đến ph&aacute;p sư địa phương vốn l&agrave; người d&acirc;n tộc thờ c&uacute;ng thổ thần, h&agrave; b&aacute;. Theo ph&aacute;p sư n&agrave;y, để thổ thần chấp nhận cho việc x&acirc;y dựng cầu th&agrave;nh c&ocirc;ng th&igrave; phải c&oacute; lễ vật l&agrave; hai c&ocirc; g&aacute;i đồng trinh. Nh&agrave; thầu quyết định l&agrave;m theo, t&igrave;m hai c&ocirc; g&aacute;i đồng trinh tự nguyện gieo m&igrave;nh xuống S&ocirc;ng M&aacute; để gi&uacute;p ho&agrave;n th&agrave;nh việc x&acirc;y cầu. Cũng từ sự t&iacute;ch n&agrave;y m&agrave; ng&ocirc;i đền Đ&ocirc;i C&ocirc; cũng được lập n&ecirc;n để thờ hai c&ocirc; g&aacute;i đồng trinh H&agrave; Dương. Ng&agrave;y nay, cứ mỗi dịp lễ hội hay tết đến xu&acirc;n về, nơi đ&acirc;y lại trở n&ecirc;n tấp nập, n&aacute;o nhiệt. Rất nhiều kh&aacute;ch&nbsp;<a class=\"internal-link\" href=\"https://www.kynghidongduong.vn/tours/tour-du-lich-tam-linh-le-hoi-tour-bai-dinh-trang-an-tour-chua-huong-tour-yen-tu-tour-hoa-lu-tam-coc-tour-yen-tu-chua-ba-vang-tour-chua-tam-chuc/\" target=\"_blank\" rel=\"noopener\">Tour du lịch t&acirc;m linh</a>&nbsp;tới đền Đ&ocirc;i C&ocirc; M&aacute; kh&ocirc;ng chỉ để cầu may mắn, sức khỏe, cầu t&agrave;i cầu lộc, cầu cho gia đ&igrave;nh hạnh ph&uacute;c an l&agrave;nh m&agrave; c&ograve;n để tham quan, v&atilde;n cảnh.&nbsp;</p>\r\n<p data-fancybox=\"images\"><img class=\"lazy img-content loaded\" src=\"https://www.kynghidongduong.vn/userfiles/images/Vietnam/Ha%20Giang/Den-doi-co-cau-ma-ha-giang-kynghidongduong.vn(04).jpg\" alt=\"du lịch h&agrave; giang\" loading=\"lazy\" data-src=\"/userfiles/images/Vietnam/Ha%20Giang/Den-doi-co-cau-ma-ha-giang-kynghidongduong.vn(04).jpg\" data-was-processed=\"true\"><br><em>Khung cảnh tho&aacute;ng đ&atilde;ng quanh đền Đ&ocirc;i C&ocirc; Cầu M&aacute;</em></p>\r\n<p>Đền Đ&ocirc;i C&ocirc; M&aacute; ở&nbsp;<a href=\"https://kynghidongduong.vn/blog/dao-choi-pho-co-dong-van-ha-giang.html\" target=\"_blank\" rel=\"noopener\">H&agrave; Giang</a>&nbsp;l&agrave; một trong năm đền đ&ocirc;i c&ocirc; ở nước ta, thuộc hệ thống đền trong t&iacute;n ngưỡng đạo Mẫu được thờ c&uacute;ng rất phổ biến ở Việt Nam. Nơi đ&acirc;y kh&ocirc;ng chỉ c&oacute; gi&aacute; trị về mặt t&ocirc;n gi&aacute;o, t&iacute;n ngưỡng m&agrave; c&ograve;n mang m&agrave;u sắc t&acirc;m linh đầy huyền b&iacute; thu h&uacute;t kh&ocirc;ng &iacute;t sự t&ograve; m&ograve; của nhiều du kh&aacute;ch.</p>\r\n<p>&nbsp;</p>\r\n<h3 id=\"k-7871-t-c-7845-u-273-7873-n-272-ocirc-i-c-ocirc-c-7847-u-m-aacute\"><strong>Kết cấu đền Đ&ocirc;i C&ocirc; Cầu M&aacute;</strong></h3>\r\n<div data-fancybox=\"images\"><img class=\"lazy img-content loaded\" src=\"https://www.kynghidongduong.vn/userfiles/images/Vietnam/Ha%20Giang/Den-doi-co-cau-ma-ha-giang-kynghidongduong.vn(01).jpg\" alt=\"tour du lịch h&agrave; giang\" loading=\"lazy\" data-src=\"/userfiles/images/Vietnam/Ha%20Giang/Den-doi-co-cau-ma-ha-giang-kynghidongduong.vn(01).jpg\" data-was-processed=\"true\"></div>\r\n<p>Đền Đ&ocirc;i C&ocirc; Cầu M&aacute; nằm tr&ecirc;n Km15 quốc lộ 2, thuộc x&atilde; Đạo Đức, huyện Vị Xuy&ecirc;n, H&agrave; Giang. Cũng giống như kết cấu đền Mẫu trong hệ thống đạo Mẫu ở Việt Nam. Đền Đ&ocirc;i C&ocirc; Cầu M&aacute; c&oacute; ba gian tương ứng với ba cung. Cung ch&iacute;nh thờ Tam t&ograve;a Th&aacute;nh Mẫu v&agrave; Đ&ocirc;i C&ocirc;. Bộ tượng Tam T&ograve;a Th&aacute;nh Mẫu được đặt trong kh&aacute;m thờ bằng gỗ sơn son thếp v&agrave;ng. Kh&aacute;m thờ ch&iacute;nh giữa đặt tượng Mẫu Thượng Thi&ecirc;n, l&agrave; vị mẫu cao nhất trong Tam t&ograve;a Th&aacute;nh Mẫu, đồng thời, đ&acirc;y cũng l&agrave; nơi cao nhất trong di t&iacute;ch. Kh&aacute;m thờ b&ecirc;n phải l&agrave; Mẫu Thoải, kh&aacute;m thờ b&ecirc;n tr&aacute;i l&agrave; mẫu Thượng Ng&agrave;n. Bộ tượng Đ&ocirc;i C&ocirc; được đặt trong kh&aacute;m thờ bằng gỗ sơn son thếp v&agrave;ng v&agrave; đặt ngay b&ecirc;n dưới kh&aacute;m thờ Tam T&ograve;a Th&aacute;nh Mẫu.</p>\r\n<p data-fancybox=\"images\"><img class=\"lazy img-content loaded\" src=\"https://www.kynghidongduong.vn/userfiles/images/Vietnam/Ha%20Giang/Den-doi-co-cau-ma-ha-giang-kynghidongduong.vn(03).jpg\" alt=\"tour h&agrave; giang từ h&agrave; nội\" loading=\"lazy\" data-src=\"/userfiles/images/Vietnam/Ha%20Giang/Den-doi-co-cau-ma-ha-giang-kynghidongduong.vn(03).jpg\" data-was-processed=\"true\"></p>\r\n<p>Cung b&ecirc;n tr&aacute;i thờ B&agrave; Ch&uacute;a Sơn Trang. Truyền thuyết d&acirc;n gian kể lại rằng B&agrave; Ch&uacute;a Sơn Trang được Thượng Đế phong cho l&agrave; Nữ ch&uacute;a rừng xanh bởi sắc đẹp v&agrave; t&agrave;i đức của b&agrave;. Trong c&aacute;c cuộc kh&aacute;c chiến chống giặc ngoại x&acirc;m, b&agrave; Ch&uacute;a Sơn Trang đ&atilde; c&oacute; c&ocirc;ng gi&uacute;p c&aacute;c triều L&yacute;, Trần đ&aacute;nh giặc, bảo vệ bờ c&otilde;i nước ta. Từ đ&oacute;, nh&acirc;n d&acirc;n khắp nơi đ&atilde; lập nhiều miếu, đền, đ&igrave;nh thờ phụng b&agrave;.</p>\r\n<p>Cung b&ecirc;n phải thờ đức Th&aacute;nh Trần tức Hưng Đạo Vương Trần Quốc Tuấn, người đ&atilde; hai lần c&oacute; c&ocirc;ng c&ocirc;ng lớn trong cuộc kh&aacute;ng chiến chống qu&acirc;n Nguy&ecirc;n - M&ocirc;ng x&acirc;m lược.</p>\r\n<p>Trải qua rất nhiều thăng trầm của lịch sử c&ugrave;ng sự thay đổi của thời gian m&agrave; ng&ocirc;i đền đ&atilde; c&oacute; những thay đổi nhất định. B&ecirc;n cạnh đ&oacute;, đền Đ&ocirc;i C&ocirc; Cầu M&aacute;&nbsp;cũng nhận được c&ocirc;ng đức từ người d&acirc;n địa phương v&agrave; kh&aacute;ch&nbsp;<a class=\"internal-link\" href=\"https://www.kynghidongduong.vn/tours/tour-du-lich-ha-giang-cao-nguyen-da-dong-van-3-ngay-2-dem.html\" target=\"_blank\" rel=\"noopener\">Tour du lịch H&agrave; Giang</a>&nbsp;m&agrave; trở n&ecirc;n rộng r&atilde;i, khang trang hơn.</p>\r\n<p>&nbsp;</p>\r\n<h3 id=\"l-432-u-yacute-khi-tham-quan-272-7873-n-272-ocirc-i-c-ocirc-c-7847-u-m-aacute-nbsp\"><strong>Lưu &yacute; khi tham quan Đền Đ&ocirc;i C&ocirc; Cầu M&aacute;&nbsp;</strong></h3>\r\n<div data-fancybox=\"images\"><img class=\"lazy img-content loaded\" src=\"https://www.kynghidongduong.vn/userfiles/images/Vietnam/Ha%20Giang/Den-doi-co-cau-ma-ha-giang-kynghidongduong.vn(02).jpg\" alt=\"tour h&agrave; giang\" loading=\"lazy\" data-src=\"/userfiles/images/Vietnam/Ha%20Giang/Den-doi-co-cau-ma-ha-giang-kynghidongduong.vn(02).jpg\" data-was-processed=\"true\"></div>\r\n<ul>\r\n<li>Đền Đ&ocirc;i C&ocirc; Cầu M&aacute; cũng như c&aacute;c đền, ch&ugrave;a kh&aacute;c l&agrave; nơi trang nghi&ecirc;m, thanh tịnh n&ecirc;n khi tới đ&acirc;y, bạn n&ecirc;n mặc quần &aacute;o gọn g&agrave;ng, kh&ocirc;ng n&ecirc;n mặc những bộ quần &aacute;o qu&aacute; hở hang, hay qu&aacute; ngắn.</li>\r\n<li>Nếu c&oacute; thể, h&atilde;y tự chuẩn bị nước uống, hoa quả hay đồ ăn nhẹ mang theo. Chắc chắn tr&ecirc;n đường đi kh&aacute;ch&nbsp;<strong>du lịch H&agrave; Giang&nbsp;</strong>sẽ c&oacute; nhiều địa điểm b&aacute;n đồ ăn hay nước uống nhưng gi&aacute; sẽ cao hơn so với mặt bằng chung.</li>\r\n<li>Tiền l&agrave; vật bất ly th&acirc;n cho du bạn c&oacute; đi đ&acirc;u đi nữa. Tuy nhi&ecirc;n, bạn kh&ocirc;ng n&ecirc;n mang theo qu&aacute; nhiều tiền bởi khi v&agrave;o lễ, đền sẽ kh&aacute; đ&ocirc;ng n&ecirc;n ph&ograve;ng tr&aacute;nh kẻ gian m&oacute;c t&uacute;i.</li>\r\n<li>Về nguy&ecirc;n tắc khi ra v&agrave;o. Khi đi qua cổng Tam quan v&agrave;o lễ b&aacute;i bạn n&ecirc;n đi v&agrave;o từ cửa b&ecirc;n phải (cửa Giả Quan) v&agrave; ra bằng cửa b&ecirc;n tr&aacute;i (cửa Kh&ocirc;ng quan). Cửa giữa (của Trung Quan) chỉ d&agrave;nh cho Thi&ecirc;n Tử, bậc cao tăng, bậc khoa bảng đi v&agrave;o v&agrave; đi ra cũng theo cửa n&agrave;y.</li>\r\n<li>Lưu &yacute; quan trọng nữa l&agrave; c&aacute;c bạn kh&ocirc;ng n&ecirc;n chụp ảnh, quay phim t&ugrave;y tiện trong đền. Khi đứng khấn v&aacute;i kh&ocirc;ng n&ecirc;n đứng thẳng trực tiếp với ban thờ m&agrave; n&ecirc;n đứng chếch sang một b&ecirc;n.</li>\r\n</ul>', 'ACTIVE', '2023-09-15 18:18:55', '2023-09-15 18:18:55', 'den-doi-co-cau-ma', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2023-07-04 00:52:35', '2023-07-04 00:52:35', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 10, '2023-07-04 00:52:35', '2023-09-19 18:43:29', 'voyager.media.index', NULL),
(3, 1, 'Tài khoản', '', '_self', 'voyager-person', '#000000', 15, 2, '2023-07-04 00:52:35', '2023-07-04 00:59:51', 'voyager.users.index', 'null'),
(4, 1, 'Phân quyền', '', '_self', 'voyager-lock', '#000000', 15, 1, '2023-07-04 00:52:35', '2023-07-04 00:59:41', 'voyager.roles.index', 'null'),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 11, '2023-07-04 00:52:35', '2023-09-19 18:43:29', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2023-07-04 00:52:35', '2023-07-04 00:58:37', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2023-07-04 00:52:35', '2023-07-04 00:58:37', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2023-07-04 00:52:35', '2023-07-04 00:58:37', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2023-07-04 00:52:35', '2023-07-04 00:58:37', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 12, '2023-07-04 00:52:35', '2023-09-19 18:43:29', 'voyager.settings.index', NULL),
(11, 1, 'Danh mục bài viết', '', '_self', 'voyager-categories', '#000000', 16, 1, '2023-07-04 00:52:35', '2023-07-04 01:00:43', 'voyager.categories.index', 'null'),
(12, 1, 'Bài viết', '', '_self', 'voyager-news', '#000000', 16, 2, '2023-07-04 00:52:35', '2023-07-04 01:00:43', 'voyager.posts.index', 'null'),
(13, 1, 'Trang giới thiệu', '', '_self', 'voyager-file-text', '#000000', NULL, 3, '2023-07-04 00:52:35', '2023-07-04 01:34:35', 'voyager.pages.index', 'null'),
(15, 1, 'Quản lý tài khoản', '', '_self', 'voyager-categories', '#000000', NULL, 9, '2023-07-04 00:59:25', '2023-09-19 18:43:34', NULL, ''),
(16, 1, 'Quản lý bài viết', '', '_self', 'voyager-categories', '#000000', NULL, 8, '2023-07-04 01:00:03', '2023-09-19 18:43:34', NULL, ''),
(21, 1, 'Banners', '', '_self', 'voyager-photos', NULL, NULL, 2, '2023-07-04 01:33:38', '2023-07-04 01:34:35', 'voyager.banners.index', NULL),
(22, 2, 'Trang chủ', '', '_self', NULL, '#000000', NULL, 1, '2023-07-04 02:29:39', '2023-07-04 02:30:35', NULL, ''),
(23, 2, 'Giới thiệu', '/about/gioi-thieu', '_self', NULL, '#000000', NULL, 2, '2023-07-04 02:29:47', '2023-09-14 02:34:05', NULL, ''),
(27, 2, 'Liên hệ', '/contact', '_self', NULL, '#000000', NULL, 6, '2023-07-04 02:30:23', '2023-09-13 19:40:49', NULL, ''),
(28, 2, 'Phòng đơn', '/collections/phong-don', '_self', NULL, '#000000', 24, 1, '2023-07-04 02:30:32', '2023-07-04 19:00:40', NULL, ''),
(29, 2, 'Phòng VIP', '/collections/phong-vip', '_self', NULL, '#000000', 24, 2, '2023-07-04 02:30:43', '2023-07-04 19:00:46', NULL, ''),
(30, 2, 'Hội trường', '/collections/hoi-truong', '_self', NULL, '#000000', 24, 3, '2023-07-04 02:30:56', '2023-07-04 19:00:59', NULL, ''),
(32, 2, 'Tin tức', '/posts', '_self', NULL, '#000000', NULL, 5, '2023-07-04 19:42:57', '2023-09-13 19:40:49', NULL, ''),
(33, 1, 'Liên hệ', '', '_self', 'voyager-chat', '#000000', NULL, 6, '2023-07-04 20:52:21', '2023-09-14 01:24:43', 'voyager.contacts.index', 'null'),
(35, 2, 'Tiếng anh', '/greeting/en', '_self', NULL, '#000000', 34, 1, '2023-07-05 02:46:55', '2023-07-05 02:47:07', NULL, ''),
(36, 2, 'Tiếng việt', '/greeting/vi', '_self', NULL, '#000000', 34, 2, '2023-07-05 02:47:04', '2023-07-05 02:56:59', NULL, ''),
(37, 2, 'Du lịch cộng đồng xã Phú Linh', '/about/du-lich-cong-dong-xa-phu-linh', '_self', NULL, '#000000', 23, 1, '2023-09-13 19:37:40', '2023-09-15 01:43:51', NULL, ''),
(38, 2, 'Nông nghiệp hữu cơ tại xã Phú Linh', '/about/nong-nghiep-huu-co-tai-xa-phu-linh', '_self', NULL, '#000000', 23, 2, '2023-09-13 19:38:08', '2023-09-15 01:44:12', NULL, ''),
(39, 2, 'Hướng dẫn du khách đi đến xã Phú Linh', '/about/huong-dan-du-lich-den-xa-phu-linh', '_self', NULL, '#000000', 23, 3, '2023-09-13 19:38:36', '2023-09-15 01:44:33', NULL, ''),
(40, 2, 'Nên đi Phú Linh vào thời gian nào?', '/about/nen-di-phu-linh-vao-thoi-gian-nao', '_self', NULL, '#000000', 23, 4, '2023-09-13 19:39:03', '2023-09-15 01:44:51', NULL, ''),
(41, 2, 'Hình ảnh & Sự kiện', '/events', '_self', NULL, '#000000', NULL, 3, '2023-09-13 19:40:15', '2023-09-14 20:44:04', NULL, ''),
(42, 2, 'Cẩm nang du lịch', '/locations', '_self', NULL, '#000000', NULL, 4, '2023-09-13 19:40:30', '2023-09-14 19:06:33', NULL, ''),
(45, 1, 'Cẩm nang du lịch', '', '_self', 'voyager-diamond', NULL, 47, 2, '2023-09-13 21:05:57', '2023-09-13 21:17:46', 'voyager.locations.index', NULL),
(46, 1, 'Danh mục', '', '_self', 'voyager-book', NULL, 47, 1, '2023-09-13 21:09:51', '2023-09-13 21:17:42', 'voyager.collections.index', NULL),
(47, 1, 'Quản lý địa điểm', '', '_self', 'voyager-categories', '#000000', NULL, 4, '2023-09-13 21:17:33', '2023-09-13 21:17:39', NULL, ''),
(48, 1, 'Hình ảnh & Sự kiện', '', '_self', 'voyager-photos', NULL, NULL, 5, '2023-09-14 01:19:02', '2023-09-14 01:24:43', 'voyager.events.index', NULL),
(49, 2, 'Địa điểm', '/collections/dia-diem', '_self', NULL, '#000000', 42, 1, '2023-09-15 01:14:24', '2023-09-15 01:14:29', NULL, ''),
(50, 2, 'Lưu trú', '/collections/luu-tru', '_self', NULL, '#000000', 42, 2, '2023-09-15 01:14:57', '2023-09-15 01:15:51', NULL, ''),
(51, 2, 'Ẩm thực', '/collections/am-thuc', '_self', NULL, '#000000', 42, 3, '2023-09-15 01:15:14', '2023-09-15 01:15:58', NULL, '');

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
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, 'GIỚI THIỆU', 'Nằm trong khu vực vùng núi phía bắc của Tổ quốc, tỉnh Hà Giang sở hữu nhiều ngọn núi cao, vách núi đá hiểm trở dựng đứng, những cánh rừng nguyên sinh đan xen với thung lũng thơ mộng tạo nên một quần thể kiến trúc vô cùng độc đáo và hùng vĩ. Hà Giang là mảnh đất có lịch sử lâu đời, là nơi quần tụ và sinh sống của 19 dân tộc, mỗi dân tộc mang những nét văn hóa đặc trưng riêng biệt, tạo nên sự đa dạng về văn hóa, tuy nhiên sự giao thoa đó không làm mất đi những nét độc đáo của mỗi dân tộc mà ngược lại hòa quện vào nhau, bổ trợ cho nhau tạo nên một quần thể đa văn hóa đậm đà bản sắc dân tộc...', '<div class=\"font-weight-bold summary\">Việc ph&aacute;t triển c&aacute;c L&agrave;ng Văn h&oacute;a du lịch cộng đồng (LVHDLCĐ) tại huyện Vị Xuy&ecirc;n, tỉnh H&agrave; Giang được đ&aacute;nh gi&aacute; l&agrave; ph&aacute;t triển kinh tế bền vững, g&oacute;p phần bảo tồn v&agrave; ph&aacute;t huy những n&eacute;t văn h&oacute;a độc đ&aacute;o của địa phương. Mỗi LVHDLCĐ đều mang những n&eacute;t đẹp văn h&oacute;a truyền thống đặc trưng ri&ecirc;ng, tạo điểm nhấn ấn tượng trong l&ograve;ng du kh&aacute;ch.</div>\r\n<div class=\"content\">\r\n<p>&nbsp; &nbsp;Với lợi thế l&agrave; v&ugrave;ng đất c&oacute; truyền thống lịch sử, được nhiều du kh&aacute;ch biết đến, huyện c&oacute; 3 di t&iacute;ch Quốc gia đ&oacute; l&agrave;: Ch&ugrave;a S&ugrave;ng Kh&aacute;nh (x&atilde; Đạo Đức), ch&ugrave;a Nậm Dầu (x&atilde; Ngọc Linh), ch&ugrave;a B&igrave;nh L&acirc;m (x&atilde; Ph&uacute; Linh). Ngo&agrave;i ra thi&ecirc;n nhi&ecirc;n đ&atilde; ưu đ&atilde;i ban tặng cho v&ugrave;ng đất n&agrave;y cảnh đẹp tự nhi&ecirc;n thực sự đặc sắc, h&ugrave;ng vĩ v&agrave; n&ecirc;n thơ như hang Đ&aacute;n Pio&oacute;ng hay c&ograve;n gọi l&agrave; hang N&uacute;i Thủng ở x&atilde; Bạch Ngọc được đ&aacute;nh gi&aacute; một trong những hang động c&oacute; kiến tr&uacute;c độc đ&aacute;o đ&atilde; được c&ocirc;ng nhận l&agrave; danh lam thắng cảnh cấp Quốc gia&hellip;Những năm gần đ&acirc;y, một hướng đi mới được huyện ưu ti&ecirc;n đ&oacute; l&agrave; việc x&acirc;y dựng v&agrave; ph&aacute;t triển c&aacute;c L&agrave;ng văn h&oacute;a du lịch gắn với chương tr&igrave;nh x&acirc;y dựng N&ocirc;ng th&ocirc;n mới. Hiện, Vị Xuy&ecirc;n&nbsp; c&oacute; 4 L&agrave;ng văn h&oacute;a du lịch cộng đồng bao gồm: Thanh Sơn (x&atilde; Thanh Thủy), L&ugrave;ng Tao (x&atilde; Cao Bồ), Khuổi L&aacute;c (x&atilde; Trung Th&agrave;nh), Bản Bang (x&atilde; Đạo Đức) đang hoạt động c&oacute; hiệu quả.</p>\r\n<p>&nbsp; &nbsp; C&aacute;ch Th&agrave;nh phố H&agrave; Giang 12 km c&aacute;ch thị trấn Vị Xuy&ecirc;n (Trung t&acirc;m huyện) 9 km. Th&ocirc;n Bản Bang, x&atilde; Đạo Đức l&agrave; một trong 4 LVHDLCĐ của huyện Vị Xuy&ecirc;n. Th&ocirc;n Bản Bang x&atilde; Đạo Đức được h&igrave;nh th&agrave;nh đến nay khoảng 150 năm. Qua bao biến cố đổi thay, người Dao th&ocirc;n Bản Bang đ&atilde; khẳng định được việc chọn đất lập l&agrave;ng cư ngụ của người xưa ở đất n&agrave;y l&agrave; hồng ph&uacute;c được thể hiện ở ch&iacute;nh cuộc sống kh&ocirc;ng ngừng vươn l&ecirc;n, kinh tế ph&aacute;t triển, văn ho&aacute; x&atilde; hội được bảo tồn v&agrave; ph&aacute;t huy của cộng đồng. Người Dao ở đ&acirc;y c&oacute; nhiều Lễ hội t&iacute;n ngưỡng độc đ&aacute;o như: Lễ Cầu m&ugrave;a, Lễ Cấp sắc, Lễ Cắm c&ocirc;... c&ugrave;ng với nhiều tập qu&aacute;n phong ph&uacute; trong đ&aacute;m hiếu, đ&aacute;m hỷ; những l&agrave;n điệu Cọi s&acirc;u lắng. Tại đ&acirc;y, du kh&aacute;ch sẽ được thưởng thức những lời ca, điệu m&uacute;a d&acirc;n gian do đội văn nghệ của th&ocirc;n biểu diễn, c&ugrave;ng tham gia c&aacute;c tr&ograve; chơi truyền thống như: Đẩy gậy, đi c&agrave; kheo; tham quan c&aacute;c nghề truyền thống như: Dệt thổ cẩm, đan l&aacute;t, chạm bạc... Du kh&aacute;ch cũng c&oacute; thể mua sắm cho m&igrave;nh những sản phẩm lưu niệm thủ c&ocirc;ng như t&uacute;i x&aacute;ch, v&iacute; thổ cẩm, quần &aacute;o d&acirc;n tộc...&nbsp; do ch&iacute;nh b&agrave;n tay kh&eacute;o l&eacute;o của những người phụ nữ Dao Bản Bang l&agrave;m ra. B&ecirc;n cạnh đ&oacute;, du kh&aacute;ch c&ograve;n được thưởng thức những m&oacute;n ẩm thực đặc trưng của đồng b&agrave;o nơi đ&acirc;y như: X&ocirc;i ngũ sắc, măng cuốn, c&aacute; Bỗng nấu măng chua, thịt chua, thịt g&agrave; đồi... Những m&oacute;n ăn độc đ&aacute;o với m&ugrave;i thơm đặc trưng của c&aacute;c loại gia vị như: L&aacute; m&aacute;c mật, hạt dổi, thảo quả, gừng... h&ograve;a quện trong khung cảnh thanh b&igrave;nh, d&acirc;n d&atilde; của miền sơn cước chắc chắn sẽ để lại ấn tượng kh&oacute; phai trong l&ograve;ng du kh&aacute;ch.</p>\r\n<p><em>Th&ocirc;n Bản Bang điểm đến của&nbsp;du lịch cộng đồng.</em></p>\r\n<p>&nbsp; &nbsp; &ldquo;X&acirc;y dựng l&agrave;ng văn ho&aacute; - du lịch sẽ tạo bước đột ph&aacute;, l&agrave;m chuyển biến nhận thức của cộng đồng, huy động nhiều nguồn lực th&uacute;c đẩy kinh tế h&agrave;ng h&oacute;a ph&aacute;t triển, khai th&aacute;c c&aacute;c tiềm năng lợi thế để giảm ngh&egrave;o bền vững. N&acirc;ng cao d&acirc;n tr&iacute;, tăng cường giao lưu hiểu biết về văn h&oacute;a, x&atilde; hội giữa c&aacute;c d&acirc;n tộc trong nước v&agrave; Quốc tế; ph&aacute;t huy v&agrave; giữ g&igrave;n những gi&aacute; trị văn ho&aacute; truyền thống của địa phương để x&acirc;y dựng qu&ecirc; hương Vị Xuy&ecirc;n gi&agrave;u đẹp, văn minh&rdquo; &ndash; &Ocirc;ng Nguyễn Hữu Việt, Ph&oacute; ph&ograve;ng Văn h&oacute;a v&agrave; Th&ocirc;ng tin huyện Vị Xuy&ecirc;n cho biết: &ldquo;C&ugrave;ng với một số huyện miền n&uacute;i trong tỉnh, tiềm năng du lịch cộng đồng của huyện Vị Xuy&ecirc;n đ&atilde; v&agrave; đang được đ&aacute;nh thức, tuyến du lịch cộng đồng Bản Bang, Thanh Sơn&hellip;đang thu h&uacute;t một lượng lớn du kh&aacute;ch trong, ngo&agrave;i tỉnh v&agrave; c&aacute;c nh&agrave; đầu tư đến với huyện. Tuy nhi&ecirc;n, do mới x&acirc;y dựng n&ecirc;n nhiều hạng mục cần được quan t&acirc;m đầu tư để phục vụ du kh&aacute;ch tốt hơn, v&igrave; vậy, ch&uacute;ng t&ocirc;i mong nhận được nhiều hơn nữa sự quan t&acirc;m của tỉnh, c&aacute;c ban, ng&agrave;nh, doanh nghiệp lữ h&agrave;nh trong v&agrave; ngo&agrave;i tỉnh. Ph&aacute;t triển du lịch cộng đồng kh&ocirc;ng chỉ mang lại lợi &iacute;ch về kinh tế - x&atilde; hội m&agrave; c&ograve;n g&oacute;p phần v&agrave;o c&ocirc;ng t&aacute;c bảo tồn văn h&oacute;a truyền thống bản địa, giữ g&igrave;n cảnh quan tự nhi&ecirc;n của v&ugrave;ng...&rdquo;, &ocirc;ng Việt cho biết th&ecirc;m.</p>\r\n<p>&nbsp; &nbsp; Th&ecirc;m một tuyến du lịch cộng đồng mới ra đời, th&ecirc;m cơ hội cải thiện sinh kế cho đồng b&agrave;o, gi&uacute;p giữ g&igrave;n v&agrave; ph&aacute;t huy gi&aacute; trị văn h&oacute;a cộng đồng c&aacute;c d&acirc;n tộc. Tuy nhi&ecirc;n, để du lịch cộng đồng ở Vị Xuy&ecirc;n ph&aacute;t triển bền vững, kết nối c&aacute;c tuyến, điểm du lịch trong tỉnh, c&aacute;c gi&aacute; trị văn h&oacute;a, tạo ra chuỗi sản phẩm du lịch c&oacute; gi&aacute; trị cao, kh&ocirc;ng chỉ c&oacute; sự đ&oacute;ng g&oacute;p của cộng đồng m&agrave; đ&ograve;i hỏi phải c&oacute; sự v&agrave;o cuộc quyết liệt hơn nữa của c&aacute;c cấp ch&iacute;nh quyền, nhất l&agrave; những người l&agrave;m du lịch.</p>\r\n</div>', 'pages/September2023/2R3aKrYZ3JEE9a2KwQJO.jpg', 'gioi-thieu', 'Nằm trong khu vực vùng núi phía bắc của Tổ quốc, tỉnh Hà Giang sở hữu nhiều ngọn núi cao, vách núi đá hiểm trở', 'Nằm trong khu vực vùng núi phía bắc của Tổ quốc, tỉnh Hà Giang sở hữu nhiều ngọn núi cao, vách núi đá hiểm trở', 'ACTIVE', '2023-09-13 20:37:29', '2023-09-24 17:46:44'),
(4, 1, 'TRẢI NGHIỆM', 'Xây dựng làng Văn hoá- du lịch sẽ tạo bước đột phá, làm chuyển biến nhận thức của cộng đồng, huy động nhiều nguồn lực thúc đẩy kinh tế hàng hóa phát triển, khai thác các tiềm năng lợi thế để giảm nghèo bền vững. Nâng cao dân trí, tăng cường giao lưu hiểu biết về văn hóa, xã hội giữa các dân tộc trong nước và Quốc tế; phát huy và giữ gìn những giá trị văn hoá truyền thống của địa phương để xây dựng quê hương Vị Xuyên giàu đẹp, văn minh', '<p>C&ugrave;ng với một số huyện miền n&uacute;i trong tỉnh, tiềm năng du lịch cộng đồng của huyện Vị Xuy&ecirc;n đ&atilde; v&agrave; đang được đ&aacute;nh thức, tuyến du lịch cộng đồng Bản Bang, Thanh Sơn&hellip;đang thu h&uacute;t một lượng lớn du kh&aacute;ch trong, ngo&agrave;i tỉnh v&agrave; c&aacute;c nh&agrave; đầu tư đến với huyện. Tuy nhi&ecirc;n, do mới x&acirc;y dựng n&ecirc;n nhiều hạng mục cần được quan t&acirc;m đầu tư để phục vụ du kh&aacute;ch tốt hơn, v&igrave; vậy, ch&uacute;ng t&ocirc;i mong nhận được nhiều hơn nữa sự quan t&acirc;m của tỉnh, c&aacute;c ban, ng&agrave;nh, doanh nghiệp lữ h&agrave;nh trong v&agrave; ngo&agrave;i tỉnh.</p>', 'pages/September2023/fRKYYV1CMameGmB3Xtut.jpg', 'trai-nghiem', 'Xây dựng làng Văn hoá- du sẽ tạo bước đột phá, làm chuyển biến nhận thức của cộng đồng,', 'Xây dựng làng Văn hoá- du sẽ tạo bước đột phá, làm chuyển biến nhận thức của cộng đồng,', 'ACTIVE', '2023-09-13 23:54:54', '2023-11-03 18:20:52'),
(5, 1, 'Du lịch cộng đồng xã Phú Linh', 'Với lợi thế là vùng đất có truyền thống lịch sử', '<p>Với lợi thế l&agrave; v&ugrave;ng đất c&oacute; truyền thống lịch sử, được nhiều du kh&aacute;ch biết đến, huyện c&oacute; 3 di t&iacute;ch Quốc gia đ&oacute; l&agrave;: Ch&ugrave;a S&ugrave;ng Kh&aacute;nh (x&atilde; Đạo Đức), ch&ugrave;a Nậm Dầu (x&atilde; Ngọc Linh), ch&ugrave;a B&igrave;nh L&acirc;m (x&atilde; Ph&uacute; Linh). Ngo&agrave;i ra thi&ecirc;n nhi&ecirc;n đ&atilde; ưu đ&atilde;i ban tặng cho v&ugrave;ng đất n&agrave;y cảnh đẹp tự nhi&ecirc;n thực sự đặc sắc, h&ugrave;ng vĩ v&agrave; n&ecirc;n thơ như hang Đ&aacute;n Pio&oacute;ng hay c&ograve;n gọi l&agrave; hang N&uacute;i Thủng ở x&atilde; Bạch Ngọc được đ&aacute;nh gi&aacute; một trong những hang động c&oacute; kiến tr&uacute;c độc đ&aacute;o đ&atilde; được c&ocirc;ng nhận l&agrave; danh lam thắng cảnh cấp Quốc gia. Những năm gần đ&acirc;y, một hướng đi mới được huyện ưu ti&ecirc;n đ&oacute; l&agrave; việc x&acirc;y dựng v&agrave; ph&aacute;t triển c&aacute;c L&agrave;ng văn h&oacute;a du lịch gắn với chương tr&igrave;nh x&acirc;y dựng N&ocirc;ng th&ocirc;n mới. Hiện, Vị Xuy&ecirc;n&nbsp; c&oacute; 4 L&agrave;ng văn h&oacute;a du lịch cộng đồng bao gồm: Thanh Sơn (x&atilde; Thanh Thủy), L&ugrave;ng Tao (x&atilde; Cao Bồ), Khuổi L&aacute;c (x&atilde; Trung Th&agrave;nh), Bản Bang (x&atilde; Đạo Đức) đang hoạt động c&oacute; hiệu quả.</p>', NULL, 'du-lich-cong-dong-xa-phu-linh', 'Với lợi thế là vùng đất có truyền thống lịch sử', 'Với lợi thế là vùng đất có truyền thống lịch sử', 'ACTIVE', '2023-09-15 01:33:53', '2023-09-24 17:47:06'),
(6, 1, 'Nông nghiệp hữu cơ tại xã Phú Linh', 'Ngày 11/9, huyện Đoàn Vị Xuyên đã phối hợp với UBND xã Phú Linh tổ chức lễ phát động phong trào ủ cây, phân xanh làm phân hữu cơ cho người dân ở thôn Pác Pà. Tham gia có lãnh đạo khuyến nông huyện, huyện Đoàn, bí thư đoàn các xã, thị trấn trên địa bàn huyện cùng các đoàn viên thanh niên xã Phú Linh', '<div class=\"font-weight-bold summary\">Ng&agrave;y 11/9, huyện Đo&agrave;n Vị Xuy&ecirc;n đ&atilde; phối hợp với UBND x&atilde; Ph&uacute; Linh tổ chức lễ ph&aacute;t động phong tr&agrave;o ủ c&acirc;y, ph&acirc;n xanh l&agrave;m ph&acirc;n hữu cơ cho người d&acirc;n ở th&ocirc;n P&aacute;c P&agrave;. Tham gia c&oacute; l&atilde;nh đạo khuyến n&ocirc;ng huyện, huyện Đo&agrave;n, b&iacute; thư đo&agrave;n c&aacute;c x&atilde;, thị trấn tr&ecirc;n địa b&agrave;n huyện c&ugrave;ng c&aacute;c đo&agrave;n vi&ecirc;n thanh ni&ecirc;n x&atilde; Ph&uacute; Linh</div>\r\n<div class=\"content\">\r\n<div>&nbsp; &nbsp; Hiện nay việc lạm dụng c&aacute;c loại ph&acirc;n b&oacute;n ho&aacute; học, thuốc bảo vệ thực vật qu&aacute; nhiều, v&ocirc; h&igrave;nh chung đ&atilde; g&acirc;y ảnh hưởng nặng nề tới m&ocirc;i trường đất, nước v&agrave; sức khoẻ của con người. Do đ&oacute;,việc gi&uacute;p đỡ v&agrave; hướng dẫn b&agrave; con n&ocirc;ng d&acirc;n l&agrave;m ph&acirc;n hữu cơ để b&oacute;n cho c&acirc;y l&agrave; biện ph&aacute;p hữu hiệu nhất, bởi kh&ocirc;ng những vừa tiết kiệm chi ph&iacute; m&agrave; c&ograve;n gi&uacute;p tăng th&ecirc;m độ phi nhi&ecirc;u cho đất, kh&ocirc;ng g&acirc;y hại tới m&ocirc;i trường. Nguy&ecirc;n liệu để l&agrave;m ph&acirc;n hữu cơ lại dễ kiếm v&agrave; dồi d&agrave;o ở n&ocirc;ng th&ocirc;n như: Tất cả những loại c&acirc;y th&acirc;n thảo, c&acirc;y ở bụi rậm, th&acirc;n ng&ocirc;, th&acirc;n lạc, rơm rạ, phế phẩm phế tạp, trấu, m&ugrave;n cưa. C&ugrave;ng với chế phẩm vi sinh b&agrave; con c&oacute; thể dễ d&agrave;ng mua được ở c&aacute;c cửa h&agrave;ng vật tư với gi&aacute; chỉ từ 20 - 25 ngh&igrave;n/g&oacute;i, tương đương ủ được 1 tấn cỏ hay phế phẩm n&ocirc;ng nghiệp. C&aacute;c bước thực hiện lại đơn giản v&agrave; dễ l&agrave;m b&agrave; con c&oacute; thể tự thực hiện sau khi đ&atilde; được hướng dẫn. Sau thời gian từ 15 đến 20 ng&agrave;y v&agrave;o m&ugrave;a h&egrave; v&agrave; 1 th&aacute;ng với m&ugrave;a đ&ocirc;ng l&agrave; b&agrave; con c&oacute; thể lấy ph&acirc;n để b&oacute;n cho c&acirc;y trồng.<br>&nbsp; &nbsp;Ph&acirc;n hữu cơ gi&uacute;p b&agrave; con tận dụng được nguồn nguy&ecirc;n liệu c&acirc;y cỏ quanh nh&agrave;, phế phẩm trong n&ocirc;ng nghiệp, chi ph&iacute; lại thấp, dễ thực hiện, gi&uacute;p ti&ecirc;u diệt mầm bệnh, vi khuẩn trong ph&acirc;n chuồng tr&aacute;nh ph&aacute;t triển mầm bệnh, đặc biệt gi&uacute;p đất tăng độ tơi xốp, m&agrave;u mỡ v&agrave; rất th&acirc;n thiện với m&ocirc;i trường.<br>&nbsp; &nbsp;Qua ph&aacute;t động phong tr&agrave;o đ&atilde; gi&uacute;p cho c&aacute;n bộ Đo&agrave;n của c&aacute;c x&atilde;, thị trấn tr&ecirc;n địa b&agrave;n huyện, đo&agrave;n vi&ecirc;n thanh ni&ecirc;n c&ugrave;ng người d&acirc;n của x&atilde; Ph&uacute; Linh c&oacute; thể hiểu được &yacute; nghĩa thiết thực m&agrave; phương ph&aacute;p ủ c&acirc;y ph&acirc;n xanh th&agrave;nh ph&acirc;n hữu cơ mang lại cho sản xuất n&ocirc;ng nghiệp. C&aacute;c c&aacute;n Bộ Đo&agrave;n qua đ&oacute; c&oacute; thể tiếp thu được những kiến thức bổ &iacute;ch để &aacute;p dụng thực tiễn tại địa phương m&igrave;nh. Đồng thời ph&aacute;t huy được vai tr&ograve; xung k&iacute;ch, t&igrave;nh nguyện của Đo&agrave;n vi&ecirc;n thanh ni&ecirc;n để c&ugrave;ng chung tay tham gia ph&aacute;t triển kinh tế cho gia đ&igrave;nh cũng như g&oacute;p phần v&agrave;o qu&aacute; tr&igrave;nh x&acirc;y dựng n&ocirc;ng th&ocirc;n mới của địa phương</div>\r\n</div>', NULL, 'nong-nghiep-huu-co-tai-xa-phu-linh', 'Ngày 11/9, huyện Đoàn Vị Xuyên đã phối hợp với UBND xã Phú Linh tổ chức lễ phát động phong trào ủ cây, phân xanh làm phân hữu cơ cho người dân ở thôn Pác Pà', 'Ngày 11/9, huyện Đoàn Vị Xuyên đã phối hợp với UBND xã Phú Linh tổ chức lễ phát động phong trào ủ cây, phân xanh làm phân hữu cơ cho người dân ở thôn Pác Pà', 'ACTIVE', '2023-09-15 01:36:10', '2023-09-15 01:36:10'),
(7, 1, 'Hướng dẫn du lịch đến xã Phú Linh', 'Xã Phú Linh là một xã thuộc quận/huyện Huyện Vị Xuyên tại Tỉnh Hà Giang. Nằm ở vùng Đông Bắc Bộ của nước ta.', '<p>C&aacute;ch trung th&agrave;nh phố H&agrave; Giang 20 km, huyện Vị Xuy&ecirc;n c&oacute; tổng diện t&iacute;ch tr&ecirc;n 1.478 km&sup2;, d&acirc;n số tr&ecirc;n 115 ngh&igrave;n người, với 24 đơn vị h&agrave;nh ch&iacute;nh gồm 22 x&atilde;, 2 thị trấn, c&oacute; 19 d&acirc;n tộc c&ugrave;ng sinh sống. To&agrave;n huyện c&oacute; 5 x&atilde; bi&ecirc;n giới, 44 cột mốc v&agrave; 31,252 km đường bi&ecirc;n giới tiếp gi&aacute;p với nước bạn Trung Quốc, c&oacute; cặp Cửa khẩu Quốc tế Thanh Thủy (H&agrave; Giang) - Thi&ecirc;n Bảo, V&acirc;n Nam (Trung Quốc). Khi nhắc đến địa danh Vị Xuy&ecirc;n, mọi người kh&ocirc;ng thể n&agrave;o qu&ecirc;n về lịch sử h&agrave;o h&ugrave;ng, nhưng cũng đầy bi thương của d&acirc;n tộc, nơi đ&acirc;y từng l&agrave; chảo lửa &aacute;c liệt nhất trong cuộc chiến tranh bảo vệ bi&ecirc;n giới ph&iacute;a Bắc của Tổ quốc. Để thu h&uacute;t du kh&aacute;ch đến tham quan, trải nghiệm, những năm gần đ&acirc;y, huyện ch&uacute; trọng quảng b&aacute; du lịch t&acirc;m linh, trong đ&oacute; tập trung đầu tư, tu bổ Nghĩa trang liệt sĩ Quốc gia Vị Xuy&ecirc;n v&agrave; Đền thờ c&aacute;c Anh h&ugrave;ng liệt sĩ mặt trận Vị Xuy&ecirc;n tại cao điểm 468, th&ocirc;n Nặm Ngặt, x&atilde; Thanh Thủy.</p>\r\n<p>Chị Vũ Thị Hiền, du kh&aacute;ch đến từ Th&agrave;nh phố H&agrave; Nội chia sẻ: &ldquo;T&ocirc;i đến H&agrave; Giang rất nhiều lần, nhưng chuyến đi n&agrave;y t&ocirc;i được kh&aacute;m ph&aacute; mảnh đất Vị Xuy&ecirc;n. Cảnh quan thi&ecirc;n nhi&ecirc;n v&ocirc; c&ugrave;ng tươi đẹp, người d&acirc;n chất ph&aacute;c, đ&ocirc;n hậu v&agrave; thật x&uacute;c động khi được thắp n&eacute;n t&acirc;m nhang tri &acirc;n những người l&iacute;nh đ&atilde; ng&atilde; xuống trong cuộc chiến bảo vệ Tổ quốc tại Nghĩa trang liệt sĩ Quốc gia Vị Xuy&ecirc;n&rdquo;.</p>\r\n<p>Huyện Vị Xuy&ecirc;n c&ograve;n nổi tiếng với &ldquo;Tam gi&aacute;c ch&ugrave;a thi&ecirc;ng&rdquo;, l&agrave; nơi lưu giữ 2 bảo vật Quốc gia gồm: Chu&ocirc;ng ch&ugrave;a B&igrave;nh L&acirc;m, x&atilde; Ph&uacute; Linh; Bia ch&ugrave;a S&ugrave;ng Kh&aacute;nh, x&atilde; Đạo Đức v&agrave; di t&iacute;ch khảo cổ Quốc gia Nậm Dầu, x&atilde; Ngọc Linh; nhiều l&agrave;ng văn h&oacute;a du lịch cộng đồng như: X&agrave; Ph&igrave;n, x&atilde; Phương Tiến; T&acirc;n Sơn, x&atilde; Minh T&acirc;n; L&ugrave;ng Tao, x&atilde; Cao Bồ... Ngo&agrave;i ra, c&ograve;n c&oacute; nhiều lợi thế để tổ chức c&aacute;c loại h&igrave;nh dịch vụ trải nghiệm đi k&egrave;m, như Tour Check in m&ugrave;a v&agrave;ng tr&ecirc;n những thửa ruộng bậc thang, kh&aacute;m ph&aacute; cảnh quan thi&ecirc;n nhi&ecirc;n c&aacute;c khu rừng nguy&ecirc;n sinh tại x&atilde; Thượng Sơn, Phương Tiến, Cao Bồ, Quảng Ngần... Kh&aacute;m ph&aacute; lễ hội truyền thống đặc sắc của c&aacute;c d&acirc;n tộc thiểu số tr&ecirc;n địa b&agrave;n, như Lễ hội Gầu t&agrave;o của người M&ocirc;ng th&ocirc;n Suối Đồng, thị trấn Việt L&acirc;m; Lễ hội nhảy lửa của người Dao đỏ, x&atilde; Thượng Sơn...</p>\r\n<p>&Ocirc;ng Lương Duy Doanh, Gi&aacute;m đốc C&ocirc;ng ty du lịch 5 sao (H&agrave; Nội) cho biết: &ldquo;Đơn vị đ&atilde; hợp t&aacute;c v&agrave; đưa kh&aacute;ch l&ecirc;n H&agrave; Giang từ nhiều năm nay, ch&uacute;ng t&ocirc;i đ&aacute;nh gi&aacute; huyện Vị Xuy&ecirc;n c&oacute; nhiều loại h&igrave;nh du lịch phong ph&uacute;. Thời gian tới, ch&uacute;ng t&ocirc;i sẽ đưa kh&aacute;ch l&ecirc;n điểm du lịch th&ocirc;n X&agrave; Ph&igrave;n, x&atilde; Phương Tiến, l&agrave; nơi cảnh quan thi&ecirc;n nhi&ecirc;n rất đẹp v&agrave; n&ecirc;n thơ&rdquo;.</p>\r\n<p>Thi&ecirc;n nhi&ecirc;n ưu đ&atilde;i c&ugrave;ng kh&iacute; hậu &ocirc;n h&ograve;a, m&aacute;t mẻ, huyện Vị Xuy&ecirc;n được ban tặng nhiều danh lam thắng cảnh kỳ vĩ, lung linh, huyền ảo được xếp hạng cấp Quốc gia như: Hang Đ&aacute;n Pi&oacute;ong, x&atilde; Bạch Ngọc; Tham Luồng, x&atilde; Minh T&acirc;n; đỉnh T&acirc;y C&ocirc;n Lĩnh, rừng đặc dụng Phong Quang. Sau khi tham quan, kh&aacute;m ph&aacute;, du kh&aacute;ch c&oacute; thể trải nghiệm tắm suối nước kho&aacute;ng n&oacute;ng tại Khu du lịch nghỉ dưỡng suối kho&aacute;ng Thanh H&agrave;, x&atilde; Quảng Ngần hay tham gia ch&egrave;o thuyền du ngoạn tr&ecirc;n l&ograve;ng hồ thủy điện s&ocirc;ng Miện, x&atilde; Thuận H&ograve;a, hoặc Hồ Noong, x&atilde; Ph&uacute; Linh... Sản phẩm n&ocirc;ng nghiệp cũng đa dạng, phong ph&uacute; như: Ch&egrave; Shan tuyết cổ thụ, Thảo quả v&agrave; cam S&agrave;nh... Đ&acirc;y cũng l&agrave; địa phương c&oacute; lợi thế nu&ocirc;i trồng c&aacute;c loại thủy sản nước lạnh như c&aacute; Bỗng, c&aacute; Hồi&hellip;</p>\r\n<p>Đồng ch&iacute; Ho&agrave;ng Thanh Tịnh, Chủ tịch UBND huyện Vị Xuy&ecirc;n cho biết: &ldquo;Để ph&aacute;t triển du lịch theo lộ tr&igrave;nh, kế hoạch đề ra, huyện tổ chức nhiều hội nghị, hội thảo để b&agrave;n bạc, đ&aacute;nh gi&aacute; hiện trạng, tiềm năng, lợi thế của du lịch huyện nh&agrave;. Từ đ&oacute; lựa chọn c&aacute;c loại h&igrave;nh dịch vụ du lịch ph&ugrave; hợp để k&ecirc;u gọi đầu tư, li&ecirc;n kết hợp t&aacute;c từ c&aacute;c doanh nghiệp, tổ chức, c&aacute; nh&acirc;n x&acirc;y dựng tour tuyến, đưa du kh&aacute;ch đến tham quan, trải nghiệm. C&ugrave;ng với đ&oacute;, tiếp tục đầu tư cơ sở hạ tầng giao th&ocirc;ng, tuy&ecirc;n truyền v&agrave; hỗ trợ người d&acirc;n duy tr&igrave;, ph&aacute;t huy bản sắc văn h&oacute;a c&aacute;c d&acirc;n tộc thiểu số, giữ g&igrave;n v&agrave; bảo vệ cảnh quan thi&ecirc;n nhi&ecirc;n nguy&ecirc;n sơ. Phối hợp tổ chức lớp tập huấn, hướng dẫn nghiệp vụ l&agrave;m du lịch, đảm bảo nguồn nh&acirc;n sự c&oacute; chuy&ecirc;n m&ocirc;n để ph&aacute;t triển du lịch chuy&ecirc;n nghiệp, bền vững trong giai đoạn tới&rdquo;.</p>\r\n<p>Tin tưởng rằng, với sự quan t&acirc;m, v&agrave;o cuộc quyết liệt của c&aacute;c cấp, c&aacute;c ng&agrave;nh v&agrave; của huyện; sự hưởng ứng, chủ động từ ph&iacute;a nh&acirc;n d&acirc;n c&ugrave;ng sự thiện ch&iacute;, hợp t&aacute;c phối hợp từ c&aacute;c doanh nghiệp, tổ chức, c&aacute; nh&acirc;n, du lịch Vị Xuy&ecirc;n thời gian tới sẽ ph&aacute;t triển v&agrave; đạt được kết quả xứng đ&aacute;ng với tiềm năng, lợi thế sẵn c&oacute;, l&agrave; điểm đến đầy hấp dẫn v&agrave; thu h&uacute;t đối với mọi du kh&aacute;ch.</p>', NULL, 'huong-dan-du-lich-den-xa-phu-linh', 'Xã Phú Linh là một xã thuộc quận/huyện Huyện Vị Xuyên tại Tỉnh Hà Giang. Nằm ở vùng Đông Bắc Bộ của nước ta.', 'Xã Phú Linh là một xã thuộc quận/huyện Huyện Vị Xuyên tại Tỉnh Hà Giang. Nằm ở vùng Đông Bắc Bộ của nước ta.', 'ACTIVE', '2023-09-15 01:40:11', '2023-09-15 01:40:11'),
(8, 1, 'Nên đi Phú Linh vào thời gian nào', 'Mẹ thiên nhiên thực sự ưu đãi Phú Linh, dù chỉ nhỏ nhỏ xinh xinh thôi, nhưng những tiểu vùng thời tiết chênh nhau vài độ, cũng tạo ra những cảnh quan bốn mùa khác biệt, khiến người ta phải tò mò muốn khám phá từng ngóc ngách của Phú Linh.', '<h2>M&Ugrave;A XU&Acirc;N Ở Ph&uacute; Linh:</h2>\r\n<p>M&ugrave;a của những lễ hội vui nhộn, rực rỡ sắc m&agrave;u v&agrave; đậm bản sắc của c&aacute;c d&acirc;n tộc đang sinh sống tại Bắc H&agrave;: lễ hội Say s&aacute;n của người H&rsquo;M&ocirc;ng, nhảy lửa của người Dao, m&uacute;a x&ograve;e v&agrave; xuống đồng của người T&agrave;y&hellip;. M&ugrave;a xu&acirc;n ở Ph&uacute; Linh c&ograve;n l&agrave; những m&ugrave;a hoa nối tiếp m&ugrave;a hoa. Hiếm c&oacute; nơi n&agrave;o ở v&ugrave;ng miền n&uacute;i ph&iacute;a Bắc lại c&oacute; đến tận 2 m&ugrave;a hoa mận như Ph&uacute; Linh:</p>\r\n<ul class=\"custom_ul_arrow\">\r\n<li><strong>Th&aacute;ng 1:</strong> Hoa anh đ&agrave;o, c&oacute; nhiều ở khu vực hồ Na Cồ v&agrave; xung quanh Ph&uacute; Linh.</li>\r\n<li><strong>Đầu th&aacute;ng 2:</strong> Hoa mận Tam hoa với nhiều vườn mận đẹp.</li>\r\n<li><strong>Cuối th&aacute;ng 2 tới giữa th&aacute;ng 3:</strong>&nbsp;Hoa mận Tả van v&agrave; hoa l&ecirc; trắng bung lụa tr&ecirc;n c&aacute;c cung L&ugrave;ng Ph&igrave;nh &ndash; Tả Van Chư &ndash; L&ugrave;ng Cải &ndash; Simacai.</li>\r\n<li><strong>Th&aacute;ng 4:</strong> Kh&iacute; hậu l&agrave; một lợi thế ở Ph&uacute; Linh, khi m&agrave; nơi kh&aacute;c đ&atilde; bắt đầu bước sang thời tiết n&oacute;ng ẩm th&igrave; ở Ph&uacute; Linh, hoa cải v&agrave;ng cực thơm v&agrave; hoa Tam gi&aacute;c mạch lại khoe sắc tr&ecirc;n những ngọn đồi nhỏ.</li>\r\n</ul>', NULL, 'nen-di-phu-linh-vao-thoi-gian-nao', 'Mẹ thiên nhiên thực sự ưu đãi Phú Linh, dù chỉ nhỏ nhỏ xinh xinh thôi, nhưng những tiểu vùng thời tiết chênh nhau vài độ, cũng tạo ra những cảnh quan bốn mùa khác biệt, khiến người ta phải tò mò muốn khám phá từng ngóc ngách của Phú Linh.', 'Mẹ thiên nhiên thực sự ưu đãi Phú Linh, dù chỉ nhỏ nhỏ xinh xinh thôi, nhưng những tiểu vùng thời tiết chênh nhau vài độ, cũng tạo ra những cảnh quan bốn mùa khác biệt, khiến người ta phải tò mò muốn khám phá từng ngóc ngách của Phú Linh.', 'ACTIVE', '2023-09-15 01:43:06', '2023-09-15 01:43:06');

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
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(61, 'browse_banners', 'banners', '2023-07-04 01:33:38', '2023-07-04 01:33:38'),
(62, 'read_banners', 'banners', '2023-07-04 01:33:38', '2023-07-04 01:33:38'),
(63, 'edit_banners', 'banners', '2023-07-04 01:33:38', '2023-07-04 01:33:38'),
(64, 'add_banners', 'banners', '2023-07-04 01:33:38', '2023-07-04 01:33:38'),
(65, 'delete_banners', 'banners', '2023-07-04 01:33:38', '2023-07-04 01:33:38'),
(71, 'browse_contacts', 'contacts', '2023-07-04 20:52:21', '2023-07-04 20:52:21'),
(72, 'read_contacts', 'contacts', '2023-07-04 20:52:21', '2023-07-04 20:52:21'),
(73, 'edit_contacts', 'contacts', '2023-07-04 20:52:21', '2023-07-04 20:52:21'),
(74, 'add_contacts', 'contacts', '2023-07-04 20:52:21', '2023-07-04 20:52:21'),
(75, 'delete_contacts', 'contacts', '2023-07-04 20:52:21', '2023-07-04 20:52:21'),
(76, 'browse_locations', 'locations', '2023-09-13 21:05:57', '2023-09-13 21:05:57'),
(77, 'read_locations', 'locations', '2023-09-13 21:05:57', '2023-09-13 21:05:57'),
(78, 'edit_locations', 'locations', '2023-09-13 21:05:57', '2023-09-13 21:05:57'),
(79, 'add_locations', 'locations', '2023-09-13 21:05:57', '2023-09-13 21:05:57'),
(80, 'delete_locations', 'locations', '2023-09-13 21:05:57', '2023-09-13 21:05:57'),
(81, 'browse_collections', 'collections', '2023-09-13 21:09:51', '2023-09-13 21:09:51'),
(82, 'read_collections', 'collections', '2023-09-13 21:09:51', '2023-09-13 21:09:51'),
(83, 'edit_collections', 'collections', '2023-09-13 21:09:51', '2023-09-13 21:09:51'),
(84, 'add_collections', 'collections', '2023-09-13 21:09:51', '2023-09-13 21:09:51'),
(85, 'delete_collections', 'collections', '2023-09-13 21:09:51', '2023-09-13 21:09:51'),
(86, 'browse_events', 'events', '2023-09-14 01:19:02', '2023-09-14 01:19:02'),
(87, 'read_events', 'events', '2023-09-14 01:19:02', '2023-09-14 01:19:02'),
(88, 'edit_events', 'events', '2023-09-14 01:19:02', '2023-09-14 01:19:02'),
(89, 'add_events', 'events', '2023-09-14 01:19:02', '2023-09-14 01:19:02'),
(90, 'delete_events', 'events', '2023-09-14 01:19:02', '2023-09-14 01:19:02');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
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
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(8, 1, 1, 'Hà Giang: Đánh thức tiềm năng du lịch cộng đồng ở huyện Vị Xuyên', NULL, 'Việc phát triển các Làng Văn hóa du lịch cộng đồng (LVHDLCĐ) tại huyện Vị Xuyên, tỉnh Hà Giang được đánh giá là phát triển kinh tế bền vững, góp phần bảo tồn và phát huy những nét văn hóa độc đáo của địa phương. Mỗi LVHDLCĐ đều mang những nét đẹp văn hóa truyền thống đặc trưng riêng, tạo điểm nhấn ấn tượng trong lòng du khách.', '<div class=\"font-weight-bold summary\">Việc ph&aacute;t triển c&aacute;c L&agrave;ng Văn h&oacute;a du lịch cộng đồng (LVHDLCĐ) tại huyện Vị Xuy&ecirc;n, tỉnh H&agrave; Giang được đ&aacute;nh gi&aacute; l&agrave; ph&aacute;t triển kinh tế bền vững, g&oacute;p phần bảo tồn v&agrave; ph&aacute;t huy những n&eacute;t văn h&oacute;a độc đ&aacute;o của địa phương. Mỗi LVHDLCĐ đều mang những n&eacute;t đẹp văn h&oacute;a truyền thống đặc trưng ri&ecirc;ng, tạo điểm nhấn ấn tượng trong l&ograve;ng du kh&aacute;ch.</div>\r\n<div class=\"content\">\r\n<p>&nbsp; &nbsp;Với lợi thế l&agrave; v&ugrave;ng đất c&oacute; truyền thống lịch sử, được nhiều du kh&aacute;ch biết đến, huyện c&oacute; 3 di t&iacute;ch Quốc gia đ&oacute; l&agrave;: Ch&ugrave;a S&ugrave;ng Kh&aacute;nh (x&atilde; Đạo Đức), ch&ugrave;a Nậm Dầu (x&atilde; Ngọc Linh), ch&ugrave;a B&igrave;nh L&acirc;m (x&atilde; Ph&uacute; Linh). Ngo&agrave;i ra thi&ecirc;n nhi&ecirc;n đ&atilde; ưu đ&atilde;i ban tặng cho v&ugrave;ng đất n&agrave;y cảnh đẹp tự nhi&ecirc;n thực sự đặc sắc, h&ugrave;ng vĩ v&agrave; n&ecirc;n thơ như hang Đ&aacute;n Pio&oacute;ng hay c&ograve;n gọi l&agrave; hang N&uacute;i Thủng ở x&atilde; Bạch Ngọc được đ&aacute;nh gi&aacute; một trong những hang động c&oacute; kiến tr&uacute;c độc đ&aacute;o đ&atilde; được c&ocirc;ng nhận l&agrave; danh lam thắng cảnh cấp Quốc gia&hellip; Những năm gần đ&acirc;y, một hướng đi mới được huyện ưu ti&ecirc;n đ&oacute; l&agrave; việc x&acirc;y dựng v&agrave; ph&aacute;t triển c&aacute;c L&agrave;ng văn h&oacute;a du lịch gắn với chương tr&igrave;nh x&acirc;y dựng N&ocirc;ng th&ocirc;n mới. Hiện, Vị Xuy&ecirc;n&nbsp; c&oacute; 4 L&agrave;ng văn h&oacute;a du lịch cộng đồng bao gồm: Thanh Sơn (x&atilde; Thanh Thủy), L&ugrave;ng Tao (x&atilde; Cao Bồ), Khuổi L&aacute;c (x&atilde; Trung Th&agrave;nh), Bản Bang (x&atilde; Đạo Đức) đang hoạt động c&oacute; hiệu quả.</p>\r\n<p>&nbsp; &nbsp; C&aacute;ch Th&agrave;nh phố H&agrave; Giang 12 km c&aacute;ch thị trấn Vị Xuy&ecirc;n (Trung t&acirc;m huyện) 9 km. Th&ocirc;n Bản Bang, x&atilde; Đạo Đức l&agrave; một trong 4 LVHDLCĐ của huyện Vị Xuy&ecirc;n. Th&ocirc;n Bản Bang x&atilde; Đạo Đức được h&igrave;nh th&agrave;nh đến nay khoảng 150 năm. Qua bao biến cố đổi thay, người Dao th&ocirc;n Bản Bang đ&atilde; khẳng định được việc chọn đất lập l&agrave;ng cư ngụ của người xưa ở đất n&agrave;y l&agrave; hồng ph&uacute;c được thể hiện ở ch&iacute;nh cuộc sống kh&ocirc;ng ngừng vươn l&ecirc;n, kinh tế ph&aacute;t triển, văn ho&aacute; x&atilde; hội được bảo tồn v&agrave; ph&aacute;t huy của cộng đồng. Người Dao ở đ&acirc;y c&oacute; nhiều Lễ hội t&iacute;n ngưỡng độc đ&aacute;o như: Lễ Cầu m&ugrave;a, Lễ Cấp sắc, Lễ Cắm c&ocirc;... c&ugrave;ng với nhiều tập qu&aacute;n phong ph&uacute; trong đ&aacute;m hiếu, đ&aacute;m hỷ; những l&agrave;n điệu Cọi s&acirc;u lắng. Tại đ&acirc;y, du kh&aacute;ch sẽ được thưởng thức những lời ca, điệu m&uacute;a d&acirc;n gian do đội văn nghệ của th&ocirc;n biểu diễn, c&ugrave;ng tham gia c&aacute;c tr&ograve; chơi truyền thống như: Đẩy gậy, đi c&agrave; kheo; tham quan c&aacute;c nghề truyền thống như: Dệt thổ cẩm, đan l&aacute;t, chạm bạc... Du kh&aacute;ch cũng c&oacute; thể mua sắm cho m&igrave;nh những sản phẩm lưu niệm thủ c&ocirc;ng như t&uacute;i x&aacute;ch, v&iacute; thổ cẩm, quần &aacute;o d&acirc;n tộc...&nbsp; do ch&iacute;nh b&agrave;n tay kh&eacute;o l&eacute;o của những người phụ nữ Dao Bản Bang l&agrave;m ra. B&ecirc;n cạnh đ&oacute;, du kh&aacute;ch c&ograve;n được thưởng thức những m&oacute;n ẩm thực đặc trưng của đồng b&agrave;o nơi đ&acirc;y như: X&ocirc;i ngũ sắc, măng cuốn, c&aacute; Bỗng nấu măng chua, thịt chua, thịt g&agrave; đồi... Những m&oacute;n ăn độc đ&aacute;o với m&ugrave;i thơm đặc trưng của c&aacute;c loại gia vị như: L&aacute; m&aacute;c mật, hạt dổi, thảo quả, gừng... h&ograve;a quện trong khung cảnh thanh b&igrave;nh, d&acirc;n d&atilde; của miền sơn cước chắc chắn sẽ để lại ấn tượng kh&oacute; phai trong l&ograve;ng du kh&aacute;ch.</p>\r\n<p><em>Th&ocirc;n Bản Bang điểm đến của&nbsp;du lịch cộng đồng.</em></p>\r\n<p>&nbsp; &nbsp; &ldquo;X&acirc;y dựng l&agrave;ng Văn ho&aacute;- du sẽ tạo bước đột ph&aacute;, l&agrave;m chuyển biến nhận thức của cộng đồng, huy động nhiều nguồn lực th&uacute;c đẩy kinh tế h&agrave;ng h&oacute;a ph&aacute;t triển, khai th&aacute;c c&aacute;c tiềm năng lợi thế để giảm ngh&egrave;o bền vững. N&acirc;ng cao d&acirc;n tr&iacute;, tăng cường giao lưu hiểu biết về văn h&oacute;a, x&atilde; hội giữa c&aacute;c d&acirc;n tộc trong nước v&agrave; Quốc tế; ph&aacute;t huy v&agrave; giữ g&igrave;n những gi&aacute; trị văn ho&aacute; truyền thống của địa phương để x&acirc;y dựng qu&ecirc; hương Vị Xuy&ecirc;n gi&agrave;u đẹp, văn minh&rdquo; &ndash; &Ocirc;ng Nguyễn Hữu Việt, Ph&oacute; ph&ograve;ng Văn h&oacute;a v&agrave; Th&ocirc;ng tin huyện Vị Xuy&ecirc;n cho biết.&ldquo;C&ugrave;ng với một số huyện miền n&uacute;i trong tỉnh, tiềm năng du lịch cộng đồng của huyện Vị Xuy&ecirc;n đ&atilde; v&agrave; đang được đ&aacute;nh thức, tuyến du lịch cộng đồng Bản Bang, Thanh Sơn&hellip;đang thu h&uacute;t một lượng lớn du kh&aacute;ch trong, ngo&agrave;i tỉnh v&agrave; c&aacute;c nh&agrave; đầu tư đến với huyện. Tuy nhi&ecirc;n, do mới x&acirc;y dựng n&ecirc;n nhiều hạng mục cần được quan t&acirc;m đầu tư để phục vụ du kh&aacute;ch tốt hơn, v&igrave; vậy, ch&uacute;ng t&ocirc;i mong nhận được nhiều hơn nữa sự quan t&acirc;m của tỉnh, c&aacute;c ban, ng&agrave;nh, doanh nghiệp lữ h&agrave;nh trong v&agrave; ngo&agrave;i tỉnh. Ph&aacute;t triển du lịch cộng đồng kh&ocirc;ng chỉ mang lại lợi &iacute;ch về kinh tế - x&atilde; hội m&agrave; c&ograve;n g&oacute;p phần v&agrave;o c&ocirc;ng t&aacute;c bảo tồn văn h&oacute;a truyền thống bản địa, giữ g&igrave;n cảnh quan tự nhi&ecirc;n của v&ugrave;ng...&rdquo;, &ocirc;ng Việt cho biết th&ecirc;m.</p>\r\n<p>&nbsp; &nbsp; Th&ecirc;m một tuyến du lịch cộng đồng mới ra đời, th&ecirc;m cơ hội cải thiện sinh kế cho đồng b&agrave;o, gi&uacute;p giữ g&igrave;n v&agrave; ph&aacute;t huy gi&aacute; trị văn h&oacute;a cộng đồng c&aacute;c d&acirc;n tộc. Tuy nhi&ecirc;n, để du lịch cộng đồng ở Vị Xuy&ecirc;n ph&aacute;t triển bền vững, kết nối c&aacute;c tuyến, điểm du lịch trong tỉnh, c&aacute;c gi&aacute; trị văn h&oacute;a, tạo ra chuỗi sản phẩm du lịch c&oacute; gi&aacute; trị cao, kh&ocirc;ng chỉ c&oacute; sự đ&oacute;ng g&oacute;p của cộng đồng m&agrave; đ&ograve;i hỏi phải c&oacute; sự v&agrave;o cuộc quyết liệt hơn nữa của c&aacute;c cấp ch&iacute;nh quyền, nhất l&agrave; những người l&agrave;m du lịch.</p>\r\n</div>', 'posts/September2023/yYVYrSMN88c7BAJ46B1l.jpg', 'ha-giang-danh-thuc-tiem-nang-du-lich-cong-dong-o-huyen-vi-xuyen', 'Việc phát triển các Làng Văn hóa du lịch cộng đồng (LVHDLCĐ) tại huyện Vị Xuyên, tỉnh Hà Giang được đánh giá là phát triển kinh tế bền vững, góp phần bảo tồn và phát huy những nét văn hóa độc đáo của địa phương. Mỗi LVHDLCĐ đều mang những nét đẹp văn hóa truyền thống đặc trưng riêng, tạo điểm nhấn ấn tượng trong lòng du khách.', 'Việc phát triển các Làng Văn hóa du lịch cộng đồng (LVHDLCĐ) tại huyện Vị Xuyên, tỉnh Hà Giang được đánh giá là phát triển kinh tế bền vững, góp phần bảo tồn và phát huy những nét văn hóa độc đáo của địa phương. Mỗi LVHDLCĐ đều mang những nét đẹp văn hóa truyền thống đặc trưng riêng, tạo điểm nhấn ấn tượng trong lòng du khách.', 'PUBLISHED', 1, '2023-09-14 00:04:43', '2023-09-23 03:10:15'),
(9, 1, 1, 'Phát triển du lịch sinh thái gắn với nông nghiệp tỉnh Hà Giang', NULL, 'Du lịch sinh thái gắn với nông nghiệp là một trong những sản phẩm du lịch đặc trưng tỉnh Hà Giang đang thực hiện trong “Chiến lược phát triển sản phẩm du lịch tỉnh Hà Giang giai đoạn 2021-2025, tầm nhìn 2030” nhằm đưa đến cho du khách những trải nghiệm,', '<p>Theo b&aacute;o H&agrave; Giang, x&atilde; Cao Bồ, huyện Vị Xuy&ecirc;n c&oacute; gần 1.000 ha ch&egrave; Shan tuyết cổ thụ h&agrave;ng trăm tuổi, sinh sống tr&ecirc;n c&aacute;c đỉnh n&uacute;i cao. Đ&acirc;y l&agrave; v&ugrave;ng ch&egrave; nổi tiếng thơm ngon. Những năm qua, người d&acirc;n Cao Bồ đặc biệt quan t&acirc;m, chăm s&oacute;c c&acirc;y ch&egrave; để n&acirc;ng cao chất lượng, gi&aacute; trị.</p>\r\n<p>Ch&egrave; Shan tuyết cổ thụ Cao Bồ được Li&ecirc;n đo&agrave;n quốc tế về phong tr&agrave;o sản xuất n&ocirc;ng nghiệp hữu cơ (IFOAM) cấp chứng chỉ ch&egrave; hữu cơ &ndash; Organic Cao Bồ, đủ ti&ecirc;u chuẩn xuất khẩu sang nhiều nước tr&ecirc;n thế giới. Năm 2015, quần thể ch&egrave; Shan tuyết cổ thụ c&oacute; tuổi đời từ 100 &ndash; 300 năm ở x&atilde; Cao Bồ được Hội Bảo vệ Thi&ecirc;n nhi&ecirc;n v&agrave; M&ocirc;i trường Việt Nam c&ocirc;ng nhận l&agrave; C&acirc;y Di sản Việt Nam.</p>\r\n<p>Rất nhiều du kh&aacute;ch, đặc biệt l&agrave; du kh&aacute;ch nước ngo&agrave;i đ&atilde; đến Cao Bồ kh&aacute;m ph&aacute;, t&igrave;m hiểu về C&acirc;y Di sản Việt Nam. Từ đ&acirc;y, c&acirc;y ch&egrave; Shan tuyết cổ thụ mở ra hướng đi mới trong ph&aacute;t triển sản phẩm du lịch sinh th&aacute;i gắn với n&ocirc;ng nghiệpDu lịch n&ocirc;ng nghiệp l&agrave; dịch vụ du lịch được tổ chức dựa tr&ecirc;n nền tảng của hoạt động sản xuất n&ocirc;ng nghiệp để phục vụ du kh&aacute;ch. Thực tế cho thấy, du lịch n&ocirc;ng nghiệp mang lại lợi &iacute;ch k&eacute;p, vừa mang đến nhiều trải nghiệm mới lạ cho du kh&aacute;ch, vừa tạo việc l&agrave;m, đa dạng h&oacute;a c&aacute;c hoạt động thương mại, giải quyết vấn đề đầu ra cho n&ocirc;ng sản, vừa gia tăng thu nhập cho n&ocirc;ng d&acirc;n.</p>\r\n<figure id=\"attachment_347409\">\r\n<figcaption id=\"caption-attachment-347409\"></figcaption>\r\n</figure>\r\n<p>Đồng thời, du lịch n&ocirc;ng nghiệp c&ograve;n gắn liền với chương tr&igrave;nh mục ti&ecirc;u quốc gia x&acirc;y dựng n&ocirc;ng th&ocirc;n mới, chương tr&igrave;nh OCOP. Th&ocirc;ng qua du lịch để quảng b&aacute; đời sống n&ocirc;ng th&ocirc;n, n&acirc;ng cao &yacute; thức bảo tồn v&agrave; ph&aacute;t huy gi&aacute; trị văn h&oacute;a, di sản, l&agrave;ng nghề truyền thống, ph&aacute;t triển du lịch cộng đồng, hỗ trợ đưa sản phẩm OCOP v&agrave;o ti&ecirc;u d&ugrave;ng du lịch.</p>\r\n<p>H&agrave; Giang c&oacute; nhiều tiểu v&ugrave;ng kh&iacute; hậu kh&aacute;c nhau, ph&ugrave; hợp ph&aacute;t triển nhiều loại n&ocirc;ng sản đặc trưng, c&oacute; thể phục vụ ph&aacute;t triển du lịch, ti&ecirc;u biểu như cam s&agrave;nh, ch&egrave; Shan tuyết, mật ong bạc h&agrave;, hồng kh&ocirc;ng hạt, hoa tam gi&aacute;c mạch, đ&agrave;o, l&ecirc;, mận&hellip; Hiện nay, tỉnh đang thực hiện kh&acirc;u đột ph&aacute; về ph&aacute;t triển n&ocirc;ng nghiệp đặc trưng h&agrave;ng h&oacute;a theo chuỗi gi&aacute; trị v&agrave; Chương tr&igrave;nh OCOP, tạo ra nhiều v&ugrave;ng sản xuất chuy&ecirc;n canh, nhiều sản phẩm n&ocirc;ng nghiệp chất lượng.</p>\r\n<p>Th&ocirc;ng tin từ Cục du lịch Quốc gia Việt Nam, H&agrave; Giang cũng đ&atilde; đăng k&yacute; bảo hộ th&agrave;nh c&ocirc;ng 7 sản phẩm n&ocirc;ng nghiệp đặc sản, c&oacute; hơn 190 sản phẩm OCOP cấp tỉnh.</p>\r\n<figure id=\"attachment_348320\"></figure>\r\n<p>Một số địa phương c&oacute; thể đề xuất x&acirc;y dựng sản phẩm du lịch sinh th&aacute;i gắn với n&ocirc;ng nghiệp như huyện Bắc Quang x&acirc;y dựng vườn cam S&agrave;nh VietGAP th&agrave;nh điểm du lịch sinh th&aacute;i; Vị Xuy&ecirc;n c&oacute; chương tr&igrave;nh tham quan đồi ch&egrave; Shan tuyết cổ thụ; Ho&agrave;ng Su Ph&igrave; với sản phẩm bắt c&aacute; Ch&eacute;p, cấy, gặt l&uacute;a tr&ecirc;n ruộng bậc thang v&agrave;ng &oacute;ng, thu h&aacute;i mận M&aacute;u; X&iacute;n Mần x&acirc;y dựng thảo nguy&ecirc;n Su&ocirc;i Thầu th&agrave;nh điểm du lịch n&ocirc;ng nghiệp; Quản Bạ ph&aacute;t triển dược liệu gắn với tham quan, trải nghiệm m&ocirc; h&igrave;nh trồng, chăm s&oacute;c, thu h&aacute;i, chế biến, nghỉ dưỡng; c&aacute;c huyện tr&ecirc;n C&ocirc;ng vi&ecirc;n Địa chất to&agrave;n cầu UNESCO Cao nguy&ecirc;n đ&aacute; Đồng Văn trồng hoa Tam gi&aacute;c mạch, c&acirc;y ăn quả, trải nghiệm quy tr&igrave;nh sản xuất mật ong Bạc h&agrave;&hellip;</p>\r\n<figure id=\"attachment_347413\"></figure>\r\n<p>Để ph&aacute;t triển sản phẩm du lịch sinh th&aacute;i gắn với n&ocirc;ng nghiệp, c&aacute;c địa phương cần x&acirc;y dựng m&ocirc; h&igrave;nh n&ocirc;ng nghiệp hữu cơ, đầu tư hạ tầng, cơ sở dịch vụ tham quan, trải nghiệm, ăn, nghỉ. Tại c&aacute;c v&ugrave;ng trồng c&acirc;y ăn quả, hoa, c&acirc;y cảnh quan phải tạo được điểm nhấn cảnh quan, đảm bảo t&iacute;nh bền vững.</p>\r\n<p>Việc x&acirc;y dựng c&aacute;c sản phẩm du lịch đặc trưng, c&oacute; t&iacute;nh cạnh tranh cao, trong đ&oacute; c&oacute; sản phẩm du lịch sinh th&aacute;i gắn với n&ocirc;ng nghiệp g&oacute;p phần quan trọng ho&agrave;n th&agrave;nh mục ti&ecirc;u đến năm 2025, du lịch trở th&agrave;nh ng&agrave;nh kinh tế trọng điểm của tỉnh, thu h&uacute;t 3 triệu lượt kh&aacute;ch; tổng thu từ du lịch ước đạt 7.800 tỉ đồng; tạo ra tr&ecirc;n 28 ngh&igrave;n việc l&agrave;m, n&acirc;ng cao thu nhập cho người d&acirc;n, giảm ngh&egrave;o bền vững.</p>', 'posts/September2023/AA7hULXjScCJIzBj7ysd.jpg', 'phat-trien-du-lich-sinh-thai-gan-voi-nong-nghiep-tinh-ha-giang', 'Du lịch sinh thái gắn với nông nghiệp là một trong những sản phẩm du lịch đặc trưng tỉnh Hà Giang đang thực hiện trong “Chiến lược phát triển sản phẩm du lịch tỉnh Hà Giang giai đoạn 2021-2025, tầm nhìn 2030” nhằm đưa đến cho du khách những trải nghiệm,', 'Du lịch sinh thái gắn với nông nghiệp là một trong những sản phẩm du lịch đặc trưng tỉnh Hà Giang đang thực hiện trong “Chiến lược phát triển sản phẩm du lịch tỉnh Hà Giang giai đoạn 2021-2025, tầm nhìn 2030” nhằm đưa đến cho du khách những trải nghiệm,', 'PUBLISHED', 0, '2023-09-14 00:06:25', '2023-09-14 00:06:25'),
(10, 1, 1, 'Tiếp tục rà phá bom, mìn, vật nổ ở Hà Giang', NULL, 'Từ ngày 1/3/2023, chính quyền địa phương triển khai dự án rà phá bom mìn, vật liệu nổ giai đoạn 2 phục vụ công tác tìm kiếm, quy tập hài cốt các liệt sĩ hy sinh trong cuộc chiến tranh bảo vệ Tổ quốc trên địa bàn tỉnh Hà Giang.', '<p><span>H&Agrave; GIANG &ndash; H&agrave;ng trăm c&aacute;n bộ, chiến sĩ tỉnh H&agrave; Giang chống chọi với thời tiết khắc nghiệt, địa h&igrave;nh đồi n&uacute;i để r&agrave; ph&aacute; bom m&igrave;n chưa nổ v&agrave; t&igrave;m kiếm h&agrave;i cốt liệt sĩ.</span></p>\r\n<p><span>Theo Sở LĐTBXH tỉnh, t&iacute;nh đến năm 2020, tr&ecirc;n địa b&agrave;n c&oacute; 214 người bị ảnh hưởng do bom, m&igrave;n, vật nổ chưa nổ.</span></p>\r\n<p><span>Th&ocirc;n Nậm Ngặt ở huyện Vị Xuy&ecirc;n l&agrave; nơi sinh sống của h&agrave;ng chục người bị thương do bom m&igrave;n c&ograve;n s&oacute;t lại sau chiến tranh khi đi rừng hoặc l&agrave;m đồng.</span></p>\r\n<p><span>Nhiều nạn nh&acirc;n bị mất ch&acirc;n, tay, mắt hoặc bị thương do mảnh đạn.&nbsp;Một số đ&atilde; bị thương trong nhiều trường hợp ri&ecirc;ng biệt.&nbsp;</span></p>\r\n<p><span>&Ocirc;ng Bồn Văn H&ograve;n, th&ocirc;n Nậm Ngặt, bị cụt cả hai ch&acirc;n khi giẫm phải m&igrave;n khi l&agrave;m đồng.</span></p>\r\n<p><span>Anh từ chỗ l&agrave; trụ cột gia đ&igrave;nh trở th&agrave;nh người kh&ocirc;ng thể l&agrave;m việc v&agrave; cần sự hỗ trợ thường xuy&ecirc;n từ gia đ&igrave;nh.&nbsp;</span></p>\r\n<p><span>D&ugrave; đ&atilde; cố gắng l&agrave;m quen với đ&ocirc;i ch&acirc;n giả nhưng H&ograve;n chỉ c&oacute; thể gi&uacute;p đỡ gia đ&igrave;nh những c&ocirc;ng việc đơn giản như nấu ăn hoặc chăm s&oacute;c gia s&uacute;c, gia cầm.</span></p>\r\n<p><span>&ldquo;T&ocirc;i mong Đảng v&agrave; Nh&agrave; nước tiếp tục hỗ trợ ch&uacute;ng t&ocirc;i.&nbsp;Bởi khu vực ch&uacute;ng t&ocirc;i ở vẫn c&ograve;n nhiều người bị ảnh hưởng bởi bom m&igrave;n, c&oacute; người bị mất mắt, c&oacute; người bị cụt tay, c&oacute; người bị mảnh đạn găm v&agrave;o người kh&ocirc;ng thể lấy ra được&rdquo;, &ocirc;ng n&oacute;i.</span></p>\r\n<p><span>Từ ng&agrave;y 1/3/2023, ch&iacute;nh quyền địa phương triển khai giai đoạn 2 dự &aacute;n r&agrave; ph&aacute; bom m&igrave;n, vật liệu nổ v&agrave; t&igrave;m kiếm h&agrave;i cốt liệt sĩ hy sinh trong chiến tranh tr&ecirc;n địa b&agrave;n tỉnh H&agrave; Giang.</span></p>\r\n<p><span>Dự &aacute;n do Bộ Tư lệnh Qu&acirc;n khu 2 v&agrave; ch&iacute;nh quyền tỉnh H&agrave; Giang quản l&yacute;.</span></p>\r\n<p><span>8 đơn vị với sự tham gia của 500 c&aacute;n bộ, chiến sĩ đ&atilde; giải ph&oacute;ng 1.500 ha đất tại x&atilde; Minh T&acirc;n, huyện Vị Xuy&ecirc;n v&agrave; 2 x&atilde; Tả V&aacute;n, Nghĩa Thuận thuộc huyện Quản Bạ.</span></p>\r\n<p><span>Sau hơn 4 th&aacute;ng, 400 ha đất đ&atilde; được giải ph&oacute;ng mặt bằng.&nbsp;H&agrave;ng chục ngh&igrave;n quả bom, vật liệu nổ c&aacute;c loại đ&atilde; được ph&aacute;t hiện, thu gom an to&agrave;n, nhiều loại vẫn c&ograve;n khả năng ph&aacute;t nổ.&nbsp;Dự kiến ​​dự &aacute;n sẽ ho&agrave;n th&agrave;nh v&agrave;o giữa năm 2026.</span></p>\r\n<p><span>Trung t&aacute; Nguyễn Th&agrave;nh Nam, Chỉ huy trưởng C&ocirc;ng trường 319 C&ocirc;ng ty TNHH MTV Bom m&igrave;n Vật nổ 319 cho biết, đơn vị đ&atilde; huy động 200 lao động để thực hiện nhiệm vụ.</span></p>\r\n<p><span>Họ gặp rất nhiều kh&oacute; khăn do diện t&iacute;ch rộng lớn, địa h&igrave;nh hiểm trở, nhiều n&uacute;i cao v&agrave; rừng rậm.&nbsp;&Ocirc;ng cho biết điều kiện thời tiết khắc nghiệt với nhiều mưa v&agrave; sương m&ugrave; cũng g&acirc;y rủi ro cho binh l&iacute;nh.</span></p>\r\n<p><span>&Ocirc;ng cho biết, tất cả đều đ&atilde; vượt qua kh&oacute; khăn để đảm bảo an to&agrave;n khi ph&aacute;t hiện, xử l&yacute;, thu gom bom, m&igrave;n, vật nổ rồi di chuyển đến địa điểm an to&agrave;n, tập kết h&agrave;i cốt liệt sĩ v&agrave; c&aacute;c nhiệm vụ kh&aacute;c.</span></p>\r\n<p><span>Theo &ocirc;ng Nam, sau hơn 4 th&aacute;ng, c&ocirc;ng ty đ&atilde; thu gom được tr&ecirc;n 3.300 quả bom, đạn, vật liệu nổ c&aacute;c loại.&nbsp;Phổ biến nhất l&agrave; đạn ph&aacute;o 105 mm;&nbsp;đạn cối c&oacute; k&iacute;ch thước 60mm, 80mm, 100mm, 120mm;&nbsp;lựu đạn c&aacute;c loại v&agrave; nhiều loại m&igrave;n chưa nổ kh&aacute;c.</span></p>\r\n<p><span>Trung t&aacute; Trần Huy Thục, Cục trưởng Cục C&ocirc;ng binh, Bộ Chỉ huy Qu&acirc;n sự tỉnh H&agrave; Giang, cho biết: &ldquo;Trong cuộc chiến tranh 10 năm từ 1979 đến 1989, qu&acirc;n ta v&agrave; địch thay phi&ecirc;n nhau chiếm cứ cao điểm thuận lợi.&nbsp;V&igrave; vậy, việc ph&aacute;t hiện, r&agrave; ph&aacute; bom, m&igrave;n, chất nổ hiện nay l&agrave; một nhiệm vụ kh&oacute; khăn.</span></p>\r\n<p><span>&Ocirc;ng cho biết: &ldquo;Đất bị &ocirc; nhiễm bom, m&igrave;n, vật nổ tr&ecirc;n địa b&agrave;n tỉnh c&oacute; diện t&iacute;ch khoảng 90.000ha.</span></p>\r\n<p><span>&Ocirc;ng Thục cho biết, dự &aacute;n r&agrave; ph&aacute; bom, m&igrave;n, vật nổ ở tỉnh H&agrave; Giang nhằm t&igrave;m kiếm, tập hợp h&agrave;i cốt liệt sĩ v&agrave; giải ph&oacute;ng mặt bằng, cấp cho cộng đồng c&aacute;c d&acirc;n tộc nhiều đất đai để canh t&aacute;c.</span></p>\r\n<p><span>&ldquo;Ch&uacute;ng t&ocirc;i đặt mục ti&ecirc;u mỗi người d&acirc;n ở bi&ecirc;n giới l&agrave; một \'cột mốc sống\' bảo vệ bi&ecirc;n giới.&nbsp;Khi người d&acirc;n c&oacute; đất canh t&aacute;c, ổn định cuộc sống, ph&aacute;t triển kinh tế th&igrave; an ninh bi&ecirc;n giới sẽ được bảo vệ&rdquo;, &ocirc;ng n&oacute;i.&nbsp;- VNS</span></p>', 'posts/September2023/D0K7FMEaVEQhhIMNSeL9.jpg', 'tiep-tuc-ra-pha-bom-min-vat-no-o-ha-giang', 'Từ ngày 1/3/2023, chính quyền địa phương triển khai dự án rà phá bom mìn, vật liệu nổ giai đoạn 2 phục vụ công tác tìm kiếm, quy tập hài cốt các liệt sĩ hy sinh trong cuộc chiến tranh bảo vệ Tổ quốc trên địa bàn tỉnh Hà Giang.', 'Từ ngày 1/3/2023, chính quyền địa phương triển khai dự án rà phá bom mìn, vật liệu nổ giai đoạn 2 phục vụ công tác tìm kiếm, quy tập hài cốt các liệt sĩ hy sinh trong cuộc chiến tranh bảo vệ Tổ quốc trên địa bàn tỉnh Hà Giang.', 'PUBLISHED', 0, '2023-09-14 00:07:48', '2023-09-14 00:07:48'),
(11, 1, 1, 'Danh lam thắng cảnh Thác Tiên Đèo gió', NULL, 'Danh lam thắng cảnh Thác Tiên Đèo Gió nằm ở lưng chừng núi Đèo Gió trong khu rừng nguyên sinh thuộc địa phận thôn Ngam Lâm, xã Nấm Dẩn, huyện Xín Mần, tỉnh Hà Giang. Danh lam thắng cảnh Thác tiên Đèo gió được xếp hạng cấp quốc gia năm 2009.', '<p class=\"Noidung\">Th&aacute;c Ti&ecirc;n bắt nguồn từ suối Tả Ng&aacute;n, x&atilde; Tả Củ Tỷ, huyện Bắc H&agrave;, tỉnh L&agrave;o Cai ở độ cao hơn 1400m so với mực nước biển,&nbsp;<span lang=\"vi\" xml:lang=\"vi\">chảy qua địa phận c&aacute;c th&ocirc;n Ngam L&acirc;m, Nấm Chiến, T&acirc;n Sơn, Thống Nhất, Nấm Chanh của huyện X&iacute;n Mần, sau đ&oacute; đổ ra s&ocirc;ng Chảy v&agrave; nhập ở ng&atilde; ba của cầu treo thị trấn Cốc P&agrave;i (X&iacute;n Mần).&nbsp;</span>Th&aacute;c Ti&ecirc;n c&ograve;n c&oacute; t&ecirc;n gọi kh&aacute;c l&agrave; th&aacute;c Đ&ocirc;i, th&aacute;c Gi&oacute; bởi dưới ch&acirc;n th&aacute;c l&uacute;c n&agrave;o cũng c&oacute; gi&oacute; thổi rất mạnh đưa l&agrave;n hơi nước bay lơ lửng.</p>\r\n<p class=\"Noidung\"><span lang=\"vi\" xml:lang=\"vi\">Th&aacute;c Ti&ecirc;n Đ&egrave;o Gi&oacute; nằm c&aacute;ch đường quốc lộ số 178 khoảng 120m. Ngay tr&ecirc;n đường đ&atilde; nghe thấy tiếng đổ ầm ầm của d&ograve;ng th&aacute;c. Lưu lượng nước của d&ograve;ng th&aacute;c n&agrave;y được ph&acirc;n bố kh&aacute; đều v&agrave;o c&aacute;c m&ugrave;a trong năm, bởi nơi đ&acirc;y c&oacute; c&aacute;c thảm thực vật d&agrave;y v&agrave; độ ẩm tương đối lớn. Nh&igrave;n từ xa, d&ograve;ng Th&aacute;c Ti&ecirc;n Đ&egrave;o Gi&oacute; tr&ocirc;ng giống như một dải lụa trắng mềm mại nổi bật giữa kh&ocirc;ng gian của n&uacute;i rừng đại ng&agrave;n. Đến Th&aacute;c Ti&ecirc;n Đ&egrave;o Gi&oacute; du kh&aacute;ch c&oacute; thể tắm m&igrave;nh trong những vực nước trong xanh c&oacute; độ s&acirc;u khoảng 3m - 5m, rộng khoảng 15m - 20m.</span></p>\r\n<p class=\"Noidung\"><span lang=\"vi\" xml:lang=\"vi\">Ở hai b&ecirc;n bờ c&oacute; những thảm thực vật xen kẽ giữa d&ograve;ng chảy của th&aacute;c tạo n&ecirc;n một bức tranh phong cảnh tuyệt đẹp. Xung quanh khu vực c&oacute; d&ograve;ng th&aacute;c l&agrave; những c&aacute;nh rừng xanh đại ng&agrave;n xen lẫn với những c&acirc;y cổ thụ h&agrave;ng trăm năm tuổi, những th&acirc;n d&acirc;y leo c&ugrave;ng một thảm thực vật phong ph&uacute;. Hiện tại nơi đ&acirc;y c&ograve;n tồn tại một số c&acirc;y gỗ sến tr&ecirc;n 500 tuổi, đường k&iacute;nh hơn 2m. Tất cả đ&atilde; tạo cho cảnh quan của Th&aacute;c Ti&ecirc;n Đ&egrave;o Gi&oacute; một vẻ đẹp nguy&ecirc;n sơ v&agrave; đầy thơ mộng. Khu vực Th&aacute;c Ti&ecirc;n Đ&egrave;o Gi&oacute; l&agrave; khu rừng nguy&ecirc;n sinh với hệ sinh th&aacute;i phong ph&uacute; v&agrave; đa dạng. Đến nơi đ&acirc;y, du kh&aacute;ch vừa được du lịch trong bầu kh&ocirc;ng kh&iacute; trong l&agrave;nh, m&aacute;t mẻ v&agrave; đầy thơ mộng, vừa được tắm m&igrave;nh trong d&ograve;ng th&aacute;c xanh m&aacute;t đầy quyến rũ.</span></p>\r\n<p class=\"Noidung\"><span lang=\"vi\" xml:lang=\"vi\">Th&aacute;c Ti&ecirc;n Đ&egrave;o Gi&oacute; c&oacute; hai d&ograve;ng: D&ograve;ng b&ecirc;n phải l&agrave; d&ograve;ng chảy ch&iacute;nh, d&ograve;ng b&ecirc;n tr&aacute;i chảy song song d&ograve;ng ch&iacute;nh, nhưng với lưu lượng nước &iacute;t hơn. D&ograve;ng b&ecirc;n phải được chia th&agrave;nh 2 tầng th&aacute;c: Tầng thứ nhất ở tr&ecirc;n cao được thu nhỏ lại với chiều cao khoảng 15m, rộng khoảng 5m thu một lượng nước khổng lồ v&agrave; toả ra ở tầng th&aacute;c thứ hai, đổ xuống vực nước tạo th&agrave;nh một dải nước trắng xo&aacute; mềm mại tr&ocirc;ng giống như m&aacute;i t&oacute;c của người thiếu nữ trong c&acirc;u truyện truyền thuyết của người d&acirc;n nơi đ&acirc;y.</span></p>\r\n<p class=\"Noidung\"><span lang=\"vi\" xml:lang=\"vi\">Th&aacute;c&nbsp;</span>Ti&ecirc;n&nbsp;<span lang=\"vi\" xml:lang=\"vi\">Đ&egrave;o Gi&oacute; nằm trong khu rừng nguy&ecirc;n sinh, n&uacute;i Đ&egrave;o Gi&oacute; c&oacute; hệ động thực vật phong ph&uacute; v&agrave; đa dạng sinh học về th&agrave;nh phần chủng lo&agrave;i cũng như về số lượng c&aacute; thể c&oacute; gi&aacute; trị rất lớn trong c&ocirc;ng t&aacute;c nghi&ecirc;n cứu, t&igrave;m hiểu của c&aacute;c ng&agrave;nh sinh vật học, địa chất học, kh&iacute; tượng học;&nbsp;</span>đ<span lang=\"vi\" xml:lang=\"vi\">ồng thời với thảm thực vật kh&aacute; d&agrave;y, nhiều c&aacute;nh rừng nguy&ecirc;n sinh ph&aacute;t triển tr&ecirc;n n&uacute;i đ&aacute; v&ocirc;i v&agrave; n&uacute;i đất, nơi đ&acirc;y c&ograve;n l&agrave; khu vực rừng ph&ograve;ng hộ đầu nguồn c&oacute; gi&aacute; trị v&agrave; &yacute; nghĩa về kinh tế - x&atilde; hội rất lớn: L&agrave; khu vực giữ vai tr&ograve; điều tiết v&agrave; ph&acirc;n phối nước cho nhiều thung lũng của khu vực x&atilde; Nấm Dẩn để ph&aacute;t triển n&ocirc;ng nghiệp.</span></p>\r\n<p class=\"Noidung\">Đến với th&aacute;c Ti&ecirc;n, du kh&aacute;ch như lạc v&agrave;o chốn thi&ecirc;n nhi&ecirc;n thuần khiết, hoang sơ với khung cảnh đẹp như một bức tranh thủy mặc. Tiếng suối chảy r&oacute;c r&aacute;ch, tiếng chim rừng h&oacute;t l&iacute;u lo như ch&agrave;o đ&oacute;n kh&aacute;ch du lịch. D&ograve;ng nước đổ từ tr&ecirc;n cao xuống tạo th&agrave;nh một d&ograve;ng suối nhỏ quanh năm đầy nước, nước suối trong vắt nh&igrave;n thấy cả những vi&ecirc;n sỏi dưới đ&aacute;y.&nbsp;Đến với Th&aacute;c Ti&ecirc;n Đ&egrave;o gi&oacute; ngắm nh&igrave;n những d&ograve;ng nước hiền h&ograve;a, tận hưởng bầu kh&ocirc;ng kh&iacute; trong l&agrave;nh sẽ mang đến cảm gi&aacute;c b&igrave;nh y&ecirc;n, xua tan những mệt mỏi &acirc;u lo.&nbsp;<span lang=\"vi\" xml:lang=\"vi\">Với những&nbsp;</span><span lang=\"vi\" xml:lang=\"vi\">tiềm năng sẵn c&oacute; m&agrave; thi&ecirc;n nhi&ecirc;n đ&atilde; ban tặng,&nbsp;</span>T<span lang=\"vi\" xml:lang=\"vi\">h&aacute;c&nbsp;</span>Ti&ecirc;n&nbsp;<span lang=\"vi\" xml:lang=\"vi\">Đ&egrave;o Gi&oacute; sẽ l&agrave; điểm du lịch sinh th&aacute;i, du lịch văn ho&aacute; hấp dẫn du kh&aacute;ch trong v&agrave; ngo&agrave;i nước.</span></p>', 'posts/September2023/8Launo64bCpid9L1TOvu.jpg', 'danh-lam-thang-canh-thac-tien-deo-gio', 'Danh lam thắng cảnh Thác Tiên Đèo Gió nằm ở lưng chừng núi Đèo Gió trong khu rừng nguyên sinh thuộc địa phận thôn Ngam Lâm, xã Nấm Dẩn, huyện Xín Mần, tỉnh Hà Giang. Danh lam thắng cảnh Thác tiên Đèo gió được xếp hạng cấp quốc gia năm 2009.', 'Danh lam thắng cảnh Thác Tiên Đèo Gió nằm ở lưng chừng núi Đèo Gió trong khu rừng nguyên sinh thuộc địa phận thôn Ngam Lâm, xã Nấm Dẩn, huyện Xín Mần, tỉnh Hà Giang. Danh lam thắng cảnh Thác tiên Đèo gió được xếp hạng cấp quốc gia năm 2009.', 'PUBLISHED', 1, '2023-09-14 00:09:06', '2023-09-14 00:09:06'),
(12, 1, 1, 'Hà Giang: Xà Phìn - Vùng đất hấp dẫn du khách', NULL, 'Không khí mát mẻ, trong lành đặc trưng của vùng núi cao, phong cảnh sơn thủy hữu tình được thiên nhiên ban tặng mang lại nhiều tiềm năng du lịch cho thôn vùng cao Xà Phin, xã Phương Tiến, huyện Vị Xuyên (Hà Giang). Nơi đây hứa hẹn là điểm đến hấp dẫn cho khách du lịch trong và ngoài tỉnh.', '<div id=\"post-summary-wrapper\" class=\"col-xl-12 col-lg-12 col-12 col-sm-12\">\r\n<div>Kh&ocirc;ng kh&iacute; m&aacute;t mẻ, trong l&agrave;nh đặc trưng của v&ugrave;ng n&uacute;i cao, phong cảnh sơn thủy hữu t&igrave;nh được thi&ecirc;n nhi&ecirc;n ban tặng mang lại nhiều tiềm năng du lịch cho th&ocirc;n v&ugrave;ng cao X&agrave; Phin, x&atilde; Phương Tiến, huyện Vị Xuy&ecirc;n (H&agrave; Giang). Nơi đ&acirc;y hứa hẹn l&agrave; điểm đến hấp dẫn cho kh&aacute;ch du lịch trong v&agrave; ngo&agrave;i tỉnh.</div>\r\n</div>\r\n<div id=\"post-content-wrapper\" class=\"col-xl-12 col-lg-12 col-12 col-sm-12\">\r\n<div>\r\n<p>X&agrave; Ph&igrave;n l&agrave; th&ocirc;n v&ugrave;ng cao của x&atilde; Phương Tiến, nằm lưng chừng tr&ecirc;n d&atilde;y n&uacute;i cao T&acirc;y C&ocirc;n Lĩnh. Đ&acirc;y l&agrave; d&atilde;y n&uacute;i nằm ở ph&iacute;a T&acirc;y H&agrave; Giang, trải d&agrave;i tr&ecirc;n hai huyện Ho&agrave;ng Su Ph&igrave; v&agrave; Vị Xuy&ecirc;n. Với độ cao 2.427 m, T&acirc;y C&ocirc;n Lĩnh l&agrave; một trong những ngọn n&uacute;i cao nhất Việt Nam, l&agrave; n&oacute;c nh&agrave; của n&uacute;i rừng Đ&ocirc;ng Bắc. Nơi đ&acirc;y c&oacute; thảm thực vật phong ph&uacute; v&agrave; l&agrave; đỉnh cao c&oacute; tiềm năng thế mạnh bậc nhất đối với du lịch trải nghiệm c&ugrave;ng với ph&aacute;t triển một số loại c&acirc;y thảo dược qu&yacute;. D&ugrave; vậy, X&agrave; Ph&igrave;n vẫn được người d&acirc;n v&iacute; như \"ốc đảo\" giữa n&uacute;i rừng khi giữa tr&ugrave;ng điệp n&uacute;i rừng xuất hiện một bản l&agrave;ng của người Dao với cảnh đẹp n&ecirc;n thơ, mang đủ c&aacute;c đặc trưng của v&ugrave;ng cao H&agrave; Giang. Giữa mu&ocirc;n tr&ugrave;ng m&agrave;u xanh của n&uacute;i rừng l&agrave; trập tr&ugrave;ng ruộng bậc thang.</p>\r\n<p><a href=\"https://images.vietnamtourism.gov.vn/vn//images/2021/thang_7/2207.ha_giang_xa_phin_vung_dat_hap_dan_du_khach_1.jpg\" target=\"_blank\" rel=\"noopener\"><img src=\"https://images.vietnamtourism.gov.vn/vn//images/2021/thang_7/2207.ha_giang_xa_phin_vung_dat_hap_dan_du_khach_1.jpg\" alt=\"\"></a><br><em>Th&ocirc;n v&ugrave;ng cao X&agrave; Ph&igrave;n</em></p>\r\n<p>Một ng&agrave;y đầu th&aacute;ng Bảy, khi trời c&ograve;n chưa s&aacute;ng tỏ, sương m&ugrave; vẫn vương vấn dưới những t&aacute;n c&acirc;y gia. Theo lịch hẹn đ&atilde; hẹn, t&ocirc;i c&ugrave;ng vị Ph&oacute; Chủ tịch UBND x&atilde; Phương Tiến &ndash; Cấn Văn Hiển tham gia một cuộc chinh phục nhỏ d&atilde;y T&acirc;y C&ocirc;n Lĩnh m&agrave; đ&iacute;ch đến h&ocirc;m nay l&agrave; th&ocirc;n X&agrave; Ph&igrave;n. Người &ldquo;bạn đồng h&agrave;nh&ldquo; c&ugrave;ng tuổi với t&ocirc;i - Cấn Văn Hiển l&agrave; người t&ocirc;i c&oacute; cơ duy&ecirc;n quen trước đ&oacute; từ khi anh c&ograve;n l&agrave;m c&ocirc;ng chức ở ph&ograve;ng văn h&oacute;a huyện Vị Xuy&ecirc;n. Anh được điều về x&atilde; Phương Tiến c&ocirc;ng t&aacute;c, tuổi trẻ, nhiệt t&igrave;nh v&agrave; đặc biệt c&oacute; đam m&ecirc; về mảng văn h&oacute;a v&agrave; du lịch.</p>\r\n<p>Tr&ograve; chuyện tr&ecirc;n đường đi, vị Ph&oacute; Chủ tịch UBND x&atilde; cười n&oacute;i: X&atilde; Phương Tiến nằm c&aacute;ch th&agrave;nh phồ H&agrave; Giang hơn 12km, từ trung t&acirc;m x&atilde; l&ecirc;n với th&ocirc;n v&ugrave;ng cao X&agrave; Ph&igrave;n mất tầm kho&agrave;ng gần 10km đường n&uacute;i nữa. Trước đ&acirc;y đường l&ecirc;n th&ocirc;n kh&aacute; kh&oacute; đi, theo chương tr&igrave;nh x&acirc;y dựng n&ocirc;ng th&ocirc;n mới, nh&agrave; nước v&agrave; nh&acirc;n d&acirc;n c&ugrave;ng nhau l&agrave;m đường b&ecirc; t&ocirc;ng n&ecirc;n hiện tại đường l&ecirc;n X&agrave; Ph&igrave;n thuận lợi cho người d&acirc;n v&agrave; kh&aacute;ch du lịch đi lại, kh&aacute;m ph&aacute;.</p>\r\n<p>Tuy đ&atilde; l&agrave;m đường b&ecirc; t&ocirc;ng như con đường l&ecirc;n với X&agrave; Ph&igrave;n vẫn quanh co, kh&uacute;c khuỷu tạo ấn tượng cho du kh&aacute;ch bởi \"dốc v&agrave; dốc\". \"Con ngựa sắt\" chở ch&uacute;ng t&ocirc;i gầm gừ vượt dốc, l&ecirc;n tới th&ocirc;n dường như đ&atilde; thấm mệt. Ở th&agrave;nh phố H&agrave; Giang nắng n&oacute;ng l&agrave; thế m&agrave; l&ecirc;n đến X&agrave; Ph&igrave;n kh&ocirc;ng kh&iacute; lại trong l&agrave;nh v&agrave; dịu m&aacute;t lạ thường. Những thửa ruộng bậc thang uốn lượn quanh những nếp nh&agrave; truyền thống lu&ocirc;n l&agrave; điểm đến kh&ocirc;ng thể bỏ qua trong h&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute; mảnh đất n&agrave;y.</p>\r\n<p><a href=\"https://images.vietnamtourism.gov.vn/vn//images/2021/thang_7/2207.ha_giang_xa_phin_vung_dat_hap_dan_du_khach_2.jpg\" target=\"_blank\" rel=\"noopener\"><img src=\"https://images.vietnamtourism.gov.vn/vn//images/2021/thang_7/2207.ha_giang_xa_phin_vung_dat_hap_dan_du_khach_2.jpg\" alt=\"\"></a><br><em>Người d&acirc;n canh t&aacute;c tr&ecirc;n ruộng bậc thang&nbsp;</em></p>\r\n<p>Thời điểm ch&uacute;ng t&ocirc;i l&ecirc;n thăm, đ&uacute;ng v&agrave; m&ugrave;a cấy của b&agrave; con nơi đ&acirc;y. To&agrave;n x&atilde; Phương Tiến c&oacute; hơn 170 ha l&uacute;a, trong đ&oacute; 4 th&ocirc;n v&ugrave;ng cao, gồm X&agrave; Ph&igrave;n, M&agrave;o Ph&igrave;n, N&agrave; M&agrave;u v&agrave; Nặm Tẹ với hơn 79 ha ruộng bậc thang. Ai cũng phải c&ocirc;ng nhận, X&agrave; Ph&igrave;n đẹp nhất trong năm v&agrave;o hai dịp l&agrave; m&ugrave;a l&uacute;a d&aacute;t v&agrave;ng khắp c&aacute;c bậc ruộng m&agrave;u mỡ v&agrave; khi những thửa ruộng v&agrave;o m&ugrave;a nước đổ. Du kh&aacute;ch đến với X&agrave; Ph&igrave;n m&ugrave;a nước đổ sẽ cảm nhận thật hơn m&ugrave;i đồng ruộng, được h&iacute;t h&agrave; m&ugrave;i xanh cỏ non v&agrave; cảm nhận vẻ đẹp b&igrave;nh dị của cuộc sống. Ruộng bậc thang l&agrave; sự kết hợp ho&agrave;n hảo giữa vẻ h&ugrave;ng vĩ của n&uacute;i rừng c&ugrave;ng vẻ đẹp của lao động s&aacute;ng tạo, trải qua bao đời, bao thế hệ. Sau mỗi m&ugrave;a nước đổ, người d&acirc;n lại hối hả chuẩn bị cho một m&ugrave;a l&uacute;a mới, hứa hẹn những cung ruộng bậc thang &oacute;ng ả m&ugrave;a v&agrave;ng.</p>\r\n<p>X&agrave; Ph&igrave;n hiện 53 hộ sinh sống, 100% l&agrave; đồng b&agrave;o d&acirc;n tộc Dao. Trước đ&acirc;y đường đi kh&oacute; n&ecirc;n hoạt động giao lưu văn h&oacute;a của người d&acirc;n rất hạn chế, sản phẩm từ n&ocirc;ng nghiệp v&agrave; vật nu&ocirc;i của b&agrave; con l&agrave;m ra cũng rất kh&oacute; ti&ecirc;u thụ, chủ yếu l&agrave; tự sản, tự ti&ecirc;u. Nay cuộc sống đ&atilde; dần đổi thay.&nbsp;Đến với X&agrave; Ph&igrave;n, du kh&aacute;ch cũng sẽ kh&ocirc;ng khỏi ngỡ ng&agrave;ng trước những ng&ocirc;i nh&agrave; cổ của người Dao v&agrave; những vườn đ&agrave;o, vườn mận do người d&acirc;n nơi đ&acirc;y trồng.</p>\r\n<p><a href=\"https://images.vietnamtourism.gov.vn/vn//images/2021/thang_7/2207.ha_giang_xa_phin_vung_dat_hap_dan_du_khach_3.jpg\" target=\"_blank\" rel=\"noopener\"><img src=\"https://images.vietnamtourism.gov.vn/vn//images/2021/thang_7/2207.ha_giang_xa_phin_vung_dat_hap_dan_du_khach_3.jpg\" alt=\"\"></a><br><em>Người Dao h&aacute;i ch&egrave; Shan tuyết</em></p>\r\n<p>Đặc biệt, kh&ocirc;ng thể kh&ocirc;ng nhắc đến những c&acirc;y&nbsp;ch&egrave; Shan tuyết cổ thụ được người d&acirc;n nơi đ&acirc;y n&acirc;ng niu, chăm s&oacute;c. Nơi đ&acirc;y được thi&ecirc;n nhi&ecirc;n ưu đ&atilde;i, điều kiện điều kiện thổ nhưỡng tốt, kh&iacute; hậu m&aacute;t mẻ n&ecirc;n rất thuận lợi để ph&aacute;t triển c&acirc;y ch&egrave;, cũng c&oacute; thể v&igrave; vậy m&agrave; ch&egrave; ở đ&acirc;y ngon hơn c&aacute;c nơi kh&aacute;c. Ch&egrave; Shan tuyết l&agrave; giống ch&egrave; qu&yacute; hiếm, chỉ trồng được ở v&ugrave;ng cao, c&acirc;y ch&egrave; cao tới v&agrave;i m&eacute;t, c&oacute; c&acirc;y tuổi h&agrave;ng trăm năm. Ch&egrave; c&oacute; b&uacute;p to m&agrave;u trắng x&aacute;m, dưới l&aacute; c&oacute; phủ một lớp l&ocirc;ng tơ mịn, trắng n&ecirc;n người d&acirc;n gọi l&agrave; ch&egrave; tuyết. Ch&egrave; Shan tuyết c&oacute; m&ugrave;i thơm dịu, nước v&agrave;ng s&aacute;nh m&agrave;u mật ong, rất tốt cho sức khỏe, được coi l&agrave; đặc sản của tỉnh H&agrave; Giang.</p>\r\n<p>Ở đ&acirc;y người d&acirc;n trồng ch&egrave; đều trồng ph&acirc;n t&aacute;n v&agrave; xen kẽ giữa c&aacute;c t&aacute;n rừng c&ugrave;ng với c&aacute;c c&acirc;y trồng kh&aacute;c chứ kh&ocirc;ng trồng th&agrave;nh vườn, th&agrave;nh l&ocirc; như ở những v&ugrave;ng ch&egrave; kh&aacute;c. Chưa ai thống k&ecirc; cụ thể số lượng diện t&iacute;ch ch&egrave; Shan tuyết tại X&agrave; Ph&igrave;n chỉ biết rằng tất cả c&aacute;c hộ người Dao tại đ&acirc;y đều trồng ch&egrave; Shan tuyết. Nh&agrave; &iacute;t th&igrave; chục c&acirc;y, nh&agrave; nhiều th&igrave; v&agrave;i chục c&acirc;y lớn b&eacute;. Người X&agrave; Ph&igrave;n trước đ&acirc;y trồng ch&egrave; chủ yếu để uống, giờ ch&egrave; Shan tuyết c&oacute; thương hiệu, được kh&aacute;ch h&agrave;ng ưa chuộng v&igrave; chất lượng ch&egrave; tốt v&agrave; an to&agrave;n do kh&ocirc;ng sử dụng thuốc bảo vệ thực vật. Hiện, v&ugrave;ng ch&egrave; Shan tuyết X&agrave; Ph&igrave;n đ&atilde; g&oacute;p phần giảm ngh&egrave;o, n&acirc;ng cao đời sống đồng b&agrave;o v&agrave; b&ecirc;n cạnh đ&oacute; c&ograve;n mở ra cơ hội ph&aacute;t triển du lịch cho b&agrave; con nơi đ&acirc;y.</p>\r\n<p>Tuy l&agrave; đang m&ugrave;a h&egrave; nhưng ở nơi n&uacute;i cao n&agrave;y ng&agrave;y dường như ngắn lại, trời tối nhanh n&ecirc;n ch&uacute;ng t&ocirc;i phải rời th&ocirc;n xuống n&uacute;i. Chiều t&agrave;, X&agrave; Ph&igrave;n lại kho&aacute;c l&ecirc;n m&igrave;nh một vẻ đẹp kh&aacute;c, m&aacute;i nh&agrave; s&agrave;n lợp tranh, kh&oacute;i từ khu bếp của c&aacute;c hộ d&acirc;n đang chuẩn bị cho bữa cơm tối. Nhắc vậy để biết, d&ugrave; cuộc sống c&oacute; nhiều đổi thay nhưng bản sắc văn h&oacute;a d&acirc;n tộc ở v&ugrave;ng đất n&agrave;y vẫn được g&igrave;n giữ, ph&aacute;t huy qua nhiều thế hệ. Lớp nền bản sắc sẵn c&oacute; l&agrave; tiền đề để ch&iacute;nh quyền v&agrave; người d&acirc;n địa phương khai th&aacute;c l&agrave;m du lịch, bởi x&eacute;t cho c&ugrave;ng th&igrave; du lịch l&agrave; chuyến h&agrave;nh tr&igrave;nh m&agrave; mỗi du kh&aacute;ch đều mong muốn biết tới v&agrave; trải nghiệm về bản sắc của một v&ugrave;ng đất, một d&acirc;n tộc.</p>\r\n<p>Tr&ecirc;n h&agrave;nh tr&igrave;nh rời X&agrave; Ph&igrave;n về với th&agrave;nh phố, vị Ph&oacute; Chủ tịch UBND x&atilde; Phương Tiến t&acirc;m sự: X&agrave; Ph&igrave;n h&ocirc;m nay vẫn giữ được những n&eacute;t đẹp mộc mạc của một rẻo cao với những c&aacute;nh rừng bao bọc, dưới l&ograve;ng thung lũng l&agrave; những ch&acirc;n ruộng m&ecirc;nh mang ng&aacute;t hương v&agrave;o m&ugrave;a gặt, những ng&ocirc;i nh&agrave; người Dao cổ đơn sơ, mộc mạc... Nếu tiềm năng, thế mạnh về mảnh đất v&agrave; con người được đ&aacute;nh thức, tin rằng ngay giữa l&ograve;ng th&agrave;nh phố sầm uất, nhộn nhịp vẫn c&oacute; một chốn b&igrave;nh y&ecirc;n để du kh&aacute;ch gh&eacute; thăm. Đ&oacute; cũng l&agrave; nền tảng để x&atilde; Phương Tiến đẩy mạnh ph&aacute;t triển du lịch sinh th&aacute;i gắn với x&acirc;y dựng l&agrave;ng văn h&oacute;a du lịch cộng đồng tại th&ocirc;n X&agrave; Ph&igrave;n trong thời gian sắp tới.</p>\r\n</div>\r\n</div>', 'posts/September2023/6odQja5rhP0aIrTOWQgB.jpg', 'ha-giang-xa-phin-vung-dat-hap-dan-du-khach', 'Không khí mát mẻ, trong lành đặc trưng của vùng núi cao, phong cảnh sơn thủy hữu tình được thiên nhiên ban tặng mang lại nhiều tiềm năng du lịch cho thôn vùng cao Xà Phin, xã Phương Tiến, huyện Vị Xuyên (Hà Giang). Nơi đây hứa hẹn là điểm đến hấp dẫn cho khách du lịch trong và ngoài tỉnh.', 'Không khí mát mẻ, trong lành đặc trưng của vùng núi cao, phong cảnh sơn thủy hữu tình được thiên nhiên ban tặng mang lại nhiều tiềm năng du lịch cho thôn vùng cao Xà Phin, xã Phương Tiến, huyện Vị Xuyên (Hà Giang). Nơi đây hứa hẹn là điểm đến hấp dẫn cho khách du lịch trong và ngoài tỉnh.', 'PUBLISHED', 0, '2023-09-14 00:11:05', '2023-09-14 00:11:05'),
(13, 1, 1, 'Hội thảo thực trạng và giải pháp khởi nghiệp đổi mới sáng tạo của thanh niên tỉnh Hà Giang', 'Hội thảo thực trạng và giải pháp khởi nghiệp đổi mới sáng tạo của thanh niên tỉnh Hà Giang', 'Ngày 03/8, Tỉnh đoàn phối hợp với Viện Nghiên cứu kinh tế và Phát triển nguồn nhân lực trường Đại học Kinh tế và Quản trị kinh doanh Thái Nguyên, UBND huyện Vị Xuyên', '<div class=\"xdj266r x11i5rnm xat24cr x1mh8g0r x1vvkbs x126k92a\">\r\n<div dir=\"auto\">\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; text-align: justify; line-height: normal; background: white;\"><span style=\"font-size: 11.5pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; color: #212529;\">Trong chương tr&igrave;nh triển khai thực hiện đề t&agrave;i &ldquo;Nghi&ecirc;n cứu thực trạng v&agrave; giải ph&aacute;p hỗ trợ m&ocirc; h&igrave;nh khởi nghiệp đổi mới s&aacute;ng tạo cho thanh ni&ecirc;n tỉnh H&agrave; Giang&rdquo;, đo&agrave;n nghi&ecirc;n cứu do TS. Vũ Quỳnh Nam &ndash; Ph&oacute; Viện trưởng phụ tr&aacute;ch Viện Nghi&ecirc;n cứu Kinh tế &amp; Ph&aacute;t triển nguồn nh&acirc;n lực &ndash; l&agrave;m trưởng đo&agrave;n đ&atilde; phối hợp với Tỉnh Đo&agrave;n H&agrave; Giang, huyện đo&agrave;n Vị Xuy&ecirc;n tổ chức buổi Hội thảo số:&nbsp;<strong>&ldquo;</strong></span><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; color: #007bff;\">Thực trạng v&agrave; giải ph&aacute;p khởi nghiệp đổi mới s&aacute;ng tạo cho thanh ni&ecirc;n tỉnh H&agrave; Giang</span><strong><em><span style=\"font-size: 11.5pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; color: #212529;\">&rdquo;</span></em></strong><span style=\"font-size: 11.5pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; color: #212529;\">&nbsp; tại UBND huyện Vị Xuy&ecirc;n.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; text-align: justify; line-height: normal; background: white;\"><span style=\"font-size: 11.5pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; color: #212529;\">Tham dự Hội thảo c&oacute; c&aacute;c đồng ch&iacute; Th&egrave;n Văn Qu&acirc;n &ndash; Ph&oacute; B&iacute; thư Tỉnh đo&agrave;n, Chủ tịch Hội LHTN Việt Nam tỉnh h&agrave; Giang; Đại diện Sở Khoa học v&agrave; C&ocirc;ng nghệ H&agrave; Giang; PGS. TS Trần Đ&igrave;nh Tuấn, chuy&ecirc;n gia tư vấn chuy&ecirc;n m&ocirc;n của Viện Nghi&ecirc;n cứu Kinh tế &amp; Ph&aacute;t triển Nguồn nh&acirc;n lực; Tiến sĩ Phạm Thị Nga thư k&yacute; khoa học, c&ugrave;ng c&aacute;c th&agrave;nh vi&ecirc;n nh&oacute;m nghi&ecirc;n cứu Đề t&agrave;i v&agrave; đại diện c&aacute;c Đo&agrave;n x&atilde; phường tr&ecirc;n địa b&agrave;n huyện Vị Xuy&ecirc;n, c&ugrave;ng c&aacute;c thanh ni&ecirc;n khởi nghiệp.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; text-align: justify; line-height: normal; background: white;\"><span style=\"font-size: 11.5pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; color: #212529;\">Tại hội thảo c&aacute;c đại biểu đ&atilde; được nghe c&aacute;c b&agrave;i tham luận của đại điện Đo&agrave;n c&aacute;c x&atilde; v&agrave; c&aacute;c thanh ni&ecirc;n khởi nghiệp với c&aacute;c tham luận tập trung v&agrave;o c&aacute;c nội dung như: Thực trạng khởi nghiệp của thanh ni&ecirc;n tr&ecirc;n địa b&agrave;n, những kh&oacute; khăn v&agrave; đề xuất giải ph&aacute;p nhằm th&uacute;c đẩy hoạt động khởi nghiệp cho thanh ni&ecirc;n huyện Vị Xuy&ecirc;n n&oacute;i ri&ecirc;ng, cho tỉnh H&agrave; Giang n&oacute;i chung, ch&uacute; trọng đến c&aacute;c hoạt động đổi mới s&aacute;ng tạo gi&uacute;p thanh ni&ecirc;n lập th&acirc;n, lập nghiệp hiệu quả. Từ đ&oacute;, gi&uacute;p giải đ&aacute;p những vướng mắc của thanh ni&ecirc;n v&agrave; đề xuất m&ocirc; h&igrave;nh khởi nghiệp du lịch cộng đồng tại địa phương gắn với ph&aacute;t triển n&ocirc;ng nghiệp hữu cơ.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; text-align: justify; line-height: normal; background: white;\"><span style=\"font-size: 11.5pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; color: #212529;\">Một số h&igrave;nh ảnh tại Hội thảo:</span></p>\r\n</div>\r\n</div>\r\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\">\r\n<div dir=\"auto\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://phulinh.kennatech.vn//storage/posts/September2023/z4715610817652_cfebde59b533c4a3351d9ca12c7db3af.jpg\" alt=\"\" width=\"60%\" height=\"60%\"></div>\r\n<div dir=\"auto\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://phulinh.kennatech.vn//storage/posts/September2023/z4715610817767_ac7896188ca94e9f0ebd8045ea27994b.jpg\" alt=\"\" width=\"60%\" height=\"60%\"></div>\r\n<div dir=\"auto\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://phulinh.kennatech.vn//storage/posts/September2023/z4715610817768_e381ae99f1affba27366ad85669d509c.jpg\" alt=\"\" width=\"60%\" height=\"60%\"></div>\r\n<div dir=\"auto\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://phulinh.kennatech.vn//storage/posts/September2023/z4715610817771_47d00a874980cb685b3dee5f5112c92b.jpg\" alt=\"\" width=\"60%\" height=\"60%\"></div>\r\n</div>', 'posts/September2023/ptkHoF77opjJg5dGj1XN.jpg', 'hoi-thao-thuc-trang-va-giai-phap-khoi-nghiep-doi-moi-sang-tao-cua-thanh-nien-tinh-ha-giang', 'Ngày 03/8, Tỉnh đoàn phối hợp với Viện Nghiên cứu kinh tế và Phát triển nguồn nhân lực trường Đại học Kinh tế và Quản trị kinh doanh Thái Nguyên, UBND huyện Vị Xuyên', 'Hội thảo thực trạng và giải pháp khởi nghiệp đổi mới sáng tạo của thanh niên tỉnh Hà Giang', 'PUBLISHED', 1, '2023-09-21 19:11:33', '2023-09-22 02:04:16'),
(14, 1, 1, 'TẬP HUẤN \"TẬP HUẤN DU LỊCH CỘNG ĐỒNG TỈNH HÀ GIANG\"', 'TẬP HUẤN \"TẬP HUẤN DU LỊCH CỘNG ĐỒNG TỈNH HÀ GIANG\"', 'Trong quá trình khảo sát và triển khai đề tài \"Nghiên cứu thực trạng và giải pháp hỗ trợ mô hình khởi nghiệp đổi mới sáng tạo cho thanh niên tỉnh Hà Giang\"', '<p>Trong qu&aacute; tr&igrave;nh khảo s&aacute;t v&agrave; triển khai đề t&agrave;i \"Nghi&ecirc;n cứu thực trạng v&agrave; giải ph&aacute;p hỗ trợ m&ocirc; h&igrave;nh khởi nghiệp đổi mới s&aacute;ng tạo cho thanh ni&ecirc;n tỉnh H&agrave; Giang\" Nh&oacute;m nghi&ecirc;n cứu do TS. Vũ Quỳnh Nam - Viện trưởng Viện Nghi&ecirc;n cứu Kinh tế &amp; Ph&aacute;t triển nguồn nh&acirc;n lực dẫn đo&agrave;n c&ugrave;ng đồng ch&iacute; Nguyễn Quốc Cường b&iacute; thư x&atilde; Ph&uacute; Linh đ&atilde; đến thăm v&agrave; tặng qu&agrave; cho gia đ&igrave;nh anh L&yacute; Văn Thịnh, th&ocirc;n N&agrave; Trừ, x&atilde; Ph&uacute; Linh, huyện Vị Xuy&ecirc;n l&agrave; hộ ngh&egrave;o của x&atilde;, c&oacute; người bị bệnh hiểm ngh&egrave;o.</p>\r\n<p><img src=\"https://phulinh.kennatech.vn//storage/posts/September2023/z4715611876029_015f33171c51e3a9c8e0a4a98de875291.jpg\" alt=\"\" width=\"70%\" height=\"70%\"></p>\r\n<p><img src=\"https://phulinh.kennatech.vn//storage/posts/September2023/z4715611886513_9723fc8eea021e52a8127d38343326c11.jpg\" alt=\"\" width=\"70%\" height=\"70%\"></p>\r\n<p><img src=\"https://phulinh.kennatech.vn//storage/posts/September2023/z4715611886599_dbff499df970ae10fe5e0f64eef53f92.jpg\" alt=\"\" width=\"70%\" height=\"70%\"></p>\r\n<p><img src=\"https://phulinh.kennatech.vn//storage/posts/September2023/z4715611886600_935e8c6dd99ba3cad7a6592c05338627.jpg\" alt=\"\" width=\"70%\" height=\"70%\"></p>\r\n<p><img src=\"https://phulinh.kennatech.vn//storage/posts/September2023/z4715611886760_d7509124fc3d1fdf7e0f076d428545b1.jpg\" alt=\"\" width=\"70%\" height=\"70%\"></p>\r\n<p><img src=\"https://phulinh.kennatech.vn//storage/posts/September2023/z4715611897042_0891e099eb66d3065a9bfdcb160caa0e.jpg\" alt=\"\" width=\"70%\" height=\"70%\"></p>\r\n<p><img src=\"https://phulinh.kennatech.vn//storage/posts/September2023/z4715612484261_c9b044f92f999bef6b7b15cf630ef46c.jpg\" alt=\"\" width=\"70%\" height=\"70%\"></p>\r\n<p><img src=\"https://phulinh.kennatech.vn//storage/posts/September2023/z4715612484262_f5872ed2bd73f369ffb8745fbc78b408.jpg\" alt=\"\" width=\"70%\" height=\"70%\"></p>\r\n<p><img src=\"https://phulinh.kennatech.vn//storage/posts/September2023/z4715612484264_40c77c5e7407c87533835452ea5b5373.jpg\" alt=\"\" width=\"70%\" height=\"70%\"></p>\r\n<p><img src=\"https://phulinh.kennatech.vn//storage/posts/September2023/z4715612484306_a1a7bfe4d1664d63ca2a1da1ec46ad16.jpg\" alt=\"\" width=\"70%\" height=\"70%\"></p>', 'posts/September2023/QTrN6rusyPxWB76FJlCs.jpg', 'tap-huan-tap-huan-du-lich-cong-dong-tinh-ha-giang', 'Trong quá trình khảo sát và triển khai đề tài \"Nghiên cứu thực trạng và giải pháp hỗ trợ mô hình khởi nghiệp đổi mới sáng tạo cho thanh niên tỉnh Hà Giang\"', 'Trong quá trình khảo sát và triển khai đề tài \"Nghiên cứu thực trạng và giải pháp hỗ trợ mô hình khởi nghiệp đổi mới sáng tạo cho thanh niên tỉnh Hà Giang\"', 'PUBLISHED', 1, '2023-09-21 19:38:09', '2023-09-22 01:54:27');
INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(15, 1, 1, 'Điều tra khảo sát thực trạng khởi nghiệp đổi mới sáng tạo của thanh niên tại tỉnh Hà Giang', NULL, 'Viện Nghiên cứu Kinh tế & Phát triển Nguồn nhân lực triển khai kế hoạch tổ chức thực hiện đề tài khoa học công nghệ cấp tỉnh năm 2021', '<p>Viện Nghi&ecirc;n cứu Kinh tế &amp; Ph&aacute;t triển Nguồn nh&acirc;n lực triển khai kế hoạch tổ chức thực hiện đề t&agrave;i khoa học c&ocirc;ng nghệ cấp tỉnh năm 2021: &ldquo;Nghi&ecirc;n cứu thực trạng v&agrave; giải ph&aacute;p hỗ trợ m&ocirc; h&igrave;nh khởi nghiệp đổi mới s&aacute;ng tạo cho thanh ni&ecirc;n tỉnh H&agrave; Giang&rdquo; do Tiến sĩ Vũ Quỳnh Nam &ndash; Ph&oacute; Viện trưởng &ndash; l&agrave;m chủ nhiệm đề t&agrave;i. Để việc nghi&ecirc;n cứu c&oacute; chất lượng v&agrave; hiệu quả th&igrave; việc tiến h&agrave;nh khảo s&aacute;t c&aacute;c đối tượng li&ecirc;n quan, nắm s&aacute;t t&igrave;nh h&igrave;nh thực tiễn ở địa phương l&agrave; vấn đề cấp thiết cần phải giải quyết. C&aacute;c th&ocirc;ng tin khảo s&aacute;t thực tế sẽ l&agrave; cơ sở dữ liệu quan trọng v&agrave; cơ bản để đề xuất giải ph&aacute;p hỗ trợ m&ocirc; h&igrave;nh khởi nghiệp đổi mới s&aacute;ng tạo cho thanh ni&ecirc;n tỉnh H&agrave; Giang.</p>\r\n<p>Đo&agrave;n khảo s&aacute;t do TS. Vũ Quỳnh Nam l&agrave;m trưởng đo&agrave;n đ&atilde; đến l&agrave;m việc với c&aacute;c Huyện đo&agrave;n v&agrave; th&agrave;nh đo&agrave;n của tỉnh H&agrave; Giang để nắm bắt c&aacute;c th&ocirc;ng tin về t&igrave;nh h&igrave;nh khởi nghiệp của thanh ni&ecirc;n tr&ecirc;n địa b&agrave;n tỉnh, tiến h&agrave;nh điều tra khảo s&aacute;t thực tế tại 10 huyện v&agrave; th&agrave;nh phố H&agrave; Giang thuộc tỉnh H&agrave; Giang để c&oacute; th&ecirc;m&nbsp;c&aacute;c th&ocirc;ng tin về những kh&oacute; khăn, vướng mắc của thanh ni&ecirc;n trong&nbsp;qu&aacute; tr&igrave;nh khởi nghiệp hiện nay.</p>\r\n<p>Ch&ugrave;m ảnh hoạt động của Đo&agrave;n c&ocirc;ng t&aacute;c trong qu&aacute; tr&igrave;nh điều tra, khảo s&aacute;t thực tế tại tỉnh H&agrave; Giang.</p>\r\n<p><img src=\"http://viennckt-ied.tueba.edu.vn//uploads/2020/V%C6%B0%E1%BB%9Dn%20rau%20HG1%20s%E1%BB%ADa1-346474498.jpg\" alt=\"\">&nbsp; &nbsp;<img src=\"http://viennckt-ied.tueba.edu.vn//uploads/2020/V%C6%B0%E1%BB%9Dn%20rau%20HG2-975901961.jpg\" alt=\"\"><br><em>TS. Vũ Quỳnh Nam v&agrave; đo&agrave;n khảo s&aacute;t thăm c&aacute;c Hộ n&ocirc;ng d&acirc;n trồng rau sạch</em></p>\r\n<p>&nbsp; &nbsp;&nbsp;&nbsp;<img src=\"http://viennckt-ied.tueba.edu.vn//uploads/2020/D%C3%A2u%20t%C3%A2y%20HG-1724419125.jpg\" alt=\"\">&nbsp;&nbsp;&nbsp;<img src=\"http://viennckt-ied.tueba.edu.vn//uploads/2020/Thanh%20long%201-2037523358.jpg\" alt=\"\"></p>\r\n<p><em>Đo&agrave;n khảo s&aacute;t thăm m&ocirc; h&igrave;nh trồng c&acirc;y Thanh long v&agrave; quả D&acirc;u t&acirc;y</em></p>\r\n<p>Chuyến khảo s&aacute;t thực tế tại H&agrave; Giang đ&atilde; gi&uacute;p đo&agrave;n khảo s&aacute;t nắm một phần t&igrave;nh h&igrave;nh thực trạng khởi nghiệp đổi mới s&aacute;ng tạo&hellip; từ đ&oacute; c&oacute; thể đ&aacute;nh gi&aacute; t&igrave;nh h&igrave;nh, ph&aacute;t hiện vấn đề li&ecirc;n quan đến đề t&agrave;i nghi&ecirc;n cứu khoa học đang được thực hiện, gi&uacute;p nh&oacute;m nghi&ecirc;n cứu c&oacute; thể đưa ra những m&ocirc; h&igrave;nh khởi nghiệp ph&ugrave; hợp với t&igrave;nh h&igrave;nh thực tế tại tỉnh H&agrave; Giang nhằm g&oacute;p phần th&uacute;c đẩy ph&aacute;t triển KT-XH của tỉnh H&agrave; Giang.</p>\r\n<p>Viện Nghi&ecirc;n cứu Kinh tế &amp; Ph&aacute;t triển Nguồn nh&acirc;n lực, Trường ĐH KT&amp;QTKD</p>', 'posts/September2023/F2u6um3xmUsJPuoiPTr9.png', 'dieu-tra-khao-sat-thuc-trang-khoi-nghiep-doi-moi-sang-tao-cua-thanh-nien-tai-tinh-ha-giang', 'Viện Nghiên cứu Kinh tế & Phát triển Nguồn nhân lực triển khai kế hoạch tổ chức thực hiện đề tài khoa học công nghệ cấp tỉnh năm 2021', 'Viện Nghiên cứu Kinh tế & Phát triển Nguồn nhân lực triển khai kế hoạch tổ chức thực hiện đề tài khoa học công nghệ cấp tỉnh năm 2021', 'PUBLISHED', 0, '2023-09-22 01:51:39', '2023-09-22 01:51:39'),
(16, 1, 1, 'Hội thảo “Kinh nghiệm về khởi nghiệp, khởi nghiệp đổi mới sáng tạo của một số địa phương và tiềm năng khởi nghiệp cho thanh niên tỉnh Hà Giang”', NULL, 'Trong chương trình triển khai thực hiện đề tài “Nghiên cứu thực trạng và giải pháp hỗ trợ mô hình khởi nghiệp đổi mới sáng tạo cho thanh niên tỉnh Hà Giang”, đoàn nghiên cứu do TS. Vũ Quỳnh Nam – Phó Viện trưởng phụ trách Viện Nghiên cứu Kinh tế & Phát', '<p>Trong chương tr&igrave;nh triển khai thực hiện đề t&agrave;i &ldquo;Nghi&ecirc;n cứu thực trạng v&agrave; giải ph&aacute;p hỗ trợ m&ocirc; h&igrave;nh khởi nghiệp đổi mới s&aacute;ng tạo cho thanh ni&ecirc;n tỉnh H&agrave; Giang&rdquo;, đo&agrave;n nghi&ecirc;n cứu do TS. Vũ Quỳnh Nam &ndash; Ph&oacute; Viện trưởng phụ tr&aacute;ch Viện Nghi&ecirc;n cứu Kinh tế &amp; Ph&aacute;t triển nguồn nh&acirc;n lực &ndash; l&agrave;m trưởng đo&agrave;n đ&atilde; phối hợp với Tỉnh Đo&agrave;n H&agrave; Giang tổ chức buổi Hội thảo số:&nbsp;<strong>&ldquo;</strong><strong><em>Kinh nghiệm về khởi nghiệp, khởi nghiệp đổi mới s&aacute;ng tạo của một số địa phương v&agrave; tiềm năng khởi nghiệp cho thanh ni&ecirc;n tỉnh H&agrave; Giang&rdquo;</em></strong>&nbsp;với h&igrave;nh thức trực tuyến tại điểm cầu ch&iacute;nh tại trụ sở Cơ quan Tỉnh đo&agrave;n H&agrave; Giang v&agrave; 8 điểm cầu c&aacute;c huyện, th&agrave;nh đo&agrave;n.</p>\r\n<p>Tham dự Hội thảo về ph&iacute;a điểm cầu Tỉnh đo&agrave;n H&agrave; Giang c&oacute; c&aacute;c đồng ch&iacute; Th&egrave;n Văn Qu&acirc;n &ndash; Ph&oacute; B&iacute; thư Tỉnh đo&agrave;n, Chủ tịch Hội LHTN Việt Nam tỉnh h&agrave; Giang; Ho&agrave;ng Thế Hanh &ndash; Ph&oacute; B&iacute; thư Tỉnh đo&agrave;n; Nguyễn Hải Dương &ndash; Ph&oacute; B&iacute; thư Tỉnh đo&agrave;n; Đại diện Sở Khoa học v&agrave; C&ocirc;ng nghệ H&agrave; Giang; Tiến sĩ Vũ Quỳnh Nam &ndash; Ph&oacute; Viện trưởng Viện nghi&ecirc;n cứu Kinh tế &amp; Ph&aacute;t triển Nguồn nh&acirc;n lực; Tiến sĩ Phạm Minh Ho&agrave;ng &ndash; B&iacute; thư Đo&agrave;n thanh ni&ecirc;n Trường Đại học Kinh tế &amp; Quản trị kinh doanh Đại học Th&aacute;i nguy&ecirc;n; c&aacute;c đồng ch&iacute; Uỷ vi&ecirc;n BTV, Trưởng c&aacute;c ban chuy&ecirc;n m&ocirc;n, bộ phận trực thuộc Tỉnh đo&agrave;n; Thường trực Huyện đo&agrave;n Bắc Quang, Vị Xuy&ecirc;n, Th&agrave;nh phố H&agrave; Giang v&agrave; đại diện c&aacute;c Đo&agrave;n x&atilde; phường tr&ecirc;n địa b&agrave;n th&agrave;nh phố, Vị Xuy&ecirc;n, Bắc Quang c&ugrave;ng c&aacute;c thanh ni&ecirc;n khởi nghiệp.</p>\r\n<p>Tại c&aacute;c điểm cầu trực tuyến c&oacute; c&aacute;c đồng ch&iacute; Thường trực c&aacute;c Huyện đo&agrave;n, đại diện c&aacute;c Đo&agrave;n x&atilde; v&agrave; c&aacute;c thanh ni&ecirc;n khởi nghiệp tr&ecirc;n địa b&agrave;n tỉnh.</p>\r\n<p>Tại hội thảo c&aacute;c đại biểu đ&atilde; được nghe c&aacute;c b&agrave;i tham luận của đại điện Đo&agrave;n c&aacute;c cấp trong tỉnh v&agrave; c&aacute;c thanh ni&ecirc;n khởi nghiệp với c&aacute;c tham luận tập trung v&agrave;o c&aacute;c nội dung cơ bản như: Thực trạng v&agrave; giải ph&aacute;p khởi nghiệp đổi mới s&aacute;ng tạo của thanh ni&ecirc;n tỉnh H&agrave; Giang; Thực trạng hỗ trợ khởi nghiệp giai đoạn 2016 &ndash; 2020 v&agrave; giải ph&aacute;p hỗ trợ&nbsp; khởi nghiệp giai đoạn 2021 &ndash; 2025 tr&ecirc;n địa b&agrave;n tỉnh H&agrave; Giang; Phong tr&agrave;o khởi nghiệp của thanh ni&ecirc;n huyện Vị Xuy&ecirc;n, tỉnh H&agrave; Giang; Thực trạng&nbsp; v&agrave; giải ph&aacute;p ph&aacute;t triển c&aacute;c m&ocirc; h&igrave;nh thanh ni&ecirc;n khởi nghiệp tr&ecirc;n địa b&agrave;n huyện Bắc Quang, giai đoạn 2017 &ndash; 2022.</p>\r\n<p>Hội thảo nhằm ph&aacute;t huy vai tr&ograve;, tr&aacute;ch nhiệm của tổ chức Đo&agrave;n c&aacute;c cấp trong việc nghi&ecirc;n cứu thực trạng v&agrave; giải ph&aacute;p hỗ trợ x&acirc;y dựng m&ocirc; h&igrave;nh khởi nghiệp đổi mới s&aacute;ng tạo cho thanh ni&ecirc;n tỉnh H&agrave; Giang, từ đ&oacute; l&agrave;m lan toả tinh thần khởi nghiệp, gi&uacute;p thanh ni&ecirc;n vận dụng c&aacute;c m&ocirc; h&igrave;nh khởi nghiệp đổi mới s&aacute;ng tạo v&agrave;o hoạt động sản xuất kinh doanh, tạo việc l&agrave;m, tăng thu nhập, cải thiện đời sống cho thanh ni&ecirc;n tr&ecirc;n địa b&agrave;n tỉnh.</p>\r\n<p>Một số h&igrave;nh ảnh tại điểm cầu Tỉnh đo&agrave;n H&agrave; Giang v&agrave; c&aacute;c điểm cầu trực tuyến</p>\r\n<p>&nbsp; &nbsp; &nbsp;<img src=\"http://viennckt-ied.tueba.edu.vn//uploads/2020/nh%201%20web-1596566141.jpg\" alt=\"\">&nbsp; &nbsp; &nbsp;<img src=\"http://viennckt-ied.tueba.edu.vn//uploads/2020/nh%202-1718549224.jpg\" alt=\"\"></p>\r\n<p>&nbsp; &nbsp;&nbsp;<img src=\"http://viennckt-ied.tueba.edu.vn//uploads/2020/nh%204-1836092067.jpg\" alt=\"\">&nbsp; &nbsp; &nbsp;&nbsp;<img src=\"http://viennckt-ied.tueba.edu.vn//uploads/2020/nh%207%20web-42623004.jpg\" alt=\"\">&nbsp;&nbsp; &nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Nguồn: Viện Nghi&ecirc;n cứu Kinh tế &amp; Ph&aacute;t triển nguồn nh&acirc;n lực</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Tỉnh Đo&agrave;n H&agrave; Giang</p>', 'posts/September2023/9aXnpTf5Ws1MPNYTC68y.png', 'hoi-thao-kinh-nghiem-ve-khoi-nghiep-khoi-nghiep-doi-moi-sang-tao-cua-mot-so-dia-phuong-va-tiem-nang-khoi-nghiep-cho-thanh-nien-tinh-ha-giang', NULL, NULL, 'PUBLISHED', 0, '2023-09-22 01:57:03', '2023-09-22 01:57:03'),
(17, 1, 1, 'TẬP HUẤN VÀ TỔ CHỨC THAM QUAN MÔ HÌNH CHO THANH NIÊN KHỞI NGHIỆP TIÊU BIỂU TỈNH HÀ GIANG', NULL, 'Trong khuôn khổ nghiên cứu của đề tài “Nghiên cứu hỗ trợ mô hình khởi nghiệp đổi mới sáng tạo cho thanh niên tỉnh Hà Giang”, Viện Nghiên cứu Kinh tế & Phát triển', '<p>Trong khu&ocirc;n khổ nghi&ecirc;n cứu của đề t&agrave;i &ldquo;Nghi&ecirc;n cứu hỗ trợ m&ocirc; h&igrave;nh khởi nghiệp đổi mới s&aacute;ng tạo cho thanh ni&ecirc;n tỉnh H&agrave; Giang&rdquo;, Viện Nghi&ecirc;n cứu Kinh tế &amp; Ph&aacute;t triển Nguồn nh&acirc;n lực&nbsp;đ&atilde; tập huấn v&agrave;&nbsp;tổ chức tham quan m&ocirc; h&igrave;nh cho cho c&aacute;n bộ Đo&agrave;n v&agrave; đo&agrave;n vi&ecirc;n thanh ni&ecirc;n khởi nghiệp ti&ecirc;u biểu tỉnh H&agrave; Giang. S&aacute;ng ng&agrave;y 15/6/2023, từ 8h00-11h00 lớp tập huấn&nbsp;đ&atilde; diễn ra tại Tỉnh&nbsp;Đo&agrave;n H&agrave; Giang, 13h00 &nbsp;ng&agrave;y 15/6/2023 Đo&agrave;n tham quan xuất ph&aacute;t từ Tỉnh Đo&agrave;n H&agrave; Giang đi Th&aacute;i Nguy&ecirc;n. Đo&agrave;n đ&atilde; tham quan học tập kinh nghiệm&nbsp;tại 2 m&ocirc; h&igrave;nh Du lịch cộng đồng L&agrave;ng Nh&agrave; s&agrave;n Th&aacute;i Hải v&agrave; Nọong Homestay tại th&agrave;nh phố Th&aacute;i Nguy&ecirc;n trong&nbsp;chiều ng&agrave;y 15/6/2023 v&agrave; ng&agrave;y 16/6/2023.</p>\r\n<p>Một số h&igrave;nh ảnh về lớp tập huấn v&agrave; Đo&agrave;n tham quan</p>\r\n<p><img src=\"http://viennckt-ied.tueba.edu.vn//uploads/2020/Ti%C3%AAu%20%C4%91%E1%BB%81-1405424115.jpg\" alt=\"\">&nbsp;&nbsp;<img src=\"http://viennckt-ied.tueba.edu.vn//uploads/2020/1-203533565.jpg\" alt=\"\"></p>\r\n<p>Lớp tập huấn khởi nghiệp cho thanh ni&ecirc;n tỉnh H&agrave; Giang</p>\r\n<p>&nbsp;&nbsp;&nbsp;<img src=\"http://viennckt-ied.tueba.edu.vn//uploads/2020/2-1464403647.jpg\" alt=\"\"></p>\r\n<p>C&aacute;n bộ Viện NCKT&amp;PTNNL v&agrave; thanh ni&ecirc;n khởi nghiệp tại Tỉnh Đo&agrave;n H&agrave; Giang</p>\r\n<p><img src=\"http://viennckt-ied.tueba.edu.vn//uploads/2020/3-284892049.jpg\" alt=\"\">&nbsp;&nbsp;<img src=\"http://viennckt-ied.tueba.edu.vn//uploads/2020/4-931866444.jpg\" alt=\"\"></p>\r\n<p>Tham quan Khu bảo tồn l&agrave;ng nh&agrave; s&agrave;n d&acirc;n tộc sinh th&aacute;i Th&aacute;i Hải</p>\r\n<p><strong>Nguồn: Viện NCKT&amp;PTNNL</strong></p>', 'posts/September2023/qIlc04ac36QzetICYuoq.png', 'tap-huan-va-to-chuc-tham-quan-mo-hinh-cho-thanh-nien-khoi-nghiep-tieu-bieu-tinh-ha-giang', NULL, NULL, 'PUBLISHED', 0, '2023-09-22 01:58:44', '2023-09-22 01:58:44'),
(18, 1, 1, 'TẬP HUẤN “KHỞI NGHIỆP CHO THANH NIÊN TẠI HUYỆN VỊ XUYÊN”', NULL, 'Ngày 12-15/11/2022 tại xã Phú Linh, huyện Vị Xuyên, tỉnh Hà Giang. Viện Nghiên cứu Kinh tế phối hợp với Huyện đoàn Vị Xuyên tổ chức lớp “Tập huấn du lịch cộng đồng gắn với nông nghiệp hữu cơ tại tỉnh Hà Giang”', '<p class=\"MsoNormal\">Ng&agrave;y 12-15/11/2022 tại x&atilde; Ph&uacute; Linh, huyện Vị Xuy&ecirc;n, tỉnh H&agrave; Giang. Viện Nghi&ecirc;n cứu Kinh tế phối hợp với Huyện đo&agrave;n Vị Xuy&ecirc;n tổ chức lớp &ldquo;Tập huấn du lịch cộng đồng gắn với n&ocirc;ng nghiệp hữu cơ tại tỉnh H&agrave; Giang&rdquo; do TS. L&ecirc; Ngọc Nương v&agrave; TS. Phạm Thị Thu Thuỷ giảng dạy c&ugrave;ng 30 đo&agrave;n vi&ecirc;n thanh ni&ecirc;n khởi nghiệp hoặc c&oacute; &yacute; tưởng khởi nghiệp về m&ocirc; h&igrave;nh DLCĐ.</p>\r\n<p class=\"MsoNormal\">Th&ocirc;ng qua lớp tập huấn, c&aacute;c đo&agrave;n vi&ecirc;n thanh ni&ecirc;n nắm được quy tr&igrave;nh, c&aacute;c bước khởi nghiệp; khởi nghiệp đổi mới s&aacute;ng tạo. Học vi&ecirc;n được học về c&aacute;ch tiếp đ&oacute;n du kh&aacute;ch, c&aacute;ch chế biến c&aacute;c m&oacute;n ăn truyền thống của địa phương.</p>\r\n<p class=\"MsoNormal\">Một số h&igrave;nh ảnh của lớp tập huấn:</p>\r\n<p class=\"MsoNormal\"><img src=\"https://phulinh.kennatech.vn//storage/posts/September2023/z4715611886599_dbff499df970ae10fe5e0f64eef53f921.jpg\" alt=\"\" width=\"1800\" height=\"1350\"><img src=\"https://phulinh.kennatech.vn//storage/posts/September2023/z4715611876029_015f33171c51e3a9c8e0a4a98de875292.jpg\" alt=\"\" width=\"1800\" height=\"1350\"></p>', 'posts/September2023/WBSIxQ98xpW3R75J3S37.jpg', 'tap-huan-khoi-nghiep-cho-thanh-nien-tai-huyen-vi-xuyen', 'Ngày 12-15/11/2022 tại xã Phú Linh, huyện Vị Xuyên, tỉnh Hà Giang. Viện Nghiên cứu Kinh tế phối hợp với Huyện đoàn Vị Xuyên tổ chức lớp “Tập huấn du lịch cộng đồng gắn với nông nghiệp hữu cơ tại tỉnh Hà Giang”', NULL, 'PUBLISHED', 0, '2023-09-22 02:06:08', '2023-09-22 02:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Du lịch cộng đồng xã Phú Linh', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Du lịch cộng đồng xã Phú Linh', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/September2023/TGPaSQxe2lcFFYBMSGU4.png', '', 'image', 3, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.phone', 'phone', '19008287', NULL, 'text', 6, 'Site'),
(12, 'site.address', 'address', 'Xã Phú Linh, huyện Vị Xuyên, tỉnh Hà Giang', NULL, 'text', 7, 'Site'),
(13, 'site.email', 'email', 'dlcdphulinh@gmail.com', NULL, 'text', 8, 'Site'),
(14, 'site.map', 'map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58875.6752973936!2d104.97655312084122!3d22.73828573112555!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x36cc7f516424707b%3A0xb0c9defdad700261!2zUGjDuiBMaW5oLCBUcC4gSMOgIEdpYW5nLCBIw6AgR2lhbmcsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1694764180310!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, 'text', 9, 'Site'),
(18, 'site.breadcrumb', 'breadcrumb', 'settings/September2023/wEvF8KZVwk0YGhOYZIlQ.png', NULL, 'image', 13, 'Site'),
(19, 'site.icon', 'icon', 'settings/September2023/DUs8TxCKTa66AbiuegAc.png', NULL, 'image', 14, 'Site'),
(20, 'site.facebook', 'facebook', 'https://www.facebook.com/', NULL, 'text', 15, 'Site'),
(21, 'site.youtube', 'youtube', 'https://www.youtube.com/', NULL, 'text', 16, 'Site'),
(22, 'site.video_home', 'Video trang chủ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/pQebBktVA7U?si=zqWLSCqYhJeqRTIO\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', NULL, 'text', 17, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
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
(35, 'menu_items', 'title', 22, 'en', 'Home', '2023-07-05 02:47:18', '2023-07-05 02:47:18'),
(36, 'menu_items', 'title', 23, 'en', 'About', '2023-07-05 02:47:27', '2023-07-05 02:47:27'),
(38, 'menu_items', 'title', 36, 'en', 'Tiếng việt', '2023-07-05 02:56:59', '2023-07-05 02:56:59'),
(39, 'menu_items', 'title', 35, 'en', 'Tiếng anh', '2023-07-05 02:57:03', '2023-07-05 02:57:03'),
(40, 'menu_items', 'title', 28, 'en', 'Single room', '2023-07-05 03:19:17', '2023-07-05 03:19:17'),
(41, 'menu_items', 'title', 29, 'en', 'Vip room', '2023-07-05 03:19:37', '2023-07-05 03:19:37'),
(42, 'menu_items', 'title', 30, 'en', 'Hall', '2023-07-05 03:19:53', '2023-07-05 03:19:53'),
(43, 'menu_items', 'title', 32, 'en', 'News', '2023-07-05 03:20:21', '2023-07-05 03:20:21'),
(44, 'data_rows', 'display_name', 98, 'en', 'Id', '2023-07-05 18:21:48', '2023-07-05 18:21:48'),
(45, 'data_rows', 'display_name', 99, 'en', 'Tiêu đề', '2023-07-05 18:21:48', '2023-07-05 18:21:48'),
(46, 'data_rows', 'display_name', 100, 'en', 'Hình ảnh', '2023-07-05 18:21:48', '2023-07-05 18:21:48'),
(47, 'data_rows', 'display_name', 101, 'en', 'Mô tả', '2023-07-05 18:21:48', '2023-07-05 18:21:48'),
(48, 'data_rows', 'display_name', 102, 'en', 'Trạng thái', '2023-07-05 18:21:48', '2023-07-05 18:21:48'),
(49, 'data_rows', 'display_name', 103, 'en', 'Created At', '2023-07-05 18:21:48', '2023-07-05 18:21:48'),
(50, 'data_rows', 'display_name', 104, 'en', 'Updated At', '2023-07-05 18:21:48', '2023-07-05 18:21:48'),
(51, 'data_types', 'display_name_singular', 11, 'en', 'Banner', '2023-07-05 18:21:48', '2023-07-05 18:21:48'),
(52, 'data_types', 'display_name_plural', 11, 'en', 'Banners', '2023-07-05 18:21:48', '2023-07-05 18:21:48'),
(53, 'posts', 'title', 7, 'en', 'HỘI CHỢ TRIỂN LÃM “CHỢ QUÊ” CHÀO MỪNG DỊP TẾT CƠM 10/10 TẠI KHU SINH THÁI NHÀ TÔI', '2023-07-05 18:22:57', '2023-07-05 18:22:57'),
(54, 'posts', 'excerpt', 7, 'en', 'Đây là tết rất ý nghĩa đối với cộng đồng các dân tộc miền núi cũng như người Tày -Nùng để chọn ra những sản vật tạ ơn trời đất. Khu du lịch Sinh Thái Nhà Tôi đã chuẩn bị các thực đơn cho dịp tết Cơm mới phục vụ du khách tuần lễ văn hóa truyền thống này', '2023-07-05 18:22:57', '2023-07-05 18:22:57'),
(55, 'posts', 'body', 7, 'en', '<div class=\"xdj266r x11i5rnm xat24cr x1mh8g0r x1vvkbs x126k92a\">\n<div dir=\"auto\">Đ&acirc;y l&agrave; tết rất &yacute; nghĩa đối với cộng đồng c&aacute;c d&acirc;n tộc miền n&uacute;i cũng như người T&agrave;y -N&ugrave;ng để chọn ra những sản vật tạ ơn trời đất.</div>\n<div dir=\"auto\">Khu du lịch Sinh Th&aacute;i Nh&agrave; T&ocirc;i đ&atilde; chuẩn bị c&aacute;c thực đơn cho dịp tết Cơm mới phục vụ du kh&aacute;ch tuần lễ văn h&oacute;a truyền thống n&agrave;y. Du kh&aacute;ch đến đ&acirc;y c&oacute; thể trải nghiệm văn h&oacute;a v&agrave; thưởng thức những n&ocirc;ng sản, sản vật, cơm mới. C&aacute;c m&oacute;n ăn cơm mới trong dịp n&agrave;y gồm:</div>\n<div dir=\"auto\">C&Aacute;C M&Oacute;N</div>\n<div dir=\"auto\">+ Cốm nếp vải v&agrave; nếp c&aacute;i hoa v&agrave;ng</div>\n<div dir=\"auto\">+ Cơm lam</div>\n<div dir=\"auto\">+ X&ocirc;i ngũ sắc</div>\n<div dir=\"auto\">+ Cơm nắm muối lạc</div>\n<div dir=\"auto\">+ B&aacute;nh khảo</div>\n<div dir=\"auto\">+ B&aacute;nh chưng</div>\n<div dir=\"auto\">+ B&aacute;nh dầy</div>\n<div dir=\"auto\">+ B&aacute;nh nẳng ( B&aacute;nh tro chấm mật)</div>\n<div dir=\"auto\">+ Khau nhục</div>\n<div dir=\"auto\">+ Lạp sườn</div>\n<div dir=\"auto\">+Thịt lợn hun khỏi g&aacute;c bếp</div>\n</div>\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\">\n<div dir=\"auto\">SẢN VẬT</div>\n<div dir=\"auto\">+ Măng kh&ocirc; nứa t&eacute;p (loại chọn)</div>\n<div dir=\"auto\">+ Nấm hương loại chọn</div>\n<div dir=\"auto\">+ Thịt lợn treo g&aacute;c bếp mua mang về</div>\n<div dir=\"auto\">+ Lạp sườn mua mang về</div>\n<div dir=\"auto\">+ Khau nhục mua mang về.</div>\n<div dir=\"auto\">+ Ch&egrave; uống Th&aacute;i Nguy&ecirc;n</div>\n</div>\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\">\n<div dir=\"auto\">VĂN H&Oacute;A VĂN NGHỆ</div>\n<div dir=\"auto\">+ H&aacute;t then đ&agrave;n t&iacute;nh</div>\n<div dir=\"auto\">+ S&aacute;o m&egrave;o</div>\n<div dir=\"auto\">Giao lưu d&acirc;n vũ</div>\n<div dir=\"auto\">+ Tr&aacute;i nghiệm c&ugrave;ng gia đ&igrave;nh chế biến c&aacute;c m&oacute;n ăn truyền thống</div>\n<div dir=\"auto\">+ Ng&acirc;m ch&acirc;n l&aacute; thuốc d&acirc;n gian d&acirc;n tộc Dao</div>\n<div dir=\"auto\">Hotline: 0868.466.005</div>\n</div>\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\">\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t77/1/16/1f3e1.png\" alt=\"🏡\" width=\"16\" height=\"16\" loading=\"lazy\"></span>&nbsp;Địa chỉ: khu sinh th&aacute;i Nh&agrave; T&ocirc;i &ndash; Sơn Cẩm -Th&aacute;i Nguy&ecirc;n</div>\n</div>', '2023-07-05 18:22:57', '2023-07-05 18:22:57'),
(56, 'posts', 'slug', 7, 'en', 'hoi-cho-trien-lam-cho-que-chao-mung-dip-tet-com-10-10-tai-khu-sinh-thai-nha-toi', '2023-07-05 18:22:57', '2023-07-05 18:22:57'),
(60, 'rooms', 'title', 10, 'en', 'SUPERIOR ROOM', '2023-07-05 18:23:40', '2023-07-05 18:53:06'),
(61, 'rooms', 'desc', 10, 'en', 'Room area: About 30m2 Room with 1 bed (1m8 x 2m) With a window overlooking the city, nice Viewer The room is equipped with free wifi, TV…', '2023-07-05 18:23:40', '2023-07-05 18:53:06'),
(62, 'rooms', 'content', 10, 'en', '<ul>\n<li>Room size: About 30m2</li>\n<li>Room with 1 bed ( 1m8 x 2m )</li>\n<li>Has a window overlooking the city, beautiful Viewer</li>\n<li>The room is equipped with free wifi, high definition cable TV, with Korean channels</li>\n<li>Room rates include: &nbsp; 10% VAT, tea, instant coffee, 2 free bottles of filtered water, free Bufed breakfast at the restaurant on the 15th floor of the Hotel.<br><br><br></li>\n</ul>', '2023-07-05 18:23:40', '2023-07-05 18:53:06'),
(63, 'rooms', 'price', 10, 'en', '800000', '2023-07-05 18:23:40', '2023-07-05 18:23:40'),
(69, 'services', 'title', 2, 'en', 'Spa', '2023-07-05 18:34:59', '2023-07-05 18:34:59'),
(70, 'services', 'desc', 2, 'en', '𝗞𝗜𝗠 𝗧𝗛𝗔𝗜 𝐇𝐎𝐓𝐄𝐋 always wants to give you the best service experience. In each design, they have reached the perfection of sophistication and simplicity. Each space displayed is extremely close, giving visitors a feeling of comfort and lightness, as warm as living in their own corner of the family.', '2023-07-05 18:34:59', '2023-07-05 18:34:59'),
(71, 'services', 'content', 2, 'en', '<div class=\"xdj266r x11i5rnm xat24cr x1mh8g0r x1vvkbs x126k92a\">\n<div dir=\"auto\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://localhost/KimThaiHotel/public/storage/services/July2023/352381850_1697440687402813_7641706672087384858_n.jpg\" alt=\"\" width=\"70%\" height=\"70%\"></div>\n<div dir=\"auto\">𝗞𝗜𝗠 𝗧𝗛𝗔𝗜 𝐇𝐎𝐓𝐄𝐋 - 𝗥𝗘𝗦𝗧𝗔𝗨𝗥𝗔𝗡𝗧- 𝐒𝐏𝐀 𝐪𝐮𝐚𝐲 𝐭𝐫𝐨̛̉ 𝐥𝐚̣𝐢 𝐯𝐨̛́𝐢 𝐝𝐢𝐞̣̂𝐧 𝐦𝐚̣𝐨 𝐡𝐨𝐚̀𝐧 𝐭𝐨𝐚̀𝐧 𝐦𝐨̛́𝐢<span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6f/1/16/1f337.png\" alt=\"🌷\" width=\"16\" height=\"16\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t1e/1/16/1f33f.png\" alt=\"🌿\" width=\"16\" height=\"16\"></span></div>\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tc7/1/16/1f483.png\" alt=\"💃\" width=\"16\" height=\"16\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tc7/1/16/1f483.png\" alt=\"💃\" width=\"16\" height=\"16\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tc7/1/16/1f483.png\" alt=\"💃\" width=\"16\" height=\"16\"></span>C&oacute; phải bạn đang t&igrave;m kiếm một địa điểm nghỉ dưỡng l&yacute; tưởng cho gia đ&igrave;nh bạn, một nơi c&oacute;:</div>\n<div dir=\"auto\">- Dịch vụ lưu tr&uacute;</div>\n<div dir=\"auto\">- Nh&agrave; h&agrave;ng ẩm thực</div>\n<div dir=\"auto\">- Dịch vụ ph&ograve;ng họp, hội thảo</div>\n<div dir=\"auto\">- Trung t&acirc;m chăm s&oacute;c sức khỏe, Amona Spa</div>\n<div dir=\"auto\">𝗞𝗜𝗠 𝗧𝗛𝗔𝗜 𝐇𝐎𝐓𝐄𝐋 ch&iacute;nh l&agrave; lựa chọn tuyệt vời cho bạn<span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tea/1/16/1f970.png\" alt=\"🥰\" width=\"16\" height=\"16\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tea/1/16/1f970.png\" alt=\"🥰\" width=\"16\" height=\"16\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tea/1/16/1f970.png\" alt=\"🥰\" width=\"16\" height=\"16\"></span></div>\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t1e/1/16/1f33f.png\" alt=\"🌿\" width=\"16\" height=\"16\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t1e/1/16/1f33f.png\" alt=\"🌿\" width=\"16\" height=\"16\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t1e/1/16/1f33f.png\" alt=\"🌿\" width=\"16\" height=\"16\"></span>𝗞𝗜𝗠 𝗧𝗛𝗔𝗜 𝐇𝐎𝐓𝐄𝐋 lu&ocirc;n mong muốn đem đến cho qu&yacute; kh&aacute;ch những trải nghiệm dịch vụ tuyệt vời nhất. Trong từng thiết kế, đều đ&atilde; đạt đến độ ho&agrave;n mỹ của sự tinh tế v&agrave; giản dị. Mỗi kh&ocirc;ng gian được trưng b&agrave;y đều v&ocirc; c&ugrave;ng gần gũi tạo cho du kh&aacute;ch cảm gi&aacute;c thoải m&aacute;i v&agrave; nhẹ nh&agrave;ng, ấm &aacute;p hệt như đang được sống trong g&oacute;c ri&ecirc;ng của gia đ&igrave;nh m&igrave;nh.<span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tf0/1/16/1f338.png\" alt=\"🌸\" width=\"16\" height=\"16\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t99/1/16/1f33a.png\" alt=\"🌺\" width=\"16\" height=\"16\"></span></div>\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t7b/1/16/1f6c0.png\" alt=\"🛀\" width=\"16\" height=\"16\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tb/1/16/1f388.png\" alt=\"🎈\" width=\"16\" height=\"16\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t84/1/16/1f381.png\" alt=\"🎁\" width=\"16\" height=\"16\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t3/1/16/1f380.png\" alt=\"🎀\" width=\"16\" height=\"16\"></span>Đơn giản, mộc mạc, tinh tế nhưng kh&ocirc;ng hề đơn điệu, m&agrave; vẫn rất thời thượng v&agrave; tiện nghi. Đ&oacute; l&agrave; những g&igrave; m&agrave; 𝗞𝗜𝗠 𝗧𝗛𝗔𝗜 𝐇𝐎𝐓𝐄𝐋 đang muốn hướng tới.</div>\n</div>\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\">\n<div dir=\"auto\">_____________________________</div>\n</div>\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\">\n<div dir=\"auto\">𝗞𝗜𝗠 𝗧𝗛𝗔𝗜 𝗛𝗢𝗧𝗘𝗟</div>\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tf6/1/16/1f3e0.png\" alt=\"🏠\" width=\"16\" height=\"16\"></span>: KS Kim Th&aacute;i, số 3, đường Ho&agrave;ng Văn Thụ, TP.Th&aacute;i Nguy&ecirc;n</div>\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t22/1/16/260e.png\" alt=\"☎️\" width=\"16\" height=\"16\"></span> 0208.3933. 566</div>\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/td8/1/16/1f4f2.png\" alt=\"📲\" width=\"16\" height=\"16\"></span> ‭ 0886.835.588</div>\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tc0/1/16/1f4e9.png\" alt=\"📩\" width=\"16\" height=\"16\"></span> Kimthaihoteltn@gmail.com</div>\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t41/1/16/1f30f.png\" alt=\"🌏\" width=\"16\" height=\"16\"></span> <a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1fey0fg\" tabindex=\"0\" role=\"link\" href=\"https://l.facebook.com/l.php?u=http%3A%2F%2FWWW.kimthaihotel.com.vn%2F%3Ffbclid%3DIwAR2q-c67jmqSh3lhMK5J1S6TbAhDNPPUSiZIvAwCDN9rUoyDBuQBDK8XxHw&amp;h=AT0EYlQ-RM-M2kqTT9KRxz0MCYTGi_mGNEjbjLSquMY6hCrtP02HOyLOirQSKJhibft_rMltLSF4-O64JQVik3hM8lF84i_9DvqKvq4jwFmt0wa3IFWL9K3TIpwvA1D4VoINMou3TSTI_5qyKQbi&amp;__tn__=-UK-R&amp;c[0]=AT0OOSpTG14hzeYMOp3gBCt9xxXvRwblgNGLKBQTJ6gotvfXYUOj7ueW5dRdMMYzBBzsYi9VSqxylIepCZmfaU3oQfnzajFVCEpwvGEhQykUNZ3rDdN_UQnlP8-ah5wbTY8GuYMTZJRcwa4OT3NfZBD_M7rldZxqpamXc9hWBwUUDqN56qsi-IDxFQuD-oFIQ6Wm7fHDvE0tSg\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">WWW.kimthaihotel.com.vn</a></div>\n</div>', '2023-07-05 18:34:59', '2023-07-05 18:34:59'),
(72, 'services', 'title', 3, 'en', 'Meeting', '2023-07-05 18:35:33', '2023-07-05 18:35:33'),
(73, 'services', 'desc', 3, 'en', 'We bring a relaxing and comfortable space to meet all your needs.\nAs a world-class 5-star hotel, located at the intersection of four main districts, which is considered the heart and center of the city. Ho Chi Minh. With a system of standard rooms and deluxe rooms, beautifully and elegantly designed with attention to every detail, it will bring maximum comfort and comfort to you whether it is a relaxing break or during a business trip. works..', '2023-07-05 18:35:33', '2023-07-05 18:35:33'),
(74, 'services', 'content', 3, 'en', '<p>We bring a relaxing and comfortable space to meet all your needs.<br>As a world-class 5-star hotel, located at the intersection of four main districts, which is considered the heart and center of the city. Ho Chi Minh. With a system of standard rooms and deluxe rooms, beautifully and elegantly designed with attention to every detail, it will bring maximum comfort and comfort to you whether it is a relaxing break or during a business trip. works..</p>', '2023-07-05 18:35:33', '2023-07-05 18:35:33'),
(75, 'services', 'title', 4, 'en', 'Hotel', '2023-07-05 18:35:59', '2023-07-05 18:35:59'),
(76, 'services', 'desc', 4, 'en', 'We bring a relaxing and comfortable space to meet all your needs.\nAs a world-class 5-star hotel, located at the intersection of four main districts, which is considered the heart and center of the city. Ho Chi Minh. With a system of standard rooms and deluxe rooms, beautifully and elegantly designed with attention to every detail, it will bring maximum comfort and comfort to you whether it is a relaxing break or during a business trip. works..', '2023-07-05 18:35:59', '2023-07-05 18:35:59'),
(77, 'services', 'content', 4, 'en', '<p class=\"txt_title_1\">We bring a relaxing and comfortable space to meet all your needs.<br>As a world-class 5-star hotel, located at the intersection of four main districts, which is considered the heart and center of the city. Ho Chi Minh. With a system of standard rooms and deluxe rooms, beautifully and elegantly designed with attention to every detail, it will bring maximum comfort and comfort to you whether it is a relaxing break or during a business trip. works..</p>', '2023-07-05 18:35:59', '2023-07-05 18:35:59'),
(78, 'rooms', 'title', 13, 'en', 'CONFERENCE ROOM NO 3', '2023-07-05 18:49:30', '2023-07-05 18:49:30'),
(79, 'rooms', 'desc', 13, 'en', 'Capacity: Max 30 pax Price includes projector: Half day: 1,000,000 VND Full day: 2,000,000 VND The above price includes: Sound system, light, air conditioner…', '2023-07-05 18:49:30', '2023-07-05 18:49:30'),
(80, 'rooms', 'content', 13, 'en', '<p><strong>Sức chứa</strong>: Max 30 pax</p>\n<p><strong>Gi&aacute; bao gồm m&aacute;y chiếu</strong>:</p>\n<ul>\n<li>Nửa ng&agrave;y: 1.000.000 VNĐ</li>\n<li>Cả ng&agrave;y: 2.000.000 VNĐ</li>\n</ul>\n<p><strong>Gi&aacute; tr&ecirc;n bao gồm</strong>&nbsp;: Hệ thống &acirc;m thanh , &aacute;nh s&aacute;ng, điều h&ograve;a, nước lọc r&oacute;t cốc (kh&ocirc;ng phải nước chai) , giấy b&uacute;t, bảng trắng, bảng Flipchart .&hellip;.</p>\n<p><strong>Gi&aacute; in Backdrop</strong>&nbsp;: 120.000 đ/m<sup>2&nbsp;</sup>(Gi&aacute; đ&atilde; bao gồm: in bạt, c&ocirc;ng treo, 10% Thuế GTGT), trong trường hợp qu&yacute; kh&aacute;ch tự mang bạt đến th&igrave; y&ecirc;u cầu c&oacute; nh&acirc;n vi&ecirc;n tự treo, nếu thu&ecirc; nh&acirc;n vi&ecirc;n nh&agrave; h&agrave;ng treo th&igrave; sẽ thu ph&iacute; l&agrave; 200.000 đ/ lần</p>\n<p><strong>M&agrave;n h&igrave;nh m&aacute;y chiếu</strong>: 1.200.000 đ/ ng&agrave;y (Thu&ecirc; ri&ecirc;ng mang ra ngo&agrave;i)</p>\n<p><strong>Nước kho&aacute;ng đ&oacute;ng chai</strong>: 5000 đ/ chai 350 ml v&agrave; 12.000 đ/ chai 500 ml</p>\n<p><em>Nghỉ giữa giờ c&oacute; dịch vụ Teabreak (tr&agrave;, coffee, hoa quả, b&aacute;nh ngọt, sữa, nước hoa quả&hellip;.) theo c&aacute;c set t&ugrave;y thuộc lựa chọn của kh&aacute;ch h&agrave;ng : từ 40.000 trở l&ecirc;n.</em></p>', '2023-07-05 18:49:30', '2023-07-05 18:49:30'),
(81, 'rooms', 'price', 13, 'en', '2000000', '2023-07-05 18:49:30', '2023-07-05 18:49:30'),
(82, 'rooms', 'title', 12, 'en', 'CONFERENCE ROOM NO 2', '2023-07-05 18:50:16', '2023-07-05 18:50:16'),
(83, 'rooms', 'desc', 12, 'en', 'Total area: 60 m2 Backdrop : 1.2m x 2.2m Capacity: Max 50 pax Price does not include projector: Half day: 2,000,000 VND Full day: 4,000,000 VND Above price includes: System…', '2023-07-05 18:50:16', '2023-07-05 18:50:16'),
(84, 'rooms', 'content', 12, 'en', '<p><strong>Tổng diện t&iacute;ch</strong>:&nbsp;60 m<sup>2</sup></p>\n<p><strong>Backdrop</strong>&nbsp;:&nbsp;1.2m&nbsp;x&nbsp;2.2m</p>\n<p><strong>Sức chứa</strong>: Max 50 pax</p>\n<p><strong>Gi&aacute; kh&ocirc;ng bao gồm m&aacute;y chiếu</strong>:</p>\n<ul>\n<li>Nửa ng&agrave;y: 2.000.000 VNĐ</li>\n<li>Cả ng&agrave;y: 4.000.000 VNĐ</li>\n</ul>\n<p><strong>Gi&aacute; tr&ecirc;n bao gồm</strong>&nbsp;: Hệ thống &acirc;m thanh , &aacute;nh s&aacute;ng, điều h&ograve;a, nước lọc r&oacute;t cốc (kh&ocirc;ng phải nước chai) , giấy b&uacute;t, bảng trắng, bảng Flipchart .&hellip;.</p>\n<p><strong>Gi&aacute; in Backdrop</strong>&nbsp;: 120.000 đ/m<sup>2&nbsp;</sup>(Gi&aacute; đ&atilde; bao gồm: in bạt, c&ocirc;ng treo, 10% Thuế GTGT), trong trường hợp qu&yacute; kh&aacute;ch tự mang bạt đến th&igrave; y&ecirc;u cầu c&oacute; nh&acirc;n vi&ecirc;n tự treo, nếu thu&ecirc; nh&acirc;n vi&ecirc;n nh&agrave; h&agrave;ng treo th&igrave; sẽ thu ph&iacute; l&agrave; 200.000 đ/ lần</p>\n<p><strong>M&agrave;n h&igrave;nh m&aacute;y chiếu</strong>: 1.200.000 đ/ ng&agrave;y (Thu&ecirc; ri&ecirc;ng mang ra ngo&agrave;i)</p>\n<p><strong>Nước kho&aacute;ng đ&oacute;ng chai</strong>: 5000 đ/ chai 350 ml v&agrave; 12.000 đ/ chai 500 ml</p>\n<p><em>Nghỉ giữa giờ c&oacute; dịch vụ Teabreak (tr&agrave;, coffee, hoa quả, b&aacute;nh ngọt, sữa, nước hoa quả&hellip;.) theo c&aacute;c set t&ugrave;y thuộc lựa chọn của kh&aacute;ch h&agrave;ng : từ 40.000 trở l&ecirc;n.</em></p>', '2023-07-05 18:50:16', '2023-07-05 18:50:16'),
(85, 'rooms', 'price', 12, 'en', '4000000', '2023-07-05 18:50:16', '2023-07-05 18:50:16'),
(86, 'rooms', 'title', 11, 'en', 'CONFERENCE ROOM NO 1', '2023-07-05 18:50:55', '2023-07-05 18:50:55'),
(87, 'rooms', 'desc', 11, 'en', 'Room size: 136 m2 Backdrop: 2.6m x 4.8m Capacity: Max 150 pax Price includes projector: Half day: 4,000,000 VND Full day: 7,000,000 VND Above price includes: System…', '2023-07-05 18:50:55', '2023-07-05 18:50:55'),
(88, 'rooms', 'content', 11, 'en', '<p><strong>Room size</strong>: 136 m<sup>2</sup></p>\n<p><strong>Backdrop</strong>&nbsp;: 2.6m x 4.8m</p>\n<p><strong>Capacity</strong>: Max 150 pax</p>\n<p><strong>Gi&aacute; bao gồm m&aacute;y chiếu</strong>:</p>\n<ul>\n<li>Nửa ng&agrave;y: 4.000.000 VNĐ</li>\n<li>Cả ng&agrave;y: 7.000.000 VNĐ</li>\n</ul>\n<p><strong>Gi&aacute; tr&ecirc;n bao gồm</strong>&nbsp;: Hệ thống &acirc;m thanh , &aacute;nh s&aacute;ng, điều h&ograve;a, nước lọc r&oacute;t cốc (kh&ocirc;ng phải nước chai) , giấy b&uacute;t, bảng trắng, bảng Flipchart .&hellip;.</p>\n<p><strong>Gi&aacute; in Backdrop</strong>&nbsp;: 120.000 đ/m<sup>2&nbsp;</sup>(Gi&aacute; đ&atilde; bao gồm: in bạt, c&ocirc;ng treo, 10% Thuế GTGT), trong trường hợp qu&yacute; kh&aacute;ch tự mang bạt đến th&igrave; y&ecirc;u cầu c&oacute; nh&acirc;n vi&ecirc;n tự treo, nếu thu&ecirc; nh&acirc;n vi&ecirc;n nh&agrave; h&agrave;ng treo th&igrave; sẽ thu ph&iacute; l&agrave; 200.000 đ/ lần</p>\n<p><strong>M&agrave;n h&igrave;nh m&aacute;y chiếu</strong>: 1.200.000 đ/ ng&agrave;y (Thu&ecirc; ri&ecirc;ng mang ra ngo&agrave;i)</p>\n<p><strong>Nước kho&aacute;ng đ&oacute;ng chai</strong>: 5000 đ/ chai 350 ml v&agrave; 12.000 đ/ chai 500 ml</p>\n<p><em>Nghỉ giữa giờ c&oacute; dịch vụ Teabreak (tr&agrave;, coffee, hoa quả, b&aacute;nh ngọt, sữa, nước hoa quả&hellip;.) theo c&aacute;c set t&ugrave;y thuộc lựa chọn của kh&aacute;ch h&agrave;ng : từ 40.000 trở l&ecirc;n.</em></p>', '2023-07-05 18:50:55', '2023-07-05 18:50:55'),
(89, 'rooms', 'price', 11, 'en', '7000000', '2023-07-05 18:50:55', '2023-07-05 18:50:55'),
(90, 'rooms', 'title', 9, 'en', 'JUNIOR TWIN ROOM', '2023-07-05 18:55:09', '2023-07-05 18:55:09'),
(91, 'rooms', 'desc', 9, 'en', 'Room area: About 30m2 Room with 2 beds (1m2) With window overlooking the city, nice Viewer The room is equipped with free wifi, cable TV ...', '2023-07-05 18:55:09', '2023-07-05 18:55:09'),
(92, 'rooms', 'content', 9, 'en', '<ul>\n<li>Room size: About 30m2</li>\n<li>Room with 2 beds (1m2)</li>\n<li>Has a window overlooking the city, beautiful Viewer</li>\n<li>The room is equipped with free wifi, high definition cable TV, with Korean channels</li>\n<li>Room rate includes: &nbsp; 10% VAT, Tea, instant coffee, 2 free bottles of filtered water, Free Bufed Breakfast at the restaurant on the 15th floor of the Hotel<br><br><br><br><br></li>\n</ul>', '2023-07-05 18:55:09', '2023-07-05 18:55:09'),
(93, 'rooms', 'price', 9, 'en', '1000000', '2023-07-05 18:55:09', '2023-07-05 18:55:09'),
(94, 'rooms', 'title', 8, 'en', 'SUITE ROOM', '2023-07-05 18:57:15', '2023-07-05 18:57:15'),
(95, 'rooms', 'desc', 8, 'en', 'Room area: About 60m2 Room with 1 big bed (2m2 x 2m) With window overlooking the city, nice Viewer Room equipped with free wifi, TV…', '2023-07-05 18:57:15', '2023-07-05 18:57:15'),
(96, 'rooms', 'content', 8, 'en', '<ul>\n<li>Room size: About 60m2</li>\n<li>Room with 1 beds (2m2)</li>\n<li>Has a window overlooking the city, beautiful Viewer</li>\n<li>The room is equipped with free wifi, high definition cable TV, with Korean channels</li>\n<li>Room rate includes: &nbsp; 10% VAT, Tea, instant coffee, 2 free bottles of filtered water, Free Bufed Breakfast at the restaurant on the 15th floor of the Hotel</li>\n</ul>', '2023-07-05 18:57:15', '2023-07-05 18:57:15'),
(97, 'rooms', 'price', 8, 'en', '1800000', '2023-07-05 18:57:15', '2023-07-05 18:57:15'),
(98, 'rooms', 'title', 7, 'en', 'VIP ROOM', '2023-07-05 18:58:13', '2023-07-05 18:58:13'),
(99, 'rooms', 'desc', 7, 'en', 'Room area: About 30m2 Room with 1 bed (2m2 x 2m) With a window overlooking the city, nice Viewer The room is equipped with free wifi, TV …', '2023-07-05 18:58:13', '2023-07-05 18:58:13'),
(100, 'rooms', 'content', 7, 'en', '<ul>\n<li>Room size: About 30m2</li>\n<li>Room with 2 beds (2m2)</li>\n<li>Has a window overlooking the city, beautiful Viewer</li>\n<li>The room is equipped with free wifi, high definition cable TV, with Korean channels</li>\n<li>Room rate includes: &nbsp; 10% VAT, Tea, instant coffee, 2 free bottles of filtered water, Free Bufed Breakfast at the restaurant on the 15th floor of the Hotel</li>\n</ul>', '2023-07-05 18:58:13', '2023-07-05 18:58:13'),
(101, 'rooms', 'price', 7, 'en', '1300000', '2023-07-05 18:58:13', '2023-07-05 18:58:13'),
(102, 'rooms', 'title', 6, 'en', 'Booking ROOM', '2023-07-05 18:59:24', '2023-07-05 19:00:26'),
(103, 'rooms', 'desc', 6, 'en', 'Room area: About 30m2 Room with 2 large beds (1m8 x 2m) With a window overlooking the city, nice Viewer The room is equipped with free wifi, …', '2023-07-05 18:59:24', '2023-07-05 19:00:26'),
(104, 'rooms', 'content', 6, 'en', '<ul>\n<li>Room size: About 30m2</li>\n<li>Room with 2 beds (1m8)</li>\n<li>Has a window overlooking the city, beautiful Viewer</li>\n<li>The room is equipped with free wifi, high definition cable TV, with Korean channels</li>\n<li>Room rate includes: &nbsp; 10% VAT, Tea, instant coffee, 2 free bottles of filtered water, Free Bufed Breakfast at the restaurant on the 15th floor of the Hotel</li>\n</ul>', '2023-07-05 18:59:24', '2023-07-05 19:00:26'),
(105, 'rooms', 'price', 6, 'en', '1400000', '2023-07-05 18:59:24', '2023-07-05 18:59:24'),
(106, 'rooms', 'title', 5, 'en', 'FAMILY ROOM', '2023-07-05 19:01:26', '2023-07-05 19:01:26'),
(107, 'rooms', 'desc', 5, 'en', 'Room area: About 30m2 The room has 1 big bed (1m8 x 2m) and 1 single bed 1m2 With a window overlooking the city, nice Viewer The room is equipped with…', '2023-07-05 19:01:26', '2023-07-05 19:01:26'),
(108, 'rooms', 'content', 5, 'en', '<ul>\n<li>Room size: About 30m2</li>\n<li>Room with 1 beds (1m8)</li>\n<li>Has a window overlooking the city, beautiful Viewer</li>\n<li>The room is equipped with free wifi, high definition cable TV, with Korean channels</li>\n<li>Room rate includes: &nbsp; 10% VAT, Tea, instant coffee, 2 free bottles of filtered water, Free Bufed Breakfast at the restaurant on the 15th floor of the Hotel</li>\n</ul>', '2023-07-05 19:01:26', '2023-07-05 19:01:26'),
(109, 'rooms', 'price', 5, 'en', '1300000', '2023-07-05 19:01:26', '2023-07-05 19:01:26'),
(110, 'rooms', 'title', 4, 'en', 'TRIPLE ROOM', '2023-07-05 19:02:15', '2023-07-05 19:02:15'),
(111, 'rooms', 'desc', 4, 'en', 'Room area: About 30m2 The room has 1 big bed (1m8 x 2m) and 1 single bed 1m2 With a window overlooking the city, nice Viewer The room is equipped with…', '2023-07-05 19:02:15', '2023-07-05 19:02:15'),
(112, 'rooms', 'content', 4, 'en', '<ul>\n<li>Room size: About 30m2</li>\n<li>Room with 3 beds (1m2)</li>\n<li>Has a window overlooking the city, beautiful Viewer</li>\n<li>The room is equipped with free wifi, high definition cable TV, with Korean channels</li>\n<li>Room rate includes: &nbsp; 10% VAT, Tea, instant coffee, 2 free bottles of filtered water, Free Bufed Breakfast at the restaurant on the 15th floor of the Hotel</li>\n</ul>', '2023-07-05 19:02:15', '2023-07-05 19:02:15'),
(113, 'rooms', 'price', 4, 'en', '1300000', '2023-07-05 19:02:15', '2023-07-05 19:02:15'),
(114, 'rooms', 'title', 3, 'en', 'DELUXE ROOM', '2023-07-05 19:03:10', '2023-07-05 19:03:10'),
(115, 'rooms', 'desc', 3, 'en', 'Room area: About 30m2 Room with 1 bed (1m8 x 2m) With window overlooking the city, nice Viewer The room is equipped with free wifi, high-speed cable TV…', '2023-07-05 19:03:10', '2023-07-05 19:03:10'),
(116, 'rooms', 'content', 3, 'en', '<ul>\n<li>Room size: About 30m2</li>\n<li>Room with 1 beds (1m8)</li>\n<li>Has a window overlooking the city, beautiful Viewer</li>\n<li>The room is equipped with free wifi, high definition cable TV, with Korean channels</li>\n<li>Room rate includes: &nbsp; 10% VAT, Tea, instant coffee, 2 free bottles of filtered water, Free Bufed Breakfast at the restaurant on the 15th floor of the Hotel</li>\n</ul>', '2023-07-05 19:03:10', '2023-07-05 19:03:10'),
(117, 'rooms', 'price', 3, 'en', '1000000', '2023-07-05 19:03:10', '2023-07-05 19:03:10'),
(118, 'collections', 'title', 4, 'en', 'Meeting', '2023-07-05 19:04:13', '2023-07-05 19:04:13'),
(119, 'collections', 'desc', 4, 'en', 'Meeting', '2023-07-05 19:04:13', '2023-07-05 19:04:13'),
(120, 'collections', 'title', 3, 'en', 'Vip Room', '2023-07-05 19:04:29', '2023-07-05 19:04:29'),
(121, 'collections', 'desc', 3, 'en', 'Vip Room', '2023-07-05 19:04:29', '2023-07-05 19:04:29'),
(122, 'collections', 'title', 2, 'en', 'Single room', '2023-07-05 19:04:45', '2023-07-05 19:04:45'),
(123, 'collections', 'desc', 2, 'en', 'Single room', '2023-07-05 19:04:45', '2023-07-05 19:04:45'),
(124, 'cuisines', 'title', 1, 'en', 'Fried noodles', '2023-07-05 19:15:15', '2023-07-05 19:15:15'),
(125, 'cuisines', 'desc', 1, 'en', 'Fried noodles', '2023-07-05 19:15:15', '2023-07-05 19:15:15'),
(126, 'cuisines', 'price', 1, 'en', '80000', '2023-07-05 19:15:15', '2023-07-05 19:15:15'),
(127, 'cuisines', 'content', 1, 'en', '<p>Fried noodles</p>', '2023-07-05 19:15:15', '2023-07-05 19:15:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
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
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
