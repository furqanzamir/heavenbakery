-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2019 at 07:40 PM
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
(29, 'rewrite_rules', 'a:87:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=9&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:53:\"simple-custom-post-order/simple-custom-post-order.php\";}', 'yes'),
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
(94, 'hb_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
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
(111, 'cron', 'a:5:{i:1546690052;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1546711652;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1546711664;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1546711804;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1546106876;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.2\";s:7:\"version\";s:5:\"5.0.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1546681723;s:15:\"version_checked\";s:5:\"5.0.2\";s:12:\"translations\";a:0:{}}', 'no'),
(119, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1546681731;s:7:\"checked\";a:4:{s:13:\"heaven-bakery\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.1\";s:15:\"twentyseventeen\";s:3:\"1.9\";s:13:\"twentysixteen\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(120, '_site_transient_timeout_browser_07b78f063ed351a61fab6c139c5aa5b0', '1546711666', 'no'),
(121, '_site_transient_browser_07b78f063ed351a61fab6c139c5aa5b0', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:11:\"73.0.3642.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(124, 'can_compress_scripts', '1', 'no'),
(136, 'current_theme', 'Heaven Bakery', 'yes'),
(137, 'theme_mods_heaven-bakery', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"menu-1\";i:2;s:10:\"sociallink\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:11;s:16:\"header_textcolor\";s:5:\"blank\";}', 'yes'),
(138, 'theme_switched', '', 'yes'),
(141, 'recently_activated', 'a:1:{s:37:\"post-types-order/post-types-order.php\";i:1546111540;}', 'yes'),
(147, 'acf_version', '5.7.9', 'yes'),
(148, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1546106958;s:7:\"version\";s:5:\"5.1.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(150, 'category_children', 'a:0:{}', 'yes'),
(159, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(165, 'cpto_options', 'a:7:{s:23:\"show_reorder_interfaces\";a:3:{s:4:\"post\";s:4:\"show\";s:10:\"attachment\";s:4:\"show\";s:8:\"wp_block\";s:4:\"show\";}s:8:\"autosort\";i:1;s:9:\"adminsort\";i:1;s:18:\"use_query_ASC_DESC\";i:1;s:17:\"archive_drag_drop\";i:1;s:10:\"capability\";s:14:\"manage_options\";s:21:\"navigation_sort_apply\";i:1;}', 'yes'),
(166, 'CPT_configured', 'TRUE', 'yes'),
(168, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1546681731;s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.7.9\";s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:9:\"hello.php\";s:5:\"1.7.1\";s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:5:\"2.4.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.7.9\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"simple-custom-post-order/simple-custom-post-order.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/simple-custom-post-order\";s:4:\"slug\";s:24:\"simple-custom-post-order\";s:6:\"plugin\";s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:11:\"new_version\";s:5:\"2.4.0\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/simple-custom-post-order/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/simple-custom-post-order.2.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/simple-custom-post-order/assets/icon-256x256.jpg?rev=1859717\";s:2:\"1x\";s:77:\"https://ps.w.org/simple-custom-post-order/assets/icon-256x256.jpg?rev=1859717\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/simple-custom-post-order/assets/banner-772x250.jpg?rev=1859717\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(169, 'scporder_install', '1', 'yes'),
(170, 'scporder_options', 'a:2:{s:7:\"objects\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:4:\"tags\";s:0:\"\";}', 'yes'),
(177, 'widget_locationaddress', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(215, '_site_transient_timeout_theme_roots', '1546683530', 'no'),
(216, '_site_transient_theme_roots', 'a:4:{s:13:\"heaven-bakery\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

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
(15, 8, '_edit_lock', '1546106893:1'),
(16, 9, '_edit_lock', '1546184209:1'),
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
(40, 15, '_edit_lock', '1546188948:1'),
(41, 17, '_edit_lock', '1546109604:1'),
(42, 19, '_edit_lock', '1546183391:1'),
(43, 21, '_edit_lock', '1546185802:1'),
(44, 24, '_edit_lock', '1546109699:1'),
(45, 26, '_menu_item_type', 'post_type'),
(46, 26, '_menu_item_menu_item_parent', '0'),
(47, 26, '_menu_item_object_id', '24'),
(48, 26, '_menu_item_object', 'page'),
(49, 26, '_menu_item_target', ''),
(50, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(51, 26, '_menu_item_xfn', ''),
(52, 26, '_menu_item_url', ''),
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
(115, 33, '_menu_item_url', 'https://www.pinterest.com/');

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
(4, 1, '2018-12-29 18:07:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-12-29 18:07:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/heavenbakery/?p=4', 0, 'post', '', 0),
(5, 1, '2018-12-29 18:09:18', '2018-12-29 18:09:18', '<div class=\"contact-form\">\r\n<h4>Get in Touch</h4>\r\n<hr>\r\n<div class=\"row\">\r\n<div class=\"col-lg-3 col-sm-3\">\r\n              <label>Name *</label></div>\r\n<div class=\"col-lg-9 col-sm-9\">\r\n<div class=\"flname\">\r\n       [text* first-name \"First Name...\"][text* last-name \"Last Name...\"]\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n       <div class=\"col-lg-3 col-sm-3\">\r\n             <label>Email *</label></div>\r\n       <div class=\"col-lg-9 col-sm-9\">\r\n             [email* email \"Enter Email ...\"]\r\n       </div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-3 col-sm-3\">\r\n              <label>Phone no *</label></div>\r\n<div class=\"col-lg-9 col-sm-9\">\r\n              [tel* tel \"Phone no ...\"]\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-3 col-sm-3\">\r\n              <label>Question or Comments *</label></div>\r\n<div class=\"col-lg-9 col-sm-9\">\r\n              [textarea question-comments \"Enter You Comments Here...\"]</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-3 col-sm-3\">\r\n              <label></label></div>\r\n<div class=\"col-lg-9 col-sm-9\">\r\n              [submit class:btnsubmit \"CONTACT NOW\"]</div>\r\n</div>\r\n</div>\n1\nHeaven Bakery \"[your-subject]\"\nHeaven Bakery <furqancsit@gmail.com>\nfurqancsit@gmail.com\nFrom: [your-name] <[email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[question-comments]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Heaven Bakery (http://localhost/heavenbakery)\nReply-To: [email]\n\n\n\n\nHeaven Bakery \"[your-subject]\"\nHeaven Bakery <furqancsit@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Heaven Bakery (http://localhost/heavenbakery)\nReply-To: furqancsit@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Heaven Bakery Contact', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-12-30 16:06:09', '2018-12-30 16:06:09', '', 0, 'http://localhost/heavenbakery/?post_type=wpcf7_contact_form&#038;p=5', 0, 'wpcf7_contact_form', '', 0),
(8, 1, '2018-12-29 18:10:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-29 18:10:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/heavenbakery/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-12-29 18:11:58', '2018-12-29 18:11:58', '<div class=\"heaven-bakery-section\">\n<div class=\"container\">\n<h3>Austin, TX, United States, +1 512-491-8456</h3>\n<h2>We’ve opned a bakery in Texas.</h2>\n<a href=\"#\" class=\"btn btnprim\">CHECK US OUT</a>\n<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-aboutus-cover.png\" class=\"img-fluid imgtb50\">\n\n</div>\n<div class=\"container\">\n<div class=\"row align-items-center h-100\">\n<div class=\"col-lg-6 col-sm-6\">\n        <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-birthdaycake.png\" class=\"img-fluid\"></div>\n<div class=\"col-lg-6 col-sm-6\">\n<h3>We Make Custom Cakes</h3>\n<h2>Need cakes for a birthday\nor other special events?</h2>\n<a href=\"#\" class=\"btn btnprim\">ORDER CAKE</a>\n\n</div>\n</div>\n</div>\n<div class=\"container\">\n<div class=\"american-biscotta\">\n<div class=\"row align-items-center h-100\">\n<div class=\"col-lg-6 col-sm-6\">\n<h4>. DINE IN DEAL .</h4>\n<h1>Americano Biscatto</h1>\nOur finest blend of coffee served with\n2 freshly backed chocolate chip cookies.\n<h5>$12 - Available from 9am-12pm</h5>\n</div>\n<div class=\"col-lg-6 col-sm-6\">\n          <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-biscatto.png\" class=\"img-fluid\"></div>\n</div>\n</div>\n</div>\n<a href=\"#\" class=\"btn btnprim imgtb50\">SEE ALL DEALS</a>\n\n</div>', 'HOME', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-12-30 15:13:14', '2018-12-30 15:13:14', '', 0, 'http://localhost/heavenbakery/?page_id=9', 1, 'page', '', 0),
(10, 1, '2018-12-29 18:11:58', '2018-12-29 18:11:58', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-12-29 18:11:58', '2018-12-29 18:11:58', '', 9, 'http://localhost/heavenbakery/2018/12/29/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-12-29 18:39:41', '2018-12-29 18:39:41', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-12-29 18:39:52', '2018-12-29 18:39:52', '', 0, 'http://localhost/heavenbakery/wp-content/uploads/2018/12/logo.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2018-12-29 18:40:15', '2018-12-29 18:40:15', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-29 18:40:15\"\n    },\n    \"heaven-bakery::custom_logo\": {\n        \"value\": 11,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-29 18:40:15\"\n    },\n    \"heaven-bakery::header_textcolor\": {\n        \"value\": \"blank\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-29 18:40:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '941a9d93-1ce7-4750-a2de-3693ec38e013', '', '', '2018-12-29 18:40:15', '2018-12-29 18:40:15', '', 0, 'http://localhost/heavenbakery/2018/12/29/941a9d93-1ce7-4750-a2de-3693ec38e013/', 0, 'customize_changeset', '', 0),
(13, 1, '2018-12-29 18:47:02', '2018-12-29 18:47:02', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2018-12-29 19:20:57', '2018-12-29 19:20:57', '', 0, 'http://localhost/heavenbakery/?p=13', 1, 'nav_menu_item', '', 0),
(15, 1, '2018-12-29 18:55:20', '2018-12-29 18:55:20', '<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-aboutus-cover.png\" class=\"img-fluid\">\n<div class=\"heaven-bakery-section\">\n<h3>Austin, TX, United States, +1 512-491-8456</h3>\n<h2>Welcome to Heaven Bakery</h2>\n<div class=\"aboutus\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-lg-6 col-md-6\">\n<div class=\"aboutinner-content\">\n<h4>FOR OTHERS, BAKING IS CRAFTSMANSHIP.\nFOR US A JOYFUL PLEASURE.</h4>\nWe admit that we stand by traditions. And the quality of homemade pastries and pies love.\n\nWe also have a big weakness for people who value delicious soul food. And want to share pleasurable moments with others. That\'s why we put great emphasis on real craftsmanship, special creativity and natural, high-quality ingredients in the production of our cakes. Of course, from local cultivation and wherever possible without the addition of preservatives.\n\nOh yes - you will not find industrial mass production here. There are plenty of products that we produce daily fresh and handmade for you with own recipes and special taste.\n\nBut actually we should not talk so much about our products. Better, you make your own picture and create your own cake. For you alone, your friends and colleagues or you all together. Because we think: life can not be sweet enough.\n\n</div>\n</div>\n<div class=\"col-lg-6 col-md-6\">\n            <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-about02.png\" class=\"img-fluid\">\n<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-about03.png\" class=\"img-fluid\"></div>\n</div>\n</div>\n<div class=\"container\">\n<h4 class=\"padtb30\">OUR CREATED PIES ARE UNIQUE. WE MAKE MANY THINGS EVERY DAY.\nBUT EVERY SINGLE, DAILY FRESH BY HAND AND WITH MUCH LOVE.</h4>\n<div class=\"row\">\n<div class=\"col-lg-6 col-sm-6\">\n          <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heave-aboutus04.png\" class=\"img-fluid\">\n<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-about05.png\" class=\"img-fluid bottom-align\"></div>\n<div class=\"col-lg-6 col-sm-6\">\n          <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-aboutus01.png\" class=\"img-fluid\"></div>\n</div>\n</div>\n</div>\n<div class=\"heaven-philosophy\">\n<div class=\"container\">\n<div class=\"row justify-content-center\">\n<div class=\"col-lg-10 col-sm-10\">\n<h3>Heaven Bakery</h3>\n<h2>Our Philosophy</h2>\nServing or giving away a cake is a wonderful, old tradition - which, in my opinion, is far too short in our fast-paced everyday life, explains Flavio Cuoni, founder of Biskitty. This is partly because today hardly anyone learns to properly bake. But even if someone can bake, the time is often simply not there. Using the technical power of the internet, my team and I want to make the pie what it once was: the colorful eye-catcher on the birthday party, a personal, stylish gift for people you like or just a little one Luxury for yourself.\n\n</div>\n<div class=\"col-lg-12\">\n          <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-philosophy.png\" class=\"img-fluid\"></div>\n</div>\n</div>\n</div>\n</div>', 'ABOUT US', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-12-30 15:21:57', '2018-12-30 15:21:57', '', 0, 'http://localhost/heavenbakery/?page_id=15', 3, 'page', '', 0),
(16, 1, '2018-12-29 18:55:20', '2018-12-29 18:55:20', '', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-12-29 18:55:20', '2018-12-29 18:55:20', '', 15, 'http://localhost/heavenbakery/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-12-29 18:55:42', '2018-12-29 18:55:42', '', 'CUSTOM CAKES', '', 'publish', 'closed', 'closed', '', 'custom-cakes', '', '', '2018-12-29 18:55:42', '2018-12-29 18:55:42', '', 0, 'http://localhost/heavenbakery/?page_id=17', 4, 'page', '', 0),
(18, 1, '2018-12-29 18:55:42', '2018-12-29 18:55:42', '', 'CUSTOM CAKES', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-12-29 18:55:42', '2018-12-29 18:55:42', '', 17, 'http://localhost/heavenbakery/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-12-29 18:56:06', '2018-12-29 18:56:06', '<div class=\"heaven-bakery-section\">\n<div class=\"heaven-deals\">\n<div class=\"container\">\n<h3>Best Combos</h3>\n<h2>Deals for a Meal?</h2>\n<div class=\"container\">\n<div class=\"american-biscotta imgtb60\">\n<div class=\"row align-items-center h-100\">\n<div class=\"col-lg-6 col-sm-6\">\n<h4>. DINE IN DEAL .</h4>\n<h1>Americano Biscatto</h1>\nOur finest blend of coffee served with\n2 freshly backed chocolate chip cookies.\n<h5>$12 - Available from 9am-12pm</h5>\n</div>\n<div class=\"col-lg-6 col-sm-6\">\n              <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-biscatto.png\" class=\"img-fluid\"></div>\n</div>\n</div>\n</div>\n<div class=\"container\">\n<div class=\"american-biscotta imgtb60 american-trycookies\">\n<div class=\"row align-items-center h-100\">\n<div class=\"col-lg-6 col-sm-6\">\n<h4>. DINE IN DEAL .</h4>\n<h1>Trio  Cookie\nCombo</h1>\nChoose any three flavours of\ncookies one pound each\n<h5>$30 - Available from 9am -  9pm</h5>\n</div>\n<div class=\"col-lg-6 col-sm-6\">\n              <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-cookies.jpg\" class=\"img-fluid\"></div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>', 'DEALS', '', 'publish', 'closed', 'closed', '', 'deals', '', '', '2018-12-30 15:25:28', '2018-12-30 15:25:28', '', 0, 'http://localhost/heavenbakery/?page_id=19', 5, 'page', '', 0),
(20, 1, '2018-12-29 18:56:06', '2018-12-29 18:56:06', '', 'DEALS', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-12-29 18:56:06', '2018-12-29 18:56:06', '', 19, 'http://localhost/heavenbakery/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-12-29 18:56:40', '2018-12-29 18:56:40', '<div class=\"contactus\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-lg-8 col-sm-8\">\n       [contact-form-7 id=\"5\" title=\"Heaven Bakery Contact\"]</div>\n<div class=\"col-lg-4 col-sm-4\">\n<div class=\"out-details\">\n<h4>Our Details</h4>\n<div class=\"dt-bd\"></div>\n<h5>Address</h5>\n7890 Haven Ave, Ste 11\nRancho Cucamonga, California\n91730\n<div class=\"dt-bd\"></div>\n<h5>Opening Hours</h5>\nMon-Fri  4:30am – 6:00pm\nSaturday  6:00am – 6:00pm\nSunday  Closed\n<div class=\"dt-bd\"></div>\n<h5>Phone</h5>\n(909) 980-1819\n<div class=\"dt-bd\"></div>\n<h5>Email</h5>\nheavenbakery@gmail.com\n\n</div>\n</div>\n</div>\n<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-map.jpg\" class=\"img-fluid w100 imgtb60\">\n\n</div>\n</div>', 'CONTACT', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-12-30 16:05:16', '2018-12-30 16:05:16', '', 0, 'http://localhost/heavenbakery/?page_id=21', 6, 'page', '', 0),
(22, 1, '2018-12-29 18:56:40', '2018-12-29 18:56:40', '', 'CONTACT', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-12-29 18:56:40', '2018-12-29 18:56:40', '', 21, 'http://localhost/heavenbakery/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-12-29 18:57:06', '2018-12-29 18:57:06', '', 'HOME', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-12-29 18:57:06', '2018-12-29 18:57:06', '', 9, 'http://localhost/heavenbakery/9-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-12-29 18:57:18', '2018-12-29 18:57:18', '', 'SHOP', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-12-29 18:57:18', '2018-12-29 18:57:18', '', 0, 'http://localhost/heavenbakery/?page_id=24', 2, 'page', '', 0),
(25, 1, '2018-12-29 18:57:18', '2018-12-29 18:57:18', '', 'SHOP', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-12-29 18:57:18', '2018-12-29 18:57:18', '', 24, 'http://localhost/heavenbakery/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-12-29 18:58:20', '2018-12-29 18:58:20', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2018-12-29 19:20:57', '2018-12-29 19:20:57', '', 0, 'http://localhost/heavenbakery/?p=26', 2, 'nav_menu_item', '', 0),
(27, 1, '2018-12-29 18:58:20', '2018-12-29 18:58:20', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2018-12-29 19:20:57', '2018-12-29 19:20:57', '', 0, 'http://localhost/heavenbakery/?p=27', 3, 'nav_menu_item', '', 0),
(28, 1, '2018-12-29 18:58:20', '2018-12-29 18:58:20', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2018-12-29 19:20:57', '2018-12-29 19:20:57', '', 0, 'http://localhost/heavenbakery/?p=28', 4, 'nav_menu_item', '', 0),
(29, 1, '2018-12-29 18:58:20', '2018-12-29 18:58:20', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2018-12-29 19:20:57', '2018-12-29 19:20:57', '', 0, 'http://localhost/heavenbakery/?p=29', 5, 'nav_menu_item', '', 0),
(30, 1, '2018-12-29 18:58:21', '2018-12-29 18:58:21', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2018-12-29 19:20:57', '2018-12-29 19:20:57', '', 0, 'http://localhost/heavenbakery/?p=30', 6, 'nav_menu_item', '', 0),
(31, 1, '2018-12-29 19:35:33', '2018-12-29 19:35:33', '', 'FACEBOOK', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2018-12-30 12:10:05', '2018-12-30 12:10:05', '', 0, 'http://localhost/heavenbakery/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2018-12-29 19:35:33', '2018-12-29 19:35:33', '', 'INSTAGRAM', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2018-12-30 12:10:05', '2018-12-30 12:10:05', '', 0, 'http://localhost/heavenbakery/?p=32', 2, 'nav_menu_item', '', 0),
(33, 1, '2018-12-29 19:35:34', '2018-12-29 19:35:34', '', 'PINTREST', '', 'publish', 'closed', 'closed', '', 'pintrest', '', '', '2018-12-30 12:10:05', '2018-12-30 12:10:05', '', 0, 'http://localhost/heavenbakery/?p=33', 3, 'nav_menu_item', '', 0),
(35, 1, '2018-12-30 15:12:02', '2018-12-30 15:12:02', '<!-- wp:heading {\"level\":3} -->\n<h3>Austin, TX, United States, +1 512-491-8456</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>We’ve opned a bakery in Texas.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><a href=\"#\">CHECK US OUT</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-aboutus-cover.png\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-birthdaycake.png\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>We Make Custom Cakes</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Need cakes for a birthday <br>or other special events? </h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><a href=\"#\">ORDER CAKE</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>. DINE IN DEAL .</h4>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":1} -->\n<h1>Americano Biscatto</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our finest blend of coffee served with <br>2 freshly backed chocolate chip cookies.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>$12 - Available from 9am-12pm</h5>\n<!-- /wp:heading -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-biscatto.png\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><a href=\"#\">SEE ALL DEALS</a></p>\n<!-- /wp:paragraph -->', 'HOME', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-12-30 15:12:02', '2018-12-30 15:12:02', '', 9, 'http://localhost/heavenbakery/9-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-12-30 15:13:14', '2018-12-30 15:13:14', '<div class=\"heaven-bakery-section\">\n<div class=\"container\">\n<h3>Austin, TX, United States, +1 512-491-8456</h3>\n<h2>We’ve opned a bakery in Texas.</h2>\n<a href=\"#\" class=\"btn btnprim\">CHECK US OUT</a>\n<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-aboutus-cover.png\" class=\"img-fluid imgtb50\">\n\n</div>\n<div class=\"container\">\n<div class=\"row align-items-center h-100\">\n<div class=\"col-lg-6 col-sm-6\">\n        <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-birthdaycake.png\" class=\"img-fluid\"></div>\n<div class=\"col-lg-6 col-sm-6\">\n<h3>We Make Custom Cakes</h3>\n<h2>Need cakes for a birthday\nor other special events?</h2>\n<a href=\"#\" class=\"btn btnprim\">ORDER CAKE</a>\n\n</div>\n</div>\n</div>\n<div class=\"container\">\n<div class=\"american-biscotta\">\n<div class=\"row align-items-center h-100\">\n<div class=\"col-lg-6 col-sm-6\">\n<h4>. DINE IN DEAL .</h4>\n<h1>Americano Biscatto</h1>\nOur finest blend of coffee served with\n2 freshly backed chocolate chip cookies.\n<h5>$12 - Available from 9am-12pm</h5>\n</div>\n<div class=\"col-lg-6 col-sm-6\">\n          <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-biscatto.png\" class=\"img-fluid\"></div>\n</div>\n</div>\n</div>\n<a href=\"#\" class=\"btn btnprim imgtb50\">SEE ALL DEALS</a>\n\n</div>', 'HOME', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-12-30 15:13:14', '2018-12-30 15:13:14', '', 9, 'http://localhost/heavenbakery/9-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-12-30 15:21:49', '2018-12-30 15:21:49', '', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '15-autosave-v1', '', '', '2018-12-30 15:21:49', '2018-12-30 15:21:49', '', 15, 'http://localhost/heavenbakery/15-autosave-v1/', 0, 'revision', '', 0),
(38, 1, '2018-12-30 15:21:57', '2018-12-30 15:21:57', '<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-aboutus-cover.png\" class=\"img-fluid\">\n<div class=\"heaven-bakery-section\">\n<h3>Austin, TX, United States, +1 512-491-8456</h3>\n<h2>Welcome to Heaven Bakery</h2>\n<div class=\"aboutus\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-lg-6 col-md-6\">\n<div class=\"aboutinner-content\">\n<h4>FOR OTHERS, BAKING IS CRAFTSMANSHIP.\nFOR US A JOYFUL PLEASURE.</h4>\nWe admit that we stand by traditions. And the quality of homemade pastries and pies love.\n\nWe also have a big weakness for people who value delicious soul food. And want to share pleasurable moments with others. That\'s why we put great emphasis on real craftsmanship, special creativity and natural, high-quality ingredients in the production of our cakes. Of course, from local cultivation and wherever possible without the addition of preservatives.\n\nOh yes - you will not find industrial mass production here. There are plenty of products that we produce daily fresh and handmade for you with own recipes and special taste.\n\nBut actually we should not talk so much about our products. Better, you make your own picture and create your own cake. For you alone, your friends and colleagues or you all together. Because we think: life can not be sweet enough.\n\n</div>\n</div>\n<div class=\"col-lg-6 col-md-6\">\n            <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-about02.png\" class=\"img-fluid\">\n<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-about03.png\" class=\"img-fluid\"></div>\n</div>\n</div>\n<div class=\"container\">\n<h4 class=\"padtb30\">OUR CREATED PIES ARE UNIQUE. WE MAKE MANY THINGS EVERY DAY.\nBUT EVERY SINGLE, DAILY FRESH BY HAND AND WITH MUCH LOVE.</h4>\n<div class=\"row\">\n<div class=\"col-lg-6 col-sm-6\">\n          <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heave-aboutus04.png\" class=\"img-fluid\">\n<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-about05.png\" class=\"img-fluid bottom-align\"></div>\n<div class=\"col-lg-6 col-sm-6\">\n          <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-aboutus01.png\" class=\"img-fluid\"></div>\n</div>\n</div>\n</div>\n<div class=\"heaven-philosophy\">\n<div class=\"container\">\n<div class=\"row justify-content-center\">\n<div class=\"col-lg-10 col-sm-10\">\n<h3>Heaven Bakery</h3>\n<h2>Our Philosophy</h2>\nServing or giving away a cake is a wonderful, old tradition - which, in my opinion, is far too short in our fast-paced everyday life, explains Flavio Cuoni, founder of Biskitty. This is partly because today hardly anyone learns to properly bake. But even if someone can bake, the time is often simply not there. Using the technical power of the internet, my team and I want to make the pie what it once was: the colorful eye-catcher on the birthday party, a personal, stylish gift for people you like or just a little one Luxury for yourself.\n\n</div>\n<div class=\"col-lg-12\">\n          <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-philosophy.png\" class=\"img-fluid\"></div>\n</div>\n</div>\n</div>\n</div>', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-12-30 15:21:57', '2018-12-30 15:21:57', '', 15, 'http://localhost/heavenbakery/15-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-12-30 15:25:28', '2018-12-30 15:25:28', '<div class=\"heaven-bakery-section\">\n<div class=\"heaven-deals\">\n<div class=\"container\">\n<h3>Best Combos</h3>\n<h2>Deals for a Meal?</h2>\n<div class=\"container\">\n<div class=\"american-biscotta imgtb60\">\n<div class=\"row align-items-center h-100\">\n<div class=\"col-lg-6 col-sm-6\">\n<h4>. DINE IN DEAL .</h4>\n<h1>Americano Biscatto</h1>\nOur finest blend of coffee served with\n2 freshly backed chocolate chip cookies.\n<h5>$12 - Available from 9am-12pm</h5>\n</div>\n<div class=\"col-lg-6 col-sm-6\">\n              <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-biscatto.png\" class=\"img-fluid\"></div>\n</div>\n</div>\n</div>\n<div class=\"container\">\n<div class=\"american-biscotta imgtb60 american-trycookies\">\n<div class=\"row align-items-center h-100\">\n<div class=\"col-lg-6 col-sm-6\">\n<h4>. DINE IN DEAL .</h4>\n<h1>Trio  Cookie\nCombo</h1>\nChoose any three flavours of\ncookies one pound each\n<h5>$30 - Available from 9am -  9pm</h5>\n</div>\n<div class=\"col-lg-6 col-sm-6\">\n              <img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-cookies.jpg\" class=\"img-fluid\"></div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>', 'DEALS', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-12-30 15:25:28', '2018-12-30 15:25:28', '', 19, 'http://localhost/heavenbakery/19-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-12-30 15:37:08', '2018-12-30 15:37:08', '<div class=\"contactus\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-lg-8 col-sm-8\">\n<div class=\"contact-form\">\n<h4>Get in Touch</h4>\n\n<hr>\n\n<div class=\"row\">\n<div class=\"col-lg-3 col-sm-3\">\n              <label>Name *</label></div>\n<div class=\"col-lg-9 col-sm-9\">\n<div class=\"flname\">\n              <input type=\"text\" name=\"fname\" placeholder=\"First Name...\">\n<input type=\"text\" name=\"lname\" placeholder=\"Last Name...\"></div>\n</div>\n</div>\n<div class=\"row\">\n<div class=\"col-lg-3 col-sm-3\">\n              <label>Email *</label></div>\n<div class=\"col-lg-9 col-sm-9\">\n              <input type=\"email\" name=\"lname\" placeholder=\"Enter Email...\"></div>\n</div>\n<div class=\"row\">\n<div class=\"col-lg-3 col-sm-3\">\n              <label>Phone no *</label></div>\n<div class=\"col-lg-9 col-sm-9\">\n              <input type=\"tel\" name=\"lname\" placeholder=\"Enter Phone no...\"></div>\n</div>\n<div class=\"row\">\n<div class=\"col-lg-3 col-sm-3\">\n              <label>Question or Comments *</label></div>\n<div class=\"col-lg-9 col-sm-9\">\n              <textarea placeholder=\"Enter You Comments Here...\"></textarea></div>\n</div>\n<div class=\"row\">\n<div class=\"col-lg-3 col-sm-3\">\n              <label></label></div>\n<div class=\"col-lg-9 col-sm-9\">\n              <input type=\"submit\" value=\"CONTACT NOW\" name=\"\" class=\"btnsubmit\"></div>\n</div>\n</div>\n</div>\n<div class=\"col-lg-4 col-sm-4\">\n<div class=\"out-details\">\n<h4>Our Details</h4>\n<div class=\"dt-bd\"></div>\n<h6>Address</h6>\n7890 Haven Ave, Ste 11\nRancho Cucamonga, California\n91730\n<div class=\"dt-bd\"></div>\n<h6>Opening Hours</h6>\nMon-Fri  4:30am – 6:00pm\nSaturday  6:00am – 6:00pm\nSunday  Closed\n<div class=\"dt-bd\"></div>\n<h6>Phone</h6>\n(909) 980-1819\n<div class=\"dt-bd\"></div>\n<h6>Email</h6>\nheavenbakery@gmail.com\n\n</div>\n</div>\n</div>\n<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-map.jpg\" class=\"img-fluid w100 imgtb60\">\n\n</div>\n</div>', 'CONTACT', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-12-30 15:37:08', '2018-12-30 15:37:08', '', 21, 'http://localhost/heavenbakery/21-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-12-30 15:39:16', '2018-12-30 15:39:16', '<div class=\"contactus\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-lg-8 col-sm-8\">\n<div class=\"contact-form\">\n<h4>Get in Touch</h4>\n\n<hr>\n\n<div class=\"row\">\n<div class=\"col-lg-3 col-sm-3\">\n              <label>Name *</label></div>\n<div class=\"col-lg-9 col-sm-9\">\n<div class=\"flname\">\n              <input type=\"text\" name=\"fname\" placeholder=\"First Name...\"><input type=\"text\" name=\"lname\" placeholder=\"Last Name...\"></div>\n</div>\n</div>\n<div class=\"row\">\n<div class=\"col-lg-3 col-sm-3\">\n              <label>Email *</label></div>\n<div class=\"col-lg-9 col-sm-9\">\n              <input type=\"email\" name=\"lname\" placeholder=\"Enter Email...\"></div>\n</div>\n<div class=\"row\">\n<div class=\"col-lg-3 col-sm-3\">\n              <label>Phone no *</label></div>\n<div class=\"col-lg-9 col-sm-9\">\n              <input type=\"tel\" name=\"lname\" placeholder=\"Enter Phone no...\"></div>\n</div>\n<div class=\"row\">\n<div class=\"col-lg-3 col-sm-3\">\n              <label>Question or Comments *</label></div>\n<div class=\"col-lg-9 col-sm-9\">\n              <textarea placeholder=\"Enter You Comments Here...\"></textarea></div>\n</div>\n<div class=\"row\">\n<div class=\"col-lg-3 col-sm-3\">\n              <label></label></div>\n<div class=\"col-lg-9 col-sm-9\">\n              <input type=\"submit\" value=\"CONTACT NOW\" name=\"\" class=\"btnsubmit\"></div>\n</div>\n</div>\n</div>\n<div class=\"col-lg-4 col-sm-4\">\n<div class=\"out-details\">\n<h4>Our Details</h4>\n<div class=\"dt-bd\"></div>\n<h6>Address</h6>\n7890 Haven Ave, Ste 11\nRancho Cucamonga, California\n91730\n<div class=\"dt-bd\"></div>\n<h6>Opening Hours</h6>\nMon-Fri  4:30am – 6:00pm\nSaturday  6:00am – 6:00pm\nSunday  Closed\n<div class=\"dt-bd\"></div>\n<h6>Phone</h6>\n(909) 980-1819\n<div class=\"dt-bd\"></div>\n<h6>Email</h6>\nheavenbakery@gmail.com\n\n</div>\n</div>\n</div>\n<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-map.jpg\" class=\"img-fluid w100 imgtb60\">\n\n</div>\n</div>', 'CONTACT', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-12-30 15:39:16', '2018-12-30 15:39:16', '', 21, 'http://localhost/heavenbakery/21-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-12-30 15:56:38', '2018-12-30 15:56:38', '<div class=\"contactus\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-lg-8 col-sm-8\">\n       [contact-form-7 id=\"5\" title=\"Heaven Bakery Contact\"]</div>\n<div class=\"col-lg-4 col-sm-4\">\n<div class=\"out-details\">\n<h4>Our Details</h4>\n<div class=\"dt-bd\"></div>\n<h6>Address</h6>\n7890 Haven Ave, Ste 11\nRancho Cucamonga, California\n91730\n<div class=\"dt-bd\"></div>\n<h6>Opening Hours</h6>\nMon-Fri  4:30am – 6:00pm\nSaturday  6:00am – 6:00pm\nSunday  Closed\n<div class=\"dt-bd\"></div>\n<h6>Phone</h6>\n(909) 980-1819\n<div class=\"dt-bd\"></div>\n<h6>Email</h6>\nheavenbakery@gmail.com\n\n</div>\n</div>\n</div>\n<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-map.jpg\" class=\"img-fluid w100 imgtb60\">\n\n</div>\n</div>', 'CONTACT', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-12-30 15:56:38', '2018-12-30 15:56:38', '', 21, 'http://localhost/heavenbakery/21-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-12-30 16:05:16', '2018-12-30 16:05:16', '<div class=\"contactus\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-lg-8 col-sm-8\">\n       [contact-form-7 id=\"5\" title=\"Heaven Bakery Contact\"]</div>\n<div class=\"col-lg-4 col-sm-4\">\n<div class=\"out-details\">\n<h4>Our Details</h4>\n<div class=\"dt-bd\"></div>\n<h5>Address</h5>\n7890 Haven Ave, Ste 11\nRancho Cucamonga, California\n91730\n<div class=\"dt-bd\"></div>\n<h5>Opening Hours</h5>\nMon-Fri  4:30am – 6:00pm\nSaturday  6:00am – 6:00pm\nSunday  Closed\n<div class=\"dt-bd\"></div>\n<h5>Phone</h5>\n(909) 980-1819\n<div class=\"dt-bd\"></div>\n<h5>Email</h5>\nheavenbakery@gmail.com\n\n</div>\n</div>\n</div>\n<img src=\"http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-map.jpg\" class=\"img-fluid w100 imgtb60\">\n\n</div>\n</div>', 'CONTACT', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-12-30 16:05:16', '2018-12-30 16:05:16', '', 21, 'http://localhost/heavenbakery/21-revision-v1/', 0, 'revision', '', 0);

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
(3, 'Social Link', 'social-link', 0, 0);

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
(26, 2, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(31, 3, 0),
(32, 3, 0),
(33, 3, 0);

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
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'nav_menu', '', 0, 3);

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
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
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
(17, 1, 'hb_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'hb_user-settings', 'libraryContent=browse'),
(19, 1, 'hb_user-settings-time', '1546108815'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '3');

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hb_links`
--
ALTER TABLE `hb_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hb_options`
--
ALTER TABLE `hb_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `hb_postmeta`
--
ALTER TABLE `hb_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `hb_posts`
--
ALTER TABLE `hb_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `hb_termmeta`
--
ALTER TABLE `hb_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hb_terms`
--
ALTER TABLE `hb_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hb_term_taxonomy`
--
ALTER TABLE `hb_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hb_usermeta`
--
ALTER TABLE `hb_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `hb_users`
--
ALTER TABLE `hb_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
