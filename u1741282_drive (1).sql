-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 03, 2023 at 07:31 PM
-- Server version: 10.5.17-MariaDB-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u1741282_drive`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_activation_attempts`
--

INSERT INTO `auth_activation_attempts` (`id`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', NULL, '2022-06-30 21:59:26'),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', NULL, '2022-06-30 21:59:45'),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '70f9f604948dfc692d86e1d8c3b9e1fb', '2022-07-01 00:17:44'),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '5de67d7a87a22b98fb491397eb85cd78', '2022-07-01 01:05:10'),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '8680c680e9cd06e240f53c73d208a08d', '2022-07-01 02:54:14'),
(6, '139.228.170.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'fd0d8886b6ab9c1290db86a26dae3fe9', '2022-07-07 22:58:04'),
(7, '139.228.170.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'b39aaf400ba78167a43de49cf60ceb5e', '2022-07-11 21:03:30'),
(8, '113.197.108.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'b39aaf400ba78167a43de49cf60ceb5e', '2022-07-11 22:10:47');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'super admin', 'admin yang dapat menghapus seluruh user'),
(2, 'admin', 'admin'),
(3, 'user', 'pegawai chaakra consulting');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 5),
(1, 34),
(3, 28),
(3, 29),
(3, 30),
(3, 31),
(3, 32),
(3, 33),
(3, 35),
(3, 37),
(3, 38),
(3, 39);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'verdysas@gmail.com', 1, '2022-06-28 03:53:24', 1),
(2, '::1', 'verdysas@gmail.com', NULL, '2022-06-28 04:08:58', 0),
(3, '::1', 'verdysas@gmail.com', 1, '2022-06-28 04:09:07', 1),
(4, '::1', 'verdysas@gmail.com', 1, '2022-06-28 04:10:43', 1),
(5, '::1', 'verdysas@gmail.com', 1, '2022-06-28 04:17:57', 1),
(6, '::1', 'verdysas@gmail.com', 1, '2022-06-28 04:23:50', 1),
(7, '::1', 'verdysas@gmail.com', 1, '2022-06-28 04:26:02', 1),
(8, '::1', 'verdysas@gmail.com', 1, '2022-06-28 04:29:05', 1),
(9, '::1', 'verdysas@gmail.com', 1, '2022-06-28 04:30:03', 1),
(10, '::1', 'verdysas@gmail.com', NULL, '2022-06-28 04:30:56', 0),
(11, '::1', 'admin123@admin.com', 3, '2022-06-28 04:38:00', 1),
(12, '::1', 'verdysas@gmail.com', 1, '2022-06-28 06:09:16', 1),
(13, '::1', 'verdysas@gmail.com', 1, '2022-06-28 06:09:34', 1),
(14, '::1', 'admin123@admin.com', 3, '2022-06-28 06:21:58', 1),
(15, '::1', 'verdysas@gmail.com', 1, '2022-06-28 06:23:17', 1),
(16, '::1', 'verdysas@gmail.com', 1, '2022-06-28 06:48:05', 1),
(17, '::1', 'verdysas@gmail.com', 1, '2022-06-28 06:50:07', 1),
(18, '::1', 'verdysas@gmail.com', 4, '2022-06-28 07:11:18', 1),
(19, '::1', 'admin123@gmail.com', 6, '2022-06-28 07:42:50', 1),
(20, '::1', 'verdysas@gmail.com', 4, '2022-06-28 08:47:42', 1),
(21, '::1', 'verdysas@gmail.com', 4, '2022-06-28 18:41:43', 1),
(22, '::1', 'verdysas@gmail.com', 4, '2022-06-28 20:02:12', 1),
(23, '::1', 'verdysas@gmail.com', NULL, '2022-06-28 21:44:59', 0),
(24, '::1', 'verdysas@gmail.com', NULL, '2022-06-28 21:45:11', 0),
(25, '::1', 'verdysas@gmail.com', 4, '2022-06-28 21:46:15', 1),
(26, '::1', 'admin123', NULL, '2022-06-28 21:53:29', 0),
(27, '::1', 'verdysas@gmail.com', 4, '2022-06-28 21:53:57', 1),
(28, '::1', 'verdysas@gmail.com', 4, '2022-06-30 21:42:38', 1),
(29, '::1', 'chaakraconsulting@gmail.com', 5, '2022-06-30 22:10:10', 1),
(30, '::1', 'admin123', NULL, '2022-06-30 22:57:01', 0),
(31, '::1', 'verdysas@gmail.com', NULL, '2022-06-30 22:57:48', 0),
(32, '::1', 'admin123', NULL, '2022-06-30 22:57:58', 0),
(33, '::1', 'chaakraconsulting@gmail.com', 5, '2022-06-30 22:58:06', 1),
(34, '::1', 'admin123', NULL, '2022-06-30 23:00:47', 0),
(35, '::1', 'chaakraconsulting@gmail.com', 5, '2022-06-30 23:01:15', 1),
(36, '::1', 'admin123@gmail.com', 6, '2022-06-30 23:01:36', 1),
(37, '::1', 'admin123', NULL, '2022-06-30 23:04:22', 0),
(38, '::1', 'verdysas@gmail.com', 11, '2022-07-01 00:18:00', 1),
(39, '::1', 'verdysas@gmail.com', 11, '2022-07-01 00:33:19', 1),
(40, '::1', 'verdysas@gmail.com', 12, '2022-07-01 01:05:21', 1),
(41, '::1', 'verdysas@gmail.com', 12, '2022-07-01 01:39:33', 1),
(42, '::1', 'chaakraconsulting@gmail.com', 5, '2022-07-01 01:40:54', 1),
(43, '::1', 'verdysas@gmail.com', 12, '2022-07-01 01:42:08', 1),
(44, '::1', 'verdysas@gmail.com', 12, '2022-07-01 01:54:57', 1),
(45, '::1', 'sasmekabesat@gmail.com', 13, '2022-07-01 02:54:31', 1),
(46, '::1', 'verdysas@gmail.com', 12, '2022-07-01 03:04:20', 1),
(47, '::1', 'verdysas@gmail.com', 12, '2022-07-01 03:26:28', 1),
(48, '::1', 'sasmekabesat@gmail.com', 13, '2022-07-01 04:47:31', 1),
(49, '::1', 'chaakraconsulting@gmail.com', 5, '2022-07-01 04:49:44', 1),
(50, '::1', 'verdysas@gmail.com', 12, '2022-07-01 20:19:12', 1),
(51, '::1', 'sasmekabesat@gmail.com', 13, '2022-07-01 22:08:15', 1),
(52, '::1', 'verdysas@gmail.com', 12, '2022-07-01 22:15:50', 1),
(53, '::1', 'sasmekabesat@gmail.com', 13, '2022-07-01 22:17:00', 1),
(54, '::1', 'verdysas@gmail.com', 12, '2022-07-01 22:26:40', 1),
(55, '::1', 'verdysas@gmail.com', 12, '2022-07-03 22:27:49', 1),
(56, '::1', 'verdysas@gmail.com', 12, '2022-07-04 02:16:09', 1),
(57, '::1', 'verdysas@gmail.com', 12, '2022-07-04 09:22:01', 1),
(58, '::1', 'verdysas@gmail.com', 12, '2022-07-04 20:28:45', 1),
(59, '::1', 'verdysas@gmail.com', 12, '2022-07-05 01:52:47', 1),
(60, '::1', 'verdysas@gmail.com', 12, '2022-07-06 10:17:20', 1),
(61, '::1', 'verdysas@gmail.com', 12, '2022-07-06 20:36:44', 1),
(62, '139.228.170.191', 'verdysas@gmail.com', 12, '2022-07-07 22:46:58', 1),
(63, '139.228.170.191', 'verdysas@gmail.com', 12, '2022-07-07 22:53:38', 1),
(64, '139.228.170.191', 'cahyadi22599@gmail.com', NULL, '2022-07-07 22:58:33', 0),
(65, '139.228.170.191', 'Cahyadi Setya Nugraha', NULL, '2022-07-07 22:58:52', 0),
(66, '139.228.170.191', 'Cahyadi Setya Nugraha', NULL, '2022-07-07 22:59:15', 0),
(67, '139.228.170.191', 'cahyadi22599@gmail.com', 25, '2022-07-07 23:01:37', 1),
(68, '139.228.170.191', 'verdysas@gmail.com', 12, '2022-07-07 23:03:54', 1),
(69, '139.228.170.191', 'verdysas@gmail.com', 12, '2022-07-07 23:08:31', 1),
(70, '139.228.170.191', 'verdysas@gmail.com', 12, '2022-07-07 23:31:18', 1),
(71, '139.228.170.191', 'verdysas@gmail.com', 12, '2022-07-07 23:35:42', 1),
(72, '139.228.170.191', 'sasmekabesat@gmail.com', 13, '2022-07-07 23:36:10', 1),
(73, '139.228.170.191', 'verdysas@gmail.com', 12, '2022-07-08 01:02:58', 1),
(74, '139.228.170.191', 'cahyadi22599@gmail.com', 25, '2022-07-08 04:02:24', 1),
(75, '202.67.40.226', 'verdysas@gmail.com', 12, '2022-07-09 05:39:04', 1),
(76, '202.67.40.235', 'verdysas@gmail.com', 12, '2022-07-10 11:54:58', 1),
(77, '116.206.40.69', 'verdysas@gmail.com', 12, '2022-07-10 22:10:19', 1),
(78, '139.228.170.191', 'sasmekabesat@gmail.com', 26, '2022-07-11 21:05:04', 1),
(79, '139.228.170.191', 'verdysas@gmail.com', 12, '2022-07-11 21:10:46', 1),
(80, '139.228.170.191', 'verdysas@gmail.com', 12, '2022-07-18 21:08:15', 1),
(81, '140.213.48.227', 'verdysas@gmail.com', 12, '2022-07-18 21:27:13', 1),
(82, '140.213.48.227', 'verdysas@gmail.com', 12, '2022-07-18 21:27:28', 1),
(83, '139.228.170.191', 'verdysas@gmail.com', 12, '2022-07-19 01:41:17', 1),
(84, '139.228.170.191', 'verdysas@gmail.com', 12, '2022-07-19 20:52:17', 1),
(85, '139.228.170.191', 'sasmeka', NULL, '2022-07-19 21:07:24', 0),
(86, '139.228.170.191', 'sasmekabesat@gmail.com', 26, '2022-07-19 21:07:47', 1),
(87, '139.228.170.191', 'verdysas@gmail.com', 12, '2022-07-22 01:59:56', 1),
(88, '139.228.170.191', 'chaakraconsulting@gmail.com', 5, '2022-07-22 22:18:06', 1),
(89, '112.215.243.119', 'verdysas@gmail.com', 12, '2022-07-24 03:13:43', 1),
(90, '112.215.243.119', 'chaakraconsulting@gmail.com', 5, '2022-07-24 03:13:57', 1),
(91, '112.215.243.119', 'sasmeka', NULL, '2022-07-24 03:14:17', 0),
(92, '112.215.243.119', 'verdysas@gmail.com', 12, '2022-07-24 03:14:24', 1),
(93, '112.215.243.119', 'sasmekabesat@gmail.com', 26, '2022-07-24 03:15:01', 1),
(94, '112.215.243.119', 'verdysas@gmail.com', 12, '2022-07-24 04:01:26', 1),
(95, '112.215.242.47', 'verdysas@gmail.com', 12, '2022-07-27 09:48:54', 1),
(96, '36.68.223.94', 'chaakraconsulting@gmail.com', 5, '2022-08-22 01:41:38', 1),
(97, '36.68.223.94', 'chaakra-consulting', NULL, '2022-08-22 01:42:02', 0),
(98, '36.68.223.94', 'chaakraconsulting@gmail.com', 5, '2022-08-22 01:42:12', 1),
(99, '36.68.223.94', 'verdysas@gmail.com', 12, '2022-08-22 01:43:55', 1),
(100, '36.68.218.38', 'verdysas@gmail.com', 12, '2022-08-23 21:54:56', 1),
(101, '36.68.218.38', 'verdysas@gmail.com', 12, '2022-08-23 23:25:36', 1),
(102, '36.68.218.38', 'chaakraconsulting@gmail.com', 5, '2022-08-24 02:55:35', 1),
(103, '180.247.115.69', 'verdysas@gmail.com', 12, '2022-08-25 03:25:47', 1),
(104, '180.247.115.69', 'chaakraconsulting@gmail.com', 5, '2022-08-25 03:47:24', 1),
(105, '180.247.115.69', 'chaakraconsulting@gmail.com', 5, '2022-08-25 03:48:18', 1),
(106, '180.247.115.69', 'Chaakra Conulting', NULL, '2022-08-25 04:04:38', 0),
(107, '180.247.115.69', 'oldheva@chaakraconsulting.com', 30, '2022-08-25 04:04:58', 1),
(108, '180.247.115.69', 'adm@chaakraconsulting.com', 5, '2022-08-25 04:06:05', 1),
(109, '180.247.115.69', 'gigihprihantono@chaakraconsulting.com', 34, '2022-08-25 04:12:55', 1),
(110, '36.68.217.226', 'verdisasmeka@chaakraconsulting.com', 32, '2022-08-26 21:23:12', 1),
(111, '36.68.217.226', 'cahyadisetyanugraha@chaakraconsulting.com', 29, '2022-08-26 21:26:37', 1),
(112, '110.138.202.224', 'cahyadisetyanugraha@chaakraconsulting.com', 29, '2022-08-29 23:48:16', 1),
(113, '36.85.16.135', 'cahyadi22599@gmail.com', NULL, '2022-08-31 00:51:36', 0),
(114, '36.85.16.135', 'Cahyadi Setya Nugraha', NULL, '2022-08-31 00:53:42', 0),
(115, '36.85.16.135', 'cahyadisetyanugraha@chaakraconsulting.com', 29, '2022-08-31 00:54:00', 1),
(116, '180.254.47.210', 'cahyadisetyanugraha@chaakraconsulting.com', 29, '2022-09-02 03:21:11', 1),
(117, '180.254.47.210', 'chaakraconsulting@gmail.com', NULL, '2022-09-02 03:21:37', 0),
(118, '180.254.47.210', 'chaakraconsulting@gmail.com', NULL, '2022-09-02 03:21:50', 0),
(119, '180.254.47.210', 'adm@chaakraconsulting.com', 5, '2022-09-02 03:23:54', 1),
(120, '180.254.47.210', 'verdisasmeka@chaakraconsulting.com', 32, '2022-09-02 03:24:09', 1),
(121, '180.254.47.210', 'gigihprihantono@chaakraconsulting.com', 34, '2022-09-02 03:24:29', 1),
(122, '180.253.161.126', 'gigihprihantono@chaakraconsulting.com', 34, '2022-09-02 18:59:17', 1),
(123, '36.68.223.78', 'cahyadisetyanugraha@chaakraconsulting.com', 29, '2022-09-02 20:19:28', 1),
(124, '36.68.223.78', 'khorina@chaakraconsulting.com', 28, '2022-09-02 20:29:41', 1),
(125, '36.81.193.102', 'adm@chaakraconsulting.com', 5, '2022-09-09 22:28:38', 1),
(126, '36.81.193.102', 'adm@chaakraconsulting.com', 5, '2022-09-09 22:28:38', 1),
(127, '36.81.193.102', 'sriandiani@chaakraconsulting.com', 33, '2022-09-09 22:52:02', 1),
(128, '36.81.193.102', 'sriandiani@chaakraconsulting.com', 33, '2022-09-09 22:53:01', 1),
(129, '36.81.193.102', 'sriandiani@chaakraconsulting.com', 33, '2022-09-09 22:53:22', 1),
(130, '36.81.193.102', 'sriandiani@chaakraconsulting.com', 33, '2022-09-09 22:55:15', 1),
(131, '36.81.193.102', 'adm@chaakraconsulting.com', NULL, '2022-09-09 22:55:31', 0),
(132, '36.81.193.102', 'adm@chaakraconsulting.com', 5, '2022-09-09 22:55:43', 1),
(133, '125.167.87.80', 'adm@chaakraconsulting.com', 5, '2022-09-17 00:25:06', 1),
(134, '125.167.87.80', 'galang@gmail.com', 37, '2022-09-17 00:27:47', 1),
(135, '125.167.87.80', 'oldheva@chaakraconsulting.com', 30, '2022-09-17 00:28:28', 1),
(136, '175.158.38.88', 'galang', NULL, '2022-09-17 01:13:46', 0),
(137, '175.158.38.88', 'galang@gmail.com', 37, '2022-09-17 01:14:01', 1),
(138, '114.79.20.124', 'oldheva@chaakraconsulting.com', 30, '2022-09-17 01:28:30', 1),
(139, '175.158.38.88', 'galanggerald88@gmail.com', 37, '2022-09-17 23:26:06', 1),
(140, '180.247.76.160', 'adm@chaakraconsulting.com', 5, '2022-09-19 02:00:10', 1),
(141, '175.158.38.88', 'galanggerald88@gmail.com', 37, '2022-09-19 10:17:07', 1),
(142, '36.74.159.198', 'khorina@chaakraconsulting.com', 28, '2022-09-23 21:28:53', 1),
(143, '36.74.159.198', 'oldheva@chaakraconsulting.com', 30, '2022-09-23 22:57:38', 1),
(144, '36.74.166.17', 'khorina', NULL, '2022-10-12 20:45:18', 0),
(145, '36.74.166.17', 'khorina@chaakraconsulting.com', 28, '2022-10-12 20:45:38', 1),
(146, '36.74.166.17', 'verdysas@gmail.com', NULL, '2022-10-12 20:49:38', 0),
(147, '36.74.166.17', 'Verdi Sasmeka', NULL, '2022-10-12 20:50:01', 0),
(148, '36.84.219.133', 'khorina@chaakraconsulting.com', 28, '2022-10-20 03:53:52', 1),
(149, '36.84.219.133', 'chaakra consulting', NULL, '2022-10-20 04:19:58', 0),
(150, '36.84.219.133', 'adm@chaakraconsulting.com', 5, '2022-10-20 04:20:37', 1),
(151, '180.247.233.67', 'adm@chaakraconsulting.com', 5, '2022-10-20 20:33:09', 1),
(152, '180.251.102.10', 'sriandiani@chaakraconsulting.com', 33, '2022-10-25 02:51:54', 1),
(153, '180.251.102.10', 'khorina@chaakraconsulting.com', 28, '2022-10-25 02:54:17', 1),
(154, '36.68.222.180', 'oldheva@chaakraconsulting.com', 30, '2022-10-26 20:16:04', 1),
(155, '36.68.222.180', 'khorina', NULL, '2022-10-26 20:19:14', 0),
(156, '36.68.222.180', 'khorina@chaakraconsulting.com', 28, '2022-10-26 20:19:36', 1),
(157, '36.68.222.180', 'adm@chaakraconsulting.com', 5, '2022-10-27 02:57:19', 1),
(158, '36.81.149.146', 'gigih prihantono', NULL, '2022-11-16 19:40:12', 0),
(159, '36.81.149.146', 'adm@chaakraconsulting.com', 5, '2022-11-16 19:40:52', 1),
(160, '36.81.149.146', 'Gigih Prihantono', NULL, '2022-11-16 19:41:17', 0),
(161, '36.81.149.146', 'verdysas@gmail.com', NULL, '2022-11-16 19:55:48', 0),
(162, '36.81.149.146', 'verdysas@gmail.com', NULL, '2022-11-16 19:55:53', 0),
(163, '36.81.149.146', 'verdysas@gmail.com', NULL, '2022-11-16 19:55:58', 0),
(164, '36.81.149.146', 'verdysas@gmail.com', NULL, '2022-11-16 21:49:35', 0),
(165, '36.81.149.146', 'verdysas@gmail.com', NULL, '2022-11-16 21:49:41', 0),
(166, '36.81.149.146', 'verdysas@gmail.com', NULL, '2022-11-16 21:49:48', 0),
(167, '36.81.149.146', 'verdi', NULL, '2022-11-16 21:50:29', 0),
(168, '36.81.149.146', 'verdi', NULL, '2022-11-16 21:50:36', 0),
(169, '36.81.149.146', 'verdysas@gmail.com', 32, '2022-11-16 22:15:31', 1),
(170, '103.209.187.54', 'gigihprihantono@chaakraconsulting.com', 34, '2022-11-17 17:06:17', 1),
(171, '125.164.131.231', 'verdysas@gmail.com', 32, '2022-11-18 22:30:50', 1),
(172, '125.164.131.231', 'oldheva@chaakraconsulting.com', 30, '2022-11-18 23:04:27', 1),
(173, '180.251.95.134', 'khorina@chaakraconsulting.com', 28, '2022-11-20 19:47:32', 1),
(174, '180.251.95.134', 'oldheva@chaakraconsulting.com', 30, '2022-11-20 19:57:58', 1),
(175, '125.164.250.109', 'oldheva@chaakraconsulting.com', 30, '2022-11-21 20:14:42', 1),
(176, '125.164.250.109', 'khorina@chaakraconsulting.com', 28, '2022-11-21 22:11:51', 1),
(177, '180.247.58.240', 'oldheva@chaakraconsulting.com', 30, '2022-11-22 22:24:31', 1),
(178, '2001:448a:50e2:3ba5:e180:6bf5:5547:4abd', 'oldheva@chaakraconsulting.com', 30, '2022-11-24 02:45:00', 1),
(179, '2001:448a:50e2:3ba5:d91d:331f:7961:f647', 'khorina@chaakraconsulting.com', 28, '2022-11-24 02:45:53', 1),
(180, '2001:448a:50e0:8ad5:bdff:ef50:9a7c:6424', 'khorina@chaakraconsulting.com', 28, '2022-11-24 19:15:20', 1),
(181, '2001:448a:50e0:8ad5:d27:a4d3:820:6dc3', 'oldheva@chaakraconsulting.com', 30, '2022-11-25 00:13:13', 1),
(182, '2001:448a:50e1:cf72:602e:876d:c83b:16ef', 'oldheva@chaakraconsulting.com', 30, '2022-11-25 21:11:11', 1),
(183, '2001:448a:50e1:cf72:7059:d1ae:2a9c:cbd4', 'verdysas@gmail.com', 32, '2022-11-25 23:06:55', 1),
(184, '2001:448a:50e0:ddcb:9c3c:ccbd:30b2:d9fa', 'khorina@chaakraconsulting.com', 28, '2022-11-27 23:05:04', 1),
(185, '2001:448a:50e0:ddcb:4d3a:d985:5b3f:53d8', 'verdysas@gmail.com', 32, '2022-11-27 23:05:33', 1),
(186, '2001:448a:50e1:fcfc:f4af:f5e3:ba28:8409', 'khorina@chaakraconsulting.com', 28, '2022-11-28 19:04:59', 1),
(187, '2001:448a:5021:9d4:7158:d8a6:9f2b:315e', 'gigihprihantono@chaakraconsulting.com', 34, '2022-11-29 07:58:36', 1),
(188, '180.253.162.191', 'chaakra consulting', NULL, '2022-11-29 08:01:47', 0),
(189, '180.253.162.191', 'chaakraconsulting@gmail.com', NULL, '2022-11-29 08:02:03', 0),
(190, '180.253.162.191', 'gigih', NULL, '2022-11-29 08:02:26', 0),
(191, '180.253.162.191', 'adm@chaakraconsulting.com', 5, '2022-11-29 08:03:47', 1),
(192, '::1', 'adm@chaakraconsulting.com', 5, '2022-11-29 08:09:51', 1),
(193, '2001:448a:50e0:24df:f851:8bc9:8e6b:dcf5', 'khorina@chaakraconsulting.com', 28, '2022-11-29 20:02:09', 1),
(194, '2001:448a:50e0:2e70:f55e:db15:4266:e974', 'khorina@chaakraconsulting.com', 28, '2022-12-01 21:11:35', 1),
(195, '2001:448a:50e2:6b4d:b8a9:6c13:f2ca:2545', 'sriandiani@chaakraconsulting.com', 33, '2022-12-02 03:37:27', 1),
(196, '2001:448a:50e1:8dcc:d554:7ca7:e0bb:c1b3', 'sriandiani@chaakraconsulting.com', 33, '2022-12-02 17:44:02', 1),
(197, '139.255.10.66', 'gigihprihantono@chaakraconsulting.com', 34, '2022-12-03 22:52:15', 1),
(198, '2001:448a:50e1:12b9:b169:3f28:f673:26a2', 'sriandiani@chaakraconsulting.com', 33, '2022-12-05 03:45:09', 1),
(199, '114.5.111.1', 'gigihprihantono@chaakraconsulting.com', 34, '2022-12-05 04:48:51', 1),
(200, '2001:448a:50e0:9b28:f85a:896f:cc81:ad0c', 'khorina@chaakraconsulting.com', 28, '2022-12-06 20:49:38', 1),
(201, '2001:448a:50e1:e56:757c:a8ba:4641:d63', 'adm@chaakraconsulting.com', 5, '2022-12-11 20:28:56', 1),
(202, '2001:448a:50e1:e56:757c:a8ba:4641:d63', 'adm@chaakraconsulting.com', 5, '2022-12-11 20:38:11', 1),
(203, '2001:448a:50e1:e56:757c:a8ba:4641:d63', 'adm@chaakraconsulting.com', 5, '2022-12-11 20:56:04', 1),
(204, '2001:448a:50e1:e56:c13f:75ed:fcd3:7a37', 'khorina@chaakraconsulting.com', 28, '2022-12-11 20:59:34', 1),
(205, '2001:448a:50e1:e56:757c:a8ba:4641:d63', 'verdysas@gmail.com', 32, '2022-12-11 21:10:43', 1),
(206, '2001:448a:50e1:e56:757c:a8ba:4641:d63', 'adm@chaakraconsulting.com', 5, '2022-12-11 21:22:07', 1),
(207, '2001:448a:50e1:e56:757c:a8ba:4641:d63', 'verdysas@gmail.com', NULL, '2022-12-11 22:18:38', 0),
(208, '2001:448a:50e1:e56:757c:a8ba:4641:d63', 'verdysas@gmail.com', NULL, '2022-12-11 22:18:46', 0),
(209, '2001:448a:50e1:e56:757c:a8ba:4641:d63', 'verdysas@gmail.com', NULL, '2022-12-11 22:19:00', 0),
(210, '2001:448a:50e1:e56:757c:a8ba:4641:d63', 'verdysas@gmail.com', NULL, '2022-12-11 22:19:03', 0),
(211, '2001:448a:50e1:e56:757c:a8ba:4641:d63', 'verdysas@gmail.com', 32, '2022-12-11 22:19:42', 1),
(212, '2001:448a:50e1:e56:757c:a8ba:4641:d63', 'verdysas@gmail.com', 32, '2022-12-11 22:52:53', 1),
(213, '2001:448a:50e1:e56:757c:a8ba:4641:d63', 'verdysas@gmail.com', 32, '2022-12-11 22:52:59', 1),
(214, '2001:448a:50e1:e56:757c:a8ba:4641:d63', 'verdysas@gmail.com', 32, '2022-12-11 22:53:20', 1),
(215, '2001:448a:50e1:e56:757c:a8ba:4641:d63', 'verdysas@gmail.com', 32, '2022-12-11 22:53:35', 1),
(216, '2001:448a:50e0:2f8b:e813:a082:8c8b:2a1b', 'adm@chaakraconsulting.com', 5, '2022-12-13 19:37:39', 1),
(217, '2001:448a:50e0:2f8b:e813:a082:8c8b:2a1b', 'ayun', NULL, '2022-12-13 19:38:22', 0),
(218, '2001:448a:50e0:2f8b:e813:a082:8c8b:2a1b', 'ayun@chaakraconsulting.com', 38, '2022-12-13 19:38:33', 1),
(219, '2001:448a:50e0:2f8b:923:e1a3:d10a:4d0f', 'ayun@chaakraconsulting.com', NULL, '2022-12-13 20:01:18', 0),
(220, '2001:448a:50e0:2f8b:923:e1a3:d10a:4d0f', 'ayun@chaakraconsulting.com', 38, '2022-12-13 20:01:38', 1),
(221, '2001:448a:50e1:b091:1919:fd75:9966:e38f', 'sriandiani@chaakraconsulting.com', 33, '2022-12-16 01:29:12', 1),
(222, '2001:448a:50e0:b45a:450f:d73:6d9:f373', 'sriandiani@chaakraconsulting.com', 33, '2022-12-18 19:04:47', 1),
(223, '2001:448a:50e1:8c13:75d3:1441:f817:edb', 'verdysas@gmail.com', 32, '2022-12-19 22:18:44', 1),
(224, '2001:448a:50e1:8c13:75d3:1441:f817:edb', 'adm@chaakraconsulting.com', 5, '2022-12-19 22:21:23', 1),
(225, '2001:448a:50e1:8d86:6404:7:2982:6285', 'khorina@chaakraconsulting.com', 28, '2022-12-21 01:03:21', 1),
(226, '2001:448a:50e1:8d86:6404:7:2982:6285', 'khorina@chaakraconsulting.com', 28, '2022-12-21 03:29:13', 1),
(227, '180.246.9.204', 'ayun@chaakraconsulting.com', 38, '2022-12-21 05:02:32', 1),
(228, '202.67.40.11', 'adm@chaakraconsulting.com', 5, '2022-12-21 05:07:43', 1),
(229, '2001:448a:50e0:5240:394f:bc6a:ccd6:d740', 'khorina@chaakraconsulting.com', 28, '2022-12-21 19:28:21', 1),
(230, '125.164.114.180', 'ayun@chaakraconsulting.com', 38, '2022-12-21 19:32:56', 1),
(231, '2001:448a:50e0:5240:5cb5:a9b:1d0a:abec', 'irfanni.fridana354@chaakra-consulting.com', NULL, '2022-12-21 19:38:17', 0),
(232, '182.253.66.242', 'sriandiani@chaakraconsulting.com', 33, '2022-12-21 19:41:21', 1),
(233, '2001:448a:50e0:5240:5cb5:a9b:1d0a:abec', 'irfani.fridana@chaakraconsulting.com', NULL, '2022-12-21 19:42:33', 0),
(234, '2001:448a:50e0:5240:5cb5:a9b:1d0a:abec', 'irfani.fridana@chaakraconsulting.com', NULL, '2022-12-21 19:45:03', 0),
(235, '125.164.114.180', 'irfani.fridana@chaakraconsulting.com', NULL, '2022-12-21 19:46:16', 0),
(236, '2001:448a:50e0:5240:5cb5:a9b:1d0a:abec', 'irfani.fridana@chaakraconsulting.com', NULL, '2022-12-21 19:47:22', 0),
(237, '2001:448a:50e0:5240:5cb5:a9b:1d0a:abec', 'irfani.fridana@chaakraconsulting.com', NULL, '2022-12-21 19:47:50', 0),
(238, '2001:448a:50e0:5240:5cb5:a9b:1d0a:abec', 'irfani.fridana@chaakraconsulting.com', NULL, '2022-12-21 19:51:39', 0),
(239, '2001:448a:50e0:5240:5cb5:a9b:1d0a:abec', 'irfani.fridana354@gmail.com', NULL, '2022-12-21 19:51:57', 0),
(240, '202.67.41.4', 'adm@chaakraconsulting.com', 5, '2022-12-21 20:12:21', 1),
(241, '2001:448a:50e0:5240:35f1:c6f6:cdf4:6e32', 'adm@chaakraconsulting.com', 5, '2022-12-22 01:10:41', 1),
(242, '125.164.114.180', 'irfani.fridana354@gmail.com', 39, '2022-12-22 01:11:51', 1),
(243, '2001:448a:50e0:e00c:25be:3420:99af:3dc', 'sriandiani@chaakraconsulting.com', 33, '2022-12-22 08:59:29', 1),
(244, '2001:448a:50e0:8676:6d32:4942:383:3f81', 'ayun@chaakraconsulting.com', 38, '2022-12-22 19:14:51', 1),
(245, '2001:448a:50e0:8676:d5b2:6295:28e4:7ff', 'khorina@chaakraconsulting.com', 28, '2022-12-22 19:18:58', 1),
(246, '2001:448a:50e0:8676:6d32:4942:383:3f81', 'ayun@chaakraconsulting.com', 38, '2022-12-22 23:13:40', 1),
(247, '2001:448a:50e1:d5e0:1c96:5198:a828:e4d7', 'adm@chaakraconsulting.com', 5, '2022-12-25 23:09:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_reset_attempts`
--

INSERT INTO `auth_reset_attempts` (`id`, `email`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-06-30 21:55:51'),
(2, 'verdysas@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '1f298148f1e293c4f9fe0f4c9e44bea6', '2022-07-01 00:33:07'),
(3, 'verdysas@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'ae8d7265cad85eca7dfd00324e168384', '2022-07-01 03:15:43'),
(4, 'verdisasmeka@chaakraconsulting.com', '36.81.149.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '565f83df7720ff390508e277d23f4dd6', '2022-11-16 22:10:23'),
(5, 'verdisasmeka@chaakraconsulting.com', '36.81.149.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '565f83df7720ff390508e277d23f4dd6', '2022-11-16 22:10:45'),
(6, 'verdisasmeka@chaakraconsulting.com', '36.81.149.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '0d7cbc9bd0a1190ede2b40160d40ab1e', '2022-11-16 22:12:19'),
(7, 'verdisasmeka@chaakraconsulting.com', '36.81.149.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '2e3a5392e70754b773d8f7313d728203', '2022-11-16 22:13:14'),
(8, 'verdysas@gmail.com', '36.81.149.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '889b8cd4526aada7d2967e9bfb1ddc4b', '2022-11-16 22:15:18'),
(9, 'verdysas@gmail.com', '2001:448a:50e1:e56:757c:a8ba:4641:d63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '31bcea2c48df9b1ca42fc83204e889c1', '2022-12-11 22:19:36');

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `data_project`
--

CREATE TABLE `data_project` (
  `id` int(11) NOT NULL,
  `tahun` varchar(5) NOT NULL,
  `nama` text NOT NULL,
  `create_at` datetime DEFAULT NULL,
  `id_pembuat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_project`
--

INSERT INTO `data_project` (`id`, `tahun`, `nama`, `create_at`, `id_pembuat`) VALUES
(23, '2022', 'DATA SUMATERA', '2022-08-31 12:54:44', 29),
(24, '2022', 'Pelatiha PT.Indonesia Power', '2022-09-03 08:30:15', 28),
(25, '2022', 'Sosmed Chaakra', '2022-09-10 10:56:41', 33),
(26, '2022', 'Road Map GO TANI Pertanian', '2022-09-17 12:29:00', 30),
(27, '2022', 'Kode HS8 Udang', '2022-09-24 11:15:38', 30),
(28, '2022', 'HS8 Udang', '2022-10-20 15:54:26', 28),
(29, '2022', 'PPT Statistik-Metadata', '2022-10-25 14:52:33', 33),
(30, '2022', 'Bunda Puspa', '2022-10-27 08:16:46', 30),
(32, '2022', 'Dokumentasi Hasil Survey Sentra Ikan Romokalisari', '2022-11-17 11:17:51', 32),
(33, '2022', 'Dokumentasi Hasil Survey Mangrove Wonorejo', '2022-11-19 11:31:22', 32),
(36, '2022', 'Video slide show pameran Bunda Puspa 3 Desember 2022', '2022-12-02 16:38:01', 33),
(37, '2022', 'e-sertifikat peserta pameran bunda puspa', '2022-12-16 14:29:43', 33);

-- --------------------------------------------------------

--
-- Table structure for table `detail_data_project`
--

CREATE TABLE `detail_data_project` (
  `id` int(11) NOT NULL,
  `nama_file` varchar(255) DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `id_pembuat` int(11) DEFAULT NULL,
  `id_project` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `judul` text DEFAULT NULL,
  `ukuran_file` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_data_project`
--

INSERT INTO `detail_data_project` (`id`, `nama_file`, `pesan`, `id_pembuat`, `id_project`, `create_at`, `judul`, `ukuran_file`) VALUES
(5, '23 - 29 - 2022-09-02 08.22.01pm - JPF_2019.jpg', '', 29, 23, '2022-09-03 08:22:01', 'Peta Jumlah Tenaga Kerja Formal Kabupaten/Kota Sumatera 2019', 7570120),
(6, '23 - 29 - 2022-09-02 08.23.09pm - JPF_2021.jpg', '', 29, 23, '2022-09-03 08:23:09', 'Peta Jumlah Tenaga Kerja Formal Kabupaten/Kota Sumatera 2021', 7533190),
(7, '23 - 29 - 2022-09-02 08.24.01pm - JPI_2019.jpg', '', 29, 23, '2022-09-03 08:24:01', 'Peta Jumlah Tenaga Kerja Informal Kabupaten/Kota Sumatera 2019', 7609570),
(8, '23 - 29 - 2022-09-02 08.24.37pm - JPI_2021.jpg', '', 29, 23, '2022-09-03 08:24:37', 'Peta Jumlah Tenaga Kerja Informal Kabupaten/Kota Sumatera 2021', 7574770),
(9, '23 - 29 - 2022-09-02 08.25.35pm - RUI_2019.jpg', '', 29, 23, '2022-09-03 08:25:35', 'Peta Upah Minimum Rill Kabupaten/Kota Sumatera 2019', 7590510),
(10, '23 - 29 - 2022-09-02 08.26.16pm - RUI_2021.jpg', '', 29, 23, '2022-09-03 08:26:16', 'Peta Upah Minimum Rill Kabupaten/Kota Sumatera 2021', 7579510),
(11, '23 - 29 - 2022-09-02 08.27.13pm - TPAK_2019 j.jpg', '', 29, 23, '2022-09-03 08:27:13', 'Peta Tingkat Partisipasi Angkatan Kerja Kabupaten/Kota Sumatera 2019', 7592440),
(12, '23 - 29 - 2022-09-02 08.28.04pm - TPAK_2021 j.jpg', '', 29, 23, '2022-09-03 08:28:04', 'Peta Tingkat Partisipasi Angkatan Kerja Kabupaten/Kota Sumatera 2021', 7650390),
(13, '23 - 29 - 2022-09-02 08.31.15pm - TPT_2019.jpg', '', 29, 23, '2022-09-03 08:31:15', 'Peta Tingkat Pengangguran Terbuka Kabupaten/Kota Sumatera 2019', 7718710),
(14, '23 - 29 - 2022-09-02 08.32.26pm - TPT_2021.jpg', '', 29, 23, '2022-09-03 08:32:26', 'Peta Tingkat Pengangguran Terbuka Kabupaten/Kota Sumatera 2021', 7664960),
(15, '25 - 33 - 2022-09-09 10.57.22pm - 20220910 Notulensi Rapat Sosmed.doc', '', 33, 25, '2022-09-10 10:57:22', 'Notulensi rapat sosmed 10 Sept 2022', 270336),
(16, '26 - 30 - 2022-09-17 12.30.48am - Erdkk 2022 Per Kecamatan.rar', '', 30, 26, '2022-09-17 12:30:48', 'Erdkk 2022 Per Kecamatan', 537058),
(17, '26 - 30 - 2022-09-17 12.32.56am - RATA-RATA LUAS LAHAN TANAM PER POKTAN.xlsx', '', 30, 26, '2022-09-17 12:32:56', 'Rata-Rata Luas Lahan Tanam', 307591),
(18, '26 - 30 - 2022-09-17 12.33.18am - REKAP KABUPATEN GRESIK TAHUN 2022.xlsx', '', 30, 26, '2022-09-17 12:33:18', 'Rekap Kabupaten Gresik', 46898),
(19, '26 - 30 - 2022-09-17 12.33.46am - BUKU JUKNIS BANTUAN HIBAH PPM 2022.pdf', '', 30, 26, '2022-09-17 12:33:46', 'Buku Juknis', 1327940),
(20, '27 - 30 - 2022-09-23 11.16.18pm - 05072022. HS8 Pengolompokkan Pohon Industri.xlsx', '', 30, 27, '2022-09-24 11:16:18', 'Pengelompokkan Pohon Industri', 307914),
(21, '27 - 30 - 2022-09-23 11.16.38pm - DISKUSI AWAL STRATEGI PENINGKATAN DAYA SAING INDUSTRI PROVINSI.pptx', '', 30, 27, '2022-09-24 11:16:38', 'Diskusi Awal', 2873430),
(22, '27 - 30 - 2022-09-23 11.17.54pm - POHON INDUSTRI FIX_ISI+COVER.pdf', '', 30, 27, '2022-09-24 11:17:56', 'Pohon Industri', 30155500),
(23, '27 - 30 - 2022-09-23 11.23.12pm - rev KAK PROJECT PROSPECTUS Industri Udang (edit) (4).docx', '', 30, 27, '2022-09-24 11:23:12', 'KAK project ', 186962),
(24, '24 - 28 - 2022-09-24 12.16.52am - part 1.zip', '', 28, 24, '2022-09-24 12:17:01', '', 112428000),
(25, '24 - 28 - 2022-09-24 12.52.19am - PART 2.zip', '', 28, 24, '2022-09-24 12:52:28', '', 111091000),
(26, '28 - 28 - 2022-10-20 03.57.23am - video1624615498.mp4', '', 28, 28, '2022-10-20 15:57:29', 'Recording zoom', 84608400),
(27, '28 - 28 - 2022-10-20 04.12.51am - audio1624615498.m4a', '', 28, 28, '2022-10-20 16:12:52', '', 20867800),
(28, '29 - 33 - 2022-10-25 02.53.31am - Materi Metadata 1.pptx', '', 33, 29, '2022-10-25 14:53:31', 'PPT Materi Metadata', 3436050),
(29, '29 - 33 - 2022-10-25 02.53.59am - Final Standardisasi Data Herlina Sambodo 1.pptx', '', 33, 29, '2022-10-25 14:53:59', 'PPT Standardisasi Data', 3244660),
(30, '30 - 30 - 2022-10-26 08.22.16pm - PPM_PERDESA_SCORING_27102022.rar', '', 30, 30, '2022-10-27 08:22:19', 'Data Bunda Puspa', 44862300),
(31, '30 - 30 - 2022-10-26 08.27.38pm - 24102022. Fix Data Rekap Hasil Bunda Puspa.xlsx', '', 30, 30, '2022-10-27 08:27:38', 'Bunda Puspa', 23730),
(32, '30 - 30 - 2022-10-26 08.29.07pm - 27102022. Klasifikasi Checklis Bunda Puspa - Scoring II.xlsx', '', 30, 30, '2022-10-27 08:29:07', 'Bunda Puspa I', 105234),
(33, '30 - 30 - 2022-10-26 09.20.32pm - 25102022. Data Kategorisasi Bunda Puspa.xlsx', '', 30, 30, '2022-10-27 09:20:32', 'Rekap Bunda Puspa', 34053),
(34, '32 - 32 - 2022-11-16 10.24.21pm - Harga Tiket Wahana.jpeg', '', 32, 32, '2022-11-17 11:24:21', 'Harga Tiket Wahana', 311602),
(35, '32 - 32 - 2022-11-16 10.24.58pm - Parkir Motor.jpeg', '', 32, 32, '2022-11-17 11:24:58', 'Parkir Motor', 484574),
(36, '32 - 32 - 2022-11-16 10.25.17pm - Parkir Mobil 1.jpeg', '', 32, 32, '2022-11-17 11:25:17', 'Parkir Mobil 1', 382848),
(37, '32 - 32 - 2022-11-16 10.25.29pm - Parkir Mobil 2.jpeg', '', 32, 32, '2022-11-17 11:25:29', 'Parkir Mobil 2', 416732),
(38, '32 - 32 - 2022-11-16 10.26.06pm - Tempat Makan Depan.jpeg', '', 32, 32, '2022-11-17 11:26:06', 'Tempat Makan Depan', 370059),
(39, '32 - 32 - 2022-11-16 10.26.20pm - Tempat Makan Belakang.jpeg', '', 32, 32, '2022-11-17 11:26:20', 'Tempat Makan Belakang', 461620),
(40, '32 - 32 - 2022-11-16 10.27.05pm - Tambak Ikan.jpeg', '', 32, 32, '2022-11-17 11:27:05', 'Tambak Ikan', 431285),
(41, '32 - 32 - 2022-11-16 10.27.23pm - Area Perternakan 1.jpeg', '', 32, 32, '2022-11-17 11:27:23', 'Area Perternakan 1', 482658),
(42, '32 - 32 - 2022-11-16 10.27.35pm - Area Perternakan 2.jpeg', '', 32, 32, '2022-11-17 11:27:35', 'Area Perternakan 2', 362023),
(43, '32 - 32 - 2022-11-16 10.28.01pm - Wahana Jetski.jpeg', '', 32, 32, '2022-11-17 11:28:01', 'Wahana Jetski', 506040),
(44, '32 - 32 - 2022-11-16 10.28.21pm - Wahana ATV + Taman Bermain Anak.jpeg', '', 32, 32, '2022-11-17 11:28:21', 'Wahana ATV + Taman Bermain Anak', 443348),
(45, '32 - 32 - 2022-11-16 10.28.50pm - Stand Makanan.jpeg', '', 32, 32, '2022-11-17 11:28:50', 'Stand Makanan', 447004),
(46, '32 - 32 - 2022-11-16 10.29.15pm - Wahana Berkuda 1.jpeg', '', 32, 32, '2022-11-17 11:29:15', 'Wahana Berkuda 1', 388779),
(47, '32 - 32 - 2022-11-16 10.29.31pm - Wahana Berkuda 2.jpeg', '', 32, 32, '2022-11-17 11:29:31', 'Wahana Berkuda 2', 545772),
(48, '32 - 32 - 2022-11-16 10.29.58pm - Wahana Perahu 1.jpeg', '', 32, 32, '2022-11-17 11:29:58', 'Wahana Perahu', 416523),
(49, '32 - 32 - 2022-11-16 10.30.11pm - Wahana Skoci 1.jpeg', '', 32, 32, '2022-11-17 11:30:11', 'Wahana Skoci 1', 508868),
(50, '32 - 32 - 2022-11-16 10.30.22pm - Wahana Skoci 2.jpeg', '', 32, 32, '2022-11-17 11:30:22', 'Wahana Skoci 2', 572024),
(51, '33 - 32 - 2022-11-18 10.32.05pm - Tarif Parkir.jpeg', '', 32, 33, '2022-11-19 11:32:05', 'Tarif Parkir', 518471),
(52, '33 - 32 - 2022-11-18 10.32.15pm - Denah.jpeg', '', 32, 33, '2022-11-19 11:32:15', 'Denah', 410076),
(53, '33 - 32 - 2022-11-18 10.32.35pm - Pendopo.jpeg', '', 32, 33, '2022-11-19 11:32:35', 'Pendopo', 570247),
(54, '33 - 32 - 2022-11-18 10.32.56pm - Musholla.jpeg', '', 32, 33, '2022-11-19 11:32:56', 'Musholla', 283880),
(55, '33 - 32 - 2022-11-18 10.33.21pm - Sentra Kuliner (Depan).jpeg', '', 32, 33, '2022-11-19 11:33:21', 'Sentra Kuliner (Tampak Depan)', 468460),
(56, '33 - 32 - 2022-11-18 10.33.43pm - Sentra Kuliner (Dalam).jpeg', '', 32, 33, '2022-11-19 11:33:43', 'Sentra Kuliner (Tampak Dalam)', 295613),
(57, '33 - 32 - 2022-11-18 10.34.15pm - Pembibitan.jpeg', '', 32, 33, '2022-11-19 11:34:15', 'Pembibitan', 553151),
(58, '33 - 32 - 2022-11-18 10.34.33pm - Taman Bermain Anak.jpeg', '', 32, 33, '2022-11-19 11:34:33', 'Taman Bermain Anak', 604210),
(59, '33 - 32 - 2022-11-18 10.34.55pm - Parkir Motor.jpeg', '', 32, 33, '2022-11-19 11:34:55', 'Parkir Motor', 443229),
(60, '33 - 32 - 2022-11-18 10.35.13pm - Parkir Mobil.jpeg', '', 32, 33, '2022-11-19 11:35:13', 'Parkir Mobil', 444872),
(61, '33 - 32 - 2022-11-18 10.35.46pm - Pintu Masuk Ke Mangrove.jpeg', '', 32, 33, '2022-11-19 11:35:46', 'Pintu Masuk Mangrove', 494486),
(62, '33 - 32 - 2022-11-18 10.36.08pm - Kantor Pengelola atau Informasi.jpeg', '', 32, 33, '2022-11-19 11:36:08', 'Kantor Pengelola Atau Informasi', 464837),
(63, '33 - 32 - 2022-11-18 10.36.34pm - Rute setelah pintu masuk mangrove.jpeg', '', 32, 33, '2022-11-19 11:36:34', 'Rute Setelah Pintu Masuk Mangrove', 514861),
(64, '33 - 32 - 2022-11-18 10.36.46pm - Dermaga 1.jpeg', '', 32, 33, '2022-11-19 11:36:46', 'Dermaga 1', 557107),
(65, '33 - 32 - 2022-11-18 10.36.58pm - Dermaga 2.jpeg', '', 32, 33, '2022-11-19 11:36:58', 'Dermaga 2', 581172),
(66, '33 - 32 - 2022-11-18 10.37.25pm - Rute keluar melewati pembibitan.jpeg', '', 32, 33, '2022-11-19 11:37:25', 'Rute Keluar Melewati Pembibitan', 610165),
(67, '33 - 32 - 2022-11-18 10.37.50pm - Rute keluar melewati sentra kuliner.jpeg', '', 32, 33, '2022-11-19 11:37:50', 'Rute Keluar Melewati Sentra Kuliner', 542371),
(68, '33 - 32 - 2022-11-18 10.38.24pm - Spot foto 1.jpeg', '', 32, 33, '2022-11-19 11:38:24', 'Spot Foto 1', 514159),
(69, '33 - 32 - 2022-11-18 10.38.37pm - Spot Foto 2.jpeg', '', 32, 33, '2022-11-19 11:38:37', 'Spot Foto 2', 543315),
(70, '33 - 32 - 2022-11-18 10.38.50pm - Spot Foto 3.jpeg', '', 32, 33, '2022-11-19 11:38:50', 'Spot Foto 3', 563912),
(71, '33 - 32 - 2022-11-18 10.39.04pm - Spot Foto 4.jpeg', '', 32, 33, '2022-11-19 11:39:04', 'Spot Foto 4', 571076),
(72, '30 - 30 - 2022-11-18 11.05.39pm - 17112022. Profil 40 Peserta Bunda Puspa.docx', '', 30, 30, '2022-11-19 12:05:39', 'Profil 40 Bunda Puspa', 1853040),
(74, '30 - 30 - 2022-11-18 11.22.20pm - 10112022. Lampiran-Lampiran Bunda Puspa.xlsx', '', 30, 30, '2022-11-19 12:22:20', 'Lampiran Bunda Puspa', 62055),
(75, '30 - 30 - 2022-11-20 08.18.24pm - PPM_PERDESA.rar', '', 30, 30, '2022-11-21 09:18:27', 'PPM Perdesa', 44553500),
(78, '30 - 30 - 2022-11-20 09.09.02pm - 17112022. Profil 40 Peserta Bunda Puspa.docx', '', 30, 30, '2022-11-21 10:09:02', '40 Peserta Pameran', 1853040),
(79, '30 - 30 - 2022-11-21 08.15.42pm - NAMA PROFIL PENERIMA MANFAAT.docx', '', 30, 30, '2022-11-22 09:15:42', 'Nama Profil Penerima Bunda Puspa', 8903540),
(80, '30 - 30 - 2022-11-21 08.19.12pm - Fix Data Rekap Hasil Bunda Puspa yang ada pemenangnya.xlsx', '', 30, 30, '2022-11-22 09:19:12', 'Fix Data Rekap Hasil Bunda Puspa', 28644),
(81, '30 - 30 - 2022-11-22 10.26.27pm - Data KPM Foto Dokumentas.zip', '', 30, 30, '2022-11-23 11:26:31', 'Dokumentasi KPM Bunda Puspa', 54150900),
(82, '30 - 30 - 2022-11-24 02.45.42am - checklis kehadiran bunda puspa.xlsx', '', 30, 30, '2022-11-24 15:45:42', 'Checklist Kehadiran', 19597),
(83, '30 - 30 - 2022-11-25 12.31.44am - Cover.zip', '', 30, 30, '2022-11-25 13:31:44', 'Cover Laporan', 784783),
(84, '30 - 30 - 2022-11-25 09.12.28pm - Sertifikat NIB.zip', '', 30, 30, '2022-11-26 10:12:30', 'Sertifikat NIB', 22755500),
(85, '30 - 30 - 2022-11-25 11.24.45pm - 28102022. Laporan Pendahuluan Bunda Puspa.docx', '', 30, 30, '2022-11-26 12:24:45', 'Laporan Pendahuluan', 2081340),
(87, '30 - 30 - 2022-11-25 11.26.54pm - 26112022. Laporan Antara Bunda Puspa.docx', '', 30, 30, '2022-11-26 12:26:54', 'Laporan Antara', 6068430),
(90, '36 - 33 - 2022-12-02 05.45.49pm - Video Bunda Puspa.mp4', '', 33, 36, '2022-12-03 06:45:52', 'Video pameran Bunda Puspa SOUND', 39800900),
(91, '36 - 33 - 2022-12-02 05.56.11pm - Video Bunda Puspa no sound-smallest.mp4', '', 33, 36, '2022-12-03 06:56:13', 'Video pameran Bunda Puspa NO SOUND', 27884800),
(92, '36 - 33 - 2022-12-05 03.46.37am - Video Bunda Puspa-no stand.mp4', '', 33, 36, '2022-12-05 16:46:41', 'Video pameran Bunda Puspa no stand', 40731600),
(93, '30 - 28 - 2022-12-11 09.21.58pm - LOGO.zip', '', 28, 30, '2022-12-12 10:22:09', 'LOGO', 138700000),
(95, '37 - 33 - 2022-12-16 01.34.08am - Peserta fashion show casual BALITA.zip', '', 33, 37, '2022-12-16 14:34:12', 'Peserta fashion show casual BALITA', 51352900),
(97, '37 - 33 - 2022-12-16 01.52.13am - peserta fashion show casual KIDS A.zip', '', 33, 37, '2022-12-16 14:52:15', 'peserta fashion show casual KIDS A', 30099000),
(98, '37 - 33 - 2022-12-16 02.01.59am - Peserta fashion show casual KIDS B.zip', '', 33, 37, '2022-12-16 15:02:00', 'Peserta fashion show casual KIDS B', 19842700),
(99, '37 - 33 - 2022-12-16 02.11.56am - Peserta fashion show casual TEEN.zip', '', 33, 37, '2022-12-16 15:11:58', 'Peserta fashion show casual TEEN', 17104600),
(100, '37 - 33 - 2022-12-16 02.23.34am - Peserta fashion show pesta.zip', '', 33, 37, '2022-12-16 15:23:35', 'Peserta fashion show pesta', 22924800),
(101, '37 - 33 - 2022-12-16 02.30.04am - Peserta tari.zip', '', 33, 37, '2022-12-16 15:30:04', 'Peserta tari', 9338940),
(102, '37 - 33 - 2022-12-16 02.50.24am - Peserta stand UMKM bunda puspa.zip', '', 33, 37, '2022-12-16 15:50:27', 'Peserta stand UMKM bunda puspa', 40101000),
(103, '37 - 33 - 2022-12-22 09.02.15am - sertifikat Bunda Puspa pelatihan 1 ttd.zip', '', 33, 37, '2022-12-22 22:02:23', 'Sertifikat Bunda Puspa Pelatihan', 106763000);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1656403398, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permisions_project`
--

CREATE TABLE `permisions_project` (
  `id` int(11) NOT NULL,
  `id_project` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permisions_project`
--

INSERT INTO `permisions_project` (`id`, `id_project`, `id_user`) VALUES
(23, 23, 29),
(24, 24, 28),
(25, 25, 33),
(27, 25, 34),
(28, 25, 35),
(29, 25, 28),
(30, 25, 29),
(31, 25, 30),
(32, 25, 31),
(33, 25, 32),
(34, 26, 30),
(35, 26, 34),
(36, 26, 37),
(37, 24, 35),
(39, 27, 30),
(40, 27, 28),
(41, 28, 28),
(42, 24, 32),
(43, 28, 34),
(44, 29, 33),
(45, 29, 34),
(46, 30, 30),
(47, 30, 28),
(51, 32, 32),
(52, 32, 34),
(53, 33, 32),
(54, 33, 34),
(57, 36, 33),
(58, 36, 34),
(59, 37, 33),
(60, 37, 34),
(61, 37, 28),
(62, 30, 38),
(63, 37, 38),
(64, 36, 38);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT '6.jpg',
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `instagram` varchar(200) DEFAULT NULL,
  `twitter` varchar(200) DEFAULT NULL,
  `github` varchar(200) DEFAULT NULL,
  `linkedin` varchar(200) DEFAULT NULL,
  `portofolio` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `image`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`, `jabatan`, `instagram`, `twitter`, `github`, `linkedin`, `portofolio`) VALUES
(5, 'adm@chaakraconsulting.com', 'chaakra consulting', 'Chaakra Consulting', 'Default.png', '$2y$10$leGHDqUeeRCgbJtxW3aTneJ0EgrM8GbInBj76ZFR70XwDKIULAwVW', '03ff1f40ef59d7dde8aab054f46fb32f', NULL, '2022-07-01 00:44:44', NULL, NULL, NULL, 1, 0, '2022-06-28 07:02:40', '2022-06-30 23:44:44', NULL, '', NULL, NULL, NULL, NULL, NULL),
(28, 'khorina@chaakraconsulting.com', 'khorina', 'Khorina', '6.jpg', '$2y$10$XtZHGhpeEWeMUBaVP1O9hOVrexRGlNj6ZQw4TqdUuF7vkgiL6KDwy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-08-25 03:57:05', '2022-08-25 03:57:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'cahyadisetyanugraha@chaakraconsulting.com', 'cahyadi setya nugraha', 'Cahyadi', '6.jpg', '$2y$10$ROfS42n75gRU9OGfsrfNeuiYYjP1Pl4wzovj3r8CyJJ7GLLT.byfW', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-08-25 03:59:04', '2022-08-25 03:59:04', NULL, '-', NULL, NULL, NULL, NULL, NULL),
(30, 'oldheva@chaakraconsulting.com', 'oldheva', 'Oldheva', '6.jpg', '$2y$10$JRvHJ0cnspoW8zfIpiyQtO8UhfSXvSxvpi.oCz4RiyQw5NcTk/sqq', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-08-25 03:59:43', '2022-08-25 03:59:43', '2022-12-12 10:53:28', '', NULL, NULL, NULL, NULL, NULL),
(31, 'fajarseptiandi@chaakraconsulting.com', 'fajar septiandi', 'Fajar Septiandi', '6.jpg', '$2y$10$.kwvRGpH4IY8ASTwj0QrjOmnHG5NsBZ3MiPznGSoFlsL2xrpC6sE2', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-08-25 04:00:11', '2022-08-25 04:00:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'verdysas@gmail.com', 'verdi sasmeka', 'verdi', '170441100045 2.jpg', '$2y$10$9weqA.F8.oFGUyfeI0y1nunjlnILED/OpOfhaXUbNZFoy7O88TJSq', NULL, '2022-12-11 22:19:37', NULL, NULL, NULL, NULL, 1, 0, '2022-08-25 04:00:46', '2022-12-11 22:19:37', NULL, 'Junior Programmer', NULL, NULL, NULL, NULL, NULL),
(33, 'sriandiani@chaakraconsulting.com', 'Sri Andiani', 'Sri Andiani', '6.jpg', '$2y$10$5onAqMlDdgzgB7FaJ3ca1uxBfQqFLWlTAeKg1JGaZblJpc7MNyJ.y', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-08-25 04:01:29', '2022-08-25 04:01:29', NULL, '', NULL, NULL, NULL, NULL, NULL),
(34, 'gigihprihantono@chaakraconsulting.com', 'gigih prihantono', 'Gigih Prihantono', '6.jpg', '$2y$10$f/DSeBaevAVvlffOqS5tvutb3ipYZmuuTLluCvRrW.V/CW3GZ93Zu', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-08-25 04:02:23', '2022-08-25 04:02:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'lina.subandriyo@chaakraconsulting.com', 'lina subandriyo', 'Lina Subandriyo', '6.jpg', '$2y$10$CS49.uDke6JrrIMz/mTdS.at31Knsnf37vzG07ZJopntehWj/THjy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-08-25 04:03:29', '2022-08-25 04:03:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'galanggerald88@gmail.com', 'Galang', 'Galang Geraldy', '6.jpg', '$2y$10$LiGEu9Oa9yekg/qy6jRZ.eB/9/O9gNQsUWQ9LxGCP1ZmgKAxjcvh6', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-09-17 00:27:03', '2022-09-17 00:27:03', NULL, '', NULL, NULL, NULL, NULL, NULL),
(38, 'ayun@chaakraconsulting.com', 'ayun', NULL, '6.jpg', '$2y$10$AtFxjUtgYAg6H4Dl6NTDWuNWW7nTqSk3D49wWPMZnMxiCjSupeUOG', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-13 19:38:11', '2022-12-13 19:38:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'irfani.fridana354@gmail.com', 'Irfan', 'Irfani Fridana Rahmansyah Putra', '6.jpg', '$2y$10$wc9AvNBITUsVVYV/kwlSmOakSrsTZmLSxlcbMfO1q4kNI/tAWd9Bq', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-22 01:11:33', '2022-12-22 01:11:33', NULL, '', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `data_project`
--
ALTER TABLE `data_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_data_project`
--
ALTER TABLE `detail_data_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pembuat` (`id_pembuat`),
  ADD KEY `detail_data_project_ibfk_1` (`id_project`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permisions_project`
--
ALTER TABLE `permisions_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `data_project`
--
ALTER TABLE `data_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `detail_data_project`
--
ALTER TABLE `detail_data_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permisions_project`
--
ALTER TABLE `permisions_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `detail_data_project`
--
ALTER TABLE `detail_data_project`
  ADD CONSTRAINT `detail_data_project_ibfk_1` FOREIGN KEY (`id_project`) REFERENCES `data_project` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
