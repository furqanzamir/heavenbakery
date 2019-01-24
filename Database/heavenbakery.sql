-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2019 at 07:38 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `heavenbakery`
--

-- --------------------------------------------------------

--
-- Table structure for table `hb_commentmeta`
--

DROP TABLE IF EXISTS `hb_commentmeta`;
CREATE TABLE `hb_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hb_comments`
--

DROP TABLE IF EXISTS `hb_comments`;
CREATE TABLE `hb_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hb_comments`
--

INSERT INTO `hb_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 106, '', '', '', '', '2019-01-13 06:05:06', '2019-01-13 06:05:06', 'Payment recovery processed', 0, '1', '', 'rpress_payment_note', 0, 0),
(2, 106, '', '', '', '', '2019-01-13 10:12:37', '2019-01-13 10:12:37', 'Status changed from Pending to Complete', 0, '1', '', 'rpress_payment_note', 0, 1),
(3, 106, '', '', '', '', '2019-01-13 10:13:41', '2019-01-13 10:13:41', 'After payment actions processed.', 0, '1', '', 'rpress_payment_note', 0, 0),
(4, 83, '', '', '', '', '2019-01-20 08:04:01', '2019-01-20 08:04:01', 'Status changed from Pending to Abandoned', 0, '1', '', 'rpress_payment_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hb_db7_forms`
--

DROP TABLE IF EXISTS `hb_db7_forms`;
CREATE TABLE `hb_db7_forms` (
  `form_id` bigint(20) NOT NULL,
  `form_post_id` bigint(20) NOT NULL,
  `form_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hb_links`
--

DROP TABLE IF EXISTS `hb_links`;
CREATE TABLE `hb_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hb_options`
--

DROP TABLE IF EXISTS `hb_options`;
CREATE TABLE `hb_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hb_options`
--

INSERT INTO `hb_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/heavenbakery', 'yes'),
(2, 'home', 'http://localhost/heavenbakery', 'yes'),
(3, 'blogname', 'Heaven Bakery', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'furqancsit@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:97:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"fooditems/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?addon_category=$matches[1]&feed=$matches[2]\";s:52:\"fooditems/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?addon_category=$matches[1]&feed=$matches[2]\";s:33:\"fooditems/category/(.+?)/embed/?$\";s:47:\"index.php?addon_category=$matches[1]&embed=true\";s:45:\"fooditems/category/(.+?)/page/?([0-9]{1,})/?$\";s:54:\"index.php?addon_category=$matches[1]&paged=$matches[2]\";s:27:\"fooditems/category/(.+?)/?$\";s:36:\"index.php?addon_category=$matches[1]\";s:54:\"fooditems/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?fooditem_tag=$matches[1]&feed=$matches[2]\";s:49:\"fooditems/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?fooditem_tag=$matches[1]&feed=$matches[2]\";s:30:\"fooditems/tag/([^/]+)/embed/?$\";s:45:\"index.php?fooditem_tag=$matches[1]&embed=true\";s:42:\"fooditems/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?fooditem_tag=$matches[1]&paged=$matches[2]\";s:24:\"fooditems/tag/([^/]+)/?$\";s:34:\"index.php?fooditem_tag=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=9&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:36:\"acf-repeater-master/acf-repeater.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";i:4;s:45:\"enable-media-replace/enable-media-replace.php\";i:5;s:51:\"exclude-pages-from-menu/exclude-pages-from-menu.php\";i:6;s:28:\"restropress/restro-press.php\";i:7;s:53:\"simple-custom-post-order/simple-custom-post-order.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'heaven-bakery', 'yes'),
(41, 'stylesheet', 'heaven-bakery', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:18:\"scporder_uninstall\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '9', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'hb_user_roles', 'a:9:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:124:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:17:\"view_shop_reports\";b:1;s:24:\"view_shop_sensitive_data\";b:1;s:19:\"export_shop_reports\";b:1;s:21:\"manage_shop_discounts\";b:1;s:20:\"manage_shop_settings\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:18:\"view_product_stats\";b:1;s:15:\"import_products\";b:1;s:17:\"edit_shop_payment\";b:1;s:17:\"read_shop_payment\";b:1;s:19:\"delete_shop_payment\";b:1;s:18:\"edit_shop_payments\";b:1;s:25:\"edit_others_shop_payments\";b:1;s:21:\"publish_shop_payments\";b:1;s:26:\"read_private_shop_payments\";b:1;s:20:\"delete_shop_payments\";b:1;s:28:\"delete_private_shop_payments\";b:1;s:30:\"delete_published_shop_payments\";b:1;s:27:\"delete_others_shop_payments\";b:1;s:26:\"edit_private_shop_payments\";b:1;s:28:\"edit_published_shop_payments\";b:1;s:25:\"manage_shop_payment_terms\";b:1;s:23:\"edit_shop_payment_terms\";b:1;s:25:\"delete_shop_payment_terms\";b:1;s:25:\"assign_shop_payment_terms\";b:1;s:23:\"view_shop_payment_stats\";b:1;s:20:\"import_shop_payments\";b:1;s:18:\"edit_shop_discount\";b:1;s:18:\"read_shop_discount\";b:1;s:20:\"delete_shop_discount\";b:1;s:19:\"edit_shop_discounts\";b:1;s:26:\"edit_others_shop_discounts\";b:1;s:22:\"publish_shop_discounts\";b:1;s:27:\"read_private_shop_discounts\";b:1;s:21:\"delete_shop_discounts\";b:1;s:29:\"delete_private_shop_discounts\";b:1;s:31:\"delete_published_shop_discounts\";b:1;s:28:\"delete_others_shop_discounts\";b:1;s:27:\"edit_private_shop_discounts\";b:1;s:29:\"edit_published_shop_discounts\";b:1;s:26:\"manage_shop_discount_terms\";b:1;s:24:\"edit_shop_discount_terms\";b:1;s:26:\"delete_shop_discount_terms\";b:1;s:26:\"assign_shop_discount_terms\";b:1;s:24:\"view_shop_discount_stats\";b:1;s:21:\"import_shop_discounts\";b:1;s:12:\"cfdb7_access\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop Manager\";s:12:\"capabilities\";a:90:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:1;s:12:\"delete_posts\";b:1;s:15:\"unfiltered_html\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:19:\"delete_others_pages\";b:1;s:19:\"delete_others_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:17:\"edit_others_posts\";b:1;s:10:\"edit_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:13:\"publish_pages\";b:1;s:13:\"publish_posts\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:17:\"view_shop_reports\";b:1;s:24:\"view_shop_sensitive_data\";b:1;s:19:\"export_shop_reports\";b:1;s:20:\"manage_shop_settings\";b:1;s:21:\"manage_shop_discounts\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:18:\"view_product_stats\";b:1;s:15:\"import_products\";b:1;s:17:\"edit_shop_payment\";b:1;s:17:\"read_shop_payment\";b:1;s:19:\"delete_shop_payment\";b:1;s:18:\"edit_shop_payments\";b:1;s:25:\"edit_others_shop_payments\";b:1;s:21:\"publish_shop_payments\";b:1;s:26:\"read_private_shop_payments\";b:1;s:20:\"delete_shop_payments\";b:1;s:28:\"delete_private_shop_payments\";b:1;s:30:\"delete_published_shop_payments\";b:1;s:27:\"delete_others_shop_payments\";b:1;s:26:\"edit_private_shop_payments\";b:1;s:28:\"edit_published_shop_payments\";b:1;s:25:\"manage_shop_payment_terms\";b:1;s:23:\"edit_shop_payment_terms\";b:1;s:25:\"delete_shop_payment_terms\";b:1;s:25:\"assign_shop_payment_terms\";b:1;s:23:\"view_shop_payment_stats\";b:1;s:20:\"import_shop_payments\";b:1;s:18:\"edit_shop_discount\";b:1;s:18:\"read_shop_discount\";b:1;s:20:\"delete_shop_discount\";b:1;s:19:\"edit_shop_discounts\";b:1;s:26:\"edit_others_shop_discounts\";b:1;s:22:\"publish_shop_discounts\";b:1;s:27:\"read_private_shop_discounts\";b:1;s:21:\"delete_shop_discounts\";b:1;s:29:\"delete_private_shop_discounts\";b:1;s:31:\"delete_published_shop_discounts\";b:1;s:28:\"delete_others_shop_discounts\";b:1;s:27:\"edit_private_shop_discounts\";b:1;s:29:\"edit_published_shop_discounts\";b:1;s:26:\"manage_shop_discount_terms\";b:1;s:24:\"edit_shop_discount_terms\";b:1;s:26:\"delete_shop_discount_terms\";b:1;s:26:\"assign_shop_discount_terms\";b:1;s:24:\"view_shop_discount_stats\";b:1;s:21:\"import_shop_discounts\";b:1;}}s:15:\"shop_accountant\";a:2:{s:4:\"name\";s:15:\"Shop Accountant\";s:12:\"capabilities\";a:8:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:0;s:12:\"delete_posts\";b:0;s:13:\"edit_products\";b:1;s:21:\"read_private_products\";b:1;s:17:\"view_shop_reports\";b:1;s:19:\"export_shop_reports\";b:1;s:18:\"edit_shop_payments\";b:1;}}s:11:\"shop_worker\";a:2:{s:4:\"name\";s:11:\"Shop Worker\";s:12:\"capabilities\";a:61:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:0;s:12:\"upload_files\";b:1;s:12:\"delete_posts\";b:0;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:18:\"view_product_stats\";b:1;s:15:\"import_products\";b:1;s:17:\"edit_shop_payment\";b:1;s:17:\"read_shop_payment\";b:1;s:19:\"delete_shop_payment\";b:1;s:18:\"edit_shop_payments\";b:1;s:25:\"edit_others_shop_payments\";b:1;s:21:\"publish_shop_payments\";b:1;s:26:\"read_private_shop_payments\";b:1;s:20:\"delete_shop_payments\";b:1;s:28:\"delete_private_shop_payments\";b:1;s:30:\"delete_published_shop_payments\";b:1;s:27:\"delete_others_shop_payments\";b:1;s:26:\"edit_private_shop_payments\";b:1;s:28:\"edit_published_shop_payments\";b:1;s:25:\"manage_shop_payment_terms\";b:1;s:23:\"edit_shop_payment_terms\";b:1;s:25:\"delete_shop_payment_terms\";b:1;s:25:\"assign_shop_payment_terms\";b:1;s:23:\"view_shop_payment_stats\";b:1;s:20:\"import_shop_payments\";b:1;s:18:\"edit_shop_discount\";b:1;s:18:\"read_shop_discount\";b:1;s:20:\"delete_shop_discount\";b:1;s:19:\"edit_shop_discounts\";b:1;s:26:\"edit_others_shop_discounts\";b:1;s:22:\"publish_shop_discounts\";b:1;s:27:\"read_private_shop_discounts\";b:1;s:21:\"delete_shop_discounts\";b:1;s:29:\"delete_private_shop_discounts\";b:1;s:31:\"delete_published_shop_discounts\";b:1;s:28:\"delete_others_shop_discounts\";b:1;s:27:\"edit_private_shop_discounts\";b:1;s:29:\"edit_published_shop_discounts\";b:1;s:26:\"manage_shop_discount_terms\";b:1;s:24:\"edit_shop_discount_terms\";b:1;s:26:\"delete_shop_discount_terms\";b:1;s:26:\"assign_shop_discount_terms\";b:1;s:24:\"view_shop_discount_stats\";b:1;s:21:\"import_shop_discounts\";b:1;}}s:11:\"shop_vendor\";a:2:{s:4:\"name\";s:11:\"Shop Vendor\";s:12:\"capabilities\";a:11:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:0;s:12:\"upload_files\";b:1;s:12:\"delete_posts\";b:0;s:12:\"edit_product\";b:1;s:13:\"edit_products\";b:1;s:14:\"delete_product\";b:1;s:15:\"delete_products\";b:1;s:16:\"publish_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"assign_product_terms\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:16:\"address-location\";a:1:{i:0;s:13:\"custom_html-2\";}s:15:\"contact-details\";a:1:{i:0;s:13:\"custom_html-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:626:\"<div class=\"out-details\">\r\n          <h4>Our Details</h4>\r\n          <div class=\"dt-bd\"></div>\r\n          <h6>Address</h6>\r\n          <p>7890 Haven Ave, Ste 11\r\n          Rancho Cucamonga, California \r\n          91730</p>\r\n          <div class=\"dt-bd\"></div>\r\n\r\n          <h6>Opening Hours</h6>\r\n          <p>Mon-Fri  4:30am – 6:00pm\r\n          Saturday  6:00am – 6:00pm\r\n          Sunday  Closed</p>\r\n          <div class=\"dt-bd\"></div>\r\n\r\n          <h6>Phone</h6>\r\n          <p>(909) 980-1819</p>\r\n          <div class=\"dt-bd\"></div>\r\n\r\n          <h6>Email</h6>\r\n          <p>heavenbakery@gmail.com</p>\r\n\r\n        </div>\";}i:3;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:626:\"<div class=\"out-details\">\r\n          <h4>Our Details</h4>\r\n          <div class=\"dt-bd\"></div>\r\n          <h6>Address</h6>\r\n          <p>7890 Haven Ave, Ste 11\r\n          Rancho Cucamonga, California \r\n          91730</p>\r\n          <div class=\"dt-bd\"></div>\r\n\r\n          <h6>Opening Hours</h6>\r\n          <p>Mon-Fri  4:30am – 6:00pm\r\n          Saturday  6:00am – 6:00pm\r\n          Sunday  Closed</p>\r\n          <div class=\"dt-bd\"></div>\r\n\r\n          <h6>Phone</h6>\r\n          <p>(909) 980-1819</p>\r\n          <div class=\"dt-bd\"></div>\r\n\r\n          <h6>Email</h6>\r\n          <p>heavenbakery@gmail.com</p>\r\n\r\n        </div>\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:8:{i:1548356852;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1548357982;a:1:{s:29:\"rpress_daily_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1548390297;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1548396452;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1548439664;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1548439804;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1548876382;a:1:{s:30:\"rpress_weekly_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1546106876;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.0.3-partial-2.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.3\";s:7:\"version\";s:5:\"5.0.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"5.0.2\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.0.3-partial-2.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.3-rollback-2.zip\";}s:7:\"current\";s:5:\"5.0.3\";s:7:\"version\";s:5:\"5.0.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"5.0.2\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1548350304;s:15:\"version_checked\";s:5:\"5.0.2\";s:12:\"translations\";a:0:{}}', 'no'),
(124, 'can_compress_scripts', '1', 'no'),
(136, 'current_theme', 'Heaven Bakery', 'yes'),
(137, 'theme_mods_heaven-bakery', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:10:\"sociallink\";i:3;s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:11;s:16:\"header_textcolor\";s:5:\"blank\";}', 'yes'),
(138, 'theme_switched', '', 'yes'),
(141, 'recently_activated', 'a:0:{}', 'yes'),
(147, 'acf_version', '5.7.9', 'yes'),
(148, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1546106958;s:7:\"version\";s:5:\"5.1.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(150, 'category_children', 'a:0:{}', 'yes'),
(159, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:2;}}', 'yes'),
(165, 'cpto_options', 'a:7:{s:23:\"show_reorder_interfaces\";a:3:{s:4:\"post\";s:4:\"show\";s:10:\"attachment\";s:4:\"show\";s:8:\"wp_block\";s:4:\"show\";}s:8:\"autosort\";i:1;s:9:\"adminsort\";i:1;s:18:\"use_query_ASC_DESC\";i:1;s:17:\"archive_drag_drop\";i:1;s:10:\"capability\";s:14:\"manage_options\";s:21:\"navigation_sort_apply\";i:1;}', 'yes'),
(166, 'CPT_configured', 'TRUE', 'yes'),
(169, 'scporder_install', '1', 'yes'),
(170, 'scporder_options', 'a:2:{s:7:\"objects\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:4:\"tags\";s:0:\"\";}', 'yes'),
(177, 'widget_locationaddress', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(235, 'rpress_settings', 'a:17:{s:13:\"purchase_page\";s:2:\"49\";s:12:\"success_page\";s:2:\"50\";s:12:\"failure_page\";s:2:\"51\";s:18:\"order_history_page\";s:2:\"52\";s:8:\"gateways\";a:1:{s:6:\"paypal\";s:1:\"1\";}s:15:\"default_gateway\";s:6:\"paypal\";s:14:\"accepted_cards\";a:3:{s:10:\"mastercard\";s:10:\"Mastercard\";s:4:\"visa\";s:4:\"Visa\";s:6:\"paypal\";s:6:\"PayPal\";}s:17:\"allow_using_style\";s:1:\"1\";s:12:\"button_style\";s:6:\"button\";s:14:\"checkout_color\";s:5:\"white\";s:18:\"prices_include_tax\";s:3:\"yes\";s:20:\"checkout_include_tax\";s:2:\"no\";s:15:\"enable_delivery\";s:1:\"1\";s:13:\"enable_pickup\";s:1:\"1\";s:8:\"tax_rate\";s:1:\"3\";s:14:\"email_template\";s:7:\"default\";s:10:\"email_logo\";s:65:\"http://localhost/heavenbakery/wp-content/uploads/2018/12/logo.png\";}', 'yes'),
(236, 'rpress_use_php_sessions', '1', 'yes'),
(237, 'rpress_version', '1.0.4', 'yes'),
(240, 'hb_rpress_customers_db_version', '1.0', 'yes'),
(241, 'hb_rpress_customermeta_db_version', '1.0', 'yes'),
(244, 'rpress_completed_upgrades', 'a:5:{i:0;s:21:\"upgrade_payment_taxes\";i:1;s:37:\"upgrade_customer_payments_association\";i:2;s:21:\"upgrade_user_api_keys\";i:3;s:25:\"remove_refunded_sale_logs\";i:4;s:29:\"update_file_fooditem_log_data\";}', 'yes'),
(245, 'hb_rpress_order_notification_db_version', '1.0', 'yes'),
(246, '_transient_rpress_cache_excluded_uris', 'a:4:{i:0;s:4:\"p=49\";i:1;s:4:\"p=50\";i:2;s:9:\"/checkout\";i:3;s:22:\"/purchase-confirmation\";}', 'yes'),
(247, '_rpress_table_check', '1548576255', 'yes'),
(248, 'rpress_tracking_notice', '1', 'yes'),
(260, 'taxonomy_term_8', 'a:2:{s:5:\"price\";s:0:\"\";s:15:\"enable_quantity\";s:1:\"0\";}', 'yes'),
(284, 'rpress_earnings_total', '850', 'yes'),
(306, 'food-category_children', 'a:0:{}', 'yes'),
(327, 'taxonomy_term_22', 'a:2:{s:5:\"price\";s:2:\"20\";s:15:\"enable_quantity\";s:1:\"0\";}', 'yes'),
(329, 'taxonomy_term_21', 'a:2:{s:5:\"price\";s:2:\"10\";s:15:\"enable_quantity\";s:1:\"0\";}', 'yes'),
(331, 'taxonomy_term_23', 'a:2:{s:5:\"price\";s:2:\"30\";s:15:\"enable_quantity\";s:1:\"0\";}', 'yes'),
(333, 'taxonomy_term_24', 'a:2:{s:5:\"price\";s:2:\"30\";s:15:\"enable_quantity\";s:1:\"0\";}', 'yes'),
(335, 'taxonomy_term_25', 'a:2:{s:5:\"price\";s:2:\"50\";s:15:\"enable_quantity\";s:1:\"0\";}', 'yes'),
(367, 'taxonomy_term_31', 'a:2:{s:5:\"price\";s:2:\"20\";s:15:\"enable_quantity\";s:1:\"1\";}', 'yes'),
(369, 'taxonomy_term_32', 'a:2:{s:5:\"price\";s:2:\"30\";s:15:\"enable_quantity\";s:1:\"1\";}', 'yes'),
(371, 'taxonomy_term_33', 'a:2:{s:5:\"price\";s:2:\"40\";s:15:\"enable_quantity\";s:1:\"1\";}', 'yes'),
(373, 'taxonomy_term_34', 'a:2:{s:5:\"price\";s:2:\"50\";s:15:\"enable_quantity\";s:1:\"1\";}', 'yes'),
(375, 'taxonomy_term_30', 'a:2:{s:5:\"price\";s:2:\"10\";s:15:\"enable_quantity\";s:1:\"1\";}', 'yes'),
(384, 'addon_category_children', 'a:1:{i:27;a:5:{i:0;i:30;i:1;i:31;i:2;i:32;i:3;i:33;i:4;i:34;}}', 'yes'),
(387, 'rpress_tax_rates', 'a:1:{i:0;a:4:{s:7:\"country\";s:2:\"PK\";s:5:\"state\";s:5:\"sindh\";s:6:\"global\";s:1:\"1\";s:4:\"rate\";s:1:\"3\";}}', 'yes'),
(414, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1548350309;s:7:\"checked\";a:4:{s:13:\"heaven-bakery\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.2\";s:15:\"twentyseventeen\";s:3:\"2.0\";s:13:\"twentysixteen\";s:3:\"1.8\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(468, '_transient_timeout_rpress_check_protection_files', '1548433500', 'no'),
(469, '_transient_rpress_check_protection_files', '1', 'no'),
(473, '_transient_timeout_plugin_slugs', '1548438090', 'no'),
(474, '_transient_plugin_slugs', 'a:10:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"acf-repeater-master/acf-repeater.php\";i:2;s:19:\"akismet/akismet.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";i:5;s:45:\"enable-media-replace/enable-media-replace.php\";i:6;s:51:\"exclude-pages-from-menu/exclude-pages-from-menu.php\";i:7;s:9:\"hello.php\";i:8;s:28:\"restropress/restro-press.php\";i:9;s:53:\"simple-custom-post-order/simple-custom-post-order.php\";}', 'no'),
(475, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1548361066', 'no'),
(476, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4544;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3240;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2603;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2468;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1902;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1711;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1699;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1465;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1422;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1421;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1421;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1351;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1288;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1279;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1129;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1086;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1072;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1044;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:971;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:911;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:842;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:828;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:819;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:754;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:720;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:711;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:705;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:700;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:693;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:683;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:676;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:673;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:657;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:649;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:637;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:635;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:622;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:612;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:612;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:609;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:576;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:561;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:554;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:554;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:551;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:545;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:528;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:523;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:523;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:521;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:517;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:506;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:502;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:491;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:491;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:487;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:469;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:468;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:463;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:455;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:452;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:451;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:450;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:431;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:429;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:422;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:419;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:417;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:412;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:399;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:396;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:393;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:382;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:377;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:376;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:376;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:375;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:374;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:360;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:360;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:358;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:353;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:350;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:347;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:344;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:341;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:340;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:337;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:321;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:318;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:316;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:315;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:314;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:311;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:310;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:306;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:306;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:304;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:304;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:303;}}', 'no');
INSERT INTO `hb_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(480, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1548351686;s:7:\"checked\";a:10:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.7.9\";s:36:\"acf-repeater-master/acf-repeater.php\";s:5:\"2.0.1\";s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:7:\"1.2.4.5\";s:45:\"enable-media-replace/enable-media-replace.php\";s:5:\"3.2.7\";s:51:\"exclude-pages-from-menu/exclude-pages-from-menu.php\";s:3:\"2.0\";s:9:\"hello.php\";s:5:\"1.7.1\";s:28:\"restropress/restro-press.php\";s:5:\"1.0.5\";s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:5:\"2.4.0\";}s:8:\"response\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.7.10\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.9\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"acf-repeater-master/acf-repeater.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:12:\"acf-repeater\";s:6:\"plugin\";s:36:\"acf-repeater-master/acf-repeater.php\";s:11:\"new_version\";s:5:\"2.1.0\";s:3:\"url\";s:36:\"http://www.advancedcustomfields.com/\";s:6:\"tested\";s:5:\"4.9.0\";s:7:\"package\";s:183:\"https://connect.advancedcustomfields.com/v2/plugins/download?token=eyJwIjoicmVwZWF0ZXIiLCJrIjoiUUpGNy1MNElYLVVDTlAtUkYyVyIsIndwX3VybCI6Imh0dHA6XC9cL2xvY2FsaG9zdFwvaGVhdmVuYmFrZXJ5In0=\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/contact-form-cfdb7\";s:4:\"slug\";s:18:\"contact-form-cfdb7\";s:6:\"plugin\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:11:\"new_version\";s:7:\"1.2.4.5\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/contact-form-cfdb7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-cfdb7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-256x256.png?rev=1619878\";s:2:\"1x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-128x128.png?rev=1619878\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/contact-form-cfdb7/assets/banner-772x250.png?rev=1619902\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"enable-media-replace/enable-media-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/enable-media-replace\";s:4:\"slug\";s:20:\"enable-media-replace\";s:6:\"plugin\";s:45:\"enable-media-replace/enable-media-replace.php\";s:11:\"new_version\";s:5:\"3.2.7\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/enable-media-replace/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/enable-media-replace.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/enable-media-replace/assets/icon-256x256.png?rev=1940728\";s:2:\"1x\";s:73:\"https://ps.w.org/enable-media-replace/assets/icon-128x128.png?rev=1940728\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/enable-media-replace/assets/banner-1544x500.png?rev=1940728\";s:2:\"1x\";s:75:\"https://ps.w.org/enable-media-replace/assets/banner-772x250.png?rev=1940728\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"exclude-pages-from-menu/exclude-pages-from-menu.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/exclude-pages-from-menu\";s:4:\"slug\";s:23:\"exclude-pages-from-menu\";s:6:\"plugin\";s:51:\"exclude-pages-from-menu/exclude-pages-from-menu.php\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/exclude-pages-from-menu/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/exclude-pages-from-menu.2.0.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:74:\"https://s.w.org/plugins/geopattern-icon/exclude-pages-from-menu_fafafa.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/exclude-pages-from-menu/assets/banner-772x250.png?rev=1647349\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:28:\"restropress/restro-press.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/restropress\";s:4:\"slug\";s:11:\"restropress\";s:6:\"plugin\";s:28:\"restropress/restro-press.php\";s:11:\"new_version\";s:5:\"1.0.5\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/restropress/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/restropress.1.0.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:64:\"https://ps.w.org/restropress/assets/icon-128x128.png?rev=1938507\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/restropress/assets/banner-772x250.png?rev=1938507\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"simple-custom-post-order/simple-custom-post-order.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/simple-custom-post-order\";s:4:\"slug\";s:24:\"simple-custom-post-order\";s:6:\"plugin\";s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:11:\"new_version\";s:5:\"2.4.0\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/simple-custom-post-order/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/simple-custom-post-order.2.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/simple-custom-post-order/assets/icon-256x256.jpg?rev=1859717\";s:2:\"1x\";s:77:\"https://ps.w.org/simple-custom-post-order/assets/icon-256x256.jpg?rev=1859717\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/simple-custom-post-order/assets/banner-772x250.jpg?rev=1859717\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(481, 'cfdb7_view_install_date', '2019-01-24 17:41:30', 'yes'),
(483, '_site_transient_timeout_theme_roots', '1548355065', 'no'),
(484, '_site_transient_theme_roots', 'a:4:{s:13:\"heaven-bakery\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `hb_postmeta`
--

DROP TABLE IF EXISTS `hb_postmeta`;
CREATE TABLE `hb_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hb_postmeta`
--

INSERT INTO `hb_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 5, '_form', '<div class=\"contact-form\">\n<h4>Get in Touch</h4>\n<hr>\n<div class=\"row\">\n<div class=\"col-lg-3 col-sm-3\">\n              <label>Name *</label></div>\n<div class=\"col-lg-9 col-sm-9\">\n<div class=\"flname\">\n       [text* first-name \"First Name...\"][text* last-name \"Last Name...\"]\n</div>\n</div>\n</div>\n<div class=\"row\">\n       <div class=\"col-lg-3 col-sm-3\">\n             <label>Email *</label></div>\n       <div class=\"col-lg-9 col-sm-9\">\n             [email* email \"Enter Email ...\"]\n       </div>\n</div>\n<div class=\"row\">\n<div class=\"col-lg-3 col-sm-3\">\n              <label>Phone no *</label></div>\n<div class=\"col-lg-9 col-sm-9\">\n              [tel* tel \"Phone no ...\"]\n</div>\n</div>\n<div class=\"row\">\n<div class=\"col-lg-3 col-sm-3\">\n              <label>Question or Comments *</label></div>\n<div class=\"col-lg-9 col-sm-9\">\n              [textarea question-comments \"Enter You Comments Here...\"]</div>\n</div>\n<div class=\"row\">\n<div class=\"col-lg-3 col-sm-3\">\n              <label></label></div>\n<div class=\"col-lg-9 col-sm-9\">\n              [submit class:btnsubmit \"CONTACT NOW\"]</div>\n</div>\n</div>'),
(4, 5, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"Heaven Bakery \"[your-subject]\"\";s:6:\"sender\";s:36:\"Heaven Bakery <furqancsit@gmail.com>\";s:9:\"recipient\";s:20:\"furqancsit@gmail.com\";s:4:\"body\";s:181:\"From: [your-name] <[email]>\nSubject: [your-subject]\n\nMessage Body:\n[question-comments]\n\n-- \nThis e-mail was sent from a contact form on Heaven Bakery (http://localhost/heavenbakery)\";s:18:\"additional_headers\";s:17:\"Reply-To: [email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(5, 5, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"Heaven Bakery \"[your-subject]\"\";s:6:\"sender\";s:36:\"Heaven Bakery <furqancsit@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:123:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Heaven Bakery (http://localhost/heavenbakery)\";s:18:\"additional_headers\";s:30:\"Reply-To: furqancsit@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(6, 5, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(7, 5, '_additional_settings', ''),
(8, 5, '_locale', 'en_US'),
(16, 9, '_edit_lock', '1547367140:1'),
(17, 11, '_wp_attached_file', '2018/12/logo.png'),
(18, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:140;s:6:\"height\";i:147;s:4:\"file\";s:16:\"2018/12/logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 11, '_wp_attachment_image_alt', 'Heaven Bakery'),
(20, 12, '_wp_trash_meta_status', 'publish'),
(21, 12, '_wp_trash_meta_time', '1546108815'),
(22, 13, '_menu_item_type', 'post_type'),
(23, 13, '_menu_item_menu_item_parent', '0'),
(24, 13, '_menu_item_object_id', '9'),
(25, 13, '_menu_item_object', 'page'),
(26, 13, '_menu_item_target', ''),
(27, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(28, 13, '_menu_item_xfn', ''),
(29, 13, '_menu_item_url', ''),
(40, 15, '_edit_lock', '1548347456:1'),
(41, 17, '_edit_lock', '1548002228:1'),
(42, 19, '_edit_lock', '1546183391:1'),
(43, 21, '_edit_lock', '1548355068:1'),
(54, 27, '_menu_item_type', 'post_type'),
(55, 27, '_menu_item_menu_item_parent', '0'),
(56, 27, '_menu_item_object_id', '15'),
(57, 27, '_menu_item_object', 'page'),
(58, 27, '_menu_item_target', ''),
(59, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(60, 27, '_menu_item_xfn', ''),
(61, 27, '_menu_item_url', ''),
(63, 28, '_menu_item_type', 'post_type'),
(64, 28, '_menu_item_menu_item_parent', '0'),
(65, 28, '_menu_item_object_id', '17'),
(66, 28, '_menu_item_object', 'page'),
(67, 28, '_menu_item_target', ''),
(68, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(69, 28, '_menu_item_xfn', ''),
(70, 28, '_menu_item_url', ''),
(72, 29, '_menu_item_type', 'post_type'),
(73, 29, '_menu_item_menu_item_parent', '0'),
(74, 29, '_menu_item_object_id', '19'),
(75, 29, '_menu_item_object', 'page'),
(76, 29, '_menu_item_target', ''),
(77, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(78, 29, '_menu_item_xfn', ''),
(79, 29, '_menu_item_url', ''),
(81, 30, '_menu_item_type', 'post_type'),
(82, 30, '_menu_item_menu_item_parent', '0'),
(83, 30, '_menu_item_object_id', '21'),
(84, 30, '_menu_item_object', 'page'),
(85, 30, '_menu_item_target', ''),
(86, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(87, 30, '_menu_item_xfn', ''),
(88, 30, '_menu_item_url', ''),
(90, 31, '_menu_item_type', 'custom'),
(91, 31, '_menu_item_menu_item_parent', '0'),
(92, 31, '_menu_item_object_id', '31'),
(93, 31, '_menu_item_object', 'custom'),
(94, 31, '_menu_item_target', ''),
(95, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(96, 31, '_menu_item_xfn', ''),
(97, 31, '_menu_item_url', 'https://www.facebook.com/'),
(99, 32, '_menu_item_type', 'custom'),
(100, 32, '_menu_item_menu_item_parent', '0'),
(101, 32, '_menu_item_object_id', '32'),
(102, 32, '_menu_item_object', 'custom'),
(103, 32, '_menu_item_target', ''),
(104, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(105, 32, '_menu_item_xfn', ''),
(106, 32, '_menu_item_url', 'https://www.instagram.com/'),
(108, 33, '_menu_item_type', 'custom'),
(109, 33, '_menu_item_menu_item_parent', '0'),
(110, 33, '_menu_item_object_id', '33'),
(111, 33, '_menu_item_object', 'custom'),
(112, 33, '_menu_item_target', ''),
(113, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(114, 33, '_menu_item_xfn', ''),
(115, 33, '_menu_item_url', 'https://www.pinterest.com/'),
(116, 44, '_form', '<div class=\"contactus\">\n	<div class=\"contact-form\">\n	<h4>Choose Cake Base</h4>\n	<hr/>\n	<table>\n		<tr>\n			<td><label>Cake Tier</label></td>\n			<td>[radio CakeTier default:1 \"One Tier\" \"Three Tier\"]</td>\n		</tr>\n		<tr>\n			<td><label>Cake Shape</label></td>\n			<td>[radio CakeShape default:1 \"CakeShape \" \"Cake Shape One\" \"Cake Shape Two\"]</td>\n		</tr>\n		<tr>\n			<td><label>Cake Size</label></td>\n			<td>[select CakeSize default:1 \"One\" \"Two\" \"Three\"]</td>\n		</tr>\n	</table>\n	<h4>Customise Flavours</h4>\n	<hr/>\n	<table>\n		<tr>\n			<td><label>Main Flavour *</label></td>\n			<td>[select ChooseOne  default:1 \"ChooseOne\" \"One\" \"Two\" \"Three\"]</td>\n		</tr>\n		<tr>\n			<td><label>Filling Flavour *</label></td>\n			<td>[select FillingFlavour default:1 \"FillingFlavour\" \"One\" \"Two\" \"Three\"]</td>\n		</tr>\n		<tr>\n			<td><label>Icing Flavour *</label></td>\n			<td>[select IcingFlavour default:1 \" IcingFlavour \" \"One\" \"Two\" \"Three\"]</td>\n		</tr>\n	</table>\n	<h4>Enter Design Details</h4>\n	<hr/>\n	\n\n	[radio ChooseaBaseDesign default:1  \"Standard Balloons & Confetti\" \"Standard Floral\" \"Standard Ribbon & Confetti\" \"Custom (Extra Charge)\"]\n	<p>Photos shown above are for providing a visual example of each design option only.<br/>To specify more details, please do so in the Additional Design/Theme Details section.</p>\n	[checkbox HandcraftedItemsonTop \"No, thank you\" \"Yes, I’ll provide them\" \"Yes, please make them (extra charges)\"]\n	<p>Cost to create handcrafted items will be based on the amount of items and complexity of design. For a quick quote on cost, please visit our bakery or Contact Us for details.</p>\n	[checkbox Whoisthecakefor \"Male\" \"Female\" \"Child\" \"Teen\" \"Adult\"]\n	<p>Check all that apply.</p>\n	<table>\n		<tr>\n			<td><label>List Prefered Cake Colours *</label></td>\n			<td>[text ListPreferedCakeColours placeholder \"Enter Colors Here...\"]</td>\n		</tr>\n		<tr>\n			<td><label>Write Cake Inscription:</label></td>\n			<td>[text WriteCakeInscription: placeholder \"Enter Inscription Here...\"]</td>\n		</tr>\n		<tr>\n			<td><label>Photo Example of Cake:</label></td>\n			<td>[file PhotoExampleofCake: filetypes:png|jpg|jpeg|gif]</td>\n		</tr>\n		<tr>\n			<td colspan=\"2\"><p>Upload any photo example of a cake design that you\'d like to copy for your cake. </br>You may also send a link in the field below.</p></td>\n		</tr>\n		<tr>\n			<td colspan=\"2\">[text EnterLink... placeholder \"Enter Link...\"]</td>\n		</tr>\n		<tr>\n			<td><label>Additional Design/Theme Details:</label></td>\n			<td>[textarea AdditionalDesignThemeDetails: placeholder \"Enter Details Here...\"]</td>\n		</tr>\n		<tr>\n			<td colspan=\"2\">\n				<p><stronge>0 of 450 max characters</stronge></p>\n				<p>Use this field if you have any additional comments regarding your cake such as Theme, Custom Design Details, etc. For instance, if a likeness is to be drawn, include descriptive information about the subject, such as hair length and color, facial hair, glasses, etc.  </p>\n			</td>\n		</tr>\n		<tr>\n			<td>Design Cost:</td>\n			<td>$0000</td>\n		</tr>\n	</table>\n	<h4>Choose Cake Base</h4>\n	<hr/>\n	<p>Actual costs may vary upon further discussion. All prices are subject to change without further notice.</p>\n	<table>\n		<tr>\n			<td>Cake Base</td>\n			<td>$17.75</td>\n		</tr>\n		<tr>\n			<td>Flavors, Fillings, etc.</td>\n			<td>$23.09</td>\n		</tr>\n		<tr>	\n			<td>Design</td>\n			<td>$5.33</td>\n		</tr>\n		<tr>	\n			<td>Total</td>\n			<td>$46.17</td>\n		</tr>\n	</table>\n	<h4>Delivery Details</h4>\n	<hr/>\n	<table>\n		<tr>\n			<td><label>Pick-up or Delivery?*</label></td>\n			<td>[checkbox Pick-uporDelivery \"Pick-up\" \"Delivery\"]</td>\n		</tr>\n		<tr>\n			<td><label>Date *</label></td>\n			<td>[date Date placeholder \"Choose Date\"]</td>\n		</tr>\n		<tr>\n			<td colspan=\"2\"><p>There is a 2-week notice required for all custom cake orders.</p></td>\n		</tr>\n		<tr>\n			<td><label>Time *</label></td>\n			<td>[text Time placeholder \"Choose Time\"]</td>\n		</tr>\n		<tr>\n			<td colspan=\"2\"><p>Only available during business hours.</p></td>\n		</tr>\n	</table>\n	<h4>Customer Details</h4>\n	<hr/>\n	<table>\n		<tr>\n			<td><label>First Name *</label></td>\n			<td>[text fnam placeholder \"First Name\"]</td>\n		</tr>\n		<tr>\n			<td><label>Last Name *</label></td>\n			<td>[text lname placeholder \"Last Name\"]</td>\n		</tr>\n		<tr>\n			<td><label>Email *</label></td>\n			<td>[email your-email placeholder \"Enter Email ....\"]</td>\n		</tr>\n		<tr>\n			<td><label>Phone No. *</label></td>\n			<td>[text PhoneNo. placeholder \"Phone No. *\"]</td>\n		</tr>\n		<tr>\n			<td><label>Address *</label></td>\n			<td>[textarea EnterFullAddresswithPostalCode placeholder \"Enter Full Address with Postal Code\"]</td>\n		</tr>\n		<tr>\n			<td colspan=\"2\"><hr/></td>\n		</tr>\n		<tr>\n			<td colspan=\"2\">[submit class:btnsubmit \"PLACE ORDER\"]</td>\n		</tr>\n	</table>\n	</div>\n</div>'),
(117, 44, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"Heaven Bakery \"[your-subject]\"\";s:6:\"sender\";s:35:\"[your-email] <furqancsit@gmail.com>\";s:9:\"recipient\";s:20:\"furqancsit@gmail.com\";s:4:\"body\";s:479:\"From: \nSubject: Heaven Bakery \n\nMessage Body:\n[CakeTier][CakeShape][CakeSize][ChooseOne][FillingFlavour][IcingFlavour][ChooseaBaseDesign][HandcraftedItemsonTop][Whoisthecakefor][ListPreferedCakeColours][WriteCakeInscription:][PhotoExampleofCake:][EnterLink...][AdditionalDesignThemeDetails:][Pick-uporDelivery][Date][Time][fnam][lname][Email][PhoneNo.][EnterFullAddresswithPostalCode]\n\n-- \nThis e-mail was sent from a contact form on Heaven Bakery (http://localhost/heavenbakery)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(118, 44, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"Heaven Bakery \"[your-subject]\"\";s:6:\"sender\";s:36:\"Heaven Bakery <furqancsit@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:123:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Heaven Bakery (http://localhost/heavenbakery)\";s:18:\"additional_headers\";s:30:\"Reply-To: furqancsit@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(119, 44, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(120, 44, '_additional_settings', ''),
(121, 44, '_locale', 'en_US'),
(122, 55, '_edit_lock', '1547285298:1'),
(123, 62, '_edit_last', '1'),
(124, 62, '_edit_lock', '1547063061:1'),
(125, 62, 'rpress_price', '0.00'),
(126, 62, 'rpress_variable_prices', 'a:0:{}'),
(127, 62, '_rpress_fooditem_earnings', '0.00'),
(128, 65, '_edit_last', '1'),
(129, 65, '_edit_lock', '1547289875:1'),
(130, 66, '_wp_attached_file', 'rpress/2019/01/burger.jpg'),
(131, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:940;s:6:\"height\";i:529;s:4:\"file\";s:25:\"rpress/2019/01/burger.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"burger-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"burger-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"burger-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 67, '_wp_attached_file', 'rpress/2019/01/pizza.jpg'),
(133, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:920;s:6:\"height\";i:553;s:4:\"file\";s:24:\"rpress/2019/01/pizza.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"pizza-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"pizza-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"pizza-768x462.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:462;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 65, '_thumbnail_id', '89'),
(135, 65, 'rpress_price', '100.00'),
(136, 65, 'rpress_variable_prices', 'a:0:{}'),
(137, 69, '_edit_last', '1'),
(138, 69, '_edit_lock', '1547063649:1'),
(139, 69, '_thumbnail_id', '67'),
(140, 69, 'rpress_price', '89.00'),
(141, 69, 'rpress_variable_prices', 'a:0:{}'),
(178, 69, '_rpress_fooditem_earnings', '0.00'),
(179, 65, '_rpress_fooditem_earnings', '0.00'),
(180, 51, '_edit_lock', '1547284791:1'),
(181, 51, '_edit_last', '1'),
(182, 51, '_epfm_meta_box_field', 'epfm_meta_box_value'),
(183, 50, '_edit_lock', '1547284949:1'),
(184, 50, '_edit_last', '1'),
(185, 50, '_epfm_meta_box_field', 'epfm_meta_box_value'),
(186, 52, '_edit_lock', '1547284961:1'),
(187, 52, '_edit_last', '1'),
(188, 52, '_epfm_meta_box_field', 'epfm_meta_box_value'),
(189, 49, '_edit_lock', '1547284976:1'),
(190, 49, '_edit_last', '1'),
(191, 49, '_epfm_meta_box_field', 'epfm_meta_box_value'),
(192, 55, '_edit_last', '1'),
(193, 55, '_epfm_meta_box_field', NULL),
(200, 83, '_rpress_payment_meta', 'a:12:{s:5:\"phone\";s:10:\"3164233262\";s:4:\"flat\";s:4:\"rest\";s:8:\"landmark\";s:5:\"Sindh\";s:3:\"key\";s:32:\"3603756b64cc283e27f97d8a5003a1bd\";s:5:\"email\";s:20:\"furqancsit@gmail.com\";s:4:\"date\";s:19:\"2019-01-12 10:05:23\";s:9:\"user_info\";a:6:{s:2:\"id\";i:1;s:5:\"email\";s:20:\"furqancsit@gmail.com\";s:10:\"first_name\";s:6:\"Furqan\";s:9:\"last_name\";s:5:\"Zamir\";s:8:\"discount\";s:4:\"none\";s:7:\"address\";a:0:{}}s:9:\"fooditems\";a:1:{i:0;a:3:{s:2:\"id\";i:69;s:8:\"quantity\";i:1;s:7:\"options\";a:2:{s:8:\"quantity\";i:1;s:8:\"price_id\";i:0;}}}s:12:\"cart_details\";a:1:{i:0;a:12:{s:4:\"name\";s:13:\"Regular kabab\";s:2:\"id\";i:69;s:11:\"instruction\";s:0:\"\";s:11:\"item_number\";a:3:{s:2:\"id\";i:69;s:8:\"quantity\";i:1;s:7:\"options\";a:2:{s:8:\"quantity\";i:1;s:8:\"price_id\";i:0;}}s:10:\"item_price\";d:89;s:8:\"quantity\";i:1;s:8:\"discount\";d:0;s:8:\"subtotal\";d:89;s:3:\"tax\";d:0;s:4:\"fees\";a:0:{}s:5:\"price\";d:89;s:11:\"addon_items\";a:2:{s:8:\"quantity\";i:1;s:8:\"price_id\";i:0;}}}s:4:\"fees\";a:0:{}s:8:\"currency\";s:3:\"USD\";s:3:\"tax\";s:4:\"0.00\";}'),
(201, 83, '_rpress_payment_gateway', 'paypal'),
(202, 83, '_rpress_payment_user_id', '1'),
(203, 83, '_rpress_payment_user_email', 'furqancsit@gmail.com'),
(204, 83, '_rpress_payment_user_ip', '::1'),
(205, 83, '_rpress_payment_purchase_key', '3603756b64cc283e27f97d8a5003a1bd'),
(206, 83, '_rpress_payment_mode', 'live'),
(207, 83, '_rpress_payment_tax_rate', '0'),
(208, 83, '_rpress_delivery_type', ''),
(209, 83, '_rpress_delivery_time', ''),
(210, 83, '_rpress_payment_customer_id', '1'),
(211, 83, '_rpress_payment_total', '89.00'),
(212, 83, '_rpress_payment_tax', '0.000000'),
(213, 69, '_wp_trash_meta_status', 'publish'),
(214, 69, '_wp_trash_meta_time', '1547289450'),
(215, 69, '_wp_desired_post_slug', 'regular-kabab'),
(216, 62, '_wp_trash_meta_status', 'publish'),
(217, 62, '_wp_trash_meta_time', '1547289454'),
(218, 62, '_wp_desired_post_slug', 'crispy-somasa'),
(219, 89, '_wp_attached_file', 'rpress/2019/01/choclate-cake.jpg'),
(220, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:454;s:4:\"file\";s:32:\"rpress/2019/01/choclate-cake.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"choclate-cake-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"choclate-cake-300x272.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(221, 90, '_edit_last', '1'),
(222, 90, '_edit_lock', '1547314269:1'),
(223, 91, '_wp_attached_file', 'rpress/2019/01/red-velvet.jpg'),
(224, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:550;s:4:\"file\";s:29:\"rpress/2019/01/red-velvet.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"red-velvet-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"red-velvet-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:72:\"Reuse Rights Limited. Contact Meredith Corporation for more information.\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(225, 90, '_thumbnail_id', '91'),
(226, 90, 'rpress_price', '100.00'),
(227, 90, 'rpress_variable_prices', 'a:0:{}'),
(228, 93, '_edit_last', '1'),
(229, 93, '_edit_lock', '1547314678:1'),
(230, 94, '_wp_attached_file', 'rpress/2019/01/choclate-cookies.jpg'),
(231, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:568;s:4:\"file\";s:35:\"rpress/2019/01/choclate-cookies.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"choclate-cookies-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"choclate-cookies-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(232, 93, '_thumbnail_id', '99'),
(233, 93, 'rpress_price', '20.00'),
(234, 93, 'rpress_variable_prices', 'a:0:{}'),
(235, 96, '_edit_last', '1'),
(236, 96, '_edit_lock', '1547314565:1'),
(237, 96, 'rpress_price', '30.00'),
(238, 96, 'rpress_variable_prices', 'a:0:{}'),
(239, 96, '_thumbnail_id', '94'),
(240, 96, '_rpress_fooditem_earnings', '0.00'),
(241, 93, '_rpress_fooditem_earnings', '0.00'),
(242, 90, '_rpress_fooditem_earnings', '100.000000'),
(243, 99, '_wp_attached_file', 'rpress/2019/01/chocolate-biscuit-500x500.jpg'),
(244, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:318;s:4:\"file\";s:44:\"rpress/2019/01/chocolate-biscuit-500x500.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"chocolate-biscuit-500x500-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"chocolate-biscuit-500x500-300x191.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(245, 100, '_edit_last', '1'),
(246, 100, '_edit_lock', '1547316585:1'),
(247, 100, 'rpress_price', '80.00'),
(248, 100, 'rpress_variable_prices', 'a:0:{}'),
(249, 102, '_edit_last', '1'),
(250, 102, '_edit_lock', '1547315032:1'),
(251, 102, 'rpress_price', '0.00'),
(252, 102, 'rpress_variable_prices', 'a:0:{}'),
(253, 104, '_wp_attached_file', 'rpress/2019/01/Red-Velvet-Cupcakes-with-White-Chocolate-Cream-Cheese-Frosting-4.jpg'),
(254, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:610;s:6:\"height\";i:390;s:4:\"file\";s:83:\"rpress/2019/01/Red-Velvet-Cupcakes-with-White-Chocolate-Cream-Cheese-Frosting-4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:76:\"Red-Velvet-Cupcakes-with-White-Chocolate-Cream-Cheese-Frosting-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:76:\"Red-Velvet-Cupcakes-with-White-Chocolate-Cream-Cheese-Frosting-4-300x192.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(255, 102, '_thumbnail_id', '104'),
(256, 102, '_rpress_fooditem_earnings', '0.00'),
(257, 100, '_rpress_fooditem_earnings', '0.00'),
(258, 105, '_wp_attached_file', 'rpress/2019/01/choclate-cup-cake.jpg'),
(259, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:36:\"rpress/2019/01/choclate-cup-cake.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"choclate-cup-cake-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"choclate-cup-cake-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"choclate-cup-cake-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 5DS\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1453289519\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"135\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:3:\"0.5\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(260, 100, '_thumbnail_id', '105'),
(261, 106, '_rpress_payment_meta', 'a:11:{s:5:\"phone\";s:10:\"3164233262\";s:4:\"flat\";s:4:\"rest\";s:8:\"landmark\";s:5:\"Sindh\";s:3:\"key\";s:32:\"70b71fa704db136b5a627cce2994334d\";s:5:\"email\";s:20:\"furqancsit@gmail.com\";s:4:\"date\";s:19:\"2019-01-13 06:05:00\";s:9:\"user_info\";a:6:{s:2:\"id\";s:1:\"1\";s:5:\"email\";s:20:\"furqancsit@gmail.com\";s:10:\"first_name\";s:4:\"test\";s:9:\"last_name\";s:5:\"Zamir\";s:8:\"discount\";s:4:\"none\";s:7:\"address\";a:6:{s:5:\"line1\";s:0:\"\";s:5:\"line2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:3:\"zip\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"state\";s:0:\"\";}}s:9:\"fooditems\";a:3:{i:0;a:3:{s:2:\"id\";i:90;s:8:\"quantity\";i:1;s:7:\"options\";a:3:{s:8:\"quantity\";i:1;s:8:\"price_id\";i:0;i:0;a:4:{s:15:\"addon_item_name\";s:7:\"4 Pound\";s:8:\"addon_id\";s:2:\"34\";s:5:\"price\";s:2:\"50\";s:8:\"quantity\";s:1:\"1\";}}}i:1;a:3:{s:2:\"id\";i:113;s:8:\"quantity\";i:7;s:7:\"options\";a:2:{s:8:\"quantity\";i:7;s:8:\"price_id\";i:0;}}i:2;a:3:{s:2:\"id\";i:113;s:8:\"quantity\";i:7;s:7:\"options\";a:2:{s:8:\"quantity\";i:7;s:8:\"price_id\";i:0;}}}s:12:\"cart_details\";a:3:{i:0;a:12:{s:11:\"addon_items\";a:1:{i:0;a:4:{s:15:\"addon_item_name\";s:7:\"4 Pound\";s:8:\"addon_id\";s:2:\"34\";s:5:\"price\";s:2:\"50\";s:8:\"quantity\";s:1:\"1\";}}s:8:\"discount\";d:0;s:4:\"fees\";a:0:{}s:2:\"id\";i:90;s:11:\"instruction\";s:0:\"\";s:11:\"item_number\";a:3:{s:2:\"id\";i:90;s:8:\"quantity\";i:1;s:7:\"options\";a:3:{s:8:\"quantity\";i:1;s:8:\"price_id\";i:0;i:0;a:4:{s:15:\"addon_item_name\";s:7:\"4 Pound\";s:8:\"addon_id\";s:2:\"34\";s:5:\"price\";s:2:\"50\";s:8:\"quantity\";s:1:\"1\";}}}s:10:\"item_price\";s:6:\"100.00\";s:4:\"name\";s:15:\"Red Velvet Cake\";s:5:\"price\";d:100;s:8:\"quantity\";i:1;s:8:\"subtotal\";d:100;s:3:\"tax\";s:4:\"0.00\";}i:1;a:12:{s:11:\"addon_items\";a:1:{i:0;a:4:{s:15:\"addon_item_name\";s:7:\"4 Pound\";s:8:\"addon_id\";s:2:\"34\";s:5:\"price\";s:2:\"50\";s:8:\"quantity\";s:1:\"1\";}}s:8:\"discount\";d:0;s:4:\"fees\";a:0:{}s:2:\"id\";i:113;s:11:\"instruction\";s:0:\"\";s:11:\"item_number\";a:3:{s:2:\"id\";i:113;s:8:\"quantity\";i:7;s:7:\"options\";a:2:{s:8:\"quantity\";i:7;s:8:\"price_id\";i:0;}}s:10:\"item_price\";s:5:\"50.00\";s:4:\"name\";s:3:\"Pie\";s:5:\"price\";d:350;s:8:\"quantity\";i:7;s:8:\"subtotal\";d:350;s:3:\"tax\";s:4:\"0.00\";}i:2;a:12:{s:11:\"addon_items\";a:1:{i:0;a:4:{s:15:\"addon_item_name\";s:7:\"4 Pound\";s:8:\"addon_id\";s:2:\"34\";s:5:\"price\";s:2:\"50\";s:8:\"quantity\";s:1:\"1\";}}s:8:\"discount\";d:0;s:4:\"fees\";a:0:{}s:2:\"id\";i:113;s:11:\"instruction\";s:0:\"\";s:11:\"item_number\";a:3:{s:2:\"id\";i:113;s:8:\"quantity\";i:7;s:7:\"options\";a:2:{s:8:\"quantity\";i:7;s:8:\"price_id\";i:0;}}s:10:\"item_price\";s:5:\"50.00\";s:4:\"name\";s:3:\"Pie\";s:5:\"price\";d:350;s:8:\"quantity\";i:7;s:8:\"subtotal\";d:350;s:3:\"tax\";s:4:\"0.00\";}}s:4:\"fees\";a:0:{}s:8:\"currency\";s:3:\"USD\";}'),
(262, 106, '_rpress_payment_gateway', 'paypal'),
(263, 106, '_rpress_payment_user_id', '1'),
(264, 106, '_rpress_payment_user_email', 'furqancsit@gmail.com'),
(265, 106, '_rpress_payment_user_ip', '::1'),
(266, 106, '_rpress_payment_purchase_key', '70b71fa704db136b5a627cce2994334d'),
(267, 106, '_rpress_payment_mode', 'live'),
(268, 106, '_rpress_payment_tax_rate', '0.03'),
(269, 106, '_rpress_delivery_type', ''),
(270, 106, '_rpress_delivery_time', ''),
(271, 106, '_rpress_payment_customer_id', '1'),
(272, 106, '_rpress_payment_total', '850.00'),
(273, 106, '_rpress_payment_tax', '0'),
(274, 107, '_edit_last', '1'),
(275, 107, '_edit_lock', '1547317321:1'),
(276, 108, '_wp_attached_file', 'rpress/2019/01/bread-bakery.jpg'),
(277, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:920;s:6:\"height\";i:638;s:4:\"file\";s:31:\"rpress/2019/01/bread-bakery.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"bread-bakery-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"bread-bakery-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"bread-bakery-768x533.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"20\";s:6:\"credit\";s:16:\"Natika - Fotolia\";s:6:\"camera\";s:13:\"Canon EOS 40D\";s:7:\"caption\";s:47:\"fresh bread isolated on white background cutout\";s:17:\"created_timestamp\";s:10:\"1362766887\";s:9:\"copyright\";s:16:\"Natika - Fotolia\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:47:\"fresh bread isolated on white background cutout\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:82:{i:0;s:8:\"Isolated\";i:1;s:10:\"background\";i:2;s:5:\"bagel\";i:3;s:8:\"baguette\";i:4;s:5:\"baked\";i:5;s:6:\"bakery\";i:6;s:5:\"bread\";i:7;s:9:\"breakfast\";i:8;s:5:\"brown\";i:9;s:3:\"bun\";i:10;s:6:\"cereal\";i:11;s:8:\"ciabatta\";i:12;s:7:\"closeup\";i:13;s:5:\"crisp\";i:14;s:5:\"crust\";i:15;s:6:\"crusty\";i:16;s:6:\"cutout\";i:17;s:6:\"eating\";i:18;s:5:\"flour\";i:19;s:4:\"food\";i:20;s:6:\"french\";i:21;s:5:\"fresh\";i:22;s:6:\"golden\";i:23;s:5:\"grain\";i:24;s:7:\"grocery\";i:25;s:5:\"group\";i:26;s:7:\"healthy\";i:27;s:4:\"heap\";i:28;s:4:\"loaf\";i:29;s:4:\"long\";i:30;s:4:\"meal\";i:31;s:6:\"nobody\";i:32;s:5:\"round\";i:33;s:8:\"sandwich\";i:34;s:6:\"sliced\";i:35;s:5:\"snack\";i:36;s:5:\"stick\";i:37;s:5:\"tasty\";i:38;s:7:\"variety\";i:39;s:5:\"wheat\";i:40;s:5:\"white\";i:41;s:5:\"fresh\";i:42;s:5:\"bread\";i:43;s:6:\"cutout\";i:44;s:8:\"isolated\";i:45;s:10:\"background\";i:46;s:5:\"white\";i:47;s:5:\"bagel\";i:48;s:8:\"baguette\";i:49;s:5:\"baked\";i:50;s:6:\"bakery\";i:51;s:9:\"breakfast\";i:52;s:5:\"brown\";i:53;s:3:\"bun\";i:54;s:6:\"cereal\";i:55;s:8:\"ciabatta\";i:56;s:7:\"closeup\";i:57;s:5:\"crisp\";i:58;s:5:\"crust\";i:59;s:6:\"crusty\";i:60;s:6:\"eating\";i:61;s:5:\"flour\";i:62;s:4:\"food\";i:63;s:6:\"french\";i:64;s:6:\"golden\";i:65;s:5:\"grain\";i:66;s:7:\"grocery\";i:67;s:5:\"group\";i:68;s:7:\"healthy\";i:69;s:4:\"heap\";i:70;s:4:\"loaf\";i:71;s:4:\"long\";i:72;s:4:\"meal\";i:73;s:6:\"nobody\";i:74;s:5:\"round\";i:75;s:8:\"sandwich\";i:76;s:6:\"sliced\";i:77;s:5:\"snack\";i:78;s:5:\"stick\";i:79;s:5:\"tasty\";i:80;s:7:\"variety\";i:81;s:5:\"wheat\";}}}'),
(278, 107, '_thumbnail_id', '108'),
(279, 107, 'rpress_price', '10.00'),
(280, 107, 'rpress_variable_prices', 'a:0:{}'),
(281, 110, '_edit_last', '1'),
(282, 110, '_edit_lock', '1547317451:1'),
(283, 111, '_wp_attached_file', 'rpress/2019/01/bars.jpg'),
(284, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:23:\"rpress/2019/01/bars.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"bars-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(285, 110, '_thumbnail_id', '111'),
(286, 110, 'rpress_price', '35.00'),
(287, 110, 'rpress_variable_prices', 'a:0:{}'),
(288, 113, '_edit_last', '1'),
(289, 113, '_edit_lock', '1547317548:1'),
(290, 114, '_wp_attached_file', 'rpress/2019/01/Pie-cookies.jpg'),
(291, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:30:\"rpress/2019/01/Pie-cookies.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Pie-cookies-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(292, 113, '_thumbnail_id', '114'),
(293, 113, 'rpress_price', '50.00'),
(294, 113, 'rpress_variable_prices', 'a:0:{}'),
(295, 116, '_edit_last', '1'),
(296, 116, '_edit_lock', '1547317791:1'),
(297, 117, '_wp_attached_file', 'rpress/2019/01/Croissants.jpg'),
(298, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:665;s:6:\"height\";i:435;s:4:\"file\";s:29:\"rpress/2019/01/Croissants.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Croissants-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Croissants-300x196.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:196;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:19:\"Canon EOS REBEL T5i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1441269514\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"31\";s:3:\"iso\";s:4:\"2000\";s:13:\"shutter_speed\";s:5:\"0.025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(299, 116, '_thumbnail_id', '117'),
(300, 116, 'rpress_price', '10.00'),
(301, 116, 'rpress_variable_prices', 'a:0:{}'),
(302, 119, '_edit_last', '1'),
(303, 119, '_edit_lock', '1547359212:1'),
(304, 120, '_wp_attached_file', 'rpress/2019/01/Sugar-Fix-Tarts-Bakery.jpg'),
(305, 120, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:41:\"rpress/2019/01/Sugar-Fix-Tarts-Bakery.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Sugar-Fix-Tarts-Bakery-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Sugar-Fix-Tarts-Bakery-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:23:\"Canon PowerShot SX40 HS\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1362625903\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:5:\"5.175\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(306, 119, '_thumbnail_id', '120'),
(307, 119, 'rpress_price', '10.00'),
(308, 119, 'rpress_variable_prices', 'a:0:{}'),
(309, 124, '_edit_last', '1'),
(310, 124, '_edit_lock', '1547364467:1'),
(311, 127, '_wp_attached_file', '2019/01/heaven-slider.png'),
(312, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:922;s:4:\"file\";s:25:\"2019/01/heaven-slider.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"heaven-slider-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"heaven-slider-300x144.png\";s:5:\"width\";i:300;s:6:\"height\";i:144;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"heaven-slider-768x369.png\";s:5:\"width\";i:768;s:6:\"height\";i:369;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"heaven-slider-1024x492.png\";s:5:\"width\";i:1024;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(313, 128, '_wp_attached_file', '2019/01/sweets-hd-wallpapers.jpg'),
(314, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:922;s:4:\"file\";s:32:\"2019/01/sweets-hd-wallpapers.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"sweets-hd-wallpapers-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"sweets-hd-wallpapers-300x144.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"sweets-hd-wallpapers-768x369.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:369;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"sweets-hd-wallpapers-1024x492.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:492;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(315, 129, '_wp_attached_file', '2019/01/Coffee_Croissant_Cup_Vapor_Grain_541442_1280x730.jpg'),
(316, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:922;s:4:\"file\";s:60:\"2019/01/Coffee_Croissant_Cup_Vapor_Grain_541442_1280x730.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"Coffee_Croissant_Cup_Vapor_Grain_541442_1280x730-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"Coffee_Croissant_Cup_Vapor_Grain_541442_1280x730-300x144.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:60:\"Coffee_Croissant_Cup_Vapor_Grain_541442_1280x730-768x369.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:369;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:61:\"Coffee_Croissant_Cup_Vapor_Grain_541442_1280x730-1024x492.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:492;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(317, 9, '_edit_last', '1'),
(318, 9, '_epfm_meta_box_field', NULL),
(319, 9, 'home_slider_0_hero_banner_slider', '127'),
(320, 9, '_home_slider_0_hero_banner_slider', 'field_5c3ae5fa4d575'),
(321, 9, 'home_slider_1_hero_banner_slider', '128'),
(322, 9, '_home_slider_1_hero_banner_slider', 'field_5c3ae5fa4d575'),
(323, 9, 'home_slider_2_hero_banner_slider', '129'),
(324, 9, '_home_slider_2_hero_banner_slider', 'field_5c3ae5fa4d575'),
(325, 9, 'home_slider', '3'),
(326, 9, '_home_slider', 'field_5c3ae5acc65be'),
(327, 130, 'home_slider_0_hero_banner_slider', '127'),
(328, 130, '_home_slider_0_hero_banner_slider', 'field_5c3ae5fa4d575'),
(329, 130, 'home_slider_1_hero_banner_slider', '128'),
(330, 130, '_home_slider_1_hero_banner_slider', 'field_5c3ae5fa4d575'),
(331, 130, 'home_slider_2_hero_banner_slider', '129'),
(332, 130, '_home_slider_2_hero_banner_slider', 'field_5c3ae5fa4d575'),
(333, 130, 'home_slider', '3'),
(334, 130, '_home_slider', 'field_5c3ae5acc65be'),
(335, 131, 'home_slider_0_hero_banner_slider', '127'),
(336, 131, '_home_slider_0_hero_banner_slider', 'field_5c3ae5fa4d575'),
(337, 131, 'home_slider_1_hero_banner_slider', '128'),
(338, 131, '_home_slider_1_hero_banner_slider', 'field_5c3ae5fa4d575'),
(339, 131, 'home_slider_2_hero_banner_slider', '129'),
(340, 131, '_home_slider_2_hero_banner_slider', 'field_5c3ae5fa4d575'),
(341, 131, 'home_slider', '3'),
(342, 131, '_home_slider', 'field_5c3ae5acc65be'),
(343, 129, '_edit_lock', '1547365072:1'),
(344, 128, '_edit_lock', '1547365103:1'),
(345, 132, 'home_slider_0_hero_banner_slider', '127'),
(346, 132, '_home_slider_0_hero_banner_slider', 'field_5c3ae5fa4d575'),
(347, 132, 'home_slider_1_hero_banner_slider', '128'),
(348, 132, '_home_slider_1_hero_banner_slider', 'field_5c3ae5fa4d575'),
(349, 132, 'home_slider_2_hero_banner_slider', '129'),
(350, 132, '_home_slider_2_hero_banner_slider', 'field_5c3ae5fa4d575'),
(351, 132, 'home_slider', '3'),
(352, 132, '_home_slider', 'field_5c3ae5acc65be'),
(353, 133, '_wp_attached_file', '2019/01/custom-cake-heaven.jpg'),
(354, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1370;s:6:\"height\";i:561;s:4:\"file\";s:30:\"2019/01/custom-cake-heaven.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"custom-cake-heaven-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"custom-cake-heaven-300x123.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"custom-cake-heaven-768x314.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:314;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"custom-cake-heaven-1024x419.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:419;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(355, 106, '_rpress_payment_unlimited_fooditems', ''),
(356, 134, '_rpress_log_payment_id', '106'),
(357, 134, '_rpress_log_price_id', '0'),
(358, 90, '_rpress_fooditem_sales', '1'),
(359, 135, '_rpress_log_payment_id', '106'),
(360, 135, '_rpress_log_price_id', '0'),
(361, 136, '_rpress_log_payment_id', '106'),
(362, 136, '_rpress_log_price_id', '0'),
(363, 137, '_rpress_log_payment_id', '106'),
(364, 137, '_rpress_log_price_id', '0'),
(365, 138, '_rpress_log_payment_id', '106'),
(366, 138, '_rpress_log_price_id', '0'),
(367, 139, '_rpress_log_payment_id', '106'),
(368, 139, '_rpress_log_price_id', '0'),
(369, 140, '_rpress_log_payment_id', '106'),
(370, 140, '_rpress_log_price_id', '0'),
(371, 141, '_rpress_log_payment_id', '106'),
(372, 141, '_rpress_log_price_id', '0'),
(373, 113, '_rpress_fooditem_earnings', '700.000000'),
(374, 113, '_rpress_fooditem_sales', '14'),
(375, 142, '_rpress_log_payment_id', '106'),
(376, 142, '_rpress_log_price_id', '0'),
(377, 143, '_rpress_log_payment_id', '106'),
(378, 143, '_rpress_log_price_id', '0'),
(379, 144, '_rpress_log_payment_id', '106'),
(380, 144, '_rpress_log_price_id', '0'),
(381, 145, '_rpress_log_payment_id', '106'),
(382, 145, '_rpress_log_price_id', '0'),
(383, 146, '_rpress_log_payment_id', '106'),
(384, 146, '_rpress_log_price_id', '0'),
(385, 147, '_rpress_log_payment_id', '106'),
(386, 147, '_rpress_log_price_id', '0'),
(387, 148, '_rpress_log_payment_id', '106'),
(388, 148, '_rpress_log_price_id', '0'),
(389, 106, '_rpress_completed_date', '2019-01-13 10:12:35'),
(390, 106, '_rpress_complete_actions_run', '1547374421'),
(391, 17, '_edit_last', '1'),
(392, 17, '_epfm_meta_box_field', NULL),
(393, 17, '_wp_page_template', 'customcake.php'),
(404, 21, '_edit_last', '1'),
(405, 21, '_epfm_meta_box_field', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hb_posts`
--

DROP TABLE IF EXISTS `hb_posts`;
CREATE TABLE `hb_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hb_posts`
--

INSERT INTO `hb_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-12-29 18:07:30', '2018-12-29 18:07:30', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-12-29 18:07:30', '2018-12-29 18:07:30', '', 0, 'http://localhost/heavenbakery/?p=1', 1, 'post', '', 0),
(5, 1, '2018-12-29 18:09:18', '2018-12-29 18:09:18', '<div class=\"contact-form\">\r\n<h4>Get in Touch</h4>\r\n<hr>\r\n<div class=\"row\">\r\n<div class=\"col-lg-3 col-sm-3\">\r\n              <label>Name *</label></div>\r\n<div class=\"col-lg-9 col-sm-9\">\r\n<div class=\"flname\">\r\n       [text* first-name \"First Name...\"][text* last-name \"Last Name...\"]\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n       <div class=\"col-lg-3 col-sm-3\">\r\n             <label>Email *</label></div>\r\n       <div class=\"col-lg-9 col-sm-9\">\r\n             [email* email \"Enter Email ...\"]\r\n       </div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-3 col-sm-3\">\r\n              <label>Phone no *</label></div>\r\n<div class=\"col-lg-9 col-sm-9\">\r\n              [tel* tel \"Phone no ...\"]\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-3 col-sm-3\">\r\n              <label>Question or Comments *</label></div>\r\n<div class=\"col-lg-9 col-sm-9\">\r\n              [textarea question-comments \"Enter You Comments Here...\"]</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-3 col-sm-3\">\r\n              <label></label></div>\r\n<div class=\"col-lg-9 col-sm-9\">\r\n              [submit class:btnsubmit \"CONTACT NOW\"]</div>\r\n</div>\r\n</div>\n1\nHeaven Bakery \"[your-subject]\"\nHeaven Bakery <furqancsit@gmail.com>\nfurqancsit@gmail.com\nFrom: [your-name] <[email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[question-comments]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Heaven Bakery (http://localhost/heavenbakery)\nReply-To: [email]\n\n\n\n\nHeaven Bakery \"[your-subject]\"\nHeaven Bakery <furqancsit@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Heaven Bakery (http://localhost/heavenbakery)\nReply-To: furqancsit@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Heaven Bakery Contact', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-12-30 16:06:09', '2018-12-30 16:06:09', '', 0, 'http://localhost/heavenbakery/?post_type=wpcf7_contact_form&#038;p=5', 0, 'wpcf7_contact_form', '', 0),
(9, 1, '2018-12-29 18:11:58', '2018-12-29 18:11:58', '<div class=\"heaven-bakery-section\">\n<div class=\"container\">\n<h3>Austin, TX, United States, +1 512-491-8456</h3>\n<h2>We’ve opned a bakery in Texas.</h2>\n<a href=\"#\" class=\"btn btnprim\">CHECK US OUT</a>\n<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-aboutus-cover.png\" class=\"img-fluid imgtb50\">\n\n</div>\n<div class=\"container\">\n<div class=\"row align-items-center h-100\">\n<div class=\"col-lg-6 col-sm-6\">\n        <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-birthdaycake.png\" class=\"img-fluid\"></div>\n<div class=\"col-lg-6 col-sm-6\">\n<h3>We Make Custom Cakes</h3>\n<h2>Need cakes for a birthday\nor other special events?</h2>\n<a href=\"#\" class=\"btn btnprim\">ORDER CAKE</a>\n\n</div>\n</div>\n</div>\n<div class=\"container\">\n<div class=\"american-biscotta\">\n<div class=\"row align-items-center h-100\">\n<div class=\"col-lg-6 col-sm-6\">\n<h4>. DINE IN DEAL .</h4>\n<h1>Americano Biscatto</h1>\nOur finest blend of coffee served with\n2 freshly backed chocolate chip cookies.\n<h5>$12 - Available from 9am-12pm</h5>\n</div>\n<div class=\"col-lg-6 col-sm-6\">\n          <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-biscatto.png\" class=\"img-fluid\"></div>\n</div>\n</div>\n</div>\n<a href=\"#\" class=\"btn btnprim imgtb50\">SEE ALL DEALS</a>\n\n</div>', 'HOME', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-01-13 08:12:19', '2019-01-13 08:12:19', '', 0, 'http://localhost/heavenbakery/?page_id=9', 5, 'page', '', 0),
(10, 1, '2018-12-29 18:11:58', '2018-12-29 18:11:58', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-12-29 18:11:58', '2018-12-29 18:11:58', '', 9, 'http://localhost/heavenbakery/2018/12/29/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-12-29 18:39:41', '2018-12-29 18:39:41', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-12-29 18:39:52', '2018-12-29 18:39:52', '', 0, 'http://localhost/heavenbakery/wp-content/uploads/2018/12/logo.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2018-12-29 18:40:15', '2018-12-29 18:40:15', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-29 18:40:15\"\n    },\n    \"heaven-bakery::custom_logo\": {\n        \"value\": 11,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-29 18:40:15\"\n    },\n    \"heaven-bakery::header_textcolor\": {\n        \"value\": \"blank\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-29 18:40:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '941a9d93-1ce7-4750-a2de-3693ec38e013', '', '', '2018-12-29 18:40:15', '2018-12-29 18:40:15', '', 0, 'http://localhost/heavenbakery/2018/12/29/941a9d93-1ce7-4750-a2de-3693ec38e013/', 0, 'customize_changeset', '', 0),
(13, 1, '2018-12-29 18:47:02', '2018-12-29 18:47:02', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2019-01-12 09:17:38', '2019-01-12 09:17:38', '', 0, 'http://localhost/heavenbakery/?p=13', 1, 'nav_menu_item', '', 0),
(15, 1, '2018-12-29 18:55:20', '2018-12-29 18:55:20', '<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-aboutus-cover.png\" class=\"img-fluid\">\n<div class=\"heaven-bakery-section\">\n<h3>Austin, TX, United States, +1 512-491-8456</h3>\n<h2>Welcome to Heaven Bakery</h2>\n<div class=\"aboutus\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-lg-6 col-md-6\">\n<div class=\"aboutinner-content\">\n<h4>FOR OTHERS, BAKING IS CRAFTSMANSHIP.\nFOR US A JOYFUL PLEASURE.</h4>\nWe admit that we stand by traditions. And the quality of homemade pastries and pies love.\n\nWe also have a big weakness for people who value delicious soul food. And want to share pleasurable moments with others. That\'s why we put great emphasis on real craftsmanship, special creativity and natural, high-quality ingredients in the production of our cakes. Of course, from local cultivation and wherever possible without the addition of preservatives.\n\nOh yes - you will not find industrial mass production here. There are plenty of products that we produce daily fresh and handmade for you with own recipes and special taste.\n\nBut actually we should not talk so much about our products. Better, you make your own picture and create your own cake. For you alone, your friends and colleagues or you all together. Because we think: life can not be sweet enough.\n\n</div>\n</div>\n<div class=\"col-lg-6 col-md-6\">\n            <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-about02.png\" class=\"img-fluid\">\n<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-about03.png\" class=\"img-fluid\"></div>\n</div>\n</div>\n<div class=\"container\">\n<h4 class=\"padtb30\">OUR CREATED PIES ARE UNIQUE. WE MAKE MANY THINGS EVERY DAY.\nBUT EVERY SINGLE, DAILY FRESH BY HAND AND WITH MUCH LOVE.</h4>\n<div class=\"row\">\n<div class=\"col-lg-6 col-sm-6\">\n          <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heave-aboutus04.png\" class=\"img-fluid\">\n<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-about05.png\" class=\"img-fluid bottom-align\"></div>\n<div class=\"col-lg-6 col-sm-6\">\n          <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-aboutus01.png\" class=\"img-fluid\"></div>\n</div>\n</div>\n</div>\n<div class=\"heaven-philosophy\">\n<div class=\"container\">\n<div class=\"row justify-content-center\">\n<div class=\"col-lg-10 col-sm-10\">\n<h3>Heaven Bakery</h3>\n<h2>Our Philosophy</h2>\nServing or giving away a cake is a wonderful, old tradition - which, in my opinion, is far too short in our fast-paced everyday life, explains Flavio Cuoni, founder of Biskitty. This is partly because today hardly anyone learns to properly bake. But even if someone can bake, the time is often simply not there. Using the technical power of the internet, my team and I want to make the pie what it once was: the colorful eye-catcher on the birthday party, a personal, stylish gift for people you like or just a little one Luxury for yourself.\n\n</div>\n<div class=\"col-lg-12\">\n          <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-philosophy.png\" class=\"img-fluid\"></div>\n</div>\n</div>\n</div>\n</div>', 'ABOUT US', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-12-30 15:21:57', '2018-12-30 15:21:57', '', 0, 'http://localhost/heavenbakery/?page_id=15', 6, 'page', '', 0),
(16, 1, '2018-12-29 18:55:20', '2018-12-29 18:55:20', '', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-12-29 18:55:20', '2018-12-29 18:55:20', '', 15, 'http://localhost/heavenbakery/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-12-29 18:55:42', '2018-12-29 18:55:42', '', 'CUSTOM CAKES', '', 'publish', 'closed', 'closed', '', 'custom-cakes', '', '', '2019-01-20 09:55:04', '2019-01-20 09:55:04', '', 0, 'http://localhost/heavenbakery/?page_id=17', 8, 'page', '', 0),
(18, 1, '2018-12-29 18:55:42', '2018-12-29 18:55:42', '', 'CUSTOM CAKES', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-12-29 18:55:42', '2018-12-29 18:55:42', '', 17, 'http://localhost/heavenbakery/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-12-29 18:56:06', '2018-12-29 18:56:06', '<div class=\"heaven-bakery-section\">\n<div class=\"heaven-deals\">\n<div class=\"container\">\n<h3>Best Combos</h3>\n<h2>Deals for a Meal?</h2>\n<div class=\"container\">\n<div class=\"american-biscotta imgtb60\">\n<div class=\"row align-items-center h-100\">\n<div class=\"col-lg-6 col-sm-6\">\n<h4>. DINE IN DEAL .</h4>\n<h1>Americano Biscatto</h1>\nOur finest blend of coffee served with\n2 freshly backed chocolate chip cookies.\n<h5>$12 - Available from 9am-12pm</h5>\n</div>\n<div class=\"col-lg-6 col-sm-6\">\n              <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-biscatto.png\" class=\"img-fluid\"></div>\n</div>\n</div>\n</div>\n<div class=\"container\">\n<div class=\"american-biscotta imgtb60 american-trycookies\">\n<div class=\"row align-items-center h-100\">\n<div class=\"col-lg-6 col-sm-6\">\n<h4>. DINE IN DEAL .</h4>\n<h1>Trio  Cookie\nCombo</h1>\nChoose any three flavours of\ncookies one pound each\n<h5>$30 - Available from 9am -  9pm</h5>\n</div>\n<div class=\"col-lg-6 col-sm-6\">\n              <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-cookies.jpg\" class=\"img-fluid\"></div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>', 'DEALS', '', 'publish', 'closed', 'closed', '', 'deals', '', '', '2018-12-30 15:25:28', '2018-12-30 15:25:28', '', 0, 'http://localhost/heavenbakery/?page_id=19', 9, 'page', '', 0),
(20, 1, '2018-12-29 18:56:06', '2018-12-29 18:56:06', '', 'DEALS', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-12-29 18:56:06', '2018-12-29 18:56:06', '', 19, 'http://localhost/heavenbakery/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-12-29 18:56:40', '2018-12-29 18:56:40', '<div class=\"contactus padtb60\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-lg-8 col-sm-8\">\n       [contact-form-7 id=\"5\" title=\"Heaven Bakery Contact\"]</div>\n<div class=\"col-lg-4 col-sm-4\">\n<div class=\"out-details\">\n<h4>Our Details</h4>\n<div class=\"dt-bd\"></div>\n<h5>Address</h5>\n7890 Haven Ave, Ste 11\nRancho Cucamonga, California\n91730\n<div class=\"dt-bd\"></div>\n<h5>Opening Hours</h5>\nMon-Fri  4:30am – 6:00pm\nSaturday  6:00am – 6:00pm\nSunday  Closed\n<div class=\"dt-bd\"></div>\n<h5>Phone</h5>\n(909) 980-1819\n<div class=\"dt-bd\"></div>\n<h5>Email</h5>\nheavenbakery@gmail.com\n\n</div>\n</div>\n</div>\n<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-map.jpg\" class=\"img-fluid w100 imgtb60\">\n\n</div>\n</div>', 'CONTACT', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-01-24 17:56:13', '2019-01-24 17:56:13', '', 0, 'http://localhost/heavenbakery/?page_id=21', 10, 'page', '', 0),
(22, 1, '2018-12-29 18:56:40', '2018-12-29 18:56:40', '', 'CONTACT', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-12-29 18:56:40', '2018-12-29 18:56:40', '', 21, 'http://localhost/heavenbakery/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-12-29 18:57:06', '2018-12-29 18:57:06', '', 'HOME', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-12-29 18:57:06', '2018-12-29 18:57:06', '', 9, 'http://localhost/heavenbakery/9-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-12-29 18:58:20', '2018-12-29 18:58:20', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2019-01-12 09:17:39', '2019-01-12 09:17:39', '', 0, 'http://localhost/heavenbakery/?p=27', 3, 'nav_menu_item', '', 0),
(28, 1, '2018-12-29 18:58:20', '2018-12-29 18:58:20', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2019-01-12 09:17:39', '2019-01-12 09:17:39', '', 0, 'http://localhost/heavenbakery/?p=28', 4, 'nav_menu_item', '', 0),
(29, 1, '2018-12-29 18:58:20', '2018-12-29 18:58:20', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2019-01-12 09:17:39', '2019-01-12 09:17:39', '', 0, 'http://localhost/heavenbakery/?p=29', 5, 'nav_menu_item', '', 0),
(30, 1, '2018-12-29 18:58:21', '2018-12-29 18:58:21', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2019-01-12 09:17:39', '2019-01-12 09:17:39', '', 0, 'http://localhost/heavenbakery/?p=30', 6, 'nav_menu_item', '', 0),
(31, 1, '2018-12-29 19:35:33', '2018-12-29 19:35:33', '', 'FACEBOOK', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2018-12-30 12:10:05', '2018-12-30 12:10:05', '', 0, 'http://localhost/heavenbakery/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2018-12-29 19:35:33', '2018-12-29 19:35:33', '', 'INSTAGRAM', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2018-12-30 12:10:05', '2018-12-30 12:10:05', '', 0, 'http://localhost/heavenbakery/?p=32', 2, 'nav_menu_item', '', 0),
(33, 1, '2018-12-29 19:35:34', '2018-12-29 19:35:34', '', 'PINTREST', '', 'publish', 'closed', 'closed', '', 'pintrest', '', '', '2018-12-30 12:10:05', '2018-12-30 12:10:05', '', 0, 'http://localhost/heavenbakery/?p=33', 3, 'nav_menu_item', '', 0),
(35, 1, '2018-12-30 15:12:02', '2018-12-30 15:12:02', '<!-- wp:heading {\"level\":3} -->\n<h3>Austin, TX, United States, +1 512-491-8456</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>We’ve opned a bakery in Texas.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><a href=\"#\">CHECK US OUT</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-aboutus-cover.png\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-birthdaycake.png\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>We Make Custom Cakes</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Need cakes for a birthday <br>or other special events? </h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><a href=\"#\">ORDER CAKE</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>. DINE IN DEAL .</h4>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":1} -->\n<h1>Americano Biscatto</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our finest blend of coffee served with <br>2 freshly backed chocolate chip cookies.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>$12 - Available from 9am-12pm</h5>\n<!-- /wp:heading -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-biscatto.png\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><a href=\"#\">SEE ALL DEALS</a></p>\n<!-- /wp:paragraph -->', 'HOME', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-12-30 15:12:02', '2018-12-30 15:12:02', '', 9, 'http://localhost/heavenbakery/9-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-12-30 15:13:14', '2018-12-30 15:13:14', '<div class=\"heaven-bakery-section\">\n<div class=\"container\">\n<h3>Austin, TX, United States, +1 512-491-8456</h3>\n<h2>We’ve opned a bakery in Texas.</h2>\n<a href=\"#\" class=\"btn btnprim\">CHECK US OUT</a>\n<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-aboutus-cover.png\" class=\"img-fluid imgtb50\">\n\n</div>\n<div class=\"container\">\n<div class=\"row align-items-center h-100\">\n<div class=\"col-lg-6 col-sm-6\">\n        <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-birthdaycake.png\" class=\"img-fluid\"></div>\n<div class=\"col-lg-6 col-sm-6\">\n<h3>We Make Custom Cakes</h3>\n<h2>Need cakes for a birthday\nor other special events?</h2>\n<a href=\"#\" class=\"btn btnprim\">ORDER CAKE</a>\n\n</div>\n</div>\n</div>\n<div class=\"container\">\n<div class=\"american-biscotta\">\n<div class=\"row align-items-center h-100\">\n<div class=\"col-lg-6 col-sm-6\">\n<h4>. DINE IN DEAL .</h4>\n<h1>Americano Biscatto</h1>\nOur finest blend of coffee served with\n2 freshly backed chocolate chip cookies.\n<h5>$12 - Available from 9am-12pm</h5>\n</div>\n<div class=\"col-lg-6 col-sm-6\">\n          <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-biscatto.png\" class=\"img-fluid\"></div>\n</div>\n</div>\n</div>\n<a href=\"#\" class=\"btn btnprim imgtb50\">SEE ALL DEALS</a>\n\n</div>', 'HOME', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-12-30 15:13:14', '2018-12-30 15:13:14', '', 9, 'http://localhost/heavenbakery/9-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-12-30 15:21:57', '2018-12-30 15:21:57', '<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-aboutus-cover.png\" class=\"img-fluid\">\n<div class=\"heaven-bakery-section\">\n<h3>Austin, TX, United States, +1 512-491-8456</h3>\n<h2>Welcome to Heaven Bakery</h2>\n<div class=\"aboutus\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-lg-6 col-md-6\">\n<div class=\"aboutinner-content\">\n<h4>FOR OTHERS, BAKING IS CRAFTSMANSHIP.\nFOR US A JOYFUL PLEASURE.</h4>\nWe admit that we stand by traditions. And the quality of homemade pastries and pies love.\n\nWe also have a big weakness for people who value delicious soul food. And want to share pleasurable moments with others. That\'s why we put great emphasis on real craftsmanship, special creativity and natural, high-quality ingredients in the production of our cakes. Of course, from local cultivation and wherever possible without the addition of preservatives.\n\nOh yes - you will not find industrial mass production here. There are plenty of products that we produce daily fresh and handmade for you with own recipes and special taste.\n\nBut actually we should not talk so much about our products. Better, you make your own picture and create your own cake. For you alone, your friends and colleagues or you all together. Because we think: life can not be sweet enough.\n\n</div>\n</div>\n<div class=\"col-lg-6 col-md-6\">\n            <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-about02.png\" class=\"img-fluid\">\n<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-about03.png\" class=\"img-fluid\"></div>\n</div>\n</div>\n<div class=\"container\">\n<h4 class=\"padtb30\">OUR CREATED PIES ARE UNIQUE. WE MAKE MANY THINGS EVERY DAY.\nBUT EVERY SINGLE, DAILY FRESH BY HAND AND WITH MUCH LOVE.</h4>\n<div class=\"row\">\n<div class=\"col-lg-6 col-sm-6\">\n          <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heave-aboutus04.png\" class=\"img-fluid\">\n<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-about05.png\" class=\"img-fluid bottom-align\"></div>\n<div class=\"col-lg-6 col-sm-6\">\n          <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-aboutus01.png\" class=\"img-fluid\"></div>\n</div>\n</div>\n</div>\n<div class=\"heaven-philosophy\">\n<div class=\"container\">\n<div class=\"row justify-content-center\">\n<div class=\"col-lg-10 col-sm-10\">\n<h3>Heaven Bakery</h3>\n<h2>Our Philosophy</h2>\nServing or giving away a cake is a wonderful, old tradition - which, in my opinion, is far too short in our fast-paced everyday life, explains Flavio Cuoni, founder of Biskitty. This is partly because today hardly anyone learns to properly bake. But even if someone can bake, the time is often simply not there. Using the technical power of the internet, my team and I want to make the pie what it once was: the colorful eye-catcher on the birthday party, a personal, stylish gift for people you like or just a little one Luxury for yourself.\n\n</div>\n<div class=\"col-lg-12\">\n          <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-philosophy.png\" class=\"img-fluid\"></div>\n</div>\n</div>\n</div>\n</div>', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-12-30 15:21:57', '2018-12-30 15:21:57', '', 15, 'http://localhost/heavenbakery/15-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-12-30 15:25:28', '2018-12-30 15:25:28', '<div class=\"heaven-bakery-section\">\n<div class=\"heaven-deals\">\n<div class=\"container\">\n<h3>Best Combos</h3>\n<h2>Deals for a Meal?</h2>\n<div class=\"container\">\n<div class=\"american-biscotta imgtb60\">\n<div class=\"row align-items-center h-100\">\n<div class=\"col-lg-6 col-sm-6\">\n<h4>. DINE IN DEAL .</h4>\n<h1>Americano Biscatto</h1>\nOur finest blend of coffee served with\n2 freshly backed chocolate chip cookies.\n<h5>$12 - Available from 9am-12pm</h5>\n</div>\n<div class=\"col-lg-6 col-sm-6\">\n              <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-biscatto.png\" class=\"img-fluid\"></div>\n</div>\n</div>\n</div>\n<div class=\"container\">\n<div class=\"american-biscotta imgtb60 american-trycookies\">\n<div class=\"row align-items-center h-100\">\n<div class=\"col-lg-6 col-sm-6\">\n<h4>. DINE IN DEAL .</h4>\n<h1>Trio  Cookie\nCombo</h1>\nChoose any three flavours of\ncookies one pound each\n<h5>$30 - Available from 9am -  9pm</h5>\n</div>\n<div class=\"col-lg-6 col-sm-6\">\n              <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-cookies.jpg\" class=\"img-fluid\"></div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>', 'DEALS', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-12-30 15:25:28', '2018-12-30 15:25:28', '', 19, 'http://localhost/heavenbakery/19-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-12-30 15:37:08', '2018-12-30 15:37:08', '<div class=\"contactus\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-lg-8 col-sm-8\">\n<div class=\"contact-form\">\n<h4>Get in Touch</h4>\n\n<hr>\n\n<div class=\"row\">\n<div class=\"col-lg-3 col-sm-3\">\n              <label>Name *</label></div>\n<div class=\"col-lg-9 col-sm-9\">\n<div class=\"flname\">\n              <input type=\"text\" name=\"fname\" placeholder=\"First Name...\">\n<input type=\"text\" name=\"lname\" placeholder=\"Last Name...\"></div>\n</div>\n</div>\n<div class=\"row\">\n<div class=\"col-lg-3 col-sm-3\">\n              <label>Email *</label></div>\n<div class=\"col-lg-9 col-sm-9\">\n              <input type=\"email\" name=\"lname\" placeholder=\"Enter Email...\"></div>\n</div>\n<div class=\"row\">\n<div class=\"col-lg-3 col-sm-3\">\n              <label>Phone no *</label></div>\n<div class=\"col-lg-9 col-sm-9\">\n              <input type=\"tel\" name=\"lname\" placeholder=\"Enter Phone no...\"></div>\n</div>\n<div class=\"row\">\n<div class=\"col-lg-3 col-sm-3\">\n              <label>Question or Comments *</label></div>\n<div class=\"col-lg-9 col-sm-9\">\n              <textarea placeholder=\"Enter You Comments Here...\"></textarea></div>\n</div>\n<div class=\"row\">\n<div class=\"col-lg-3 col-sm-3\">\n              <label></label></div>\n<div class=\"col-lg-9 col-sm-9\">\n              <input type=\"submit\" value=\"CONTACT NOW\" name=\"\" class=\"btnsubmit\"></div>\n</div>\n</div>\n</div>\n<div class=\"col-lg-4 col-sm-4\">\n<div class=\"out-details\">\n<h4>Our Details</h4>\n<div class=\"dt-bd\"></div>\n<h6>Address</h6>\n7890 Haven Ave, Ste 11\nRancho Cucamonga, California\n91730\n<div class=\"dt-bd\"></div>\n<h6>Opening Hours</h6>\nMon-Fri  4:30am – 6:00pm\nSaturday  6:00am – 6:00pm\nSunday  Closed\n<div class=\"dt-bd\"></div>\n<h6>Phone</h6>\n(909) 980-1819\n<div class=\"dt-bd\"></div>\n<h6>Email</h6>\nheavenbakery@gmail.com\n\n</div>\n</div>\n</div>\n<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-map.jpg\" class=\"img-fluid w100 imgtb60\">\n\n</div>\n</div>', 'CONTACT', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-12-30 15:37:08', '2018-12-30 15:37:08', '', 21, 'http://localhost/heavenbakery/21-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-12-30 15:39:16', '2018-12-30 15:39:16', '<div class=\"contactus\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-lg-8 col-sm-8\">\n<div class=\"contact-form\">\n<h4>Get in Touch</h4>\n\n<hr>\n\n<div class=\"row\">\n<div class=\"col-lg-3 col-sm-3\">\n              <label>Name *</label></div>\n<div class=\"col-lg-9 col-sm-9\">\n<div class=\"flname\">\n              <input type=\"text\" name=\"fname\" placeholder=\"First Name...\"><input type=\"text\" name=\"lname\" placeholder=\"Last Name...\"></div>\n</div>\n</div>\n<div class=\"row\">\n<div class=\"col-lg-3 col-sm-3\">\n              <label>Email *</label></div>\n<div class=\"col-lg-9 col-sm-9\">\n              <input type=\"email\" name=\"lname\" placeholder=\"Enter Email...\"></div>\n</div>\n<div class=\"row\">\n<div class=\"col-lg-3 col-sm-3\">\n              <label>Phone no *</label></div>\n<div class=\"col-lg-9 col-sm-9\">\n              <input type=\"tel\" name=\"lname\" placeholder=\"Enter Phone no...\"></div>\n</div>\n<div class=\"row\">\n<div class=\"col-lg-3 col-sm-3\">\n              <label>Question or Comments *</label></div>\n<div class=\"col-lg-9 col-sm-9\">\n              <textarea placeholder=\"Enter You Comments Here...\"></textarea></div>\n</div>\n<div class=\"row\">\n<div class=\"col-lg-3 col-sm-3\">\n              <label></label></div>\n<div class=\"col-lg-9 col-sm-9\">\n              <input type=\"submit\" value=\"CONTACT NOW\" name=\"\" class=\"btnsubmit\"></div>\n</div>\n</div>\n</div>\n<div class=\"col-lg-4 col-sm-4\">\n<div class=\"out-details\">\n<h4>Our Details</h4>\n<div class=\"dt-bd\"></div>\n<h6>Address</h6>\n7890 Haven Ave, Ste 11\nRancho Cucamonga, California\n91730\n<div class=\"dt-bd\"></div>\n<h6>Opening Hours</h6>\nMon-Fri  4:30am – 6:00pm\nSaturday  6:00am – 6:00pm\nSunday  Closed\n<div class=\"dt-bd\"></div>\n<h6>Phone</h6>\n(909) 980-1819\n<div class=\"dt-bd\"></div>\n<h6>Email</h6>\nheavenbakery@gmail.com\n\n</div>\n</div>\n</div>\n<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-map.jpg\" class=\"img-fluid w100 imgtb60\">\n\n</div>\n</div>', 'CONTACT', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-12-30 15:39:16', '2018-12-30 15:39:16', '', 21, 'http://localhost/heavenbakery/21-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-12-30 15:56:38', '2018-12-30 15:56:38', '<div class=\"contactus\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-lg-8 col-sm-8\">\n       [contact-form-7 id=\"5\" title=\"Heaven Bakery Contact\"]</div>\n<div class=\"col-lg-4 col-sm-4\">\n<div class=\"out-details\">\n<h4>Our Details</h4>\n<div class=\"dt-bd\"></div>\n<h6>Address</h6>\n7890 Haven Ave, Ste 11\nRancho Cucamonga, California\n91730\n<div class=\"dt-bd\"></div>\n<h6>Opening Hours</h6>\nMon-Fri  4:30am – 6:00pm\nSaturday  6:00am – 6:00pm\nSunday  Closed\n<div class=\"dt-bd\"></div>\n<h6>Phone</h6>\n(909) 980-1819\n<div class=\"dt-bd\"></div>\n<h6>Email</h6>\nheavenbakery@gmail.com\n\n</div>\n</div>\n</div>\n<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-map.jpg\" class=\"img-fluid w100 imgtb60\">\n\n</div>\n</div>', 'CONTACT', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-12-30 15:56:38', '2018-12-30 15:56:38', '', 21, 'http://localhost/heavenbakery/21-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-12-30 16:05:16', '2018-12-30 16:05:16', '<div class=\"contactus\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-lg-8 col-sm-8\">\n       [contact-form-7 id=\"5\" title=\"Heaven Bakery Contact\"]</div>\n<div class=\"col-lg-4 col-sm-4\">\n<div class=\"out-details\">\n<h4>Our Details</h4>\n<div class=\"dt-bd\"></div>\n<h5>Address</h5>\n7890 Haven Ave, Ste 11\nRancho Cucamonga, California\n91730\n<div class=\"dt-bd\"></div>\n<h5>Opening Hours</h5>\nMon-Fri  4:30am – 6:00pm\nSaturday  6:00am – 6:00pm\nSunday  Closed\n<div class=\"dt-bd\"></div>\n<h5>Phone</h5>\n(909) 980-1819\n<div class=\"dt-bd\"></div>\n<h5>Email</h5>\nheavenbakery@gmail.com\n\n</div>\n</div>\n</div>\n<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-map.jpg\" class=\"img-fluid w100 imgtb60\">\n\n</div>\n</div>', 'CONTACT', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-12-30 16:05:16', '2018-12-30 16:05:16', '', 21, 'http://localhost/heavenbakery/21-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-01-09 18:06:21', '2019-01-09 18:06:21', '<div class=\"contactus\">\r\n	<div class=\"contact-form\">\r\n	<h4>Choose Cake Base</h4>\r\n	<hr/>\r\n	<table>\r\n		<tr>\r\n			<td><label>Cake Tier</label></td>\r\n			<td>[radio CakeTier default:1 \"One Tier\" \"Three Tier\"]</td>\r\n		</tr>\r\n		<tr>\r\n			<td><label>Cake Shape</label></td>\r\n			<td>[radio CakeShape default:1 \"CakeShape \" \"Cake Shape One\" \"Cake Shape Two\"]</td>\r\n		</tr>\r\n		<tr>\r\n			<td><label>Cake Size</label></td>\r\n			<td>[select CakeSize default:1 \"One\" \"Two\" \"Three\"]</td>\r\n		</tr>\r\n	</table>\r\n	<h4>Customise Flavours</h4>\r\n	<hr/>\r\n	<table>\r\n		<tr>\r\n			<td><label>Main Flavour *</label></td>\r\n			<td>[select ChooseOne  default:1 \"ChooseOne\" \"One\" \"Two\" \"Three\"]</td>\r\n		</tr>\r\n		<tr>\r\n			<td><label>Filling Flavour *</label></td>\r\n			<td>[select FillingFlavour default:1 \"FillingFlavour\" \"One\" \"Two\" \"Three\"]</td>\r\n		</tr>\r\n		<tr>\r\n			<td><label>Icing Flavour *</label></td>\r\n			<td>[select IcingFlavour default:1 \" IcingFlavour \" \"One\" \"Two\" \"Three\"]</td>\r\n		</tr>\r\n	</table>\r\n	<h4>Enter Design Details</h4>\r\n	<hr/>\r\n	\r\n\r\n	[radio ChooseaBaseDesign default:1  \"Standard Balloons & Confetti\" \"Standard Floral\" \"Standard Ribbon & Confetti\" \"Custom (Extra Charge)\"]\r\n	<p>Photos shown above are for providing a visual example of each design option only.<br/>To specify more details, please do so in the Additional Design/Theme Details section.</p>\r\n	[checkbox HandcraftedItemsonTop \"No, thank you\" \"Yes, I’ll provide them\" \"Yes, please make them (extra charges)\"]\r\n	<p>Cost to create handcrafted items will be based on the amount of items and complexity of design. For a quick quote on cost, please visit our bakery or Contact Us for details.</p>\r\n	[checkbox Whoisthecakefor \"Male\" \"Female\" \"Child\" \"Teen\" \"Adult\"]\r\n	<p>Check all that apply.</p>\r\n	<table>\r\n		<tr>\r\n			<td><label>List Prefered Cake Colours *</label></td>\r\n			<td>[text ListPreferedCakeColours placeholder \"Enter Colors Here...\"]</td>\r\n		</tr>\r\n		<tr>\r\n			<td><label>Write Cake Inscription:</label></td>\r\n			<td>[text WriteCakeInscription: placeholder \"Enter Inscription Here...\"]</td>\r\n		</tr>\r\n		<tr>\r\n			<td><label>Photo Example of Cake:</label></td>\r\n			<td>[file PhotoExampleofCake: filetypes:png|jpg|jpeg|gif]</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><p>Upload any photo example of a cake design that you\'d like to copy for your cake. </br>You may also send a link in the field below.</p></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">[text EnterLink... placeholder \"Enter Link...\"]</td>\r\n		</tr>\r\n		<tr>\r\n			<td><label>Additional Design/Theme Details:</label></td>\r\n			<td>[textarea AdditionalDesignThemeDetails: placeholder \"Enter Details Here...\"]</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n				<p><stronge>0 of 450 max characters</stronge></p>\r\n				<p>Use this field if you have any additional comments regarding your cake such as Theme, Custom Design Details, etc. For instance, if a likeness is to be drawn, include descriptive information about the subject, such as hair length and color, facial hair, glasses, etc.  </p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Design Cost:</td>\r\n			<td>$0000</td>\r\n		</tr>\r\n	</table>\r\n	<h4>Choose Cake Base</h4>\r\n	<hr/>\r\n	<p>Actual costs may vary upon further discussion. All prices are subject to change without further notice.</p>\r\n	<table>\r\n		<tr>\r\n			<td>Cake Base</td>\r\n			<td>$17.75</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Flavors, Fillings, etc.</td>\r\n			<td>$23.09</td>\r\n		</tr>\r\n		<tr>	\r\n			<td>Design</td>\r\n			<td>$5.33</td>\r\n		</tr>\r\n		<tr>	\r\n			<td>Total</td>\r\n			<td>$46.17</td>\r\n		</tr>\r\n	</table>\r\n	<h4>Delivery Details</h4>\r\n	<hr/>\r\n	<table>\r\n		<tr>\r\n			<td><label>Pick-up or Delivery?*</label></td>\r\n			<td>[checkbox Pick-uporDelivery \"Pick-up\" \"Delivery\"]</td>\r\n		</tr>\r\n		<tr>\r\n			<td><label>Date *</label></td>\r\n			<td>[date Date placeholder \"Choose Date\"]</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><p>There is a 2-week notice required for all custom cake orders.</p></td>\r\n		</tr>\r\n		<tr>\r\n			<td><label>Time *</label></td>\r\n			<td>[text Time placeholder \"Choose Time\"]</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><p>Only available during business hours.</p></td>\r\n		</tr>\r\n	</table>\r\n	<h4>Customer Details</h4>\r\n	<hr/>\r\n	<table>\r\n		<tr>\r\n			<td><label>First Name *</label></td>\r\n			<td>[text fnam placeholder \"First Name\"]</td>\r\n		</tr>\r\n		<tr>\r\n			<td><label>Last Name *</label></td>\r\n			<td>[text lname placeholder \"Last Name\"]</td>\r\n		</tr>\r\n		<tr>\r\n			<td><label>Email *</label></td>\r\n			<td>[email your-email placeholder \"Enter Email ....\"]</td>\r\n		</tr>\r\n		<tr>\r\n			<td><label>Phone No. *</label></td>\r\n			<td>[text PhoneNo. placeholder \"Phone No. *\"]</td>\r\n		</tr>\r\n		<tr>\r\n			<td><label>Address *</label></td>\r\n			<td>[textarea EnterFullAddresswithPostalCode placeholder \"Enter Full Address with Postal Code\"]</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><hr/></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">[submit class:btnsubmit \"PLACE ORDER\"]</td>\r\n		</tr>\r\n	</table>\r\n	</div>\r\n</div>\n1\nHeaven Bakery \"[your-subject]\"\n[your-email] <furqancsit@gmail.com>\nfurqancsit@gmail.com\nFrom: \r\nSubject: Heaven Bakery \r\n\r\nMessage Body:\r\n[CakeTier][CakeShape][CakeSize][ChooseOne][FillingFlavour][IcingFlavour][ChooseaBaseDesign][HandcraftedItemsonTop][Whoisthecakefor][ListPreferedCakeColours][WriteCakeInscription:][PhotoExampleofCake:][EnterLink...][AdditionalDesignThemeDetails:][Pick-uporDelivery][Date][Time][fnam][lname][Email][PhoneNo.][EnterFullAddresswithPostalCode]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Heaven Bakery (http://localhost/heavenbakery)\n\n\n\n\n\nHeaven Bakery \"[your-subject]\"\nHeaven Bakery <furqancsit@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Heaven Bakery (http://localhost/heavenbakery)\nReply-To: furqancsit@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Custom Cake', '', 'publish', 'closed', 'closed', '', 'custom-cake', '', '', '2019-01-24 18:22:20', '2019-01-24 18:22:20', '', 0, 'http://localhost/heavenbakery/?post_type=wpcf7_contact_form&#038;p=44', 0, 'wpcf7_contact_form', '', 0),
(45, 1, '2019-01-09 18:11:44', '2019-01-09 18:11:44', '<!-- wp:shortcode -->\n[contact-form-7 id=\"44\" title=\"Custom Cake\"]\n<!-- /wp:shortcode -->', 'CUSTOM CAKES', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-01-09 18:11:44', '2019-01-09 18:11:44', '', 17, 'http://localhost/heavenbakery/17-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2019-01-09 18:12:23', '2019-01-09 18:12:23', '<div class=\"container\"></div>\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"44\" title=\"Custom Cake\"]\n<!-- /wp:shortcode -->\n\n', 'CUSTOM CAKES', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-01-09 18:12:23', '2019-01-09 18:12:23', '', 17, 'http://localhost/heavenbakery/17-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2019-01-09 18:13:25', '2019-01-09 18:13:25', '<div class=\"container\">\n[contact-form-7 id=\"44\" title=\"Custom Cake\"]</div>', 'CUSTOM CAKES', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-01-09 18:13:25', '2019-01-09 18:13:25', '', 17, 'http://localhost/heavenbakery/17-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2019-01-09 19:26:05', '2019-01-09 19:26:05', '[fooditem_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2019-01-12 09:22:56', '2019-01-12 09:22:56', '', 0, 'http://localhost/heavenbakery/checkout/', 1, 'page', '', 0),
(50, 1, '2019-01-09 19:26:05', '2019-01-09 19:26:05', 'Thank you for your purchase! [rpress_receipt]', 'Purchase Confirmation', '', 'publish', 'closed', 'closed', '', 'purchase-confirmation', '', '', '2019-01-12 09:22:28', '2019-01-12 09:22:28', '', 49, 'http://localhost/heavenbakery/checkout/purchase-confirmation/', 4, 'page', '', 0),
(51, 1, '2019-01-09 19:26:05', '2019-01-09 19:26:05', 'Your transaction failed, please try again or contact site support.', 'Transaction Failed', '', 'publish', 'closed', 'closed', '', 'transaction-failed', '', '', '2019-01-12 09:21:59', '2019-01-12 09:21:59', '', 49, 'http://localhost/heavenbakery/checkout/transaction-failed/', 3, 'page', '', 0),
(52, 1, '2019-01-09 19:26:05', '2019-01-09 19:26:05', '[order_history]', 'Order History', '', 'publish', 'closed', 'closed', '', 'order-history', '', '', '2019-01-12 09:22:40', '2019-01-12 09:22:40', '', 49, 'http://localhost/heavenbakery/checkout/order-history/', 2, 'page', '', 0),
(55, 1, '2019-01-09 19:37:24', '2019-01-09 19:37:24', '<!-- wp:shortcode -->\n[fooditems]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'SHOP', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2019-01-12 09:28:17', '2019-01-12 09:28:17', '', 0, 'http://localhost/heavenbakery/?page_id=55', 7, 'page', '', 0),
(56, 1, '2019-01-09 19:37:24', '2019-01-09 19:37:24', '[fooditems]', 'Food List', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2019-01-09 19:37:24', '2019-01-09 19:37:24', '', 55, 'http://localhost/heavenbakery/55-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2019-01-09 19:37:48', '2019-01-09 19:37:48', '<!-- wp:shortcode -->\n[fooditems]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Food List', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2019-01-09 19:37:48', '2019-01-09 19:37:48', '', 55, 'http://localhost/heavenbakery/55-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2019-01-09 19:45:51', '2019-01-09 19:45:51', 'Crispy Somasa', 'Crispy Somasa', '', 'trash', 'closed', 'closed', '', 'crispy-somasa__trashed', '', '', '2019-01-12 10:37:34', '2019-01-12 10:37:34', '', 0, 'http://localhost/heavenbakery/?post_type=fooditem&#038;p=62', 0, 'fooditem', '', 0),
(63, 1, '2019-01-09 19:45:51', '2019-01-09 19:45:51', 'Crispy Somasa', 'Crispy Somasa', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2019-01-09 19:45:51', '2019-01-09 19:45:51', '', 62, 'http://localhost/heavenbakery/62-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2019-01-09 19:49:36', '2019-01-09 19:49:36', 'Flavored with melted chocolate.', 'Chocolate Cake', '', 'publish', 'closed', 'closed', '', 'chicken-pokaro', '', '', '2019-01-12 10:46:53', '2019-01-12 10:46:53', '', 0, 'http://localhost/heavenbakery/?post_type=fooditem&#038;p=65', 0, 'fooditem', '', 0),
(66, 1, '2019-01-09 19:49:09', '2019-01-09 19:49:09', '', 'burger', '', 'inherit', 'open', 'closed', '', 'burger', '', '', '2019-01-09 19:49:09', '2019-01-09 19:49:09', '', 65, 'http://localhost/heavenbakery/wp-content/uploads/rpress/2019/01/burger.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2019-01-09 19:49:10', '2019-01-09 19:49:10', '', 'pizza', '', 'inherit', 'open', 'closed', '', 'pizza', '', '', '2019-01-09 19:49:10', '2019-01-09 19:49:10', '', 65, 'http://localhost/heavenbakery/wp-content/uploads/rpress/2019/01/pizza.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2019-01-09 19:49:36', '2019-01-09 19:49:36', 'chicken pakora', 'Chicken Pokaro', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2019-01-09 19:49:36', '2019-01-09 19:49:36', '', 65, 'http://localhost/heavenbakery/65-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2019-01-09 19:53:38', '2019-01-09 19:53:38', 'Regular kabab', 'Regular kabab', '', 'trash', 'closed', 'closed', '', 'regular-kabab__trashed', '', '', '2019-01-12 10:37:30', '2019-01-12 10:37:30', '', 0, 'http://localhost/heavenbakery/?post_type=fooditem&#038;p=69', 0, 'fooditem', '', 0),
(70, 1, '2019-01-09 19:53:38', '2019-01-09 19:53:38', 'Regular kabab', 'Regular kabab', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2019-01-09 19:53:38', '2019-01-09 19:53:38', '', 69, 'http://localhost/heavenbakery/69-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2019-01-12 09:21:58', '2019-01-12 09:21:58', 'Your transaction failed, please try again or contact site support.', 'Transaction Failed', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2019-01-12 09:21:58', '2019-01-12 09:21:58', '', 51, 'http://localhost/heavenbakery/51-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2019-01-12 09:22:27', '2019-01-12 09:22:27', 'Thank you for your purchase! [rpress_receipt]', 'Purchase Confirmation', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2019-01-12 09:22:27', '2019-01-12 09:22:27', '', 50, 'http://localhost/heavenbakery/50-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2019-01-12 09:22:39', '2019-01-12 09:22:39', '[order_history]', 'Order History', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-01-12 09:22:39', '2019-01-12 09:22:39', '', 52, 'http://localhost/heavenbakery/52-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2019-01-12 09:22:55', '2019-01-12 09:22:55', '[fooditem_checkout]', 'Checkout', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2019-01-12 09:22:55', '2019-01-12 09:22:55', '', 49, 'http://localhost/heavenbakery/49-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2019-01-12 09:27:02', '2019-01-12 09:27:02', '<!-- wp:shortcode -->\n[fooditems]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'SHOP', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2019-01-12 09:27:02', '2019-01-12 09:27:02', '', 55, 'http://localhost/heavenbakery/55-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2019-01-12 10:05:23', '2019-01-12 10:05:23', '', 'Furqan Zamir', '', 'abandoned', 'closed', 'closed', '', 'furqan-zamir', '', '', '2019-01-20 08:04:01', '2019-01-20 08:04:01', '', 0, 'http://localhost/heavenbakery/?post_type=rpress_payment&#038;p=83', 0, 'rpress_payment', '', 1),
(86, 1, '2019-01-12 10:21:02', '2019-01-12 10:21:02', 'Flavoured with melted chocolate.', 'Chocolate Cake', '', 'inherit', 'closed', 'closed', '', '65-autosave-v1', '', '', '2019-01-12 10:21:02', '2019-01-12 10:21:02', '', 65, 'http://localhost/heavenbakery/65-autosave-v1/', 0, 'revision', '', 0),
(87, 1, '2019-01-12 10:22:40', '2019-01-12 10:22:40', 'Flavored with melted chocolate.', 'Chocolate Cake', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2019-01-12 10:22:40', '2019-01-12 10:22:40', '', 65, 'http://localhost/heavenbakery/65-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2019-01-12 10:46:45', '2019-01-12 10:46:45', '', 'choclate-cake', '', 'inherit', 'open', 'closed', '', 'choclate-cake', '', '', '2019-01-12 10:46:45', '2019-01-12 10:46:45', '', 65, 'http://localhost/heavenbakery/wp-content/uploads/rpress/2019/01/choclate-cake.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2019-01-12 17:32:28', '2019-01-12 17:32:28', 'Sed ut perspiciatis unde omnis iste natus.', 'Red Velvet Cake', '', 'publish', 'closed', 'closed', '', 'red-velvet-cake', '', '', '2019-01-12 17:33:28', '2019-01-12 17:33:28', '', 0, 'http://localhost/heavenbakery/?post_type=fooditem&#038;p=90', 0, 'fooditem', '', 0),
(91, 1, '2019-01-12 17:32:21', '2019-01-12 17:32:21', '', 'red-velvet', '', 'inherit', 'open', 'closed', '', 'red-velvet', '', '', '2019-01-12 17:32:21', '2019-01-12 17:32:21', '', 90, 'http://localhost/heavenbakery/wp-content/uploads/rpress/2019/01/red-velvet.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2019-01-12 17:32:28', '2019-01-12 17:32:28', 'Sed ut perspiciatis unde omnis iste natus.', 'Red Velvet Cake', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2019-01-12 17:32:28', '2019-01-12 17:32:28', '', 90, 'http://localhost/heavenbakery/90-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2019-01-12 17:36:17', '2019-01-12 17:36:17', 'Flavoured with melted chocolate.', 'Chocolate  Cookie', '', 'publish', 'closed', 'closed', '', 'chocolate-cookie', '', '', '2019-01-12 17:39:02', '2019-01-12 17:39:02', '', 0, 'http://localhost/heavenbakery/?post_type=fooditem&#038;p=93', 0, 'fooditem', '', 0),
(94, 1, '2019-01-12 17:36:10', '2019-01-12 17:36:10', '', 'choclate-cookies', '', 'inherit', 'open', 'closed', '', 'choclate-cookies', '', '', '2019-01-12 17:36:10', '2019-01-12 17:36:10', '', 93, 'http://localhost/heavenbakery/wp-content/uploads/rpress/2019/01/choclate-cookies.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2019-01-12 17:36:17', '2019-01-12 17:36:17', 'Flavoured with melted chocolate.', 'Chocolate  Cookie', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2019-01-12 17:36:17', '2019-01-12 17:36:17', '', 93, 'http://localhost/heavenbakery/93-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `hb_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(96, 1, '2019-01-12 17:37:31', '2019-01-12 17:37:31', 'Sed ut perspiciatis unde omnis iste natus.', 'Chocolate Chip Cookie', '', 'publish', 'closed', 'closed', '', 'chocolate-chip-cookie', '', '', '2019-01-12 17:38:25', '2019-01-12 17:38:25', '', 0, 'http://localhost/heavenbakery/?post_type=fooditem&#038;p=96', 0, 'fooditem', '', 0),
(97, 1, '2019-01-12 17:37:31', '2019-01-12 17:37:31', 'Sed ut perspiciatis unde omnis iste natus.', 'Chocolate Chip Cookie', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2019-01-12 17:37:31', '2019-01-12 17:37:31', '', 96, 'http://localhost/heavenbakery/96-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2019-01-12 17:38:56', '2019-01-12 17:38:56', '', 'chocolate-biscuit-500x500', '', 'inherit', 'open', 'closed', '', 'chocolate-biscuit-500x500', '', '', '2019-01-12 17:38:56', '2019-01-12 17:38:56', '', 93, 'http://localhost/heavenbakery/wp-content/uploads/rpress/2019/01/chocolate-biscuit-500x500.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2019-01-12 17:42:39', '2019-01-12 17:42:39', 'Flavoured with melted chocolate and chocolate chips.', 'Chocolate Cup Cake', '', 'publish', 'closed', 'closed', '', 'chocolate-cup-cake', '', '', '2019-01-12 17:46:45', '2019-01-12 17:46:45', '', 0, 'http://localhost/heavenbakery/?post_type=fooditem&#038;p=100', 0, 'fooditem', '', 0),
(101, 1, '2019-01-12 17:42:39', '2019-01-12 17:42:39', 'Flavoured with melted chocolate and chocolate chips.', 'Chocolate Cup Cake', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2019-01-12 17:42:39', '2019-01-12 17:42:39', '', 100, 'http://localhost/heavenbakery/100-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2019-01-12 17:43:17', '2019-01-12 17:43:17', 'Sed ut perspiciatis unde omnis iste natus.', 'Red Velvet Cup Cake', '', 'publish', 'closed', 'closed', '', 'red-velvet-cup-cake', '', '', '2019-01-12 17:46:13', '2019-01-12 17:46:13', '', 0, 'http://localhost/heavenbakery/?post_type=fooditem&#038;p=102', 0, 'fooditem', '', 0),
(103, 1, '2019-01-12 17:43:17', '2019-01-12 17:43:17', 'Sed ut perspiciatis unde omnis iste natus.', 'Red Velvet Cup Cake', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2019-01-12 17:43:17', '2019-01-12 17:43:17', '', 102, 'http://localhost/heavenbakery/102-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2019-01-12 17:46:06', '2019-01-12 17:46:06', '', 'Red-Velvet-Cupcakes-with-White-Chocolate-Cream-Cheese-Frosting-4', '', 'inherit', 'open', 'closed', '', 'red-velvet-cupcakes-with-white-chocolate-cream-cheese-frosting-4', '', '', '2019-01-12 17:46:06', '2019-01-12 17:46:06', '', 102, 'http://localhost/heavenbakery/wp-content/uploads/rpress/2019/01/Red-Velvet-Cupcakes-with-White-Chocolate-Cream-Cheese-Frosting-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2019-01-12 17:46:34', '2019-01-12 17:46:34', '', 'choclate-cup-cake', '', 'inherit', 'open', 'closed', '', 'choclate-cup-cake', '', '', '2019-01-12 17:46:34', '2019-01-12 17:46:34', '', 100, 'http://localhost/heavenbakery/wp-content/uploads/rpress/2019/01/choclate-cup-cake.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', 'test Zamir', '', 'publish', 'closed', 'closed', '', 'test-zamir', '', '', '2019-01-13 10:12:30', '2019-01-13 10:12:30', '', 0, 'http://localhost/heavenbakery/?post_type=rpress_payment&#038;p=106', 0, 'rpress_payment', '', 3),
(107, 1, '2019-01-12 18:18:52', '2019-01-12 18:18:52', 'The classic long, thin loaf, whose dough is actually defined by French law.', 'Baguette', '', 'publish', 'closed', 'closed', '', 'baguette', '', '', '2019-01-12 18:21:57', '2019-01-12 18:21:57', '', 0, 'http://localhost/heavenbakery/?post_type=fooditem&#038;p=107', 0, 'fooditem', '', 0),
(108, 1, '2019-01-12 18:18:42', '2019-01-12 18:18:42', '', 'fresh bread isolated on white background cutout', 'fresh bread isolated on white background cutout', 'inherit', 'open', 'closed', '', 'fresh-bread-isolated-on-white-background-cutout', '', '', '2019-01-12 18:18:42', '2019-01-12 18:18:42', '', 107, 'http://localhost/heavenbakery/wp-content/uploads/rpress/2019/01/bread-bakery.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2019-01-12 18:18:52', '2019-01-12 18:18:52', 'The classic long, thin loaf, whose dough is actually defined by French law.', 'Baguette', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2019-01-12 18:18:52', '2019-01-12 18:18:52', '', 107, 'http://localhost/heavenbakery/107-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2019-01-12 18:25:40', '2019-01-12 18:25:40', 'Joanna Gaines Lemon Bars', 'Bars', '', 'publish', 'closed', 'closed', '', 'bars', '', '', '2019-01-12 18:25:40', '2019-01-12 18:25:40', '', 0, 'http://localhost/heavenbakery/?post_type=fooditem&#038;p=110', 0, 'fooditem', '', 0),
(111, 1, '2019-01-12 18:25:31', '2019-01-12 18:25:31', '', 'bars', '', 'inherit', 'open', 'closed', '', 'bars', '', '', '2019-01-12 18:25:31', '2019-01-12 18:25:31', '', 110, 'http://localhost/heavenbakery/wp-content/uploads/rpress/2019/01/bars.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2019-01-12 18:25:40', '2019-01-12 18:25:40', 'Joanna Gaines Lemon Bars', 'Bars', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2019-01-12 18:25:40', '2019-01-12 18:25:40', '', 110, 'http://localhost/heavenbakery/110-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2019-01-12 18:27:25', '2019-01-12 18:27:25', 'Apple Double Crust Pie', 'Pie', '', 'publish', 'closed', 'closed', '', 'pie', '', '', '2019-01-12 18:27:25', '2019-01-12 18:27:25', '', 0, 'http://localhost/heavenbakery/?post_type=fooditem&#038;p=113', 0, 'fooditem', '', 0),
(114, 1, '2019-01-12 18:27:19', '2019-01-12 18:27:19', '', 'Pie-cookies', '', 'inherit', 'open', 'closed', '', 'pie-cookies', '', '', '2019-01-12 18:27:19', '2019-01-12 18:27:19', '', 113, 'http://localhost/heavenbakery/wp-content/uploads/rpress/2019/01/Pie-cookies.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2019-01-12 18:27:25', '2019-01-12 18:27:25', 'Apple Double Crust Pie', 'Pie', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2019-01-12 18:27:25', '2019-01-12 18:27:25', '', 113, 'http://localhost/heavenbakery/113-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2019-01-12 18:31:09', '2019-01-12 18:31:09', 'Croissant-Making', 'Croissant', '', 'publish', 'closed', 'closed', '', 'croissant', '', '', '2019-01-12 18:31:09', '2019-01-12 18:31:09', '', 0, 'http://localhost/heavenbakery/?post_type=fooditem&#038;p=116', 0, 'fooditem', '', 0),
(117, 1, '2019-01-12 18:31:03', '2019-01-12 18:31:03', '', 'Croissants', '', 'inherit', 'open', 'closed', '', 'croissants', '', '', '2019-01-12 18:31:03', '2019-01-12 18:31:03', '', 116, 'http://localhost/heavenbakery/wp-content/uploads/rpress/2019/01/Croissants.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2019-01-12 18:31:09', '2019-01-12 18:31:09', 'Croissant-Making', 'Croissant', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2019-01-12 18:31:09', '2019-01-12 18:31:09', '', 116, 'http://localhost/heavenbakery/116-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2019-01-12 18:33:18', '2019-01-12 18:33:18', 'Sugar Fix: The top treats at TARTS', 'TARTS', '', 'publish', 'closed', 'closed', '', 'tarts', '', '', '2019-01-12 18:33:18', '2019-01-12 18:33:18', '', 0, 'http://localhost/heavenbakery/?post_type=fooditem&#038;p=119', 0, 'fooditem', '', 0),
(120, 1, '2019-01-12 18:33:10', '2019-01-12 18:33:10', '', 'Sugar-Fix-Tarts-Bakery', '', 'inherit', 'open', 'closed', '', 'sugar-fix-tarts-bakery', '', '', '2019-01-12 18:33:10', '2019-01-12 18:33:10', '', 119, 'http://localhost/heavenbakery/wp-content/uploads/rpress/2019/01/Sugar-Fix-Tarts-Bakery.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2019-01-12 18:33:18', '2019-01-12 18:33:18', 'Sugar Fix: The top treats at TARTS', 'TARTS', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2019-01-12 18:33:18', '2019-01-12 18:33:18', '', 119, 'http://localhost/heavenbakery/119-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2019-01-13 07:16:41', '2019-01-13 07:16:41', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"9\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home Page', 'home-page', 'publish', 'closed', 'closed', '', 'group_5c3ae59c1b6e3', '', '', '2019-01-13 07:18:55', '2019-01-13 07:18:55', '', 0, 'http://localhost/heavenbakery/?post_type=acf-field-group&#038;p=124', 0, 'acf-field-group', '', 0),
(125, 1, '2019-01-13 07:16:42', '2019-01-13 07:16:42', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:19:\"field_5c3ae5fa4d575\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Home Slider', 'home_slider', 'publish', 'closed', 'closed', '', 'field_5c3ae5acc65be', '', '', '2019-01-13 07:18:55', '2019-01-13 07:18:55', '', 124, 'http://localhost/heavenbakery/?post_type=acf-field&#038;p=125', 0, 'acf-field', '', 0),
(126, 1, '2019-01-13 07:18:55', '2019-01-13 07:18:55', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Hero Banner Slider', 'hero_banner_slider', 'publish', 'closed', 'closed', '', 'field_5c3ae5fa4d575', '', '', '2019-01-13 07:18:55', '2019-01-13 07:18:55', '', 125, 'http://localhost/heavenbakery/?post_type=acf-field&p=126', 0, 'acf-field', '', 0),
(127, 1, '2019-01-13 07:20:02', '2019-01-13 07:20:02', '', 'heaven-slider', '', 'inherit', 'open', 'closed', '', 'heaven-slider', '', '', '2019-01-13 07:20:02', '2019-01-13 07:20:02', '', 9, 'http://localhost/heavenbakery/wp-content/uploads/2019/01/heaven-slider.png', 0, 'attachment', 'image/png', 0),
(128, 1, '2019-01-13 07:40:39', '2019-01-13 07:40:39', '', 'sweets-hd-wallpapers', '', 'inherit', 'open', 'closed', '', 'sweets-hd-wallpapers', '', '', '2019-01-13 07:23:53', '2019-01-13 07:23:53', '', 9, 'http://localhost/heavenbakery/wp-content/uploads/2019/01/sweets-hd-wallpapers.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2019-01-13 07:35:54', '2019-01-13 07:35:54', '', 'Coffee_Croissant_Cup_Vapor_Grain_541442_1280x730', '', 'inherit', 'open', 'closed', '', 'coffee_croissant_cup_vapor_grain_541442_1280x730', '', '', '2019-01-13 07:25:02', '2019-01-13 07:25:02', '', 9, 'http://localhost/heavenbakery/wp-content/uploads/2019/01/Coffee_Croissant_Cup_Vapor_Grain_541442_1280x730.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2019-01-13 07:25:13', '2019-01-13 07:25:13', '<div class=\"heaven-bakery-section\">\n<div class=\"container\">\n<h3>Austin, TX, United States, +1 512-491-8456</h3>\n<h2>We’ve opned a bakery in Texas.</h2>\n<a href=\"#\" class=\"btn btnprim\">CHECK US OUT</a>\n<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-aboutus-cover.png\" class=\"img-fluid imgtb50\">\n\n</div>\n<div class=\"container\">\n<div class=\"row align-items-center h-100\">\n<div class=\"col-lg-6 col-sm-6\">\n        <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-birthdaycake.png\" class=\"img-fluid\"></div>\n<div class=\"col-lg-6 col-sm-6\">\n<h3>We Make Custom Cakes</h3>\n<h2>Need cakes for a birthday\nor other special events?</h2>\n<a href=\"#\" class=\"btn btnprim\">ORDER CAKE</a>\n\n</div>\n</div>\n</div>\n<div class=\"container\">\n<div class=\"american-biscotta\">\n<div class=\"row align-items-center h-100\">\n<div class=\"col-lg-6 col-sm-6\">\n<h4>. DINE IN DEAL .</h4>\n<h1>Americano Biscatto</h1>\nOur finest blend of coffee served with\n2 freshly backed chocolate chip cookies.\n<h5>$12 - Available from 9am-12pm</h5>\n</div>\n<div class=\"col-lg-6 col-sm-6\">\n          <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-biscatto.png\" class=\"img-fluid\"></div>\n</div>\n</div>\n</div>\n<a href=\"#\" class=\"btn btnprim imgtb50\">SEE ALL DEALS</a>\n\n</div>', 'HOME', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-01-13 07:25:13', '2019-01-13 07:25:13', '', 9, 'http://localhost/heavenbakery/9-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2019-01-13 07:29:29', '2019-01-13 07:29:29', '<div class=\"heaven-bakery-section\">\n<div class=\"container\">\n<h3>Austin, TX, United States, +1 512-491-8456</h3>\n<h2>We’ve opned a bakery in Texas.</h2>\n<a href=\"#\" class=\"btn btnprim\">CHECK US OUT</a>\n<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-aboutus-cover.png\" class=\"img-fluid imgtb50\">\n\n</div>\n<div class=\"container\">\n<div class=\"row align-items-center h-100\">\n<div class=\"col-lg-6 col-sm-6\">\n        <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-birthdaycake.png\" class=\"img-fluid\"></div>\n<div class=\"col-lg-6 col-sm-6\">\n<h3>We Make Custom Cakes</h3>\n<h2>Need cakes for a birthday\nor other special events?</h2>\n<a href=\"#\" class=\"btn btnprim\">ORDER CAKE</a>\n\n</div>\n</div>\n</div>\n<div class=\"container\">\n<div class=\"american-biscotta\">\n<div class=\"row align-items-center h-100\">\n<div class=\"col-lg-6 col-sm-6\">\n<h4>. DINE IN DEAL .</h4>\n<h1>Americano Biscatto</h1>\nOur finest blend of coffee served with\n2 freshly backed chocolate chip cookies.\n<h5>$12 - Available from 9am-12pm</h5>\n</div>\n<div class=\"col-lg-6 col-sm-6\">\n          <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-biscatto.png\" class=\"img-fluid\"></div>\n</div>\n</div>\n</div>\n<a href=\"#\" class=\"btn btnprim imgtb50\">SEE ALL DEALS</a>\n\n</div>', 'HOME', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-01-13 07:29:29', '2019-01-13 07:29:29', '', 9, 'http://localhost/heavenbakery/9-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2019-01-13 08:12:19', '2019-01-13 08:12:19', '<div class=\"heaven-bakery-section\">\n<div class=\"container\">\n<h3>Austin, TX, United States, +1 512-491-8456</h3>\n<h2>We’ve opned a bakery in Texas.</h2>\n<a href=\"#\" class=\"btn btnprim\">CHECK US OUT</a>\n<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-aboutus-cover.png\" class=\"img-fluid imgtb50\">\n\n</div>\n<div class=\"container\">\n<div class=\"row align-items-center h-100\">\n<div class=\"col-lg-6 col-sm-6\">\n        <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-birthdaycake.png\" class=\"img-fluid\"></div>\n<div class=\"col-lg-6 col-sm-6\">\n<h3>We Make Custom Cakes</h3>\n<h2>Need cakes for a birthday\nor other special events?</h2>\n<a href=\"#\" class=\"btn btnprim\">ORDER CAKE</a>\n\n</div>\n</div>\n</div>\n<div class=\"container\">\n<div class=\"american-biscotta\">\n<div class=\"row align-items-center h-100\">\n<div class=\"col-lg-6 col-sm-6\">\n<h4>. DINE IN DEAL .</h4>\n<h1>Americano Biscatto</h1>\nOur finest blend of coffee served with\n2 freshly backed chocolate chip cookies.\n<h5>$12 - Available from 9am-12pm</h5>\n</div>\n<div class=\"col-lg-6 col-sm-6\">\n          <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-biscatto.png\" class=\"img-fluid\"></div>\n</div>\n</div>\n</div>\n<a href=\"#\" class=\"btn btnprim imgtb50\">SEE ALL DEALS</a>\n\n</div>', 'HOME', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-01-13 08:12:19', '2019-01-13 08:12:19', '', 9, 'http://localhost/heavenbakery/9-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2019-01-13 09:19:52', '2019-01-13 09:19:52', '', 'custom-cake-heaven', '', 'inherit', 'open', 'closed', '', 'custom-cake-heaven', '', '', '2019-01-13 09:19:52', '2019-01-13 09:19:52', '', 0, 'http://localhost/heavenbakery/wp-content/uploads/2019/01/custom-cake-heaven.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', '', '', 'publish', 'closed', 'closed', '', '134', '', '', '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', 90, 'http://localhost/heavenbakery/?post_type=rpress_log&p=134', 0, 'rpress_log', '', 0),
(135, 1, '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', '', '', 'publish', 'closed', 'closed', '', '135', '', '', '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', 113, 'http://localhost/heavenbakery/?post_type=rpress_log&p=135', 0, 'rpress_log', '', 0),
(136, 1, '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', '', '', 'publish', 'closed', 'closed', '', '136', '', '', '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', 113, 'http://localhost/heavenbakery/?post_type=rpress_log&p=136', 0, 'rpress_log', '', 0),
(137, 1, '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', '', '', 'publish', 'closed', 'closed', '', '137', '', '', '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', 113, 'http://localhost/heavenbakery/?post_type=rpress_log&p=137', 0, 'rpress_log', '', 0),
(138, 1, '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', '', '', 'publish', 'closed', 'closed', '', '138', '', '', '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', 113, 'http://localhost/heavenbakery/?post_type=rpress_log&p=138', 0, 'rpress_log', '', 0),
(139, 1, '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', '', '', 'publish', 'closed', 'closed', '', '139', '', '', '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', 113, 'http://localhost/heavenbakery/?post_type=rpress_log&p=139', 0, 'rpress_log', '', 0),
(140, 1, '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', '', '', 'publish', 'closed', 'closed', '', '140', '', '', '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', 113, 'http://localhost/heavenbakery/?post_type=rpress_log&p=140', 0, 'rpress_log', '', 0),
(141, 1, '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', '', '', 'publish', 'closed', 'closed', '', '141', '', '', '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', 113, 'http://localhost/heavenbakery/?post_type=rpress_log&p=141', 0, 'rpress_log', '', 0),
(142, 1, '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', '', '', 'publish', 'closed', 'closed', '', '142', '', '', '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', 113, 'http://localhost/heavenbakery/?post_type=rpress_log&p=142', 0, 'rpress_log', '', 0),
(143, 1, '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', '', '', 'publish', 'closed', 'closed', '', '143', '', '', '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', 113, 'http://localhost/heavenbakery/?post_type=rpress_log&p=143', 0, 'rpress_log', '', 0),
(144, 1, '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', '', '', 'publish', 'closed', 'closed', '', '144', '', '', '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', 113, 'http://localhost/heavenbakery/?post_type=rpress_log&p=144', 0, 'rpress_log', '', 0),
(145, 1, '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', '', '', 'publish', 'closed', 'closed', '', '145', '', '', '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', 113, 'http://localhost/heavenbakery/?post_type=rpress_log&p=145', 0, 'rpress_log', '', 0),
(146, 1, '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', '', '', 'publish', 'closed', 'closed', '', '146', '', '', '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', 113, 'http://localhost/heavenbakery/?post_type=rpress_log&p=146', 0, 'rpress_log', '', 0),
(147, 1, '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', '', '', 'publish', 'closed', 'closed', '', '147', '', '', '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', 113, 'http://localhost/heavenbakery/?post_type=rpress_log&p=147', 0, 'rpress_log', '', 0),
(148, 1, '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', '', '', 'publish', 'closed', 'closed', '', '148', '', '', '2019-01-13 06:05:00', '2019-01-13 06:05:00', '', 113, 'http://localhost/heavenbakery/?post_type=rpress_log&p=148', 0, 'rpress_log', '', 0),
(149, 1, '2019-01-13 18:16:37', '2019-01-13 18:16:37', '', 'CUSTOM CAKES', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-01-13 18:16:37', '2019-01-13 18:16:37', '', 17, 'http://localhost/heavenbakery/17-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2019-01-20 08:22:20', '2019-01-20 08:22:20', '<div class=\"csutomcake\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-lg-4 col-md-4\">\n<div class=\"customcakeinfo\">\n\n</div>\n</div>\n<div class=\"col-lg-8 col-md-8\"></div>\n</div>\n</div>\n</div>', 'CUSTOM CAKES', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-01-20 08:22:20', '2019-01-20 08:22:20', '', 17, 'http://localhost/heavenbakery/17-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2019-01-20 09:06:54', '2019-01-20 09:06:54', '<div class=\"csutomcake\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-lg-4 col-md-4\">\n<div class=\"customcakeinfo\">\n<h3>CAKE OPTIONS OVERVIEW</h3>\n<div id=\"accordion\">\n<div class=\"card\">\n<div class=\"card-header\" id=\"headingOne\">\n<h5 class=\"mb-0\">\n                    <button class=\"btn btn-link\" data-toggle=\"collapse\" data-target=\"#cakesiezes\" aria-expanded=\"true\" aria-controls=\"cakesiezes\">               <i class=\"fa\" aria-hidden=\"true\"></i>\nSIZE\n</button></h5>\n</div>\n<div id=\"cakesiezes\" class=\"collapse show\" aria-labelledby=\"headingOne\" data-parent=\"#accordion\">\n<div class=\"card-body\">\n<div class=\"table-responsive\">\n<table border=\"0\">\n<tbody>\n<tr>\n<td>\n<h3>Sheet Size:</h3>\n</td>\n<td>\n<h3>Serves:</h3>\n</td>\n</tr>\n<tr>\n<td>1/4</td>\n<td>28 People</td>\n</tr>\n<tr>\n<td>1/2</td>\n<td>48 People</td>\n</tr>\n<tr>\n<td>FULL</td>\n<td>98 People</td>\n</tr>\n<tr>\n<td>\n<h3>Round Size:</h3>\n</td>\n<td>&gt;\n<h3>Serves:</h3>\n</td>\n</tr>\n<tr>\n<td>6\"</td>\n<td>6-8 People</td>\n</tr>\n<tr>\n<td>7\"</td>\n<td>10-12 People</td>\n</tr>\n<tr>\n<td>8\"</td>\n<td>10-18 People</td>\n</tr>\n<tr>\n<td>9\"</td>\n<td>20-24 People</td>\n</tr>\n<tr>\n<td>10\"</td>\n<td>26-35 People</td>\n</tr>\n<tr>\n<td>12\"</td>\n<td>35-48 People</td>\n</tr>\n<tr>\n<td>14\"</td>\n<td>50-65 People</td>\n</tr>\n<tr>\n<td>16\"</td>\n<td>70-85 People</td>\n</tr>\n</tbody>\n</table>\n</div>\n</div>\n</div>\n</div>\n<div class=\"card\">\n<div class=\"card-header\" id=\"headingTwo\">\n<h5 class=\"mb-0\">\n                    <button class=\"btn btn-link collapsed\" data-toggle=\"collapse\" data-target=\"#collapseTwo\" aria-expanded=\"false\" aria-controls=\"collapseTwo\">\n<i class=\"fa\" aria-hidden=\"true\"></i>\nCollapsible Group Item #2\n</button></h5>\n</div>\n<div id=\"collapseTwo\" class=\"collapse\" aria-labelledby=\"headingTwo\" data-parent=\"#accordion\">\n<div class=\"card-body\">\n                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.</div>\n</div>\n</div>\n<div class=\"card\">\n<div class=\"card-header\" id=\"headingThree\">\n<h5 class=\"mb-0\">\n                    <button class=\"btn btn-link collapsed\" data-toggle=\"collapse\" data-target=\"#collapseThree\" aria-expanded=\"false\" aria-controls=\"collapseThree\">\n<i class=\"fa\" aria-hidden=\"true\"></i>\nCollapsible Group Item #3\n</button></h5>\n</div>\n<div id=\"collapseThree\" class=\"collapse\" aria-labelledby=\"headingThree\" data-parent=\"#accordion\">\n<div class=\"card-body\">\n                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n<div class=\"col-lg-8 col-md-8\"></div>\n</div>\n</div>\n</div>', 'CUSTOM CAKES', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-01-20 09:06:54', '2019-01-20 09:06:54', '', 17, 'http://localhost/heavenbakery/17-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2019-01-20 09:10:32', '2019-01-20 09:10:32', '<div class=\"csutomcake\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-lg-4 col-md-4\">\n<div class=\"customcakeinfo\">\n<h3>CAKE OPTIONS OVERVIEW</h3>\n<div id=\"accordion\">\n<div class=\"card\">\n<div class=\"card-header\" id=\"headingOne\">\n<h5 class=\"mb-0\">\n                    <button class=\"btn btn-link\" data-toggle=\"collapse\" data-target=\"#collapseOne\" aria-expanded=\"true\" aria-controls=\"collapseOne\">               <i class=\"fa\" aria-hidden=\"true\"></i>\nSIZE\n</button></h5>\n</div>\n<div id=\"collapseOne\" class=\"collapse show\" aria-labelledby=\"headingOne\" data-parent=\"#accordion\">\n<div class=\"card-body\">\n<div class=\"table-responsive\">\n<table border=\"0\">\n<tbody>\n<tr>\n<td>\n<h3>Sheet Size:</h3>\n</td>\n<td>\n<h3>Serves:</h3>\n</td>\n</tr>\n<tr>\n<td>1/4</td>\n<td>28 People</td>\n</tr>\n<tr>\n<td>1/2</td>\n<td>48 People</td>\n</tr>\n<tr>\n<td>FULL</td>\n<td>98 People</td>\n</tr>\n<tr>\n<td>\n<h3>Round Size:</h3>\n</td>\n<td>&gt;\n<h3>Serves:</h3>\n</td>\n</tr>\n<tr>\n<td>6\"</td>\n<td>6-8 People</td>\n</tr>\n<tr>\n<td>7\"</td>\n<td>10-12 People</td>\n</tr>\n<tr>\n<td>8\"</td>\n<td>10-18 People</td>\n</tr>\n<tr>\n<td>9\"</td>\n<td>20-24 People</td>\n</tr>\n<tr>\n<td>10\"</td>\n<td>26-35 People</td>\n</tr>\n<tr>\n<td>12\"</td>\n<td>35-48 People</td>\n</tr>\n<tr>\n<td>14\"</td>\n<td>50-65 People</td>\n</tr>\n<tr>\n<td>16\"</td>\n<td>70-85 People</td>\n</tr>\n</tbody>\n</table>\n</div>\n</div>\n</div>\n</div>\n<div class=\"card\">\n<div class=\"card-header\" id=\"headingTwo\">\n<h5 class=\"mb-0\">\n                    <button class=\"btn btn-link collapsed\" data-toggle=\"collapse\" data-target=\"#collapseTwo\" aria-expanded=\"false\" aria-controls=\"collapseTwo\">\n<i class=\"fa\" aria-hidden=\"true\"></i>\nCollapsible Group Item #2\n</button></h5>\n</div>\n<div id=\"collapseTwo\" class=\"collapse\" aria-labelledby=\"headingTwo\" data-parent=\"#accordion\">\n<div class=\"card-body\">\n                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.</div>\n</div>\n</div>\n<div class=\"card\">\n<div class=\"card-header\" id=\"headingThree\">\n<h5 class=\"mb-0\">\n                    <button class=\"btn btn-link collapsed\" data-toggle=\"collapse\" data-target=\"#collapseThree\" aria-expanded=\"false\" aria-controls=\"collapseThree\">\n<i class=\"fa\" aria-hidden=\"true\"></i>\nCollapsible Group Item #3\n</button></h5>\n</div>\n<div id=\"collapseThree\" class=\"collapse\" aria-labelledby=\"headingThree\" data-parent=\"#accordion\">\n<div class=\"card-body\">\n                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n<div class=\"col-lg-8 col-md-8\"></div>\n</div>\n</div>\n</div>', 'CUSTOM CAKES', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-01-20 09:10:32', '2019-01-20 09:10:32', '', 17, 'http://localhost/heavenbakery/17-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2019-01-20 09:55:03', '2019-01-20 09:55:03', '', 'CUSTOM CAKES', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-01-20 09:55:03', '2019-01-20 09:55:03', '', 17, 'http://localhost/heavenbakery/17-revision-v1/', 0, 'revision', '', 0),
(156, 1, '2019-01-24 17:56:11', '2019-01-24 17:56:11', '<div class=\"contactus padtb60\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-lg-8 col-sm-8\">\n       [contact-form-7 id=\"5\" title=\"Heaven Bakery Contact\"]</div>\n<div class=\"col-lg-4 col-sm-4\">\n<div class=\"out-details\">\n<h4>Our Details</h4>\n<div class=\"dt-bd\"></div>\n<h5>Address</h5>\n7890 Haven Ave, Ste 11\nRancho Cucamonga, California\n91730\n<div class=\"dt-bd\"></div>\n<h5>Opening Hours</h5>\nMon-Fri  4:30am – 6:00pm\nSaturday  6:00am – 6:00pm\nSunday  Closed\n<div class=\"dt-bd\"></div>\n<h5>Phone</h5>\n(909) 980-1819\n<div class=\"dt-bd\"></div>\n<h5>Email</h5>\nheavenbakery@gmail.com\n\n</div>\n</div>\n</div>\n<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-map.jpg\" class=\"img-fluid w100 imgtb60\">\n\n</div>\n</div>', 'CONTACT', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2019-01-24 17:56:11', '2019-01-24 17:56:11', '', 21, 'http://localhost/heavenbakery/21-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hb_rpress_customermeta`
--

DROP TABLE IF EXISTS `hb_rpress_customermeta`;
CREATE TABLE `hb_rpress_customermeta` (
  `meta_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hb_rpress_customermeta`
--

INSERT INTO `hb_rpress_customermeta` (`meta_id`, `customer_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'additional_email', 'test@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `hb_rpress_customers`
--

DROP TABLE IF EXISTS `hb_rpress_customers`;
CREATE TABLE `hb_rpress_customers` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` mediumtext NOT NULL,
  `purchase_value` mediumtext NOT NULL,
  `purchase_count` bigint(20) NOT NULL,
  `payment_ids` longtext NOT NULL,
  `notes` longtext NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hb_rpress_customers`
--

INSERT INTO `hb_rpress_customers` (`id`, `user_id`, `email`, `name`, `purchase_value`, `purchase_count`, `payment_ids`, `notes`, `date_created`) VALUES
(1, 1, 'furqancsit@gmail.com', 'test Zamir', '850.000000', 1, '83,106', '', '2019-01-12 10:05:22');

-- --------------------------------------------------------

--
-- Table structure for table `hb_rpress_order_notification`
--

DROP TABLE IF EXISTS `hb_rpress_order_notification`;
CREATE TABLE `hb_rpress_order_notification` (
  `id` bigint(20) NOT NULL,
  `notification` varchar(255) NOT NULL,
  `data` longtext,
  `user_roles_to_notify` longtext,
  `notified_users` longtext,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hb_rpress_order_notification`
--

INSERT INTO `hb_rpress_order_notification` (`id`, `notification`, `data`, `user_roles_to_notify`, `notified_users`, `date`) VALUES
(1, 'placed', 'a:2:{s:5:\"title\";b:0;s:11:\"description\";s:0:\"\";}', 's:4:\"NULL\";', 'a:0:{}', '2019-01-12 10:05:23'),
(2, 'placed', 'a:2:{s:5:\"title\";b:0;s:11:\"description\";s:0:\"\";}', 's:4:\"NULL\";', 'a:0:{}', '2019-01-12 18:11:56'),
(3, 'placed', 'a:2:{s:5:\"title\";b:0;s:11:\"description\";s:0:\"\";}', 's:4:\"NULL\";', 'a:0:{}', '2019-01-13 06:05:07');

-- --------------------------------------------------------

--
-- Table structure for table `hb_termmeta`
--

DROP TABLE IF EXISTS `hb_termmeta`;
CREATE TABLE `hb_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hb_terms`
--

DROP TABLE IF EXISTS `hb_terms`;
CREATE TABLE `hb_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hb_terms`
--

INSERT INTO `hb_terms` (`term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Uncategorized', 'uncategorized', 0, 0),
(2, 'Main menu', 'main-menu', 0, 0),
(3, 'Social Link', 'social-link', 0, 0),
(4, 'starter', 'starter', 0, 0),
(9, 'kabab', 'kabab', 0, 0),
(12, 'CAKES', 'cakes', 0, 0),
(13, 'COOKIES', 'cookies', 0, 0),
(14, 'CUP CAKES', 'cup-cakes', 0, 0),
(15, 'BREAD', 'bread', 0, 0),
(16, 'PIES', 'pies', 0, 0),
(17, 'BROWNIES', 'brownies', 0, 0),
(18, 'TARTS', 'tarts', 0, 0),
(19, 'BARS', 'bars', 0, 0),
(20, 'CROSSANTS', 'crossants', 0, 0),
(27, 'Cake In Pound', 'cake-in-pound', 0, 0),
(30, '1/2 Pound', '1-2-pound', 0, 0),
(31, '1 Pound', '1-pound', 0, 0),
(32, '2 Pound', '2-pound', 0, 0),
(33, '3 Pound', '3-pound', 0, 0),
(34, '4 Pound', '4-pound', 0, 0),
(35, 'sale', 'sale', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hb_term_relationships`
--

DROP TABLE IF EXISTS `hb_term_relationships`;
CREATE TABLE `hb_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hb_term_relationships`
--

INSERT INTO `hb_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(13, 2, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(31, 3, 0),
(32, 3, 0),
(33, 3, 0),
(62, 4, 0),
(65, 12, 0),
(65, 27, 0),
(65, 30, 0),
(65, 31, 0),
(65, 32, 0),
(65, 33, 0),
(65, 34, 0),
(69, 9, 0),
(90, 12, 0),
(90, 27, 0),
(90, 30, 0),
(90, 31, 0),
(90, 32, 0),
(90, 33, 0),
(90, 34, 0),
(93, 13, 0),
(96, 13, 0),
(100, 14, 0),
(100, 27, 0),
(100, 30, 0),
(100, 31, 0),
(100, 32, 0),
(100, 33, 0),
(100, 34, 0),
(102, 14, 0),
(102, 27, 0),
(102, 30, 0),
(102, 31, 0),
(102, 32, 0),
(102, 33, 0),
(102, 34, 0),
(107, 15, 0),
(110, 19, 0),
(113, 16, 0),
(116, 20, 0),
(119, 18, 0),
(134, 35, 0),
(135, 35, 0),
(136, 35, 0),
(137, 35, 0),
(138, 35, 0),
(139, 35, 0),
(140, 35, 0),
(141, 35, 0),
(142, 35, 0),
(143, 35, 0),
(144, 35, 0),
(145, 35, 0),
(146, 35, 0),
(147, 35, 0),
(148, 35, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hb_term_taxonomy`
--

DROP TABLE IF EXISTS `hb_term_taxonomy`;
CREATE TABLE `hb_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hb_term_taxonomy`
--

INSERT INTO `hb_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'nav_menu', '', 0, 3),
(4, 4, 'food-category', '', 0, 0),
(9, 9, 'food-category', '', 0, 0),
(12, 12, 'food-category', '', 0, 2),
(13, 13, 'food-category', '', 0, 2),
(14, 14, 'food-category', '', 0, 2),
(15, 15, 'food-category', '', 0, 1),
(16, 16, 'food-category', '', 0, 1),
(17, 17, 'food-category', '', 0, 0),
(18, 18, 'food-category', '', 0, 1),
(19, 19, 'food-category', '', 0, 1),
(20, 20, 'food-category', '', 0, 1),
(27, 27, 'addon_category', '', 0, 4),
(30, 30, 'addon_category', '', 27, 4),
(31, 31, 'addon_category', '', 27, 4),
(32, 32, 'addon_category', '', 27, 4),
(33, 33, 'addon_category', '', 27, 4),
(34, 34, 'addon_category', '', 27, 4),
(35, 35, 'rpress_log_type', '', 0, 15);

-- --------------------------------------------------------

--
-- Table structure for table `hb_usermeta`
--

DROP TABLE IF EXISTS `hb_usermeta`;
CREATE TABLE `hb_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hb_usermeta`
--

INSERT INTO `hb_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'test'),
(3, 1, 'last_name', 'Zamir'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'hb_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'hb_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'hb_dashboard_quick_press_last_post_id', '79'),
(18, 1, 'hb_user-settings', 'libraryContent=browse'),
(19, 1, 'hb_user-settings-time', '1546108815'),
(20, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:11:\"css-classes\";i:3;s:3:\"xfn\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '2'),
(24, 1, '_rpress_user_address', 'a:0:{}'),
(25, 1, 'acf_user_settings', 'a:0:{}'),
(26, 1, 'session_tokens', 'a:1:{s:64:\"8c7fb9da252c5644d8f2c3ed0611713a0cf449d8a3efea4e6836349a87d47d81\";a:4:{s:10:\"expiration\";i:1548519897;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3673.0 Safari/537.36\";s:5:\"login\";i:1548347097;}}');

-- --------------------------------------------------------

--
-- Table structure for table `hb_users`
--

DROP TABLE IF EXISTS `hb_users`;
CREATE TABLE `hb_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hb_users`
--

INSERT INTO `hb_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bu8q.aKcjVJ/xmYDtIdaVAn1B0w4q10', 'admin', 'furqancsit@gmail.com', '', '2018-12-29 18:07:30', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hb_commentmeta`
--
ALTER TABLE `hb_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `hb_comments`
--
ALTER TABLE `hb_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `hb_db7_forms`
--
ALTER TABLE `hb_db7_forms`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `hb_links`
--
ALTER TABLE `hb_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `hb_options`
--
ALTER TABLE `hb_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `hb_postmeta`
--
ALTER TABLE `hb_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `hb_posts`
--
ALTER TABLE `hb_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `hb_rpress_customermeta`
--
ALTER TABLE `hb_rpress_customermeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `hb_rpress_customers`
--
ALTER TABLE `hb_rpress_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `user` (`user_id`);

--
-- Indexes for table `hb_rpress_order_notification`
--
ALTER TABLE `hb_rpress_order_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hb_termmeta`
--
ALTER TABLE `hb_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `hb_terms`
--
ALTER TABLE `hb_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `hb_term_relationships`
--
ALTER TABLE `hb_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `hb_term_taxonomy`
--
ALTER TABLE `hb_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `hb_usermeta`
--
ALTER TABLE `hb_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `hb_users`
--
ALTER TABLE `hb_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hb_commentmeta`
--
ALTER TABLE `hb_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hb_comments`
--
ALTER TABLE `hb_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hb_db7_forms`
--
ALTER TABLE `hb_db7_forms`
  MODIFY `form_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hb_links`
--
ALTER TABLE `hb_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hb_options`
--
ALTER TABLE `hb_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=486;

--
-- AUTO_INCREMENT for table `hb_postmeta`
--
ALTER TABLE `hb_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=406;

--
-- AUTO_INCREMENT for table `hb_posts`
--
ALTER TABLE `hb_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `hb_rpress_customermeta`
--
ALTER TABLE `hb_rpress_customermeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hb_rpress_customers`
--
ALTER TABLE `hb_rpress_customers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hb_rpress_order_notification`
--
ALTER TABLE `hb_rpress_order_notification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hb_termmeta`
--
ALTER TABLE `hb_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hb_terms`
--
ALTER TABLE `hb_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `hb_term_taxonomy`
--
ALTER TABLE `hb_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `hb_usermeta`
--
ALTER TABLE `hb_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `hb_users`
--
ALTER TABLE `hb_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
