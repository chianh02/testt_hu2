-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table s-cart.admin_menu
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE IF NOT EXISTS `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.admin_menu: ~41 rows (approximately)
DELETE FROM `admin_menu`;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
	(1, 0, 1, 'Index', 'fa-bar-chart', '/', NULL, NULL, NULL),
	(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL),
	(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL, NULL),
	(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL),
	(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL),
	(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL),
	(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL),
	(8, 31, 25, 'Customer', 'fa-user-md', 'shop_customer', NULL, '2018-01-13 15:27:55', '2018-11-08 06:01:37'),
	(9, 25, 19, 'Orders', 'fa-shopping-cart', 'shop_order', NULL, '2018-01-13 15:33:55', '2018-11-08 06:01:37'),
	(10, 15, 13, 'All products', 'fa-file-photo-o', 'shop_product', NULL, '2018-01-13 15:44:02', '2018-11-12 19:25:48'),
	(11, 15, 15, 'Brand', 'fa-bank', 'shop_brand', NULL, '2018-01-13 15:47:15', '2018-11-12 19:25:48'),
	(13, 15, 12, 'Categories', 'fa-folder-open-o', 'shop_category', NULL, '2018-01-13 15:52:17', '2018-11-12 19:25:48'),
	(14, 15, 14, 'Special price', 'fa-paw', 'shop_special_price', NULL, '2018-02-06 18:07:21', '2018-11-12 19:25:48'),
	(15, 0, 11, 'Product Manager', 'fa-folder-open', NULL, NULL, '2018-02-09 06:04:43', '2018-11-12 19:25:48'),
	(17, 0, 8, 'CMS Manager', 'fa-coffee', NULL, NULL, '2018-02-10 09:06:05', '2018-10-18 21:16:24'),
	(18, 23, 33, 'Config info', 'fa-cog', 'config_info', NULL, '2018-02-10 09:07:45', '2018-11-08 06:01:37'),
	(21, 17, 9, 'Blog & News', 'fa-file-powerpoint-o', 'cms_news', NULL, '2018-02-10 09:13:01', '2018-10-19 20:18:25'),
	(22, 17, 10, 'Cms Page', 'fa-clone', 'cms_page', NULL, '2018-02-10 09:19:50', '2018-10-19 20:18:37'),
	(23, 0, 32, 'Config Manager', 'fa-cogs', NULL, NULL, '2018-02-11 15:01:24', '2018-11-08 06:01:37'),
	(24, 62, 40, 'Banners', 'fa-simplybuilt', 'banner', NULL, '2018-03-13 20:10:22', '2018-11-12 19:26:42'),
	(25, 0, 18, 'Order Manager', 'fa-cart-arrow-down', NULL, NULL, '2018-05-06 14:59:14', '2018-11-08 06:01:37'),
	(26, 25, 20, 'Order status', 'fa-asterisk', 'shop_order_status', NULL, '2018-05-06 15:56:14', '2018-11-08 06:01:37'),
	(27, 25, 21, 'Payment Status', 'fa-recycle', 'shop_payment_status', NULL, '2018-05-06 15:57:12', '2018-11-08 06:01:37'),
	(28, 25, 22, 'Shipping status', 'fa-ambulance', 'shop_shipping_status', NULL, '2018-05-06 23:46:53', '2018-11-08 06:01:37'),
	(30, 0, 26, 'Extensions', 'fa-puzzle-piece', NULL, NULL, '2018-05-07 13:47:33', '2018-11-08 06:01:37'),
	(31, 0, 24, 'Customer Manager', 'fa-group', NULL, NULL, '2018-05-07 13:52:20', '2018-11-08 06:01:37'),
	(41, 25, 23, 'Coupon', 'fa-rocket', 'shop_promotion', NULL, '2018-05-07 23:54:45', '2018-11-08 06:01:37'),
	(43, 30, 27, 'Shipping Manager', 'fa-ambulance', NULL, NULL, '2018-05-07 23:56:13', '2018-11-09 00:10:32'),
	(50, 43, 28, 'Shipping', 'fa-ambulance', 'shop_shipping', NULL, '2018-05-09 14:33:24', '2018-11-08 06:01:37'),
	(51, 23, 34, 'Config global', 'fa-cogs', 'config_global', NULL, '2018-09-19 20:51:31', '2018-11-08 06:01:37'),
	(52, 56, 36, 'Config Language', 'fa-pagelines', 'language', NULL, '2018-10-14 21:58:23', '2018-11-08 06:01:37'),
	(53, 55, 38, 'HTML Module', 'fa-bars', 'config_layout/1/edit', NULL, '2018-10-17 06:16:09', '2018-11-18 08:55:05'),
	(55, 0, 37, 'Layout customize', 'fa-columns', NULL, NULL, '2018-10-18 21:13:41', '2018-11-08 06:01:37'),
	(56, 23, 35, 'Localisation', 'fa-shirtsinbulk', NULL, NULL, '2018-11-02 06:04:12', '2018-11-08 06:01:37'),
	(57, 15, 16, 'Vendor', 'fa-user-secret', 'shop_vendor', NULL, '2018-11-07 22:15:33', '2018-11-12 19:25:48'),
	(58, 0, 29, 'Report & Analytics', 'fa-pie-chart', NULL, NULL, '2018-11-08 05:59:47', '2018-11-08 06:01:37'),
	(59, 58, 30, 'Customer', 'fa-bars', 'report/customer', NULL, '2018-11-08 06:00:54', '2018-11-08 06:02:05'),
	(60, 58, 31, 'Product', 'fa-bars', 'report/product', NULL, '2018-11-08 06:01:21', '2018-11-08 06:01:37'),
	(61, 15, 17, 'Import multi product', 'fa-save', 'process/productImport', NULL, '2018-11-11 16:10:14', '2018-11-12 19:25:48'),
	(62, 0, 39, 'Images manager', 'fa-image', NULL, NULL, '2018-11-12 19:25:16', '2018-11-12 19:25:48'),
	(63, 62, 0, 'Images', 'fa-file-image-o', 'documents', NULL, '2018-11-12 19:26:13', '2018-11-12 19:30:35');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;

-- Dumping structure for table s-cart.admin_operation_log
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE IF NOT EXISTS `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.admin_operation_log: ~2 rows (approximately)
DELETE FROM `admin_operation_log`;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
	(1, 1, 'system_admin/auth/logs', 'GET', '127.0.0.1', '[]', '2018-10-09 21:15:35', '2018-10-09 21:15:35'),
	(2, 1, 'system_admin/auth/logs', 'GET', '127.0.0.1', '[]', '2018-10-09 21:15:38', '2018-10-09 21:15:38'),
	(3, 3, 'system_admin', 'GET', '125.234.115.202', '[]', '2018-11-15 17:02:34', '2018-11-15 17:02:34'),
	(4, 3, 'system_admin/config_info', 'GET', '125.234.115.202', '{"_pjax":"#pjax-container"}', '2018-11-15 17:02:38', '2018-11-15 17:02:38'),
	(5, 3, 'system_admin', 'GET', '116.109.183.158', '[]', '2018-11-15 21:47:59', '2018-11-15 21:47:59'),
	(6, 3, 'system_admin/cms_news', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container"}', '2018-11-15 21:48:07', '2018-11-15 21:48:07'),
	(7, 3, 'system_admin/cms_page', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container"}', '2018-11-15 21:48:09', '2018-11-15 21:48:09'),
	(8, 3, 'system_admin/shop_product', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container"}', '2018-11-15 21:48:12', '2018-11-15 21:48:12'),
	(9, 3, 'system_admin/shop_special_price', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container"}', '2018-11-15 21:48:13', '2018-11-15 21:48:13'),
	(10, 3, 'system_admin/shop_brand', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container"}', '2018-11-15 21:48:14', '2018-11-15 21:48:14'),
	(11, 3, 'system_admin/process/productImport', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container"}', '2018-11-15 21:48:15', '2018-11-15 21:48:15'),
	(12, 3, 'system_admin/shop_vendor', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container"}', '2018-11-15 21:48:17', '2018-11-15 21:48:17'),
	(13, 3, 'system_admin/shop_special_price', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container"}', '2018-11-15 21:48:17', '2018-11-15 21:48:17'),
	(14, 3, 'system_admin/shop_category', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container"}', '2018-11-15 21:48:18', '2018-11-15 21:48:18'),
	(15, 3, 'system_admin/process/productImport', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container"}', '2018-11-15 21:48:30', '2018-11-15 21:48:30'),
	(16, 3, 'system_admin/shop_product', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container"}', '2018-11-15 21:48:31', '2018-11-15 21:48:31'),
	(17, 3, 'system_admin/shop_special_price', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container"}', '2018-11-15 21:48:32', '2018-11-15 21:48:32'),
	(18, 3, 'system_admin/shop_brand', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container"}', '2018-11-15 21:48:33', '2018-11-15 21:48:33'),
	(19, 3, 'system_admin/shop_vendor', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container"}', '2018-11-15 21:48:33', '2018-11-15 21:48:33'),
	(20, 3, 'system_admin', 'GET', '116.109.183.158', '[]', '2018-11-15 21:48:35', '2018-11-15 21:48:35'),
	(21, 3, 'system_admin/shop_order', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container"}', '2018-11-15 21:48:47', '2018-11-15 21:48:47'),
	(22, 3, 'system_admin', 'GET', '116.109.183.158', '[]', '2018-11-15 21:49:09', '2018-11-15 21:49:09'),
	(23, 3, 'system_admin/auth/logout', 'GET', '116.109.183.158', '[]', '2018-11-15 21:49:11', '2018-11-15 21:49:11'),
	(24, 3, 'system_admin', 'GET', '116.109.183.158', '[]', '2018-11-15 22:40:02', '2018-11-15 22:40:02'),
	(25, 3, 'system_admin', 'GET', '116.109.183.158', '[]', '2018-11-15 22:42:13', '2018-11-15 22:42:13'),
	(26, 3, 'system_admin', 'GET', '113.190.210.92', '[]', '2018-11-17 18:12:01', '2018-11-17 18:12:01'),
	(27, 3, 'system_admin/shop_product', 'GET', '113.190.210.92', '{"_pjax":"#pjax-container"}', '2018-11-17 18:12:06', '2018-11-17 18:12:06'),
	(28, 3, 'system_admin/shop_product/49/edit', 'GET', '113.190.210.92', '[]', '2018-11-17 18:12:11', '2018-11-17 18:12:11'),
	(29, 3, 'system_admin', 'GET', '113.190.210.92', '[]', '2018-11-17 18:12:42', '2018-11-17 18:12:42'),
	(30, 3, 'system_admin/cms_news', 'GET', '113.190.210.92', '{"_pjax":"#pjax-container"}', '2018-11-17 18:12:45', '2018-11-17 18:12:45'),
	(31, 3, 'system_admin', 'GET', '101.99.59.116', '[]', '2018-11-17 22:52:27', '2018-11-17 22:52:27'),
	(32, 3, 'system_admin/shop_product', 'GET', '101.99.59.116', '{"_pjax":"#pjax-container"}', '2018-11-17 22:53:22', '2018-11-17 22:53:22'),
	(33, 3, 'system_admin/shop_product/49', 'PUT', '101.99.59.116', '{"status":"off","_token":"enOVIA7jmRMPPc7OfQ3KXKkCXEx0u51wfInMvkpn","_method":"PUT"}', '2018-11-17 22:53:35', '2018-11-17 22:53:35'),
	(34, 3, 'system_admin/shop_product/49', 'PUT', '101.99.59.116', '{"status":"on","_token":"enOVIA7jmRMPPc7OfQ3KXKkCXEx0u51wfInMvkpn","_method":"PUT"}', '2018-11-17 22:53:35', '2018-11-17 22:53:35'),
	(35, 3, 'system_admin/shop_product/48', 'PUT', '101.99.59.116', '{"status":"off","_token":"enOVIA7jmRMPPc7OfQ3KXKkCXEx0u51wfInMvkpn","_method":"PUT"}', '2018-11-17 22:53:38', '2018-11-17 22:53:38'),
	(36, 3, 'system_admin/shop_product/48', 'PUT', '101.99.59.116', '{"status":"on","_token":"enOVIA7jmRMPPc7OfQ3KXKkCXEx0u51wfInMvkpn","_method":"PUT"}', '2018-11-17 22:53:39', '2018-11-17 22:53:39'),
	(37, 3, 'system_admin/shop_product', 'GET', '101.99.59.116', '{"_pjax":"#pjax-container"}', '2018-11-17 22:55:35', '2018-11-17 22:55:35'),
	(38, 3, 'system_admin/shop_customer', 'GET', '101.99.59.116', '{"_pjax":"#pjax-container"}', '2018-11-17 22:55:40', '2018-11-17 22:55:40'),
	(39, 3, 'system_admin/shop_shipping', 'GET', '101.99.59.116', '{"_pjax":"#pjax-container"}', '2018-11-17 22:55:44', '2018-11-17 22:55:44'),
	(40, 3, 'system_admin/cms_page', 'GET', '101.99.59.116', '{"_pjax":"#pjax-container"}', '2018-11-17 22:55:46', '2018-11-17 22:55:46'),
	(41, 3, 'system_admin/cms_news', 'GET', '101.99.59.116', '{"_pjax":"#pjax-container"}', '2018-11-17 22:55:47', '2018-11-17 22:55:47'),
	(42, 3, 'system_admin/cms_page', 'GET', '101.99.59.116', '{"_pjax":"#pjax-container"}', '2018-11-17 22:55:49', '2018-11-17 22:55:49'),
	(43, 3, 'system_admin/shop_special_price', 'GET', '101.99.59.116', '{"_pjax":"#pjax-container"}', '2018-11-17 22:55:50', '2018-11-17 22:55:50'),
	(44, 3, 'system_admin/shop_special_price/create', 'GET', '101.99.59.193', '[]', '2018-11-17 23:19:01', '2018-11-17 23:19:01'),
	(45, 3, 'system_admin/getInfoProduct', 'GET', '101.99.59.193', '{"id":null}', '2018-11-17 23:19:02', '2018-11-17 23:19:02'),
	(46, 3, 'system_admin/shop_special_price', 'POST', '101.99.59.193', '{"product_id":null,"off":"0","price":"0","status":"off","date_start":null,"date_end":null,"comment":null,"_token":"enOVIA7jmRMPPc7OfQ3KXKkCXEx0u51wfInMvkpn","_previous_":"https:\\/\\/demo.s-cart.org\\/system_admin\\/shop_special_price"}', '2018-11-17 23:19:08', '2018-11-17 23:19:08'),
	(47, 3, 'system_admin/banner', 'GET', '101.99.59.193', '{"_pjax":"#pjax-container"}', '2018-11-17 23:30:14', '2018-11-17 23:30:14'),
	(48, 3, 'system_admin/documents', 'GET', '101.99.59.193', '{"_pjax":"#pjax-container"}', '2018-11-17 23:30:20', '2018-11-17 23:30:20'),
	(49, 3, 'system_admin/config_layout/1/edit', 'GET', '101.99.59.193', '{"_pjax":"#pjax-container"}', '2018-11-17 23:30:23', '2018-11-17 23:30:23'),
	(50, 3, 'system_admin/cms_page', 'GET', '101.99.59.193', '{"_pjax":"#pjax-container"}', '2018-11-17 23:31:21', '2018-11-17 23:31:21'),
	(51, 3, 'system_admin/shop_product', 'GET', '101.99.59.193', '{"_pjax":"#pjax-container"}', '2018-11-17 23:31:23', '2018-11-17 23:31:23'),
	(52, 3, 'system_admin/shop_brand', 'GET', '101.99.59.193', '{"_pjax":"#pjax-container"}', '2018-11-17 23:31:24', '2018-11-17 23:31:24'),
	(53, 3, 'system_admin/shop_brand', 'GET', '101.99.59.193', '{"_pjax":"#pjax-container"}', '2018-11-17 23:31:25', '2018-11-17 23:31:25'),
	(54, 3, 'system_admin/shop_vendor', 'GET', '101.99.59.193', '{"_pjax":"#pjax-container"}', '2018-11-17 23:31:26', '2018-11-17 23:31:26'),
	(55, 3, 'system_admin/process/productImport', 'GET', '101.99.59.193', '{"_pjax":"#pjax-container"}', '2018-11-17 23:31:28', '2018-11-17 23:31:28'),
	(56, 3, 'system_admin', 'GET', '101.99.59.193', '[]', '2018-11-17 23:31:39', '2018-11-17 23:31:39'),
	(57, 3, 'system_admin/auth/logout', 'GET', '101.99.59.193', '[]', '2018-11-17 23:31:46', '2018-11-17 23:31:46'),
	(58, 3, 'system_admin', 'GET', '101.99.59.193', '[]', '2018-11-17 23:32:05', '2018-11-17 23:32:05'),
	(59, 3, 'system_admin/shop_order', 'GET', '101.99.59.193', '{"_pjax":"#pjax-container"}', '2018-11-17 23:32:15', '2018-11-17 23:32:15'),
	(60, 3, 'system_admin/shop_category', 'GET', '101.99.59.193', '{"_pjax":"#pjax-container"}', '2018-11-17 23:32:18', '2018-11-17 23:32:18'),
	(61, 3, 'system_admin/shop_product', 'GET', '101.99.59.193', '{"_pjax":"#pjax-container"}', '2018-11-17 23:32:20', '2018-11-17 23:32:20'),
	(62, 3, 'system_admin/shop_brand', 'GET', '101.99.59.193', '{"_pjax":"#pjax-container"}', '2018-11-17 23:32:22', '2018-11-17 23:32:22'),
	(63, 3, 'system_admin/locale/vi', 'POST', '101.99.59.193', '{"_token":"qjCrB0c7utxPxqMeUuYVkfb4OQc51LJNBeULHssI"}', '2018-11-17 23:32:51', '2018-11-17 23:32:51'),
	(64, 3, 'system_admin/locale/en', 'POST', '101.99.59.193', '{"_token":"qjCrB0c7utxPxqMeUuYVkfb4OQc51LJNBeULHssI"}', '2018-11-17 23:32:54', '2018-11-17 23:32:54'),
	(65, 3, 'system_admin', 'GET', '101.99.59.193', '[]', '2018-11-17 23:32:58', '2018-11-17 23:32:58'),
	(66, 3, 'system_admin/shop_product', 'GET', '101.99.59.193', '{"_pjax":"#pjax-container"}', '2018-11-17 23:46:55', '2018-11-17 23:46:55'),
	(67, 3, 'system_admin/shop_product', 'GET', '101.99.59.193', '{"_pjax":"#pjax-container"}', '2018-11-17 23:46:58', '2018-11-17 23:46:58'),
	(68, 3, 'system_admin', 'GET', '129.45.105.32', '[]', '2018-11-18 01:14:49', '2018-11-18 01:14:49'),
	(69, 3, 'system_admin/auth/setting', 'GET', '129.45.105.32', '[]', '2018-11-18 01:15:18', '2018-11-18 01:15:18'),
	(70, 3, 'system_admin/shop_product', 'GET', '129.45.105.32', '{"_pjax":"#pjax-container"}', '2018-11-18 01:15:33', '2018-11-18 01:15:33'),
	(71, 3, 'system_admin/shop_product/49', 'PUT', '129.45.105.32', '{"status":"off","_token":"Ri4gMdEj4xVO50bZbM6A29YsZclIkY8w6y0BS3U1","_method":"PUT"}', '2018-11-18 01:15:44', '2018-11-18 01:15:44'),
	(72, 3, 'system_admin/process/productImport', 'GET', '129.45.105.32', '[]', '2018-11-18 01:18:53', '2018-11-18 01:18:53'),
	(73, 3, 'system_admin/report/customer', 'GET', '129.45.105.32', '{"_pjax":"#pjax-container"}', '2018-11-18 01:19:03', '2018-11-18 01:19:03'),
	(74, 3, 'system_admin/shop_customer', 'GET', '129.45.105.32', '{"_pjax":"#pjax-container"}', '2018-11-18 01:21:57', '2018-11-18 01:21:57'),
	(75, 3, 'system_admin/shop_category', 'GET', '129.45.105.32', '{"_pjax":"#pjax-container"}', '2018-11-18 01:22:05', '2018-11-18 01:22:05'),
	(76, 3, 'system_admin', 'GET', '129.45.105.32', '[]', '2018-11-18 01:55:59', '2018-11-18 01:55:59'),
	(77, 3, 'system_admin/shop_shipping', 'GET', '129.45.105.32', '{"_pjax":"#pjax-container"}', '2018-11-18 01:56:18', '2018-11-18 01:56:18'),
	(78, 3, 'system_admin/shop_shipping/1', 'DELETE', '129.45.105.32', '{"_method":"delete","_token":"Ri4gMdEj4xVO50bZbM6A29YsZclIkY8w6y0BS3U1"}', '2018-11-18 01:56:36', '2018-11-18 01:56:36'),
	(79, 3, 'system_admin/shop_shipping', 'GET', '129.45.105.32', '{"_pjax":"#pjax-container"}', '2018-11-18 01:56:41', '2018-11-18 01:56:41'),
	(80, 3, 'system_admin/documents', 'GET', '129.45.105.32', '{"_pjax":"#pjax-container"}', '2018-11-18 01:56:43', '2018-11-18 01:56:43'),
	(81, 3, 'system_admin/banner', 'GET', '129.45.105.32', '{"_pjax":"#pjax-container"}', '2018-11-18 01:56:48', '2018-11-18 01:56:48'),
	(82, 3, 'system_admin/banner/create', 'GET', '129.45.105.32', '[]', '2018-11-18 01:57:19', '2018-11-18 01:57:19'),
	(83, 3, 'system_admin/banner', 'GET', '129.45.105.32', '{"_pjax":"#pjax-container"}', '2018-11-18 01:58:11', '2018-11-18 01:58:11'),
	(84, 3, 'system_admin/banner', 'GET', '129.45.105.32', '{"_pjax":"#pjax-container","per_page":"30"}', '2018-11-18 01:58:56', '2018-11-18 01:58:56'),
	(85, 3, 'system_admin/auth/setting', 'GET', '129.45.105.32', '[]', '2018-11-18 02:02:10', '2018-11-18 02:02:10'),
	(86, 3, 'system_admin', 'GET', '129.45.105.32', '[]', '2018-11-18 02:02:19', '2018-11-18 02:02:19'),
	(87, 3, 'system_admin', 'GET', '116.109.183.158', '[]', '2018-11-18 08:46:02', '2018-11-18 08:46:02'),
	(88, 3, 'system_admin/shop_order', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container"}', '2018-11-18 08:46:05', '2018-11-18 08:46:05'),
	(89, 3, 'system_admin/shop_order', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container","page":"2"}', '2018-11-18 08:46:17', '2018-11-18 08:46:17'),
	(90, 3, 'system_admin/shop_order', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container","page":"3"}', '2018-11-18 08:46:19', '2018-11-18 08:46:19'),
	(91, 3, 'system_admin/shop_order', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container","page":"1"}', '2018-11-18 08:46:22', '2018-11-18 08:46:22'),
	(92, 3, 'system_admin/locale/vi', 'POST', '116.109.183.158', '{"_token":"vC2Plcd9tdIdwXKZrTDdiEFeaygGpTFQ7GKitIOm"}', '2018-11-18 08:46:38', '2018-11-18 08:46:38'),
	(93, 3, 'system_admin', 'GET', '116.109.183.158', '[]', '2018-11-18 08:46:42', '2018-11-18 08:46:42'),
	(94, 3, 'system_admin', 'GET', '116.109.183.158', '[]', '2018-11-18 08:46:54', '2018-11-18 08:46:54'),
	(95, 3, 'system_admin', 'GET', '116.109.183.158', '[]', '2018-11-18 08:47:01', '2018-11-18 08:47:01'),
	(96, 3, 'system_admin/auth/logout', 'GET', '116.109.183.158', '[]', '2018-11-18 08:47:29', '2018-11-18 08:47:29'),
	(97, 1, 'system_admin', 'GET', '116.109.183.158', '[]', '2018-11-18 08:47:37', '2018-11-18 08:47:37'),
	(98, 1, 'system_admin/auth/menu', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container"}', '2018-11-18 08:47:41', '2018-11-18 08:47:41'),
	(99, 1, 'system_admin/auth/menu/53/edit', 'GET', '116.109.183.158', '[]', '2018-11-18 08:47:52', '2018-11-18 08:47:52'),
	(100, 1, 'system_admin/auth/menu/53', 'PUT', '116.109.183.158', '{"parent_id":"55","title":"HTML Module","icon":"fa-bars","uri":"config_layout\\/1\\/edit","roles":[null],"permission":null,"_token":"YgS08xEUhwiigeqd5laDSHimdbmBbhZBLZnG9wX8","_method":"PUT","_previous_":"https:\\/\\/demo.s-cart.org\\/system_admin\\/auth\\/menu"}', '2018-11-18 08:47:58', '2018-11-18 08:47:58'),
	(101, 1, 'system_admin/auth/menu/53/edit', 'GET', '116.109.183.158', '[]', '2018-11-18 08:47:58', '2018-11-18 08:47:58'),
	(102, 1, 'system_admin/auth/menu/53', 'PUT', '116.109.183.158', '{"parent_id":"55","title":"HTML Module","icon":"fa-bars","uri":"config_layout\\/1\\/edit","roles":[null],"permission":"*","_token":"YgS08xEUhwiigeqd5laDSHimdbmBbhZBLZnG9wX8","_method":"PUT"}', '2018-11-18 08:48:40', '2018-11-18 08:48:40'),
	(103, 1, 'system_admin/auth/menu/53/edit', 'GET', '116.109.183.158', '[]', '2018-11-18 08:48:40', '2018-11-18 08:48:40'),
	(104, 1, 'system_admin/auth/menu/53/edit', 'GET', '116.109.183.158', '[]', '2018-11-18 08:54:57', '2018-11-18 08:54:57'),
	(105, 1, 'system_admin/auth/menu/53', 'PUT', '116.109.183.158', '{"parent_id":"55","title":"HTML Module","icon":"fa-bars","uri":"config_layout\\/1\\/edit","roles":[null],"permission":null,"_token":"YgS08xEUhwiigeqd5laDSHimdbmBbhZBLZnG9wX8","_method":"PUT","_previous_":"https:\\/\\/demo.s-cart.org\\/system_admin\\/auth\\/menu"}', '2018-11-18 08:55:05', '2018-11-18 08:55:05'),
	(106, 1, 'system_admin/auth/menu', 'GET', '116.109.183.158', '[]', '2018-11-18 08:55:05', '2018-11-18 08:55:05'),
	(107, 1, 'system_admin/auth/menu', 'GET', '116.109.183.158', '[]', '2018-11-18 08:55:11', '2018-11-18 08:55:11'),
	(108, 1, 'system_admin/config_layout/1/edit', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container"}', '2018-11-18 08:55:14', '2018-11-18 08:55:14'),
	(109, 1, 'system_admin/config_layout/1/edit', 'GET', '116.109.183.158', '[]', '2018-11-18 08:57:48', '2018-11-18 08:57:48'),
	(110, 1, 'system_admin', 'GET', '116.109.183.158', '[]', '2018-11-18 08:57:52', '2018-11-18 08:57:52'),
	(111, 1, 'system_admin', 'GET', '116.109.183.158', '[]', '2018-11-18 08:59:23', '2018-11-18 08:59:23'),
	(112, 1, 'system_admin', 'GET', '116.109.183.158', '[]', '2018-11-18 08:59:30', '2018-11-18 08:59:30'),
	(113, 1, 'system_admin/shop_order', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container"}', '2018-11-18 08:59:38', '2018-11-18 08:59:38'),
	(114, 1, 'system_admin/shop_order', 'GET', '116.109.183.158', '{"keyword":"anghiazx","_pjax":"#pjax-container"}', '2018-11-18 08:59:45', '2018-11-18 08:59:45'),
	(115, 1, 'system_admin', 'GET', '116.109.183.158', '[]', '2018-11-18 09:00:00', '2018-11-18 09:00:00'),
	(116, 1, 'system_admin/shop_order', 'GET', '116.109.183.158', '{"keyword":"anghiazx","_pjax":"#pjax-container"}', '2018-11-18 09:00:11', '2018-11-18 09:00:11'),
	(117, 1, 'system_admin/cms_news', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container"}', '2018-11-18 09:04:28', '2018-11-18 09:04:28'),
	(118, 1, 'system_admin/cms_page', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container"}', '2018-11-18 09:04:31', '2018-11-18 09:04:31'),
	(119, 1, 'system_admin/shop_category', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container"}', '2018-11-18 09:04:34', '2018-11-18 09:04:34'),
	(120, 1, 'system_admin/shop_product', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container"}', '2018-11-18 09:04:36', '2018-11-18 09:04:36'),
	(121, 1, 'system_admin/report/product', 'GET', '116.109.183.158', '{"_pjax":"#pjax-container"}', '2018-11-18 09:04:43', '2018-11-18 09:04:43'),
	(122, 1, 'system_admin', 'GET', '116.109.183.158', '[]', '2018-11-18 09:04:54', '2018-11-18 09:04:54'),
	(123, 1, 'system_admin', 'GET', '116.109.183.158', '[]', '2018-11-18 09:05:02', '2018-11-18 09:05:02'),
	(124, 1, 'system_admin', 'GET', '127.0.0.1', '[]', '2018-11-18 18:54:10', '2018-11-18 18:54:10'),
	(125, 1, 'system_admin/auth/setting', 'GET', '127.0.0.1', '[]', '2018-11-18 18:54:22', '2018-11-18 18:54:22'),
	(126, 1, 'system_admin/auth/setting', 'PUT', '127.0.0.1', '{"name":"Administrator","password":"admin","password_confirmation":"admin","_token":"aMdUQlDWJsoQay1EaIBGRtyN9zpxozkSEgrEz88m","_method":"PUT","_previous_":"http:\\/\\/demoshop.local\\/system_admin"}', '2018-11-18 18:54:31', '2018-11-18 18:54:31'),
	(127, 1, 'system_admin/auth/setting', 'GET', '127.0.0.1', '[]', '2018-11-18 18:54:31', '2018-11-18 18:54:31'),
	(128, 1, 'system_admin/auth/logout', 'GET', '127.0.0.1', '[]', '2018-11-18 18:54:38', '2018-11-18 18:54:38'),
	(129, 1, 'system_admin', 'GET', '127.0.0.1', '[]', '2018-11-18 18:54:48', '2018-11-18 18:54:48'),
	(130, 1, 'system_admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-11-18 18:54:52', '2018-11-18 18:54:52'),
	(131, 1, 'system_admin/shop_payment_status', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-11-18 18:55:02', '2018-11-18 18:55:02'),
	(132, 1, 'system_admin/shop_promotion', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-11-18 18:55:05', '2018-11-18 18:55:05');
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;

-- Dumping structure for table s-cart.admin_permissions
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE IF NOT EXISTS `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.admin_permissions: ~10 rows (approximately)
DELETE FROM `admin_permissions`;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
	(1, 'All permission', '*', '', '*', NULL, '2018-07-26 14:29:38'),
	(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
	(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
	(4, 'User setting', 'auth.setting', 'GET,PUT,DELETE', '/auth/setting', NULL, '2018-08-25 11:19:26'),
	(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
	(6, 'Admin CMS', 'admin_cms', '', '/cms_news\r\n/cms_news/*\r\n/cms_page\r\n/cms_page/*', '2018-03-23 15:18:05', '2018-03-23 16:20:58'),
	(7, 'Admin Shop', 'admin_shop', '', '/shop_*\r\n/getInfoProduct\r\n/shop_order_edit\r\n/shop_order_update', '2018-03-23 15:21:36', '2018-03-25 09:27:28'),
	(8, 'Admin Config', 'admin_confi', '', '/config_*', '2018-03-23 15:25:02', '2018-03-23 15:25:02'),
	(9, 'Manager Banner', 'banner', '', '/banner\r\n/banner/*', '2018-03-23 15:25:47', '2018-03-23 16:21:45'),
	(10, 'View', 'vieew', 'GET', '/shop*\r\n/cms*\r\n/banner*\r\n/config*\r\n/report*\r\n/process*\r\n/', '2018-09-23 18:56:03', '2018-11-12 19:52:06');
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;

-- Dumping structure for table s-cart.admin_roles
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE IF NOT EXISTS `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.admin_roles: ~4 rows (approximately)
DELETE FROM `admin_roles`;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Administrator', 'administrator', '2018-01-12 17:27:40', '2018-01-12 17:27:40'),
	(2, 'Admin', 'admin', '2018-01-12 18:02:33', '2018-01-12 18:02:33'),
	(3, 'User', 'user', '2018-01-12 18:03:14', '2018-01-12 18:03:14'),
	(4, 'Content', 'content', '2018-01-13 08:27:11', '2018-01-13 08:27:11');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;

-- Dumping structure for table s-cart.admin_role_menu
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE IF NOT EXISTS `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.admin_role_menu: ~2 rows (approximately)
DELETE FROM `admin_role_menu`;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
	(1, 2, NULL, NULL),
	(1, 12, NULL, NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;

-- Dumping structure for table s-cart.admin_role_permissions
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE IF NOT EXISTS `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.admin_role_permissions: ~12 rows (approximately)
DELETE FROM `admin_role_permissions`;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, NULL),
	(3, 3, NULL, NULL),
	(2, 2, NULL, NULL),
	(2, 3, NULL, NULL),
	(2, 4, NULL, NULL),
	(4, 3, NULL, NULL),
	(4, 4, NULL, NULL),
	(2, 6, NULL, NULL),
	(2, 7, NULL, NULL),
	(2, 8, NULL, NULL),
	(2, 9, NULL, NULL),
	(3, 10, NULL, NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;

-- Dumping structure for table s-cart.admin_role_users
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE IF NOT EXISTS `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.admin_role_users: ~2 rows (approximately)
DELETE FROM `admin_role_users`;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, NULL),
	(3, 3, NULL, NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;

-- Dumping structure for table s-cart.admin_users
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.admin_users: ~2 rows (approximately)
DELETE FROM `admin_users`;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '$2y$10$28cAgXPLNSoXK9MBIpwJDuuEQ3801XeBkIMjp12FGEFvc6zJ8hL3u', 'Administrator', NULL, 'ysJzS2eVzqo22VmLydovOgdmA4OZOhtRrrs5T3SGpGic0Qbe1PD3fUXKbZwj', '2018-01-12 17:27:40', '2018-11-18 18:54:31'),
	(3, 'user', '$2y$10$Ao7Uey2z5jPFta/rZG51XuG1OZiWdlbdf3QSgsAjKn9Hfpcp14Ami', 'User', NULL, 'uJDVZWNzZXrwvi2Bqy0WUonN9LFJXm3uUWvFrg2l9MUMgQ0sY566f5Larc7k', '2018-01-12 18:05:28', '2018-09-23 18:56:26');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;

-- Dumping structure for table s-cart.admin_user_permissions
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE IF NOT EXISTS `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.admin_user_permissions: ~0 rows (approximately)
DELETE FROM `admin_user_permissions`;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;

-- Dumping structure for table s-cart.banner
DROP TABLE IF EXISTS `banner`;
CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `html` text COLLATE utf8_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `click` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.banner: ~3 rows (approximately)
DELETE FROM `banner`;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` (`id`, `image`, `url`, `html`, `status`, `sort`, `click`, `type`, `created_at`, `updated_at`) VALUES
	(8, 'banner/6122cfae7fdb5fff1a4e7406dcab10ef.jpg', NULL, '<h1>S-CART</h1>\r\n                  <h2>Free E-Commerce Template</h2>\r\n                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\r\n                  <button type="button" class="btn btn-default get">Get it now</button>', 1, 0, 0, 1, '2018-08-02 16:23:32', '2018-09-20 22:24:53'),
	(16, 'banner/7b16dd5b838439ddbe58c3ea506f5db1.jpg', NULL, '<h1>S-CART</h1>\r\n                  <h2>Free E-Commerce Template</h2>\r\n                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\r\n                  <button type="button" class="btn btn-default get">Get it now</button>', 1, 0, 0, 1, '2018-08-21 15:09:08', '2018-09-20 22:24:43'),
	(17, 'banner/36e662803f744d4f9df2cecc2e17b87b.jpg', NULL, '<h1>S-CART</h1>\r\n                  <h2>Free E-Commerce Template</h2>\r\n                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\r\n                  <button type="button" class="btn btn-default get">Get it now</button>', 1, 0, 0, 0, '2018-09-03 16:51:56', '2018-09-20 22:24:23');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;

-- Dumping structure for table s-cart.cms_category
DROP TABLE IF EXISTS `cms_category`;
CREATE TABLE IF NOT EXISTS `cms_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.cms_category: ~0 rows (approximately)
DELETE FROM `cms_category`;
/*!40000 ALTER TABLE `cms_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_category` ENABLE KEYS */;

-- Dumping structure for table s-cart.cms_category_description
DROP TABLE IF EXISTS `cms_category_description`;
CREATE TABLE IF NOT EXISTS `cms_category_description` (
  `cms_category_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `cms_category_id_lang_id` (`cms_category_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.cms_category_description: ~0 rows (approximately)
DELETE FROM `cms_category_description`;
/*!40000 ALTER TABLE `cms_category_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_category_description` ENABLE KEYS */;

-- Dumping structure for table s-cart.cms_conten
DROP TABLE IF EXISTS `cms_conten`;
CREATE TABLE IF NOT EXISTS `cms_conten` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) unsigned DEFAULT '0',
  `status` tinyint(4) unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.cms_conten: ~0 rows (approximately)
DELETE FROM `cms_conten`;
/*!40000 ALTER TABLE `cms_conten` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_conten` ENABLE KEYS */;

-- Dumping structure for table s-cart.cms_content_description
DROP TABLE IF EXISTS `cms_content_description`;
CREATE TABLE IF NOT EXISTS `cms_content_description` (
  `cms_content_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  UNIQUE KEY `cms_content_id_lang_id` (`cms_content_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.cms_content_description: ~0 rows (approximately)
DELETE FROM `cms_content_description`;
/*!40000 ALTER TABLE `cms_content_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_content_description` ENABLE KEYS */;

-- Dumping structure for table s-cart.cms_image
DROP TABLE IF EXISTS `cms_image`;
CREATE TABLE IF NOT EXISTS `cms_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) unsigned NOT NULL DEFAULT '0',
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.cms_image: ~2 rows (approximately)
DELETE FROM `cms_image`;
/*!40000 ALTER TABLE `cms_image` DISABLE KEYS */;
INSERT INTO `cms_image` (`id`, `content_id`, `image`, `sort`, `status`) VALUES
	(1, 3, 'images/1f5eb6db2404b38b86e4246a792f3fac.png', 0, 0),
	(2, 3, 'images/75be44c336696094632625d2d85159b1.jpg', 0, 0);
/*!40000 ALTER TABLE `cms_image` ENABLE KEYS */;

-- Dumping structure for table s-cart.cms_news
DROP TABLE IF EXISTS `cms_news`;
CREATE TABLE IF NOT EXISTS `cms_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.cms_news: ~7 rows (approximately)
DELETE FROM `cms_news`;
/*!40000 ALTER TABLE `cms_news` DISABLE KEYS */;
INSERT INTO `cms_news` (`id`, `image`, `sort`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'cms_content/bdbd7a28e7be30d83ba2842cdc580a02.png', 0, 1, '2018-02-10 03:35:13', '2018-09-06 06:25:35'),
	(2, 'cms_content/8ce2fd76cf30bcd9e099345a68ca17b6.png', 0, 1, '2018-08-02 17:10:19', '2018-09-06 06:25:26'),
	(3, 'cms_content/bdbd7a28e7be30d83ba2842cdc580a02.png', 0, 1, '2018-08-02 17:16:49', '2018-09-06 06:25:17'),
	(4, 'cms_content/8ce2fd76cf30bcd9e099345a68ca17b6.png', 0, 1, '2018-08-02 17:59:52', '2018-09-06 06:25:06'),
	(5, 'cms_content/16889dd0f3e75856c9b387420d641ce4.png', 0, 1, '2018-08-09 13:44:08', '2018-09-23 09:27:12'),
	(6, 'cms_content/8ce2fd76cf30bcd9e099345a68ca17b6.png', 0, 1, '2018-08-09 13:50:36', '2018-09-23 09:26:59'),
	(7, 'cms_content/bdbd7a28e7be30d83ba2842cdc580a02.png', 0, 1, '2018-08-09 15:59:29', '2018-09-23 09:26:41');
/*!40000 ALTER TABLE `cms_news` ENABLE KEYS */;

-- Dumping structure for table s-cart.cms_news_description
DROP TABLE IF EXISTS `cms_news_description`;
CREATE TABLE IF NOT EXISTS `cms_news_description` (
  `cms_news_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  UNIQUE KEY `cms_news_id_lang_id` (`cms_news_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.cms_news_description: ~14 rows (approximately)
DELETE FROM `cms_news_description`;
/*!40000 ALTER TABLE `cms_news_description` DISABLE KEYS */;
INSERT INTO `cms_news_description` (`cms_news_id`, `lang_id`, `title`, `keyword`, `description`, `content`) VALUES
	(1, 1, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(1, 2, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(2, 1, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(2, 2, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(3, 1, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(3, 2, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(4, 1, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(4, 2, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(5, 1, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(5, 2, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(6, 1, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(6, 2, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(7, 1, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(7, 2, 'Easy Polo Black Edition', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>');
/*!40000 ALTER TABLE `cms_news_description` ENABLE KEYS */;

-- Dumping structure for table s-cart.cms_page
DROP TABLE IF EXISTS `cms_page`;
CREATE TABLE IF NOT EXISTS `cms_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uniquekey` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`uniquekey`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.cms_page: ~2 rows (approximately)
DELETE FROM `cms_page`;
/*!40000 ALTER TABLE `cms_page` DISABLE KEYS */;
INSERT INTO `cms_page` (`id`, `image`, `uniquekey`, `status`) VALUES
	(1, '', 'about', 1),
	(2, NULL, 'contact', 1);
/*!40000 ALTER TABLE `cms_page` ENABLE KEYS */;

-- Dumping structure for table s-cart.cms_page_description
DROP TABLE IF EXISTS `cms_page_description`;
CREATE TABLE IF NOT EXISTS `cms_page_description` (
  `cms_page_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  UNIQUE KEY `cms_page_id_lang_id` (`cms_page_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.cms_page_description: ~4 rows (approximately)
DELETE FROM `cms_page_description`;
/*!40000 ALTER TABLE `cms_page_description` DISABLE KEYS */;
INSERT INTO `cms_page_description` (`cms_page_id`, `lang_id`, `title`, `keyword`, `description`, `content`) VALUES
	(1, 1, 'About', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(1, 2, 'Giới thiệu', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(2, 1, 'Contact', '', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
	(2, 2, 'Liên hệ với chúng tôi', '', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.');
/*!40000 ALTER TABLE `cms_page_description` ENABLE KEYS */;

-- Dumping structure for table s-cart.config
DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `detail` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.config: ~29 rows (approximately)
DELETE FROM `config`;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` (`id`, `code`, `key`, `value`, `sort`, `detail`) VALUES
	(10, 'config', 'shop_allow_guest', '1', 11, 'language.admin.shop_allow_guest'),
	(11, 'smtp', 'smtp_host', NULL, 8, 'language.admin.smtp_host'),
	(12, 'smtp', 'smtp_user', '', 7, 'language.admin.smtp_user'),
	(13, 'smtp', 'smtp_password', '', 6, 'language.admin.smtp_password'),
	(14, 'smtp', 'smtp_security', '', 5, 'language.admin.smtp_security'),
	(15, 'smtp', 'smtp_port', '', 4, 'language.admin.smtp_port'),
	(16, 'smtp', 'smtp_mode', '0', 9, 'language.admin.smtp_mode'),
	(18, 'config', 'product_preorder', '1', 18, 'language.admin.product_preorder'),
	(19, 'config', 'product_display_out_of_stock', '1', 19, 'language.admin.product_display_out_of_stock'),
	(20, 'config', 'product_buy_out_of_stock', '1', 20, 'language.admin.product_buy_out_of_stock'),
	(22, 'config', 'show_date_available', '1', 21, 'language.admin.show_date_available'),
	(24, 'config', 'promotion_mode', '0', 1, 'language.admin.use_coupon'),
	(26, 'display', 'product_hot', '12', 0, 'language.admin.hot_product'),
	(27, 'display', 'product_new', '6', 0, 'language.admin.new_product'),
	(28, 'display', 'product_list', '18', 0, 'language.admin.list_product'),
	(29, 'display', 'product_relation', '4', 0, 'language.admin.relation_product'),
	(30, 'config', 'site_ssl', '0', 0, 'language.admin.enable_https'),
	(31, 'config', 'admin_log', '0', 0, 'language.admin.enable_log_admin'),
	(32, 'config', 'watermark', '1', 0, 'language.admin.enable_watermark'),
	(36, 'payment_paypal', 'paypal_log', '1', 0, 'language.admin.paypal_log'),
	(37, 'payment_paypal', 'paypal_path_log', 'logs/paypal.log', 0, 'language.admin.paypal_path_log'),
	(40, 'payment_paypal', 'paypal_status', '1', 9, 'language.admin.paypal_status'),
	(41, 'payment_paypal', 'paypal_currency', 'USD', 0, 'language.admin.paypal_currency'),
	(42, 'payment_paypal', 'paypal_order_status_success', '1', 0, 'language.admin.paypal_order_status_success'),
	(43, 'payment_paypal', 'paypal_order_status_faild', '5', 0, 'language.admin.paypal_order_status_faild'),
	(44, 'config', 'site_status', '1', 100, 'language.admin.site_status');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;

-- Dumping structure for table s-cart.config_global
DROP TABLE IF EXISTS `config_global`;
CREATE TABLE IF NOT EXISTS `config_global` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `watermark` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `long_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.config_global: ~0 rows (approximately)
DELETE FROM `config_global`;
/*!40000 ALTER TABLE `config_global` DISABLE KEYS */;
INSERT INTO `config_global` (`id`, `logo`, `watermark`, `template`, `title`, `description`, `keyword`, `phone`, `long_phone`, `email`, `address`, `locale`) VALUES
	(1, 'images/scart-mid.png', 'images/watermark.png', 's-cart', 'Free open source - eCommerce Platform for Business', 'Free website shopping cart for business', NULL, '0123456789', 'Support: 0987654321', 'admin@admin.com', '123st - abc - xyz', 'en');
/*!40000 ALTER TABLE `config_global` ENABLE KEYS */;

-- Dumping structure for table s-cart.config_layout
DROP TABLE IF EXISTS `config_layout`;
CREATE TABLE IF NOT EXISTS `config_layout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meta` text COLLATE utf8_unicode_ci,
  `header` text COLLATE utf8_unicode_ci,
  `footer_bottom` text COLLATE utf8_unicode_ci,
  `footer_top` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.config_layout: ~0 rows (approximately)
DELETE FROM `config_layout`;
/*!40000 ALTER TABLE `config_layout` DISABLE KEYS */;
INSERT INTO `config_layout` (`id`, `meta`, `header`, `footer_bottom`, `footer_top`) VALUES
	(1, NULL, '<div id="fb-root"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \'//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8&appId=934208239994473\';\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));\r\n</script>', '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src="https://www.googletagmanager.com/gtag/js?id=UA-128658138-1"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-128658138-1\');\r\n</script>', NULL);
/*!40000 ALTER TABLE `config_layout` ENABLE KEYS */;

-- Dumping structure for table s-cart.language
DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.language: ~2 rows (approximately)
DELETE FROM `language`;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` (`id`, `name`, `code`, `icon`, `status`, `sort`) VALUES
	(1, 'English', 'en', 'language/flag_uk.png', 1, 1),
	(2, 'Tiếng Việt', 'vi', 'language/flag_vn.png', 1, 1);
/*!40000 ALTER TABLE `language` ENABLE KEYS */;

-- Dumping structure for table s-cart.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.migrations: ~0 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table s-cart.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_brand
DROP TABLE IF EXISTS `shop_brand`;
CREATE TABLE IF NOT EXISTS `shop_brand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_brand: ~6 rows (approximately)
DELETE FROM `shop_brand`;
/*!40000 ALTER TABLE `shop_brand` DISABLE KEYS */;
INSERT INTO `shop_brand` (`id`, `name`, `image`, `url`, `status`, `sort`) VALUES
	(1, 'Husq', 'brand/1ca28f797c0f2edb635c4b51c2e7e952.png', NULL, 1, 0),
	(2, 'Ideal', 'brand/0a778de7e1e2f2a0635d6a1727e3de8d.png', NULL, 1, 0),
	(3, 'Apex', 'brand/d3abfcfc8c0fef7e1356fc637ab9d8d8.png', NULL, 1, 0),
	(4, 'CST', 'brand/185c50c85b83644e02e8b96639370341.png', NULL, 1, 0),
	(5, 'Klein', 'brand/3e11cc022e9f30774ab5f6a0c6c36451.png', NULL, 1, 0),
	(6, 'Metabo', 'brand/7868b0924b8f115aef70292aea1a67b8.png', NULL, 1, 0);
/*!40000 ALTER TABLE `shop_brand` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_category
DROP TABLE IF EXISTS `shop_category`;
CREATE TABLE IF NOT EXISTS `shop_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_category: ~18 rows (approximately)
DELETE FROM `shop_category`;
/*!40000 ALTER TABLE `shop_category` DISABLE KEYS */;
INSERT INTO `shop_category` (`id`, `image`, `parent`, `sort`, `status`) VALUES
	(1, NULL, 0, 0, 1),
	(2, '', 0, 0, 1),
	(3, '', 0, 0, 1),
	(4, '', 0, 0, 1),
	(5, '', 0, 0, 1),
	(6, '', 9, 0, 1),
	(7, '', 4, 0, 1),
	(8, '', 4, 0, 1),
	(9, '', 0, 0, 1),
	(10, '', 2, 0, 1),
	(11, '', 1, 0, 1),
	(12, '', 1, 3, 1),
	(13, '', 9, 2, 1),
	(14, '', 4, 0, 1),
	(15, '', 5, 0, 1),
	(16, '', 2, 0, 1),
	(17, '', 3, 0, 1),
	(18, '', 3, 0, 1);
/*!40000 ALTER TABLE `shop_category` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_category_description
DROP TABLE IF EXISTS `shop_category_description`;
CREATE TABLE IF NOT EXISTS `shop_category_description` (
  `shop_category_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `shop_category_id_lang_id` (`shop_category_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_category_description: ~36 rows (approximately)
DELETE FROM `shop_category_description`;
/*!40000 ALTER TABLE `shop_category_description` DISABLE KEYS */;
INSERT INTO `shop_category_description` (`shop_category_id`, `lang_id`, `name`, `keyword`, `description`) VALUES
	(1, 1, 'SPORTSWEAR', NULL, NULL),
	(1, 2, 'Danh mục SPORTSWEAR', NULL, NULL),
	(2, 1, 'MENS', NULL, NULL),
	(2, 2, 'Danh mục MENS', NULL, NULL),
	(3, 1, 'WOMENS', NULL, NULL),
	(3, 2, 'Danh mục WOMENS', NULL, NULL),
	(4, 1, 'KIDS', NULL, NULL),
	(4, 2, 'Danh mục KIDS', NULL, NULL),
	(5, 1, 'FASHION', NULL, NULL),
	(5, 2, 'Danh mục FASHION', NULL, NULL),
	(6, 1, 'GUESS', NULL, NULL),
	(6, 2, 'Danh mục GUESS', NULL, NULL),
	(7, 1, 'PUMA', NULL, NULL),
	(7, 2, 'Danh mục PUMA', NULL, NULL),
	(8, 1, 'ASICS', NULL, NULL),
	(8, 2, 'Danh mục ASICS', NULL, NULL),
	(9, 1, 'HOUSEHOLDS', NULL, NULL),
	(9, 2, 'Danh mục HOUSEHOLDS', NULL, NULL),
	(10, 1, 'VALENTINO', NULL, NULL),
	(10, 2, 'Danh mục VALENTINO', NULL, NULL),
	(11, 1, 'DIOR', NULL, NULL),
	(11, 2, 'Danh mục DIOR', NULL, NULL),
	(12, 1, 'VALENTINO', NULL, NULL),
	(12, 2, 'Danh mục VALENTINO', NULL, NULL),
	(13, 1, 'DIOR', NULL, NULL),
	(13, 2, 'Danh mục DIOR', NULL, NULL),
	(14, 1, 'FENDI', NULL, NULL),
	(14, 2, 'Danh mục FENDI', NULL, NULL),
	(15, 1, 'FENDI', NULL, NULL),
	(15, 2, 'Danh mục  FENDI', NULL, NULL),
	(16, 1, 'NIKE', NULL, NULL),
	(16, 2, 'Danh mục NIKE', NULL, NULL),
	(17, 1, 'UNDER ARMOUR', NULL, NULL),
	(17, 2, 'Danh mục UNDER ARMOUR', NULL, NULL),
	(18, 1, 'ADIDAS', NULL, NULL),
	(18, 2, 'Danh mục ADIDAS', NULL, NULL);
/*!40000 ALTER TABLE `shop_category_description` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_image
DROP TABLE IF EXISTS `shop_image`;
CREATE TABLE IF NOT EXISTS `shop_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(2) unsigned NOT NULL DEFAULT '0',
  `status` int(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_image: ~21 rows (approximately)
DELETE FROM `shop_image`;
/*!40000 ALTER TABLE `shop_image` DISABLE KEYS */;
INSERT INTO `shop_image` (`id`, `image`, `product_id`, `sort`, `status`) VALUES
	(82, 'product_slide/0642809276ecd6a28cb23d464cf41734.jpeg', 38, 0, 0),
	(83, 'product_slide/f4786d81509a8d8ffa461535b07c77bc.png', 38, 0, 0),
	(84, 'product_slide/e09af215f794f8225063c368f46a971d.jpeg', 39, 0, 0),
	(87, 'product_slide/54fac65e58eb9abafe3ac1acbde5ee6d.jpeg', 40, 0, 0),
	(88, 'product_slide/81f37c10d867710075e3ab6153a31d03.png', 40, 0, 0),
	(89, 'product_slide/2fbba5ac3b9c0838e5ce2b536d0c5659.jpeg', 42, 0, 0),
	(90, 'product_slide/8718dfdb75f951010cdce669768c3e3a.png', 42, 0, 0),
	(92, 'product_slide/86282e4f808428108773596dea5ee29c.jpeg', 43, 0, 0),
	(93, 'product_slide/b89873b9c888c0511e14c6e3abc798e8.jpeg', 43, 0, 0),
	(94, 'product_slide/b0d9ffad7e40d07bae6d36665f765e0f.jpeg', 43, 0, 0),
	(95, 'product_slide/70edffd9b5b4121fb8aee7e41c941f03.jpeg', 44, 0, 0),
	(96, 'product_slide/e9d5898fc6daf50751ec0c4e91ed904d.jpeg', 45, 0, 0),
	(102, 'product_slide/a68b1950f148f2688c916cf1c0b5ea06.jpeg', 48, 0, 0),
	(103, 'product_slide/d5d98e50039843507f11ba0bae136624.jpeg', 48, 0, 0),
	(109, 'product_slide/e91e85e37bb89ed854aa4123ce5eb14f.jpeg', 49, 0, 0),
	(110, 'product_slide/bcf85f60d3fe35de2c1be6272f9605ef.png', 52, 0, 0),
	(111, 'product_slide/40999526f41b1d4090e30c6b0ce21dca.jpg', 53, 0, 0),
	(113, 'product_slide/7963a1dc4e1676c2b3bc97ade96de7b6.jpeg', 49, 0, 0),
	(114, 'product_slide/101a109520cfbddde1be1791423010b6.jpeg', 46, 0, 0),
	(115, 'product_slide/f02dbb115272eac46f46f015608ab93a.jpeg', 46, 0, 0),
	(116, 'product_slide/89230e4667315ad3ce14785ebbe0bf2a.jpg', 48, 0, 0);
/*!40000 ALTER TABLE `shop_image` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_order
DROP TABLE IF EXISTS `shop_order`;
CREATE TABLE IF NOT EXISTS `shop_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `subtotal` int(11) DEFAULT '0',
  `shipping` int(11) DEFAULT '0',
  `discount` int(11) DEFAULT '0',
  `payment_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-not send 1-pp send 2-sent',
  `shipping_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-notship 1-sending 2-pp send 3-shipped',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-new 1-processing 2-hold 3-cancel 4-Completed',
  `tax` tinyint(4) DEFAULT '0' COMMENT '%',
  `total` int(11) DEFAULT '0',
  `received` int(11) DEFAULT '0',
  `balance` int(11) DEFAULT '0',
  `toname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` int(3) DEFAULT NULL,
  `phone` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_order: ~48 rows (approximately)
DELETE FROM `shop_order`;
/*!40000 ALTER TABLE `shop_order` DISABLE KEYS */;
INSERT INTO `shop_order` (`id`, `user_id`, `subtotal`, `shipping`, `discount`, `payment_status`, `shipping_status`, `status`, `tax`, `total`, `received`, `balance`, `toname`, `address1`, `address2`, `country`, `phone`, `email`, `comment`, `payment_method`, `transaction`, `created_at`, `updated_at`) VALUES
	(4, 0, 320000, 0, 0, 0, 0, 0, 0, 320000, 0, 320000, 'Le Nam', '15 nguyen bach', 'Tan Phu', NULL, '0999988898', '', 'ok', NULL, NULL, '2017-08-25 15:34:21', NULL),
	(38, 3, 485000, 15, -15, 0, 2, 4, 0, 485000, -485000, 0, 'Lê Văn Lanh', 'Quan 12', 'Ho chi minh', NULL, '0667151172', '', NULL, NULL, NULL, '2018-05-15 13:59:39', '2018-05-20 06:13:07'),
	(39, 3, 1360000, 100000, -100000, 3, 1, 1, 0, 1360000, -1060000, 300000, 'Lê Văn Lanh', 'Quan 122', 'Ho chi minh', NULL, '0667151172', '', 'ok', NULL, NULL, '2018-05-18 13:59:31', '2018-09-03 17:17:09'),
	(74, 0, 20000, 10000, 0, 0, 0, 0, 0, 30000, 0, 30000, 'Nguyễn Tuấn', '南陽市長岡', 'fghfghfghfghfg', NULL, '09012345678', '', 'ok', NULL, NULL, '2018-09-03 17:00:37', '2018-09-03 17:14:55'),
	(75, 5, 45000, 20000, 0, 0, 0, 0, 0, 65000, 0, 65000, 'Bao Khanh', '12', 'TTh07', NULL, '09012345678', '', NULL, NULL, NULL, '2018-09-05 20:59:07', NULL),
	(76, 5, 15000, 20000, -10000, 0, 0, 0, 0, 122000, 0, -115000, 'Bao Khanh', '12', 'TTh07', NULL, '09012345678', '', NULL, NULL, NULL, '2018-09-06 18:59:25', NULL),
	(77, 5, 20000, 20000, -6000, 0, 0, 0, 0, 34000, 0, 34000, 'Bao Khanh', '12', 'TTh07', NULL, '09012345678', '', NULL, NULL, NULL, '2018-09-07 20:58:47', NULL),
	(78, 5, NULL, 20000, 0, 0, 0, 0, 0, 20000, 0, 20000, 'Bao Khanh', '12', 'TTh07', NULL, '09012345678', '', NULL, NULL, NULL, '2018-09-08 00:27:24', '2018-09-12 22:28:50'),
	(93, 3, 25000, 20000, -25000, 0, 0, 0, 0, 20000, 0, 20000, 'Lê Văn Lanh', 'Quan 12', 'Ho chi minh', NULL, '0667151172', '', NULL, 'paypal', NULL, '2018-09-23 12:41:07', NULL),
	(94, 3, 30000, 20000, -30000, 0, 0, 0, 0, 20000, 0, 20000, 'Lê Văn Lanh', 'Quan 12', 'Ho chi minh', NULL, '0667151172', '', NULL, 'paypal', NULL, '2018-09-23 12:44:03', NULL),
	(95, 3, 30000, 20000, -30000, 0, 0, 0, 0, 20000, 0, 20000, 'Lê Văn Lanh', 'Quan 12', 'Ho chi minh', NULL, '0667151172', '', NULL, 'paypal', NULL, '2018-09-23 12:46:05', NULL),
	(96, 3, 10000, 20000, -10000, 0, 0, 3, 0, 20000, -10000, 10000, 'ABC', 'Quan 12', 'Ho chi minh', NULL, '066715117', '', NULL, 'paypal', 'PAY-96U44306W49582248LOTSSOY', '2018-09-23 12:48:40', '2018-09-23 12:53:18'),
	(97, 0, 10000, 20000, 0, 0, 0, 0, 0, 30000, 0, 30000, 'H', 'H', 'H', NULL, '01634521235', '', NULL, 'cash', NULL, '2018-09-23 19:50:53', NULL),
	(98, 0, 25000, 20000, 0, 0, 0, 0, 0, 45000, 0, 45000, 'asda', 'sadasd', 'asdasdas', NULL, '0123456789', '', NULL, 'paypal', NULL, '2018-09-23 20:20:04', NULL),
	(99, 0, 15000, 20000, 0, 0, 0, 0, 0, 35000, 0, 35000, 'qưewqr', 'qrwqwr', 'qửqwr', NULL, '01654978214', '', NULL, 'paypal', NULL, '2018-09-23 21:43:24', NULL),
	(100, 0, 15000, 20000, 0, 0, 0, 0, 0, 35000, 0, 35000, 'rêtrt', 'rbb r', 'weter', NULL, '098765412', '', 'xzfvsf', 'paypal', NULL, '2018-09-23 21:48:17', NULL),
	(101, 0, 30000, 20000, 0, 0, 0, 0, 0, 50000, 0, 50000, 'abc', 'abc', 'abc', NULL, '0938475873', '', NULL, 'paypal', NULL, '2018-09-23 22:43:12', NULL),
	(102, 0, 15000, 20000, 0, 0, 0, 0, 0, 35000, 0, 35000, '12313', '123123', '123132', NULL, '01656657073', '', NULL, 'paypal', NULL, '2018-09-24 09:14:19', NULL),
	(103, 0, 100000, 20000, 0, 0, 0, 0, 0, 120000, 0, 120000, '12313', 'Mai Dịch', '123123', NULL, '01656657073', '', NULL, 'cash', NULL, '2018-09-24 09:15:16', NULL),
	(104, 0, 10000, 20000, 0, 0, 0, 0, 0, 30000, 0, 30000, '12313', 'Mai Dịch', '1212', NULL, '01656657073', '', NULL, 'paypal', NULL, '2018-09-24 09:15:56', NULL),
	(105, 0, 15000, 20000, 0, 0, 0, 0, 0, 35000, 0, 35000, 'ádas', 'đâsd', 'ádasd', NULL, '0123456789', '', 'ádasd', 'paypal', NULL, '2018-09-24 10:02:55', NULL),
	(106, 0, 15000, 20000, 0, 0, 0, 0, 0, 35000, 0, 35000, 'qrweqr', 'safsdafsd', 'safsfds', NULL, '0112353534253', '', NULL, 'cash', NULL, '2018-09-24 11:55:30', NULL),
	(107, 0, 25000, 20000, 0, 0, 0, 0, 0, 45000, 0, 45000, 'fgh', 'ỷty', 'ẻye', NULL, '076895684', '', NULL, 'paypal', NULL, '2018-09-24 15:59:29', NULL),
	(108, 0, 25000, 20000, 0, 0, 0, 0, 0, 45000, 0, 45000, 'aaa', 'aaaa', 'aaaaa', NULL, '0989653466', '', NULL, 'cash', NULL, '2018-09-25 08:41:44', NULL),
	(109, 0, 10000, 20000, 0, 0, 0, 0, 0, 30000, 0, 30000, 'viet', 'ha noi', 'ha noi', NULL, '0966694980', '', NULL, 'cash', NULL, '2018-09-25 18:52:30', NULL),
	(110, 0, 25000, 20000, 0, 0, 0, 0, 0, 45000, 0, 45000, 'vhh', '86/26 nguyen huy tuong', 'kjhkj', NULL, '0935147435', '', NULL, 'paypal', NULL, '2018-09-26 10:23:16', NULL),
	(111, 0, 15000, 20000, 0, 0, 0, 0, 0, 35000, 0, 35000, 'dũng', 'dũng', 'dũng', NULL, '094949494545', '', NULL, 'cash', NULL, '2018-09-28 09:37:05', NULL),
	(112, 0, 10000, 20000, 0, 0, 0, 0, 0, 30000, 0, 30000, 'rtada', '1231addasd', 'ádasdasd', NULL, '0166468236014', '', 'đấ', 'paypal', NULL, '2018-10-05 21:40:26', NULL),
	(113, 0, 10000, 20000, 0, 0, 0, 0, 0, 30000, 0, 30000, 'sdfsdf', '123', '123', NULL, '01234567890', '', NULL, 'paypal', NULL, '2018-10-07 22:14:36', NULL),
	(114, 0, 10000, 20000, 0, 0, 0, 0, 0, 30000, 0, 30000, 'Test', 'Le Duc Tho', 'vietnam', NULL, '0988606927', '', NULL, 'cash', NULL, '2018-10-08 09:31:50', NULL),
	(115, 0, 10000, 20000, 0, 0, 0, 0, 0, 30000, 0, 30000, 'ngnfg', 'sdhsdh', 'ndfnjdf', NULL, '0956756746', '', NULL, 'paypal', NULL, '2018-10-08 18:14:53', NULL),
	(116, 0, 15000, 20000, 0, 0, 0, 0, 0, 35000, 0, 35000, 'zxcas4asd', 'Ha noi ba dinh', 'ha noi', NULL, '0955071019', '', NULL, 'paypal', NULL, '2018-10-09 11:23:37', NULL),
	(117, 0, 15000, 20000, 0, 0, 0, 0, 0, 35000, 0, 35000, 'paul', 'Najjera', 'Kazo', NULL, '0785297660', '', 'Hi', 'cash', NULL, '2018-10-09 18:02:43', NULL),
	(118, 0, 10000, 20000, 0, 0, 0, 0, 0, 30000, 0, 30000, 'krissanawat kaewsanmuang', 'rhtrthrth', 'rthrth', NULL, '0843534534', '', NULL, 'paypal', NULL, '2018-10-17 06:42:22', NULL),
	(119, 7, 15000, 200000, 0, 0, 0, 0, 0, 215000, 0, 215000, 'trucnguyen', 'viet nam', 'viet nam', NULL, '0975236548', '', NULL, 'paypal', NULL, '2018-10-17 23:38:23', '2018-10-18 21:41:20'),
	(120, 0, 40000, 20000, 0, 0, 0, 0, 0, 60000, 0, 60000, 'dfd', 'sdfsdf', 'sdfsdfsdf', NULL, '09012345678', NULL, NULL, 'paypal', NULL, '2018-10-19 21:44:17', NULL),
	(121, 0, 15000, 20000, 0, 0, 0, 0, 0, 35000, 0, 35000, 'Hung', '南陽市長岡', 'fgdfg', NULL, '09012345678', NULL, 'dgdfgdfg', 'paypal', NULL, '2018-10-19 21:48:06', NULL),
	(122, 0, 10000, 20000, 0, 0, 0, 0, 0, 30000, 0, 30000, 'A', 'A', 'A', NULL, '01658843629', NULL, NULL, 'cash', NULL, '2018-10-21 16:44:08', NULL),
	(123, 0, 10000, 20000, 0, 0, 0, 0, 0, 30000, 0, 30000, 'dgdf', 'gdgsdg', 'serg', NULL, '090125468', NULL, NULL, 'cash', NULL, '2018-10-23 10:51:11', NULL),
	(124, 11, 30000, 20000, 0, 0, 0, 0, 0, 50000, 0, 50000, 'levantu', 'hn', 'hn', NULL, '0914731527', NULL, NULL, 'cash', NULL, '2018-10-23 13:21:06', '2018-11-09 00:11:11'),
	(125, 0, 75000, 20000, 0, 0, 0, 0, 0, 95000, 0, 95000, 'Rhdjb', 'Shdbfj', 'Djdb', NULL, '0973736483', NULL, NULL, 'cash', NULL, '2018-10-23 22:38:45', NULL),
	(126, 0, 60000, 20000, 0, 0, 0, 0, 0, 80000, 0, 80000, 'paul', 'kuku', 'dada', NULL, '0747140904', NULL, NULL, 'cash', NULL, '2018-10-31 12:50:30', NULL),
	(127, 0, 125000, 20000, 0, 0, 0, 0, 0, 145000, 0, 145000, '123123', '213123', '123123', NULL, '0987654321', NULL, NULL, 'cash', NULL, '2018-11-01 13:27:57', NULL),
	(128, 0, 115000, 20000, 0, 0, 0, 0, 0, 135000, 0, 135000, 'vinaenter', 'vinaenter', 'vinaenter', NULL, '0978735237', NULL, 'ccccccccccccccccc', 'cash', NULL, '2018-11-05 18:23:55', NULL),
	(129, 0, 15000, 20000, 0, 0, 0, 0, 0, 35000, 0, 35000, 'fasdfasfasdf', 'ádfasdfasdf', 'sdfafasdfasdfasdf', NULL, '01673419334', NULL, NULL, 'cash', NULL, '2018-11-05 18:35:28', NULL),
	(130, 5, 90000, 15000, -10000, 0, 1, 1, 0, 95000, -35000, 60000, 'Bao Khanh', '12/A3', 'TTh07', NULL, '09012345678', NULL, 'Comment', NULL, NULL, '2018-11-09 00:12:55', '2018-11-09 00:14:54'),
	(131, 0, 10000, 20000, 0, 0, 0, 0, 0, 30000, 0, 30000, 'quang', 'sdf', 'fsdf', NULL, '01667133042', NULL, NULL, 'cash', NULL, '2018-11-13 15:08:31', NULL),
	(132, 0, 15000, 20000, 0, 0, 0, 1, 0, 35000, 0, 35000, 'Hoang Ngoc Tu', '南陽市長岡', '南陽市長岡', NULL, '09012345678', NULL, 'dfg', 'paypal', 'PAY-66885678475620050LPWUANA', '2018-11-15 16:45:22', '2018-11-15 16:45:51'),
	(133, 0, 15000, 20000, 0, 0, 0, 0, 0, 35000, 0, 35000, 'Trang', 'HCM', 'HCM', NULL, '09978998768', 'tranghiazxx@gmail.com', 'OK', 'cash', NULL, '2018-11-18 08:45:32', NULL);
/*!40000 ALTER TABLE `shop_order` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_order_detail
DROP TABLE IF EXISTS `shop_order_detail`;
CREATE TABLE IF NOT EXISTS `shop_order_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(11) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT '0' COMMENT 'Price: price of product or type',
  `qty` int(11) DEFAULT '0',
  `total_price` int(11) DEFAULT '0',
  `sku` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Attributes',
  `option` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_order_detail: ~60 rows (approximately)
DELETE FROM `shop_order_detail`;
/*!40000 ALTER TABLE `shop_order_detail` DISABLE KEYS */;
INSERT INTO `shop_order_detail` (`id`, `order_id`, `product_id`, `name`, `price`, `qty`, `total_price`, `sku`, `type`, `option`, `created_at`, `updated_at`) VALUES
	(131, 74, 32, 'Dây Gia Nhiệt 12V 40W Máy In 3D', 20000, 1, 20000, '3D-HOTWIRE1240', '[]', NULL, '2018-09-03 17:00:37', NULL),
	(132, 75, 44, 'Clock FAN Hiển Thị Ảnh Nhiều Màu Sắc', 15000, 1, 15000, 'P10-IRG', '[]', NULL, '2018-09-05 20:59:07', NULL),
	(133, 75, 20, 'Clock FAN Hiển Thị Ảnh Nhiều Màu Sắc', 15000, 1, 15000, 'SS495A', '[]', NULL, '2018-09-05 20:59:07', NULL),
	(134, 75, 35, 'Clock FAN Hiển Thị Ảnh Nhiều Màu Sắc', 15000, 1, 15000, '3D-SENSOR-NTC 100K', '[]', NULL, '2018-09-05 20:59:07', NULL),
	(135, 76, 35, 'Clock FAN Hiển Thị Ảnh Nhiều Màu Sắc', 15000, 1, 15000, '3D-SENSOR-NTC 100K', '[]', NULL, '2018-09-06 18:59:25', NULL),
	(136, 77, 34, 'Clock FAN Hiển Thị Ảnh Nhiều Màu Sắc', 20000, 1, 20000, '3D-TEFTLON-W24', '[]', NULL, '2018-09-07 20:58:47', NULL),
	(152, 93, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-09-23 12:41:07', NULL),
	(153, 93, 48, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5UT', '[]', NULL, '2018-09-23 12:41:07', NULL),
	(154, 94, 48, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5UT', '[]', NULL, '2018-09-23 12:44:03', NULL),
	(155, 94, 47, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5U0', '[]', NULL, '2018-09-23 12:44:03', NULL),
	(156, 95, 48, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5UT', '[]', NULL, '2018-09-23 12:46:05', NULL),
	(157, 95, 47, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5U0', '[]', NULL, '2018-09-23 12:46:05', NULL),
	(158, 96, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-09-23 12:48:40', NULL),
	(159, 97, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-09-23 19:50:53', NULL),
	(160, 98, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-09-23 20:20:04', NULL),
	(161, 98, 46, 'Easy Polo Black Edition', 15000, 1, 15000, 'P2.5-I', '[]', NULL, '2018-09-23 20:20:04', NULL),
	(162, 99, 48, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5UT', '[]', NULL, '2018-09-23 21:43:24', NULL),
	(163, 100, 40, 'Easy Polo Black Edition', 15000, 1, 15000, 'P10-IR', '[]', NULL, '2018-09-23 21:48:17', NULL),
	(164, 101, 45, 'Easy Polo Black Edition', 15000, 2, 30000, 'LFF', '[]', NULL, '2018-09-23 22:43:12', NULL),
	(165, 102, 45, 'Easy Polo Black Edition', 15000, 1, 15000, 'LFF', '[]', NULL, '2018-09-24 09:14:19', NULL),
	(166, 103, 37, 'Easy Polo Black Edition', 100000, 1, 100000, 'ARDUINO-NANO', '[]', NULL, '2018-09-24 09:15:16', NULL),
	(167, 104, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-09-24 09:15:56', NULL),
	(168, 105, 45, 'Easy Polo Black Edition', 15000, 1, 15000, 'LFF', '[]', NULL, '2018-09-24 10:02:55', NULL),
	(169, 106, 45, 'Easy Polo Black Edition', 15000, 1, 15000, 'LFF', '[]', NULL, '2018-09-24 11:55:30', NULL),
	(170, 107, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-09-24 15:59:29', NULL),
	(171, 107, 48, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5UT', '[]', NULL, '2018-09-24 15:59:29', NULL),
	(172, 108, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-09-25 08:41:44', NULL),
	(173, 108, 45, 'Easy Polo Black Edition', 15000, 1, 15000, 'LFF', '[]', NULL, '2018-09-25 08:41:44', NULL),
	(174, 109, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-09-25 18:52:30', NULL),
	(175, 110, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-09-26 10:23:16', NULL),
	(176, 110, 48, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5UT', '[]', NULL, '2018-09-26 10:23:16', NULL),
	(177, 111, 48, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5UT', '[]', NULL, '2018-09-28 09:37:05', NULL),
	(178, 112, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-10-05 21:40:26', NULL),
	(179, 113, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-10-07 22:14:36', NULL),
	(180, 114, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-10-08 09:31:50', NULL),
	(181, 115, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-10-08 18:14:53', NULL),
	(182, 116, 48, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5UT', '[]', NULL, '2018-10-09 11:23:37', NULL),
	(183, 117, 48, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5UT', '[]', NULL, '2018-10-09 18:02:43', NULL),
	(184, 118, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-10-17 06:42:22', NULL),
	(185, 119, 41, 'Easy Polo Black Edition', 15000, 1, 15000, 'P10-IG', '[]', NULL, '2018-10-17 23:38:23', NULL),
	(186, 120, 6, 'Easy Polo Black Edition', 40000, 1, 40000, 'CLOCKFAN2', '[]', NULL, '2018-10-19 21:44:17', NULL),
	(187, 121, 48, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5UT', '[]', NULL, '2018-10-19 21:48:06', NULL),
	(188, 122, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-10-21 16:44:08', NULL),
	(189, 123, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-10-23 10:51:11', NULL),
	(190, 124, 49, 'Easy Polo Black Edition', 10000, 3, 30000, 'BX-5UTbnv', '[]', NULL, '2018-10-23 13:21:06', NULL),
	(191, 125, 47, 'Easy Polo Black Edition', 15000, 2, 30000, 'BX-5U0', '[]', NULL, '2018-10-23 22:38:45', NULL),
	(192, 125, 45, 'Easy Polo Black Edition', 15000, 1, 15000, 'LFF', '[]', NULL, '2018-10-23 22:38:45', NULL),
	(193, 125, 48, 'Easy Polo Black Edition', 15000, 2, 30000, 'BX-5UT', '[]', NULL, '2018-10-23 22:38:45', NULL),
	(194, 126, 45, 'Easy Polo Black Edition', 15000, 4, 60000, 'LFF', '[]', NULL, '2018-10-31 12:50:30', NULL),
	(195, 127, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-11-01 13:27:57', NULL),
	(196, 127, 47, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5U0', '[]', NULL, '2018-11-01 13:27:57', NULL),
	(197, 127, 12, 'Easy Polo Black Edition', 100000, 1, 100000, '3DHLFD', '[]', NULL, '2018-11-01 13:27:57', NULL),
	(198, 128, 49, 'Easy Polo Black Edition', 10000, 10, 100000, 'BX-5UTbnv', '[]', NULL, '2018-11-05 18:23:55', NULL),
	(199, 128, 44, 'Easy Polo Black Edition', 15000, 1, 15000, 'P10-IRG', '[]', NULL, '2018-11-05 18:23:55', NULL),
	(200, 129, 45, 'Easy Polo Black Edition', 15000, 1, 15000, 'LFF', '[]', NULL, '2018-11-05 18:35:28', NULL),
	(201, 130, 32, 'Easy Polo Black Edition', 20000, 2, 40000, '3D-HOTWIRE1240', NULL, NULL, NULL, NULL),
	(202, 130, 31, 'Easy Polo Black Edition', 10000, 4, 40000, '3D-TEFLONLOCK-M10', NULL, NULL, NULL, NULL),
	(203, 130, 29, 'Easy Polo Black Edition', 10000, 1, 10000, '3D-TEFLONLOCK', NULL, NULL, NULL, NULL),
	(204, 131, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-11-13 15:08:31', NULL),
	(205, 132, 48, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5UT', '[]', NULL, '2018-11-15 16:45:22', NULL),
	(206, 133, 48, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5UT', '[]', NULL, '2018-11-18 08:45:32', NULL);
/*!40000 ALTER TABLE `shop_order_detail` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_order_history
DROP TABLE IF EXISTS `shop_order_history`;
CREATE TABLE IF NOT EXISTS `shop_order_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `add_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_order_history: ~69 rows (approximately)
DELETE FROM `shop_order_history`;
/*!40000 ALTER TABLE `shop_order_history` DISABLE KEYS */;
INSERT INTO `shop_order_history` (`id`, `order_id`, `content`, `admin_id`, `user_id`, `add_date`) VALUES
	(40, 74, 'New order', 0, 0, '2018-09-03 17:00:37'),
	(41, 74, 'Thay đổi <b>comment</b> từ <span style="color:blue">\'\'</span> thành <span style="color:red">\'ok\'</span>', 1, 0, '2018-09-03 17:14:49'),
	(42, 74, 'Thay đổi <b>shipping</b> từ <span style="color:blue">\'\'</span> thành <span style="color:red">\'10000\'</span>', 1, 0, '2018-09-03 17:14:55'),
	(43, 39, 'Thay đổi <b>status</b> từ <span style="color:blue">\'4\'</span> thành <span style="color:red">\'1\'</span>', 1, 0, '2018-09-03 17:17:00'),
	(44, 39, 'Thay đổi <b>received</b> từ <span style="color:blue">\'\'</span> thành <span style="color:red">\'-1060000\'</span>', 1, 0, '2018-09-03 17:17:09'),
	(45, 75, 'New order', 0, 5, '2018-09-05 20:59:07'),
	(46, 76, 'New order', 0, 5, '2018-09-06 18:59:25'),
	(47, 77, 'New order', 0, 5, '2018-09-07 20:58:47'),
	(48, 78, 'New order', 0, 5, '2018-09-08 00:27:24'),
	(49, 78, 'Xóa sản phẩm pID#137', 1, 0, '2018-09-12 22:28:50'),
	(71, 93, 'New order', 0, 3, '2018-09-23 12:41:07'),
	(72, 94, 'New order', 0, 3, '2018-09-23 12:44:03'),
	(73, 95, 'New order', 0, 3, '2018-09-23 12:46:05'),
	(74, 96, 'New order', 0, 3, '2018-09-23 12:48:40'),
	(75, 96, 'Transaction PAY-96U44306W49582248LOTSSOY', 0, 3, '2018-09-23 12:49:20'),
	(76, 96, 'Thay đổi <b>status</b> từ <span style="color:blue">\'0\'</span> thành <span style="color:red">\'1\'</span>', 1, 0, '2018-09-23 12:51:14'),
	(77, 96, 'Thay đổi <b>status</b> từ <span style="color:blue">\'1\'</span> thành <span style="color:red">\'3\'</span>', 1, 0, '2018-09-23 12:51:21'),
	(78, 96, 'Thay đổi <b>phone</b> từ <span style="color:blue">\'0667151172\'</span> thành <span style="color:red">\'066715117\'</span>', 1, 0, '2018-09-23 12:51:59'),
	(79, 96, 'Thay đổi <b>toname</b> từ <span style="color:blue">\'Lê Văn Lanh\'</span> thành <span style="color:red">\'LLanh\'</span>', 1, 0, '2018-09-23 12:52:05'),
	(80, 96, 'Thay đổi <b>toname</b> từ <span style="color:blue">\'LLanh\'</span> thành <span style="color:red">\'Lê Văn\'</span>', 1, 0, '2018-09-23 12:52:11'),
	(81, 96, 'Thay đổi <b>toname</b> từ <span style="color:blue">\'Lê Văn\'</span> thành <span style="color:red">\'ABC\'</span>', 1, 0, '2018-09-23 12:52:23'),
	(82, 96, 'Thay đổi <b>received</b> từ <span style="color:blue">\'\'</span> thành <span style="color:red">\'-10000\'</span>', 1, 0, '2018-09-23 12:53:18'),
	(83, 97, 'New order', 0, 0, '2018-09-23 19:50:53'),
	(84, 98, 'New order', 0, 0, '2018-09-23 20:20:04'),
	(85, 99, 'New order', 0, 0, '2018-09-23 21:43:24'),
	(86, 100, 'New order', 0, 0, '2018-09-23 21:48:17'),
	(87, 101, 'New order', 0, 0, '2018-09-23 22:43:12'),
	(88, 102, 'New order', 0, 0, '2018-09-24 09:14:19'),
	(89, 103, 'New order', 0, 0, '2018-09-24 09:15:16'),
	(90, 104, 'New order', 0, 0, '2018-09-24 09:15:56'),
	(91, 105, 'New order', 0, 0, '2018-09-24 10:02:55'),
	(92, 106, 'New order', 0, 0, '2018-09-24 11:55:30'),
	(93, 107, 'New order', 0, 0, '2018-09-24 15:59:29'),
	(94, 108, 'New order', 0, 0, '2018-09-25 08:41:44'),
	(95, 109, 'New order', 0, 0, '2018-09-25 18:52:30'),
	(96, 110, 'New order', 0, 0, '2018-09-26 10:23:16'),
	(97, 111, 'New order', 0, 0, '2018-09-28 09:37:05'),
	(98, 112, 'New order', 0, 0, '2018-10-05 21:40:26'),
	(99, 113, 'New order', 0, 0, '2018-10-07 22:14:36'),
	(100, 114, 'New order', 0, 0, '2018-10-08 09:31:51'),
	(101, 115, 'New order', 0, 0, '2018-10-08 18:14:53'),
	(102, 116, 'New order', 0, 0, '2018-10-09 11:23:37'),
	(103, 117, 'New order', 0, 0, '2018-10-09 18:02:43'),
	(104, 118, 'New order', 0, 0, '2018-10-17 06:42:22'),
	(105, 119, 'New order', 0, 7, '2018-10-17 23:38:23'),
	(106, 119, 'Thay đổi <b>shipping</b> từ <span style="color:blue">\'\'</span> thành <span style="color:red">\'200000\'</span>', 1, 0, '2018-10-18 21:41:20'),
	(107, 120, 'New order', 0, 0, '2018-10-19 21:44:17'),
	(108, 121, 'New order', 0, 0, '2018-10-19 21:48:06'),
	(109, 122, 'New order', 0, 0, '2018-10-21 16:44:08'),
	(110, 123, 'New order', 0, 0, '2018-10-23 10:51:11'),
	(111, 124, 'New order', 0, 11, '2018-10-23 13:21:06'),
	(112, 125, 'New order', 0, 0, '2018-10-23 22:38:45'),
	(113, 126, 'New order', 0, 0, '2018-10-31 12:50:30'),
	(114, 127, 'New order', 0, 0, '2018-11-01 13:27:57'),
	(115, 128, 'New order', 0, 0, '2018-11-05 18:23:55'),
	(116, 129, 'New order', 0, 0, '2018-11-05 18:35:28'),
	(117, 124, 'Change <b>shipping</b> from <span style="color:blue">\'\'</span> to <span style="color:red">\'200000\'</span>', 1, 0, '2018-11-09 00:11:08'),
	(118, 124, 'Change <b>shipping</b> from <span style="color:blue">\'\'</span> to <span style="color:red">\'20000\'</span>', 1, 0, '2018-11-09 00:11:11'),
	(119, 130, 'Add product (Easy Polo Black Edition)', 1, 0, '2018-11-09 00:13:09'),
	(120, 130, 'Add product (Easy Polo Black Edition)', 1, 0, '2018-11-09 00:13:16'),
	(121, 130, 'Add product (Easy Polo Black Edition)', 1, 0, '2018-11-09 00:13:23'),
	(122, 130, 'Change <b>shipping</b> from <span style="color:blue">\'\'</span> to <span style="color:red">\'15000\'</span>', 1, 0, '2018-11-09 00:13:39'),
	(123, 130, 'Change <b>discount</b> from <span style="color:blue">\'\'</span> to <span style="color:red">\'-10000\'</span>', 1, 0, '2018-11-09 00:13:47'),
	(124, 130, 'Change <b>received</b> from <span style="color:blue">\'\'</span> to <span style="color:red">\'-35000\'</span>', 1, 0, '2018-11-09 00:13:56'),
	(125, 130, 'Change <b>shipping_status</b> from <span style="color:blue">\'0\'</span> to <span style="color:red">\'1\'</span>', 1, 0, '2018-11-09 00:14:06'),
	(126, 130, 'Change <b>status</b> from <span style="color:blue">\'0\'</span> to <span style="color:red">\'1\'</span>', 1, 0, '2018-11-09 00:14:11'),
	(127, 130, 'Change <b>address1</b> from <span style="color:blue">\'12\'</span> to <span style="color:red">\'12/A3\'</span>', 1, 0, '2018-11-09 00:14:54'),
	(128, 131, 'New order', 0, 0, '2018-11-13 15:08:31'),
	(129, 132, 'New order', 0, 0, '2018-11-15 16:45:22'),
	(130, 132, 'Transaction PAY-66885678475620050LPWUANA', 0, 0, '2018-11-15 16:45:51'),
	(131, 133, 'New order', 0, 0, '2018-11-18 08:45:32');
/*!40000 ALTER TABLE `shop_order_history` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_order_status
DROP TABLE IF EXISTS `shop_order_status`;
CREATE TABLE IF NOT EXISTS `shop_order_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_order_status: ~6 rows (approximately)
DELETE FROM `shop_order_status`;
/*!40000 ALTER TABLE `shop_order_status` DISABLE KEYS */;
INSERT INTO `shop_order_status` (`id`, `name`) VALUES
	(0, 'New'),
	(1, 'Processing'),
	(2, 'Hold'),
	(3, 'Canceled'),
	(4, 'Done'),
	(5, 'Failed');
/*!40000 ALTER TABLE `shop_order_status` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_order_total
DROP TABLE IF EXISTS `shop_order_total`;
CREATE TABLE IF NOT EXISTS `shop_order_total` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=514 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_order_total: ~305 rows (approximately)
DELETE FROM `shop_order_total`;
/*!40000 ALTER TABLE `shop_order_total` DISABLE KEYS */;
INSERT INTO `shop_order_total` (`id`, `order_id`, `title`, `code`, `value`, `sort`, `created_at`, `updated_at`) VALUES
	(34, 38, 'Tổng tiền hàng', 'subtotal', 485000, 1, '2018-05-15 13:59:39', '2018-05-20 06:12:46'),
	(35, 38, 'Phí giao hàng', 'shipping', 15, 10, '2018-05-15 13:59:39', '2018-05-15 14:03:52'),
	(36, 38, 'Giảm giá', 'discount', -15, 20, '2018-05-15 13:59:39', '2018-05-15 14:03:34'),
	(37, 38, 'Đã thanh toán', 'received', -485000, 200, '2018-05-15 13:59:39', '2018-05-20 06:12:58'),
	(38, 38, 'Tổng tiền cần thanh toán', 'total', 485000, 100, '2018-05-15 13:59:39', '2018-05-20 06:12:46'),
	(39, 39, 'Tổng tiền hàng', 'subtotal', 1360000, 1, '2018-05-18 13:59:31', '2018-05-20 05:59:45'),
	(40, 39, 'Phí giao hàng', 'shipping', 100000, 10, '2018-05-18 13:59:31', '2018-05-20 06:07:14'),
	(41, 39, 'Giảm giá', 'discount', -100000, 20, '2018-05-18 13:59:31', '2018-05-20 04:29:42'),
	(42, 39, 'Tổng tiền cần thanh toán', 'total', 1360000, 100, '2018-05-18 13:59:31', '2018-05-20 06:07:14'),
	(43, 39, 'Đã thanh toán', 'received', -1060000, 200, '2018-05-18 13:59:31', '2018-09-03 17:17:09'),
	(214, 74, 'Tổng tiền hàng', 'subtotal', 20000, 1, '2018-09-03 17:00:37', NULL),
	(215, 74, 'Phí giao hàng', 'shipping', 10000, 10, '2018-09-03 17:00:37', '2018-09-03 17:14:55'),
	(216, 74, 'Giảm giá', 'discount', 0, 20, '2018-09-03 17:00:37', NULL),
	(217, 74, 'Tổng tiền cần thanh toán', 'total', 30000, 100, '2018-09-03 17:00:37', '2018-09-03 17:14:55'),
	(218, 74, 'Đã thanh toán', 'received', 0, 200, '2018-09-03 17:00:37', NULL),
	(219, 75, 'Tổng tiền hàng', 'subtotal', 45000, 1, '2018-09-05 20:59:07', NULL),
	(220, 75, 'Phí giao hàng', 'shipping', 20000, 10, '2018-09-05 20:59:07', NULL),
	(221, 75, 'Giảm giá', 'discount', 0, 20, '2018-09-05 20:59:07', NULL),
	(222, 75, 'Tổng tiền cần thanh toán', 'total', 65000, 100, '2018-09-05 20:59:07', NULL),
	(223, 75, 'Đã thanh toán', 'received', 0, 200, '2018-09-05 20:59:07', NULL),
	(224, 76, 'Tổng tiền hàng', 'subtotal', 15000, 1, '2018-09-06 18:59:25', NULL),
	(225, 76, 'Phí giao hàng', 'shipping', 20000, 10, '2018-09-06 18:59:25', NULL),
	(226, 76, 'Giảm giá 150,000VNĐ (<b>Code:</b> PAA-LLK04)', 'discount', -150000, 20, '2018-09-06 18:59:25', NULL),
	(227, 76, 'Tổng tiền cần thanh toán', 'total', -115000, 100, '2018-09-06 18:59:25', NULL),
	(228, 76, 'Đã thanh toán', 'received', 0, 200, '2018-09-06 18:59:25', NULL),
	(229, 77, 'Tổng tiền hàng', 'subtotal', 20000, 1, '2018-09-07 20:58:47', NULL),
	(230, 77, 'Phí giao hàng', 'shipping', 20000, 10, '2018-09-07 20:58:47', NULL),
	(231, 77, 'Giảm tối đa 30% (<b>Code:</b> KKB3-KLLA)', 'discount', -6000, 20, '2018-09-07 20:58:47', NULL),
	(232, 77, 'Tổng tiền cần thanh toán', 'total', 34000, 100, '2018-09-07 20:58:47', NULL),
	(233, 77, 'Đã thanh toán', 'received', 0, 200, '2018-09-07 20:58:47', NULL),
	(234, 78, 'Tổng tiền hàng', 'subtotal', 20000, 1, '2018-09-08 00:27:24', NULL),
	(235, 78, 'Phí giao hàng', 'shipping', 20000, 10, '2018-09-08 00:27:24', NULL),
	(236, 78, 'Giảm giá', 'discount', 0, 20, '2018-09-08 00:27:24', NULL),
	(237, 78, 'Tổng tiền cần thanh toán', 'total', 20000, 100, '2018-09-08 00:27:24', '2018-09-12 22:28:50'),
	(238, 78, 'Đã thanh toán', 'received', 0, 200, '2018-09-08 00:27:24', NULL),
	(239, 79, 'Tổng tiền hàng', 'subtotal', 15000, 1, '2018-09-23 08:54:19', NULL),
	(240, 79, 'Phí giao hàng', 'shipping', 20000, 10, '2018-09-23 08:54:19', NULL),
	(241, 79, 'Giảm giá', 'discount', 0, 20, '2018-09-23 08:54:19', NULL),
	(242, 79, 'Tổng tiền cần thanh toán', 'total', 35000, 100, '2018-09-23 08:54:19', NULL),
	(243, 79, 'Đã thanh toán', 'received', 0, 200, '2018-09-23 08:54:19', NULL),
	(244, 80, 'Tổng tiền hàng', 'subtotal', 15000, 1, '2018-09-23 09:34:17', NULL),
	(245, 80, 'Phí giao hàng', 'shipping', 20000, 10, '2018-09-23 09:34:17', NULL),
	(246, 80, 'Giảm giá', 'discount', 0, 20, '2018-09-23 09:34:17', NULL),
	(247, 80, 'Tổng tiền cần thanh toán', 'total', 35000, 100, '2018-09-23 09:34:17', NULL),
	(248, 80, 'Đã thanh toán', 'received', 0, 200, '2018-09-23 09:34:17', NULL),
	(249, 81, 'Tổng tiền hàng', 'subtotal', 10000, 1, '2018-09-23 09:34:47', NULL),
	(250, 81, 'Phí giao hàng', 'shipping', 20000, 10, '2018-09-23 09:34:47', NULL),
	(251, 81, 'Giảm giá', 'discount', 0, 20, '2018-09-23 09:34:47', NULL),
	(252, 81, 'Tổng tiền cần thanh toán', 'total', 30000, 100, '2018-09-23 09:34:47', NULL),
	(253, 81, 'Đã thanh toán', 'received', 0, 200, '2018-09-23 09:34:47', NULL),
	(254, 82, 'Sub total', 'subtotal', 25000, 1, '2018-09-23 11:57:34', NULL),
	(255, 82, 'Shipping', 'shipping', 20000, 10, '2018-09-23 11:57:34', NULL),
	(256, 82, 'Discount', 'discount', 0, 20, '2018-09-23 11:57:34', NULL),
	(257, 82, 'Total', 'total', 45000, 100, '2018-09-23 11:57:34', NULL),
	(258, 82, 'Received', 'received', 0, 200, '2018-09-23 11:57:34', NULL),
	(259, 83, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 11:59:49', NULL),
	(260, 83, 'Shipping', 'shipping', 20000, 10, '2018-09-23 11:59:49', NULL),
	(261, 83, 'Discount', 'discount', 0, 20, '2018-09-23 11:59:49', NULL),
	(262, 83, 'Total', 'total', 35000, 100, '2018-09-23 11:59:49', NULL),
	(263, 83, 'Received', 'received', 0, 200, '2018-09-23 11:59:49', NULL),
	(264, 84, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 12:00:51', NULL),
	(265, 84, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:00:51', NULL),
	(266, 84, 'Discount', 'discount', 0, 20, '2018-09-23 12:00:51', NULL),
	(267, 84, 'Total', 'total', 35000, 100, '2018-09-23 12:00:51', NULL),
	(268, 84, 'Received', 'received', 0, 200, '2018-09-23 12:00:51', NULL),
	(269, 85, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 12:09:37', NULL),
	(270, 85, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:09:37', NULL),
	(271, 85, 'Discount', 'discount', 0, 20, '2018-09-23 12:09:37', NULL),
	(272, 85, 'Total', 'total', 35000, 100, '2018-09-23 12:09:37', NULL),
	(273, 85, 'Received', 'received', 0, 200, '2018-09-23 12:09:37', NULL),
	(274, 86, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 12:11:27', NULL),
	(275, 86, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:11:27', NULL),
	(276, 86, 'Discount', 'discount', 0, 20, '2018-09-23 12:11:27', NULL),
	(277, 86, 'Total', 'total', 35000, 100, '2018-09-23 12:11:27', NULL),
	(278, 86, 'Received', 'received', 0, 200, '2018-09-23 12:11:27', NULL),
	(279, 87, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 12:15:40', NULL),
	(280, 87, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:15:40', NULL),
	(281, 87, 'Discount', 'discount', 0, 20, '2018-09-23 12:15:40', NULL),
	(282, 87, 'Total', 'total', 35000, 100, '2018-09-23 12:15:40', NULL),
	(283, 87, 'Received', 'received', 0, 200, '2018-09-23 12:15:40', NULL),
	(284, 88, 'Sub total', 'subtotal', 10000, 1, '2018-09-23 12:18:08', NULL),
	(285, 88, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:18:08', NULL),
	(286, 88, 'Discount', 'discount', 0, 20, '2018-09-23 12:18:08', NULL),
	(287, 88, 'Total', 'total', 30000, 100, '2018-09-23 12:18:08', NULL),
	(288, 88, 'Received', 'received', 0, 200, '2018-09-23 12:18:08', NULL),
	(289, 89, 'Sub total', 'subtotal', 10000, 1, '2018-09-23 12:21:04', NULL),
	(290, 89, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:21:04', NULL),
	(291, 89, 'Discount', 'discount', 0, 20, '2018-09-23 12:21:04', NULL),
	(292, 89, 'Total', 'total', 30000, 100, '2018-09-23 12:21:04', NULL),
	(293, 89, 'Received', 'received', 0, 200, '2018-09-23 12:21:04', NULL),
	(294, 90, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 12:26:19', NULL),
	(295, 90, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:26:19', NULL),
	(296, 90, 'Discount', 'discount', 0, 20, '2018-09-23 12:26:19', NULL),
	(297, 90, 'Total', 'total', 35000, 100, '2018-09-23 12:26:19', NULL),
	(298, 90, 'Received', 'received', 0, 200, '2018-09-23 12:26:19', NULL),
	(299, 91, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 12:29:11', NULL),
	(300, 91, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:29:11', NULL),
	(301, 91, 'Discount', 'discount', 0, 20, '2018-09-23 12:29:11', NULL),
	(302, 91, 'Total', 'total', 35000, 100, '2018-09-23 12:29:11', NULL),
	(303, 91, 'Received', 'received', 0, 200, '2018-09-23 12:29:11', NULL),
	(304, 92, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 12:31:28', NULL),
	(305, 92, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:31:28', NULL),
	(306, 92, 'Discount', 'discount', 0, 20, '2018-09-23 12:31:28', NULL),
	(307, 92, 'Total', 'total', 35000, 100, '2018-09-23 12:31:28', NULL),
	(308, 92, 'Received', 'received', 0, 200, '2018-09-23 12:31:28', NULL),
	(309, 93, 'Sub total', 'subtotal', 25000, 1, '2018-09-23 12:41:07', NULL),
	(310, 93, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:41:07', NULL),
	(311, 93, 'Giảm tối đa 219,999VNĐ (<b>Code:</b> PAA-LLK07)', 'discount', -25000, 20, '2018-09-23 12:41:07', NULL),
	(312, 93, 'Total', 'total', 20000, 100, '2018-09-23 12:41:07', NULL),
	(313, 93, 'Received', 'received', 0, 200, '2018-09-23 12:41:07', NULL),
	(314, 94, 'Sub total', 'subtotal', 30000, 1, '2018-09-23 12:44:03', NULL),
	(315, 94, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:44:03', NULL),
	(316, 94, 'Giảm tối đa 219,999VNĐ (<b>Code:</b> PAA-LLK08)', 'discount', -30000, 20, '2018-09-23 12:44:03', NULL),
	(317, 94, 'Total', 'total', 20000, 100, '2018-09-23 12:44:03', NULL),
	(318, 94, 'Received', 'received', 0, 200, '2018-09-23 12:44:03', NULL),
	(319, 95, 'Sub total', 'subtotal', 30000, 1, '2018-09-23 12:46:05', NULL),
	(320, 95, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:46:05', NULL),
	(321, 95, 'Giảm tối đa 219,999VNĐ (<b>Code:</b> PAA-LLK09)', 'discount', -30000, 20, '2018-09-23 12:46:05', NULL),
	(322, 95, 'Total', 'total', 20000, 100, '2018-09-23 12:46:05', NULL),
	(323, 95, 'Received', 'received', 0, 200, '2018-09-23 12:46:05', NULL),
	(324, 96, 'Sub total', 'subtotal', 10000, 1, '2018-09-23 12:48:40', NULL),
	(325, 96, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:48:40', NULL),
	(326, 96, 'Giảm tối đa 219,999VNĐ (<b>Code:</b> PAA-LLK010)', 'discount', -10000, 20, '2018-09-23 12:48:40', NULL),
	(327, 96, 'Total', 'total', 20000, 100, '2018-09-23 12:48:40', NULL),
	(328, 96, 'Received', 'received', -10000, 200, '2018-09-23 12:48:40', '2018-09-23 12:53:18'),
	(329, 97, 'Sub total', 'subtotal', 10000, 1, '2018-09-23 19:50:53', NULL),
	(330, 97, 'Shipping', 'shipping', 20000, 10, '2018-09-23 19:50:53', NULL),
	(331, 97, 'Discount', 'discount', 0, 20, '2018-09-23 19:50:53', NULL),
	(332, 97, 'Total', 'total', 30000, 100, '2018-09-23 19:50:53', NULL),
	(333, 97, 'Received', 'received', 0, 200, '2018-09-23 19:50:53', NULL),
	(334, 98, 'Sub total', 'subtotal', 25000, 1, '2018-09-23 20:20:04', NULL),
	(335, 98, 'Shipping', 'shipping', 20000, 10, '2018-09-23 20:20:04', NULL),
	(336, 98, 'Discount', 'discount', 0, 20, '2018-09-23 20:20:04', NULL),
	(337, 98, 'Total', 'total', 45000, 100, '2018-09-23 20:20:04', NULL),
	(338, 98, 'Received', 'received', 0, 200, '2018-09-23 20:20:04', NULL),
	(339, 99, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 21:43:24', NULL),
	(340, 99, 'Shipping', 'shipping', 20000, 10, '2018-09-23 21:43:24', NULL),
	(341, 99, 'Discount', 'discount', 0, 20, '2018-09-23 21:43:24', NULL),
	(342, 99, 'Total', 'total', 35000, 100, '2018-09-23 21:43:24', NULL),
	(343, 99, 'Received', 'received', 0, 200, '2018-09-23 21:43:24', NULL),
	(344, 100, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 21:48:17', NULL),
	(345, 100, 'Shipping', 'shipping', 20000, 10, '2018-09-23 21:48:17', NULL),
	(346, 100, 'Discount', 'discount', 0, 20, '2018-09-23 21:48:17', NULL),
	(347, 100, 'Total', 'total', 35000, 100, '2018-09-23 21:48:17', NULL),
	(348, 100, 'Received', 'received', 0, 200, '2018-09-23 21:48:17', NULL),
	(349, 101, 'Sub total', 'subtotal', 30000, 1, '2018-09-23 22:43:12', NULL),
	(350, 101, 'Shipping', 'shipping', 20000, 10, '2018-09-23 22:43:12', NULL),
	(351, 101, 'Discount', 'discount', 0, 20, '2018-09-23 22:43:12', NULL),
	(352, 101, 'Total', 'total', 50000, 100, '2018-09-23 22:43:12', NULL),
	(353, 101, 'Received', 'received', 0, 200, '2018-09-23 22:43:12', NULL),
	(354, 102, 'Sub total', 'subtotal', 15000, 1, '2018-09-24 09:14:19', NULL),
	(355, 102, 'Shipping', 'shipping', 20000, 10, '2018-09-24 09:14:19', NULL),
	(356, 102, 'Discount', 'discount', 0, 20, '2018-09-24 09:14:19', NULL),
	(357, 102, 'Total', 'total', 35000, 100, '2018-09-24 09:14:19', NULL),
	(358, 102, 'Received', 'received', 0, 200, '2018-09-24 09:14:19', NULL),
	(359, 103, 'Sub total', 'subtotal', 100000, 1, '2018-09-24 09:15:16', NULL),
	(360, 103, 'Shipping', 'shipping', 20000, 10, '2018-09-24 09:15:16', NULL),
	(361, 103, 'Discount', 'discount', 0, 20, '2018-09-24 09:15:16', NULL),
	(362, 103, 'Total', 'total', 120000, 100, '2018-09-24 09:15:16', NULL),
	(363, 103, 'Received', 'received', 0, 200, '2018-09-24 09:15:16', NULL),
	(364, 104, 'Sub total', 'subtotal', 10000, 1, '2018-09-24 09:15:56', NULL),
	(365, 104, 'Shipping', 'shipping', 20000, 10, '2018-09-24 09:15:56', NULL),
	(366, 104, 'Discount', 'discount', 0, 20, '2018-09-24 09:15:56', NULL),
	(367, 104, 'Total', 'total', 30000, 100, '2018-09-24 09:15:56', NULL),
	(368, 104, 'Received', 'received', 0, 200, '2018-09-24 09:15:56', NULL),
	(369, 105, 'Sub total', 'subtotal', 15000, 1, '2018-09-24 10:02:55', NULL),
	(370, 105, 'Shipping', 'shipping', 20000, 10, '2018-09-24 10:02:55', NULL),
	(371, 105, 'Discount', 'discount', 0, 20, '2018-09-24 10:02:55', NULL),
	(372, 105, 'Total', 'total', 35000, 100, '2018-09-24 10:02:55', NULL),
	(373, 105, 'Received', 'received', 0, 200, '2018-09-24 10:02:55', NULL),
	(374, 106, 'Sub total', 'subtotal', 15000, 1, '2018-09-24 11:55:30', NULL),
	(375, 106, 'Shipping', 'shipping', 20000, 10, '2018-09-24 11:55:30', NULL),
	(376, 106, 'Discount', 'discount', 0, 20, '2018-09-24 11:55:30', NULL),
	(377, 106, 'Total', 'total', 35000, 100, '2018-09-24 11:55:30', NULL),
	(378, 106, 'Received', 'received', 0, 200, '2018-09-24 11:55:30', NULL),
	(379, 107, 'Sub total', 'subtotal', 25000, 1, '2018-09-24 15:59:29', NULL),
	(380, 107, 'Shipping', 'shipping', 20000, 10, '2018-09-24 15:59:29', NULL),
	(381, 107, 'Discount', 'discount', 0, 20, '2018-09-24 15:59:29', NULL),
	(382, 107, 'Total', 'total', 45000, 100, '2018-09-24 15:59:29', NULL),
	(383, 107, 'Received', 'received', 0, 200, '2018-09-24 15:59:29', NULL),
	(384, 108, 'Sub total', 'subtotal', 25000, 1, '2018-09-25 08:41:44', NULL),
	(385, 108, 'Shipping', 'shipping', 20000, 10, '2018-09-25 08:41:44', NULL),
	(386, 108, 'Discount', 'discount', 0, 20, '2018-09-25 08:41:44', NULL),
	(387, 108, 'Total', 'total', 45000, 100, '2018-09-25 08:41:44', NULL),
	(388, 108, 'Received', 'received', 0, 200, '2018-09-25 08:41:44', NULL),
	(389, 109, 'Sub total', 'subtotal', 10000, 1, '2018-09-25 18:52:30', NULL),
	(390, 109, 'Shipping', 'shipping', 20000, 10, '2018-09-25 18:52:30', NULL),
	(391, 109, 'Discount', 'discount', 0, 20, '2018-09-25 18:52:30', NULL),
	(392, 109, 'Total', 'total', 30000, 100, '2018-09-25 18:52:30', NULL),
	(393, 109, 'Received', 'received', 0, 200, '2018-09-25 18:52:30', NULL),
	(394, 110, 'Sub total', 'subtotal', 25000, 1, '2018-09-26 10:23:16', NULL),
	(395, 110, 'Shipping', 'shipping', 20000, 10, '2018-09-26 10:23:16', NULL),
	(396, 110, 'Discount', 'discount', 0, 20, '2018-09-26 10:23:16', NULL),
	(397, 110, 'Total', 'total', 45000, 100, '2018-09-26 10:23:16', NULL),
	(398, 110, 'Received', 'received', 0, 200, '2018-09-26 10:23:16', NULL),
	(399, 111, 'Sub total', 'subtotal', 15000, 1, '2018-09-28 09:37:05', NULL),
	(400, 111, 'Shipping', 'shipping', 20000, 10, '2018-09-28 09:37:05', NULL),
	(401, 111, 'Discount', 'discount', 0, 20, '2018-09-28 09:37:05', NULL),
	(402, 111, 'Total', 'total', 35000, 100, '2018-09-28 09:37:05', NULL),
	(403, 111, 'Received', 'received', 0, 200, '2018-09-28 09:37:05', NULL),
	(404, 112, 'Sub total', 'subtotal', 10000, 1, '2018-10-05 21:40:26', NULL),
	(405, 112, 'Shipping', 'shipping', 20000, 10, '2018-10-05 21:40:26', NULL),
	(406, 112, 'Discount', 'discount', 0, 20, '2018-10-05 21:40:26', NULL),
	(407, 112, 'Total', 'total', 30000, 100, '2018-10-05 21:40:26', NULL),
	(408, 112, 'Received', 'received', 0, 200, '2018-10-05 21:40:26', NULL),
	(409, 113, 'Sub total', 'subtotal', 10000, 1, '2018-10-07 22:14:36', NULL),
	(410, 113, 'Shipping', 'shipping', 20000, 10, '2018-10-07 22:14:36', NULL),
	(411, 113, 'Discount', 'discount', 0, 20, '2018-10-07 22:14:36', NULL),
	(412, 113, 'Total', 'total', 30000, 100, '2018-10-07 22:14:36', NULL),
	(413, 113, 'Received', 'received', 0, 200, '2018-10-07 22:14:36', NULL),
	(414, 114, 'Sub total', 'subtotal', 10000, 1, '2018-10-08 09:31:50', NULL),
	(415, 114, 'Shipping', 'shipping', 20000, 10, '2018-10-08 09:31:50', NULL),
	(416, 114, 'Discount', 'discount', 0, 20, '2018-10-08 09:31:50', NULL),
	(417, 114, 'Total', 'total', 30000, 100, '2018-10-08 09:31:50', NULL),
	(418, 114, 'Received', 'received', 0, 200, '2018-10-08 09:31:50', NULL),
	(419, 115, 'Sub total', 'subtotal', 10000, 1, '2018-10-08 18:14:53', NULL),
	(420, 115, 'Shipping', 'shipping', 20000, 10, '2018-10-08 18:14:53', NULL),
	(421, 115, 'Discount', 'discount', 0, 20, '2018-10-08 18:14:53', NULL),
	(422, 115, 'Total', 'total', 30000, 100, '2018-10-08 18:14:53', NULL),
	(423, 115, 'Received', 'received', 0, 200, '2018-10-08 18:14:53', NULL),
	(424, 116, 'Sub total', 'subtotal', 15000, 1, '2018-10-09 11:23:37', NULL),
	(425, 116, 'Shipping', 'shipping', 20000, 10, '2018-10-09 11:23:37', NULL),
	(426, 116, 'Discount', 'discount', 0, 20, '2018-10-09 11:23:37', NULL),
	(427, 116, 'Total', 'total', 35000, 100, '2018-10-09 11:23:37', NULL),
	(428, 116, 'Received', 'received', 0, 200, '2018-10-09 11:23:37', NULL),
	(429, 117, 'Sub total', 'subtotal', 15000, 1, '2018-10-09 18:02:43', NULL),
	(430, 117, 'Shipping', 'shipping', 20000, 10, '2018-10-09 18:02:43', NULL),
	(431, 117, 'Discount', 'discount', 0, 20, '2018-10-09 18:02:43', NULL),
	(432, 117, 'Total', 'total', 35000, 100, '2018-10-09 18:02:43', NULL),
	(433, 117, 'Received', 'received', 0, 200, '2018-10-09 18:02:43', NULL),
	(434, 118, 'Sub total', 'subtotal', 10000, 1, '2018-10-17 06:42:22', NULL),
	(435, 118, 'Shipping', 'shipping', 20000, 10, '2018-10-17 06:42:22', NULL),
	(436, 118, 'Discount', 'discount', 0, 20, '2018-10-17 06:42:22', NULL),
	(437, 118, 'Total', 'total', 30000, 100, '2018-10-17 06:42:22', NULL),
	(438, 118, 'Received', 'received', 0, 200, '2018-10-17 06:42:22', NULL),
	(439, 119, 'Sub total', 'subtotal', 15000, 1, '2018-10-17 23:38:23', NULL),
	(440, 119, 'Shipping', 'shipping', 200000, 10, '2018-10-17 23:38:23', '2018-10-18 21:41:20'),
	(441, 119, 'Discount', 'discount', 0, 20, '2018-10-17 23:38:23', NULL),
	(442, 119, 'Total', 'total', 215000, 100, '2018-10-17 23:38:23', '2018-10-18 21:41:20'),
	(443, 119, 'Received', 'received', 0, 200, '2018-10-17 23:38:23', NULL),
	(444, 120, 'Sub total', 'subtotal', 40000, 1, '2018-10-19 21:44:17', NULL),
	(445, 120, 'Shipping', 'shipping', 20000, 10, '2018-10-19 21:44:17', NULL),
	(446, 120, 'Discount', 'discount', 0, 20, '2018-10-19 21:44:17', NULL),
	(447, 120, 'Total', 'total', 60000, 100, '2018-10-19 21:44:17', NULL),
	(448, 120, 'Received', 'received', 0, 200, '2018-10-19 21:44:17', NULL),
	(449, 121, 'Sub total', 'subtotal', 15000, 1, '2018-10-19 21:48:06', NULL),
	(450, 121, 'Shipping', 'shipping', 20000, 10, '2018-10-19 21:48:06', NULL),
	(451, 121, 'Discount', 'discount', 0, 20, '2018-10-19 21:48:06', NULL),
	(452, 121, 'Total', 'total', 35000, 100, '2018-10-19 21:48:06', NULL),
	(453, 121, 'Received', 'received', 0, 200, '2018-10-19 21:48:06', NULL),
	(454, 122, 'Sub total', 'subtotal', 10000, 1, '2018-10-21 16:44:08', NULL),
	(455, 122, 'Shipping', 'shipping', 20000, 10, '2018-10-21 16:44:08', NULL),
	(456, 122, 'Discount', 'discount', 0, 20, '2018-10-21 16:44:08', NULL),
	(457, 122, 'Total', 'total', 30000, 100, '2018-10-21 16:44:08', NULL),
	(458, 122, 'Received', 'received', 0, 200, '2018-10-21 16:44:08', NULL),
	(459, 123, 'Sub total', 'subtotal', 10000, 1, '2018-10-23 10:51:11', NULL),
	(460, 123, 'Shipping', 'shipping', 20000, 10, '2018-10-23 10:51:11', NULL),
	(461, 123, 'Discount', 'discount', 0, 20, '2018-10-23 10:51:11', NULL),
	(462, 123, 'Total', 'total', 30000, 100, '2018-10-23 10:51:11', NULL),
	(463, 123, 'Received', 'received', 0, 200, '2018-10-23 10:51:11', NULL),
	(464, 124, 'Sub total', 'subtotal', 30000, 1, '2018-10-23 13:21:06', NULL),
	(465, 124, 'Shipping', 'shipping', 20000, 10, '2018-10-23 13:21:06', '2018-11-09 00:11:11'),
	(466, 124, 'Discount', 'discount', 0, 20, '2018-10-23 13:21:06', NULL),
	(467, 124, 'Total', 'total', 50000, 100, '2018-10-23 13:21:06', '2018-11-09 00:11:11'),
	(468, 124, 'Received', 'received', 0, 200, '2018-10-23 13:21:06', NULL),
	(469, 125, 'Sub total', 'subtotal', 75000, 1, '2018-10-23 22:38:45', NULL),
	(470, 125, 'Shipping', 'shipping', 20000, 10, '2018-10-23 22:38:45', NULL),
	(471, 125, 'Discount', 'discount', 0, 20, '2018-10-23 22:38:45', NULL),
	(472, 125, 'Total', 'total', 95000, 100, '2018-10-23 22:38:45', NULL),
	(473, 125, 'Received', 'received', 0, 200, '2018-10-23 22:38:45', NULL),
	(474, 126, 'Sub total', 'subtotal', 60000, 1, '2018-10-31 12:50:30', NULL),
	(475, 126, 'Shipping', 'shipping', 20000, 10, '2018-10-31 12:50:30', NULL),
	(476, 126, 'Discount', 'discount', 0, 20, '2018-10-31 12:50:30', NULL),
	(477, 126, 'Total', 'total', 80000, 100, '2018-10-31 12:50:30', NULL),
	(478, 126, 'Received', 'received', 0, 200, '2018-10-31 12:50:30', NULL),
	(479, 127, 'Sub total', 'subtotal', 125000, 1, '2018-11-01 13:27:57', NULL),
	(480, 127, 'Shipping', 'shipping', 20000, 10, '2018-11-01 13:27:57', NULL),
	(481, 127, 'Discount', 'discount', 0, 20, '2018-11-01 13:27:57', NULL),
	(482, 127, 'Total', 'total', 145000, 100, '2018-11-01 13:27:57', NULL),
	(483, 127, 'Received', 'received', 0, 200, '2018-11-01 13:27:57', NULL),
	(484, 128, 'Sub total', 'subtotal', 115000, 1, '2018-11-05 18:23:55', NULL),
	(485, 128, 'Shipping', 'shipping', 20000, 10, '2018-11-05 18:23:55', NULL),
	(486, 128, 'Discount', 'discount', 0, 20, '2018-11-05 18:23:55', NULL),
	(487, 128, 'Total', 'total', 135000, 100, '2018-11-05 18:23:55', NULL),
	(488, 128, 'Received', 'received', 0, 200, '2018-11-05 18:23:55', NULL),
	(489, 129, 'Sub total', 'subtotal', 15000, 1, '2018-11-05 18:35:28', NULL),
	(490, 129, 'Shipping', 'shipping', 20000, 10, '2018-11-05 18:35:28', NULL),
	(491, 129, 'Discount', 'discount', 0, 20, '2018-11-05 18:35:28', NULL),
	(492, 129, 'Total', 'total', 35000, 100, '2018-11-05 18:35:28', NULL),
	(493, 129, 'Received', 'received', 0, 200, '2018-11-05 18:35:28', NULL),
	(494, 130, 'Subtotal', 'subtotal', 90000, 1, NULL, '2018-11-09 00:13:23'),
	(495, 130, 'Shipping', 'shipping', 15000, 10, NULL, '2018-11-09 00:13:39'),
	(496, 130, 'Discount', 'discount', -10000, 20, NULL, '2018-11-09 00:13:47'),
	(497, 130, 'Total', 'total', 95000, 100, NULL, '2018-11-09 00:13:47'),
	(498, 130, 'Received', 'received', -35000, 200, NULL, '2018-11-09 00:13:56'),
	(499, 131, 'Sub total', 'subtotal', 10000, 1, '2018-11-13 15:08:31', NULL),
	(500, 131, 'Shipping', 'shipping', 20000, 10, '2018-11-13 15:08:31', NULL),
	(501, 131, 'Discount', 'discount', 0, 20, '2018-11-13 15:08:31', NULL),
	(502, 131, 'Total', 'total', 30000, 100, '2018-11-13 15:08:31', NULL),
	(503, 131, 'Received', 'received', 0, 200, '2018-11-13 15:08:31', NULL),
	(504, 132, 'Sub total', 'subtotal', 15000, 1, '2018-11-15 16:45:22', NULL),
	(505, 132, 'Shipping', 'shipping', 20000, 10, '2018-11-15 16:45:22', NULL),
	(506, 132, 'Discount', 'discount', 0, 20, '2018-11-15 16:45:22', NULL),
	(507, 132, 'Total', 'total', 35000, 100, '2018-11-15 16:45:22', NULL),
	(508, 132, 'Received', 'received', 0, 200, '2018-11-15 16:45:22', NULL),
	(509, 133, 'Sub total', 'subtotal', 15000, 1, '2018-11-18 08:45:32', NULL),
	(510, 133, 'Shipping', 'shipping', 20000, 10, '2018-11-18 08:45:32', NULL),
	(511, 133, 'Discount', 'discount', 0, 20, '2018-11-18 08:45:32', NULL),
	(512, 133, 'Total', 'total', 35000, 100, '2018-11-18 08:45:32', NULL),
	(513, 133, 'Received', 'received', 0, 200, '2018-11-18 08:45:32', NULL);
/*!40000 ALTER TABLE `shop_order_total` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_payment_status
DROP TABLE IF EXISTS `shop_payment_status`;
CREATE TABLE IF NOT EXISTS `shop_payment_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_payment_status: ~4 rows (approximately)
DELETE FROM `shop_payment_status`;
/*!40000 ALTER TABLE `shop_payment_status` DISABLE KEYS */;
INSERT INTO `shop_payment_status` (`id`, `name`) VALUES
	(0, 'Unpaid'),
	(1, 'Partial payment'),
	(2, 'Paid'),
	(3, 'Refurn');
/*!40000 ALTER TABLE `shop_payment_status` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_product
DROP TABLE IF EXISTS `shop_product`;
CREATE TABLE IF NOT EXISTS `shop_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_id` int(10) unsigned DEFAULT '0',
  `vendor_id` int(10) unsigned DEFAULT '0',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `category_other` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `cost` int(11) DEFAULT '0',
  `stock` int(11) NOT NULL DEFAULT '0',
  `sold` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-Nomal 1-New 2-Hot',
  `option` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0- inactive 1-active ',
  `view` int(11) DEFAULT '0',
  `date_lastview` timestamp NULL DEFAULT NULL,
  `date_available` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sku` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_product: ~40 rows (approximately)
DELETE FROM `shop_product`;
/*!40000 ALTER TABLE `shop_product` DISABLE KEYS */;
INSERT INTO `shop_product` (`id`, `sku`, `image`, `brand_id`, `vendor_id`, `category_id`, `category_other`, `price`, `cost`, `stock`, `sold`, `type`, `option`, `sort`, `status`, `view`, `date_lastview`, `date_available`, `created_at`, `updated_at`) VALUES
	(3, 'MEGA2560', 'product/f2d9505d28f1b10f949cec466cada01e.jpeg', 1, 0, 7, NULL, 220000, 150000, 100, 0, 0, NULL, 0, 1, 16, '2018-11-18 04:39:59', NULL, '2018-01-15 14:57:31', '2018-11-18 04:39:59'),
	(4, 'LEDFAN1', 'product/95349d3747fdaf79d391fdc98e083701.jpg', 1, 0, 6, NULL, 190000, 100000, 100, 0, 1, NULL, 0, 1, 11, '2018-11-17 04:06:17', NULL, '2018-01-16 13:03:54', '2018-11-17 04:06:17'),
	(5, 'CLOCKFAN1', 'product/15aa6b1f31b53a0177d7653761a45274.jpeg', 2, 0, 13, NULL, 420000, 320000, 100, 0, 1, NULL, 0, 1, 24, '2018-11-18 13:43:57', NULL, '2018-01-16 13:04:41', '2018-11-18 13:43:57'),
	(6, 'CLOCKFAN2', 'product/0e1416d509af3712bd801404ca928702.jpeg', 1, 0, 13, NULL, 380000, 250000, 100, 0, 1, NULL, 0, 1, 34, '2018-11-18 13:58:30', NULL, '2018-02-02 14:52:50', '2018-11-18 13:58:30'),
	(7, 'CLOCKFAN3', 'product/95349d3747fdaf79d391fdc98e083701.jpg', 1, 0, 13, NULL, 320000, 250000, 100, 0, 1, NULL, 1, 1, 26, '2018-11-18 02:15:39', NULL, '2018-02-02 14:53:30', '2018-11-18 02:15:39'),
	(8, 'TMC2208', 'product/95349d3747fdaf79d391fdc98e083701.jpg', 6, 0, 11, NULL, 220000, 130000, 100, 0, 0, NULL, 1, 1, 29, '2018-11-18 02:29:04', NULL, '2018-02-02 14:53:30', '2018-11-18 02:29:04'),
	(9, 'FILAMENT', 'product/95349d3747fdaf79d391fdc98e083701.jpg', 1, 0, 15, NULL, 299000, 200000, 100, 0, 1, NULL, 1, 1, 29, '2018-11-18 06:29:51', NULL, '2018-02-02 14:53:30', '2018-11-18 06:29:51'),
	(10, 'A4988', 'product/820283598735f98a9b23960821da438b.jpeg', 1, 0, 11, NULL, 39000, 20000, 100, 0, 0, NULL, 1, 1, 20, '2018-11-18 03:29:08', NULL, '2018-02-02 14:53:30', '2018-11-18 03:29:08'),
	(11, 'ANYCUBIC-P', 'product/d63af407fa92299e163696a585566dc7.jpeg', 3, 0, 10, NULL, 4990000, 3500000, 100, 0, 0, NULL, 0, 1, 9, '2018-11-18 11:53:07', NULL, '2018-01-15 14:57:31', '2018-11-18 11:53:07'),
	(12, '3DHLFD', 'product/95349d3747fdaf79d391fdc98e083701.jpg', 1, 0, 12, NULL, 7990000, 5200000, 100, 0, 1, NULL, 0, 1, 13, '2018-11-18 12:32:44', NULL, '2018-01-15 14:57:31', '2018-11-18 12:32:44'),
	(20, 'SS495A', 'product/95349d3747fdaf79d391fdc98e083701.jpg', 2, 0, 14, NULL, 15000, 7000, 100, 0, 1, NULL, 0, 1, 37, '2018-11-18 17:51:45', NULL, '2018-01-15 14:57:31', '2018-11-18 17:51:45'),
	(21, '3D-CARBON1.75', 'product/d05966a529efdd8d7b41ed9b687859b6.jpeg', 2, 0, 15, NULL, 390000, 15000, 100, 0, 1, NULL, 1, 1, 20, '2018-11-18 10:11:17', NULL, '2018-02-02 14:53:30', '2018-11-18 10:11:17'),
	(22, '3D-GOLD1.75', 'product/eedfd153bf368919a134da17f22c8de7.jpeg', 2, 0, 15, NULL, 500000, 15000, 100, 0, 1, NULL, 1, 1, 24, '2018-11-18 00:14:57', NULL, '2018-04-12 15:05:37', '2018-11-18 00:14:57'),
	(23, 'LCD12864-3D', 'product/a7a315526ecf7594731448d792714a11.jpeg', 2, 0, 11, NULL, 220000, 15000, 100, 0, 0, NULL, 0, 1, 12, '2018-11-18 10:35:52', NULL, '2018-08-11 13:33:37', '2018-11-18 10:35:52'),
	(24, 'LCD2004-3D', 'product/9215506044b8a350fc082f5350b3653a.jpg', 2, 0, 11, NULL, 190000, 15000, 100, 0, 0, NULL, 0, 1, 10, '2018-11-17 15:37:41', NULL, '2018-08-11 13:39:31', '2018-11-17 15:37:41'),
	(25, 'RAMPS1.5-3D', 'product/1d6cdd4473603c7a4d162067713b8da8.jpg', 2, 0, 11, NULL, 120000, 15000, 100, 0, 0, NULL, 0, 1, 17, '2018-11-18 01:08:33', NULL, '2018-08-11 13:41:25', '2018-11-18 01:08:33'),
	(26, 'EFULL-3D', 'product/07e79f6546499878cba383dd5bfe977e.jpeg', 1, 0, 11, NULL, 890000, 15000, 100, 0, 0, NULL, 0, 1, 7, '2018-11-17 04:40:28', NULL, '2018-08-11 13:50:25', '2018-11-17 04:40:28'),
	(27, 'ANYCUBIC-I3M', 'product/ea88b7078652909f3d6c5d445aa05f59.jpeg', 1, 0, 10, NULL, 7990000, 15000, 100, 0, 0, NULL, 0, 1, 28, '2018-11-18 05:39:36', NULL, '2018-08-22 16:26:00', '2018-11-18 05:39:36'),
	(28, '3DNOZZLE', 'product/c25c81c852823f5ea8ba4250978217a5.jpeg', 1, 0, 11, NULL, 10000, 15000, 100, 0, 0, NULL, 0, 1, 5, '2018-11-18 12:01:45', NULL, '2018-08-24 04:21:48', '2018-11-18 12:01:45'),
	(29, '3D-TEFLONLOCK', 'product/8e28f51184f0a96970c05185b1412fa1.jpeg', 1, 0, 12, NULL, 10000, 15000, 100, 0, 0, NULL, 0, 1, 27, '2018-11-18 12:16:53', NULL, '2018-08-24 04:32:48', '2018-11-18 12:16:53'),
	(30, '3D-BELT-GT2', 'product/8f795b2335d42cdb7c7eafcfaf714cb2.jpeg', 1, 0, 11, NULL, 20000, 15000, 100, 0, 1, NULL, 0, 1, 35, '2018-11-18 12:23:52', NULL, '2018-08-24 04:35:39', '2018-11-18 12:23:52'),
	(31, '3D-TEFLONLOCK-M10', 'product/0e1416d509af3712bd801404ca928702.jpeg', 2, 0, 11, NULL, 10000, 15000, 100, 0, 0, NULL, 0, 1, 8, '2018-11-17 05:06:57', NULL, '2018-08-24 04:39:03', '2018-11-17 05:06:57'),
	(32, '3D-HOTWIRE1240', 'product/efd9fb910ba539c125b7c431a1ccc563.jpg', 0, 0, 11, NULL, 20000, 15000, 100, 0, 1, NULL, 0, 1, 24, '2018-11-18 12:47:17', NULL, '2018-08-24 04:40:54', '2018-11-18 12:47:17'),
	(33, '3D-TEFTLON-24', 'product/a635cc2bdf5485ccb2c0cc9d186968b2.jpeg', 2, 0, 16, NULL, 15000, 15000, 100, 0, 0, NULL, 1, 1, 31, '2018-11-18 14:05:48', NULL, '2018-08-24 04:44:04', '2018-11-18 14:05:48'),
	(34, '3D-TEFTLON-W24', 'product/a32f12e009ebf0d24ab264706ecbc15e.jpeg', 5, 0, 11, NULL, 20000, 15000, 100, 0, 1, NULL, 0, 1, 18, '2018-11-18 13:29:49', NULL, '2018-08-24 05:09:34', '2018-11-18 13:29:49'),
	(35, '3D-SENSOR-NTC 100K', 'product/41c8f0d0111cd5a3f0538604233cbed8.jpeg', 4, 0, 10, NULL, 15000, 15000, 100, 0, 1, NULL, 0, 1, 16, '2018-11-18 13:37:02', NULL, '2018-08-24 05:13:58', '2018-11-18 13:37:02'),
	(36, 'nRLF24L01+2.4HZ', 'product/820283598735f98a9b23960821da438b.jpeg', 3, 0, 11, NULL, 25000, 15000, 100, 0, 0, NULL, 0, 1, 24, '2018-11-18 12:53:47', NULL, '2018-08-24 06:07:15', '2018-11-18 12:53:47'),
	(37, 'ARDUINO-NANO', 'product/da687e60e54bd7fc7eab5c76e7ec3754.jpeg', 1, 0, 17, NULL, 100000, 15000, 100, 0, 0, NULL, 0, 1, 17, '2018-11-18 13:01:45', NULL, '2018-08-24 06:25:48', '2018-11-18 13:01:45'),
	(38, 'LEDSTRIP-5050RGB', 'product/61559578baf403e03565e73a14f845ce.jpeg', 1, 0, 9, NULL, 15000, 15000, 100, 0, 1, NULL, 0, 1, 55, '2018-11-18 06:59:57', NULL, '2018-08-24 06:33:31', '2018-11-18 06:59:57'),
	(39, 'LEDSTRIP-S', 'product/c400aecd5c6d87782ac9af33dd7a5980.jpg', 4, 0, 19, NULL, 15000, 15000, 100, 0, 0, NULL, 0, 1, 22, '2018-11-18 11:46:18', NULL, '2018-08-24 08:46:21', '2018-11-18 11:46:18'),
	(40, 'P10-IR', 'product/830d640cd17eba0bf186dc649d5c3053.jpeg', 0, 0, 19, NULL, 15000, 15000, 100, 0, 0, NULL, 0, 1, 19, '2018-11-18 03:39:16', NULL, '2018-08-24 08:49:49', '2018-11-18 03:39:16'),
	(41, 'P10-IG', 'product/9d9aab8be8634708c9cf5b690fee74a4.jpeg', 0, 0, 19, NULL, 15000, 15000, 100, 0, 1, NULL, 0, 1, 30, '2018-11-18 00:38:32', NULL, '2018-08-24 08:51:11', '2018-11-18 00:38:32'),
	(42, 'P10-IB', 'product/98fafb9da683cd9ee854598f3f3a3bd5.jpeg', 0, 0, 19, NULL, 15000, 15000, 100, 0, 0, NULL, 0, 1, 23, '2018-11-18 01:38:44', NULL, '2018-08-24 08:52:58', '2018-11-18 01:38:44'),
	(43, 'P10-IRGB', 'product/a111c060ebb6ffbbd2d34ae278501789.jpg', 0, 0, 19, NULL, 15000, 15000, 100, 0, 0, NULL, 0, 1, 16, '2018-11-18 01:28:53', NULL, '2018-08-24 08:54:45', '2018-11-18 01:28:53'),
	(44, 'P10-IRG', 'product/95349d3747fdaf79d391fdc98e083701.jpg', 0, 0, 19, NULL, 15000, 15000, 100, 0, 1, NULL, 0, 1, 40, '2018-11-17 04:06:33', NULL, '2018-08-24 08:56:02', '2018-11-17 04:06:33'),
	(45, 'LFF', 'product/3c8f613d30b4e487ef95a5e4cdea634c.jpeg', 0, 0, 6, NULL, 15000, 15000, 100, 0, 0, NULL, 0, 1, 59, '2018-11-18 10:01:08', NULL, '2018-08-24 08:58:42', '2018-11-18 10:01:08'),
	(46, 'P2.5-I', 'product/949fa36ebd56593445fb61d141fd2a81.jpeg', 2, 0, 19, NULL, 15000, 15000, 100, 0, 0, NULL, 0, 1, 43, '2018-11-17 14:31:10', NULL, '2018-08-24 09:23:07', '2018-11-17 14:31:10'),
	(47, 'BX-5U0', 'product/cd7aa3394c35330ed7f9e4095c6adb65.jpeg', 0, 0, 19, NULL, 15000, 15000, 100, 0, 0, NULL, 0, 1, 113, '2018-11-18 13:15:40', NULL, '2018-08-24 09:48:31', '2018-11-18 13:15:40'),
	(48, 'BX-5UT', 'product/6ddd855403d127a9fed049d0ec335481.jpeg', 0, 0, 19, NULL, 15000, 15000, 98, 2, 0, NULL, 0, 1, 272, '2018-11-18 13:08:17', NULL, '2018-08-24 09:52:15', '2018-11-18 13:08:17'),
	(49, 'BX-5UTbnv', 'product/0950df6d59696ad39a8e5505735f578c.jpeg', 2, 0, 2, NULL, 15000, 15000, 99, 1, 1, NULL, 0, 1, 147, '2018-11-18 13:51:26', '2018-09-19 00:00:00', '2018-09-03 08:05:59', '2018-11-18 13:51:26');
/*!40000 ALTER TABLE `shop_product` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_product_description
DROP TABLE IF EXISTS `shop_product_description`;
CREATE TABLE IF NOT EXISTS `shop_product_description` (
  `product_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  UNIQUE KEY `product_id_lang_id` (`product_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_product_description: ~80 rows (approximately)
DELETE FROM `shop_product_description`;
/*!40000 ALTER TABLE `shop_product_description` DISABLE KEYS */;
INSERT INTO `shop_product_description` (`product_id`, `lang_id`, `name`, `description`, `keyword`, `content`) VALUES
	(3, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(3, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(4, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(4, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(5, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(5, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(6, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(6, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(7, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(7, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(8, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(8, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(9, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(9, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(10, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(10, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(11, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(11, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(12, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(12, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(20, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(20, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(21, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(21, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(22, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(22, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(23, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(23, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(24, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(24, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(25, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(25, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(26, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(26, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(27, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(27, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(28, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(28, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(29, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(29, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(30, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(30, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(31, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(31, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(32, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(32, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(33, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(33, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(34, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(34, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(35, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(35, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(36, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(36, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(37, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(37, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(38, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(38, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(39, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(39, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(40, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(40, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(41, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(41, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(42, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(42, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(43, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(43, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(44, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(44, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(45, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(45, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(46, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(46, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(47, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(47, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(48, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(48, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(49, 1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(49, 2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>');
/*!40000 ALTER TABLE `shop_product_description` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_product_like
DROP TABLE IF EXISTS `shop_product_like`;
CREATE TABLE IF NOT EXISTS `shop_product_like` (
  `product_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`product_id`,`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_product_like: ~0 rows (approximately)
DELETE FROM `shop_product_like`;
/*!40000 ALTER TABLE `shop_product_like` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_product_like` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_product_option
DROP TABLE IF EXISTS `shop_product_option`;
CREATE TABLE IF NOT EXISTS `shop_product_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opt_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt_sku` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt_price` int(11) DEFAULT NULL,
  `opt_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `opt_sku` (`opt_sku`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_product_option: ~7 rows (approximately)
DELETE FROM `shop_product_option`;
/*!40000 ALTER TABLE `shop_product_option` DISABLE KEYS */;
INSERT INTO `shop_product_option` (`id`, `opt_name`, `opt_sku`, `opt_price`, `opt_image`, `product_id`) VALUES
	(3, 'Sản phẩm xanh', 'BX-5UT-s', 454, 'product/4c28c6a2fc6a3fa79197798707d55b5c.png', 48),
	(4, '34324234', 'BX-5UT-T', 1111, 'product/293da323794f89ee2d7962f44f930393.png', 48),
	(12, 'fdgdfg', 'fgdfgd', NULL, 'product/68f8a4d063e4ddef447616116dd03e0f.png', 42),
	(13, 'bnmbnmbn', 'BX-5U0-1fgfgjghjhgj', NULL, 'product/2702691387f97f5985843cbb243d267c.png', 42),
	(16, 'Sản phẩm xanh', 'BX-5U0-1fgfgkjh', NULL, 'product/777274d55ff7adeef36ca930022a8db9.jpg', 29),
	(17, 'Sản phẩm xanh', 'BX-5U0-1fgfgl', NULL, 'product/0ba3c6a927bb0e2cd2d54ce0c13df919.jpg', 30),
	(18, 'Sản phẩm xanh', 'BX-5U0-1fgfgg', NULL, 'product/7eb3eefcb94b7548cc4942a42f36e186.jpg', 27);
/*!40000 ALTER TABLE `shop_product_option` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_product_recent_view
DROP TABLE IF EXISTS `shop_product_recent_view`;
CREATE TABLE IF NOT EXISTS `shop_product_recent_view` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `customer_id_product_id` (`user_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table s-cart.shop_product_recent_view: ~8 rows (approximately)
DELETE FROM `shop_product_recent_view`;
/*!40000 ALTER TABLE `shop_product_recent_view` DISABLE KEYS */;
INSERT INTO `shop_product_recent_view` (`user_id`, `product_id`, `created_at`) VALUES
	(3, 35, '2018-08-27 15:58:21'),
	(3, 38, '2018-08-27 16:44:08'),
	(3, 41, '2018-08-27 17:19:33'),
	(3, 42, '2018-08-27 17:02:03'),
	(3, 44, '2018-08-27 17:19:52'),
	(3, 46, '2018-08-27 17:14:29'),
	(3, 47, '2018-08-27 17:01:57'),
	(3, 48, '2018-08-27 17:01:49');
/*!40000 ALTER TABLE `shop_product_recent_view` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_promocodes
DROP TABLE IF EXISTS `shop_promocodes`;
CREATE TABLE IF NOT EXISTS `shop_promocodes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reward` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `number_uses` int(10) unsigned NOT NULL DEFAULT '1',
  `used` int(11) NOT NULL DEFAULT '0',
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `expires_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `promocodes_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.shop_promocodes: ~14 rows (approximately)
DELETE FROM `shop_promocodes`;
/*!40000 ALTER TABLE `shop_promocodes` DISABLE KEYS */;
INSERT INTO `shop_promocodes` (`id`, `code`, `reward`, `type`, `data`, `number_uses`, `used`, `status`, `expires_at`) VALUES
	(1, 'ABC-XAA01', 100000, 0, 'Khuyến mãi đầu năm', 100, 2, 1, '2018-08-11 00:00:00'),
	(2, 'KKB3-KLLA', 30, 2, NULL, 33, 2, 1, '2018-10-11 00:00:00'),
	(3, 'PAA-LLK01', 100000, 1, 'Tặng điểm khách hàng thân thiết', 22, 1, 1, NULL),
	(4, 'VONN_KKH1', 150000, 0, NULL, 1, 1, 1, '2019-03-08 00:00:00'),
	(5, 'PAA-LLK02', 150000, 1, NULL, 111, 0, 1, NULL),
	(6, 'VONN_KKH2', 900000, 0, 'Refurn', 4, 1, 1, '2018-07-07 00:00:00'),
	(8, 'PAA-LLK03', 150000, 0, NULL, 111, 1, 1, NULL),
	(9, 'PAA-LLK04', 150000, 0, NULL, 111, 2, 1, NULL),
	(10, 'PAA-LLK05', 150000, 0, NULL, 111, 1, 1, NULL),
	(11, 'PAA-LLK06', 150000, 0, NULL, 111, 1, 1, NULL),
	(13, 'PAA-LLK07', 219999, 0, NULL, 111, 2, 1, NULL),
	(15, 'PAA-LLK08', 219999, 0, NULL, 111, 2, 1, NULL),
	(16, 'PAA-LLK09', 219999, 0, NULL, 111, 2, 1, NULL),
	(17, 'PAA-LLK010', 219999, 0, NULL, 111, 2, 1, NULL);
/*!40000 ALTER TABLE `shop_promocodes` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_promocode_user
DROP TABLE IF EXISTS `shop_promocode_user`;
CREATE TABLE IF NOT EXISTS `shop_promocode_user` (
  `user_id` int(10) unsigned NOT NULL,
  `promocode_id` int(10) unsigned NOT NULL,
  `log` text COLLATE utf8mb4_unicode_ci,
  `used_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`promocode_id`),
  KEY `promocode_user_promocode_id_foreign` (`promocode_id`),
  CONSTRAINT `promocode_user_promocode_id_foreign` FOREIGN KEY (`promocode_id`) REFERENCES `shop_promocodes` (`id`),
  CONSTRAINT `promocode_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.shop_promocode_user: ~16 rows (approximately)
DELETE FROM `shop_promocode_user`;
/*!40000 ALTER TABLE `shop_promocode_user` DISABLE KEYS */;
INSERT INTO `shop_promocode_user` (`user_id`, `promocode_id`, `log`, `used_at`) VALUES
	(2, 1, 'Đơn hàng 3', '2018-05-20 22:04:28'),
	(3, 1, 'Đơn hàng 11', '2018-05-22 06:22:35'),
	(3, 2, 'Order #48', '2018-06-03 14:20:25'),
	(3, 3, 'Order #43', '2018-05-22 14:06:21'),
	(3, 4, NULL, '2018-05-22 14:03:02'),
	(3, 6, 'Order #45', '2018-05-27 10:53:16'),
	(3, 8, 'Order #50', '2018-06-03 14:56:26'),
	(3, 9, 'Order #51', '2018-06-03 15:15:19'),
	(3, 10, 'Order #52', '2018-06-03 15:41:31'),
	(3, 11, 'Order #62', '2018-06-05 23:01:53'),
	(3, 13, 'Order #93', '2018-09-23 12:41:07'),
	(3, 15, 'Order #94', '2018-09-23 12:44:03'),
	(3, 16, 'Order #95', '2018-09-23 12:46:05'),
	(3, 17, 'Order #96', '2018-09-23 12:48:40'),
	(5, 2, 'Order #77', '2018-09-07 20:58:47'),
	(5, 9, 'Order #76', '2018-09-06 18:59:25');
/*!40000 ALTER TABLE `shop_promocode_user` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_shipping
DROP TABLE IF EXISTS `shop_shipping`;
CREATE TABLE IF NOT EXISTS `shop_shipping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  `free` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_shipping: ~0 rows (approximately)
DELETE FROM `shop_shipping`;
/*!40000 ALTER TABLE `shop_shipping` DISABLE KEYS */;
INSERT INTO `shop_shipping` (`id`, `type`, `value`, `free`, `status`) VALUES
	(1, 0, 20000, 10000000, 1);
/*!40000 ALTER TABLE `shop_shipping` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_shipping_status
DROP TABLE IF EXISTS `shop_shipping_status`;
CREATE TABLE IF NOT EXISTS `shop_shipping_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_shipping_status: ~3 rows (approximately)
DELETE FROM `shop_shipping_status`;
/*!40000 ALTER TABLE `shop_shipping_status` DISABLE KEYS */;
INSERT INTO `shop_shipping_status` (`id`, `name`) VALUES
	(0, 'Not sent'),
	(1, 'Sending'),
	(2, 'Shipping done');
/*!40000 ALTER TABLE `shop_shipping_status` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_shoppingcart
DROP TABLE IF EXISTS `shop_shoppingcart`;
CREATE TABLE IF NOT EXISTS `shop_shoppingcart` (
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `shop_shoppingcart_identifier_instance_index` (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_shoppingcart: ~0 rows (approximately)
DELETE FROM `shop_shoppingcart`;
/*!40000 ALTER TABLE `shop_shoppingcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_shoppingcart` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_special_price
DROP TABLE IF EXISTS `shop_special_price`;
CREATE TABLE IF NOT EXISTS `shop_special_price` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `off` int(11) DEFAULT '0',
  `date_start` timestamp NULL DEFAULT NULL,
  `date_end` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `comment` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_special_price: ~10 rows (approximately)
DELETE FROM `shop_special_price`;
/*!40000 ALTER TABLE `shop_special_price` DISABLE KEYS */;
INSERT INTO `shop_special_price` (`id`, `product_id`, `price`, `off`, `date_start`, `date_end`, `status`, `comment`, `created_at`, `updated_at`) VALUES
	(1, 21, 150000, 0, '2018-01-28 00:00:00', '2019-04-30 00:00:00', 1, NULL, '2018-02-06 12:05:20', '2018-04-12 14:45:17'),
	(4, 6, 40000, 0, NULL, '2019-06-28 00:00:00', 1, NULL, '2018-02-06 12:44:40', '2018-04-12 14:45:32'),
	(6, 8, 30000, 0, '2018-02-07 00:00:00', '2018-03-10 00:00:00', 1, NULL, '2018-02-07 14:45:19', '2018-02-07 15:17:42'),
	(7, 10, 15000, 0, '2018-02-06 00:00:00', '2018-03-29 00:00:00', 1, NULL, '2018-02-07 14:49:48', '2018-03-11 05:36:43'),
	(9, 11, 100000, 0, '2018-03-19 00:00:00', '2018-03-31 00:00:00', 1, NULL, '2018-02-08 15:51:45', '2018-03-25 02:49:07'),
	(11, 12, 100000, 0, NULL, NULL, 1, NULL, '2018-03-27 14:13:47', '2018-03-27 14:18:44'),
	(12, 7, 320000, 0, '2011-10-26 00:00:00', '2019-05-08 00:00:00', 1, NULL, '2018-04-12 14:46:40', '2018-09-01 00:05:12'),
	(13, 23, 198000, 10, '2018-05-08 00:00:00', '2018-06-08 00:00:00', 0, 'test giam gia', '2018-05-09 15:15:37', '2018-08-28 22:13:45'),
	(14, 49, 10000, 0, NULL, NULL, 1, NULL, '2018-09-22 18:19:07', '2018-09-22 18:19:07'),
	(15, 3, 200000, 0, NULL, NULL, 1, NULL, '2018-09-22 18:20:14', '2018-09-22 18:20:14');
/*!40000 ALTER TABLE `shop_special_price` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_vendor
DROP TABLE IF EXISTS `shop_vendor`;
CREATE TABLE IF NOT EXISTS `shop_vendor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_vendor: ~0 rows (approximately)
DELETE FROM `shop_vendor`;
/*!40000 ALTER TABLE `shop_vendor` DISABLE KEYS */;
INSERT INTO `shop_vendor` (`id`, `name`, `email`, `phone`, `image`, `address`, `url`, `sort`) VALUES
	(1, 'ABC distributor', 'abc@abc.com', '012496657567', NULL, NULL, NULL, 0);
/*!40000 ALTER TABLE `shop_vendor` ENABLE KEYS */;

-- Dumping structure for table s-cart.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.users: ~11 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `address1`, `address2`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Hoang Ngoc Tu', 'dfne11pd2707@gmail.com', '$2y$10$yMT7ox6mh6kRQon.06MXZue.PBTwhT0xFLM9s7RDVgLYrMM/sBJHu', '122/23B, Tôn Thất Tùng', 'Quận 7', '009404945435', 'V5VfBF0g3ZjllZJyFo9Guh2E5dxIAA5HlpJScrAplZxmSMjJKiQO6W4m90kh', '2018-01-14 03:12:50', '2018-09-03 17:13:27'),
	(2, 'Hung', 'hung@fdgfdg.com', '$2y$10$eGf2jiO3I7wj879B0RRBBuZgvVvDJLQKP0HF88ZCgr4ti50AgznuO', 'Quan 1', 'Ho chi Minh', '099789987686', NULL, '2018-01-15 15:43:35', '2018-01-15 16:40:14'),
	(3, 'Lê Văn Lanh', 'lanhktc@gmail.com', '$2y$10$4HMDRFpiNXRPYitWP7tDhuYsCYKGK3QFiRvyeQxYbsyzgmsabRrhS', 'Quan 12', 'Ho chi minh', '0667151172', 'GzmAIfW7F4U2cCkLVUpi0VihjbPASKtWzppkDCOemyQrh1i93CQ0hAaJncm6', '2018-02-04 09:56:12', '2018-09-03 17:13:17'),
	(4, 'Châu Tuấn Anh', 'lengocchau_11233@gmail.com', '$2y$10$udnwsVhfef3QcS8oP8OEsuHg9eKTTI7lb0q6Zffd9jHiEGnIIxUBe', 'Tân Kỳ', 'Hồ Chí Minh', '0664456189', 'iYg2W7K79pAleTv2Q0rHsRCsMkx8lLN4l2fTE8o8GlLKBHyrj3TeHvIjWYgt', '2018-03-12 16:20:04', '2018-05-09 15:00:55'),
	(5, 'Bao Khanh', 'baokhanh123@gmail.com', '$2y$10$/DzsZSjPNLRY8NlrMk5lselrbMYQdmr90tXBPlYQe8CNsi1JQFyse', '12', 'TTh07', '09012345678', NULL, '2018-09-05 20:57:19', '2018-09-05 20:57:19'),
	(6, 'ABC', 'abc@abc.com', '$2y$10$1OygbWuORyylC70H5gxBXuk3dloYdwIwVLiABJ0YUZVZsWuLaf6F.', 'Address 1', 'Address 2', '098765432321', '61LIuCv7we6a79eInQTGuQkEFCy23SqgKHEFM5wdlKx32UAA1riBMfFmPS0S', '2018-09-23 07:54:21', '2018-09-23 07:54:21'),
	(7, 'trucnguyen', 'q@gmail.com', '$2y$10$9Lyc.48VCiwh9ldNwaGr6.fZEQjMa1f2j9SVFO4VdhqEkHT08SDKO', 'viet nam', 'viet nam', '0975236548', NULL, '2018-10-17 23:37:56', '2018-10-17 23:37:56'),
	(8, 'trucnguyen', 'qq@gmail.com', '$2y$10$P6TQEEhlkSpx/xTU1ywrX.leBmMCrVQcrEx6UMMR0EDUFb4FlxPfO', 'viet nam', 'viet nam', '0975236549', NULL, '2018-10-18 22:46:20', '2018-10-18 22:46:20'),
	(9, 'Ho Luat', 'holuat162@gmail.com', '$2y$10$Tw3TxCBOtz1ZMgfOsEUca.LVovbFtvf0HPy0UwyCHrEFnwjBc9Xi6', 'Binh Thanh district,Ho Chi Minh city', 'Thu Duc District, Ho Chi Minh City', '01695415813', '1I9kAloLMogFKoi2ie7h8dWC8aPwTgsqu0JJz00yK7cDJYy0toTq2EzKcE6Z', '2018-10-23 08:25:21', '2018-10-23 08:25:21'),
	(10, 'Hoang', 'tuannguyen@gmail.com2', '$2y$10$DdSoAxE33P.s5zJdsbLM7u0z1ICrF/3w8rn0ck2DlRyqADBVmXQHi', 'Van', 'Trnag', '099845345', 'KKPkyip3UYcdwbaCRZX5d9s4y1lljY9FKGKO4kkIg2hnoELdEvTPcAD3kxds', '2018-10-23 11:34:43', '2018-10-23 11:34:43'),
	(11, 'levantu', 'levantu.nd1997@gmail.com', '$2y$10$dLW04M0TIbGGEo0vHsE0XO0M2ZGEmwa0hD1h2ZZi4MA0jZPMtENDK', 'hn', 'hn', '0914731527', NULL, '2018-10-23 13:20:42', '2018-10-23 13:20:42');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
