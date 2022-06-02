-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 01, 2022 at 10:01 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dost3_rstw`
--

-- --------------------------------------------------------

--
-- Table structure for table `er_barcodes`
--

CREATE TABLE `er_barcodes` (
  `barcode_id` bigint(20) UNSIGNED NOT NULL,
  `barcode_code` varchar(255) DEFAULT '',
  `event_id` bigint(20) UNSIGNED DEFAULT '0',
  `vis_id` bigint(20) UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `barcode_batch` bigint(20) UNSIGNED DEFAULT '0',
  `barcode_serial` bigint(20) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `er_barcodes`
--

INSERT INTO `er_barcodes` (`barcode_id`, `barcode_code`, `event_id`, `vis_id`, `created_at`, `updated_at`, `barcode_batch`, `barcode_serial`) VALUES
(1, '', 1, 0, '2022-05-27 04:51:55', '2022-05-27 04:51:55', 0, 1),
(2, '', 1, 0, '2022-05-27 05:13:23', '2022-05-27 05:13:23', 0, 2),
(3, '', 1, 0, '2022-05-27 19:19:31', '2022-05-27 19:19:31', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `er_civilstatus`
--

CREATE TABLE `er_civilstatus` (
  `civil_id` bigint(20) UNSIGNED NOT NULL,
  `civil_name` varchar(255) DEFAULT '',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `er_civilstatus`
--

INSERT INTO `er_civilstatus` (`civil_id`, `civil_name`, `created_at`, `updated_at`) VALUES
(5, 'Single', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Married', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Widowed', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Separated', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `er_classifications`
--

CREATE TABLE `er_classifications` (
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `class_name` varchar(255) DEFAULT '',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `er_classifications`
--

INSERT INTO `er_classifications` (`class_id`, `class_name`, `created_at`, `updated_at`) VALUES
(5, 'Student/Academe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Business/Entrepreneur', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Government Employee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Private Organization', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Homemakers', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Media', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Others', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `er_counters`
--

CREATE TABLE `er_counters` (
  `counter_id` bigint(20) UNSIGNED NOT NULL,
  `counter_name` varchar(255) DEFAULT '',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `counter_created` datetime DEFAULT NULL,
  `counter_created_by` varchar(255) DEFAULT '',
  `counter_lastmodified` datetime DEFAULT NULL,
  `counter_lastmodified_by` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `er_counters`
--

INSERT INTO `er_counters` (`counter_id`, `counter_name`, `created_at`, `updated_at`, `counter_created`, `counter_created_by`, `counter_lastmodified`, `counter_lastmodified_by`) VALUES
(1, 'Parallel I', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '', NULL, ''),
(2, 'Parallel II', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '', NULL, ''),
(3, 'Parallel III', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `er_counter_visitors`
--

CREATE TABLE `er_counter_visitors` (
  `counterv_id` bigint(20) UNSIGNED NOT NULL,
  `vis_id` bigint(20) UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `counterv_created` datetime DEFAULT NULL,
  `counterv_created_by` varchar(255) DEFAULT '',
  `counterv_lastmodified` datetime DEFAULT NULL,
  `counterv_lastmodified_by` varchar(255) DEFAULT '',
  `counter_id` bigint(20) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `er_counter_visitors`
--

INSERT INTO `er_counter_visitors` (`counterv_id`, `vis_id`, `created_at`, `updated_at`, `counterv_created`, `counterv_created_by`, `counterv_lastmodified`, `counterv_lastmodified_by`, `counter_id`) VALUES
(0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `er_events`
--

CREATE TABLE `er_events` (
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `event_title` varchar(255) DEFAULT '',
  `event_desc` text,
  `event_from` date DEFAULT NULL,
  `event_to` date DEFAULT NULL,
  `event_image` varchar(255) DEFAULT '',
  `event_file` varchar(255) DEFAULT '',
  `event_active` int(10) UNSIGNED DEFAULT '0',
  `event_created` datetime DEFAULT NULL,
  `event_created_by` varchar(255) DEFAULT '',
  `event_lastmodified` datetime DEFAULT NULL,
  `event_lastmodified_by` varchar(255) DEFAULT '',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `er_events`
--

INSERT INTO `er_events` (`event_id`, `event_title`, `event_desc`, `event_from`, `event_to`, `event_image`, `event_file`, `event_active`, `event_created`, `event_created_by`, `event_lastmodified`, `event_lastmodified_by`, `created_at`, `updated_at`) VALUES
(1, '15th PNHRS Week Celebration', NULL, '2022-08-08', '2022-08-12', '', '', 1, NULL, '', NULL, '', '2022-05-27 04:46:33', '2022-05-27 04:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `er_event_evaluations`
--

CREATE TABLE `er_event_evaluations` (
  `eval_id` bigint(20) UNSIGNED NOT NULL,
  `eval_firsttime` tinyint(1) UNSIGNED DEFAULT '1',
  `eval_interest` bigint(20) UNSIGNED DEFAULT '1',
  `eval_interest_others` varchar(255) DEFAULT '',
  `eval_rating_1` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_rating_2` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_rating_3` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_rating_4` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_rating_5` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_rating_6` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_rating_7` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_rating_overall` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_created` datetime DEFAULT NULL,
  `eval_created_by` varchar(255) DEFAULT '',
  `eval_lastmodified` datetime DEFAULT NULL,
  `eval_lastmodified_by` varchar(255) DEFAULT '',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `eval_ref_7` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_ref_9` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_ref_1` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_ref_2` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_ref_3` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_ref_4` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_ref_5` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_ref_6` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_ref_8` tinyint(1) UNSIGNED DEFAULT '0',
  `vis_id` bigint(20) UNSIGNED DEFAULT '0',
  `event_id` bigint(20) UNSIGNED DEFAULT '0',
  `eval_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `er_event_visitors`
--

CREATE TABLE `er_event_visitors` (
  `evis_id` bigint(20) UNSIGNED NOT NULL,
  `evis_created` datetime DEFAULT NULL,
  `evis_created_by` varchar(255) DEFAULT '',
  `evis_lastmodified` datetime DEFAULT NULL,
  `evis_lastmodified_by` varchar(255) DEFAULT '',
  `event_id` bigint(20) UNSIGNED DEFAULT '0',
  `vis_id` bigint(20) UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `vis_code` varchar(255) DEFAULT '',
  `site_id` bigint(20) UNSIGNED DEFAULT '4'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `er_genders`
--

CREATE TABLE `er_genders` (
  `gender_id` bigint(20) UNSIGNED NOT NULL,
  `gender_name` varchar(255) DEFAULT '',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `er_genders`
--

INSERT INTO `er_genders` (`gender_id`, `gender_name`, `created_at`, `updated_at`) VALUES
(1, 'Male', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Female', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `er_municipality`
--

CREATE TABLE `er_municipality` (
  `id` int(11) NOT NULL,
  `regionId` int(11) NOT NULL,
  `provinceId` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `district` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `er_municipality`
--

INSERT INTO `er_municipality` (`id`, `regionId`, `provinceId`, `name`, `district`) VALUES
(1, 1, 1, 'Manila City', 1),
(2, 1, 2, 'Mandaluyong City', 2),
(3, 1, 2, 'Marikina City', 2),
(4, 1, 2, 'Pasig City', 2),
(5, 1, 2, 'Quezon City', 2),
(6, 1, 2, 'San Juan City', 2),
(7, 1, 3, 'Caloocan City', 3),
(8, 1, 3, 'Malabon City', 3),
(9, 1, 3, 'Navotas City', 3),
(10, 1, 3, 'Valenzuela City', 3),
(11, 1, 4, 'Las Piñas City', 4),
(12, 1, 4, 'Makati City', 4),
(13, 1, 4, 'Muntinlupa City', 4),
(14, 1, 4, 'Parañaque City', 4),
(15, 1, 4, 'Pasay City', 4),
(16, 1, 4, 'Pateros', 4),
(17, 1, 4, 'Taguig City', 4),
(18, 2, 5, 'Bangued', 1),
(19, 2, 5, 'Boliney', 1),
(20, 2, 5, 'Bucay', 1),
(21, 2, 5, 'Bucloc', 1),
(22, 2, 5, 'Daguioman', 1),
(23, 2, 5, 'Danglas', 1),
(24, 2, 5, 'Dolores', 1),
(25, 2, 5, 'La Paz', 1),
(26, 2, 5, 'Lacub', 1),
(27, 2, 5, 'Lagangilang', 1),
(28, 2, 5, 'Lagayan', 1),
(29, 2, 5, 'Langiden', 1),
(30, 2, 5, 'Licuan-Baay (Licuan)', 1),
(31, 2, 5, 'Luba', 1),
(32, 2, 5, 'Malibcong', 1),
(33, 2, 5, 'Manabo', 1),
(34, 2, 5, 'Peñarrubia', 1),
(35, 2, 5, 'Pidigan', 1),
(36, 2, 5, 'Pilar', 1),
(37, 2, 5, 'Sallapadan', 1),
(38, 2, 5, 'San Isidro', 1),
(39, 2, 5, 'San Juan', 1),
(40, 2, 5, 'San Quintin', 1),
(41, 2, 5, 'Tayum', 1),
(42, 2, 5, 'Tineg', 1),
(43, 2, 5, 'Tubo', 1),
(44, 2, 5, 'Villaviciosa', 1),
(45, 2, 6, 'Calanasan (Bayag)', 1),
(46, 2, 6, 'Conner', 1),
(47, 2, 6, 'Flora', 1),
(48, 2, 6, 'Kabugao', 1),
(49, 2, 6, 'Luna (Macatel[3])', 1),
(50, 2, 6, 'Pudtol', 1),
(51, 2, 6, 'Santa Marcela', 1),
(52, 2, 7, 'Baguio City', 1),
(53, 2, 7, 'Atok', 1),
(54, 2, 7, 'Bakun', 1),
(55, 2, 7, 'Bokod', 1),
(56, 2, 7, 'Buguias', 1),
(57, 2, 7, 'Itogon', 1),
(58, 2, 7, 'Kabayan', 1),
(59, 2, 7, 'Kapangan', 1),
(60, 2, 7, 'Kibungan', 1),
(61, 2, 7, 'La Trinidad', 1),
(62, 2, 7, 'Mankayan', 1),
(63, 2, 7, 'Sablan', 1),
(64, 2, 7, 'Tuba', 1),
(65, 2, 7, 'Tublay', 1),
(66, 2, 8, 'Aguinaldo', 1),
(67, 2, 8, 'Alfonso Lista (Potia)', 1),
(68, 2, 8, 'Asipulo', 1),
(69, 2, 8, 'Banaue', 1),
(70, 2, 8, 'Hingyon', 1),
(71, 2, 8, 'Hungduan', 1),
(72, 2, 8, 'Kiangan', 1),
(73, 2, 8, 'Lagawe', 1),
(74, 2, 8, 'Lamut', 1),
(75, 2, 8, 'Mayoyao', 1),
(76, 2, 8, 'Tinoc', 1),
(77, 2, 9, 'Tabuk', 1),
(78, 2, 9, 'Balbalan', 1),
(79, 2, 9, 'Lubuagan', 1),
(80, 2, 9, 'Pasil', 1),
(81, 2, 9, 'Pinukpuk', 1),
(82, 2, 9, 'Rizal (Liwan)', 1),
(83, 2, 9, 'Tanudan', 1),
(84, 2, 9, 'Tinglayan', 1),
(85, 2, 10, 'Barlig', 1),
(86, 2, 10, 'Bauko', 1),
(87, 2, 10, 'Besao', 1),
(88, 2, 10, 'Bontoc', 1),
(89, 2, 10, 'Natonin', 1),
(90, 2, 10, 'Paracelis', 1),
(91, 2, 10, 'Sabangan', 1),
(92, 2, 10, 'Sadanga', 1),
(93, 2, 10, 'Sagada', 1),
(94, 2, 10, 'Tadian', 1),
(95, 3, 11, 'Adams', 1),
(96, 3, 11, 'Bacarra', 1),
(97, 3, 11, 'Badoc', 2),
(98, 3, 11, 'Bangui', 1),
(99, 3, 11, 'Banna (Espiritu)', 2),
(100, 3, 11, 'Batac City', 2),
(101, 3, 11, 'Burgos', 1),
(102, 3, 11, 'Carasi', 1),
(103, 3, 11, 'Currimao', 2),
(104, 3, 11, 'Dingras', 2),
(105, 3, 11, 'Dumalneg', 1),
(106, 3, 11, 'Laoag City', 1),
(107, 3, 11, 'Marcos', 2),
(108, 3, 11, 'Nueva Era', 2),
(109, 3, 11, 'Pagudpud', 1),
(110, 3, 11, 'Paoay', 2),
(111, 3, 11, 'Pasuquin', 1),
(112, 3, 11, 'Piddig', 1),
(113, 3, 11, 'Pinili', 2),
(114, 3, 11, 'San Nicolas', 2),
(115, 3, 11, 'Sarrat', 1),
(116, 3, 11, 'Solsona', 2),
(117, 3, 11, 'Vintar', 1),
(118, 3, 12, 'Vigan City', 1),
(119, 3, 12, 'Candon City', 2),
(120, 3, 12, 'Alilem', 2),
(121, 3, 12, 'Banayoyo', 2),
(122, 3, 12, 'Bantay', 1),
(123, 3, 12, 'Burgos', 2),
(124, 3, 12, 'Cabugao', 1),
(125, 3, 12, 'Caoayan', 1),
(126, 3, 12, 'Cervantes', 2),
(127, 3, 12, 'Galimuyod', 2),
(128, 3, 12, 'Gregorio del Pilar (Concepcion)', 2),
(129, 3, 12, 'Lidlidda', 2),
(130, 3, 12, 'Magsingal', 1),
(131, 3, 12, 'Nagbukel', 2),
(132, 3, 12, 'Narvacan', 2),
(133, 3, 12, 'Quirino (Angaki)', 2),
(134, 3, 12, 'Salcedo (Baugen)', 2),
(135, 3, 12, 'San Emilio', 2),
(136, 3, 12, 'San Esteban', 2),
(137, 3, 12, 'San Ildefonso', 1),
(138, 3, 12, 'San Juan (Lapog)', 1),
(139, 3, 12, 'San Vicente', 1),
(140, 3, 12, 'Santa', 2),
(141, 3, 12, 'Santa Catalina', 1),
(142, 3, 12, 'Santa Cruz', 2),
(143, 3, 12, 'Santa Lucia', 2),
(144, 3, 12, 'Santa Maria', 2),
(145, 3, 12, 'Santiago', 2),
(146, 3, 12, 'Santo Domingo', 1),
(147, 3, 12, 'Sigay', 2),
(148, 3, 12, 'Sinait', 1),
(149, 3, 12, 'Sugpon', 2),
(150, 3, 12, 'Suyo', 2),
(151, 3, 12, 'Tagudin', 2),
(152, 3, 13, 'San Fernando City', 1),
(153, 3, 13, 'Agoo', 2),
(154, 3, 13, 'Aringay', 2),
(155, 3, 13, 'Bacnotan', 1),
(156, 3, 13, 'Bagulin', 2),
(157, 3, 13, 'Balaoan', 1),
(158, 3, 13, 'Bangar', 1),
(159, 3, 13, 'Bauang', 2),
(160, 3, 13, 'Burgos', 2),
(161, 3, 13, 'Caba', 2),
(162, 3, 13, 'Luna', 1),
(163, 3, 13, 'Naguilian', 2),
(164, 3, 13, 'Pugo', 2),
(165, 3, 13, 'Rosario', 2),
(166, 3, 13, 'San Gabriel', 1),
(167, 3, 13, 'San Juan', 1),
(168, 3, 13, 'Sto. Tomas', 2),
(169, 3, 13, 'Santol', 1),
(170, 3, 13, 'Sudipen', 1),
(171, 3, 13, 'Tubao', 2),
(172, 3, 14, 'Alaminos', 1),
(173, 3, 14, 'Dagupan', 4),
(174, 3, 14, 'San Carlos', 3),
(175, 3, 14, 'Urdaneta City', 5),
(176, 3, 14, 'Agno', 1),
(177, 3, 14, 'Aguilar', 2),
(178, 3, 14, 'Alcala', 5),
(179, 3, 14, 'Anda', 1),
(180, 3, 14, 'Asingan', 6),
(181, 3, 14, 'Balungao', 6),
(182, 3, 14, 'Bani', 1),
(183, 3, 14, 'Basista', 2),
(184, 3, 14, 'Bautista', 5),
(185, 3, 14, 'Bayambang', 3),
(186, 3, 14, 'Binalonan', 5),
(187, 3, 14, 'Binmaley', 2),
(188, 3, 14, 'Bolinao', 1),
(189, 3, 14, 'Bugallon', 2),
(190, 3, 14, 'Burgos', 1),
(191, 3, 14, 'Calasiao', 3),
(192, 3, 14, 'Dasol', 1),
(193, 3, 14, 'Infanta', 1),
(194, 3, 14, 'Labrador', 2),
(195, 3, 14, 'Laoac', 5),
(196, 3, 14, 'Lingayen', 2),
(197, 3, 14, 'Mabini', 1),
(198, 3, 14, 'Malasiqui', 3),
(199, 3, 14, 'Manaoag', 4),
(200, 3, 14, 'Mangaldan', 4),
(201, 3, 14, 'Mangatarem', 2),
(202, 3, 14, 'Mapandan', 3),
(203, 3, 14, 'Natividad', 6),
(204, 3, 14, 'Pozorrubio', 5),
(205, 3, 14, 'Rosales', 6),
(206, 3, 14, 'San Fabian', 4),
(207, 3, 14, 'San Jacinto', 4),
(208, 3, 14, 'San Manuel', 6),
(209, 3, 14, 'San Nicolas', 6),
(210, 3, 14, 'San Quintin', 6),
(211, 3, 14, 'Santa Barbara', 3),
(212, 3, 14, 'Santa Maria', 6),
(213, 3, 14, 'Santo Tomas', 5),
(214, 3, 14, 'Sison', 5),
(215, 3, 14, 'Sual', 1),
(216, 3, 14, 'Tayug', 6),
(217, 3, 14, 'Umingan', 6),
(218, 3, 14, 'Urbiztondo', 2),
(219, 3, 14, 'Villasis', 5),
(220, 4, 15, 'Basco', 1),
(221, 4, 15, 'Itbayat', 1),
(222, 4, 15, 'Ivana', 1),
(223, 4, 15, 'Mahatao', 1),
(224, 4, 15, 'Sabtang', 1),
(225, 4, 15, 'Uyugan', 1),
(226, 4, 16, 'Tuguegarao City', 3),
(227, 4, 16, 'Abulug', 2),
(228, 4, 16, 'Alcala', 1),
(229, 4, 16, 'Allacapan', 2),
(230, 4, 16, 'Amulung', 3),
(231, 4, 16, 'Aparri', 1),
(232, 4, 16, 'Baggao', 1),
(233, 4, 16, 'Ballesteros', 2),
(234, 4, 16, 'Buguey', 1),
(235, 4, 16, 'Calayan', 2),
(236, 4, 16, 'Camalaniugan', 1),
(237, 4, 16, 'Claveria', 2),
(238, 4, 16, 'Enrile', 3),
(239, 4, 16, 'Gattaran', 1),
(240, 4, 16, 'Gonzaga', 1),
(241, 4, 16, 'Iguig', 3),
(242, 4, 16, 'Lal-Lo', 1),
(243, 4, 16, 'Lasam', 2),
(244, 4, 16, 'Pamplona', 2),
(245, 4, 16, 'Peñablanca', 3),
(246, 4, 16, 'Piat', 2),
(247, 4, 16, 'Rizal', 2),
(248, 4, 16, 'Sanchez-Mira', 2),
(249, 4, 16, 'Santa Ana', 1),
(250, 4, 16, 'Santa Praxedes', 2),
(251, 4, 16, 'Santa Teresita', 1),
(252, 4, 16, 'Santo Niño (Faire)', 2),
(253, 4, 16, 'Solana', 3),
(254, 4, 16, 'Tuao', 3),
(255, 4, 17, 'Cauayan City', 3),
(256, 4, 17, 'Ilagan City', 1),
(257, 4, 17, 'Santiago City', 4),
(258, 4, 17, 'Alicia', 3),
(259, 4, 17, 'Angadanan', 3),
(260, 4, 17, 'Aurora', 2),
(261, 4, 17, 'Benito Soliven', 2),
(262, 4, 17, 'Burgos', 2),
(263, 4, 17, 'Cabagan', 1),
(264, 4, 17, 'Cabatuan', 3),
(265, 4, 17, 'Cordon', 4),
(266, 4, 17, 'Delfin Albano', 1),
(267, 4, 17, 'Dinapigue', 4),
(268, 4, 17, 'Divilican', 1),
(269, 4, 17, 'Echague', 4),
(270, 4, 17, 'Gamu', 2),
(271, 4, 17, 'Jones', 4),
(272, 4, 17, 'Luna', 3),
(273, 4, 17, 'Maconacon', 1),
(274, 4, 17, 'Mallig', 2),
(275, 4, 17, 'Naguilian', 2),
(276, 4, 17, 'Palanan', 1),
(277, 4, 17, 'Quezon', 2),
(278, 4, 17, 'Quirino', 2),
(279, 4, 17, 'Ramon', 4),
(280, 4, 17, 'Reina Mercedes', 3),
(281, 4, 17, 'Roxas', 2),
(282, 4, 17, 'San Agustin', 4),
(283, 4, 17, 'San Guillermo', 3),
(284, 4, 17, 'San Isidro', 4),
(285, 4, 17, 'San Manuel', 2),
(286, 4, 17, 'San Mariano', 2),
(287, 4, 17, 'San Mateo', 3),
(288, 4, 17, 'San Pablo', 1),
(289, 4, 17, 'Santa Maria', 1),
(290, 4, 17, 'Santo Tomas', 1),
(291, 4, 17, 'Tumauini', 1),
(292, 4, 18, 'Alfonso Castañeda', 1),
(293, 4, 18, 'Ambaguio', 1),
(294, 4, 18, 'Aritao', 1),
(295, 4, 18, 'Bagabag', 1),
(296, 4, 18, 'Bambang', 1),
(297, 4, 18, 'Bayombong', 1),
(298, 4, 18, 'Diadi', 1),
(299, 4, 18, 'Dupax del Norte', 1),
(300, 4, 18, 'Dupax del Sur', 1),
(301, 4, 18, 'Kasibu', 1),
(302, 4, 18, 'Kayapa', 1),
(303, 4, 18, 'Quezon', 1),
(304, 4, 18, 'Santa Fe', 1),
(305, 4, 18, 'Solano', 1),
(306, 4, 18, 'Villaverde', 1),
(307, 5, 19, 'Aglipay', 1),
(308, 5, 19, 'Cabarroguis (capital)', 1),
(309, 5, 19, 'Diffun', 1),
(310, 5, 19, 'Maddela', 1),
(311, 5, 19, 'Nagtipunan', 1),
(312, 5, 19, 'Saguday', 1),
(313, 5, 20, 'Baler', 1),
(314, 5, 20, 'Casiguran', 1),
(315, 5, 20, 'Dilasag', 1),
(316, 5, 20, 'Dinalungan', 1),
(317, 5, 20, 'Dingalan', 1),
(318, 5, 20, 'Dipaculao', 1),
(319, 5, 20, 'Maria Aurora', 1),
(320, 5, 20, 'San Luis', 1),
(321, 5, 21, 'Balanga City', 2),
(322, 5, 21, 'Abucay', 1),
(323, 5, 21, 'Bagac', 2),
(324, 5, 21, 'Dinalupihan', 1),
(325, 5, 21, 'Hermosa', 1),
(326, 5, 21, 'Limay', 2),
(327, 5, 21, 'Mariveles', 2),
(328, 5, 21, 'Morong', 1),
(329, 5, 21, 'Orani', 1),
(330, 5, 21, 'Orion', 2),
(331, 5, 21, 'Pilar', 2),
(332, 5, 21, 'Samal', 1),
(333, 5, 22, 'Angat', 3),
(334, 5, 22, 'Balagtas (Bigaa)', 2),
(335, 5, 22, 'Baliuag', 2),
(336, 5, 22, 'Bocaue', 2),
(337, 5, 22, 'Bulakan', 1),
(338, 5, 22, 'Bustos', 2),
(339, 5, 22, 'Calumpit', 1),
(340, 5, 22, 'Doña Remedios Trinidad', 3),
(341, 5, 22, 'Guiguinto', 2),
(342, 5, 22, 'Hagonoy', 1),
(343, 5, 22, 'Malolos City', 1),
(344, 5, 22, 'Marilao', 4),
(345, 5, 22, 'Meycauayan City', 4),
(346, 5, 22, 'Norzagaray', 3),
(347, 5, 22, 'Obando', 4),
(348, 5, 22, 'Pandi', 2),
(349, 5, 22, 'Paombong', 1),
(350, 5, 22, 'Plaridel', 2),
(351, 5, 22, 'Pulilan', 1),
(352, 5, 22, 'San Ildefonso', 3),
(353, 5, 22, 'San Jose del Monte', 0),
(354, 5, 22, 'San Miguel', 3),
(355, 5, 22, 'San Rafael', 3),
(356, 5, 22, 'Santa Maria', 4),
(357, 5, 23, 'Cabanatuan City', 3),
(358, 5, 23, 'Gapan City', 4),
(359, 5, 23, 'Palayan City', 3),
(360, 5, 23, 'San Jose City', 2),
(361, 5, 23, 'Muñoz City', 2),
(362, 5, 23, 'Aliaga', 1),
(363, 5, 23, 'Bongabon', 3),
(364, 5, 23, 'Cabiao', 4),
(365, 5, 23, 'Carranglan', 2),
(366, 5, 23, 'Cuyapo', 1),
(367, 5, 23, 'Gabaldon', 3),
(368, 5, 23, 'Gen. Mamerto Natividad', 3),
(369, 5, 23, 'Guimba', 1),
(370, 5, 23, 'General Tinio', 4),
(371, 5, 23, 'Jaén', 4),
(372, 5, 23, 'Laur', 3),
(373, 5, 23, 'Licab', 1),
(374, 5, 23, 'Llanera', 2),
(375, 5, 23, 'Lupao', 2),
(376, 5, 23, 'Nampicuan', 1),
(377, 5, 23, 'Pantabangan', 2),
(378, 5, 23, 'Peñaranda', 4),
(379, 5, 23, 'Quezon', 1),
(380, 5, 23, 'Rizal', 2),
(381, 5, 23, 'San Antonio', 4),
(382, 5, 23, 'San Isidro', 4),
(383, 5, 23, 'San Leonardo', 4),
(384, 5, 23, 'Santa Rosa', 3),
(385, 5, 23, 'Santo Domingo', 1),
(386, 5, 23, 'Talavera', 1),
(387, 5, 23, 'Talugtug', 2),
(388, 5, 23, 'Zaragoza', 1),
(389, 5, 24, 'Angeles City', 1),
(390, 5, 24, 'City of San Fernando', 3),
(391, 5, 24, 'Mabalacat City', 1),
(392, 5, 24, 'Apalit', 4),
(393, 5, 24, 'Arayat', 3),
(394, 5, 24, 'Bacolor', 3),
(395, 5, 24, 'Candaba', 4),
(396, 5, 24, 'Floridablanca', 2),
(397, 5, 24, 'Guagua', 2),
(398, 5, 24, 'Lubao', 2),
(399, 5, 24, 'Macabebe', 4),
(400, 5, 24, 'Magalang', 1),
(401, 5, 24, 'Masantol', 4),
(402, 5, 24, 'Mexico', 3),
(403, 5, 24, 'Minalin', 4),
(404, 5, 24, 'Porac', 2),
(405, 5, 24, 'San Luis', 4),
(406, 5, 24, 'San Simon', 4),
(407, 5, 24, 'Santa Ana', 3),
(408, 5, 24, 'Santa Rita', 2),
(409, 5, 24, 'Santo Tomas', 4),
(410, 5, 24, 'Sasmuan', 2),
(411, 5, 25, 'Tarlac City', 2),
(412, 5, 25, 'Concepcion', 3),
(413, 5, 25, 'Capas', 3),
(414, 5, 25, 'Paniqui', 1),
(415, 5, 25, 'Gerona', 2),
(416, 5, 25, 'Camiling', 1),
(417, 5, 25, 'Bamban', 3),
(418, 5, 25, 'La Paz', 3),
(419, 5, 25, 'Victoria', 2),
(420, 5, 25, 'Moncada', 1),
(421, 5, 25, 'Santa Ignacia', 1),
(422, 5, 25, 'San Jose', 2),
(423, 5, 25, 'Mayantoc', 1),
(424, 5, 25, 'San Manuel', 1),
(425, 5, 25, 'Pura', 1),
(426, 5, 25, 'Ramos', 1),
(427, 5, 25, 'San Clemente', 1),
(428, 5, 25, 'Anao', 1),
(429, 5, 26, 'Olongapo City', 1),
(430, 5, 26, 'Subic', 1),
(431, 5, 26, 'Castillejos', 1),
(432, 5, 26, 'San Marcelino', 1),
(433, 5, 26, 'San Antonio', 2),
(434, 5, 26, 'San Narciso', 2),
(435, 5, 26, 'San Felipe', 2),
(436, 5, 26, 'Cabangan', 2),
(437, 5, 26, 'Botolan', 2),
(438, 5, 26, 'Iba', 2),
(439, 5, 26, 'Palauig', 2),
(440, 5, 26, 'Masinloc', 2),
(441, 5, 26, 'Candelaria', 2),
(442, 5, 26, 'Santa Cruz', 2),
(443, 6, 27, 'Batangas City', 2),
(444, 6, 27, 'Lipa City', 4),
(445, 6, 27, 'Tanauan City', 3),
(446, 6, 27, 'Agoncillo', 3),
(447, 6, 27, 'Alitagtag', 3),
(448, 6, 27, 'Balayan', 1),
(449, 6, 27, 'Balete', 3),
(450, 6, 27, 'Bauan', 2),
(451, 6, 27, 'Calaca', 1),
(452, 6, 27, 'Calatagan', 1),
(453, 6, 27, 'Cuenca', 3),
(454, 6, 27, 'Ibaan', 4),
(455, 6, 27, 'Laurel', 3),
(456, 6, 27, 'Lemery', 1),
(457, 6, 27, 'Lian', 1),
(458, 6, 27, 'Lobo', 2),
(459, 6, 27, 'Mabini', 2),
(460, 6, 27, 'Malvar', 3),
(461, 6, 27, 'Mataasnakahoy', 3),
(462, 6, 27, 'Nasugbu', 1),
(463, 6, 27, 'Padre Garcia', 4),
(464, 6, 27, 'Rosario', 4),
(465, 6, 27, 'San Jose', 4),
(466, 6, 27, 'San Juan', 4),
(467, 6, 27, 'San Luis', 2),
(468, 6, 27, 'San Nicolas', 3),
(469, 6, 27, 'San Pascual', 2),
(470, 6, 27, 'Santa Teresita', 3),
(471, 6, 27, 'Santo Tomas', 3),
(472, 6, 27, 'Taal', 1),
(473, 6, 27, 'Talisay', 3),
(474, 6, 27, 'Taysan', 4),
(475, 6, 27, 'Tingloy', 2),
(476, 6, 27, 'Tuy', 1),
(477, 6, 28, 'Bacoor', 2),
(478, 6, 28, 'Cavite City', 1),
(479, 6, 28, 'Dasmariñas', 4),
(480, 6, 28, 'Imus', 3),
(481, 6, 28, 'Tagaytay', 5),
(482, 6, 28, 'Trece Martires', 6),
(483, 6, 28, 'Alfonso', 7),
(484, 6, 28, 'Amadeo', 6),
(485, 6, 28, 'Carmona', 5),
(486, 6, 28, 'General Emilio Aguinaldo', 7),
(487, 6, 28, 'General Mariano Alvarez', 5),
(488, 6, 28, 'General Trias', 6),
(489, 6, 28, 'Indang', 7),
(490, 6, 28, 'Kawit', 1),
(491, 6, 28, 'Magallanes', 7),
(492, 6, 28, 'Maragondon', 7),
(493, 6, 28, 'Mendez', 7),
(494, 6, 28, 'Naic', 6),
(495, 6, 28, 'Noveleta', 1),
(496, 6, 28, 'Rosario', 1),
(497, 6, 28, 'Silang', 5),
(498, 6, 28, 'Tanza', 6),
(499, 6, 28, 'Ternate', 7),
(500, 6, 29, 'Biñan', 1),
(501, 6, 29, 'Cabuyao', 2),
(502, 6, 29, 'Calamba', 2),
(503, 6, 29, 'San Pablo', 3),
(504, 6, 29, 'San Pedro', 1),
(505, 6, 29, 'Santa Rosa City', 1),
(506, 6, 29, 'Alaminos', 3),
(507, 6, 29, 'Bay', 2),
(508, 6, 29, 'Calauan', 3),
(509, 6, 29, 'Cavinti', 4),
(510, 6, 29, 'Famy', 4),
(511, 6, 29, 'Kalayaan', 4),
(512, 6, 29, 'Liliw', 3),
(513, 6, 29, 'Los Baños 1', 2),
(514, 6, 29, 'Luisiana', 4),
(515, 6, 29, 'Lumban', 4),
(516, 6, 29, 'Mabitac', 4),
(517, 6, 29, 'Magdalena', 4),
(518, 6, 29, 'Majayjay', 4),
(519, 6, 29, 'Nagcarlan', 3),
(520, 6, 29, 'Paete', 4),
(521, 6, 29, 'Pagsanjan', 4),
(522, 6, 29, 'Pakil', 4),
(523, 6, 29, 'Pangil', 4),
(524, 6, 29, 'Pila', 4),
(525, 6, 29, 'Rizal', 3),
(526, 6, 29, 'Santa Cruz', 4),
(527, 6, 29, 'Santa Maria', 4),
(528, 6, 29, 'Siniloan', 4),
(529, 6, 29, 'Victoria', 3),
(530, 6, 30, 'Burdeos', 1),
(531, 6, 30, 'General Nakar', 1),
(532, 6, 30, 'Infanta', 1),
(533, 6, 30, 'Jomalig', 1),
(534, 6, 30, 'Lucban', 1),
(535, 6, 30, 'Mauban', 1),
(536, 6, 30, 'Pagbilao', 1),
(537, 6, 30, 'Panukulan', 1),
(538, 6, 30, 'Patnanungan', 1),
(539, 6, 30, 'Polillo', 1),
(540, 6, 30, 'Real', 1),
(541, 6, 30, 'Sampaloc', 1),
(542, 6, 30, 'Tayabas City', 1),
(543, 6, 30, 'Candelaria', 2),
(544, 6, 30, 'Dolores', 2),
(545, 6, 30, 'Lucena City', 2),
(546, 6, 30, 'San Antonio', 2),
(547, 6, 30, 'Sariaya', 2),
(548, 6, 30, 'Tiaong', 2),
(549, 6, 30, 'Agdangan', 3),
(550, 6, 30, 'Buenavista', 3),
(551, 6, 30, 'Catanauan', 3),
(552, 6, 30, 'General Luna', 3),
(553, 6, 30, 'Macalelon', 3),
(554, 6, 30, 'Mulanay', 3),
(555, 6, 30, 'Padre Burgos', 3),
(556, 6, 30, 'Pitogo', 3),
(557, 6, 30, 'San Andres', 3),
(558, 6, 30, 'San Francisco', 3),
(559, 6, 30, 'San Narciso', 3),
(560, 6, 30, 'Unisan', 3),
(561, 6, 30, 'Alabat', 4),
(562, 6, 30, 'Atimonan', 4),
(563, 6, 30, 'Calauag', 4),
(564, 6, 30, 'Guinayangan', 4),
(565, 6, 30, 'Gumaca', 4),
(566, 6, 30, 'Lopez', 4),
(567, 6, 30, 'Perez', 4),
(568, 6, 30, 'Plaridel', 4),
(569, 6, 30, 'Quezon', 4),
(570, 6, 30, 'Tagkawayan', 4),
(571, 6, 31, 'Angono', 1),
(572, 6, 31, 'Antipolo City', 1),
(573, 6, 31, 'Baras', 2),
(574, 6, 31, 'Binangonan', 1),
(575, 6, 31, 'Cainta', 1),
(576, 6, 31, 'Cardona', 2),
(577, 6, 31, 'Jalajala', 2),
(578, 6, 31, 'Morong', 2),
(579, 6, 31, 'Pililla', 2),
(580, 6, 31, 'Rodriguez (Montalban)', 2),
(581, 6, 31, 'San Mateo', 2),
(582, 6, 31, 'Tanay', 2),
(583, 6, 31, 'Taytay', 1),
(584, 6, 31, 'Teresa', 2),
(585, 7, 32, 'Boac', 1),
(586, 7, 32, 'Buenavista', 1),
(587, 7, 32, 'Gasan', 1),
(588, 7, 32, 'Mogpog', 1),
(589, 7, 32, 'Santa Cruz', 1),
(590, 7, 32, 'Torrijos', 1),
(591, 7, 33, 'Abra de Ilog', 1),
(592, 7, 33, 'Calintaan', 1),
(593, 7, 33, 'Looc', 1),
(594, 7, 33, 'Lubang', 1),
(595, 7, 33, 'Magsaysay', 1),
(596, 7, 33, 'Mamburao', 1),
(597, 7, 33, 'Paluan', 1),
(598, 7, 33, 'Rizal', 1),
(599, 7, 33, 'Sablayan', 1),
(600, 7, 33, 'San Jose', 1),
(601, 7, 33, 'Santa Cruz', 1),
(602, 7, 34, 'Calapan City', 1),
(603, 7, 34, 'Baco', 1),
(604, 7, 34, 'Bansud', 2),
(605, 7, 34, 'Bongabong', 2),
(606, 7, 34, 'Bulalacao', 2),
(607, 7, 34, 'Gloria', 2),
(608, 7, 34, 'Mansalay', 2),
(609, 7, 34, 'Naujan', 1),
(610, 7, 34, 'Pinamalayan', 2),
(611, 7, 34, 'Pola', 1),
(612, 7, 34, 'Puerto Galera', 1),
(613, 7, 34, 'Roxas', 2),
(614, 7, 34, 'San Teodoro', 1),
(615, 7, 34, 'Socorro', 1),
(616, 7, 34, 'Victoria', 1),
(617, 7, 35, 'Aborlan', 2),
(618, 7, 35, 'Agutaya', 1),
(619, 7, 35, 'Araceli', 1),
(620, 7, 35, 'Balabac', 2),
(621, 7, 35, 'Bataraza', 2),
(622, 7, 35, 'Brooke\'s Point', 2),
(623, 7, 35, 'Busuanga', 1),
(624, 7, 35, 'Cagayancillo', 1),
(625, 7, 35, 'Coron', 1),
(626, 7, 35, 'Culion', 1),
(627, 7, 35, 'Cuyo', 1),
(628, 7, 35, 'Dumaran', 1),
(629, 7, 35, 'El Nido', 1),
(630, 7, 35, 'Kalayaan', 1),
(631, 7, 35, 'Linapacan', 1),
(632, 7, 35, 'Magsaysay', 1),
(633, 7, 35, 'Narra', 1),
(634, 7, 35, 'Puerto Princesa', 3),
(635, 7, 35, 'Quezon', 2),
(636, 7, 35, 'Rizal', 2),
(637, 7, 35, 'Roxas', 1),
(638, 7, 35, 'San Vicente', 1),
(639, 7, 35, 'Sofronio Española', 2),
(640, 7, 35, 'Taytay', 1),
(641, 7, 36, 'Alcantara', 1),
(642, 7, 36, 'Banton', 1),
(643, 7, 36, 'Cajidiocan', 1),
(644, 7, 36, 'Calatrava', 1),
(645, 7, 36, 'Concepcion', 1),
(646, 7, 36, 'Corcuera', 1),
(647, 7, 36, 'Ferrol', 1),
(648, 7, 36, 'Looc', 1),
(649, 7, 36, 'Magdiwang', 1),
(650, 7, 36, 'Odiongan', 1),
(651, 7, 36, 'Romblon', 1),
(652, 7, 36, 'San Agustin', 1),
(653, 7, 36, 'San Andres', 1),
(654, 7, 36, 'San Fernando', 1),
(655, 7, 36, 'San Jose', 1),
(656, 7, 36, 'Santa Fe', 1),
(657, 7, 36, 'Santa Maria', 1),
(658, 8, 37, 'Bacacay', 1),
(659, 8, 37, 'Camalig', 2),
(660, 8, 37, 'Daraga', 2),
(661, 8, 37, 'Guinobatan', 3),
(662, 8, 37, 'Jovellar', 3),
(663, 8, 37, 'Legazpi City', 2),
(664, 8, 37, 'Libon', 3),
(665, 8, 37, 'Ligao City', 3),
(666, 8, 37, 'Malilipot', 1),
(667, 8, 37, 'Malinao', 1),
(668, 8, 37, 'Manito', 2),
(669, 8, 37, 'Oas', 3),
(670, 8, 37, 'Pio Duran', 3),
(671, 8, 37, 'Polangui', 3),
(672, 8, 37, 'Rapu-Rapu', 2),
(673, 8, 37, 'Santo Domingo', 1),
(674, 8, 37, 'Tabaco City', 1),
(675, 8, 37, 'Tiwi', 1),
(676, 8, 38, 'Basud', 2),
(677, 8, 38, 'Capalonga', 1),
(678, 8, 38, 'Daet', 2),
(679, 8, 38, 'Jose Panganiban', 1),
(680, 8, 38, 'Labo', 1),
(681, 8, 38, 'Mercedes', 2),
(682, 8, 38, 'Paracale', 1),
(683, 8, 38, 'San Lorenzo Ruiz', 2),
(684, 8, 38, 'San Vicente', 2),
(685, 8, 38, 'Santa Elena', 1),
(686, 8, 38, 'Talisay', 2),
(687, 8, 38, 'Vinzons', 2),
(688, 8, 39, 'Baao', 5),
(689, 8, 39, 'Balatan', 5),
(690, 8, 39, 'Bato', 4),
(691, 8, 39, 'Bombon', 2),
(692, 8, 39, 'Buhi', 4),
(693, 8, 39, 'Bula', 5),
(694, 8, 39, 'Cabusao', 1),
(695, 8, 39, 'Calabanga', 3),
(696, 8, 39, 'Camaligan', 3),
(697, 8, 39, 'Canaman', 2),
(698, 8, 39, 'Caramoan', 3),
(699, 8, 39, 'Del Gallego', 1),
(700, 8, 39, 'Gainza', 2),
(701, 8, 39, 'Garchitorena', 3),
(702, 8, 39, 'Goa', 4),
(703, 8, 39, 'Iriga City', 4),
(704, 8, 39, 'Lagonoy', 3),
(705, 8, 39, 'Libmanan', 2),
(706, 8, 39, 'Lupi', 1),
(707, 8, 39, 'Magarao', 2),
(708, 8, 39, 'Milaor', 2),
(709, 8, 39, 'Minalabac', 2),
(710, 8, 39, 'Nabua', 4),
(711, 8, 39, 'Naga City', 3),
(712, 8, 39, 'Ocampo', 3),
(713, 8, 39, 'Pamplona', 2),
(714, 8, 39, 'Pasacao', 2),
(715, 8, 39, 'Pili', 3),
(716, 8, 39, 'Presentacion', 3),
(717, 8, 39, 'Ragay', 1),
(718, 8, 39, 'Sagñay', 3),
(719, 8, 39, 'San Fernando', 1),
(720, 8, 39, 'San Jose', 4),
(721, 8, 39, 'Sipocot', 1),
(722, 8, 39, 'Siruma', 3),
(723, 8, 39, 'Tigaon', 3),
(724, 8, 39, 'Tinambac', 3),
(725, 8, 40, 'Bagamanoc', 1),
(726, 8, 40, 'Baras', 1),
(727, 8, 40, 'Bato', 1),
(728, 8, 40, 'Caramoran', 1),
(729, 8, 40, 'Gigmoto', 1),
(730, 8, 40, 'Pandan', 1),
(731, 8, 40, 'Panganiban ', 1),
(732, 8, 40, 'San Andres ', 1),
(733, 8, 40, 'San Miguel', 1),
(734, 8, 40, 'Viga', 1),
(735, 8, 40, 'Virac', 1),
(736, 8, 41, 'Aroroy', 2),
(737, 8, 41, 'Baleno', 2),
(738, 8, 41, 'Balud', 2),
(739, 8, 41, 'Batuan', 1),
(740, 8, 41, 'Cataingan', 3),
(741, 8, 41, 'Cawayan', 3),
(742, 8, 41, 'Claveria', 1),
(743, 8, 41, 'Dimasalang', 3),
(744, 8, 41, 'Esperanza', 3),
(745, 8, 41, 'Mandaon', 2),
(746, 8, 41, 'Masbate City', 2),
(747, 8, 41, 'Milagros', 2),
(748, 8, 41, 'Mobo', 2),
(749, 8, 41, 'Monreal', 1),
(750, 8, 41, 'Palanas', 3),
(751, 8, 41, 'Pio V. Corpuz', 3),
(752, 8, 41, 'Placer', 3),
(753, 8, 41, 'San Fernando', 1),
(754, 8, 41, 'San Jacinto', 1),
(755, 8, 41, 'San Pascual', 1),
(756, 8, 41, 'Uson', 3),
(757, 8, 42, 'Barcelona', 2),
(758, 8, 42, 'Bulan', 2),
(759, 8, 42, 'Bulusan', 2),
(760, 8, 42, 'Casiguran', 1),
(761, 8, 42, 'Castilla', 1),
(762, 8, 42, 'Donsol', 1),
(763, 8, 42, 'Gubat', 2),
(764, 8, 42, 'Irosin', 2),
(765, 8, 42, 'Juban', 2),
(766, 8, 42, 'Magallanes', 1),
(767, 8, 42, 'Matnog', 2),
(768, 8, 42, 'Pilar', 1),
(769, 8, 42, 'Prieto Diaz', 2),
(770, 8, 42, 'Santa Magdalena', 2),
(771, 8, 42, 'Sorsogon City', 1),
(772, 9, 43, 'Altavas', 1),
(773, 9, 43, 'Balete', 1),
(774, 9, 43, 'Banga', 1),
(775, 9, 43, 'Batan', 1),
(776, 9, 43, 'Buruanga', 1),
(777, 9, 43, 'Ibajay', 1),
(778, 9, 43, 'Kalibo', 1),
(779, 9, 43, 'Lezo', 1),
(780, 9, 43, 'Libacao', 1),
(781, 9, 43, 'Madalag', 1),
(782, 9, 43, 'Makato', 1),
(783, 9, 43, 'Malay', 1),
(784, 9, 43, 'Malinao', 1),
(785, 9, 43, 'Nabas', 1),
(786, 9, 43, 'New Washington', 1),
(787, 9, 43, 'Numancia', 1),
(788, 9, 43, 'Tangalan', 1),
(789, 9, 44, 'Anini-y', 1),
(790, 9, 44, 'Barbaza', 1),
(791, 9, 44, 'Belison', 1),
(792, 9, 44, 'Bugasong', 1),
(793, 9, 44, 'Caluya', 1),
(794, 9, 44, 'Culasi', 1),
(795, 9, 44, 'Hamtic', 1),
(796, 9, 44, 'Laua-an', 1),
(797, 9, 44, 'Libertad', 1),
(798, 9, 44, 'Pandan', 1),
(799, 9, 44, 'Patnongon', 1),
(800, 9, 44, 'San Jose de Buenavista', 1),
(801, 9, 44, 'San Remigio', 1),
(802, 9, 44, 'Sebaste', 1),
(803, 9, 44, 'Sibalom', 1),
(804, 9, 44, 'Tibiao', 1),
(805, 9, 44, 'Tobias Fornier', 1),
(806, 9, 44, 'Valderrama', 1),
(807, 9, 45, 'Roxas City', 1),
(808, 9, 45, 'Cuartero', 2),
(809, 9, 45, 'Dao', 2),
(810, 9, 45, 'Dumalag', 2),
(811, 9, 45, 'Dumarao', 2),
(812, 9, 45, 'Ivisan', 2),
(813, 9, 45, 'Jamindan', 2),
(814, 9, 45, 'Maayon', 1),
(815, 9, 45, 'Mambusao', 2),
(816, 9, 45, 'Panay', 1),
(817, 9, 45, 'Panitan', 1),
(818, 9, 45, 'Pilar', 1),
(819, 9, 45, 'Pontevedra', 1),
(820, 9, 45, 'President Roxas', 1),
(821, 9, 45, 'Sapian', 2),
(822, 9, 45, 'Sigma', 2),
(823, 9, 45, 'Tapaz', 2),
(824, 9, 46, 'Buenavista', 1),
(825, 9, 46, 'Jordan', 1),
(826, 9, 46, 'Nueva Valencia', 1),
(827, 9, 46, 'San Lorenzo', 1),
(828, 9, 46, 'Sibunag', 1),
(829, 9, 47, 'Iloilo City', 1),
(830, 9, 47, 'Passi City', 4),
(831, 9, 47, 'Ajuy', 5),
(832, 9, 47, 'Alimodian', 2),
(833, 9, 47, 'Anilao', 4),
(834, 9, 47, 'Badiangan', 3),
(835, 9, 47, 'Balasan', 5),
(836, 9, 47, 'Banate', 4),
(837, 9, 47, 'Barotac Nuevo', 4),
(838, 9, 47, 'Barotac Viejo', 5),
(839, 9, 47, 'Batad', 5),
(840, 9, 47, 'Bingawan', 3),
(841, 9, 47, 'Cabatuan', 3),
(842, 9, 47, 'Calinog', 3),
(843, 9, 47, 'Carles', 5),
(844, 9, 47, 'Concepcion', 5),
(845, 9, 47, 'Dingle', 4),
(846, 9, 47, 'Dueñas', 4),
(847, 9, 47, 'Dumangas', 4),
(848, 9, 47, 'Estancia', 5),
(849, 9, 47, 'Guimbal', 1),
(850, 9, 47, 'Igbaras', 1),
(851, 9, 47, 'Janiuay', 3),
(852, 9, 47, 'Lambunao', 3),
(853, 9, 47, 'Leganes', 2),
(854, 9, 47, 'Lemery', 5),
(855, 9, 47, 'Leon', 2),
(856, 9, 47, 'Maasin', 3),
(857, 9, 47, 'Miagao', 1),
(858, 9, 47, 'Mina', 3),
(859, 9, 47, 'New Lucena', 2),
(860, 9, 47, 'Oton', 1),
(861, 9, 47, 'Pavia', 2),
(862, 9, 47, 'Pototan', 3),
(863, 9, 47, 'San Dionisio', 5),
(864, 9, 47, 'San Enrique', 4),
(865, 9, 47, 'San Joaquin', 1),
(866, 9, 47, 'San Miguel', 2),
(867, 9, 47, 'San Rafael', 5),
(868, 9, 47, 'Santa Barbara', 2),
(869, 9, 47, 'Sara', 5),
(870, 9, 47, 'Tigbauan', 1),
(871, 9, 47, 'Tubungan', 1),
(872, 9, 47, 'Zarraga', 2),
(873, 9, 48, 'Bacolod', 1),
(874, 9, 48, 'Bago', 4),
(875, 9, 48, 'Cadiz', 2),
(876, 9, 48, 'Escalante', 1),
(877, 9, 48, 'Himamaylan', 5),
(878, 9, 48, 'Kabankalan', 6),
(879, 9, 48, 'La Carlota', 4),
(880, 9, 48, 'Sagay', 2),
(881, 9, 48, 'San Carlos', 1),
(882, 9, 48, 'Silay', 3),
(883, 9, 48, 'Sipalay', 6),
(884, 9, 48, 'Talisay', 3),
(885, 9, 48, 'Victorias', 3),
(886, 9, 48, 'Binalbagan', 5),
(887, 9, 48, 'Calatrava', 1),
(888, 9, 48, 'Candoni', 6),
(889, 9, 48, 'Cauayan', 6),
(890, 9, 48, 'Enrique B. Magalona', 3),
(891, 9, 48, 'Hinigaran', 5),
(892, 9, 48, 'Hinoba-an', 6),
(893, 9, 48, 'Ilog', 6),
(894, 9, 48, 'Isabela', 5),
(895, 9, 48, 'La Castellana', 5),
(896, 9, 48, 'Manapla', 2),
(897, 9, 48, 'Moises Padilla', 5),
(898, 9, 48, 'Murcia', 3),
(899, 9, 48, 'Pontevedra', 4),
(900, 9, 48, 'Pulupandan', 4),
(901, 9, 48, 'Salvador Benedicto', 1),
(902, 9, 48, 'San Enrique', 4),
(903, 9, 48, 'Toboso', 1),
(904, 9, 48, 'Valladolid', 4),
(905, 10, 49, 'Tagbilaran City', 1),
(906, 10, 49, 'Alburquerque', 1),
(907, 10, 49, 'Antequera', 1),
(908, 10, 49, 'Baclayon', 1),
(909, 10, 49, 'Balilihan', 1),
(910, 10, 49, 'Calape', 1),
(911, 10, 49, 'Catigbian', 1),
(912, 10, 49, 'Corella', 1),
(913, 10, 49, 'Cortes', 1),
(914, 10, 49, 'Dauis', 1),
(915, 10, 49, 'Loon', 1),
(916, 10, 49, 'Maribojoc', 1),
(917, 10, 49, 'Panglao', 1),
(918, 10, 49, 'Sikatuna', 1),
(919, 10, 49, 'Tubigon', 1),
(920, 10, 49, 'Bien Unido', 2),
(921, 10, 49, 'Buenavista', 2),
(922, 10, 49, 'Clarin', 2),
(923, 10, 49, 'Dagohoy', 2),
(924, 10, 49, 'Danao', 2),
(925, 10, 49, 'Getafe', 2),
(926, 10, 49, 'Inabanga', 2),
(927, 10, 49, 'Pres. Carlos P. Garcia', 2),
(928, 10, 49, 'Sagbayan', 2),
(929, 10, 49, 'San Isidro', 2),
(930, 10, 49, 'San Miguel', 2),
(931, 10, 49, 'Talibon', 2),
(932, 10, 49, 'Trinidad', 2),
(933, 10, 49, 'Ubay', 2),
(934, 10, 49, 'Alicia', 3),
(935, 10, 49, 'Anda', 3),
(936, 10, 49, 'Batuan', 3),
(937, 10, 49, 'Bilar', 3),
(938, 10, 49, 'Candijay', 3),
(939, 10, 49, 'Carmen', 3),
(940, 10, 49, 'Dimiao', 3),
(941, 10, 49, 'Duero', 3),
(942, 10, 49, 'Garcia Hernandez', 3),
(943, 10, 49, 'Guindulman', 3),
(944, 10, 49, 'Jagna', 3),
(945, 10, 49, 'Lila', 3),
(946, 10, 49, 'Loay', 3),
(947, 10, 49, 'Loboc', 3),
(948, 10, 49, 'Mabini, Pilar', 3),
(949, 10, 49, 'Sevilla', 3),
(950, 10, 49, 'Sierra Bullones', 3),
(951, 10, 49, 'Valencia', 3),
(952, 10, 50, 'Danao City', 5),
(953, 10, 50, 'Talisay City', 1),
(954, 10, 50, 'Toledo City', 3),
(955, 10, 50, 'Bogo City', 4),
(956, 10, 50, 'Carcar City', 1),
(957, 10, 50, 'Naga City', 1),
(958, 10, 50, 'Alcantara', 2),
(959, 10, 50, 'Alcoy', 2),
(960, 10, 50, 'Alegria', 2),
(961, 10, 50, 'Aloguinsan', 3),
(962, 10, 50, 'Argao', 2),
(963, 10, 50, 'Asturias', 3),
(964, 10, 50, 'Badian', 2),
(965, 10, 50, 'Balamban', 3),
(966, 10, 50, 'Bantayan', 4),
(967, 10, 50, 'Barili', 3),
(968, 10, 50, 'Boljoon', 2),
(969, 10, 50, 'Borbon', 5),
(970, 10, 50, 'Carmen', 5),
(971, 10, 50, 'Catmon', 5),
(972, 10, 50, 'Compostela', 5),
(973, 10, 50, 'Consolacion', 6),
(974, 10, 50, 'Cordova', 6),
(975, 10, 50, 'Daanbantayan', 4),
(976, 10, 50, 'Dalaguete', 2),
(977, 10, 50, 'Dumanjug', 2),
(978, 10, 50, 'Ginatilan', 2),
(979, 10, 50, 'Liloan', 5),
(980, 10, 50, 'Madridejos', 4),
(981, 10, 50, 'Malabuyoc', 2),
(982, 10, 50, 'Medellin', 4),
(983, 10, 50, 'Minglanilla', 1),
(984, 10, 50, 'Moalboal', 2),
(985, 10, 50, 'Oslob', 2),
(986, 10, 50, 'Pilar', 5),
(987, 10, 50, 'Pinamungajan', 3),
(988, 10, 50, 'Poro', 5),
(989, 10, 50, 'Ronda', 2),
(990, 10, 50, 'Samboan', 2),
(991, 10, 50, 'San Fernando', 1),
(992, 10, 50, 'San Francisco', 5),
(993, 10, 50, 'San Remigio', 4),
(994, 10, 50, 'Santa Fe', 4),
(995, 10, 50, 'Santander', 2),
(996, 10, 50, 'Sibonga', 1),
(997, 10, 50, 'Sogod', 5),
(998, 10, 50, 'Tabogon', 4),
(999, 10, 50, 'Tabuelan', 4),
(1000, 10, 50, 'Tuburan', 3),
(1001, 10, 50, 'Tudela', 5),
(1002, 10, 50, 'Lapu-Lapu City', 1),
(1003, 10, 50, 'Mandaue City', 6),
(1004, 10, 51, 'Bais City', 2),
(1005, 10, 51, 'Bayawan City', 2),
(1006, 10, 51, 'Canlaon City', 1),
(1007, 10, 51, 'Dumaguete City', 2),
(1008, 10, 51, 'Guihulngan City', 1),
(1009, 10, 51, 'Tanjay City', 2),
(1010, 10, 51, 'Amlan', 2),
(1011, 10, 51, 'Ayungon', 1),
(1012, 10, 51, 'Bacong', 3),
(1013, 10, 51, 'Basay', 3),
(1014, 10, 51, 'Bindoy', 1),
(1015, 10, 51, 'Dauin', 3),
(1016, 10, 51, 'Jimalalud', 1),
(1017, 10, 51, 'La Libertad', 1),
(1018, 10, 51, 'Mabinay', 2),
(1019, 10, 51, 'Manjuyod', 1),
(1020, 10, 51, 'Pamplona', 2),
(1021, 10, 51, 'San Jose', 2),
(1022, 10, 51, 'Santa Catalina', 3),
(1023, 10, 51, 'Siaton', 3),
(1024, 10, 51, 'Sibulan', 2),
(1025, 10, 51, 'Tayasan', 1),
(1026, 10, 51, 'Valencia', 3),
(1027, 10, 51, 'Vallehermoso', 1),
(1028, 10, 51, 'Zamboanguita', 3),
(1029, 10, 52, 'Enrique Villanueva', 1),
(1030, 10, 52, 'Larena', 1),
(1031, 10, 52, 'Lazi', 1),
(1032, 10, 52, 'Maria', 1),
(1033, 10, 52, 'San Juan', 1),
(1034, 10, 52, 'Siquijor', 1),
(1035, 11, 53, 'Almeria', 1),
(1036, 11, 53, 'Biliran', 1),
(1037, 11, 53, 'Cabucgayan', 1),
(1038, 11, 53, 'Caibiran', 1),
(1039, 11, 53, 'Culaba', 1),
(1040, 11, 53, 'Kawayan', 1),
(1041, 11, 53, 'Maripipi', 1),
(1042, 11, 53, 'Naval', 1),
(1043, 11, 54, 'Borongan City', 1),
(1044, 11, 54, 'Arteche', 1),
(1045, 11, 54, 'Balangiga', 1),
(1046, 11, 54, 'Balangkayan', 1),
(1047, 11, 54, 'Can-avid', 1),
(1048, 11, 54, 'Dolores', 1),
(1049, 11, 54, 'General MacArthur', 1),
(1050, 11, 54, 'Giporlos', 1),
(1051, 11, 54, 'Guiuan', 1),
(1052, 11, 54, 'Hernani', 1),
(1053, 11, 54, 'Jipapad', 1),
(1054, 11, 54, 'Lawaan', 1),
(1055, 11, 54, 'Llorente', 1),
(1056, 11, 54, 'Maslog', 1),
(1057, 11, 54, 'Maydolong', 1),
(1058, 11, 54, 'Mercedes', 1),
(1059, 11, 54, 'Oras', 1),
(1060, 11, 54, 'Quinapondan', 1),
(1061, 11, 54, 'Salcedo', 1),
(1062, 11, 54, 'San Julian', 1),
(1063, 11, 54, 'San Policarpo', 1),
(1064, 11, 54, 'Sulat', 1),
(1065, 11, 54, 'Taft', 1),
(1066, 11, 55, 'Tacloban', 1),
(1067, 11, 55, 'Baybay', 5),
(1068, 11, 55, 'Ormoc', 4),
(1069, 11, 55, 'Abuyog', 5),
(1070, 11, 55, 'Alangalang', 1),
(1071, 11, 55, 'Albuera', 4),
(1072, 11, 55, 'Babatngon', 1),
(1073, 11, 55, 'Barugo', 2),
(1074, 11, 55, 'Bato', 5),
(1075, 11, 55, 'Burauen', 2),
(1076, 11, 55, 'Calubian', 3),
(1077, 11, 55, 'Capoocan', 2),
(1078, 11, 55, 'Carigara', 2),
(1079, 11, 55, 'Dagami', 2),
(1080, 11, 55, 'Dulag', 2),
(1081, 11, 55, 'Hilongos', 5),
(1082, 11, 55, 'Hindang', 5),
(1083, 11, 55, 'Inopacan', 5),
(1084, 11, 55, 'Isabel', 4),
(1085, 11, 55, 'Jaro', 2),
(1086, 11, 55, 'Javier', 5),
(1087, 11, 55, 'Julita', 2),
(1088, 11, 55, 'Kananga', 4),
(1089, 11, 55, 'La Paz', 2),
(1090, 11, 55, 'Leyte', 3),
(1091, 11, 55, 'MacArthur', 2),
(1092, 11, 55, 'Mahaplag', 5),
(1093, 11, 55, 'Matag-ob', 4),
(1094, 11, 55, 'Matalom', 5),
(1095, 11, 55, 'Mayorga', 2),
(1096, 11, 55, 'Merida', 4),
(1097, 11, 55, 'Palo', 1),
(1098, 11, 55, 'Palompon', 4),
(1099, 11, 55, 'Pastrana', 2),
(1100, 11, 55, 'San Isidro', 3),
(1101, 11, 55, 'San Miguel', 1),
(1102, 11, 55, 'Santa Fe', 1),
(1103, 11, 55, 'Tabango', 3),
(1104, 11, 55, 'Tabontabon', 2),
(1105, 11, 55, 'Tanauan', 1),
(1106, 11, 55, 'Tolosa', 1),
(1107, 11, 55, 'Tunga', 2),
(1108, 11, 55, 'Villaba', 3),
(1109, 11, 56, 'Allen', 1),
(1110, 11, 56, 'Biri', 1),
(1111, 11, 56, 'Bobon', 1),
(1112, 11, 56, 'Capul', 1),
(1113, 11, 56, 'Catarman', 1),
(1114, 11, 56, 'Catubig', 2),
(1115, 11, 56, 'Gamay', 2),
(1116, 11, 56, 'Laoang', 2),
(1117, 11, 56, 'Lapinig', 2),
(1118, 11, 56, 'Las Navas', 2),
(1119, 11, 56, 'Lavezares', 1),
(1120, 11, 56, 'Lope de Vega', 1),
(1121, 11, 56, 'Mapanas', 2),
(1122, 11, 56, 'Mondragon', 1),
(1123, 11, 56, 'Palapag', 2),
(1124, 11, 56, 'Pambujan', 2),
(1125, 11, 56, 'Rosario', 1),
(1126, 11, 56, 'San Antonio', 1),
(1127, 11, 56, 'San Isidro', 1),
(1128, 11, 56, 'San Jose', 1),
(1129, 11, 56, 'San Roque', 2),
(1130, 11, 56, 'San Vicente', 1),
(1131, 11, 56, 'Silvino Lobos', 2),
(1132, 11, 56, 'Victoria', 1),
(1133, 11, 57, 'Calbayog', 1),
(1134, 11, 57, 'Catbalogan', 2),
(1135, 11, 57, 'Almagro', 1),
(1136, 11, 57, 'Basey', 2),
(1137, 11, 57, 'Calbiga', 2),
(1138, 11, 57, 'Daram', 2),
(1139, 11, 57, 'Gandara', 1),
(1140, 11, 57, 'Hinabangan', 2),
(1141, 11, 57, 'Jiabong', 2),
(1142, 11, 57, 'Marabut', 2),
(1143, 11, 57, 'Matuguinao', 1),
(1144, 11, 57, 'Motiong', 2),
(1145, 11, 57, 'Pagsanghan', 1),
(1146, 11, 57, 'Paranas', 2),
(1147, 11, 57, 'Pinabacdao', 2),
(1148, 11, 57, 'San Jorge', 1),
(1149, 11, 57, 'San Jose de Buan', 2),
(1150, 11, 57, 'San Sebastian', 2),
(1151, 11, 57, 'Santa Margarita', 1),
(1152, 11, 57, 'Santa Rita', 2),
(1153, 11, 57, 'Santo Niño', 1),
(1154, 11, 57, 'Tagapul-an', 1),
(1155, 11, 57, 'Talalora', 2),
(1156, 11, 57, 'Tarangnan', 1),
(1157, 11, 57, 'Villareal', 2),
(1158, 11, 57, 'Zumarraga', 2),
(1159, 11, 58, 'Anahawan', 1),
(1160, 11, 58, 'Bontoc', 1),
(1161, 11, 58, 'Hinunangan', 1),
(1162, 11, 58, 'Hinundayan', 1),
(1163, 11, 58, 'Libagon', 1),
(1164, 11, 58, 'Liloan', 1),
(1165, 11, 58, 'Limasawa', 1),
(1166, 11, 58, 'Maasin City', 1),
(1167, 11, 58, 'Macrohon', 1),
(1168, 11, 58, 'Malitbog', 1),
(1169, 11, 58, 'Padre Burgos', 1),
(1170, 11, 58, 'Pintuyan', 1),
(1171, 11, 58, 'Saint Bernard', 1),
(1172, 11, 58, 'San Francisco', 1),
(1173, 11, 58, 'San Juan', 1),
(1174, 11, 58, 'San Ricardo', 1),
(1175, 11, 58, 'Silago', 1),
(1176, 11, 58, 'Sogod', 1),
(1177, 11, 58, 'Tomas Oppus', 1),
(1178, 12, 59, 'Dapitan City', 1),
(1179, 12, 59, 'Dipolog City', 2),
(1180, 12, 59, 'Baliguian', 3),
(1181, 12, 59, 'Godod', 3),
(1182, 12, 59, 'Gutalac', 3),
(1183, 12, 59, 'Jose Dalman (Ponot)', 2),
(1184, 12, 59, 'Kalawit', 3),
(1185, 12, 59, 'Katipunan', 2),
(1186, 12, 59, 'La Libertad', 1),
(1187, 12, 59, 'Labason', 3),
(1188, 12, 59, 'Leon B. Postigo (Bacungan)', 3),
(1189, 12, 59, 'Liloy', 3),
(1190, 12, 59, 'Manukan', 2),
(1191, 12, 59, 'Mutia', 1),
(1192, 12, 59, 'Piñan', 1),
(1193, 12, 59, 'Polanco', 1),
(1194, 12, 59, 'Pres. Manuel A. Roxas', 2),
(1195, 12, 59, 'Rizal', 1),
(1196, 12, 59, 'Salug', 3),
(1197, 12, 59, 'Sergio Osmeña Sr.', 1),
(1198, 12, 59, 'Siayan', 2),
(1199, 12, 59, 'Sibuco', 3),
(1200, 12, 59, 'Sibutad', 1),
(1201, 12, 59, 'Sindangan', 2),
(1202, 12, 59, 'Siocon', 3),
(1203, 12, 59, 'Sirawai', 3),
(1204, 12, 59, 'Tampilisan', 3),
(1205, 12, 60, 'Zamboanga City', NULL),
(1206, 12, 60, 'Pagadian City', 1),
(1207, 12, 60, 'Aurora', 1),
(1208, 12, 60, 'Bayog', 2),
(1209, 12, 60, 'Dimataling', 2),
(1210, 12, 60, 'Dinas', 2),
(1211, 12, 60, 'Dumalinao', 2),
(1212, 12, 60, 'Dumingag', 1),
(1213, 12, 60, 'Guipos', 2),
(1214, 12, 60, 'Josefina', 1),
(1215, 12, 60, 'Kumalarang', 2),
(1216, 12, 60, 'Labangan', 1),
(1217, 12, 60, 'Lakewood', 2),
(1218, 12, 60, 'Lapuyan', 2),
(1219, 12, 60, 'Mahayag', 1),
(1220, 12, 60, 'Margosatubig', 2),
(1221, 12, 60, 'Midsalip', 1),
(1222, 12, 60, 'Molave', 1),
(1223, 12, 60, 'Pitogo', 2),
(1224, 12, 60, 'Ramon Magsaysay (Liargo)', 1),
(1225, 12, 60, 'San Miguel', 2),
(1226, 12, 60, 'San Pablo', 2),
(1227, 12, 60, 'Sominot (Don Mariano Marcos)', 1),
(1228, 12, 60, 'Tabina', 2),
(1229, 12, 60, 'Tambulig', 1),
(1230, 12, 60, 'Tigbao', 2),
(1231, 12, 60, 'Tukuran', 1),
(1232, 12, 60, 'Vincenzo A. Sagun', 2),
(1233, 12, 61, 'Alicia', 1),
(1234, 12, 61, 'Buug', 1),
(1235, 12, 61, 'Diplahan', 1),
(1236, 12, 61, 'Imelda', 1),
(1237, 12, 61, 'Ipil', 2),
(1238, 12, 61, 'Kabasalan', 2),
(1239, 12, 61, 'Mabuhay', 1),
(1240, 12, 61, 'Malangas', 1),
(1241, 12, 61, 'Naga', 2),
(1242, 12, 61, 'Olutanga', 1),
(1243, 12, 61, 'Payao', 1),
(1244, 12, 61, 'Roseller T. Lim', 2),
(1245, 12, 61, 'Siay', 2),
(1246, 12, 61, 'Talusan', 1),
(1247, 12, 61, 'Titay', 2),
(1248, 12, 61, 'Tungawan', 2),
(1249, 13, 62, 'Baungon', 1),
(1250, 13, 62, 'Cabanglasan', 2),
(1251, 13, 62, 'Damulog', 3),
(1252, 13, 62, 'Dangcagan', 3),
(1253, 13, 62, 'Don Carlos', 3),
(1254, 13, 62, 'Impasugong', 2),
(1255, 13, 62, 'Kadingilan', 3),
(1256, 13, 62, 'Kalilangan', 4),
(1257, 13, 62, 'Kibawe', 3),
(1258, 13, 62, 'Kitaotao', 3),
(1259, 13, 62, 'Lantapan', 2),
(1260, 13, 62, 'Libona', 1),
(1261, 13, 62, 'Malaybalay City', 2),
(1262, 13, 62, 'Malitbog', 1),
(1263, 13, 62, 'Manolo Fortich', 1),
(1264, 13, 62, 'Maramag', 3),
(1265, 13, 62, 'Pangantucan', 4),
(1266, 13, 62, 'Quezon', 3),
(1267, 13, 62, 'San Fernando', 2),
(1268, 13, 62, 'Sumilao', 1),
(1269, 13, 62, 'Talakag', 1),
(1270, 13, 62, 'Valencia City', 2),
(1271, 13, 63, 'Catarman', 1),
(1272, 13, 63, 'Guinsiliban', 1),
(1273, 13, 63, 'Mahinog', 1),
(1274, 13, 63, 'Mambajao', 1),
(1275, 13, 63, 'Sagay', 1),
(1276, 13, 64, 'Bacolod', 1),
(1277, 13, 64, 'Baloi', 1),
(1278, 13, 64, 'Baroy', 1),
(1279, 13, 64, 'Kapatagan', 2),
(1280, 13, 64, 'Kauswagan', 1),
(1281, 13, 64, 'Kolambugan', 1),
(1282, 13, 64, 'Lala', 2),
(1283, 13, 64, 'Linamon', 1),
(1284, 13, 64, 'Magsaysay', 2),
(1285, 13, 64, 'Maigo', 1),
(1286, 13, 64, 'Matungao', 1),
(1287, 13, 64, 'Munai', 2),
(1288, 13, 64, 'Nunungan', 2),
(1289, 13, 64, 'Pantao Ragat', 2),
(1290, 13, 64, 'Pantar', 1),
(1291, 13, 64, 'Poona Piagapo', 2),
(1292, 13, 64, 'Salvador', 2),
(1293, 13, 64, 'Sapad', 2),
(1294, 13, 64, 'Sultan Naga Dimaporo ', 2),
(1295, 13, 64, 'Tagoloan', 1),
(1296, 13, 64, 'Tangcal', 2),
(1297, 13, 64, 'Tubod ', 1),
(1298, 13, 65, 'Oroquieta City', 1),
(1299, 13, 65, 'Ozamiz City', 2),
(1300, 13, 65, 'Tangub City', 2),
(1301, 13, 65, 'Aloran', 1),
(1302, 13, 65, 'Baliangao', 1),
(1303, 13, 65, 'Bonifacio', 2),
(1304, 13, 65, 'Calamba', 1),
(1305, 13, 65, 'Clarin', 2),
(1306, 13, 65, 'Concepcion', 1),
(1307, 13, 65, 'Don Victoriano Chiongbian', 2),
(1308, 13, 65, 'Jimenez', 1),
(1309, 13, 65, 'Lopez Jaena', 1),
(1310, 13, 65, 'Panaon', 1),
(1311, 13, 65, 'Plaridel', 1),
(1312, 13, 65, 'Sapang Dalaga', 1),
(1313, 13, 65, 'Sinacaban', 2),
(1314, 13, 65, 'Tudela', 2),
(1315, 13, 66, 'El Salvador City', 2),
(1316, 13, 66, 'Gingoog City', 1),
(1317, 13, 66, 'Alubijid', 2),
(1318, 13, 66, 'Balingasag', 1),
(1319, 13, 66, 'Balingoan', 1),
(1320, 13, 66, 'Binuangan', 1),
(1321, 13, 66, 'Claveria', 2),
(1322, 13, 66, 'Gitagum', 2),
(1323, 13, 66, 'Initao', 2),
(1324, 13, 66, 'Jasaan', 2),
(1325, 13, 66, 'Kinoguitan', 1),
(1326, 13, 66, 'Lagonglong', 1),
(1327, 13, 66, 'Laguindingan', 2),
(1328, 13, 66, 'Libertad', 2),
(1329, 13, 66, 'Lugait', 2),
(1330, 13, 66, 'Magsaysay', 1),
(1331, 13, 66, 'Manticao', 2),
(1332, 13, 66, 'Medina', 1),
(1333, 13, 66, 'Naawan', 2),
(1334, 13, 66, 'Opol', 2),
(1335, 13, 66, 'Salay', 1),
(1336, 13, 66, 'Sugbongcogon', 1),
(1337, 13, 66, 'Tagoloan', 2),
(1338, 13, 66, 'Talisayan', 1),
(1339, 13, 66, 'Villanueva', 2),
(1340, 14, 67, 'Compostela', 1),
(1341, 14, 67, 'Laak', 2),
(1342, 14, 67, 'Mabini', 2),
(1343, 14, 67, 'Maco', 2),
(1344, 14, 67, 'Maragusan', 1),
(1345, 14, 67, 'Mawab', 2),
(1346, 14, 67, 'Monkayo', 1),
(1347, 14, 67, 'Montevista', 1),
(1348, 14, 67, 'Nabunturan', 2),
(1349, 14, 67, 'New Bataan', 1),
(1350, 14, 67, 'Pantukan', 2),
(1351, 14, 68, 'Asuncion', 1),
(1352, 14, 68, 'Braulio E. Dujali', 2),
(1353, 14, 68, 'Carmen', 2),
(1354, 14, 68, 'Kapalong', 1),
(1355, 14, 68, 'New Corella', 1),
(1356, 14, 68, 'Panabo City', 2),
(1357, 14, 68, 'Samal City', 2),
(1358, 14, 68, 'San Isidro', 1),
(1359, 14, 68, 'Santo Tomas', 2),
(1360, 14, 68, 'Tagum City', 1),
(1361, 14, 68, 'Talaingod', 1),
(1362, 14, 69, 'Davao City', 1),
(1363, 14, 69, 'Digos City', 1),
(1364, 14, 69, 'Bansalan', 1),
(1365, 14, 69, 'Hagonoy', 1),
(1366, 14, 69, 'Kiblawan', 1),
(1367, 14, 69, 'Magsaysay', 1),
(1368, 14, 69, 'Malalag', 1),
(1369, 14, 69, 'Matanao', 1),
(1370, 14, 69, 'Padada', 1),
(1371, 14, 69, 'Santa Cruz', 1),
(1372, 14, 69, 'Sulop', 1),
(1373, 14, 70, 'Mati City', 2),
(1374, 14, 70, 'Baganga', 1),
(1375, 14, 70, 'Banaybanay', 2),
(1376, 14, 70, 'Boston', 1),
(1377, 14, 70, 'Caraga', 1),
(1378, 14, 70, 'Cateel', 1),
(1379, 14, 70, 'Governor Generoso', 2),
(1380, 14, 70, 'Lupon', 2),
(1381, 14, 70, 'Manay', 1),
(1382, 14, 70, 'San Isidro', 2),
(1383, 14, 70, 'Tarragona', 1),
(1384, 14, 71, 'Don Marcelino', 1),
(1385, 14, 71, 'Jose Abad Santos', 1),
(1386, 14, 71, 'Malita', 1),
(1387, 14, 71, 'Santa Maria', 1),
(1388, 14, 71, 'Sarangani', 1),
(1389, 15, 72, 'Alamada', 1),
(1390, 15, 72, 'Aleosan', 1),
(1391, 15, 72, 'Antipas', 2),
(1392, 15, 72, 'Arakan', 2),
(1393, 15, 72, 'Banisilan', 3),
(1394, 15, 72, 'Carmen', 3),
(1395, 15, 72, 'Kabacan', 3),
(1396, 15, 72, 'Kidapawan City', 2),
(1397, 15, 72, 'Libungan', 1),
(1398, 15, 72, 'Magpet', 2),
(1399, 15, 72, 'Makilala', 2),
(1400, 15, 72, 'Matalam', 3),
(1401, 15, 72, 'Midsayap', 1),
(1402, 15, 72, 'M\'lang', 3),
(1403, 15, 72, 'Pigcawayan', 1),
(1404, 15, 72, 'Pikit', 1),
(1405, 15, 72, 'President Roxas', 2),
(1406, 15, 72, 'Tulunan', 3),
(1407, 15, 73, 'Alabel', 1),
(1408, 15, 73, 'Glan', 1),
(1409, 15, 73, 'Kiamba', 1),
(1410, 15, 73, 'Maasim', 1),
(1411, 15, 73, 'Maitum', 1),
(1412, 15, 73, 'Malapatan', 1),
(1413, 15, 73, 'Malungon', 1),
(1414, 15, 74, 'General Santos', 1),
(1415, 15, 74, 'Banga', 1),
(1416, 15, 74, 'Koronadal', 2),
(1417, 15, 74, 'Lake Sebu', 2),
(1418, 15, 74, 'Norala', 2),
(1419, 15, 74, 'Polomolok', 1),
(1420, 15, 74, 'Sto. Niño', 2),
(1421, 15, 74, 'Surallah', 2),
(1422, 15, 74, 'Tampakan', 1),
(1423, 15, 74, 'Tantangan', 2),
(1424, 15, 74, 'T\'Boli', 2),
(1425, 15, 74, 'Tupi', 1),
(1426, 15, 75, 'Tacurong', 1),
(1427, 15, 75, 'Bagumbayan', 2),
(1428, 15, 75, 'Columbio', 1),
(1429, 15, 75, 'Esperanza', 2),
(1430, 15, 75, 'Isulan', 1),
(1431, 15, 75, 'Kalamansig', 2),
(1432, 15, 75, 'Lambayong ', 1),
(1433, 15, 75, 'Lebak', 2),
(1434, 15, 75, 'Lutayan', 1),
(1435, 15, 75, 'Palimbang', 2),
(1436, 15, 75, 'President Quirino', 1),
(1437, 15, 75, 'Sen. Ninoy Aquino', 2),
(1438, 16, 76, 'Butuan City', 1),
(1439, 16, 76, 'Cabadbaran City', 2),
(1440, 16, 76, 'Buenavista', 2),
(1441, 16, 76, 'Carmen', 2),
(1442, 16, 76, 'Jabonga', 2),
(1443, 16, 76, 'Kitcharao', 2),
(1444, 16, 76, 'Las Nieves', 1),
(1445, 16, 76, 'Magallanes', 2),
(1446, 16, 76, 'Nasipit', 2),
(1447, 16, 76, 'Remedios T. Romualdez', 2),
(1448, 16, 76, 'Santiago', 2),
(1449, 16, 76, 'Tubay', 2),
(1450, 16, 77, 'Bayugan City', 1),
(1451, 16, 77, 'Bunawan', 2),
(1452, 16, 77, 'Esperanza', 1),
(1453, 16, 77, 'La Paz', 2),
(1454, 16, 77, 'Loreto', 2),
(1455, 16, 77, 'Prosperidad', 1),
(1456, 16, 77, 'Rosario', 2),
(1457, 16, 77, 'San Francisco', 2),
(1458, 16, 77, 'San Luis', 1),
(1459, 16, 77, 'Santa Josefa', 2),
(1460, 16, 77, 'Sibagat', 1),
(1461, 16, 77, 'Talacogon', 1),
(1462, 16, 77, 'Trento', 2),
(1463, 16, 77, 'Veruela', 2),
(1464, 16, 78, 'Basilisa', 1),
(1465, 16, 78, 'Cagdianao', 1),
(1466, 16, 78, 'Dinagat', 1),
(1467, 16, 78, 'Libjo ', 1),
(1468, 16, 78, 'Loreto', 1),
(1469, 16, 78, 'Tubajon', 1),
(1470, 16, 78, 'San Jose', 1),
(1471, 16, 79, 'Surigao City', 2),
(1472, 16, 79, 'Alegria', 2),
(1473, 16, 79, 'Bacuag', 2),
(1474, 16, 79, 'Burgos', 1),
(1475, 16, 79, 'Claver', 2),
(1476, 16, 79, 'Dapa', 1),
(1477, 16, 79, 'Del Carmen', 1),
(1478, 16, 79, 'General Luna', 1),
(1479, 16, 79, 'Gigaquit', 2),
(1480, 16, 79, 'Mainit', 2),
(1481, 16, 79, 'Malimono', 2),
(1482, 16, 79, 'Pilar', 1),
(1483, 16, 79, 'Placer', 2),
(1484, 16, 79, 'San Benito', 1),
(1485, 16, 79, 'San Francisco ', 2),
(1486, 16, 79, 'San Isidro', 1),
(1487, 16, 79, 'Santa Monica ', 1),
(1488, 16, 79, 'Sison', 2),
(1489, 16, 79, 'Socorro', 1),
(1490, 16, 79, 'Tagana-an', 2),
(1491, 16, 79, 'Tubod', 2),
(1492, 16, 80, 'Tandag City', 1),
(1493, 16, 80, 'Bislig City', 2),
(1494, 16, 80, 'Barobo', 2),
(1495, 16, 80, 'Bayabas', 1),
(1496, 16, 80, 'Cagwait', 1),
(1497, 16, 80, 'Cantilan', 1),
(1498, 16, 80, 'Carmen', 1),
(1499, 16, 80, 'Carrascal', 1),
(1500, 16, 80, 'Cortes', 1),
(1501, 16, 80, 'Hinatuan', 2),
(1502, 16, 80, 'Lanuza', 1),
(1503, 16, 80, 'Lianga', 1),
(1504, 16, 80, 'Lingig', 2),
(1505, 16, 80, 'Madrid', 1),
(1506, 16, 80, 'Marihatag', 1),
(1507, 16, 80, 'San Agustin', 1),
(1508, 16, 80, 'San Miguel', 1),
(1509, 16, 80, 'Tagbina', 2),
(1510, 16, 80, 'Tago', 1),
(1511, 17, 81, 'Marawi City', 1),
(1512, 17, 81, 'Bacolod-Kalawi ', 2),
(1513, 17, 81, 'Balabagan', 2),
(1514, 17, 81, 'Balindong ', 2),
(1515, 17, 81, 'Bayang', 2),
(1516, 17, 81, 'Binidayan', 2),
(1517, 17, 81, 'Buadiposo-Buntong', 1),
(1518, 17, 81, 'Bubong', 1),
(1519, 17, 81, 'Bumbaran', 1),
(1520, 17, 81, 'Butig', 2),
(1521, 17, 81, 'Calanogas', 2),
(1522, 17, 81, 'Ditsaan-Ramain', 1),
(1523, 17, 81, 'Ganassi', 2),
(1524, 17, 81, 'Kapai', 1),
(1525, 17, 81, 'Kapatagan', 2),
(1526, 17, 81, 'Lumba-Bayabao', 1),
(1527, 17, 81, 'Lumbaca-Unayan', 2),
(1528, 17, 81, 'Lumbatan', 2),
(1529, 17, 81, 'Lumbayanague ', 2),
(1530, 17, 81, 'Madalum', 2),
(1531, 17, 81, 'Madamba ', 2),
(1532, 17, 81, 'Maguing', 1),
(1533, 17, 81, 'Malabang', 2),
(1534, 17, 81, 'Marantao ', 1),
(1535, 17, 81, 'Marogong', 2),
(1536, 17, 81, 'Masiu', 1),
(1537, 17, 81, 'Mulondo', 1),
(1538, 17, 81, 'Pagayawan', 2),
(1539, 17, 81, 'Piagapo', 1),
(1540, 17, 81, 'Picong', 2),
(1541, 17, 81, 'Poona Bayabao', 1),
(1542, 17, 81, 'Pualas', 2),
(1543, 17, 81, 'Saguiaran', 1),
(1544, 17, 81, 'Sultan Dumalondong', 2),
(1545, 17, 81, 'Tagoloan II', 1),
(1546, 17, 81, 'Tamparan', 1),
(1547, 17, 81, 'Taraka', 1),
(1548, 17, 81, 'Tubaran', 2),
(1549, 17, 81, 'Tugaya', 2),
(1550, 17, 81, 'Wao', 1),
(1551, 17, 82, 'Ampatuan', 2),
(1552, 17, 82, 'Barira', 1),
(1553, 17, 82, 'Buldon', 1),
(1554, 17, 82, 'Buluan', 2),
(1555, 17, 82, 'Datu Abdullah Sangki', 2),
(1556, 17, 82, 'Datu Anggal Midtimbang', 2),
(1557, 17, 82, 'Datu Blah T. Sinsuat', 1),
(1558, 17, 82, 'Datu Hoffer Ampatuan', 2),
(1559, 17, 82, 'Datu Odin Sinsuat', 1),
(1560, 17, 82, 'Datu Paglas', 2),
(1561, 17, 82, 'Datu Piang', 2),
(1562, 17, 82, 'Datu Salibo', 2),
(1563, 17, 82, 'Datu Saudi-Ampatuan', 2),
(1564, 17, 82, 'Datu Unsay', 2),
(1565, 17, 82, 'Gen. S. K. Pendatun', 2),
(1566, 17, 82, 'Guindulungan', 2),
(1567, 17, 82, 'Kabuntalan', 1),
(1568, 17, 82, 'Mamasapano', 2),
(1569, 17, 82, 'Mangudadatu', 2),
(1570, 17, 82, 'Matanog', 1),
(1571, 17, 82, 'Northern Kabuntalan', 1),
(1572, 17, 82, 'Pagagawan', 2),
(1573, 17, 82, 'Pagalungan', 2),
(1574, 17, 82, 'Paglat', 2),
(1575, 17, 82, 'Pandag', 2),
(1576, 17, 82, 'Parang', 1),
(1577, 17, 82, 'Rajah Buayan', 2),
(1578, 17, 82, 'Shariff Aguak (Maganoy)', 2),
(1579, 17, 82, 'Shariff Saydona Mustapha', 2),
(1580, 17, 82, 'South Upi', 2),
(1581, 17, 82, 'Sultan Kudarat ', 1),
(1582, 17, 82, 'Sultan Mastura', 1),
(1583, 17, 82, 'Sultan sa Barongis (Lambayong)', 2),
(1584, 17, 82, 'Sultan Sumagka (Talitay)', 2),
(1585, 17, 82, 'Talayan', 2),
(1586, 17, 82, 'Upi', 1),
(1587, 17, 83, 'Banguingui', 2),
(1588, 17, 83, 'Hadji Panglima Tahil (Marunggas)', 1),
(1589, 17, 83, 'Indanan', 1),
(1590, 17, 83, 'Jolo', 1),
(1591, 17, 83, 'Kalingalan Caluang', 2),
(1592, 17, 83, 'Lugus', 2),
(1593, 17, 83, 'Luuk', 2),
(1594, 17, 83, 'Maimbung', 1),
(1595, 17, 83, 'Old Panamao', 2),
(1596, 17, 83, 'Omar', 2),
(1597, 17, 83, 'Pandami', 2),
(1598, 17, 83, 'Panglima Estino (New Panamao)', 2),
(1599, 17, 83, 'Pangutaran', 1),
(1600, 17, 83, 'Parang', 1),
(1601, 17, 83, 'Pata', 2),
(1602, 17, 83, 'Patikul', 1),
(1603, 17, 83, 'Siasi', 2),
(1604, 17, 83, 'Talipao', 1),
(1605, 17, 83, 'Tapul', 2),
(1606, 17, 84, 'Bongao', 1),
(1607, 17, 84, 'Languyan', 1),
(1608, 17, 84, 'Mapun ', 1),
(1609, 17, 84, 'Panglima Sugala', 1),
(1610, 17, 84, 'Sapa-Sapa', 1),
(1611, 17, 84, 'Sibutu', 1),
(1612, 17, 84, 'Simunul ', 1),
(1613, 17, 84, 'Sitangkai', 1),
(1614, 17, 84, 'South Ubian', 1),
(1615, 17, 84, 'Tandubas', 1),
(1616, 17, 84, 'Turtle Islands', 1),
(1617, 17, 85, 'Akbar', 1),
(1618, 17, 85, 'Al-Barka', 1),
(1619, 17, 85, 'Hadji Mohammad Ajul', 1),
(1620, 17, 85, 'Hadji Muhtamad', 1),
(1621, 17, 85, 'Isabela City', 1),
(1622, 17, 85, 'Lamitan City', 1),
(1623, 17, 85, 'Lantawan', 1),
(1624, 17, 85, 'Maluso', 1),
(1625, 17, 85, 'Sumisip', 1),
(1626, 17, 85, 'Tabuan-Lasa', 1),
(1627, 17, 85, 'Tipo-Tipo', 1),
(1628, 17, 85, 'Tuburan', 1),
(1629, 17, 85, 'Ungkaya Pukan', 1),
(1630, 5, 24, 'Clark Freeport Zone', 1),
(1631, 5, 26, 'Subic Bay Freeport Zone', 1);

-- --------------------------------------------------------

--
-- Table structure for table `er_munlist`
--

CREATE TABLE `er_munlist` (
  `id` int(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `er_munlist`
--

INSERT INTO `er_munlist` (`id`, `name`, `created_at`, `updated_at`) VALUES
(0, 'Aborlan', '2018-08-01 20:28:41', '2018-08-01 20:28:41'),
(1, 'Abra de Ilog', '2018-08-01 20:28:41', '2018-08-01 20:28:41'),
(2, 'Abucay', '2018-08-01 20:28:41', '2018-08-01 20:28:41'),
(3, 'Abulug', '2018-08-01 20:28:41', '2018-08-01 20:28:41'),
(4, 'Abuyog', '2018-08-01 20:28:41', '2018-08-01 20:28:41'),
(5, 'Adams', '2018-08-01 20:28:42', '2018-08-01 20:28:42'),
(6, 'Agdangan', '2018-08-01 20:28:42', '2018-08-01 20:28:42'),
(7, 'Aglipay', '2018-08-01 20:28:42', '2018-08-01 20:28:42'),
(8, 'Agno', '2018-08-01 20:28:42', '2018-08-01 20:28:42'),
(9, 'Agoncillo', '2018-08-01 20:28:42', '2018-08-01 20:28:42'),
(10, 'Agoo', '2018-08-01 20:28:42', '2018-08-01 20:28:42'),
(11, 'Aguilar', '2018-08-01 20:28:42', '2018-08-01 20:28:42'),
(12, 'Aguinaldo', '2018-08-01 20:28:42', '2018-08-01 20:28:42'),
(13, 'Agutaya', '2018-08-01 20:28:42', '2018-08-01 20:28:42'),
(14, 'Ajuy', '2018-08-01 20:28:42', '2018-08-01 20:28:42'),
(15, 'Akbar', '2018-08-01 20:28:42', '2018-08-01 20:28:42'),
(16, 'Al-Barka', '2018-08-01 20:28:42', '2018-08-01 20:28:42'),
(17, 'Alabat', '2018-08-01 20:28:42', '2018-08-01 20:28:42'),
(18, 'Alabel', '2018-08-01 20:28:42', '2018-08-01 20:28:42'),
(19, 'Alamada', '2018-08-01 20:28:42', '2018-08-01 20:28:42'),
(20, 'Alaminos', '2018-08-01 20:28:42', '2018-08-01 20:28:42'),
(21, 'Alaminos', '2018-08-01 20:28:42', '2018-08-01 20:28:42'),
(22, 'Alangalang', '2018-08-01 20:28:43', '2018-08-01 20:28:43'),
(23, 'Albuera', '2018-08-01 20:28:43', '2018-08-01 20:28:43'),
(24, 'Alburquerque', '2018-08-01 20:28:43', '2018-08-01 20:28:43'),
(25, 'Alcala', '2018-08-01 20:28:43', '2018-08-01 20:28:43'),
(26, 'Alcala', '2018-08-01 20:28:43', '2018-08-01 20:28:43'),
(27, 'Alcantara', '2018-08-01 20:28:43', '2018-08-01 20:28:43'),
(28, 'Alcantara', '2018-08-01 20:28:43', '2018-08-01 20:28:43'),
(29, 'Alcoy', '2018-08-01 20:28:43', '2018-08-01 20:28:43'),
(30, 'Alegria', '2018-08-01 20:28:43', '2018-08-01 20:28:43'),
(31, 'Alegria', '2018-08-01 20:28:43', '2018-08-01 20:28:43'),
(32, 'Aleosan', '2018-08-01 20:28:43', '2018-08-01 20:28:43'),
(33, 'Alfonso', '2018-08-01 20:28:43', '2018-08-01 20:28:43'),
(34, 'Alfonso Castañeda', '2018-08-01 20:28:43', '2018-08-01 20:28:43'),
(35, 'Alfonso Lista (Potia)', '2018-08-01 20:28:43', '2018-08-01 20:28:43'),
(36, 'Aliaga', '2018-08-01 20:28:43', '2018-08-01 20:28:43'),
(37, 'Alicia', '2018-08-01 20:28:44', '2018-08-01 20:28:44'),
(38, 'Alicia', '2018-08-01 20:28:44', '2018-08-01 20:28:44'),
(39, 'Alicia', '2018-08-01 20:28:44', '2018-08-01 20:28:44'),
(40, 'Alilem', '2018-08-01 20:28:44', '2018-08-01 20:28:44'),
(41, 'Alimodian', '2018-08-01 20:28:44', '2018-08-01 20:28:44'),
(42, 'Alitagtag', '2018-08-01 20:28:44', '2018-08-01 20:28:44'),
(43, 'Allacapan', '2018-08-01 20:28:44', '2018-08-01 20:28:44'),
(44, 'Allen', '2018-08-01 20:28:44', '2018-08-01 20:28:44'),
(45, 'Almagro', '2018-08-01 20:28:44', '2018-08-01 20:28:44'),
(46, 'Almeria', '2018-08-01 20:28:44', '2018-08-01 20:28:44'),
(47, 'Aloguinsan', '2018-08-01 20:28:44', '2018-08-01 20:28:44'),
(48, 'Aloran', '2018-08-01 20:28:44', '2018-08-01 20:28:44'),
(49, 'Altavas', '2018-08-01 20:28:44', '2018-08-01 20:28:44'),
(50, 'Alubijid', '2018-08-01 20:28:44', '2018-08-01 20:28:44'),
(51, 'Amadeo', '2018-08-01 20:28:44', '2018-08-01 20:28:44'),
(52, 'Ambaguio', '2018-08-01 20:28:44', '2018-08-01 20:28:44'),
(53, 'Amlan', '2018-08-01 20:28:45', '2018-08-01 20:28:45'),
(54, 'Ampatuan', '2018-08-01 20:28:45', '2018-08-01 20:28:45'),
(55, 'Amulung', '2018-08-01 20:28:45', '2018-08-01 20:28:45'),
(56, 'Anahawan', '2018-08-01 20:28:45', '2018-08-01 20:28:45'),
(57, 'Anao', '2018-08-01 20:28:45', '2018-08-01 20:28:45'),
(58, 'Anda', '2018-08-01 20:28:45', '2018-08-01 20:28:45'),
(59, 'Anda', '2018-08-01 20:28:45', '2018-08-01 20:28:45'),
(60, 'Angadanan', '2018-08-01 20:28:45', '2018-08-01 20:28:45'),
(61, 'Angat', '2018-08-01 20:28:45', '2018-08-01 20:28:45'),
(62, 'Angeles City', '2018-08-01 20:28:45', '2018-08-01 20:28:45'),
(63, 'Angono', '2018-08-01 20:28:45', '2018-08-01 20:28:45'),
(64, 'Anilao', '2018-08-01 20:28:45', '2018-08-01 20:28:45'),
(65, 'Anini-y', '2018-08-01 20:28:45', '2018-08-01 20:28:45'),
(66, 'Antequera', '2018-08-01 20:28:45', '2018-08-01 20:28:45'),
(67, 'Antipas', '2018-08-01 20:28:45', '2018-08-01 20:28:45'),
(68, 'Antipolo City', '2018-08-01 20:28:45', '2018-08-01 20:28:45'),
(69, 'Apalit', '2018-08-01 20:28:45', '2018-08-01 20:28:45'),
(70, 'Aparri', '2018-08-01 20:28:45', '2018-08-01 20:28:45'),
(71, 'Araceli', '2018-08-01 20:28:45', '2018-08-01 20:28:45'),
(72, 'Arakan', '2018-08-01 20:28:45', '2018-08-01 20:28:45'),
(73, 'Arayat', '2018-08-01 20:28:45', '2018-08-01 20:28:45'),
(74, 'Argao', '2018-08-01 20:28:46', '2018-08-01 20:28:46'),
(75, 'Aringay', '2018-08-01 20:28:46', '2018-08-01 20:28:46'),
(76, 'Aritao', '2018-08-01 20:28:46', '2018-08-01 20:28:46'),
(77, 'Aroroy', '2018-08-01 20:28:46', '2018-08-01 20:28:46'),
(78, 'Arteche', '2018-08-01 20:28:46', '2018-08-01 20:28:46'),
(79, 'Asingan', '2018-08-01 20:28:46', '2018-08-01 20:28:46'),
(80, 'Asipulo', '2018-08-01 20:28:46', '2018-08-01 20:28:46'),
(81, 'Asturias', '2018-08-01 20:28:46', '2018-08-01 20:28:46'),
(82, 'Asuncion', '2018-08-01 20:28:46', '2018-08-01 20:28:46'),
(83, 'Atimonan', '2018-08-01 20:28:46', '2018-08-01 20:28:46'),
(84, 'Atok', '2018-08-01 20:28:46', '2018-08-01 20:28:46'),
(85, 'Aurora', '2018-08-01 20:28:46', '2018-08-01 20:28:46'),
(86, 'Aurora', '2018-08-01 20:28:46', '2018-08-01 20:28:46'),
(87, 'Ayungon', '2018-08-01 20:28:46', '2018-08-01 20:28:46'),
(88, 'Baao', '2018-08-01 20:28:46', '2018-08-01 20:28:46'),
(89, 'Babatngon', '2018-08-01 20:28:46', '2018-08-01 20:28:46'),
(90, 'Bacacay', '2018-08-01 20:28:46', '2018-08-01 20:28:46'),
(91, 'Bacarra', '2018-08-01 20:28:46', '2018-08-01 20:28:46'),
(92, 'Baclayon', '2018-08-01 20:28:46', '2018-08-01 20:28:46'),
(93, 'Bacnotan', '2018-08-01 20:28:47', '2018-08-01 20:28:47'),
(94, 'Baco', '2018-08-01 20:28:47', '2018-08-01 20:28:47'),
(95, 'Bacolod', '2018-08-01 20:28:47', '2018-08-01 20:28:47'),
(96, 'Bacolod', '2018-08-01 20:28:47', '2018-08-01 20:28:47'),
(97, 'Bacolod-Kalawi ', '2018-08-01 20:28:47', '2018-08-01 20:28:47'),
(98, 'Bacolor', '2018-08-01 20:28:47', '2018-08-01 20:28:47'),
(99, 'Bacong', '2018-08-01 20:28:47', '2018-08-01 20:28:47'),
(100, 'Bacoor', '2018-08-01 20:28:47', '2018-08-01 20:28:47'),
(101, 'Bacuag', '2018-08-01 20:28:47', '2018-08-01 20:28:47'),
(102, 'Badian', '2018-08-01 20:28:47', '2018-08-01 20:28:47'),
(103, 'Badiangan', '2018-08-01 20:28:47', '2018-08-01 20:28:47'),
(104, 'Badoc', '2018-08-01 20:28:47', '2018-08-01 20:28:47'),
(105, 'Bagabag', '2018-08-01 20:28:47', '2018-08-01 20:28:47'),
(106, 'Bagac', '2018-08-01 20:28:47', '2018-08-01 20:28:47'),
(107, 'Bagamanoc', '2018-08-01 20:28:47', '2018-08-01 20:28:47'),
(108, 'Baganga', '2018-08-01 20:28:47', '2018-08-01 20:28:47'),
(109, 'Baggao', '2018-08-01 20:28:47', '2018-08-01 20:28:47'),
(110, 'Bago', '2018-08-01 20:28:47', '2018-08-01 20:28:47'),
(111, 'Baguio City', '2018-08-01 20:28:48', '2018-08-01 20:28:48'),
(112, 'Bagulin', '2018-08-01 20:28:48', '2018-08-01 20:28:48'),
(113, 'Bagumbayan', '2018-08-01 20:28:48', '2018-08-01 20:28:48'),
(114, 'Bais City', '2018-08-01 20:28:48', '2018-08-01 20:28:48'),
(115, 'Bakun', '2018-08-01 20:28:48', '2018-08-01 20:28:48'),
(116, 'Balabac', '2018-08-01 20:28:48', '2018-08-01 20:28:48'),
(117, 'Balabagan', '2018-08-01 20:28:48', '2018-08-01 20:28:48'),
(118, 'Balagtas (Bigaa)', '2018-08-01 20:28:48', '2018-08-01 20:28:48'),
(119, 'Balamban', '2018-08-01 20:28:48', '2018-08-01 20:28:48'),
(120, 'Balanga City', '2018-08-01 20:28:48', '2018-08-01 20:28:48'),
(121, 'Balangiga', '2018-08-01 20:28:48', '2018-08-01 20:28:48'),
(122, 'Balangkayan', '2018-08-01 20:28:48', '2018-08-01 20:28:48'),
(123, 'Balaoan', '2018-08-01 20:28:48', '2018-08-01 20:28:48'),
(124, 'Balasan', '2018-08-01 20:28:48', '2018-08-01 20:28:48'),
(125, 'Balatan', '2018-08-01 20:28:48', '2018-08-01 20:28:48'),
(126, 'Balayan', '2018-08-01 20:28:48', '2018-08-01 20:28:48'),
(127, 'Balbalan', '2018-08-01 20:28:48', '2018-08-01 20:28:48'),
(128, 'Baleno', '2018-08-01 20:28:48', '2018-08-01 20:28:48'),
(129, 'Baler', '2018-08-01 20:28:49', '2018-08-01 20:28:49'),
(130, 'Balete', '2018-08-01 20:28:49', '2018-08-01 20:28:49'),
(131, 'Balete', '2018-08-01 20:28:49', '2018-08-01 20:28:49'),
(132, 'Baliangao', '2018-08-01 20:28:49', '2018-08-01 20:28:49'),
(133, 'Baliguian', '2018-08-01 20:28:49', '2018-08-01 20:28:49'),
(134, 'Balilihan', '2018-08-01 20:28:49', '2018-08-01 20:28:49'),
(135, 'Balindong ', '2018-08-01 20:28:49', '2018-08-01 20:28:49'),
(136, 'Balingasag', '2018-08-01 20:28:49', '2018-08-01 20:28:49'),
(137, 'Balingoan', '2018-08-01 20:28:49', '2018-08-01 20:28:49'),
(138, 'Baliuag', '2018-08-01 20:28:49', '2018-08-01 20:28:49'),
(139, 'Ballesteros', '2018-08-01 20:28:49', '2018-08-01 20:28:49'),
(140, 'Baloi', '2018-08-01 20:28:49', '2018-08-01 20:28:49'),
(141, 'Balud', '2018-08-01 20:28:49', '2018-08-01 20:28:49'),
(142, 'Balungao', '2018-08-01 20:28:49', '2018-08-01 20:28:49'),
(143, 'Bamban', '2018-08-01 20:28:49', '2018-08-01 20:28:49'),
(144, 'Bambang', '2018-08-01 20:28:49', '2018-08-01 20:28:49'),
(145, 'Banate', '2018-08-01 20:28:49', '2018-08-01 20:28:49'),
(146, 'Banaue', '2018-08-01 20:28:49', '2018-08-01 20:28:49'),
(147, 'Banaybanay', '2018-08-01 20:28:49', '2018-08-01 20:28:49'),
(148, 'Banayoyo', '2018-08-01 20:28:49', '2018-08-01 20:28:49'),
(149, 'Banga', '2018-08-01 20:28:49', '2018-08-01 20:28:49'),
(150, 'Banga', '2018-08-01 20:28:49', '2018-08-01 20:28:49'),
(151, 'Bangar', '2018-08-01 20:28:50', '2018-08-01 20:28:50'),
(152, 'Bangued', '2018-08-01 20:28:50', '2018-08-01 20:28:50'),
(153, 'Bangui', '2018-08-01 20:28:50', '2018-08-01 20:28:50'),
(154, 'Banguingui', '2018-08-01 20:28:50', '2018-08-01 20:28:50'),
(155, 'Bani', '2018-08-01 20:28:50', '2018-08-01 20:28:50'),
(156, 'Banisilan', '2018-08-01 20:28:50', '2018-08-01 20:28:50'),
(157, 'Banna (Espiritu)', '2018-08-01 20:28:50', '2018-08-01 20:28:50'),
(158, 'Bansalan', '2018-08-01 20:28:50', '2018-08-01 20:28:50'),
(159, 'Bansud', '2018-08-01 20:28:50', '2018-08-01 20:28:50'),
(160, 'Bantay', '2018-08-01 20:28:50', '2018-08-01 20:28:50'),
(161, 'Bantayan', '2018-08-01 20:28:50', '2018-08-01 20:28:50'),
(162, 'Banton', '2018-08-01 20:28:50', '2018-08-01 20:28:50'),
(163, 'Baras', '2018-08-01 20:28:50', '2018-08-01 20:28:50'),
(164, 'Baras', '2018-08-01 20:28:50', '2018-08-01 20:28:50'),
(165, 'Barbaza', '2018-08-01 20:28:50', '2018-08-01 20:28:50'),
(166, 'Barcelona', '2018-08-01 20:28:50', '2018-08-01 20:28:50'),
(167, 'Barili', '2018-08-01 20:28:50', '2018-08-01 20:28:50'),
(168, 'Barira', '2018-08-01 20:28:50', '2018-08-01 20:28:50'),
(169, 'Barlig', '2018-08-01 20:28:50', '2018-08-01 20:28:50'),
(170, 'Barobo', '2018-08-01 20:28:50', '2018-08-01 20:28:50'),
(171, 'Barotac Nuevo', '2018-08-01 20:28:51', '2018-08-01 20:28:51'),
(172, 'Barotac Viejo', '2018-08-01 20:28:51', '2018-08-01 20:28:51'),
(173, 'Baroy', '2018-08-01 20:28:51', '2018-08-01 20:28:51'),
(174, 'Barugo', '2018-08-01 20:28:51', '2018-08-01 20:28:51'),
(175, 'Basay', '2018-08-01 20:28:51', '2018-08-01 20:28:51'),
(176, 'Basco', '2018-08-01 20:28:51', '2018-08-01 20:28:51'),
(177, 'Basey', '2018-08-01 20:28:51', '2018-08-01 20:28:51'),
(178, 'Basilisa', '2018-08-01 20:28:51', '2018-08-01 20:28:51'),
(179, 'Basista', '2018-08-01 20:28:51', '2018-08-01 20:28:51'),
(180, 'Basud', '2018-08-01 20:28:51', '2018-08-01 20:28:51'),
(181, 'Batac City', '2018-08-01 20:28:51', '2018-08-01 20:28:51'),
(182, 'Batad', '2018-08-01 20:28:51', '2018-08-01 20:28:51'),
(183, 'Batan', '2018-08-01 20:28:51', '2018-08-01 20:28:51'),
(184, 'Batangas City', '2018-08-01 20:28:51', '2018-08-01 20:28:51'),
(185, 'Bataraza', '2018-08-01 20:28:51', '2018-08-01 20:28:51'),
(186, 'Bato', '2018-08-01 20:28:51', '2018-08-01 20:28:51'),
(187, 'Bato', '2018-08-01 20:28:51', '2018-08-01 20:28:51'),
(188, 'Bato', '2018-08-01 20:28:51', '2018-08-01 20:28:51'),
(189, 'Batuan', '2018-08-01 20:28:51', '2018-08-01 20:28:51'),
(190, 'Batuan', '2018-08-01 20:28:51', '2018-08-01 20:28:51'),
(191, 'Bauan', '2018-08-01 20:28:52', '2018-08-01 20:28:52'),
(192, 'Bauang', '2018-08-01 20:28:52', '2018-08-01 20:28:52'),
(193, 'Bauko', '2018-08-01 20:28:52', '2018-08-01 20:28:52'),
(194, 'Baungon', '2018-08-01 20:28:52', '2018-08-01 20:28:52'),
(195, 'Bautista', '2018-08-01 20:28:52', '2018-08-01 20:28:52'),
(196, 'Bay', '2018-08-01 20:28:52', '2018-08-01 20:28:52'),
(197, 'Bayabas', '2018-08-01 20:28:52', '2018-08-01 20:28:52'),
(198, 'Bayambang', '2018-08-01 20:28:52', '2018-08-01 20:28:52'),
(199, 'Bayang', '2018-08-01 20:28:52', '2018-08-01 20:28:52'),
(200, 'Bayawan City', '2018-08-01 20:28:52', '2018-08-01 20:28:52'),
(201, 'Baybay', '2018-08-01 20:28:52', '2018-08-01 20:28:52'),
(202, 'Bayog', '2018-08-01 20:28:52', '2018-08-01 20:28:52'),
(203, 'Bayombong', '2018-08-01 20:28:52', '2018-08-01 20:28:52'),
(204, 'Bayugan City', '2018-08-01 20:28:52', '2018-08-01 20:28:52'),
(205, 'Belison', '2018-08-01 20:28:52', '2018-08-01 20:28:52'),
(206, 'Benito Soliven', '2018-08-01 20:28:52', '2018-08-01 20:28:52'),
(207, 'Besao', '2018-08-01 20:28:52', '2018-08-01 20:28:52'),
(208, 'Bien Unido', '2018-08-01 20:28:52', '2018-08-01 20:28:52'),
(209, 'Bilar', '2018-08-01 20:28:52', '2018-08-01 20:28:52'),
(210, 'Biliran', '2018-08-01 20:28:52', '2018-08-01 20:28:52'),
(211, 'Binalbagan', '2018-08-01 20:28:52', '2018-08-01 20:28:52'),
(212, 'Binalonan', '2018-08-01 20:28:52', '2018-08-01 20:28:52'),
(213, 'Biñan', '2018-08-01 20:28:53', '2018-08-01 20:28:53'),
(214, 'Binangonan', '2018-08-01 20:28:53', '2018-08-01 20:28:53'),
(215, 'Bindoy', '2018-08-01 20:28:53', '2018-08-01 20:28:53'),
(216, 'Bingawan', '2018-08-01 20:28:53', '2018-08-01 20:28:53'),
(217, 'Binidayan', '2018-08-01 20:28:53', '2018-08-01 20:28:53'),
(218, 'Binmaley', '2018-08-01 20:28:53', '2018-08-01 20:28:53'),
(219, 'Binuangan', '2018-08-01 20:28:53', '2018-08-01 20:28:53'),
(220, 'Biri', '2018-08-01 20:28:53', '2018-08-01 20:28:53'),
(221, 'Bislig City', '2018-08-01 20:28:53', '2018-08-01 20:28:53'),
(222, 'Boac', '2018-08-01 20:28:53', '2018-08-01 20:28:53'),
(223, 'Bobon', '2018-08-01 20:28:53', '2018-08-01 20:28:53'),
(224, 'Bocaue', '2018-08-01 20:28:53', '2018-08-01 20:28:53'),
(225, 'Bogo City', '2018-08-01 20:28:53', '2018-08-01 20:28:53'),
(226, 'Bokod', '2018-08-01 20:28:54', '2018-08-01 20:28:54'),
(227, 'Bolinao', '2018-08-01 20:28:54', '2018-08-01 20:28:54'),
(228, 'Boliney', '2018-08-01 20:28:54', '2018-08-01 20:28:54'),
(229, 'Boljoon', '2018-08-01 20:28:54', '2018-08-01 20:28:54'),
(230, 'Bombon', '2018-08-01 20:28:54', '2018-08-01 20:28:54'),
(231, 'Bongabon', '2018-08-01 20:28:54', '2018-08-01 20:28:54'),
(232, 'Bongabong', '2018-08-01 20:28:54', '2018-08-01 20:28:54'),
(233, 'Bongao', '2018-08-01 20:28:54', '2018-08-01 20:28:54'),
(234, 'Bonifacio', '2018-08-01 20:28:54', '2018-08-01 20:28:54'),
(235, 'Bontoc', '2018-08-01 20:28:54', '2018-08-01 20:28:54'),
(236, 'Bontoc', '2018-08-01 20:28:54', '2018-08-01 20:28:54'),
(237, 'Borbon', '2018-08-01 20:28:54', '2018-08-01 20:28:54'),
(238, 'Borongan City', '2018-08-01 20:28:54', '2018-08-01 20:28:54'),
(239, 'Boston', '2018-08-01 20:28:54', '2018-08-01 20:28:54'),
(240, 'Botolan', '2018-08-01 20:28:54', '2018-08-01 20:28:54'),
(241, 'Braulio E. Dujali', '2018-08-01 20:28:54', '2018-08-01 20:28:54'),
(242, 'Brooke\'s Point', '2018-08-01 20:28:54', '2018-08-01 20:28:54'),
(243, 'Buadiposo-Buntong', '2018-08-01 20:28:54', '2018-08-01 20:28:54'),
(244, 'Bubong', '2018-08-01 20:28:54', '2018-08-01 20:28:54'),
(245, 'Bucay', '2018-08-01 20:28:54', '2018-08-01 20:28:54'),
(246, 'Bucloc', '2018-08-01 20:28:54', '2018-08-01 20:28:54'),
(247, 'Buenavista', '2018-08-01 20:28:54', '2018-08-01 20:28:54'),
(248, 'Buenavista', '2018-08-01 20:28:55', '2018-08-01 20:28:55'),
(249, 'Buenavista', '2018-08-01 20:28:55', '2018-08-01 20:28:55'),
(250, 'Buenavista', '2018-08-01 20:28:55', '2018-08-01 20:28:55'),
(251, 'Buenavista', '2018-08-01 20:28:55', '2018-08-01 20:28:55'),
(252, 'Bugallon', '2018-08-01 20:28:55', '2018-08-01 20:28:55'),
(253, 'Bugasong', '2018-08-01 20:28:55', '2018-08-01 20:28:55'),
(254, 'Buguey', '2018-08-01 20:28:55', '2018-08-01 20:28:55'),
(255, 'Buguias', '2018-08-01 20:28:55', '2018-08-01 20:28:55'),
(256, 'Buhi', '2018-08-01 20:28:55', '2018-08-01 20:28:55'),
(257, 'Bula', '2018-08-01 20:28:55', '2018-08-01 20:28:55'),
(258, 'Bulakan', '2018-08-01 20:28:55', '2018-08-01 20:28:55'),
(259, 'Bulalacao', '2018-08-01 20:28:55', '2018-08-01 20:28:55'),
(260, 'Bulan', '2018-08-01 20:28:55', '2018-08-01 20:28:55'),
(261, 'Buldon', '2018-08-01 20:28:55', '2018-08-01 20:28:55'),
(262, 'Buluan', '2018-08-01 20:28:55', '2018-08-01 20:28:55'),
(263, 'Bulusan', '2018-08-01 20:28:55', '2018-08-01 20:28:55'),
(264, 'Bumbaran', '2018-08-01 20:28:55', '2018-08-01 20:28:55'),
(265, 'Bunawan', '2018-08-01 20:28:55', '2018-08-01 20:28:55'),
(266, 'Burauen', '2018-08-01 20:28:55', '2018-08-01 20:28:55'),
(267, 'Burdeos', '2018-08-01 20:28:56', '2018-08-01 20:28:56'),
(268, 'Burgos', '2018-08-01 20:28:56', '2018-08-01 20:28:56'),
(269, 'Burgos', '2018-08-01 20:28:56', '2018-08-01 20:28:56'),
(270, 'Burgos', '2018-08-01 20:28:56', '2018-08-01 20:28:56'),
(271, 'Burgos', '2018-08-01 20:28:56', '2018-08-01 20:28:56'),
(272, 'Burgos', '2018-08-01 20:28:56', '2018-08-01 20:28:56'),
(273, 'Burgos', '2018-08-01 20:28:56', '2018-08-01 20:28:56'),
(274, 'Buruanga', '2018-08-01 20:28:56', '2018-08-01 20:28:56'),
(275, 'Bustos', '2018-08-01 20:28:56', '2018-08-01 20:28:56'),
(276, 'Busuanga', '2018-08-01 20:28:56', '2018-08-01 20:28:56'),
(277, 'Butig', '2018-08-01 20:28:56', '2018-08-01 20:28:56'),
(278, 'Butuan City', '2018-08-01 20:28:56', '2018-08-01 20:28:56'),
(279, 'Buug', '2018-08-01 20:28:56', '2018-08-01 20:28:56'),
(280, 'Caba', '2018-08-01 20:28:56', '2018-08-01 20:28:56'),
(281, 'Cabadbaran City', '2018-08-01 20:28:56', '2018-08-01 20:28:56'),
(282, 'Cabagan', '2018-08-01 20:28:56', '2018-08-01 20:28:56'),
(283, 'Cabanatuan City', '2018-08-01 20:28:56', '2018-08-01 20:28:56'),
(284, 'Cabangan', '2018-08-01 20:28:56', '2018-08-01 20:28:56'),
(285, 'Cabanglasan', '2018-08-01 20:28:56', '2018-08-01 20:28:56'),
(286, 'Cabarroguis (capital)', '2018-08-01 20:28:56', '2018-08-01 20:28:56'),
(287, 'Cabatuan', '2018-08-01 20:28:56', '2018-08-01 20:28:56'),
(288, 'Cabatuan', '2018-08-01 20:28:57', '2018-08-01 20:28:57'),
(289, 'Cabiao', '2018-08-01 20:28:57', '2018-08-01 20:28:57'),
(290, 'Cabucgayan', '2018-08-01 20:28:57', '2018-08-01 20:28:57'),
(291, 'Cabugao', '2018-08-01 20:28:57', '2018-08-01 20:28:57'),
(292, 'Cabusao', '2018-08-01 20:28:57', '2018-08-01 20:28:57'),
(293, 'Cabuyao', '2018-08-01 20:28:57', '2018-08-01 20:28:57'),
(294, 'Cadiz', '2018-08-01 20:28:57', '2018-08-01 20:28:57'),
(295, 'Cagayancillo', '2018-08-01 20:28:57', '2018-08-01 20:28:57'),
(296, 'Cagdianao', '2018-08-01 20:28:57', '2018-08-01 20:28:57'),
(297, 'Cagwait', '2018-08-01 20:28:57', '2018-08-01 20:28:57'),
(298, 'Caibiran', '2018-08-01 20:28:57', '2018-08-01 20:28:57'),
(299, 'Cainta', '2018-08-01 20:28:57', '2018-08-01 20:28:57'),
(300, 'Cajidiocan', '2018-08-01 20:28:57', '2018-08-01 20:28:57'),
(301, 'Calabanga', '2018-08-01 20:28:57', '2018-08-01 20:28:57'),
(302, 'Calaca', '2018-08-01 20:28:57', '2018-08-01 20:28:57'),
(303, 'Calamba', '2018-08-01 20:28:57', '2018-08-01 20:28:57'),
(304, 'Calamba', '2018-08-01 20:28:57', '2018-08-01 20:28:57'),
(305, 'Calanasan (Bayag)', '2018-08-01 20:28:57', '2018-08-01 20:28:57'),
(306, 'Calanogas', '2018-08-01 20:28:57', '2018-08-01 20:28:57'),
(307, 'Calapan City', '2018-08-01 20:28:57', '2018-08-01 20:28:57'),
(308, 'Calape', '2018-08-01 20:28:57', '2018-08-01 20:28:57'),
(309, 'Calasiao', '2018-08-01 20:28:57', '2018-08-01 20:28:57'),
(310, 'Calatagan', '2018-08-01 20:28:58', '2018-08-01 20:28:58'),
(311, 'Calatrava', '2018-08-01 20:28:58', '2018-08-01 20:28:58'),
(312, 'Calatrava', '2018-08-01 20:28:58', '2018-08-01 20:28:58'),
(313, 'Calauag', '2018-08-01 20:28:58', '2018-08-01 20:28:58'),
(314, 'Calauan', '2018-08-01 20:28:58', '2018-08-01 20:28:58'),
(315, 'Calayan', '2018-08-01 20:28:58', '2018-08-01 20:28:58'),
(316, 'Calbayog', '2018-08-01 20:28:58', '2018-08-01 20:28:58'),
(317, 'Calbiga', '2018-08-01 20:28:58', '2018-08-01 20:28:58'),
(318, 'Calinog', '2018-08-01 20:28:58', '2018-08-01 20:28:58'),
(319, 'Calintaan', '2018-08-01 20:28:58', '2018-08-01 20:28:58'),
(320, 'Caloocan City', '2018-08-01 20:28:58', '2018-08-01 20:28:58'),
(321, 'Calubian', '2018-08-01 20:28:58', '2018-08-01 20:28:58'),
(322, 'Calumpit', '2018-08-01 20:28:58', '2018-08-01 20:28:58'),
(323, 'Caluya', '2018-08-01 20:28:58', '2018-08-01 20:28:58'),
(324, 'Camalaniugan', '2018-08-01 20:28:58', '2018-08-01 20:28:58'),
(325, 'Camalig', '2018-08-01 20:28:58', '2018-08-01 20:28:58'),
(326, 'Camaligan', '2018-08-01 20:28:58', '2018-08-01 20:28:58'),
(327, 'Camiling', '2018-08-01 20:28:58', '2018-08-01 20:28:58'),
(328, 'Can-avid', '2018-08-01 20:28:58', '2018-08-01 20:28:58'),
(329, 'Canaman', '2018-08-01 20:28:58', '2018-08-01 20:28:58'),
(330, 'Candaba', '2018-08-01 20:28:58', '2018-08-01 20:28:58'),
(331, 'Candelaria', '2018-08-01 20:28:58', '2018-08-01 20:28:58'),
(332, 'Candelaria', '2018-08-01 20:28:58', '2018-08-01 20:28:58'),
(333, 'Candijay', '2018-08-01 20:28:58', '2018-08-01 20:28:58'),
(334, 'Candon City', '2018-08-01 20:28:58', '2018-08-01 20:28:58'),
(335, 'Candoni', '2018-08-01 20:28:59', '2018-08-01 20:28:59'),
(336, 'Canlaon City', '2018-08-01 20:28:59', '2018-08-01 20:28:59'),
(337, 'Cantilan', '2018-08-01 20:28:59', '2018-08-01 20:28:59'),
(338, 'Caoayan', '2018-08-01 20:28:59', '2018-08-01 20:28:59'),
(339, 'Capalonga', '2018-08-01 20:28:59', '2018-08-01 20:28:59'),
(340, 'Capas', '2018-08-01 20:28:59', '2018-08-01 20:28:59'),
(341, 'Capoocan', '2018-08-01 20:28:59', '2018-08-01 20:28:59'),
(342, 'Capul', '2018-08-01 20:28:59', '2018-08-01 20:28:59'),
(343, 'Caraga', '2018-08-01 20:28:59', '2018-08-01 20:28:59'),
(344, 'Caramoan', '2018-08-01 20:28:59', '2018-08-01 20:28:59'),
(345, 'Caramoran', '2018-08-01 20:28:59', '2018-08-01 20:28:59'),
(346, 'Carasi', '2018-08-01 20:28:59', '2018-08-01 20:28:59'),
(347, 'Carcar City', '2018-08-01 20:28:59', '2018-08-01 20:28:59'),
(348, 'Cardona', '2018-08-01 20:28:59', '2018-08-01 20:28:59'),
(349, 'Carigara', '2018-08-01 20:28:59', '2018-08-01 20:28:59'),
(350, 'Carles', '2018-08-01 20:28:59', '2018-08-01 20:28:59'),
(351, 'Carmen', '2018-08-01 20:28:59', '2018-08-01 20:28:59'),
(352, 'Carmen', '2018-08-01 20:28:59', '2018-08-01 20:28:59'),
(353, 'Carmen', '2018-08-01 20:28:59', '2018-08-01 20:28:59'),
(354, 'Carmen', '2018-08-01 20:28:59', '2018-08-01 20:28:59'),
(355, 'Carmen', '2018-08-01 20:29:00', '2018-08-01 20:29:00'),
(356, 'Carmen', '2018-08-01 20:29:00', '2018-08-01 20:29:00'),
(357, 'Carmona', '2018-08-01 20:29:00', '2018-08-01 20:29:00'),
(358, 'Carranglan', '2018-08-01 20:29:00', '2018-08-01 20:29:00'),
(359, 'Carrascal', '2018-08-01 20:29:00', '2018-08-01 20:29:00'),
(360, 'Casiguran', '2018-08-01 20:29:00', '2018-08-01 20:29:00'),
(361, 'Casiguran', '2018-08-01 20:29:00', '2018-08-01 20:29:00'),
(362, 'Castilla', '2018-08-01 20:29:00', '2018-08-01 20:29:00'),
(363, 'Castillejos', '2018-08-01 20:29:00', '2018-08-01 20:29:00'),
(364, 'Cataingan', '2018-08-01 20:29:00', '2018-08-01 20:29:00'),
(365, 'Catanauan', '2018-08-01 20:29:00', '2018-08-01 20:29:00'),
(366, 'Catarman', '2018-08-01 20:29:00', '2018-08-01 20:29:00'),
(367, 'Catarman', '2018-08-01 20:29:00', '2018-08-01 20:29:00'),
(368, 'Catbalogan', '2018-08-01 20:29:00', '2018-08-01 20:29:00'),
(369, 'Cateel', '2018-08-01 20:29:00', '2018-08-01 20:29:00'),
(370, 'Catigbian', '2018-08-01 20:29:00', '2018-08-01 20:29:00'),
(371, 'Catmon', '2018-08-01 20:29:00', '2018-08-01 20:29:00'),
(372, 'Catubig', '2018-08-01 20:29:01', '2018-08-01 20:29:01'),
(373, 'Cauayan', '2018-08-01 20:29:01', '2018-08-01 20:29:01'),
(374, 'Cauayan City', '2018-08-01 20:29:01', '2018-08-01 20:29:01'),
(375, 'Cavinti', '2018-08-01 20:29:01', '2018-08-01 20:29:01'),
(376, 'Cavite City', '2018-08-01 20:29:01', '2018-08-01 20:29:01'),
(377, 'Cawayan', '2018-08-01 20:29:01', '2018-08-01 20:29:01'),
(378, 'Cervantes', '2018-08-01 20:29:01', '2018-08-01 20:29:01'),
(379, 'City of San Fernando', '2018-08-01 20:29:01', '2018-08-01 20:29:01'),
(380, 'Clarin', '2018-08-01 20:29:01', '2018-08-01 20:29:01'),
(381, 'Clarin', '2018-08-01 20:29:01', '2018-08-01 20:29:01'),
(382, 'Clark Freeport Zone', '2018-08-01 20:29:01', '2018-08-01 20:29:01'),
(383, 'Claver', '2018-08-01 20:29:01', '2018-08-01 20:29:01'),
(384, 'Claveria', '2018-08-01 20:29:01', '2018-08-01 20:29:01'),
(385, 'Claveria', '2018-08-01 20:29:01', '2018-08-01 20:29:01'),
(386, 'Claveria', '2018-08-01 20:29:01', '2018-08-01 20:29:01'),
(387, 'Columbio', '2018-08-01 20:29:01', '2018-08-01 20:29:01'),
(388, 'Compostela', '2018-08-01 20:29:01', '2018-08-01 20:29:01'),
(389, 'Compostela', '2018-08-01 20:29:01', '2018-08-01 20:29:01'),
(390, 'Concepcion', '2018-08-01 20:29:01', '2018-08-01 20:29:01'),
(391, 'Concepcion', '2018-08-01 20:29:01', '2018-08-01 20:29:01'),
(392, 'Concepcion', '2018-08-01 20:29:01', '2018-08-01 20:29:01'),
(393, 'Concepcion', '2018-08-01 20:29:01', '2018-08-01 20:29:01'),
(394, 'Conner', '2018-08-01 20:29:01', '2018-08-01 20:29:01'),
(395, 'Consolacion', '2018-08-01 20:29:02', '2018-08-01 20:29:02'),
(396, 'Corcuera', '2018-08-01 20:29:02', '2018-08-01 20:29:02'),
(397, 'Cordon', '2018-08-01 20:29:02', '2018-08-01 20:29:02'),
(398, 'Cordova', '2018-08-01 20:29:02', '2018-08-01 20:29:02'),
(399, 'Corella', '2018-08-01 20:29:02', '2018-08-01 20:29:02'),
(400, 'Coron', '2018-08-01 20:29:02', '2018-08-01 20:29:02'),
(401, 'Cortes', '2018-08-01 20:29:02', '2018-08-01 20:29:02'),
(402, 'Cortes', '2018-08-01 20:29:02', '2018-08-01 20:29:02'),
(403, 'Cuartero', '2018-08-01 20:29:02', '2018-08-01 20:29:02'),
(404, 'Cuenca', '2018-08-01 20:29:02', '2018-08-01 20:29:02'),
(405, 'Culaba', '2018-08-01 20:29:02', '2018-08-01 20:29:02'),
(406, 'Culasi', '2018-08-01 20:29:02', '2018-08-01 20:29:02'),
(407, 'Culion', '2018-08-01 20:29:02', '2018-08-01 20:29:02'),
(408, 'Currimao', '2018-08-01 20:29:02', '2018-08-01 20:29:02'),
(409, 'Cuyapo', '2018-08-01 20:29:02', '2018-08-01 20:29:02'),
(410, 'Cuyo', '2018-08-01 20:29:02', '2018-08-01 20:29:02'),
(411, 'Daanbantayan', '2018-08-01 20:29:02', '2018-08-01 20:29:02'),
(412, 'Daet', '2018-08-01 20:29:02', '2018-08-01 20:29:02'),
(413, 'Dagami', '2018-08-01 20:29:02', '2018-08-01 20:29:02'),
(414, 'Dagohoy', '2018-08-01 20:29:02', '2018-08-01 20:29:02'),
(415, 'Daguioman', '2018-08-01 20:29:03', '2018-08-01 20:29:03'),
(416, 'Dagupan', '2018-08-01 20:29:03', '2018-08-01 20:29:03'),
(417, 'Dalaguete', '2018-08-01 20:29:03', '2018-08-01 20:29:03'),
(418, 'Damulog', '2018-08-01 20:29:03', '2018-08-01 20:29:03'),
(419, 'Danao', '2018-08-01 20:29:03', '2018-08-01 20:29:03'),
(420, 'Danao City', '2018-08-01 20:29:03', '2018-08-01 20:29:03'),
(421, 'Dangcagan', '2018-08-01 20:29:03', '2018-08-01 20:29:03'),
(422, 'Danglas', '2018-08-01 20:29:03', '2018-08-01 20:29:03'),
(423, 'Dao', '2018-08-01 20:29:03', '2018-08-01 20:29:03'),
(424, 'Dapa', '2018-08-01 20:29:03', '2018-08-01 20:29:03'),
(425, 'Dapitan City', '2018-08-01 20:29:03', '2018-08-01 20:29:03'),
(426, 'Daraga', '2018-08-01 20:29:03', '2018-08-01 20:29:03'),
(427, 'Daram', '2018-08-01 20:29:03', '2018-08-01 20:29:03'),
(428, 'Dasmariñas', '2018-08-01 20:29:03', '2018-08-01 20:29:03'),
(429, 'Dasol', '2018-08-01 20:29:03', '2018-08-01 20:29:03'),
(430, 'Datu Abdullah Sangki', '2018-08-01 20:29:03', '2018-08-01 20:29:03'),
(431, 'Datu Anggal Midtimbang', '2018-08-01 20:29:03', '2018-08-01 20:29:03'),
(432, 'Datu Blah T. Sinsuat', '2018-08-01 20:29:04', '2018-08-01 20:29:04'),
(433, 'Datu Hoffer Ampatuan', '2018-08-01 20:29:04', '2018-08-01 20:29:04'),
(434, 'Datu Odin Sinsuat', '2018-08-01 20:29:04', '2018-08-01 20:29:04'),
(435, 'Datu Paglas', '2018-08-01 20:29:04', '2018-08-01 20:29:04'),
(436, 'Datu Piang', '2018-08-01 20:29:04', '2018-08-01 20:29:04'),
(437, 'Datu Salibo', '2018-08-01 20:29:04', '2018-08-01 20:29:04'),
(438, 'Datu Saudi-Ampatuan', '2018-08-01 20:29:04', '2018-08-01 20:29:04'),
(439, 'Datu Unsay', '2018-08-01 20:29:04', '2018-08-01 20:29:04'),
(440, 'Dauin', '2018-08-01 20:29:04', '2018-08-01 20:29:04'),
(441, 'Dauis', '2018-08-01 20:29:04', '2018-08-01 20:29:04'),
(442, 'Davao City', '2018-08-01 20:29:04', '2018-08-01 20:29:04'),
(443, 'Del Carmen', '2018-08-01 20:29:04', '2018-08-01 20:29:04'),
(444, 'Del Gallego', '2018-08-01 20:29:04', '2018-08-01 20:29:04'),
(445, 'Delfin Albano', '2018-08-01 20:29:04', '2018-08-01 20:29:04'),
(446, 'Diadi', '2018-08-01 20:29:04', '2018-08-01 20:29:04'),
(447, 'Diffun', '2018-08-01 20:29:04', '2018-08-01 20:29:04'),
(448, 'Digos City', '2018-08-01 20:29:04', '2018-08-01 20:29:04'),
(449, 'Dilasag', '2018-08-01 20:29:04', '2018-08-01 20:29:04'),
(450, 'Dimasalang', '2018-08-01 20:29:04', '2018-08-01 20:29:04'),
(451, 'Dimataling', '2018-08-01 20:29:04', '2018-08-01 20:29:04'),
(452, 'Dimiao', '2018-08-01 20:29:04', '2018-08-01 20:29:04'),
(453, 'Dinagat', '2018-08-01 20:29:04', '2018-08-01 20:29:04'),
(454, 'Dinalungan', '2018-08-01 20:29:04', '2018-08-01 20:29:04'),
(455, 'Dinalupihan', '2018-08-01 20:29:05', '2018-08-01 20:29:05'),
(456, 'Dinapigue', '2018-08-01 20:29:05', '2018-08-01 20:29:05'),
(457, 'Dinas', '2018-08-01 20:29:05', '2018-08-01 20:29:05'),
(458, 'Dingalan', '2018-08-01 20:29:05', '2018-08-01 20:29:05'),
(459, 'Dingle', '2018-08-01 20:29:05', '2018-08-01 20:29:05'),
(460, 'Dingras', '2018-08-01 20:29:05', '2018-08-01 20:29:05'),
(461, 'Dipaculao', '2018-08-01 20:29:05', '2018-08-01 20:29:05'),
(462, 'Diplahan', '2018-08-01 20:29:05', '2018-08-01 20:29:05'),
(463, 'Dipolog City', '2018-08-01 20:29:05', '2018-08-01 20:29:05'),
(464, 'Ditsaan-Ramain', '2018-08-01 20:29:05', '2018-08-01 20:29:05'),
(465, 'Divilican', '2018-08-01 20:29:05', '2018-08-01 20:29:05'),
(466, 'Dolores', '2018-08-01 20:29:05', '2018-08-01 20:29:05'),
(467, 'Dolores', '2018-08-01 20:29:05', '2018-08-01 20:29:05'),
(468, 'Dolores', '2018-08-01 20:29:05', '2018-08-01 20:29:05'),
(469, 'Don Carlos', '2018-08-01 20:29:05', '2018-08-01 20:29:05'),
(470, 'Don Marcelino', '2018-08-01 20:29:05', '2018-08-01 20:29:05'),
(471, 'Don Victoriano Chiongbian', '2018-08-01 20:29:05', '2018-08-01 20:29:05'),
(472, 'Doña Remedios Trinidad', '2018-08-01 20:29:05', '2018-08-01 20:29:05'),
(473, 'Donsol', '2018-08-01 20:29:05', '2018-08-01 20:29:05'),
(474, 'Dueñas', '2018-08-01 20:29:05', '2018-08-01 20:29:05'),
(475, 'Duero', '2018-08-01 20:29:05', '2018-08-01 20:29:05'),
(476, 'Dulag', '2018-08-01 20:29:05', '2018-08-01 20:29:05'),
(477, 'Dumaguete City', '2018-08-01 20:29:05', '2018-08-01 20:29:05'),
(478, 'Dumalag', '2018-08-01 20:29:05', '2018-08-01 20:29:05'),
(479, 'Dumalinao', '2018-08-01 20:29:06', '2018-08-01 20:29:06'),
(480, 'Dumalneg', '2018-08-01 20:29:06', '2018-08-01 20:29:06'),
(481, 'Dumangas', '2018-08-01 20:29:06', '2018-08-01 20:29:06'),
(482, 'Dumanjug', '2018-08-01 20:29:06', '2018-08-01 20:29:06'),
(483, 'Dumaran', '2018-08-01 20:29:06', '2018-08-01 20:29:06'),
(484, 'Dumarao', '2018-08-01 20:29:06', '2018-08-01 20:29:06'),
(485, 'Dumingag', '2018-08-01 20:29:06', '2018-08-01 20:29:06'),
(486, 'Dupax del Norte', '2018-08-01 20:29:06', '2018-08-01 20:29:06'),
(487, 'Dupax del Sur', '2018-08-01 20:29:06', '2018-08-01 20:29:06'),
(488, 'Echague', '2018-08-01 20:29:06', '2018-08-01 20:29:06'),
(489, 'El Nido', '2018-08-01 20:29:06', '2018-08-01 20:29:06'),
(490, 'El Salvador City', '2018-08-01 20:29:06', '2018-08-01 20:29:06'),
(491, 'Enrile', '2018-08-01 20:29:06', '2018-08-01 20:29:06'),
(492, 'Enrique B. Magalona', '2018-08-01 20:29:06', '2018-08-01 20:29:06'),
(493, 'Enrique Villanueva', '2018-08-01 20:29:06', '2018-08-01 20:29:06'),
(494, 'Escalante', '2018-08-01 20:29:06', '2018-08-01 20:29:06'),
(495, 'Esperanza', '2018-08-01 20:29:06', '2018-08-01 20:29:06'),
(496, 'Esperanza', '2018-08-01 20:29:06', '2018-08-01 20:29:06'),
(497, 'Esperanza', '2018-08-01 20:29:06', '2018-08-01 20:29:06'),
(498, 'Estancia', '2018-08-01 20:29:06', '2018-08-01 20:29:06'),
(499, 'Famy', '2018-08-01 20:29:06', '2018-08-01 20:29:06'),
(500, 'Ferrol', '2018-08-01 20:29:06', '2018-08-01 20:29:06'),
(501, 'Flora', '2018-08-01 20:29:07', '2018-08-01 20:29:07'),
(502, 'Floridablanca', '2018-08-01 20:29:07', '2018-08-01 20:29:07'),
(503, 'Gabaldon', '2018-08-01 20:29:07', '2018-08-01 20:29:07'),
(504, 'Gainza', '2018-08-01 20:29:07', '2018-08-01 20:29:07'),
(505, 'Galimuyod', '2018-08-01 20:29:07', '2018-08-01 20:29:07'),
(506, 'Gamay', '2018-08-01 20:29:07', '2018-08-01 20:29:07'),
(507, 'Gamu', '2018-08-01 20:29:07', '2018-08-01 20:29:07'),
(508, 'Ganassi', '2018-08-01 20:29:07', '2018-08-01 20:29:07'),
(509, 'Gandara', '2018-08-01 20:29:07', '2018-08-01 20:29:07'),
(510, 'Gapan City', '2018-08-01 20:29:07', '2018-08-01 20:29:07'),
(511, 'Garchitorena', '2018-08-01 20:29:07', '2018-08-01 20:29:07'),
(512, 'Garcia Hernandez', '2018-08-01 20:29:07', '2018-08-01 20:29:07'),
(513, 'Gasan', '2018-08-01 20:29:07', '2018-08-01 20:29:07'),
(514, 'Gattaran', '2018-08-01 20:29:07', '2018-08-01 20:29:07'),
(515, 'Gen. Mamerto Natividad', '2018-08-01 20:29:07', '2018-08-01 20:29:07'),
(516, 'Gen. S. K. Pendatun', '2018-08-01 20:29:07', '2018-08-01 20:29:07'),
(517, 'General Emilio Aguinaldo', '2018-08-01 20:29:07', '2018-08-01 20:29:07'),
(518, 'General Luna', '2018-08-01 20:29:07', '2018-08-01 20:29:07'),
(519, 'General Luna', '2018-08-01 20:29:07', '2018-08-01 20:29:07'),
(520, 'General MacArthur', '2018-08-01 20:29:07', '2018-08-01 20:29:07'),
(521, 'General Mariano Alvarez', '2018-08-01 20:29:07', '2018-08-01 20:29:07'),
(522, 'General Nakar', '2018-08-01 20:29:07', '2018-08-01 20:29:07'),
(523, 'General Santos', '2018-08-01 20:29:07', '2018-08-01 20:29:07'),
(524, 'General Tinio', '2018-08-01 20:29:08', '2018-08-01 20:29:08'),
(525, 'General Trias', '2018-08-01 20:29:08', '2018-08-01 20:29:08'),
(526, 'Gerona', '2018-08-01 20:29:08', '2018-08-01 20:29:08'),
(527, 'Getafe', '2018-08-01 20:29:08', '2018-08-01 20:29:08'),
(528, 'Gigaquit', '2018-08-01 20:29:08', '2018-08-01 20:29:08'),
(529, 'Gigmoto', '2018-08-01 20:29:08', '2018-08-01 20:29:08'),
(530, 'Ginatilan', '2018-08-01 20:29:08', '2018-08-01 20:29:08'),
(531, 'Gingoog City', '2018-08-01 20:29:08', '2018-08-01 20:29:08'),
(532, 'Giporlos', '2018-08-01 20:29:08', '2018-08-01 20:29:08'),
(533, 'Gitagum', '2018-08-01 20:29:08', '2018-08-01 20:29:08'),
(534, 'Glan', '2018-08-01 20:29:08', '2018-08-01 20:29:08'),
(535, 'Gloria', '2018-08-01 20:29:08', '2018-08-01 20:29:08'),
(536, 'Goa', '2018-08-01 20:29:08', '2018-08-01 20:29:08'),
(537, 'Godod', '2018-08-01 20:29:08', '2018-08-01 20:29:08'),
(538, 'Gonzaga', '2018-08-01 20:29:08', '2018-08-01 20:29:08'),
(539, 'Governor Generoso', '2018-08-01 20:29:08', '2018-08-01 20:29:08'),
(540, 'Gregorio del Pilar (Concepcion)', '2018-08-01 20:29:08', '2018-08-01 20:29:08'),
(541, 'Guagua', '2018-08-01 20:29:08', '2018-08-01 20:29:08'),
(542, 'Gubat', '2018-08-01 20:29:08', '2018-08-01 20:29:08'),
(543, 'Guiguinto', '2018-08-01 20:29:08', '2018-08-01 20:29:08'),
(544, 'Guihulngan City', '2018-08-01 20:29:09', '2018-08-01 20:29:09'),
(545, 'Guimba', '2018-08-01 20:29:09', '2018-08-01 20:29:09'),
(546, 'Guimbal', '2018-08-01 20:29:09', '2018-08-01 20:29:09'),
(547, 'Guinayangan', '2018-08-01 20:29:09', '2018-08-01 20:29:09'),
(548, 'Guindulman', '2018-08-01 20:29:09', '2018-08-01 20:29:09'),
(549, 'Guindulungan', '2018-08-01 20:29:09', '2018-08-01 20:29:09'),
(550, 'Guinobatan', '2018-08-01 20:29:09', '2018-08-01 20:29:09'),
(551, 'Guinsiliban', '2018-08-01 20:29:09', '2018-08-01 20:29:09'),
(552, 'Guipos', '2018-08-01 20:29:09', '2018-08-01 20:29:09'),
(553, 'Guiuan', '2018-08-01 20:29:09', '2018-08-01 20:29:09'),
(554, 'Gumaca', '2018-08-01 20:29:09', '2018-08-01 20:29:09'),
(555, 'Gutalac', '2018-08-01 20:29:09', '2018-08-01 20:29:09'),
(556, 'Hadji Mohammad Ajul', '2018-08-01 20:29:09', '2018-08-01 20:29:09'),
(557, 'Hadji Muhtamad', '2018-08-01 20:29:09', '2018-08-01 20:29:09'),
(558, 'Hadji Panglima Tahil (Marunggas)', '2018-08-01 20:29:09', '2018-08-01 20:29:09'),
(559, 'Hagonoy', '2018-08-01 20:29:09', '2018-08-01 20:29:09'),
(560, 'Hagonoy', '2018-08-01 20:29:09', '2018-08-01 20:29:09'),
(561, 'Hamtic', '2018-08-01 20:29:09', '2018-08-01 20:29:09'),
(562, 'Hermosa', '2018-08-01 20:29:09', '2018-08-01 20:29:09'),
(563, 'Hernani', '2018-08-01 20:29:10', '2018-08-01 20:29:10'),
(564, 'Hilongos', '2018-08-01 20:29:10', '2018-08-01 20:29:10'),
(565, 'Himamaylan', '2018-08-01 20:29:10', '2018-08-01 20:29:10'),
(566, 'Hinabangan', '2018-08-01 20:29:10', '2018-08-01 20:29:10'),
(567, 'Hinatuan', '2018-08-01 20:29:10', '2018-08-01 20:29:10'),
(568, 'Hindang', '2018-08-01 20:29:10', '2018-08-01 20:29:10'),
(569, 'Hingyon', '2018-08-01 20:29:10', '2018-08-01 20:29:10'),
(570, 'Hinigaran', '2018-08-01 20:29:10', '2018-08-01 20:29:10'),
(571, 'Hinoba-an', '2018-08-01 20:29:10', '2018-08-01 20:29:10'),
(572, 'Hinunangan', '2018-08-01 20:29:10', '2018-08-01 20:29:10'),
(573, 'Hinundayan', '2018-08-01 20:29:10', '2018-08-01 20:29:10'),
(574, 'Hungduan', '2018-08-01 20:29:10', '2018-08-01 20:29:10'),
(575, 'Iba', '2018-08-01 20:29:10', '2018-08-01 20:29:10'),
(576, 'Ibaan', '2018-08-01 20:29:10', '2018-08-01 20:29:10'),
(577, 'Ibajay', '2018-08-01 20:29:10', '2018-08-01 20:29:10'),
(578, 'Igbaras', '2018-08-01 20:29:10', '2018-08-01 20:29:10'),
(579, 'Iguig', '2018-08-01 20:29:10', '2018-08-01 20:29:10'),
(580, 'Ilagan City', '2018-08-01 20:29:10', '2018-08-01 20:29:10'),
(581, 'Ilog', '2018-08-01 20:29:10', '2018-08-01 20:29:10'),
(582, 'Iloilo City', '2018-08-01 20:29:10', '2018-08-01 20:29:10'),
(583, 'Imelda', '2018-08-01 20:29:10', '2018-08-01 20:29:10'),
(584, 'Impasugong', '2018-08-01 20:29:10', '2018-08-01 20:29:10'),
(585, 'Imus', '2018-08-01 20:29:11', '2018-08-01 20:29:11'),
(586, 'Inabanga', '2018-08-01 20:29:11', '2018-08-01 20:29:11'),
(587, 'Indanan', '2018-08-01 20:29:11', '2018-08-01 20:29:11'),
(588, 'Indang', '2018-08-01 20:29:11', '2018-08-01 20:29:11'),
(589, 'Infanta', '2018-08-01 20:29:11', '2018-08-01 20:29:11'),
(0, 'Please Select', '2018-08-01 20:30:16', '2018-08-01 20:30:16'),
(0, 'Aborlan', '2018-08-01 20:30:16', '2018-08-01 20:30:16'),
(1, 'Abra de Ilog', '2018-08-01 20:30:17', '2018-08-01 20:30:17'),
(2, 'Abucay', '2018-08-01 20:30:17', '2018-08-01 20:30:17'),
(3, 'Abulug', '2018-08-01 20:30:17', '2018-08-01 20:30:17'),
(4, 'Abuyog', '2018-08-01 20:30:17', '2018-08-01 20:30:17'),
(5, 'Adams', '2018-08-01 20:30:17', '2018-08-01 20:30:17'),
(6, 'Agdangan', '2018-08-01 20:30:17', '2018-08-01 20:30:17'),
(7, 'Aglipay', '2018-08-01 20:30:17', '2018-08-01 20:30:17'),
(8, 'Agno', '2018-08-01 20:30:17', '2018-08-01 20:30:17'),
(9, 'Agoncillo', '2018-08-01 20:30:17', '2018-08-01 20:30:17'),
(10, 'Agoo', '2018-08-01 20:30:17', '2018-08-01 20:30:17'),
(11, 'Aguilar', '2018-08-01 20:30:17', '2018-08-01 20:30:17'),
(12, 'Aguinaldo', '2018-08-01 20:30:17', '2018-08-01 20:30:17'),
(13, 'Agutaya', '2018-08-01 20:30:17', '2018-08-01 20:30:17'),
(14, 'Ajuy', '2018-08-01 20:30:17', '2018-08-01 20:30:17'),
(15, 'Akbar', '2018-08-01 20:30:17', '2018-08-01 20:30:17'),
(16, 'Al-Barka', '2018-08-01 20:30:17', '2018-08-01 20:30:17'),
(17, 'Alabat', '2018-08-01 20:30:17', '2018-08-01 20:30:17'),
(18, 'Alabel', '2018-08-01 20:30:17', '2018-08-01 20:30:17'),
(19, 'Alamada', '2018-08-01 20:30:17', '2018-08-01 20:30:17'),
(20, 'Alaminos', '2018-08-01 20:30:18', '2018-08-01 20:30:18'),
(21, 'Alaminos', '2018-08-01 20:30:18', '2018-08-01 20:30:18'),
(22, 'Alangalang', '2018-08-01 20:30:18', '2018-08-01 20:30:18'),
(23, 'Albuera', '2018-08-01 20:30:18', '2018-08-01 20:30:18'),
(24, 'Alburquerque', '2018-08-01 20:30:18', '2018-08-01 20:30:18'),
(25, 'Alcala', '2018-08-01 20:30:18', '2018-08-01 20:30:18'),
(26, 'Alcala', '2018-08-01 20:30:18', '2018-08-01 20:30:18'),
(27, 'Alcantara', '2018-08-01 20:30:18', '2018-08-01 20:30:18'),
(28, 'Alcantara', '2018-08-01 20:30:18', '2018-08-01 20:30:18'),
(29, 'Alcoy', '2018-08-01 20:30:18', '2018-08-01 20:30:18'),
(30, 'Alegria', '2018-08-01 20:30:18', '2018-08-01 20:30:18'),
(31, 'Alegria', '2018-08-01 20:30:18', '2018-08-01 20:30:18'),
(32, 'Aleosan', '2018-08-01 20:30:18', '2018-08-01 20:30:18'),
(33, 'Alfonso', '2018-08-01 20:30:18', '2018-08-01 20:30:18'),
(34, 'Alfonso Castañeda', '2018-08-01 20:30:18', '2018-08-01 20:30:18'),
(35, 'Alfonso Lista (Potia)', '2018-08-01 20:30:18', '2018-08-01 20:30:18'),
(36, 'Aliaga', '2018-08-01 20:30:18', '2018-08-01 20:30:18'),
(37, 'Alicia', '2018-08-01 20:30:18', '2018-08-01 20:30:18'),
(38, 'Alicia', '2018-08-01 20:30:18', '2018-08-01 20:30:18'),
(39, 'Alicia', '2018-08-01 20:30:19', '2018-08-01 20:30:19'),
(40, 'Alilem', '2018-08-01 20:30:19', '2018-08-01 20:30:19'),
(41, 'Alimodian', '2018-08-01 20:30:19', '2018-08-01 20:30:19'),
(42, 'Alitagtag', '2018-08-01 20:30:19', '2018-08-01 20:30:19'),
(43, 'Allacapan', '2018-08-01 20:30:19', '2018-08-01 20:30:19'),
(44, 'Allen', '2018-08-01 20:30:19', '2018-08-01 20:30:19'),
(45, 'Almagro', '2018-08-01 20:30:19', '2018-08-01 20:30:19'),
(46, 'Almeria', '2018-08-01 20:30:19', '2018-08-01 20:30:19'),
(47, 'Aloguinsan', '2018-08-01 20:30:19', '2018-08-01 20:30:19'),
(48, 'Aloran', '2018-08-01 20:30:19', '2018-08-01 20:30:19'),
(49, 'Altavas', '2018-08-01 20:30:19', '2018-08-01 20:30:19'),
(50, 'Alubijid', '2018-08-01 20:30:19', '2018-08-01 20:30:19'),
(51, 'Amadeo', '2018-08-01 20:30:19', '2018-08-01 20:30:19'),
(52, 'Ambaguio', '2018-08-01 20:30:19', '2018-08-01 20:30:19'),
(53, 'Amlan', '2018-08-01 20:30:19', '2018-08-01 20:30:19'),
(54, 'Ampatuan', '2018-08-01 20:30:19', '2018-08-01 20:30:19'),
(55, 'Amulung', '2018-08-01 20:30:19', '2018-08-01 20:30:19'),
(56, 'Anahawan', '2018-08-01 20:30:19', '2018-08-01 20:30:19'),
(57, 'Anao', '2018-08-01 20:30:19', '2018-08-01 20:30:19'),
(58, 'Anda', '2018-08-01 20:30:19', '2018-08-01 20:30:19'),
(59, 'Anda', '2018-08-01 20:30:19', '2018-08-01 20:30:19'),
(60, 'Angadanan', '2018-08-01 20:30:19', '2018-08-01 20:30:19'),
(61, 'Angat', '2018-08-01 20:30:19', '2018-08-01 20:30:19'),
(62, 'Angeles City', '2018-08-01 20:30:20', '2018-08-01 20:30:20'),
(63, 'Angono', '2018-08-01 20:30:20', '2018-08-01 20:30:20'),
(64, 'Anilao', '2018-08-01 20:30:20', '2018-08-01 20:30:20'),
(65, 'Anini-y', '2018-08-01 20:30:20', '2018-08-01 20:30:20'),
(66, 'Antequera', '2018-08-01 20:30:20', '2018-08-01 20:30:20'),
(67, 'Antipas', '2018-08-01 20:30:20', '2018-08-01 20:30:20'),
(68, 'Antipolo City', '2018-08-01 20:30:20', '2018-08-01 20:30:20'),
(69, 'Apalit', '2018-08-01 20:30:20', '2018-08-01 20:30:20'),
(70, 'Aparri', '2018-08-01 20:30:20', '2018-08-01 20:30:20'),
(71, 'Araceli', '2018-08-01 20:30:20', '2018-08-01 20:30:20'),
(72, 'Arakan', '2018-08-01 20:30:20', '2018-08-01 20:30:20'),
(73, 'Arayat', '2018-08-01 20:30:20', '2018-08-01 20:30:20'),
(74, 'Argao', '2018-08-01 20:30:20', '2018-08-01 20:30:20'),
(75, 'Aringay', '2018-08-01 20:30:20', '2018-08-01 20:30:20'),
(76, 'Aritao', '2018-08-01 20:30:20', '2018-08-01 20:30:20'),
(77, 'Aroroy', '2018-08-01 20:30:20', '2018-08-01 20:30:20'),
(78, 'Arteche', '2018-08-01 20:30:20', '2018-08-01 20:30:20'),
(79, 'Asingan', '2018-08-01 20:30:20', '2018-08-01 20:30:20'),
(80, 'Asipulo', '2018-08-01 20:30:20', '2018-08-01 20:30:20'),
(81, 'Asturias', '2018-08-01 20:30:21', '2018-08-01 20:30:21'),
(82, 'Asuncion', '2018-08-01 20:30:21', '2018-08-01 20:30:21'),
(83, 'Atimonan', '2018-08-01 20:30:21', '2018-08-01 20:30:21'),
(84, 'Atok', '2018-08-01 20:30:21', '2018-08-01 20:30:21'),
(85, 'Aurora', '2018-08-01 20:30:21', '2018-08-01 20:30:21'),
(86, 'Aurora', '2018-08-01 20:30:21', '2018-08-01 20:30:21'),
(87, 'Ayungon', '2018-08-01 20:30:21', '2018-08-01 20:30:21'),
(88, 'Baao', '2018-08-01 20:30:21', '2018-08-01 20:30:21'),
(89, 'Babatngon', '2018-08-01 20:30:21', '2018-08-01 20:30:21'),
(90, 'Bacacay', '2018-08-01 20:30:21', '2018-08-01 20:30:21'),
(91, 'Bacarra', '2018-08-01 20:30:21', '2018-08-01 20:30:21'),
(92, 'Baclayon', '2018-08-01 20:30:21', '2018-08-01 20:30:21'),
(93, 'Bacnotan', '2018-08-01 20:30:21', '2018-08-01 20:30:21'),
(94, 'Baco', '2018-08-01 20:30:21', '2018-08-01 20:30:21'),
(95, 'Bacolod', '2018-08-01 20:30:21', '2018-08-01 20:30:21'),
(96, 'Bacolod', '2018-08-01 20:30:21', '2018-08-01 20:30:21'),
(97, 'Bacolod-Kalawi ', '2018-08-01 20:30:21', '2018-08-01 20:30:21'),
(98, 'Bacolor', '2018-08-01 20:30:21', '2018-08-01 20:30:21'),
(99, 'Bacong', '2018-08-01 20:30:21', '2018-08-01 20:30:21'),
(100, 'Bacoor', '2018-08-01 20:30:21', '2018-08-01 20:30:21'),
(101, 'Bacuag', '2018-08-01 20:30:21', '2018-08-01 20:30:21'),
(102, 'Badian', '2018-08-01 20:30:22', '2018-08-01 20:30:22'),
(103, 'Badiangan', '2018-08-01 20:30:22', '2018-08-01 20:30:22'),
(104, 'Badoc', '2018-08-01 20:30:22', '2018-08-01 20:30:22'),
(105, 'Bagabag', '2018-08-01 20:30:22', '2018-08-01 20:30:22'),
(106, 'Bagac', '2018-08-01 20:30:22', '2018-08-01 20:30:22'),
(107, 'Bagamanoc', '2018-08-01 20:30:22', '2018-08-01 20:30:22'),
(108, 'Baganga', '2018-08-01 20:30:22', '2018-08-01 20:30:22'),
(109, 'Baggao', '2018-08-01 20:30:22', '2018-08-01 20:30:22'),
(110, 'Bago', '2018-08-01 20:30:22', '2018-08-01 20:30:22'),
(111, 'Baguio City', '2018-08-01 20:30:22', '2018-08-01 20:30:22'),
(112, 'Bagulin', '2018-08-01 20:30:22', '2018-08-01 20:30:22'),
(113, 'Bagumbayan', '2018-08-01 20:30:22', '2018-08-01 20:30:22'),
(114, 'Bais City', '2018-08-01 20:30:22', '2018-08-01 20:30:22'),
(115, 'Bakun', '2018-08-01 20:30:22', '2018-08-01 20:30:22'),
(116, 'Balabac', '2018-08-01 20:30:22', '2018-08-01 20:30:22'),
(117, 'Balabagan', '2018-08-01 20:30:22', '2018-08-01 20:30:22'),
(118, 'Balagtas (Bigaa)', '2018-08-01 20:30:22', '2018-08-01 20:30:22'),
(119, 'Balamban', '2018-08-01 20:30:22', '2018-08-01 20:30:22'),
(120, 'Balanga City', '2018-08-01 20:30:22', '2018-08-01 20:30:22'),
(121, 'Balangiga', '2018-08-01 20:30:22', '2018-08-01 20:30:22'),
(122, 'Balangkayan', '2018-08-01 20:30:22', '2018-08-01 20:30:22'),
(123, 'Balaoan', '2018-08-01 20:30:22', '2018-08-01 20:30:22'),
(124, 'Balasan', '2018-08-01 20:30:23', '2018-08-01 20:30:23'),
(125, 'Balatan', '2018-08-01 20:30:23', '2018-08-01 20:30:23'),
(126, 'Balayan', '2018-08-01 20:30:23', '2018-08-01 20:30:23'),
(127, 'Balbalan', '2018-08-01 20:30:23', '2018-08-01 20:30:23'),
(128, 'Baleno', '2018-08-01 20:30:23', '2018-08-01 20:30:23'),
(129, 'Baler', '2018-08-01 20:30:23', '2018-08-01 20:30:23'),
(130, 'Balete', '2018-08-01 20:30:23', '2018-08-01 20:30:23'),
(131, 'Balete', '2018-08-01 20:30:23', '2018-08-01 20:30:23'),
(132, 'Baliangao', '2018-08-01 20:30:23', '2018-08-01 20:30:23'),
(133, 'Baliguian', '2018-08-01 20:30:23', '2018-08-01 20:30:23'),
(134, 'Balilihan', '2018-08-01 20:30:23', '2018-08-01 20:30:23'),
(135, 'Balindong ', '2018-08-01 20:30:23', '2018-08-01 20:30:23'),
(136, 'Balingasag', '2018-08-01 20:30:23', '2018-08-01 20:30:23'),
(137, 'Balingoan', '2018-08-01 20:30:23', '2018-08-01 20:30:23'),
(138, 'Baliuag', '2018-08-01 20:30:23', '2018-08-01 20:30:23'),
(139, 'Ballesteros', '2018-08-01 20:30:23', '2018-08-01 20:30:23'),
(140, 'Baloi', '2018-08-01 20:30:23', '2018-08-01 20:30:23'),
(141, 'Balud', '2018-08-01 20:30:23', '2018-08-01 20:30:23'),
(142, 'Balungao', '2018-08-01 20:30:23', '2018-08-01 20:30:23'),
(143, 'Bamban', '2018-08-01 20:30:23', '2018-08-01 20:30:23'),
(144, 'Bambang', '2018-08-01 20:30:23', '2018-08-01 20:30:23'),
(145, 'Banate', '2018-08-01 20:30:23', '2018-08-01 20:30:23'),
(146, 'Banaue', '2018-08-01 20:30:23', '2018-08-01 20:30:23'),
(147, 'Banaybanay', '2018-08-01 20:30:23', '2018-08-01 20:30:23'),
(148, 'Banayoyo', '2018-08-01 20:30:24', '2018-08-01 20:30:24'),
(149, 'Banga', '2018-08-01 20:30:24', '2018-08-01 20:30:24'),
(150, 'Banga', '2018-08-01 20:30:24', '2018-08-01 20:30:24'),
(151, 'Bangar', '2018-08-01 20:30:24', '2018-08-01 20:30:24'),
(152, 'Bangued', '2018-08-01 20:30:24', '2018-08-01 20:30:24'),
(153, 'Bangui', '2018-08-01 20:30:24', '2018-08-01 20:30:24'),
(154, 'Banguingui', '2018-08-01 20:30:24', '2018-08-01 20:30:24'),
(155, 'Bani', '2018-08-01 20:30:24', '2018-08-01 20:30:24'),
(156, 'Banisilan', '2018-08-01 20:30:24', '2018-08-01 20:30:24'),
(157, 'Banna (Espiritu)', '2018-08-01 20:30:24', '2018-08-01 20:30:24'),
(158, 'Bansalan', '2018-08-01 20:30:24', '2018-08-01 20:30:24'),
(159, 'Bansud', '2018-08-01 20:30:24', '2018-08-01 20:30:24'),
(160, 'Bantay', '2018-08-01 20:30:24', '2018-08-01 20:30:24'),
(161, 'Bantayan', '2018-08-01 20:30:24', '2018-08-01 20:30:24'),
(162, 'Banton', '2018-08-01 20:30:24', '2018-08-01 20:30:24'),
(163, 'Baras', '2018-08-01 20:30:24', '2018-08-01 20:30:24'),
(164, 'Baras', '2018-08-01 20:30:24', '2018-08-01 20:30:24'),
(165, 'Barbaza', '2018-08-01 20:30:24', '2018-08-01 20:30:24'),
(166, 'Barcelona', '2018-08-01 20:30:24', '2018-08-01 20:30:24'),
(167, 'Barili', '2018-08-01 20:30:25', '2018-08-01 20:30:25'),
(168, 'Barira', '2018-08-01 20:30:25', '2018-08-01 20:30:25'),
(169, 'Barlig', '2018-08-01 20:30:25', '2018-08-01 20:30:25'),
(170, 'Barobo', '2018-08-01 20:30:25', '2018-08-01 20:30:25'),
(171, 'Barotac Nuevo', '2018-08-01 20:30:25', '2018-08-01 20:30:25'),
(172, 'Barotac Viejo', '2018-08-01 20:30:25', '2018-08-01 20:30:25'),
(173, 'Baroy', '2018-08-01 20:30:25', '2018-08-01 20:30:25'),
(174, 'Barugo', '2018-08-01 20:30:25', '2018-08-01 20:30:25'),
(175, 'Basay', '2018-08-01 20:30:25', '2018-08-01 20:30:25'),
(176, 'Basco', '2018-08-01 20:30:25', '2018-08-01 20:30:25'),
(177, 'Basey', '2018-08-01 20:30:25', '2018-08-01 20:30:25'),
(178, 'Basilisa', '2018-08-01 20:30:25', '2018-08-01 20:30:25'),
(179, 'Basista', '2018-08-01 20:30:25', '2018-08-01 20:30:25'),
(180, 'Basud', '2018-08-01 20:30:25', '2018-08-01 20:30:25'),
(181, 'Batac City', '2018-08-01 20:30:25', '2018-08-01 20:30:25'),
(182, 'Batad', '2018-08-01 20:30:25', '2018-08-01 20:30:25'),
(183, 'Batan', '2018-08-01 20:30:25', '2018-08-01 20:30:25'),
(184, 'Batangas City', '2018-08-01 20:30:25', '2018-08-01 20:30:25'),
(185, 'Bataraza', '2018-08-01 20:30:25', '2018-08-01 20:30:25'),
(186, 'Bato', '2018-08-01 20:30:25', '2018-08-01 20:30:25'),
(187, 'Bato', '2018-08-01 20:30:25', '2018-08-01 20:30:25'),
(188, 'Bato', '2018-08-01 20:30:25', '2018-08-01 20:30:25'),
(189, 'Batuan', '2018-08-01 20:30:25', '2018-08-01 20:30:25'),
(190, 'Batuan', '2018-08-01 20:30:26', '2018-08-01 20:30:26'),
(191, 'Bauan', '2018-08-01 20:30:26', '2018-08-01 20:30:26'),
(192, 'Bauang', '2018-08-01 20:30:26', '2018-08-01 20:30:26'),
(193, 'Bauko', '2018-08-01 20:30:26', '2018-08-01 20:30:26'),
(194, 'Baungon', '2018-08-01 20:30:26', '2018-08-01 20:30:26'),
(195, 'Bautista', '2018-08-01 20:30:26', '2018-08-01 20:30:26'),
(196, 'Bay', '2018-08-01 20:30:26', '2018-08-01 20:30:26'),
(197, 'Bayabas', '2018-08-01 20:30:26', '2018-08-01 20:30:26'),
(198, 'Bayambang', '2018-08-01 20:30:26', '2018-08-01 20:30:26'),
(199, 'Bayang', '2018-08-01 20:30:26', '2018-08-01 20:30:26'),
(200, 'Bayawan City', '2018-08-01 20:30:26', '2018-08-01 20:30:26'),
(201, 'Baybay', '2018-08-01 20:30:26', '2018-08-01 20:30:26'),
(202, 'Bayog', '2018-08-01 20:30:26', '2018-08-01 20:30:26'),
(203, 'Bayombong', '2018-08-01 20:30:26', '2018-08-01 20:30:26');
INSERT INTO `er_munlist` (`id`, `name`, `created_at`, `updated_at`) VALUES
(204, 'Bayugan City', '2018-08-01 20:30:26', '2018-08-01 20:30:26'),
(205, 'Belison', '2018-08-01 20:30:26', '2018-08-01 20:30:26'),
(206, 'Benito Soliven', '2018-08-01 20:30:26', '2018-08-01 20:30:26'),
(207, 'Besao', '2018-08-01 20:30:26', '2018-08-01 20:30:26'),
(208, 'Bien Unido', '2018-08-01 20:30:26', '2018-08-01 20:30:26'),
(209, 'Bilar', '2018-08-01 20:30:27', '2018-08-01 20:30:27'),
(210, 'Biliran', '2018-08-01 20:30:27', '2018-08-01 20:30:27'),
(211, 'Binalbagan', '2018-08-01 20:30:27', '2018-08-01 20:30:27'),
(212, 'Binalonan', '2018-08-01 20:30:27', '2018-08-01 20:30:27'),
(213, 'Biñan', '2018-08-01 20:30:27', '2018-08-01 20:30:27'),
(214, 'Binangonan', '2018-08-01 20:30:27', '2018-08-01 20:30:27'),
(215, 'Bindoy', '2018-08-01 20:30:27', '2018-08-01 20:30:27'),
(216, 'Bingawan', '2018-08-01 20:30:27', '2018-08-01 20:30:27'),
(217, 'Binidayan', '2018-08-01 20:30:27', '2018-08-01 20:30:27'),
(218, 'Binmaley', '2018-08-01 20:30:27', '2018-08-01 20:30:27'),
(219, 'Binuangan', '2018-08-01 20:30:27', '2018-08-01 20:30:27'),
(220, 'Biri', '2018-08-01 20:30:27', '2018-08-01 20:30:27'),
(221, 'Bislig City', '2018-08-01 20:30:27', '2018-08-01 20:30:27'),
(222, 'Boac', '2018-08-01 20:30:27', '2018-08-01 20:30:27'),
(223, 'Bobon', '2018-08-01 20:30:27', '2018-08-01 20:30:27'),
(224, 'Bocaue', '2018-08-01 20:30:27', '2018-08-01 20:30:27'),
(225, 'Bogo City', '2018-08-01 20:30:28', '2018-08-01 20:30:28'),
(226, 'Bokod', '2018-08-01 20:30:28', '2018-08-01 20:30:28'),
(227, 'Bolinao', '2018-08-01 20:30:28', '2018-08-01 20:30:28'),
(228, 'Boliney', '2018-08-01 20:30:28', '2018-08-01 20:30:28'),
(229, 'Boljoon', '2018-08-01 20:30:28', '2018-08-01 20:30:28'),
(230, 'Bombon', '2018-08-01 20:30:28', '2018-08-01 20:30:28'),
(231, 'Bongabon', '2018-08-01 20:30:28', '2018-08-01 20:30:28'),
(232, 'Bongabong', '2018-08-01 20:30:28', '2018-08-01 20:30:28'),
(233, 'Bongao', '2018-08-01 20:30:28', '2018-08-01 20:30:28'),
(234, 'Bonifacio', '2018-08-01 20:30:28', '2018-08-01 20:30:28'),
(235, 'Bontoc', '2018-08-01 20:30:28', '2018-08-01 20:30:28'),
(236, 'Bontoc', '2018-08-01 20:30:28', '2018-08-01 20:30:28'),
(237, 'Borbon', '2018-08-01 20:30:28', '2018-08-01 20:30:28'),
(238, 'Borongan City', '2018-08-01 20:30:28', '2018-08-01 20:30:28'),
(239, 'Boston', '2018-08-01 20:30:28', '2018-08-01 20:30:28'),
(240, 'Botolan', '2018-08-01 20:30:28', '2018-08-01 20:30:28'),
(241, 'Braulio E. Dujali', '2018-08-01 20:30:28', '2018-08-01 20:30:28'),
(242, 'Brooke\'s Point', '2018-08-01 20:30:28', '2018-08-01 20:30:28'),
(243, 'Buadiposo-Buntong', '2018-08-01 20:30:28', '2018-08-01 20:30:28'),
(244, 'Bubong', '2018-08-01 20:30:28', '2018-08-01 20:30:28'),
(245, 'Bucay', '2018-08-01 20:30:28', '2018-08-01 20:30:28'),
(246, 'Bucloc', '2018-08-01 20:30:28', '2018-08-01 20:30:28'),
(247, 'Buenavista', '2018-08-01 20:30:29', '2018-08-01 20:30:29'),
(248, 'Buenavista', '2018-08-01 20:30:29', '2018-08-01 20:30:29'),
(249, 'Buenavista', '2018-08-01 20:30:29', '2018-08-01 20:30:29'),
(250, 'Buenavista', '2018-08-01 20:30:29', '2018-08-01 20:30:29'),
(251, 'Buenavista', '2018-08-01 20:30:29', '2018-08-01 20:30:29'),
(252, 'Bugallon', '2018-08-01 20:30:29', '2018-08-01 20:30:29'),
(253, 'Bugasong', '2018-08-01 20:30:29', '2018-08-01 20:30:29'),
(254, 'Buguey', '2018-08-01 20:30:29', '2018-08-01 20:30:29'),
(255, 'Buguias', '2018-08-01 20:30:29', '2018-08-01 20:30:29'),
(256, 'Buhi', '2018-08-01 20:30:29', '2018-08-01 20:30:29'),
(257, 'Bula', '2018-08-01 20:30:29', '2018-08-01 20:30:29'),
(258, 'Bulakan', '2018-08-01 20:30:29', '2018-08-01 20:30:29'),
(259, 'Bulalacao', '2018-08-01 20:30:29', '2018-08-01 20:30:29'),
(260, 'Bulan', '2018-08-01 20:30:29', '2018-08-01 20:30:29'),
(261, 'Buldon', '2018-08-01 20:30:29', '2018-08-01 20:30:29'),
(262, 'Buluan', '2018-08-01 20:30:29', '2018-08-01 20:30:29'),
(263, 'Bulusan', '2018-08-01 20:30:29', '2018-08-01 20:30:29'),
(264, 'Bumbaran', '2018-08-01 20:30:29', '2018-08-01 20:30:29'),
(265, 'Bunawan', '2018-08-01 20:30:29', '2018-08-01 20:30:29'),
(266, 'Burauen', '2018-08-01 20:30:29', '2018-08-01 20:30:29'),
(267, 'Burdeos', '2018-08-01 20:30:29', '2018-08-01 20:30:29'),
(268, 'Burgos', '2018-08-01 20:30:30', '2018-08-01 20:30:30'),
(269, 'Burgos', '2018-08-01 20:30:30', '2018-08-01 20:30:30'),
(270, 'Burgos', '2018-08-01 20:30:30', '2018-08-01 20:30:30'),
(271, 'Burgos', '2018-08-01 20:30:30', '2018-08-01 20:30:30'),
(272, 'Burgos', '2018-08-01 20:30:30', '2018-08-01 20:30:30'),
(273, 'Burgos', '2018-08-01 20:30:30', '2018-08-01 20:30:30'),
(274, 'Buruanga', '2018-08-01 20:30:30', '2018-08-01 20:30:30'),
(275, 'Bustos', '2018-08-01 20:30:30', '2018-08-01 20:30:30'),
(276, 'Busuanga', '2018-08-01 20:30:30', '2018-08-01 20:30:30'),
(277, 'Butig', '2018-08-01 20:30:30', '2018-08-01 20:30:30'),
(278, 'Butuan City', '2018-08-01 20:30:30', '2018-08-01 20:30:30'),
(279, 'Buug', '2018-08-01 20:30:30', '2018-08-01 20:30:30'),
(280, 'Caba', '2018-08-01 20:30:30', '2018-08-01 20:30:30'),
(281, 'Cabadbaran City', '2018-08-01 20:30:30', '2018-08-01 20:30:30'),
(282, 'Cabagan', '2018-08-01 20:30:30', '2018-08-01 20:30:30'),
(283, 'Cabanatuan City', '2018-08-01 20:30:30', '2018-08-01 20:30:30'),
(284, 'Cabangan', '2018-08-01 20:30:30', '2018-08-01 20:30:30'),
(285, 'Cabanglasan', '2018-08-01 20:30:30', '2018-08-01 20:30:30'),
(286, 'Cabarroguis (capital)', '2018-08-01 20:30:30', '2018-08-01 20:30:30'),
(287, 'Cabatuan', '2018-08-01 20:30:30', '2018-08-01 20:30:30'),
(288, 'Cabatuan', '2018-08-01 20:30:30', '2018-08-01 20:30:30'),
(289, 'Cabiao', '2018-08-01 20:30:30', '2018-08-01 20:30:30'),
(290, 'Cabucgayan', '2018-08-01 20:30:31', '2018-08-01 20:30:31'),
(291, 'Cabugao', '2018-08-01 20:30:31', '2018-08-01 20:30:31'),
(292, 'Cabusao', '2018-08-01 20:30:31', '2018-08-01 20:30:31'),
(293, 'Cabuyao', '2018-08-01 20:30:31', '2018-08-01 20:30:31'),
(294, 'Cadiz', '2018-08-01 20:30:31', '2018-08-01 20:30:31'),
(295, 'Cagayancillo', '2018-08-01 20:30:31', '2018-08-01 20:30:31'),
(296, 'Cagdianao', '2018-08-01 20:30:31', '2018-08-01 20:30:31'),
(297, 'Cagwait', '2018-08-01 20:30:31', '2018-08-01 20:30:31'),
(298, 'Caibiran', '2018-08-01 20:30:31', '2018-08-01 20:30:31'),
(299, 'Cainta', '2018-08-01 20:30:31', '2018-08-01 20:30:31'),
(300, 'Cajidiocan', '2018-08-01 20:30:31', '2018-08-01 20:30:31'),
(301, 'Calabanga', '2018-08-01 20:30:31', '2018-08-01 20:30:31'),
(302, 'Calaca', '2018-08-01 20:30:31', '2018-08-01 20:30:31'),
(303, 'Calamba', '2018-08-01 20:30:31', '2018-08-01 20:30:31'),
(304, 'Calamba', '2018-08-01 20:30:31', '2018-08-01 20:30:31'),
(305, 'Calanasan (Bayag)', '2018-08-01 20:30:31', '2018-08-01 20:30:31'),
(306, 'Calanogas', '2018-08-01 20:30:31', '2018-08-01 20:30:31'),
(307, 'Calapan City', '2018-08-01 20:30:31', '2018-08-01 20:30:31'),
(308, 'Calape', '2018-08-01 20:30:31', '2018-08-01 20:30:31'),
(309, 'Calasiao', '2018-08-01 20:30:31', '2018-08-01 20:30:31'),
(310, 'Calatagan', '2018-08-01 20:30:32', '2018-08-01 20:30:32'),
(311, 'Calatrava', '2018-08-01 20:30:32', '2018-08-01 20:30:32'),
(312, 'Calatrava', '2018-08-01 20:30:32', '2018-08-01 20:30:32'),
(313, 'Calauag', '2018-08-01 20:30:32', '2018-08-01 20:30:32'),
(314, 'Calauan', '2018-08-01 20:30:32', '2018-08-01 20:30:32'),
(315, 'Calayan', '2018-08-01 20:30:32', '2018-08-01 20:30:32'),
(316, 'Calbayog', '2018-08-01 20:30:32', '2018-08-01 20:30:32'),
(317, 'Calbiga', '2018-08-01 20:30:32', '2018-08-01 20:30:32'),
(318, 'Calinog', '2018-08-01 20:30:32', '2018-08-01 20:30:32'),
(319, 'Calintaan', '2018-08-01 20:30:32', '2018-08-01 20:30:32'),
(320, 'Caloocan City', '2018-08-01 20:30:32', '2018-08-01 20:30:32'),
(321, 'Calubian', '2018-08-01 20:30:32', '2018-08-01 20:30:32'),
(322, 'Calumpit', '2018-08-01 20:30:32', '2018-08-01 20:30:32'),
(323, 'Caluya', '2018-08-01 20:30:32', '2018-08-01 20:30:32'),
(324, 'Camalaniugan', '2018-08-01 20:30:32', '2018-08-01 20:30:32'),
(325, 'Camalig', '2018-08-01 20:30:32', '2018-08-01 20:30:32'),
(326, 'Camaligan', '2018-08-01 20:30:32', '2018-08-01 20:30:32'),
(327, 'Camiling', '2018-08-01 20:30:32', '2018-08-01 20:30:32'),
(328, 'Can-avid', '2018-08-01 20:30:32', '2018-08-01 20:30:32'),
(329, 'Canaman', '2018-08-01 20:30:32', '2018-08-01 20:30:32'),
(330, 'Candaba', '2018-08-01 20:30:32', '2018-08-01 20:30:32'),
(331, 'Candelaria', '2018-08-01 20:30:32', '2018-08-01 20:30:32'),
(332, 'Candelaria', '2018-08-01 20:30:33', '2018-08-01 20:30:33'),
(333, 'Candijay', '2018-08-01 20:30:33', '2018-08-01 20:30:33'),
(334, 'Candon City', '2018-08-01 20:30:33', '2018-08-01 20:30:33'),
(335, 'Candoni', '2018-08-01 20:30:33', '2018-08-01 20:30:33'),
(336, 'Canlaon City', '2018-08-01 20:30:33', '2018-08-01 20:30:33'),
(337, 'Cantilan', '2018-08-01 20:30:33', '2018-08-01 20:30:33'),
(338, 'Caoayan', '2018-08-01 20:30:33', '2018-08-01 20:30:33'),
(339, 'Capalonga', '2018-08-01 20:30:33', '2018-08-01 20:30:33'),
(340, 'Capas', '2018-08-01 20:30:33', '2018-08-01 20:30:33'),
(341, 'Capoocan', '2018-08-01 20:30:33', '2018-08-01 20:30:33'),
(342, 'Capul', '2018-08-01 20:30:33', '2018-08-01 20:30:33'),
(343, 'Caraga', '2018-08-01 20:30:33', '2018-08-01 20:30:33'),
(344, 'Caramoan', '2018-08-01 20:30:33', '2018-08-01 20:30:33'),
(345, 'Caramoran', '2018-08-01 20:30:33', '2018-08-01 20:30:33'),
(346, 'Carasi', '2018-08-01 20:30:33', '2018-08-01 20:30:33'),
(347, 'Carcar City', '2018-08-01 20:30:33', '2018-08-01 20:30:33'),
(348, 'Cardona', '2018-08-01 20:30:34', '2018-08-01 20:30:34'),
(349, 'Carigara', '2018-08-01 20:30:34', '2018-08-01 20:30:34'),
(350, 'Carles', '2018-08-01 20:30:34', '2018-08-01 20:30:34'),
(351, 'Carmen', '2018-08-01 20:30:34', '2018-08-01 20:30:34'),
(352, 'Carmen', '2018-08-01 20:30:34', '2018-08-01 20:30:34'),
(353, 'Carmen', '2018-08-01 20:30:34', '2018-08-01 20:30:34'),
(354, 'Carmen', '2018-08-01 20:30:34', '2018-08-01 20:30:34'),
(355, 'Carmen', '2018-08-01 20:30:34', '2018-08-01 20:30:34'),
(356, 'Carmen', '2018-08-01 20:30:34', '2018-08-01 20:30:34'),
(357, 'Carmona', '2018-08-01 20:30:34', '2018-08-01 20:30:34'),
(358, 'Carranglan', '2018-08-01 20:30:34', '2018-08-01 20:30:34'),
(359, 'Carrascal', '2018-08-01 20:30:34', '2018-08-01 20:30:34'),
(360, 'Casiguran', '2018-08-01 20:30:34', '2018-08-01 20:30:34'),
(361, 'Casiguran', '2018-08-01 20:30:34', '2018-08-01 20:30:34'),
(362, 'Castilla', '2018-08-01 20:30:34', '2018-08-01 20:30:34'),
(363, 'Castillejos', '2018-08-01 20:30:34', '2018-08-01 20:30:34'),
(364, 'Cataingan', '2018-08-01 20:30:34', '2018-08-01 20:30:34'),
(365, 'Catanauan', '2018-08-01 20:30:34', '2018-08-01 20:30:34'),
(366, 'Catarman', '2018-08-01 20:30:34', '2018-08-01 20:30:34'),
(367, 'Catarman', '2018-08-01 20:30:34', '2018-08-01 20:30:34'),
(368, 'Catbalogan', '2018-08-01 20:30:34', '2018-08-01 20:30:34'),
(369, 'Cateel', '2018-08-01 20:30:35', '2018-08-01 20:30:35'),
(370, 'Catigbian', '2018-08-01 20:30:35', '2018-08-01 20:30:35'),
(371, 'Catmon', '2018-08-01 20:30:35', '2018-08-01 20:30:35'),
(372, 'Catubig', '2018-08-01 20:30:35', '2018-08-01 20:30:35'),
(373, 'Cauayan', '2018-08-01 20:30:35', '2018-08-01 20:30:35'),
(374, 'Cauayan City', '2018-08-01 20:30:35', '2018-08-01 20:30:35'),
(375, 'Cavinti', '2018-08-01 20:30:35', '2018-08-01 20:30:35'),
(376, 'Cavite City', '2018-08-01 20:30:35', '2018-08-01 20:30:35'),
(377, 'Cawayan', '2018-08-01 20:30:35', '2018-08-01 20:30:35'),
(378, 'Cervantes', '2018-08-01 20:30:35', '2018-08-01 20:30:35'),
(379, 'City of San Fernando', '2018-08-01 20:30:35', '2018-08-01 20:30:35'),
(380, 'Clarin', '2018-08-01 20:30:35', '2018-08-01 20:30:35'),
(381, 'Clarin', '2018-08-01 20:30:35', '2018-08-01 20:30:35'),
(382, 'Clark Freeport Zone', '2018-08-01 20:30:35', '2018-08-01 20:30:35'),
(383, 'Claver', '2018-08-01 20:30:35', '2018-08-01 20:30:35'),
(384, 'Claveria', '2018-08-01 20:30:35', '2018-08-01 20:30:35'),
(385, 'Claveria', '2018-08-01 20:30:35', '2018-08-01 20:30:35'),
(386, 'Claveria', '2018-08-01 20:30:35', '2018-08-01 20:30:35'),
(387, 'Columbio', '2018-08-01 20:30:35', '2018-08-01 20:30:35'),
(388, 'Compostela', '2018-08-01 20:30:35', '2018-08-01 20:30:35'),
(389, 'Compostela', '2018-08-01 20:30:35', '2018-08-01 20:30:35'),
(390, 'Concepcion', '2018-08-01 20:30:35', '2018-08-01 20:30:35'),
(391, 'Concepcion', '2018-08-01 20:30:35', '2018-08-01 20:30:35'),
(392, 'Concepcion', '2018-08-01 20:30:36', '2018-08-01 20:30:36'),
(393, 'Concepcion', '2018-08-01 20:30:36', '2018-08-01 20:30:36'),
(394, 'Conner', '2018-08-01 20:30:36', '2018-08-01 20:30:36'),
(395, 'Consolacion', '2018-08-01 20:30:36', '2018-08-01 20:30:36'),
(396, 'Corcuera', '2018-08-01 20:30:36', '2018-08-01 20:30:36'),
(397, 'Cordon', '2018-08-01 20:30:36', '2018-08-01 20:30:36'),
(398, 'Cordova', '2018-08-01 20:30:36', '2018-08-01 20:30:36'),
(399, 'Corella', '2018-08-01 20:30:36', '2018-08-01 20:30:36'),
(400, 'Coron', '2018-08-01 20:30:36', '2018-08-01 20:30:36'),
(401, 'Cortes', '2018-08-01 20:30:36', '2018-08-01 20:30:36'),
(402, 'Cortes', '2018-08-01 20:30:36', '2018-08-01 20:30:36'),
(403, 'Cuartero', '2018-08-01 20:30:36', '2018-08-01 20:30:36'),
(404, 'Cuenca', '2018-08-01 20:30:36', '2018-08-01 20:30:36'),
(405, 'Culaba', '2018-08-01 20:30:36', '2018-08-01 20:30:36'),
(406, 'Culasi', '2018-08-01 20:30:36', '2018-08-01 20:30:36'),
(407, 'Culion', '2018-08-01 20:30:36', '2018-08-01 20:30:36'),
(408, 'Currimao', '2018-08-01 20:30:36', '2018-08-01 20:30:36'),
(409, 'Cuyapo', '2018-08-01 20:30:36', '2018-08-01 20:30:36'),
(410, 'Cuyo', '2018-08-01 20:30:36', '2018-08-01 20:30:36'),
(411, 'Daanbantayan', '2018-08-01 20:30:36', '2018-08-01 20:30:36'),
(412, 'Daet', '2018-08-01 20:30:36', '2018-08-01 20:30:36'),
(413, 'Dagami', '2018-08-01 20:30:37', '2018-08-01 20:30:37'),
(414, 'Dagohoy', '2018-08-01 20:30:37', '2018-08-01 20:30:37'),
(415, 'Daguioman', '2018-08-01 20:30:37', '2018-08-01 20:30:37'),
(416, 'Dagupan', '2018-08-01 20:30:37', '2018-08-01 20:30:37'),
(417, 'Dalaguete', '2018-08-01 20:30:37', '2018-08-01 20:30:37'),
(418, 'Damulog', '2018-08-01 20:30:37', '2018-08-01 20:30:37'),
(419, 'Danao', '2018-08-01 20:30:37', '2018-08-01 20:30:37'),
(420, 'Danao City', '2018-08-01 20:30:37', '2018-08-01 20:30:37'),
(421, 'Dangcagan', '2018-08-01 20:30:37', '2018-08-01 20:30:37'),
(422, 'Danglas', '2018-08-01 20:30:37', '2018-08-01 20:30:37'),
(423, 'Dao', '2018-08-01 20:30:37', '2018-08-01 20:30:37'),
(424, 'Dapa', '2018-08-01 20:30:37', '2018-08-01 20:30:37'),
(425, 'Dapitan City', '2018-08-01 20:30:37', '2018-08-01 20:30:37'),
(426, 'Daraga', '2018-08-01 20:30:37', '2018-08-01 20:30:37'),
(427, 'Daram', '2018-08-01 20:30:37', '2018-08-01 20:30:37'),
(428, 'Dasmariñas', '2018-08-01 20:30:37', '2018-08-01 20:30:37'),
(429, 'Dasol', '2018-08-01 20:30:38', '2018-08-01 20:30:38'),
(430, 'Datu Abdullah Sangki', '2018-08-01 20:30:38', '2018-08-01 20:30:38'),
(431, 'Datu Anggal Midtimbang', '2018-08-01 20:30:38', '2018-08-01 20:30:38'),
(432, 'Datu Blah T. Sinsuat', '2018-08-01 20:30:38', '2018-08-01 20:30:38'),
(433, 'Datu Hoffer Ampatuan', '2018-08-01 20:30:38', '2018-08-01 20:30:38'),
(434, 'Datu Odin Sinsuat', '2018-08-01 20:30:38', '2018-08-01 20:30:38'),
(435, 'Datu Paglas', '2018-08-01 20:30:38', '2018-08-01 20:30:38'),
(436, 'Datu Piang', '2018-08-01 20:30:38', '2018-08-01 20:30:38'),
(437, 'Datu Salibo', '2018-08-01 20:30:38', '2018-08-01 20:30:38'),
(438, 'Datu Saudi-Ampatuan', '2018-08-01 20:30:38', '2018-08-01 20:30:38'),
(439, 'Datu Unsay', '2018-08-01 20:30:38', '2018-08-01 20:30:38'),
(440, 'Dauin', '2018-08-01 20:30:38', '2018-08-01 20:30:38'),
(441, 'Dauis', '2018-08-01 20:30:38', '2018-08-01 20:30:38'),
(442, 'Davao City', '2018-08-01 20:30:38', '2018-08-01 20:30:38'),
(443, 'Del Carmen', '2018-08-01 20:30:38', '2018-08-01 20:30:38'),
(444, 'Del Gallego', '2018-08-01 20:30:38', '2018-08-01 20:30:38'),
(445, 'Delfin Albano', '2018-08-01 20:30:38', '2018-08-01 20:30:38'),
(446, 'Diadi', '2018-08-01 20:30:39', '2018-08-01 20:30:39'),
(447, 'Diffun', '2018-08-01 20:30:39', '2018-08-01 20:30:39'),
(448, 'Digos City', '2018-08-01 20:30:39', '2018-08-01 20:30:39'),
(449, 'Dilasag', '2018-08-01 20:30:39', '2018-08-01 20:30:39'),
(450, 'Dimasalang', '2018-08-01 20:30:39', '2018-08-01 20:30:39'),
(451, 'Dimataling', '2018-08-01 20:30:39', '2018-08-01 20:30:39'),
(452, 'Dimiao', '2018-08-01 20:30:39', '2018-08-01 20:30:39'),
(453, 'Dinagat', '2018-08-01 20:30:39', '2018-08-01 20:30:39'),
(454, 'Dinalungan', '2018-08-01 20:30:39', '2018-08-01 20:30:39'),
(455, 'Dinalupihan', '2018-08-01 20:30:39', '2018-08-01 20:30:39'),
(456, 'Dinapigue', '2018-08-01 20:30:39', '2018-08-01 20:30:39'),
(457, 'Dinas', '2018-08-01 20:30:39', '2018-08-01 20:30:39'),
(458, 'Dingalan', '2018-08-01 20:30:39', '2018-08-01 20:30:39'),
(459, 'Dingle', '2018-08-01 20:30:39', '2018-08-01 20:30:39'),
(460, 'Dingras', '2018-08-01 20:30:39', '2018-08-01 20:30:39'),
(461, 'Dipaculao', '2018-08-01 20:30:39', '2018-08-01 20:30:39'),
(462, 'Diplahan', '2018-08-01 20:30:39', '2018-08-01 20:30:39'),
(463, 'Dipolog City', '2018-08-01 20:30:39', '2018-08-01 20:30:39'),
(464, 'Ditsaan-Ramain', '2018-08-01 20:30:39', '2018-08-01 20:30:39'),
(465, 'Divilican', '2018-08-01 20:30:39', '2018-08-01 20:30:39'),
(466, 'Dolores', '2018-08-01 20:30:39', '2018-08-01 20:30:39'),
(467, 'Dolores', '2018-08-01 20:30:40', '2018-08-01 20:30:40'),
(468, 'Dolores', '2018-08-01 20:30:40', '2018-08-01 20:30:40'),
(469, 'Don Carlos', '2018-08-01 20:30:40', '2018-08-01 20:30:40'),
(470, 'Don Marcelino', '2018-08-01 20:30:40', '2018-08-01 20:30:40'),
(471, 'Don Victoriano Chiongbian', '2018-08-01 20:30:40', '2018-08-01 20:30:40'),
(472, 'Doña Remedios Trinidad', '2018-08-01 20:30:40', '2018-08-01 20:30:40'),
(473, 'Donsol', '2018-08-01 20:30:40', '2018-08-01 20:30:40'),
(474, 'Dueñas', '2018-08-01 20:30:40', '2018-08-01 20:30:40'),
(475, 'Duero', '2018-08-01 20:30:40', '2018-08-01 20:30:40'),
(476, 'Dulag', '2018-08-01 20:30:40', '2018-08-01 20:30:40'),
(477, 'Dumaguete City', '2018-08-01 20:30:40', '2018-08-01 20:30:40'),
(478, 'Dumalag', '2018-08-01 20:30:40', '2018-08-01 20:30:40'),
(479, 'Dumalinao', '2018-08-01 20:30:40', '2018-08-01 20:30:40'),
(480, 'Dumalneg', '2018-08-01 20:30:40', '2018-08-01 20:30:40'),
(481, 'Dumangas', '2018-08-01 20:30:40', '2018-08-01 20:30:40'),
(482, 'Dumanjug', '2018-08-01 20:30:40', '2018-08-01 20:30:40'),
(483, 'Dumaran', '2018-08-01 20:30:40', '2018-08-01 20:30:40'),
(484, 'Dumarao', '2018-08-01 20:30:40', '2018-08-01 20:30:40'),
(485, 'Dumingag', '2018-08-01 20:30:40', '2018-08-01 20:30:40'),
(486, 'Dupax del Norte', '2018-08-01 20:30:40', '2018-08-01 20:30:40'),
(487, 'Dupax del Sur', '2018-08-01 20:30:40', '2018-08-01 20:30:40'),
(488, 'Echague', '2018-08-01 20:30:40', '2018-08-01 20:30:40'),
(489, 'El Nido', '2018-08-01 20:30:40', '2018-08-01 20:30:40'),
(490, 'El Salvador City', '2018-08-01 20:30:40', '2018-08-01 20:30:40'),
(491, 'Enrile', '2018-08-01 20:30:41', '2018-08-01 20:30:41'),
(492, 'Enrique B. Magalona', '2018-08-01 20:30:41', '2018-08-01 20:30:41'),
(493, 'Enrique Villanueva', '2018-08-01 20:30:41', '2018-08-01 20:30:41'),
(494, 'Escalante', '2018-08-01 20:30:41', '2018-08-01 20:30:41'),
(495, 'Esperanza', '2018-08-01 20:30:41', '2018-08-01 20:30:41'),
(496, 'Esperanza', '2018-08-01 20:30:41', '2018-08-01 20:30:41'),
(497, 'Esperanza', '2018-08-01 20:30:41', '2018-08-01 20:30:41'),
(498, 'Estancia', '2018-08-01 20:30:41', '2018-08-01 20:30:41'),
(499, 'Famy', '2018-08-01 20:30:41', '2018-08-01 20:30:41'),
(500, 'Ferrol', '2018-08-01 20:30:41', '2018-08-01 20:30:41'),
(501, 'Flora', '2018-08-01 20:30:41', '2018-08-01 20:30:41'),
(502, 'Floridablanca', '2018-08-01 20:30:41', '2018-08-01 20:30:41'),
(503, 'Gabaldon', '2018-08-01 20:30:41', '2018-08-01 20:30:41'),
(504, 'Gainza', '2018-08-01 20:30:41', '2018-08-01 20:30:41'),
(505, 'Galimuyod', '2018-08-01 20:30:41', '2018-08-01 20:30:41'),
(506, 'Gamay', '2018-08-01 20:30:41', '2018-08-01 20:30:41'),
(507, 'Gamu', '2018-08-01 20:30:41', '2018-08-01 20:30:41'),
(508, 'Ganassi', '2018-08-01 20:30:41', '2018-08-01 20:30:41'),
(509, 'Gandara', '2018-08-01 20:30:41', '2018-08-01 20:30:41'),
(510, 'Gapan City', '2018-08-01 20:30:41', '2018-08-01 20:30:41'),
(511, 'Garchitorena', '2018-08-01 20:30:41', '2018-08-01 20:30:41'),
(512, 'Garcia Hernandez', '2018-08-01 20:30:41', '2018-08-01 20:30:41'),
(513, 'Gasan', '2018-08-01 20:30:41', '2018-08-01 20:30:41'),
(514, 'Gattaran', '2018-08-01 20:30:41', '2018-08-01 20:30:41'),
(515, 'Gen. Mamerto Natividad', '2018-08-01 20:30:41', '2018-08-01 20:30:41'),
(516, 'Gen. S. K. Pendatun', '2018-08-01 20:30:41', '2018-08-01 20:30:41'),
(517, 'General Emilio Aguinaldo', '2018-08-01 20:30:42', '2018-08-01 20:30:42'),
(518, 'General Luna', '2018-08-01 20:30:42', '2018-08-01 20:30:42'),
(519, 'General Luna', '2018-08-01 20:30:42', '2018-08-01 20:30:42'),
(520, 'General MacArthur', '2018-08-01 20:30:42', '2018-08-01 20:30:42'),
(521, 'General Mariano Alvarez', '2018-08-01 20:30:42', '2018-08-01 20:30:42'),
(522, 'General Nakar', '2018-08-01 20:30:42', '2018-08-01 20:30:42'),
(523, 'General Santos', '2018-08-01 20:30:42', '2018-08-01 20:30:42'),
(524, 'General Tinio', '2018-08-01 20:30:42', '2018-08-01 20:30:42'),
(525, 'General Trias', '2018-08-01 20:30:42', '2018-08-01 20:30:42'),
(526, 'Gerona', '2018-08-01 20:30:42', '2018-08-01 20:30:42'),
(527, 'Getafe', '2018-08-01 20:30:42', '2018-08-01 20:30:42'),
(528, 'Gigaquit', '2018-08-01 20:30:42', '2018-08-01 20:30:42'),
(529, 'Gigmoto', '2018-08-01 20:30:42', '2018-08-01 20:30:42'),
(530, 'Ginatilan', '2018-08-01 20:30:42', '2018-08-01 20:30:42'),
(531, 'Gingoog City', '2018-08-01 20:30:42', '2018-08-01 20:30:42'),
(532, 'Giporlos', '2018-08-01 20:30:42', '2018-08-01 20:30:42'),
(533, 'Gitagum', '2018-08-01 20:30:42', '2018-08-01 20:30:42'),
(534, 'Glan', '2018-08-01 20:30:42', '2018-08-01 20:30:42'),
(535, 'Gloria', '2018-08-01 20:30:42', '2018-08-01 20:30:42'),
(536, 'Goa', '2018-08-01 20:30:42', '2018-08-01 20:30:42'),
(537, 'Godod', '2018-08-01 20:30:42', '2018-08-01 20:30:42'),
(538, 'Gonzaga', '2018-08-01 20:30:42', '2018-08-01 20:30:42'),
(539, 'Governor Generoso', '2018-08-01 20:30:43', '2018-08-01 20:30:43'),
(540, 'Gregorio del Pilar (Concepcion)', '2018-08-01 20:30:43', '2018-08-01 20:30:43'),
(541, 'Guagua', '2018-08-01 20:30:43', '2018-08-01 20:30:43'),
(542, 'Gubat', '2018-08-01 20:30:43', '2018-08-01 20:30:43'),
(543, 'Guiguinto', '2018-08-01 20:30:43', '2018-08-01 20:30:43'),
(544, 'Guihulngan City', '2018-08-01 20:30:43', '2018-08-01 20:30:43'),
(545, 'Guimba', '2018-08-01 20:30:43', '2018-08-01 20:30:43'),
(546, 'Guimbal', '2018-08-01 20:30:43', '2018-08-01 20:30:43'),
(547, 'Guinayangan', '2018-08-01 20:30:43', '2018-08-01 20:30:43'),
(548, 'Guindulman', '2018-08-01 20:30:43', '2018-08-01 20:30:43'),
(549, 'Guindulungan', '2018-08-01 20:30:43', '2018-08-01 20:30:43'),
(550, 'Guinobatan', '2018-08-01 20:30:43', '2018-08-01 20:30:43'),
(551, 'Guinsiliban', '2018-08-01 20:30:43', '2018-08-01 20:30:43'),
(552, 'Guipos', '2018-08-01 20:30:43', '2018-08-01 20:30:43'),
(553, 'Guiuan', '2018-08-01 20:30:43', '2018-08-01 20:30:43'),
(554, 'Gumaca', '2018-08-01 20:30:43', '2018-08-01 20:30:43'),
(555, 'Gutalac', '2018-08-01 20:30:43', '2018-08-01 20:30:43'),
(556, 'Hadji Mohammad Ajul', '2018-08-01 20:30:43', '2018-08-01 20:30:43'),
(557, 'Hadji Muhtamad', '2018-08-01 20:30:43', '2018-08-01 20:30:43'),
(558, 'Hadji Panglima Tahil (Marunggas)', '2018-08-01 20:30:43', '2018-08-01 20:30:43'),
(559, 'Hagonoy', '2018-08-01 20:30:43', '2018-08-01 20:30:43'),
(560, 'Hagonoy', '2018-08-01 20:30:43', '2018-08-01 20:30:43'),
(561, 'Hamtic', '2018-08-01 20:30:43', '2018-08-01 20:30:43'),
(562, 'Hermosa', '2018-08-01 20:30:43', '2018-08-01 20:30:43'),
(563, 'Hernani', '2018-08-01 20:30:44', '2018-08-01 20:30:44'),
(564, 'Hilongos', '2018-08-01 20:30:44', '2018-08-01 20:30:44'),
(565, 'Himamaylan', '2018-08-01 20:30:44', '2018-08-01 20:30:44'),
(566, 'Hinabangan', '2018-08-01 20:30:44', '2018-08-01 20:30:44'),
(567, 'Hinatuan', '2018-08-01 20:30:44', '2018-08-01 20:30:44'),
(568, 'Hindang', '2018-08-01 20:30:44', '2018-08-01 20:30:44'),
(569, 'Hingyon', '2018-08-01 20:30:44', '2018-08-01 20:30:44'),
(570, 'Hinigaran', '2018-08-01 20:30:44', '2018-08-01 20:30:44'),
(571, 'Hinoba-an', '2018-08-01 20:30:44', '2018-08-01 20:30:44'),
(572, 'Hinunangan', '2018-08-01 20:30:44', '2018-08-01 20:30:44'),
(573, 'Hinundayan', '2018-08-01 20:30:44', '2018-08-01 20:30:44'),
(574, 'Hungduan', '2018-08-01 20:30:44', '2018-08-01 20:30:44'),
(575, 'Iba', '2018-08-01 20:30:44', '2018-08-01 20:30:44'),
(576, 'Ibaan', '2018-08-01 20:30:44', '2018-08-01 20:30:44'),
(577, 'Ibajay', '2018-08-01 20:30:44', '2018-08-01 20:30:44'),
(578, 'Igbaras', '2018-08-01 20:30:44', '2018-08-01 20:30:44'),
(579, 'Iguig', '2018-08-01 20:30:44', '2018-08-01 20:30:44'),
(580, 'Ilagan City', '2018-08-01 20:30:44', '2018-08-01 20:30:44'),
(581, 'Ilog', '2018-08-01 20:30:44', '2018-08-01 20:30:44'),
(582, 'Iloilo City', '2018-08-01 20:30:44', '2018-08-01 20:30:44'),
(583, 'Imelda', '2018-08-01 20:30:44', '2018-08-01 20:30:44'),
(584, 'Impasugong', '2018-08-01 20:30:44', '2018-08-01 20:30:44'),
(585, 'Imus', '2018-08-01 20:30:45', '2018-08-01 20:30:45'),
(586, 'Inabanga', '2018-08-01 20:30:45', '2018-08-01 20:30:45'),
(587, 'Indanan', '2018-08-01 20:30:45', '2018-08-01 20:30:45'),
(588, 'Indang', '2018-08-01 20:30:45', '2018-08-01 20:30:45'),
(589, 'Infanta', '2018-08-01 20:30:45', '2018-08-01 20:30:45'),
(590, 'Infanta', '2018-08-01 20:30:45', '2018-08-01 20:30:45'),
(591, 'Initao', '2018-08-01 20:30:45', '2018-08-01 20:30:45'),
(592, 'Inopacan', '2018-08-01 20:30:45', '2018-08-01 20:30:45'),
(593, 'Ipil', '2018-08-01 20:30:45', '2018-08-01 20:30:45'),
(594, 'Iriga City', '2018-08-01 20:30:45', '2018-08-01 20:30:45'),
(595, 'Irosin', '2018-08-01 20:30:45', '2018-08-01 20:30:45'),
(596, 'Isabel', '2018-08-01 20:30:45', '2018-08-01 20:30:45'),
(597, 'Isabela', '2018-08-01 20:30:45', '2018-08-01 20:30:45'),
(598, 'Isabela City', '2018-08-01 20:30:45', '2018-08-01 20:30:45'),
(599, 'Isulan', '2018-08-01 20:30:45', '2018-08-01 20:30:45'),
(600, 'Itbayat', '2018-08-01 20:30:45', '2018-08-01 20:30:45'),
(601, 'Itogon', '2018-08-01 20:30:45', '2018-08-01 20:30:45'),
(602, 'Ivana', '2018-08-01 20:30:45', '2018-08-01 20:30:45'),
(603, 'Ivisan', '2018-08-01 20:30:45', '2018-08-01 20:30:45'),
(604, 'Jabonga', '2018-08-01 20:30:45', '2018-08-01 20:30:45'),
(605, 'Jaén', '2018-08-01 20:30:45', '2018-08-01 20:30:45'),
(606, 'Jagna', '2018-08-01 20:30:45', '2018-08-01 20:30:45'),
(607, 'Jalajala', '2018-08-01 20:30:45', '2018-08-01 20:30:45'),
(608, 'Jamindan', '2018-08-01 20:30:45', '2018-08-01 20:30:45'),
(609, 'Janiuay', '2018-08-01 20:30:46', '2018-08-01 20:30:46'),
(610, 'Jaro', '2018-08-01 20:30:46', '2018-08-01 20:30:46'),
(611, 'Jasaan', '2018-08-01 20:30:46', '2018-08-01 20:30:46'),
(612, 'Javier', '2018-08-01 20:30:46', '2018-08-01 20:30:46'),
(613, 'Jiabong', '2018-08-01 20:30:46', '2018-08-01 20:30:46'),
(614, 'Jimalalud', '2018-08-01 20:30:46', '2018-08-01 20:30:46'),
(615, 'Jimenez', '2018-08-01 20:30:46', '2018-08-01 20:30:46'),
(616, 'Jipapad', '2018-08-01 20:30:46', '2018-08-01 20:30:46'),
(617, 'Jolo', '2018-08-01 20:30:46', '2018-08-01 20:30:46'),
(618, 'Jomalig', '2018-08-01 20:30:46', '2018-08-01 20:30:46'),
(619, 'Jones', '2018-08-01 20:30:46', '2018-08-01 20:30:46'),
(620, 'Jordan', '2018-08-01 20:30:46', '2018-08-01 20:30:46'),
(621, 'Jose Abad Santos', '2018-08-01 20:30:46', '2018-08-01 20:30:46'),
(622, 'Jose Dalman (Ponot)', '2018-08-01 20:30:46', '2018-08-01 20:30:46'),
(623, 'Jose Panganiban', '2018-08-01 20:30:46', '2018-08-01 20:30:46'),
(624, 'Josefina', '2018-08-01 20:30:46', '2018-08-01 20:30:46'),
(625, 'Jovellar', '2018-08-01 20:30:46', '2018-08-01 20:30:46'),
(626, 'Juban', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(627, 'Julita', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(628, 'Kabacan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(629, 'Kabankalan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(630, 'Kabasalan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(631, 'Kabayan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(632, 'Kabugao', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(633, 'Kabuntalan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(634, 'Kadingilan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(635, 'Kalamansig', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(636, 'Kalawit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(637, 'Kalayaan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(638, 'Kalayaan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(639, 'Kalibo', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `er_province`
--

CREATE TABLE `er_province` (
  `id` int(11) NOT NULL,
  `regionId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `code` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `er_province`
--

INSERT INTO `er_province` (`id`, `regionId`, `name`, `code`) VALUES
(1, 1, 'Metro Manila', ''),
(2, 1, 'Metro Manila', ''),
(3, 1, 'Metro Manila', ''),
(4, 1, 'Metro Manila', ''),
(5, 2, 'Abra', ''),
(6, 2, 'Apayao', ''),
(7, 2, 'Benguet', ''),
(8, 2, 'Ifugao', ''),
(9, 2, 'Kalinga', ''),
(10, 2, 'Mountain Province', ''),
(11, 3, 'Ilocos Norte', ''),
(12, 3, 'Ilocos Sur', ''),
(13, 3, 'La Union', ''),
(14, 3, 'Pangasinan', ''),
(15, 4, 'Batanes', ''),
(16, 4, 'Cagayan', ''),
(17, 4, 'Isabela', ''),
(18, 4, 'Nueva Vizcaya', ''),
(19, 4, 'Quirino', ''),
(20, 5, 'Aurora', ''),
(21, 5, 'Bataan', ''),
(22, 5, 'Bulacan', ''),
(23, 5, 'Nueva Ecija', ''),
(24, 5, 'Pampanga', ''),
(25, 5, 'Tarlac', ''),
(26, 5, 'Zambales', ''),
(27, 6, 'Batangas', ''),
(28, 6, 'Cavite', ''),
(29, 6, 'Laguna', ''),
(30, 6, 'Quezon', ''),
(31, 6, 'Rizal', ''),
(32, 7, 'Marinduque', ''),
(33, 7, 'Occidental Mindoro', ''),
(34, 7, 'Oriental Mindoro', ''),
(35, 7, 'Palawan', ''),
(36, 7, 'Romblon', ''),
(37, 8, 'Albay', ''),
(38, 8, 'Camarines Norte', ''),
(39, 8, 'Camarines Sur', ''),
(40, 8, 'Catanduanes', ''),
(41, 8, 'Masbate', ''),
(42, 8, 'Sorsogon', ''),
(43, 9, 'Aklan', ''),
(44, 9, 'Antique', ''),
(45, 9, 'Capiz', ''),
(46, 9, 'Guimaras', ''),
(47, 9, 'Iloilo', ''),
(48, 9, 'Negros Occidental', ''),
(49, 10, 'Bohol', ''),
(50, 10, 'Cebu', ''),
(51, 10, 'Negros Oriental', ''),
(52, 10, 'Siquijor', ''),
(53, 11, 'Biliran', ''),
(54, 11, 'Eastern Samar', ''),
(55, 11, 'Leyte', ''),
(56, 11, 'Northern Samar', ''),
(57, 11, 'Samar', ''),
(58, 11, 'Southern Leyte', ''),
(59, 12, 'Zamboanga del Norte', ''),
(60, 12, 'Zamboanga del Sur', ''),
(61, 12, 'Zamboanga Sibugay', ''),
(62, 13, 'Bukidnon', ''),
(63, 13, 'Camiguin', ''),
(64, 13, 'Lanao del Norte', ''),
(65, 13, 'Misamis Occidental', ''),
(66, 13, 'Misamis Oriental', ''),
(67, 14, 'Compostela Valley', ''),
(68, 14, 'Davao del Norte', ''),
(69, 14, 'Davao del Sur', ''),
(70, 14, 'Davao Oriental', ''),
(71, 14, 'Davao Occidental', ''),
(72, 15, 'Cotabato', ''),
(73, 15, 'Sarangani', ''),
(74, 15, 'South Cotabato', ''),
(75, 15, 'Sultan Kudarat', ''),
(76, 16, 'Agusan del Norte', ''),
(77, 16, 'Agusan del Sur', ''),
(78, 16, 'Dinagat Islands', ''),
(79, 16, 'Surigao del Norte', ''),
(80, 16, 'Surigao del Sur', ''),
(81, 17, 'Lanao del Sur', ''),
(82, 17, 'Maguindanao', ''),
(83, 17, 'Sulu', ''),
(84, 17, 'Tawi-Tawi', ''),
(85, 17, 'Basilan', '');

-- --------------------------------------------------------

--
-- Table structure for table `er_provlist`
--

CREATE TABLE `er_provlist` (
  `id` int(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `er_provlist`
--

INSERT INTO `er_provlist` (`id`, `name`, `created_at`, `updated_at`) VALUES
(0, 'Abra', '2018-08-01 20:17:05', '2018-08-01 20:17:05'),
(1, 'Agusan del Norte', '2018-08-01 20:17:05', '2018-08-01 20:17:05'),
(2, 'Agusan del Sur', '2018-08-01 20:17:05', '2018-08-01 20:17:05'),
(3, 'Aklan', '2018-08-01 20:17:05', '2018-08-01 20:17:05'),
(4, 'Albay', '2018-08-01 20:17:05', '2018-08-01 20:17:05'),
(5, 'Antique', '2018-08-01 20:17:05', '2018-08-01 20:17:05'),
(6, 'Apayao', '2018-08-01 20:17:05', '2018-08-01 20:17:05'),
(7, 'Aurora', '2018-08-01 20:17:05', '2018-08-01 20:17:05'),
(8, 'Basilan', '2018-08-01 20:17:05', '2018-08-01 20:17:05'),
(9, 'Bataan', '2018-08-01 20:17:05', '2018-08-01 20:17:05'),
(10, 'Batanes', '2018-08-01 20:17:05', '2018-08-01 20:17:05'),
(11, 'Batangas', '2018-08-01 20:17:06', '2018-08-01 20:17:06'),
(12, 'Benguet', '2018-08-01 20:17:06', '2018-08-01 20:17:06'),
(13, 'Biliran', '2018-08-01 20:17:06', '2018-08-01 20:17:06'),
(14, 'Bohol', '2018-08-01 20:17:06', '2018-08-01 20:17:06'),
(15, 'Bukidnon', '2018-08-01 20:17:06', '2018-08-01 20:17:06'),
(16, 'Bulacan', '2018-08-01 20:17:06', '2018-08-01 20:17:06'),
(17, 'Cagayan', '2018-08-01 20:17:06', '2018-08-01 20:17:06'),
(18, 'Camarines Norte', '2018-08-01 20:17:06', '2018-08-01 20:17:06'),
(19, 'Camarines Sur', '2018-08-01 20:17:06', '2018-08-01 20:17:06'),
(20, 'Camiguin', '2018-08-01 20:17:06', '2018-08-01 20:17:06'),
(21, 'Capiz', '2018-08-01 20:17:06', '2018-08-01 20:17:06'),
(22, 'Catanduanes', '2018-08-01 20:17:06', '2018-08-01 20:17:06'),
(23, 'Cavite', '2018-08-01 20:17:06', '2018-08-01 20:17:06'),
(24, 'Cebu', '2018-08-01 20:17:06', '2018-08-01 20:17:06'),
(25, 'Compostela Valley', '2018-08-01 20:17:06', '2018-08-01 20:17:06'),
(26, 'Cotabato', '2018-08-01 20:17:06', '2018-08-01 20:17:06'),
(27, 'Davao del Norte', '2018-08-01 20:17:06', '2018-08-01 20:17:06'),
(28, 'Davao del Sur', '2018-08-01 20:17:06', '2018-08-01 20:17:06'),
(29, 'Davao Occidental', '2018-08-01 20:17:06', '2018-08-01 20:17:06'),
(30, 'Davao Oriental', '2018-08-01 20:17:06', '2018-08-01 20:17:06'),
(31, 'Dinagat Islands', '2018-08-01 20:17:07', '2018-08-01 20:17:07'),
(32, 'Eastern Samar', '2018-08-01 20:17:07', '2018-08-01 20:17:07'),
(33, 'Guimaras', '2018-08-01 20:17:07', '2018-08-01 20:17:07'),
(34, 'Ifugao', '2018-08-01 20:17:07', '2018-08-01 20:17:07'),
(35, 'Ilocos Norte', '2018-08-01 20:17:07', '2018-08-01 20:17:07'),
(36, 'Ilocos Sur', '2018-08-01 20:17:07', '2018-08-01 20:17:07'),
(37, 'Iloilo', '2018-08-01 20:17:07', '2018-08-01 20:17:07'),
(38, 'Isabela', '2018-08-01 20:17:07', '2018-08-01 20:17:07'),
(39, 'Kalinga', '2018-08-01 20:17:07', '2018-08-01 20:17:07'),
(40, 'La Union', '2018-08-01 20:17:07', '2018-08-01 20:17:07'),
(41, 'Laguna', '2018-08-01 20:17:07', '2018-08-01 20:17:07'),
(42, 'Lanao del Norte', '2018-08-01 20:17:07', '2018-08-01 20:17:07'),
(43, 'Lanao del Sur', '2018-08-01 20:17:07', '2018-08-01 20:17:07'),
(44, 'Leyte', '2018-08-01 20:17:07', '2018-08-01 20:17:07'),
(45, 'Maguindanao', '2018-08-01 20:17:07', '2018-08-01 20:17:07'),
(46, 'Marinduque', '2018-08-01 20:17:07', '2018-08-01 20:17:07'),
(47, 'Masbate', '2018-08-01 20:17:07', '2018-08-01 20:17:07'),
(48, 'Metro Manila', '2018-08-01 20:17:07', '2018-08-01 20:17:07'),
(49, 'Metro Manila', '2018-08-01 20:17:07', '2018-08-01 20:17:07'),
(50, 'Metro Manila', '2018-08-01 20:17:07', '2018-08-01 20:17:07'),
(51, 'Metro Manila', '2018-08-01 20:17:07', '2018-08-01 20:17:07'),
(52, 'Misamis Occidental', '2018-08-01 20:17:07', '2018-08-01 20:17:07'),
(53, 'Misamis Oriental', '2018-08-01 20:17:08', '2018-08-01 20:17:08'),
(54, 'Mountain Province', '2018-08-01 20:17:08', '2018-08-01 20:17:08'),
(55, 'Negros Occidental', '2018-08-01 20:17:08', '2018-08-01 20:17:08'),
(56, 'Negros Oriental', '2018-08-01 20:17:08', '2018-08-01 20:17:08'),
(57, 'Northern Samar', '2018-08-01 20:17:08', '2018-08-01 20:17:08'),
(58, 'Nueva Ecija', '2018-08-01 20:17:08', '2018-08-01 20:17:08'),
(59, 'Nueva Vizcaya', '2018-08-01 20:17:08', '2018-08-01 20:17:08'),
(60, 'Occidental Mindoro', '2018-08-01 20:17:08', '2018-08-01 20:17:08'),
(61, 'Oriental Mindoro', '2018-08-01 20:17:08', '2018-08-01 20:17:08'),
(62, 'Palawan', '2018-08-01 20:17:08', '2018-08-01 20:17:08'),
(63, 'Pampanga', '2018-08-01 20:17:08', '2018-08-01 20:17:08'),
(64, 'Pangasinan', '2018-08-01 20:17:08', '2018-08-01 20:17:08'),
(65, 'Quezon', '2018-08-01 20:17:08', '2018-08-01 20:17:08'),
(66, 'Quirino', '2018-08-01 20:17:08', '2018-08-01 20:17:08'),
(67, 'Rizal', '2018-08-01 20:17:08', '2018-08-01 20:17:08'),
(68, 'Romblon', '2018-08-01 20:17:08', '2018-08-01 20:17:08'),
(69, 'Samar', '2018-08-01 20:17:08', '2018-08-01 20:17:08'),
(70, 'Sarangani', '2018-08-01 20:17:08', '2018-08-01 20:17:08'),
(71, 'Siquijor', '2018-08-01 20:17:08', '2018-08-01 20:17:08'),
(72, 'Sorsogon', '2018-08-01 20:17:08', '2018-08-01 20:17:08'),
(73, 'South Cotabato', '2018-08-01 20:17:08', '2018-08-01 20:17:08'),
(74, 'Southern Leyte', '2018-08-01 20:17:08', '2018-08-01 20:17:08'),
(75, 'Sultan Kudarat', '2018-08-01 20:17:09', '2018-08-01 20:17:09'),
(76, 'Sulu', '2018-08-01 20:17:09', '2018-08-01 20:17:09'),
(77, 'Surigao del Norte', '2018-08-01 20:17:09', '2018-08-01 20:17:09'),
(78, 'Surigao del Sur', '2018-08-01 20:17:09', '2018-08-01 20:17:09'),
(79, 'Tarlac', '2018-08-01 20:17:09', '2018-08-01 20:17:09'),
(80, 'Tawi-Tawi', '2018-08-01 20:17:09', '2018-08-01 20:17:09'),
(81, 'Zambales', '2018-08-01 20:17:09', '2018-08-01 20:17:09'),
(82, 'Zamboanga del Norte', '2018-08-01 20:17:09', '2018-08-01 20:17:09'),
(83, 'Zamboanga del Sur', '2018-08-01 20:17:09', '2018-08-01 20:17:09'),
(84, 'Zamboanga Sibugay', '2018-08-01 20:17:09', '2018-08-01 20:17:09');

-- --------------------------------------------------------

--
-- Table structure for table `er_rates`
--

CREATE TABLE `er_rates` (
  `rate_id` bigint(20) UNSIGNED NOT NULL,
  `rate_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `er_rates`
--

INSERT INTO `er_rates` (`rate_id`, `rate_name`) VALUES
(1, 'Very Dissatisfied'),
(2, 'Dissatisfied'),
(3, 'Neither Satisfied Nor Dissatisfied'),
(4, 'Satisfied'),
(5, 'Very Satisfied');

-- --------------------------------------------------------

--
-- Table structure for table `er_referers`
--

CREATE TABLE `er_referers` (
  `referers_id` bigint(20) UNSIGNED NOT NULL,
  `referers_name` varchar(255) DEFAULT '',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `er_regions`
--

CREATE TABLE `er_regions` (
  `region_id` bigint(20) UNSIGNED NOT NULL,
  `region_name` varchar(255) DEFAULT '',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `er_regions`
--

INSERT INTO `er_regions` (`region_id`, `region_name`, `created_at`, `updated_at`) VALUES
(1, 'NCR - National Capital Region', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'CAR - Cordillera Administrative Region', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Region I - Ilocos Region', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Region II - Cagayan Valley', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Region III - Central Luzon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Region IV-A - CALABARZON', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Region IV-B - MIMAROPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Region V - Bicol Region', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Region VI - Western Visayas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Region VII - Central Visayas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Region VIII - Eastern Visayas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Region IX - Zamboanga Peninsula', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Region X - Northern Mindanao', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Region XI - Davao Region', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Region XII - SOCCSKSARGEN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Caraga Region', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'ARMM - Autonomous Region of Muslim Mindanao', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `er_sites`
--

CREATE TABLE `er_sites` (
  `site_id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `er_sites`
--

INSERT INTO `er_sites` (`site_id`, `site_name`) VALUES
(1, 'Session I'),
(2, 'Session II'),
(3, 'Session III'),
(4, 'Scholarship');

-- --------------------------------------------------------

--
-- Table structure for table `er_usergroups`
--

CREATE TABLE `er_usergroups` (
  `ug_id` bigint(20) UNSIGNED NOT NULL,
  `ug_name` varchar(255) DEFAULT '',
  `ug_lastmodified` datetime DEFAULT NULL,
  `ug_lastmodified_by` varchar(255) DEFAULT '',
  `ug_created` datetime DEFAULT NULL,
  `ug_created_by` varchar(255) DEFAULT '',
  `ug_is_admin` int(10) UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `er_usergroups`
--

INSERT INTO `er_usergroups` (`ug_id`, `ug_name`, `ug_lastmodified`, `ug_lastmodified_by`, `ug_created`, `ug_created_by`, `ug_is_admin`, `created_at`, `updated_at`) VALUES
(1, 'Administrators', '2016-10-05 17:27:30', NULL, '2016-10-05 17:27:30', NULL, 1, '2016-10-05 22:27:30', '2016-10-05 22:27:30'),
(2, 'Users', '2018-04-18 11:05:26', 'Admin Is Treytor', '2018-04-18 11:05:26', 'Admin Is Treytor', NULL, '2018-04-18 16:05:26', '2018-04-18 16:05:26');

-- --------------------------------------------------------

--
-- Table structure for table `er_usergroup_rights`
--

CREATE TABLE `er_usergroup_rights` (
  `ugr_id` bigint(20) UNSIGNED NOT NULL,
  `ugr_view` tinyint(1) UNSIGNED DEFAULT '0',
  `ugr_add` tinyint(1) UNSIGNED DEFAULT '0',
  `ugr_edit` tinyint(1) UNSIGNED DEFAULT '0',
  `ugr_delete` tinyint(1) UNSIGNED DEFAULT '0',
  `ugr_approve` tinyint(1) UNSIGNED DEFAULT '0',
  `ur_id` bigint(20) UNSIGNED DEFAULT '0',
  `ug_id` bigint(20) UNSIGNED DEFAULT '0',
  `ugr_lastmodified` datetime DEFAULT NULL,
  `ugr_lastmodified_by` varchar(255) DEFAULT '',
  `ugr_created` datetime DEFAULT NULL,
  `ugr_created_by` varchar(255) DEFAULT '',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `er_userrights`
--

CREATE TABLE `er_userrights` (
  `ur_id` bigint(20) UNSIGNED NOT NULL,
  `ur_name` varchar(255) DEFAULT '',
  `ur_lastmodified` datetime DEFAULT NULL,
  `ur_lastmodified_by` varchar(255) DEFAULT '',
  `ur_created` datetime DEFAULT NULL,
  `ur_created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `er_userrights`
--

INSERT INTO `er_userrights` (`ur_id`, `ur_name`, `ur_lastmodified`, `ur_lastmodified_by`, `ur_created`, `ur_created_by`, `created_at`, `updated_at`) VALUES
(19, 'Users', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'UserGroups', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Events', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Visitors', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Evaluations', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `er_users`
--

CREATE TABLE `er_users` (
  `u_id` bigint(20) UNSIGNED NOT NULL,
  `u_code` varchar(255) DEFAULT '',
  `u_fname` varchar(255) DEFAULT '',
  `u_mname` varchar(255) DEFAULT '',
  `u_lname` varchar(255) DEFAULT '',
  `u_email` varchar(255) DEFAULT '',
  `u_gsm` varchar(255) DEFAULT '',
  `u_username` varchar(255) DEFAULT '',
  `u_password` varchar(255) DEFAULT '',
  `u_enabled` tinyint(1) UNSIGNED DEFAULT '1',
  `u_last_loggedin` datetime DEFAULT NULL,
  `u_listname` varchar(255) DEFAULT '',
  `u_created` datetime DEFAULT NULL,
  `u_created_by` varchar(255) DEFAULT '',
  `u_lastmodified` datetime DEFAULT NULL,
  `u_lastmodified_by` varchar(255) DEFAULT '',
  `ug_id` bigint(20) UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `er_users`
--

INSERT INTO `er_users` (`u_id`, `u_code`, `u_fname`, `u_mname`, `u_lname`, `u_email`, `u_gsm`, `u_username`, `u_password`, `u_enabled`, `u_last_loggedin`, `u_listname`, `u_created`, `u_created_by`, `u_lastmodified`, `u_lastmodified_by`, `ug_id`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, '', 'Admin', 'Is', 'Treytor', 'glenn@devlinslab.com', '+639159528333', 'admin', '$2y$10$uj50b02gvPGFoOY5I9aRreVIqiG7ic0KqYwWxFWBQ7aYlYkM6Lx3.', 1, NULL, '', '2016-10-05 17:30:14', NULL, '2018-07-16 14:38:09', 'Admin Is Treytor', 1, '2016-10-05 22:30:14', '2018-08-02 22:30:27', 'XN7yoVwQVtBVXrKtKWbca9FPr6bi2NR2WJKgWD6dpPFjXP710exBw5aPMaoh'),
(2, '', 'Glenice Joy', 'A.', 'Mariano', 'angelesglenicejoy26@gmail.com', '+639171201060', 'glenice', '$2y$10$PymvW.0gojOYTnRP.gFUxuyrevcq7249dgEdnifkES.6rRtCLLVhm', 1, NULL, '', '2018-07-26 15:52:26', 'Admin Is Treytor', '2018-07-26 15:52:26', 'Admin Is Treytor', 1, '2018-07-26 20:52:26', '2018-07-26 21:46:11', 'ulRwCQ5X1f5YykJJQSgAihuJjIL4GkpiwnDZj78xnt3YGvCYd7SY7eqNV1Ct');

-- --------------------------------------------------------

--
-- Table structure for table `er_visitors`
--

CREATE TABLE `er_visitors` (
  `vis_id` bigint(20) UNSIGNED NOT NULL,
  `vis_code` varchar(255) DEFAULT '',
  `vis_fname` varchar(255) DEFAULT '',
  `vis_mname` varchar(255) DEFAULT '',
  `vis_lname` varchar(255) DEFAULT '',
  `vis_email` varchar(255) DEFAULT '',
  `vis_gsm` varchar(255) DEFAULT '',
  `vis_enabled` tinyint(1) UNSIGNED DEFAULT '1',
  `vis_last_loggedin` datetime DEFAULT NULL,
  `vis_created` datetime DEFAULT NULL,
  `vis_created_by` varchar(255) DEFAULT '',
  `vis_lastmodified` datetime DEFAULT NULL,
  `vis_lastmodified_by` varchar(255) DEFAULT '',
  `gender_id` bigint(20) UNSIGNED DEFAULT '1',
  `region_id` bigint(20) UNSIGNED DEFAULT '0',
  `civil_id` bigint(20) UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `vis_barangay` varchar(255) DEFAULT '',
  `vis_municipality` varchar(255) DEFAULT '',
  `vis_province` varchar(255) DEFAULT '',
  `vis_address` varchar(255) DEFAULT '',
  `vis_age` int(10) UNSIGNED DEFAULT '0',
  `class_id` bigint(20) UNSIGNED DEFAULT '0',
  `event_id` bigint(20) UNSIGNED DEFAULT '0',
  `vis_company` varchar(255) DEFAULT '',
  `vis_batch` int(10) UNSIGNED DEFAULT '0',
  `vis_serial` int(10) UNSIGNED DEFAULT '0',
  `vis_day` varchar(255) DEFAULT '',
  `email` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `er_visitors`
--

INSERT INTO `er_visitors` (`vis_id`, `vis_code`, `vis_fname`, `vis_mname`, `vis_lname`, `vis_email`, `vis_gsm`, `vis_enabled`, `vis_last_loggedin`, `vis_created`, `vis_created_by`, `vis_lastmodified`, `vis_lastmodified_by`, `gender_id`, `region_id`, `civil_id`, `created_at`, `updated_at`, `vis_barangay`, `vis_municipality`, `vis_province`, `vis_address`, `vis_age`, `class_id`, `event_id`, `vis_company`, `vis_batch`, `vis_serial`, `vis_day`, `email`) VALUES
(1, '00000001', 'Julius Christian', 'Mallari', 'Yumul', 'juliusyumul2031@gmail.com', '09658569298', 1, NULL, NULL, '', NULL, '', 1, 5, 1, '2022-05-27 04:51:55', '2022-05-27 04:51:55', '', '390', '24', 'San Fernando Pampanga', 24, 7, 1, 'DOST3', 0, 1, '', 0),
(2, '00000002', 'Roan', 'Pingol', 'Limson', 'jcyumul29@gmail.com', NULL, 1, NULL, NULL, '', NULL, '', 1, 5, 1, '2022-05-27 05:13:23', '2022-05-27 05:13:23', '', '390', '24', 'Sto. Niño City of San Fernando Pampanga', 24, 7, 1, 'DOST 3', 0, 2, '', 0),
(3, '00000003', 'Roan Arce', 'P.', 'Limson', 'jcyumul29@gmail.com', '09991231234', 1, NULL, NULL, '', NULL, '', 2, 5, 1, '2022-05-27 19:19:31', '2022-05-27 19:19:31', '', '390', '24', 'Sto. Niño City of San Fernando Pampanga', 24, 7, 1, 'DOST 3', 0, 3, '', 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_evaluations`
-- (See below for the actual view)
--
CREATE TABLE `vw_evaluations` (
`eval_id` bigint(20) unsigned
,`eval_firsttime` tinyint(1) unsigned
,`eval_interest` bigint(20) unsigned
,`eval_interest_others` varchar(255)
,`eval_rating_1` tinyint(1) unsigned
,`eval_rating_2` tinyint(1) unsigned
,`eval_rating_3` tinyint(1) unsigned
,`eval_rating_4` tinyint(1) unsigned
,`eval_rating_5` tinyint(1) unsigned
,`eval_rating_6` tinyint(1) unsigned
,`eval_rating_7` tinyint(1) unsigned
,`eval_rating_overall` tinyint(1) unsigned
,`eval_created` datetime
,`eval_created_by` varchar(255)
,`eval_lastmodified` datetime
,`eval_lastmodified_by` varchar(255)
,`created_at` timestamp
,`updated_at` timestamp
,`eval_ref_1` tinyint(1) unsigned
,`eval_ref_2` tinyint(1) unsigned
,`eval_ref_3` tinyint(1) unsigned
,`eval_ref_4` tinyint(1) unsigned
,`eval_ref_5` tinyint(1) unsigned
,`eval_ref_6` tinyint(1) unsigned
,`eval_ref_7` tinyint(1) unsigned
,`eval_ref_8` tinyint(1) unsigned
,`eval_ref_9` tinyint(1) unsigned
,`vis_id` bigint(20) unsigned
,`event_id` bigint(20) unsigned
,`eval_file` varchar(255)
,`eval_eval_firsttime_label` varchar(3)
,`eval_ref_1_label` varchar(5)
,`eval_ref_2_label` varchar(2)
,`eval_ref_3_label` varchar(9)
,`eval_ref_4_label` varchar(8)
,`eval_ref_5_label` varchar(6)
,`eval_ref_6_label` varchar(6)
,`eval_ref_7_label` varchar(10)
,`eval_ref_8_label` varchar(8)
,`eval_ref_9_label` char(0)
,`eval_rating_overall_name` varchar(255)
,`vis_code` varchar(255)
,`vis_fname` varchar(255)
,`vis_mname` varchar(255)
,`vis_lname` varchar(255)
,`vis_email` varchar(255)
,`vis_gsm` varchar(255)
,`vis_enabled` tinyint(1) unsigned
,`vis_last_loggedin` datetime
,`vis_created` datetime
,`vis_created_by` varchar(255)
,`vis_lastmodified` datetime
,`vis_lastmodified_by` varchar(255)
,`gender_id` bigint(20) unsigned
,`region_id` bigint(20) unsigned
,`civil_id` bigint(20) unsigned
,`vis_barangay` varchar(255)
,`vis_municipality` varchar(255)
,`vis_province` varchar(255)
,`vis_address` varchar(255)
,`vis_age` int(10) unsigned
,`gender_name` varchar(255)
,`region_name` varchar(255)
,`civil_name` varchar(255)
,`class_id` bigint(20) unsigned
,`class_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_events`
-- (See below for the actual view)
--
CREATE TABLE `vw_events` (
`event_id` bigint(20) unsigned
,`event_title` varchar(255)
,`event_desc` text
,`event_from` date
,`event_to` date
,`event_image` varchar(255)
,`event_file` varchar(255)
,`event_active` int(10) unsigned
,`event_created` datetime
,`event_created_by` varchar(255)
,`event_lastmodified` datetime
,`event_lastmodified_by` varchar(255)
,`created_at` timestamp
,`updated_at` timestamp
,`vis_count` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_event_visitors`
-- (See below for the actual view)
--
CREATE TABLE `vw_event_visitors` (
`evis_id` bigint(20) unsigned
,`vis_id` bigint(20) unsigned
,`site_id` bigint(20) unsigned
,`vis_fname` varchar(255)
,`vis_mname` varchar(255)
,`vis_lname` varchar(255)
,`vis_email` varchar(255)
,`vis_gsm` varchar(255)
,`vis_enabled` tinyint(1) unsigned
,`vis_last_loggedin` datetime
,`vis_created` datetime
,`vis_created_by` varchar(255)
,`vis_lastmodified` datetime
,`vis_lastmodified_by` varchar(255)
,`gender_id` bigint(20) unsigned
,`region_id` bigint(20) unsigned
,`civil_id` bigint(20) unsigned
,`created_at` timestamp
,`updated_at` timestamp
,`vis_barangay` varchar(255)
,`vis_municipality` varchar(255)
,`vis_province` varchar(255)
,`vis_address` varchar(255)
,`vis_age` int(10) unsigned
,`class_id` bigint(20) unsigned
,`vis_company` varchar(255)
,`vis_batch` int(10) unsigned
,`vis_serial` int(10) unsigned
,`vis_code` varchar(255)
,`event_id` bigint(20) unsigned
,`event_title` varchar(255)
,`event_desc` text
,`event_image` varchar(255)
,`site_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_event_visitor_count`
-- (See below for the actual view)
--
CREATE TABLE `vw_event_visitor_count` (
`vis_count` bigint(21)
,`event_id` bigint(20) unsigned
,`event_title` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_registrants`
-- (See below for the actual view)
--
CREATE TABLE `vw_registrants` (
`vis_count` bigint(21)
,`event_id` bigint(20) unsigned
,`event_title` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_site_visitors`
-- (See below for the actual view)
--
CREATE TABLE `vw_site_visitors` (
`evis_id` bigint(20) unsigned
,`vis_id` bigint(20) unsigned
,`site_id` bigint(20) unsigned
,`vis_fname` varchar(255)
,`vis_mname` varchar(255)
,`vis_lname` varchar(255)
,`vis_email` varchar(255)
,`vis_gsm` varchar(255)
,`vis_enabled` tinyint(1) unsigned
,`vis_last_loggedin` datetime
,`vis_created` datetime
,`vis_created_by` varchar(255)
,`vis_lastmodified` datetime
,`vis_lastmodified_by` varchar(255)
,`gender_id` bigint(20) unsigned
,`region_id` bigint(20) unsigned
,`civil_id` bigint(20) unsigned
,`created_at` timestamp
,`updated_at` timestamp
,`vis_barangay` varchar(255)
,`vis_municipality` varchar(255)
,`vis_province` varchar(255)
,`vis_address` varchar(255)
,`vis_age` int(10) unsigned
,`class_id` bigint(20) unsigned
,`vis_company` varchar(255)
,`vis_batch` int(10) unsigned
,`vis_serial` int(10) unsigned
,`vis_code` varchar(255)
,`event_id` bigint(20) unsigned
,`event_title` varchar(255)
,`event_desc` text
,`event_image` varchar(255)
,`site_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_usergroup_rights`
-- (See below for the actual view)
--
CREATE TABLE `vw_usergroup_rights` (
`ugr_id` bigint(20) unsigned
,`ugr_view` tinyint(1) unsigned
,`ugr_add` tinyint(1) unsigned
,`ugr_edit` tinyint(1) unsigned
,`ugr_delete` tinyint(1) unsigned
,`ugr_approve` tinyint(1) unsigned
,`ur_id` bigint(20) unsigned
,`ug_id` bigint(20) unsigned
,`ugr_lastmodified` datetime
,`ugr_created` datetime
,`ugr_lastmodified_by` varchar(255)
,`ugr_created_by` varchar(255)
,`ug_name` varchar(255)
,`ur_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_users`
-- (See below for the actual view)
--
CREATE TABLE `vw_users` (
`u_id` bigint(20) unsigned
,`u_code` varchar(255)
,`u_fname` varchar(255)
,`u_mname` varchar(255)
,`u_lname` varchar(255)
,`u_email` varchar(255)
,`u_gsm` varchar(255)
,`u_username` varchar(255)
,`u_password` varchar(255)
,`u_enabled` tinyint(1) unsigned
,`u_last_loggedin` datetime
,`u_listname` varchar(255)
,`u_created` datetime
,`u_created_by` varchar(255)
,`u_lastmodified` datetime
,`u_lastmodified_by` varchar(255)
,`ug_id` bigint(20) unsigned
,`created_at` timestamp
,`updated_at` timestamp
,`remember_token` varchar(100)
,`u_name` text
,`ug_name` varchar(255)
,`ug_lastmodified` datetime
,`ug_lastmodified_by` varchar(255)
,`ug_created` datetime
,`ug_created_by` varchar(255)
,`ug_is_admin` int(10) unsigned
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_visitors`
-- (See below for the actual view)
--
CREATE TABLE `vw_visitors` (
`vis_id` bigint(20) unsigned
,`vis_code` varchar(255)
,`vis_batch` int(10) unsigned
,`vis_serial` int(10) unsigned
,`vis_fname` varchar(255)
,`vis_mname` varchar(255)
,`vis_lname` varchar(255)
,`vis_name` text
,`vis_email` varchar(255)
,`vis_gsm` varchar(255)
,`vis_enabled` tinyint(1) unsigned
,`vis_last_loggedin` datetime
,`vis_created` datetime
,`vis_created_by` varchar(255)
,`vis_lastmodified` datetime
,`vis_lastmodified_by` varchar(255)
,`gender_id` bigint(20) unsigned
,`region_id` bigint(20) unsigned
,`civil_id` bigint(20) unsigned
,`vis_barangay` varchar(255)
,`vis_municipality` varchar(255)
,`vis_province` varchar(255)
,`vis_address` varchar(255)
,`vis_age` int(10) unsigned
,`vis_company` varchar(255)
,`event_id` bigint(20) unsigned
,`created_at` timestamp
,`updated_at` timestamp
,`class_id` bigint(20) unsigned
,`vis_day` varchar(255)
,`gender_name` varchar(255)
,`region_name` varchar(255)
,`civil_name` varchar(255)
,`class_name` varchar(255)
,`event_title` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_evaluations`
--
DROP TABLE IF EXISTS `vw_evaluations`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dost3_rstwuser`@`103.80.142.227` SQL SECURITY DEFINER VIEW `vw_evaluations`  AS SELECT `er_event_evaluations`.`eval_id` AS `eval_id`, `er_event_evaluations`.`eval_firsttime` AS `eval_firsttime`, `er_event_evaluations`.`eval_interest` AS `eval_interest`, `er_event_evaluations`.`eval_interest_others` AS `eval_interest_others`, `er_event_evaluations`.`eval_rating_1` AS `eval_rating_1`, `er_event_evaluations`.`eval_rating_2` AS `eval_rating_2`, `er_event_evaluations`.`eval_rating_3` AS `eval_rating_3`, `er_event_evaluations`.`eval_rating_4` AS `eval_rating_4`, `er_event_evaluations`.`eval_rating_5` AS `eval_rating_5`, `er_event_evaluations`.`eval_rating_6` AS `eval_rating_6`, `er_event_evaluations`.`eval_rating_7` AS `eval_rating_7`, `er_event_evaluations`.`eval_rating_overall` AS `eval_rating_overall`, `er_event_evaluations`.`eval_created` AS `eval_created`, `er_event_evaluations`.`eval_created_by` AS `eval_created_by`, `er_event_evaluations`.`eval_lastmodified` AS `eval_lastmodified`, `er_event_evaluations`.`eval_lastmodified_by` AS `eval_lastmodified_by`, `er_event_evaluations`.`created_at` AS `created_at`, `er_event_evaluations`.`updated_at` AS `updated_at`, `er_event_evaluations`.`eval_ref_1` AS `eval_ref_1`, `er_event_evaluations`.`eval_ref_2` AS `eval_ref_2`, `er_event_evaluations`.`eval_ref_3` AS `eval_ref_3`, `er_event_evaluations`.`eval_ref_4` AS `eval_ref_4`, `er_event_evaluations`.`eval_ref_5` AS `eval_ref_5`, `er_event_evaluations`.`eval_ref_6` AS `eval_ref_6`, `er_event_evaluations`.`eval_ref_7` AS `eval_ref_7`, `er_event_evaluations`.`eval_ref_8` AS `eval_ref_8`, `er_event_evaluations`.`eval_ref_9` AS `eval_ref_9`, `er_event_evaluations`.`vis_id` AS `vis_id`, `er_event_evaluations`.`event_id` AS `event_id`, `er_event_evaluations`.`eval_file` AS `eval_file`, if((`er_event_evaluations`.`eval_firsttime` = 1),'Yes','No') AS `eval_eval_firsttime_label`, if((`er_event_evaluations`.`eval_ref_1` = 1),'Radio','') AS `eval_ref_1_label`, if((`er_event_evaluations`.`eval_ref_2` = 1),'TV','') AS `eval_ref_2_label`, if((`er_event_evaluations`.`eval_ref_3` = 1),'Newspaper','') AS `eval_ref_3_label`, if((`er_event_evaluations`.`eval_ref_4` = 1),'Internet','') AS `eval_ref_4_label`, if((`er_event_evaluations`.`eval_ref_5` = 1),'School','') AS `eval_ref_5_label`, if((`er_event_evaluations`.`eval_ref_6` = 1),'Office','') AS `eval_ref_6_label`, if((`er_event_evaluations`.`eval_ref_7` = 1),'Invitation','') AS `eval_ref_7_label`, if((`er_event_evaluations`.`eval_ref_8` = 1),'Referral','') AS `eval_ref_8_label`, if((`er_event_evaluations`.`eval_ref_9` = 1),'','') AS `eval_ref_9_label`, `er_rates`.`rate_name` AS `eval_rating_overall_name`, `vw_visitors`.`vis_code` AS `vis_code`, `vw_visitors`.`vis_fname` AS `vis_fname`, `vw_visitors`.`vis_mname` AS `vis_mname`, `vw_visitors`.`vis_lname` AS `vis_lname`, `vw_visitors`.`vis_email` AS `vis_email`, `vw_visitors`.`vis_gsm` AS `vis_gsm`, `vw_visitors`.`vis_enabled` AS `vis_enabled`, `vw_visitors`.`vis_last_loggedin` AS `vis_last_loggedin`, `vw_visitors`.`vis_created` AS `vis_created`, `vw_visitors`.`vis_created_by` AS `vis_created_by`, `vw_visitors`.`vis_lastmodified` AS `vis_lastmodified`, `vw_visitors`.`vis_lastmodified_by` AS `vis_lastmodified_by`, `vw_visitors`.`gender_id` AS `gender_id`, `vw_visitors`.`region_id` AS `region_id`, `vw_visitors`.`civil_id` AS `civil_id`, `vw_visitors`.`vis_barangay` AS `vis_barangay`, `vw_visitors`.`vis_municipality` AS `vis_municipality`, `vw_visitors`.`vis_province` AS `vis_province`, `vw_visitors`.`vis_address` AS `vis_address`, `vw_visitors`.`vis_age` AS `vis_age`, `vw_visitors`.`gender_name` AS `gender_name`, `vw_visitors`.`region_name` AS `region_name`, `vw_visitors`.`civil_name` AS `civil_name`, `vw_visitors`.`class_id` AS `class_id`, `vw_visitors`.`class_name` AS `class_name` FROM ((`er_event_evaluations` left join `er_rates` on((`er_event_evaluations`.`eval_rating_overall` = `er_rates`.`rate_id`))) left join `vw_visitors` on((`er_event_evaluations`.`vis_id` = `vw_visitors`.`vis_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_events`
--
DROP TABLE IF EXISTS `vw_events`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dost3_rstwuser`@`103.80.142.227` SQL SECURITY DEFINER VIEW `vw_events`  AS SELECT `er_events`.`event_id` AS `event_id`, `er_events`.`event_title` AS `event_title`, `er_events`.`event_desc` AS `event_desc`, `er_events`.`event_from` AS `event_from`, `er_events`.`event_to` AS `event_to`, `er_events`.`event_image` AS `event_image`, `er_events`.`event_file` AS `event_file`, `er_events`.`event_active` AS `event_active`, `er_events`.`event_created` AS `event_created`, `er_events`.`event_created_by` AS `event_created_by`, `er_events`.`event_lastmodified` AS `event_lastmodified`, `er_events`.`event_lastmodified_by` AS `event_lastmodified_by`, `er_events`.`created_at` AS `created_at`, `er_events`.`updated_at` AS `updated_at`, ifnull(`vw_event_visitor_count`.`vis_count`,0) AS `vis_count` FROM (`er_events` left join `vw_event_visitor_count` on((`er_events`.`event_id` = `vw_event_visitor_count`.`event_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_event_visitors`
--
DROP TABLE IF EXISTS `vw_event_visitors`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dost3_rstwuser`@`103.80.142.227` SQL SECURITY DEFINER VIEW `vw_event_visitors`  AS SELECT `er_event_visitors`.`evis_id` AS `evis_id`, `er_event_visitors`.`vis_id` AS `vis_id`, `er_event_visitors`.`site_id` AS `site_id`, `er_visitors`.`vis_fname` AS `vis_fname`, `er_visitors`.`vis_mname` AS `vis_mname`, `er_visitors`.`vis_lname` AS `vis_lname`, `er_visitors`.`vis_email` AS `vis_email`, `er_visitors`.`vis_gsm` AS `vis_gsm`, `er_visitors`.`vis_enabled` AS `vis_enabled`, `er_visitors`.`vis_last_loggedin` AS `vis_last_loggedin`, `er_visitors`.`vis_created` AS `vis_created`, `er_visitors`.`vis_created_by` AS `vis_created_by`, `er_visitors`.`vis_lastmodified` AS `vis_lastmodified`, `er_visitors`.`vis_lastmodified_by` AS `vis_lastmodified_by`, `er_visitors`.`gender_id` AS `gender_id`, `er_visitors`.`region_id` AS `region_id`, `er_visitors`.`civil_id` AS `civil_id`, `er_visitors`.`created_at` AS `created_at`, `er_visitors`.`updated_at` AS `updated_at`, `er_visitors`.`vis_barangay` AS `vis_barangay`, `er_visitors`.`vis_municipality` AS `vis_municipality`, `er_visitors`.`vis_province` AS `vis_province`, `er_visitors`.`vis_address` AS `vis_address`, `er_visitors`.`vis_age` AS `vis_age`, `er_visitors`.`class_id` AS `class_id`, `er_visitors`.`vis_company` AS `vis_company`, `er_visitors`.`vis_batch` AS `vis_batch`, `er_visitors`.`vis_serial` AS `vis_serial`, `er_visitors`.`vis_code` AS `vis_code`, `er_event_visitors`.`event_id` AS `event_id`, `er_events`.`event_title` AS `event_title`, `er_events`.`event_desc` AS `event_desc`, `er_events`.`event_image` AS `event_image`, `er_sites`.`site_name` AS `site_name` FROM (((`er_event_visitors` left join `er_visitors` on((`er_event_visitors`.`vis_id` = `er_visitors`.`vis_id`))) left join `er_events` on((`er_event_visitors`.`event_id` = `er_events`.`event_id`))) left join `er_sites` on((`er_event_visitors`.`site_id` = `er_sites`.`site_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_event_visitor_count`
--
DROP TABLE IF EXISTS `vw_event_visitor_count`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dost3_rstwuser`@`103.80.142.227` SQL SECURITY DEFINER VIEW `vw_event_visitor_count`  AS SELECT count(`vw_visitors`.`vis_id`) AS `vis_count`, `vw_visitors`.`event_id` AS `event_id`, `vw_visitors`.`event_title` AS `event_title` FROM `vw_visitors` GROUP BY `vw_visitors`.`event_id`, `vw_visitors`.`event_title` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_registrants`
--
DROP TABLE IF EXISTS `vw_registrants`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dost3_rstwuser`@`103.80.142.227` SQL SECURITY DEFINER VIEW `vw_registrants`  AS SELECT ifnull(count(`vw_visitors`.`vis_id`),0) AS `vis_count`, `vw_visitors`.`event_id` AS `event_id`, `vw_visitors`.`event_title` AS `event_title` FROM `vw_visitors` GROUP BY `vw_visitors`.`event_id`, `vw_visitors`.`event_title` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_site_visitors`
--
DROP TABLE IF EXISTS `vw_site_visitors`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dost3_rstwuser`@`103.80.142.227` SQL SECURITY DEFINER VIEW `vw_site_visitors`  AS SELECT `er_event_visitors`.`evis_id` AS `evis_id`, `er_event_visitors`.`vis_id` AS `vis_id`, `er_event_visitors`.`site_id` AS `site_id`, `er_visitors`.`vis_fname` AS `vis_fname`, `er_visitors`.`vis_mname` AS `vis_mname`, `er_visitors`.`vis_lname` AS `vis_lname`, `er_visitors`.`vis_email` AS `vis_email`, `er_visitors`.`vis_gsm` AS `vis_gsm`, `er_visitors`.`vis_enabled` AS `vis_enabled`, `er_visitors`.`vis_last_loggedin` AS `vis_last_loggedin`, `er_visitors`.`vis_created` AS `vis_created`, `er_visitors`.`vis_created_by` AS `vis_created_by`, `er_visitors`.`vis_lastmodified` AS `vis_lastmodified`, `er_visitors`.`vis_lastmodified_by` AS `vis_lastmodified_by`, `er_visitors`.`gender_id` AS `gender_id`, `er_visitors`.`region_id` AS `region_id`, `er_visitors`.`civil_id` AS `civil_id`, `er_visitors`.`created_at` AS `created_at`, `er_visitors`.`updated_at` AS `updated_at`, `er_visitors`.`vis_barangay` AS `vis_barangay`, `er_visitors`.`vis_municipality` AS `vis_municipality`, `er_visitors`.`vis_province` AS `vis_province`, `er_visitors`.`vis_address` AS `vis_address`, `er_visitors`.`vis_age` AS `vis_age`, `er_visitors`.`class_id` AS `class_id`, `er_visitors`.`vis_company` AS `vis_company`, `er_visitors`.`vis_batch` AS `vis_batch`, `er_visitors`.`vis_serial` AS `vis_serial`, `er_visitors`.`vis_code` AS `vis_code`, `er_event_visitors`.`event_id` AS `event_id`, `er_events`.`event_title` AS `event_title`, `er_events`.`event_desc` AS `event_desc`, `er_events`.`event_image` AS `event_image`, `er_sites`.`site_name` AS `site_name` FROM (((`er_event_visitors` left join `er_visitors` on((`er_event_visitors`.`vis_id` = `er_visitors`.`vis_id`))) left join `er_events` on((`er_event_visitors`.`event_id` = `er_events`.`event_id`))) left join `er_sites` on((`er_event_visitors`.`site_id` = `er_sites`.`site_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_usergroup_rights`
--
DROP TABLE IF EXISTS `vw_usergroup_rights`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dost3_rstwuser`@`103.80.142.227` SQL SECURITY DEFINER VIEW `vw_usergroup_rights`  AS SELECT `er_usergroup_rights`.`ugr_id` AS `ugr_id`, `er_usergroup_rights`.`ugr_view` AS `ugr_view`, `er_usergroup_rights`.`ugr_add` AS `ugr_add`, `er_usergroup_rights`.`ugr_edit` AS `ugr_edit`, `er_usergroup_rights`.`ugr_delete` AS `ugr_delete`, `er_usergroup_rights`.`ugr_approve` AS `ugr_approve`, `er_usergroup_rights`.`ur_id` AS `ur_id`, `er_usergroup_rights`.`ug_id` AS `ug_id`, `er_usergroup_rights`.`ugr_lastmodified` AS `ugr_lastmodified`, `er_usergroup_rights`.`ugr_created` AS `ugr_created`, `er_usergroup_rights`.`ugr_lastmodified_by` AS `ugr_lastmodified_by`, `er_usergroup_rights`.`ugr_created_by` AS `ugr_created_by`, `er_usergroups`.`ug_name` AS `ug_name`, `er_userrights`.`ur_name` AS `ur_name` FROM ((`er_usergroup_rights` left join `er_usergroups` on((`er_usergroup_rights`.`ug_id` = `er_usergroups`.`ug_id`))) left join `er_userrights` on((`er_usergroup_rights`.`ur_id` = `er_userrights`.`ur_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_users`
--
DROP TABLE IF EXISTS `vw_users`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dost3_rstwuser`@`103.80.142.227` SQL SECURITY DEFINER VIEW `vw_users`  AS SELECT `er_users`.`u_id` AS `u_id`, `er_users`.`u_code` AS `u_code`, `er_users`.`u_fname` AS `u_fname`, `er_users`.`u_mname` AS `u_mname`, `er_users`.`u_lname` AS `u_lname`, `er_users`.`u_email` AS `u_email`, `er_users`.`u_gsm` AS `u_gsm`, `er_users`.`u_username` AS `u_username`, `er_users`.`u_password` AS `u_password`, `er_users`.`u_enabled` AS `u_enabled`, `er_users`.`u_last_loggedin` AS `u_last_loggedin`, `er_users`.`u_listname` AS `u_listname`, `er_users`.`u_created` AS `u_created`, `er_users`.`u_created_by` AS `u_created_by`, `er_users`.`u_lastmodified` AS `u_lastmodified`, `er_users`.`u_lastmodified_by` AS `u_lastmodified_by`, `er_users`.`ug_id` AS `ug_id`, `er_users`.`created_at` AS `created_at`, `er_users`.`updated_at` AS `updated_at`, `er_users`.`remember_token` AS `remember_token`, concat(`er_users`.`u_fname`,convert(convert(if((char_length(`er_users`.`u_fname`) > 0),' ','') using latin1) using utf8),`er_users`.`u_mname`,convert(convert(if((char_length(`er_users`.`u_mname`) > 0),' ','') using latin1) using utf8),`er_users`.`u_lname`) AS `u_name`, `er_usergroups`.`ug_name` AS `ug_name`, `er_usergroups`.`ug_lastmodified` AS `ug_lastmodified`, `er_usergroups`.`ug_lastmodified_by` AS `ug_lastmodified_by`, `er_usergroups`.`ug_created` AS `ug_created`, `er_usergroups`.`ug_created_by` AS `ug_created_by`, `er_usergroups`.`ug_is_admin` AS `ug_is_admin` FROM (`er_users` left join `er_usergroups` on((`er_users`.`ug_id` = `er_usergroups`.`ug_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_visitors`
--
DROP TABLE IF EXISTS `vw_visitors`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dost3_rstwuser`@`103.80.142.227` SQL SECURITY DEFINER VIEW `vw_visitors`  AS SELECT `er_visitors`.`vis_id` AS `vis_id`, `er_visitors`.`vis_code` AS `vis_code`, `er_visitors`.`vis_batch` AS `vis_batch`, `er_visitors`.`vis_serial` AS `vis_serial`, `er_visitors`.`vis_fname` AS `vis_fname`, `er_visitors`.`vis_mname` AS `vis_mname`, `er_visitors`.`vis_lname` AS `vis_lname`, concat(`er_visitors`.`vis_fname`,convert(convert(if((char_length(`er_visitors`.`vis_fname`) > 0),' ','') using latin1) using utf8),`er_visitors`.`vis_mname`,convert(convert(if((char_length(`er_visitors`.`vis_mname`) > 0),' ','') using latin1) using utf8),`er_visitors`.`vis_lname`) AS `vis_name`, `er_visitors`.`vis_email` AS `vis_email`, `er_visitors`.`vis_gsm` AS `vis_gsm`, `er_visitors`.`vis_enabled` AS `vis_enabled`, `er_visitors`.`vis_last_loggedin` AS `vis_last_loggedin`, `er_visitors`.`vis_created` AS `vis_created`, `er_visitors`.`vis_created_by` AS `vis_created_by`, `er_visitors`.`vis_lastmodified` AS `vis_lastmodified`, `er_visitors`.`vis_lastmodified_by` AS `vis_lastmodified_by`, `er_visitors`.`gender_id` AS `gender_id`, `er_visitors`.`region_id` AS `region_id`, `er_visitors`.`civil_id` AS `civil_id`, `er_visitors`.`vis_barangay` AS `vis_barangay`, `er_visitors`.`vis_municipality` AS `vis_municipality`, `er_visitors`.`vis_province` AS `vis_province`, `er_visitors`.`vis_address` AS `vis_address`, `er_visitors`.`vis_age` AS `vis_age`, `er_visitors`.`vis_company` AS `vis_company`, `er_visitors`.`event_id` AS `event_id`, `er_visitors`.`created_at` AS `created_at`, `er_visitors`.`updated_at` AS `updated_at`, `er_visitors`.`class_id` AS `class_id`, `er_visitors`.`vis_day` AS `vis_day`, `er_genders`.`gender_name` AS `gender_name`, `er_regions`.`region_name` AS `region_name`, `er_civilstatus`.`civil_name` AS `civil_name`, `er_classifications`.`class_name` AS `class_name`, `er_events`.`event_title` AS `event_title` FROM (((((`er_visitors` left join `er_genders` on((`er_visitors`.`gender_id` = `er_genders`.`gender_id`))) left join `er_regions` on((`er_visitors`.`region_id` = `er_regions`.`region_id`))) left join `er_civilstatus` on((`er_visitors`.`civil_id` = `er_civilstatus`.`civil_id`))) left join `er_classifications` on((`er_visitors`.`class_id` = `er_classifications`.`class_id`))) left join `er_events` on((`er_visitors`.`event_id` = `er_events`.`event_id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `er_barcodes`
--
ALTER TABLE `er_barcodes`
  ADD PRIMARY KEY (`barcode_id`);

--
-- Indexes for table `er_civilstatus`
--
ALTER TABLE `er_civilstatus`
  ADD PRIMARY KEY (`civil_id`);

--
-- Indexes for table `er_classifications`
--
ALTER TABLE `er_classifications`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `er_counters`
--
ALTER TABLE `er_counters`
  ADD PRIMARY KEY (`counter_id`),
  ADD UNIQUE KEY `counter_id_UNIQUE` (`counter_id`);

--
-- Indexes for table `er_counter_visitors`
--
ALTER TABLE `er_counter_visitors`
  ADD PRIMARY KEY (`counterv_id`),
  ADD UNIQUE KEY `counter_vis_id_UNIQUE` (`counterv_id`);

--
-- Indexes for table `er_events`
--
ALTER TABLE `er_events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `er_event_evaluations`
--
ALTER TABLE `er_event_evaluations`
  ADD PRIMARY KEY (`eval_id`);

--
-- Indexes for table `er_event_visitors`
--
ALTER TABLE `er_event_visitors`
  ADD PRIMARY KEY (`evis_id`);

--
-- Indexes for table `er_genders`
--
ALTER TABLE `er_genders`
  ADD PRIMARY KEY (`gender_id`);

--
-- Indexes for table `er_municipality`
--
ALTER TABLE `er_municipality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `er_province`
--
ALTER TABLE `er_province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `er_provlist`
--
ALTER TABLE `er_provlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `er_rates`
--
ALTER TABLE `er_rates`
  ADD PRIMARY KEY (`rate_id`),
  ADD UNIQUE KEY `rate_id_UNIQUE` (`rate_id`);

--
-- Indexes for table `er_referers`
--
ALTER TABLE `er_referers`
  ADD PRIMARY KEY (`referers_id`);

--
-- Indexes for table `er_regions`
--
ALTER TABLE `er_regions`
  ADD PRIMARY KEY (`region_id`);

--
-- Indexes for table `er_sites`
--
ALTER TABLE `er_sites`
  ADD PRIMARY KEY (`site_id`),
  ADD UNIQUE KEY `ses_is_UNIQUE` (`site_id`);

--
-- Indexes for table `er_usergroups`
--
ALTER TABLE `er_usergroups`
  ADD PRIMARY KEY (`ug_id`);

--
-- Indexes for table `er_usergroup_rights`
--
ALTER TABLE `er_usergroup_rights`
  ADD PRIMARY KEY (`ugr_id`);

--
-- Indexes for table `er_userrights`
--
ALTER TABLE `er_userrights`
  ADD PRIMARY KEY (`ur_id`);

--
-- Indexes for table `er_users`
--
ALTER TABLE `er_users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `er_visitors`
--
ALTER TABLE `er_visitors`
  ADD PRIMARY KEY (`vis_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `er_barcodes`
--
ALTER TABLE `er_barcodes`
  MODIFY `barcode_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `er_civilstatus`
--
ALTER TABLE `er_civilstatus`
  MODIFY `civil_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `er_classifications`
--
ALTER TABLE `er_classifications`
  MODIFY `class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `er_counters`
--
ALTER TABLE `er_counters`
  MODIFY `counter_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `er_counter_visitors`
--
ALTER TABLE `er_counter_visitors`
  MODIFY `counterv_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `er_events`
--
ALTER TABLE `er_events`
  MODIFY `event_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `er_event_evaluations`
--
ALTER TABLE `er_event_evaluations`
  MODIFY `eval_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `er_event_visitors`
--
ALTER TABLE `er_event_visitors`
  MODIFY `evis_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `er_genders`
--
ALTER TABLE `er_genders`
  MODIFY `gender_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `er_municipality`
--
ALTER TABLE `er_municipality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1632;

--
-- AUTO_INCREMENT for table `er_province`
--
ALTER TABLE `er_province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `er_rates`
--
ALTER TABLE `er_rates`
  MODIFY `rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `er_referers`
--
ALTER TABLE `er_referers`
  MODIFY `referers_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `er_regions`
--
ALTER TABLE `er_regions`
  MODIFY `region_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `er_sites`
--
ALTER TABLE `er_sites`
  MODIFY `site_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `er_usergroups`
--
ALTER TABLE `er_usergroups`
  MODIFY `ug_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `er_usergroup_rights`
--
ALTER TABLE `er_usergroup_rights`
  MODIFY `ugr_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `er_userrights`
--
ALTER TABLE `er_userrights`
  MODIFY `ur_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `er_users`
--
ALTER TABLE `er_users`
  MODIFY `u_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `er_visitors`
--
ALTER TABLE `er_visitors`
  MODIFY `vis_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
