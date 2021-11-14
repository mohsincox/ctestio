-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2021 at 01:31 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sroms`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_users`
--

CREATE TABLE `app_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `delivery_point` varchar(255) DEFAULT NULL,
  `area_covered` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_users`
--

INSERT INTO `app_users` (`id`, `username`, `password`, `role`, `name`, `phone_number`, `detail`, `designation`, `delivery_point`, `area_covered`, `remarks`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'a9', '9', 'admin', 'Ashrafur Rahman', '01618092015', 'Admin - 01618092015', 'Sr. Executive ', 'N/A', 'He will cordinate the total operation of home delivery ', 'Total operation monitoring & over all in Loop', NULL, 3, NULL, NULL, NULL, '2019-10-04 14:09:07'),
(2, 'r8', '8', 'admin', 'Mr. Redwanul Kabir', '01812724128', 'Admin - 01812724128', 'Supervisor', 'N/A', 'He will receive the order from MYOL and dispatch it  according to deliveryman', 'Supervision & order dispatchment to DM & Loop', NULL, 1, NULL, NULL, NULL, '2019-09-01 08:42:37'),
(3, 'h8', '8', 'user', 'Mr. KH. Hasnat', '01319638088', 'DEPOT 1 (Panthopath) Mr. KH. Hasnat - 01319638088', 'Deliveryman', '\"Panthopath Depot (Panthopath)\"', 'Dhanmondi/Mohammadpur/Bosila/Shymoli/Lalmatiya', 'Based on west side of mirpur main road', NULL, 1, NULL, NULL, NULL, '2019-09-01 08:43:06'),
(4, 'k1', '1', 'user', 'Mr. Kamrul Islam', '01723654541', 'JONY ENTERPRISE (Lalbagh) Mr.  Kamrul - 01723654541', 'Deliveryman', '\"Jony Enterprise  (Lalbagh)\"', 'New Market/ Azimpur/ Lalbag/ Chakbazar/ Bokshi Bazar/  Dhaka University ', 'Based on south-west side of old dhaka', NULL, 1, NULL, NULL, NULL, '2019-09-01 08:43:31'),
(5, 's2', '2', 'user', 'Mr. Shojib', '01909987902', 'WAZED ENTERPRISE (Mirpur-2) Mr. Shojib - 01909987902', 'Deliveryman', '\"Wazed Enterprise (Mirpur-2)\"', 'Mirpur1/ kollanpur/ Agargoan/ Shewrapara/kazipara/ Mirpur-2, Mirpur West-6,7,10,11,12/ Mirpur DOSH', 'Based on west side of rokeya sharani main road', 1, 1, NULL, NULL, '2019-08-17 12:27:51', '2019-09-01 08:43:51'),
(6, 's5', '5', 'user', 'Mr. Sharif Bhuyain', '01909431115', 'D2D (Bashanteck) Mr. Sharif - 01909431115', 'Deliveryman', '\"D2D (Bashanteck)\"', 'Mohakhali DOSH/ Dhaka Cantonment/ Mirpur Road East, [Mirpur-14,10,11,12,13] East Kafrul/ Bashanteck/ Matikata/ Ibrahimpur/ Kochukhet', 'Based on east side of rokeya sharani main road', 1, 1, NULL, NULL, '2019-08-17 12:30:34', '2019-09-01 08:44:14'),
(7, 's0', '0', 'user', 'Mr. Shamim', '01772565410', 'NR TRADING (Uttara) Mr. Shamim - 01772565410', 'Deliveryman', '\"NR Trading (Uttara)\"', 'Khilkhet/ Nikunja/ Uttara/ Dokhinkhan/ Kawla', 'Based on khilkhet to Uttara ', 1, 1, NULL, NULL, '2019-08-17 12:34:08', '2019-09-01 08:44:40'),
(8, 'k9', '9', 'user', 'Mr. Khalidur Rahman', '01913304539', 'DHAKA ASSOCIATE (Badda) Mr. Khalid - 01913304539', 'Deliveryman', '\"Dhaka Associate (Badda)\"', 'Bashundhara R.A/ Kuril/ Baridhara/ Gulshan/ Banani/ Mohakhali/ Badda/ Banasree', 'Based on east & west side of  kuril to badda main road', 1, 1, NULL, NULL, '2019-08-17 12:35:59', '2019-09-01 08:45:01'),
(9, 's6', '6', 'user', 'Mr. Shamrat', '01753021556', 'ST-1 (Baily Road) Mr. Shamrat - 01753021556', 'Deliveryman', '\"ST-1 (Baily Road)\"', 'Rampura/ Mogbazar/ Malibag/ Ramna/ Kakrail/Eskaton/ Palton/ Fakirapul/ Motijheel', 'Based on middle side of rampura to motijheel main road', 1, 1, NULL, NULL, '2019-08-17 12:57:32', '2019-09-01 08:45:36'),
(10, 'c8', '8', 'user', 'Mr. Shubho D. Costa', '01948215448', 'ELITE ENTERPRISE (Khilgoan) Mr. Shubho - 01948215448', 'Deliveryman', '\"Elite Enterprise (Khilgoan)\"', 'Khilgaon/ Bashabo/ Mugda/ Manda/ Komlapur', 'Based on khilgaon to komlapur road', 1, 1, NULL, NULL, '2019-08-17 12:59:56', '2019-09-01 08:46:00'),
(11, 'm0', '0', 'user', 'Mr. Masud', '01913518940', 'WARI (Total Traders) Mr. Masud - 01913518940', 'Deliveryman', '\"Total Traders (Wari)\"', 'Wari/ Bongshal/ Gandariya/ Narinda/ Jatrabari/ Demra', 'Based on south-east side of old dhaka', 1, 1, NULL, NULL, '2019-08-17 13:01:55', '2019-09-01 08:46:18'),
(12, 's8', '8', 'user', 'Md. Saddam Hossain', '01827095608', 'DEPOT-2 (Panthopath) Mr. Saddam - 01827095608', 'Deliveryman', 'DEPOT-2 (Panthopath)', 'Green Road/ Elephent Road/ Poribag/ West Dhanmondi/ Hatirpol/ Monipuri Para/ Tejgoan', 'Based on east side of mirpur main road', 3, 1, NULL, NULL, '2019-08-21 13:28:17', '2019-08-29 12:26:51'),
(13, 'm4', '4', 'user', 'Mr. Mohidul Kamal', '01710527124', 'Roaster Basics ', 'Delivery Agent', 'Roaster Basics ', 'Roaster Basics ', 'Roaster Basics ', 3, 1, NULL, NULL, '2019-09-18 05:03:11', '2019-09-21 09:31:45'),
(14, 'b9', '9', 'user', 'Mr. Bulbul Ahmed', '01933545209', 'DEPOT-3 (Panthopath) Mr. Bulbul Ahmed-01933545209', 'Delivery Agent', 'DEPOT-3 (Panthopath)', 'Green Road/ Elephent Road/ Poribag/ West Dhanmondi/ Hatirpol/ Monipuri Para/ Tejgoan', 'Based on east side of mirpur main road', 3, 1, NULL, NULL, '2019-10-03 06:07:47', '2019-10-03 12:56:24'),
(15, 'shawon', '1753131319', 'admin', 'Mr. Shawon ', '01753131319', '01753131319', 'Supervisor', 'Dhaka South', 'Dhaka South', 'Supervisor ', 3, 3, NULL, NULL, '2019-10-10 04:28:27', '2019-10-23 12:45:37'),
(16, 'a1', '1', 'admin', 'Mr. Abir', '01924264621', '01924264621', 'Supervisor ', 'Dhaka North', 'Dhaka North', 'Supervisor ', 3, 1, NULL, NULL, '2019-10-10 04:29:46', '2019-10-10 15:48:14');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ADD ON', 'Active', 1, NULL, NULL, NULL, '2021-02-11 05:39:41', '2021-02-11 05:39:41'),
(2, 'ASIAN CLASSIC', 'Active', 1, NULL, NULL, NULL, '2021-02-11 05:40:00', '2021-02-11 05:40:00'),
(3, 'BREAKFAST ITEM', 'Active', 1, NULL, NULL, NULL, '2021-02-11 05:40:30', '2021-02-11 05:40:30'),
(4, 'BURGERS', 'Active', 1, NULL, NULL, NULL, '2021-02-11 05:40:52', '2021-02-11 05:40:52'),
(5, 'CHICKEN', 'Active', 1, NULL, NULL, NULL, '2021-02-11 05:41:16', '2021-02-11 05:41:16'),
(6, 'COFFEE', 'Active', 1, NULL, NULL, NULL, '2021-02-11 05:41:31', '2021-02-11 05:41:31'),
(7, 'LATTE', 'Active', 1, NULL, NULL, NULL, '2021-02-11 05:41:57', '2021-02-11 05:41:57'),
(8, 'ICE BLENDED', 'Active', 1, NULL, NULL, NULL, '2021-02-11 05:42:18', '2021-02-11 05:42:18'),
(9, 'ICED', 'Active', 1, NULL, NULL, NULL, '2021-02-11 05:43:03', '2021-02-11 05:43:03'),
(10, 'LEMONADE', 'Active', 1, NULL, NULL, NULL, '2021-02-11 05:44:30', '2021-02-11 05:44:30'),
(11, 'MILK SHAKE', 'Active', 1, NULL, NULL, NULL, '2021-02-11 05:44:57', '2021-02-11 05:44:57'),
(12, 'HOT', 'Active', 1, NULL, NULL, NULL, '2021-02-11 05:45:24', '2021-02-11 05:45:24'),
(13, 'DESSERT', 'Active', 1, NULL, NULL, NULL, '2021-02-11 05:46:01', '2021-02-11 05:46:01'),
(14, 'OFFER MEAL', 'Active', 1, NULL, NULL, NULL, '2021-02-11 05:46:21', '2021-02-11 05:46:21'),
(15, 'PASTA', 'Active', 1, NULL, NULL, NULL, '2021-02-11 05:46:41', '2021-02-11 05:46:41'),
(16, 'PIES', 'Active', 1, NULL, NULL, NULL, '2021-02-11 05:47:10', '2021-02-11 05:47:10'),
(17, 'PIZZA', 'Active', 1, NULL, NULL, NULL, '2021-02-11 05:47:31', '2021-02-11 05:47:31'),
(18, 'PREMIUM', 'Active', 1, NULL, NULL, NULL, '2021-02-11 05:47:48', '2021-02-11 05:47:48'),
(19, 'SALAD / SOUP', 'Active', 1, NULL, NULL, NULL, '2021-02-11 05:48:33', '2021-02-11 05:48:33'),
(20, 'SOFT DRINKS', 'Active', 1, NULL, NULL, NULL, '2021-02-11 05:48:49', '2021-02-11 05:48:49'),
(21, 'STARTER / SIDE ORDER', 'Active', 1, NULL, NULL, NULL, '2021-02-11 05:49:17', '2021-02-11 05:49:17'),
(22, 'WESTERN', 'Active', 1, NULL, NULL, NULL, '2021-02-11 05:50:04', '2021-02-11 05:50:04'),
(23, 'CAKE', 'Active', 1, NULL, NULL, NULL, '2021-02-11 05:50:57', '2021-02-11 05:50:57');

-- --------------------------------------------------------

--
-- Table structure for table `crms`
--

CREATE TABLE `crms` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `agent` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `customer_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `division_id` int(10) UNSIGNED DEFAULT NULL,
  `district_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_query` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_detail` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_order` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_order` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `query_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_remarks` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `camp_in_or_out` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `crms`
--

INSERT INTO `crms` (`id`, `phone_number`, `agent`, `customer_name`, `division_id`, `district_id`, `customer_address`, `customer_email`, `facebook_id`, `customer_query`, `product_detail`, `customer_order`, `create_order`, `payment_method`, `query_type`, `remarks`, `call_remarks`, `camp_in_or_out`, `total_price`, `created_at`, `updated_at`) VALUES
(1, '01758214966', 'Tester', 'mohsin', NULL, 0, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', 'InboundCall', NULL, '2020-06-29 15:11:29', '2020-06-29 15:11:29'),
(2, '01758214966', 'Tester', 'mohsin', NULL, 0, '', '', '', NULL, '[{\"Id\":1,\"Name\":\"Package 1 (Vegetables Packages)\",\"Qty\":3,\"Price\":500,\"Subtotal\":1500},{\"Id\":2,\"Name\":\"Package 2 (Vegetables Packages)\",\"Qty\":\"3\",\"Price\":350,\"Subtotal\":1050}]', '', '', NULL, NULL, '', '', 'InboundCall', 2550.00, '2020-07-02 07:07:36', '2020-07-02 07:07:36'),
(3, '01758214966', 'Tester', 'mohsin', NULL, 0, '', '', '', NULL, '[{\"Id\":1,\"Name\":\"Package 1 (Vegetables Packages)\",\"Qty\":\"2\",\"Price\":500,\"Subtotal\":1000}]', '', '', NULL, NULL, '', '', 'InboundCall', 1000.00, '2020-07-02 08:05:40', '2020-07-02 08:05:40'),
(4, '01758214966', 'Tester', 'mohsin', NULL, 18, 'basundhara dhaka', 'Basundhara', '', NULL, '[]', 'Yes', 'Yes', NULL, NULL, 'details', 'Successful', 'InboundCall', 0.00, '2020-07-02 08:07:23', '2020-07-02 08:07:23'),
(5, '01758214966', 'Tester', 'mohsin', NULL, 18, 'basundhara dhaka', 'Basundhara', '', NULL, '[]', 'Yes', 'Yes', NULL, NULL, 'details', 'Successful', 'InboundCall', 0.00, '2020-07-02 08:08:55', '2020-07-02 08:08:55'),
(6, '01758214966', 'Tester', 'Mohsin', NULL, 18, 'basundhara, dhaka', 'Basundhara', '', NULL, '[]', 'Yes', 'Yes', NULL, NULL, 'details', 'Successful', 'InboundCall', 0.00, '2020-07-02 08:11:11', '2020-07-02 08:11:11'),
(7, '01758214966', 'Tester', 'Mohsin', NULL, 18, 'basundhara, dhaka', 'Basundhara', '', NULL, '[]', 'Yes', 'Yes', NULL, NULL, 'details', 'Successful', 'InboundCall', 0.00, '2020-07-02 08:20:18', '2020-07-02 08:20:18'),
(8, '01758214966', 'Tester', 'Mohsin', NULL, 18, 'basundhara, dhaka', 'Basundhara', 'ins', NULL, '[]', 'Yes', 'Yes', NULL, NULL, 'details', 'Successful', 'OutboundCall', 0.00, '2020-07-02 08:25:48', '2020-07-02 08:25:48'),
(9, '', '', 'dfd', NULL, 45, 'dfd', 'HOT', 'dfd sspbb', NULL, '[{\"Id\":1,\"Name\":\"TARTAR SAUCE\",\"Qty\":\"3\",\"Price\":34.5,\"Subtotal\":103.5},{\"Id\":4,\"Name\":\"BLUEBERRY CHEESE-WHOLE (1.2 KG)\",\"Qty\":\"2\",\"Price\":2990,\"Subtotal\":5980}]', 'No Sugar', 'Regular Sugar', NULL, NULL, 'bbbb', 'No Ice (Chill)', 'OutboundCall', 6083.50, '2021-03-03 08:26:25', '2021-03-03 08:26:25'),
(10, '01873051953', 'cc', 'nnnnn', NULL, 31, 'aaaaad', 'eee', 'ff', 'c q', '[{\"Id\":1,\"Name\":\"TARTAR SAUCE\",\"Qty\":\"2\",\"Price\":34.5,\"Subtotal\":69},{\"Id\":3,\"Name\":\"BLUEBERRY CHEESE-SLICE\",\"Qty\":2,\"Price\":299,\"Subtotal\":598},{\"Id\":4,\"Name\":\"BLUEBERRY CHEESE-WHOLE (1.2 KG)\",\"Qty\":5,\"Price\":2990,\"Subtotal\":14950}]', 'Yes', 'No', 'Cash', 'Order Request', 'rrrr', 'Busy', 'InboundCall', 15617.00, '2021-03-04 11:29:58', '2021-03-04 11:29:58'),
(11, '01873051953', 'cc', 'nnnnn2', NULL, 31, 'aaaaad2', 'eee2', 'ff2', 'c q2', '[]', 'No', 'Yes', 'bKash', 'Price Related', 'rrrr2', 'Successful', 'OutboundCall', 0.00, '2021-03-04 11:34:31', '2021-03-04 11:34:31'),
(12, '01873051953', 'cc', 'nnnnn2', NULL, 12, 'aaaaad2', 'eee2', 'ff2', 'c q2', '[]', 'No', 'Yes', 'bKash', 'Price Related', 'rrrr2', 'Successful', 'InboundCall', 0.00, '2021-03-04 11:34:54', '2021-03-04 11:34:54'),
(13, '', '', 'dfd', NULL, 45, 'dfd', 'HOT', 'dfd sspbb', '', '[{\"Id\":1,\"Name\":\"TARTAR SAUCE\",\"Qty\":\"1\",\"Price\":34.5,\"Subtotal\":34.5},{\"Id\":3,\"Name\":\"BLUEBERRY CHEESE-SLICE\",\"Qty\":\"1\",\"Price\":299,\"Subtotal\":299},{\"Id\":4,\"Name\":\"BLUEBERRY CHEESE-WHOLE (1.2 KG)\",\"Qty\":3,\"Price\":2990,\"Subtotal\":8970}]', '', '', '', '', '', '', 'OutboundCall', 9303.50, '2021-03-07 10:33:20', '2021-03-07 10:33:20'),
(14, '', '', 'dfd', NULL, 45, 'dfd', 'HOT', 'dfd sspbb', '', '[]', '', '', '', '', '', '', 'OutboundCall', 0.00, '2021-03-07 10:34:01', '2021-03-07 10:34:01'),
(15, '01758214967', 'cc', 'Mohsin', NULL, 12, 'Moheshkhali', 'm@g.com', 'n/a', 'buy product', '[{\"Id\":1,\"Name\":\"TARTAR SAUCE\",\"Qty\":\"3\",\"Price\":34.5,\"Subtotal\":103.5},{\"Id\":4,\"Name\":\"BLUEBERRY CHEESE-WHOLE (1.2 KG)\",\"Qty\":\"2\",\"Price\":2990,\"Subtotal\":5980},{\"Id\":3,\"Name\":\"BLUEBERRY CHEESE-SLICE\",\"Qty\":\"5\",\"Price\":299,\"Subtotal\":1495}]', 'Yes', 'Yes', 'Cash', 'Order Request', 'want to buy product', 'Successful', 'InboundCall', 7578.50, '2021-03-21 09:58:19', '2021-03-21 09:58:19');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_statuses`
--

CREATE TABLE `delivery_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `delivery_statuses`
--

INSERT INTO `delivery_statuses` (`id`, `name`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Order confirmed', 'Active', 1, NULL, NULL, NULL, '2019-05-27 02:58:13', '2019-05-27 02:58:13'),
(2, 'Order collected from depot', 'Active', 1, NULL, NULL, NULL, '2019-05-27 02:58:36', '2019-05-27 02:58:36'),
(3, 'On the way for order deliver', 'Active', 1, NULL, NULL, NULL, '2019-05-27 02:58:52', '2019-05-27 02:58:52'),
(4, 'Order delivered (cash payment)', 'Active', 1, NULL, NULL, NULL, '2019-05-27 02:59:04', '2019-05-27 02:59:04'),
(5, 'Order delivered (card payment)', 'Active', 1, NULL, NULL, NULL, '2019-05-27 02:59:19', '2019-05-27 02:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `division_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `division_id`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Barguna', 1, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:37:51', '2018-04-25 10:36:43'),
(2, 'Barishal', 1, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:38:21', '2018-04-25 09:38:21'),
(3, 'Bhola', 1, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:38:59', '2018-04-25 09:38:59'),
(4, 'Jhalokati', 1, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:39:10', '2018-04-25 09:39:10'),
(5, 'Patuakhali', 1, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:39:23', '2018-04-25 09:39:23'),
(6, 'Pirojpur', 1, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:39:36', '2018-04-25 09:39:36'),
(7, 'Bandarban', 2, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:40:48', '2018-04-25 09:40:48'),
(8, 'Brahmanbaria', 2, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:41:02', '2018-04-25 09:41:02'),
(9, 'Chandpur', 2, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:41:13', '2018-04-25 09:41:13'),
(10, 'Chittagong', 2, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:41:34', '2018-04-25 09:41:34'),
(11, 'Comilla', 2, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:42:32', '2018-04-25 09:42:32'),
(12, 'Cox\'s Bazar', 2, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:42:55', '2018-04-25 09:42:55'),
(13, 'Feni', 2, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:43:06', '2018-04-25 09:43:06'),
(14, 'Khagrachari', 2, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:43:17', '2018-04-25 09:43:17'),
(15, 'Lakshmipur', 2, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:43:44', '2018-04-25 09:43:44'),
(16, 'Noakhali', 2, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:43:53', '2018-04-25 09:43:53'),
(17, 'Rangamati', 2, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:44:08', '2018-04-25 09:44:08'),
(18, 'Dhaka', 3, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:05:32', '2018-04-25 10:05:32'),
(19, 'Faridpur', 3, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:05:47', '2018-04-25 10:05:47'),
(20, 'Gazipur', 3, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:05:59', '2018-04-25 10:05:59'),
(21, 'Gopalganj', 3, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:06:56', '2018-04-25 10:06:56'),
(22, 'Kishoreganj', 3, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:07:12', '2018-04-25 10:07:12'),
(23, 'Madaripur', 3, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:07:22', '2018-04-25 10:07:22'),
(24, 'Manikganj', 3, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:07:35', '2018-04-25 10:07:35'),
(25, 'Munshiganj', 3, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:07:47', '2018-04-25 10:07:47'),
(26, 'Narayanganj', 3, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:07:57', '2018-04-25 10:07:57'),
(27, 'Narsingdi', 3, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:08:14', '2018-04-25 10:08:14'),
(28, 'Rajbari', 3, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:08:51', '2018-04-25 10:08:51'),
(29, 'Shariatpur', 3, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:09:01', '2018-04-25 10:09:01'),
(30, 'Tangail', 3, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:09:14', '2018-04-25 10:09:14'),
(31, 'Bagerhat', 4, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:13:06', '2018-04-25 10:13:06'),
(32, 'Chuadanga', 4, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:13:15', '2018-04-25 10:13:15'),
(33, 'Jashore', 4, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:13:23', '2018-04-25 10:13:23'),
(34, 'Jhenaidah', 4, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:13:39', '2018-04-25 10:13:39'),
(35, 'Khulna', 4, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:14:03', '2018-04-25 10:14:03'),
(36, 'Kushtia', 4, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:14:15', '2018-04-25 10:14:15'),
(37, 'Magura', 4, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:14:37', '2018-04-25 10:14:37'),
(38, 'Meherpur', 4, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:14:51', '2018-04-25 10:14:51'),
(39, 'Narail', 4, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:15:08', '2018-04-25 10:15:08'),
(40, 'Satkhira', 4, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:15:25', '2018-04-25 10:15:25'),
(41, 'Jamalpur', 5, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:16:37', '2018-04-25 10:16:37'),
(42, 'Mymensingh', 5, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:17:35', '2018-04-25 10:17:35'),
(43, 'Netrokona', 5, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:17:45', '2018-04-25 10:17:45'),
(44, 'Sherpur', 5, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:17:58', '2018-04-25 10:17:58'),
(45, 'Bagura', 6, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:20:43', '2018-04-25 10:20:43'),
(46, 'Jaipurhat', 6, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:20:56', '2018-04-25 10:20:56'),
(47, 'Naogaon', 6, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:21:07', '2018-04-25 10:21:07'),
(48, 'Natore', 6, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:21:23', '2018-04-25 10:21:23'),
(49, 'Nawabganj', 6, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:21:42', '2018-04-25 10:21:42'),
(50, 'Pabna', 6, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:21:57', '2018-04-25 10:21:57'),
(51, 'Rajshahi', 6, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:22:08', '2018-04-25 10:22:08'),
(52, 'Sirajganj', 6, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:22:32', '2018-04-25 10:22:32'),
(53, 'Dinajpur', 7, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:23:10', '2018-04-25 10:23:10'),
(54, 'Gaibandha', 7, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:23:20', '2018-04-25 10:23:20'),
(55, 'Kurigram', 7, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:23:30', '2018-04-25 10:23:30'),
(56, 'Lalmonirhat', 7, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:23:40', '2018-04-25 10:23:40'),
(57, 'Nilphamari', 7, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:23:51', '2018-04-25 10:23:51'),
(58, 'Panchagarh', 7, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:24:00', '2018-04-25 10:24:00'),
(59, 'Rangpur', 7, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:24:10', '2018-04-25 10:24:10'),
(60, 'Thakurgaon', 7, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:24:23', '2018-04-25 10:24:23'),
(61, 'Habiganj', 8, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:24:51', '2018-04-25 10:24:51'),
(62, 'Moulvibazar', 8, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:25:02', '2018-04-25 10:25:02'),
(63, 'Sunamganj', 8, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:25:13', '2018-04-25 10:25:13'),
(64, 'Sylhet', 8, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:25:22', '2018-04-25 10:25:22');

-- --------------------------------------------------------

--
-- Table structure for table `districts_orig`
--

CREATE TABLE `districts_orig` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `division_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `districts_orig`
--

INSERT INTO `districts_orig` (`id`, `name`, `division_id`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Barguna', 1, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:37:51', '2018-04-25 10:36:43'),
(2, 'Barishal', 1, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:38:21', '2018-04-25 09:38:21'),
(3, 'Bhola', 1, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:38:59', '2018-04-25 09:38:59'),
(4, 'Jhalokati', 1, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:39:10', '2018-04-25 09:39:10'),
(5, 'Patuakhali', 1, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:39:23', '2018-04-25 09:39:23'),
(6, 'Pirojpur', 1, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:39:36', '2018-04-25 09:39:36'),
(7, 'Bandarban', 2, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:40:48', '2018-04-25 09:40:48'),
(8, 'Brahmanbaria', 2, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:41:02', '2018-04-25 09:41:02'),
(9, 'Chandpur', 2, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:41:13', '2018-04-25 09:41:13'),
(10, 'Chittagong', 2, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:41:34', '2018-04-25 09:41:34'),
(11, 'Comilla', 2, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:42:32', '2018-04-25 09:42:32'),
(12, 'Cox\'s Bazar', 2, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:42:55', '2018-04-25 09:42:55'),
(13, 'Feni', 2, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:43:06', '2018-04-25 09:43:06'),
(14, 'Khagrachari', 2, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:43:17', '2018-04-25 09:43:17'),
(15, 'Lakshmipur', 2, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:43:44', '2018-04-25 09:43:44'),
(16, 'Noakhali', 2, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:43:53', '2018-04-25 09:43:53'),
(17, 'Rangamati', 2, NULL, 1, NULL, NULL, NULL, '2018-04-25 09:44:08', '2018-04-25 09:44:08'),
(18, 'Dhaka', 3, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:05:32', '2018-04-25 10:05:32'),
(19, 'Faridpur', 3, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:05:47', '2018-04-25 10:05:47'),
(20, 'Gazipur', 3, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:05:59', '2018-04-25 10:05:59'),
(21, 'Gopalganj', 3, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:06:56', '2018-04-25 10:06:56'),
(22, 'Kishoreganj', 3, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:07:12', '2018-04-25 10:07:12'),
(23, 'Madaripur', 3, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:07:22', '2018-04-25 10:07:22'),
(24, 'Manikganj', 3, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:07:35', '2018-04-25 10:07:35'),
(25, 'Munshiganj', 3, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:07:47', '2018-04-25 10:07:47'),
(26, 'Narayanganj', 3, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:07:57', '2018-04-25 10:07:57'),
(27, 'Narsingdi', 3, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:08:14', '2018-04-25 10:08:14'),
(28, 'Rajbari', 3, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:08:51', '2018-04-25 10:08:51'),
(29, 'Shariatpur', 3, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:09:01', '2018-04-25 10:09:01'),
(30, 'Tangail', 3, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:09:14', '2018-04-25 10:09:14'),
(31, 'Bagerhat', 4, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:13:06', '2018-04-25 10:13:06'),
(32, 'Chuadanga', 4, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:13:15', '2018-04-25 10:13:15'),
(33, 'Jashore', 4, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:13:23', '2018-04-25 10:13:23'),
(34, 'Jhenaidah', 4, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:13:39', '2018-04-25 10:13:39'),
(35, 'Khulna', 4, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:14:03', '2018-04-25 10:14:03'),
(36, 'Kushtia', 4, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:14:15', '2018-04-25 10:14:15'),
(37, 'Magura', 4, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:14:37', '2018-04-25 10:14:37'),
(38, 'Meherpur', 4, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:14:51', '2018-04-25 10:14:51'),
(39, 'Narail', 4, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:15:08', '2018-04-25 10:15:08'),
(40, 'Satkhira', 4, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:15:25', '2018-04-25 10:15:25'),
(41, 'Jamalpur', 5, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:16:37', '2018-04-25 10:16:37'),
(42, 'Mymensingh', 5, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:17:35', '2018-04-25 10:17:35'),
(43, 'Netrokona', 5, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:17:45', '2018-04-25 10:17:45'),
(44, 'Sherpur', 5, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:17:58', '2018-04-25 10:17:58'),
(45, 'Bagura', 6, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:20:43', '2018-04-25 10:20:43'),
(46, 'Jaipurhat', 6, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:20:56', '2018-04-25 10:20:56'),
(47, 'Naogaon', 6, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:21:07', '2018-04-25 10:21:07'),
(48, 'Natore', 6, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:21:23', '2018-04-25 10:21:23'),
(49, 'Nawabganj', 6, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:21:42', '2018-04-25 10:21:42'),
(50, 'Pabna', 6, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:21:57', '2018-04-25 10:21:57'),
(51, 'Rajshahi', 6, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:22:08', '2018-04-25 10:22:08'),
(52, 'Sirajganj', 6, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:22:32', '2018-04-25 10:22:32'),
(53, 'Dinajpur', 7, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:23:10', '2018-04-25 10:23:10'),
(54, 'Gaibandha', 7, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:23:20', '2018-04-25 10:23:20'),
(55, 'Kurigram', 7, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:23:30', '2018-04-25 10:23:30'),
(56, 'Lalmonirhat', 7, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:23:40', '2018-04-25 10:23:40'),
(57, 'Nilphamari', 7, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:23:51', '2018-04-25 10:23:51'),
(58, 'Panchagarh', 7, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:24:00', '2018-04-25 10:24:00'),
(59, 'Rangpur', 7, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:24:10', '2018-04-25 10:24:10'),
(60, 'Thakurgaon', 7, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:24:23', '2018-04-25 10:24:23'),
(61, 'Habiganj', 8, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:24:51', '2018-04-25 10:24:51'),
(62, 'Moulvibazar', 8, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:25:02', '2018-04-25 10:25:02'),
(63, 'Sunamganj', 8, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:25:13', '2018-04-25 10:25:13'),
(64, 'Sylhet', 8, NULL, 1, NULL, NULL, NULL, '2018-04-25 10:25:22', '2018-04-25 10:25:22');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Barishal', NULL, 1, NULL, NULL, NULL, '2018-04-25 07:38:32', '2018-04-25 08:28:47'),
(2, 'Chittagong', NULL, 1, NULL, NULL, NULL, '2018-04-25 08:32:34', '2018-04-25 08:32:34'),
(3, 'Dhaka', NULL, 1, NULL, NULL, NULL, '2018-04-25 08:32:46', '2018-04-25 08:32:46'),
(4, 'Khulna', NULL, 1, NULL, NULL, NULL, '2018-04-25 08:32:57', '2018-04-25 08:32:57'),
(5, 'Mymensingh', NULL, 1, NULL, NULL, NULL, '2018-04-25 08:33:07', '2018-04-25 08:33:07'),
(6, 'Rajshahi', NULL, 1, NULL, NULL, NULL, '2018-04-25 08:33:19', '2018-04-25 08:33:19'),
(7, 'Rangpur', NULL, 1, NULL, NULL, NULL, '2018-04-25 08:33:31', '2018-04-25 08:33:31'),
(8, 'Sylhet', NULL, 1, NULL, NULL, NULL, '2018-04-25 08:33:41', '2018-04-25 08:33:41');

-- --------------------------------------------------------

--
-- Table structure for table `divisions_orig`
--

CREATE TABLE `divisions_orig` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `divisions_orig`
--

INSERT INTO `divisions_orig` (`id`, `name`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Barishal', NULL, 1, NULL, NULL, NULL, '2018-04-25 07:38:32', '2018-04-25 08:28:47'),
(2, 'Chittagong', NULL, 1, NULL, NULL, NULL, '2018-04-25 08:32:34', '2018-04-25 08:32:34'),
(3, 'Dhaka', NULL, 1, NULL, NULL, NULL, '2018-04-25 08:32:46', '2018-04-25 08:32:46'),
(4, 'Khulna', NULL, 1, NULL, NULL, NULL, '2018-04-25 08:32:57', '2018-04-25 08:32:57'),
(5, 'Mymensingh', NULL, 1, NULL, NULL, NULL, '2018-04-25 08:33:07', '2018-04-25 08:33:07'),
(6, 'Rajshahi', NULL, 1, NULL, NULL, NULL, '2018-04-25 08:33:19', '2018-04-25 08:33:19'),
(7, 'Rangpur', NULL, 1, NULL, NULL, NULL, '2018-04-25 08:33:31', '2018-04-25 08:33:31'),
(8, 'Sylhet', NULL, 1, NULL, NULL, NULL, '2018-04-25 08:33:41', '2018-04-25 08:33:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2019_03_30_204300_create_options_table', 2),
('2019_03_30_204316_create_selects_table', 2),
('2019_03_30_204412_create_ticket_types_table', 2),
('2019_03_30_204423_create_ticket_statuses_table', 2),
('2019_03_31_174818_create_tickets_table', 3),
('2019_03_31_183053_create_ticket_details_table', 4),
('2019_04_01_105448_create_warranty_details_table', 5),
('2019_04_02_165052_create_crms_table', 6),
('2019_05_07_113955_create_sms_sends_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `select_id` int(10) UNSIGNED NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `select_id`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Emergency Order', 1, 'Active', 1, NULL, NULL, NULL, '2020-09-08 05:28:47', '2020-09-08 05:28:47'),
(2, 'Cash', 2, 'Active', 1, NULL, NULL, NULL, '2020-09-17 05:17:37', '2020-09-17 05:17:37'),
(3, 'bKash', 2, 'Active', 1, NULL, NULL, NULL, '2020-09-17 05:18:03', '2020-09-17 05:18:03'),
(4, 'Complain', 3, 'Active', 1, 1, NULL, NULL, '2020-09-17 05:27:01', '2021-03-04 10:03:30'),
(5, 'Price Related', 3, 'Active', 1, 1, NULL, NULL, '2020-09-17 05:27:18', '2021-03-04 10:04:18'),
(6, 'Order Request', 3, 'Active', 1, 1, NULL, NULL, '2020-09-17 05:27:34', '2021-03-04 10:04:45'),
(7, 'Others', 3, 'Active', 1, 1, NULL, NULL, '2020-09-17 05:36:23', '2021-03-04 10:05:33'),
(8, 'Yes', 4, 'Active', 1, 1, NULL, NULL, '2020-09-17 05:36:46', '2021-03-04 10:06:04'),
(9, 'No', 4, 'Active', 1, 1, NULL, NULL, '2020-09-17 05:37:16', '2021-03-04 10:06:12'),
(10, 'Successful', 5, 'Active', 1, 1, NULL, NULL, '2020-09-17 05:39:17', '2021-03-04 10:14:13'),
(11, 'Unsuccessful', 5, 'Active', 1, 1, NULL, NULL, '2020-09-17 05:40:12', '2021-03-04 10:14:41'),
(12, 'Busy', 5, 'Active', 1, 1, NULL, NULL, '2020-09-17 05:40:27', '2021-03-04 10:14:51');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticket_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_quantity` int(10) UNSIGNED DEFAULT NULL,
  `product_price` double(8,2) DEFAULT NULL,
  `product_subtotal` double(8,2) DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `ticket_id`, `product_id`, `product_name`, `product_quantity`, `product_price`, `product_subtotal`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Pearl Milk Tea REGULAR', 3, 220.00, 660.00, 'Active', 1, NULL, NULL, NULL, '2020-09-15 07:58:26', '2020-09-15 07:58:26'),
(2, 1, 4, 'Chatime Milk Tea REGULAR', 2, 200.00, 400.00, 'Active', 1, NULL, NULL, NULL, '2020-09-15 07:58:26', '2020-09-15 07:58:26'),
(3, 2, 1, 'Pearl Milk Tea REGULAR', 2, 220.00, 440.00, 'Active', 1, NULL, NULL, NULL, '2020-09-15 09:41:25', '2020-09-15 09:41:25'),
(4, 2, 19, 'Pudding Milk Tea REGULAR', 3, 210.00, 630.00, 'Active', 1, NULL, NULL, NULL, '2020-09-15 09:41:25', '2020-09-15 09:41:25'),
(5, 3, 10, 'Jasmine Green Milk Tea REGULAR', 2, 200.00, 400.00, 'Active', 1, NULL, NULL, NULL, '2020-09-15 11:06:03', '2020-09-15 11:06:03'),
(6, 4, 4, 'Chatime Milk Tea REGULAR', 3, 200.00, 600.00, 'Active', 1, NULL, NULL, NULL, '2020-09-15 11:08:07', '2020-09-15 11:08:07'),
(7, 1, 2, 'Pearl Milk Tea LARGE', 2, 250.00, 500.00, 'Active', 1, NULL, NULL, NULL, '2020-09-16 06:56:35', '2020-09-16 06:56:35'),
(8, 3, 47, 'Mango Green Tea REGULAR', 1, 230.00, 230.00, 'Active', 1, NULL, NULL, NULL, '2020-09-16 13:51:48', '2020-09-16 13:51:48'),
(9, 3, 1, 'Pearl Milk Tea REGULAR', 1, 220.00, 220.00, 'Active', 1, NULL, NULL, NULL, '2020-09-16 13:51:48', '2020-09-16 13:51:48'),
(10, 3, 4, 'Chatime Milk Tea REGULAR', 1, 200.00, 200.00, 'Active', 1, NULL, NULL, NULL, '2020-09-16 13:51:48', '2020-09-16 13:51:48'),
(11, 3, 3, 'Pearl Milk Tea HOT', 2, 220.00, 440.00, 'Active', 1, NULL, NULL, NULL, '2020-09-16 13:51:48', '2020-09-16 13:51:48'),
(12, 3, 2, 'Pearl Milk Tea LARGE', 1, 250.00, 250.00, 'Active', 1, NULL, NULL, NULL, '2020-09-16 13:51:48', '2020-09-16 13:51:48'),
(13, 3, 2, 'Pearl Milk Tea LARGE', 2, 250.00, 500.00, 'Active', 1, NULL, NULL, NULL, '2020-09-16 13:51:48', '2020-09-16 13:51:48'),
(14, 4, 3, 'Pearl Milk Tea HOT', 2, 220.00, 440.00, 'Active', 1, NULL, NULL, NULL, '2020-09-16 14:03:56', '2020-09-16 14:03:56'),
(15, 5, 2, 'Pearl Milk Tea LARGE', 1, 250.00, 250.00, 'Active', 1, NULL, NULL, NULL, '2020-09-16 15:00:41', '2020-09-16 15:00:41'),
(16, 6, 2, 'Pearl Milk Tea LARGE', 2, 250.00, 500.00, 'Active', 1, NULL, NULL, NULL, '2020-09-17 06:09:42', '2020-09-17 06:09:42'),
(17, 6, 47, 'Mango Green Tea REGULAR', 3, 230.00, 690.00, 'Active', 1, NULL, NULL, NULL, '2020-09-17 06:09:42', '2020-09-17 06:09:42'),
(18, 7, 2, 'Pearl Milk Tea LARGE', 2, 250.00, 500.00, 'Active', 1, NULL, NULL, NULL, '2020-09-17 06:23:26', '2020-09-17 06:23:26'),
(19, 7, 47, 'Mango Green Tea REGULAR', 3, 230.00, 690.00, 'Active', 1, NULL, NULL, NULL, '2020-09-17 06:23:26', '2020-09-17 06:23:26'),
(20, 8, 47, 'Mango Green Tea REGULAR', 2, 230.00, 460.00, 'Active', 1, NULL, NULL, NULL, '2020-09-17 07:45:46', '2020-09-17 07:45:46'),
(21, 8, 47, 'Mango Green Tea REGULAR', 3, 230.00, 690.00, 'Active', 1, NULL, NULL, NULL, '2020-09-17 07:45:46', '2020-09-17 07:45:46'),
(22, 9, 1, 'TARTAR SAUCE', 1, 34.50, 34.50, 'Active', 1, NULL, NULL, NULL, '2021-03-09 07:08:35', '2021-03-09 07:08:35'),
(23, 9, 3, 'BLUEBERRY CHEESE-SLICE', 1, 299.00, 299.00, 'Active', 1, NULL, NULL, NULL, '2021-03-09 07:08:35', '2021-03-09 07:08:35'),
(24, 9, 4, 'BLUEBERRY CHEESE-WHOLE (1.2 KG)', 1, 2990.00, 2990.00, 'Active', 1, NULL, NULL, NULL, '2021-03-09 07:08:35', '2021-03-09 07:08:35'),
(25, 10, 1, 'TARTAR SAUCE', 1, 34.50, 34.50, 'Active', 1, NULL, NULL, NULL, '2021-03-11 06:51:15', '2021-03-11 06:51:15'),
(26, 10, 3, 'BLUEBERRY CHEESE-SLICE', 2, 299.00, 598.00, 'Active', 1, NULL, NULL, NULL, '2021-03-11 06:51:15', '2021-03-11 06:51:15'),
(27, 10, 4, 'BLUEBERRY CHEESE-WHOLE (1.2 KG)', 3, 2990.00, 8970.00, 'Active', 1, NULL, NULL, NULL, '2021-03-11 06:51:15', '2021-03-11 06:51:15');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `police_stations`
--

CREATE TABLE `police_stations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `division_id` int(10) UNSIGNED NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `police_stations`
--

INSERT INTO `police_stations` (`id`, `name`, `division_id`, `district_id`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Amtali Police Station', 1, 1, NULL, 1, NULL, NULL, NULL, '2018-07-09 02:49:04', '2018-07-09 02:49:04'),
(2, 'Bamna Police Station', 1, 1, NULL, 1, NULL, NULL, NULL, '2018-07-09 02:52:27', '2018-07-09 02:52:27'),
(3, 'Barguna Police Station', 1, 1, NULL, 1, NULL, NULL, NULL, '2018-07-09 02:52:50', '2018-07-09 02:52:50'),
(4, 'Betagi Police Station', 1, 1, NULL, 1, NULL, NULL, NULL, '2018-07-09 02:53:24', '2018-07-09 02:53:24'),
(5, 'Patharghata Police Station', 1, 1, NULL, 1, NULL, NULL, NULL, '2018-07-09 02:53:57', '2018-07-09 02:53:57'),
(6, 'Taltali Police Station', 1, 1, NULL, 1, NULL, NULL, NULL, '2018-07-09 02:54:24', '2018-07-09 02:54:24'),
(7, 'Airport Police Station (BMP)', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:05:03', '2018-07-09 03:05:03'),
(8, 'Bandar Police Station (BMP)', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:05:38', '2018-07-09 03:05:38'),
(9, 'Kawnia Police Station (BMP)', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:06:57', '2018-07-09 03:06:57'),
(10, 'Kotwali Police Station (BMP)', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:07:28', '2018-07-09 03:07:28'),
(11, 'Agailihara Police Station', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:09:26', '2018-07-09 03:09:26'),
(12, 'Babuganj Police Station', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:10:00', '2018-07-09 03:10:00'),
(13, 'Bakerganj Police Station', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:10:21', '2018-07-09 03:10:21'),
(14, 'Banaripara Police Station', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:12:15', '2018-07-09 03:12:15'),
(15, 'Gouranadi Police Station', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:13:08', '2018-07-09 03:13:08'),
(16, 'Hizla Police Station', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:13:44', '2018-07-09 03:13:44'),
(17, 'Kazirhat Police Station', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:14:20', '2018-07-09 03:14:20'),
(18, 'Mehediganj Police Station', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:14:41', '2018-07-09 03:14:41'),
(19, 'Muladi Police Station', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:15:03', '2018-07-09 03:15:03'),
(20, 'Uzirpur Police Station', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:15:25', '2018-07-09 03:15:25'),
(21, 'Bhola Police Station', 1, 3, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:21:05', '2018-07-09 03:21:05'),
(22, 'Burhanuddin Police Station', 1, 3, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:21:30', '2018-07-09 03:21:30'),
(23, 'Charfassion Police Station', 1, 3, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:21:48', '2018-07-09 03:21:48'),
(24, 'Daulatkhan Police Station', 1, 3, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:22:23', '2018-07-09 03:22:23'),
(25, 'Lalmohan Police Station', 1, 3, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:23:07', '2018-07-09 03:23:07'),
(26, 'Monpura Police Station', 1, 3, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:23:24', '2018-07-09 03:23:24'),
(27, 'Shashi Bhushan Police Station', 1, 3, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:23:54', '2018-07-09 03:23:54'),
(28, 'South Aaicha Police Station', 1, 3, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:24:15', '2018-07-09 03:24:15'),
(29, 'Tazumuddin Police Station', 1, 3, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:24:39', '2018-07-09 03:24:39'),
(30, 'Jhalokati Police Station', 1, 4, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:33:35', '2018-07-09 03:33:35'),
(31, 'Kathalia Police Station', 1, 4, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:33:56', '2018-07-09 03:33:56'),
(32, 'Nalchity Police Station', 1, 4, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:34:24', '2018-07-09 03:34:24'),
(33, 'Rajapur Police Station', 1, 4, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:35:01', '2018-07-09 03:35:01'),
(34, 'Bauphal Police Station', 1, 5, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:38:11', '2018-07-09 03:38:11'),
(35, 'Dashmina Police Station', 1, 5, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:38:38', '2018-07-09 03:38:38'),
(36, 'Dumki Police Station', 1, 5, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:39:14', '2018-07-09 03:39:14'),
(37, 'Galachipa  Police Station', 1, 5, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:39:47', '2018-07-09 03:39:47'),
(38, 'Kalapara Police Station', 1, 5, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:40:21', '2018-07-09 03:40:21'),
(39, 'Mirzaganj Police Station', 1, 5, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:40:59', '2018-07-09 03:40:59'),
(40, 'Mohipur Police Station', 1, 5, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:41:18', '2018-07-09 03:41:18'),
(41, 'Patuakhali Police Station', 1, 5, NULL, 1, 1, NULL, NULL, '2018-07-09 03:41:34', '2018-07-09 03:42:20'),
(42, 'Rangabali Police Station', 1, 5, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:42:56', '2018-07-09 03:42:56'),
(43, 'Bhandaria Police Station', 1, 6, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:48:31', '2018-07-09 03:48:31'),
(44, 'Indurkandi Police Station', 1, 6, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:48:48', '2018-07-09 03:48:48'),
(45, 'Kawkhali Police Station', 1, 6, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:49:43', '2018-07-09 03:49:43'),
(46, 'Matbaria Police Station', 1, 6, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:50:09', '2018-07-09 03:50:09'),
(47, 'Nazirpur Police Station', 1, 6, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:50:32', '2018-07-09 03:50:32'),
(48, 'Nesarabad Police Station', 1, 6, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:50:53', '2018-07-09 03:50:53'),
(49, 'Pirojpur Police Station', 1, 6, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:51:19', '2018-07-09 03:51:19'),
(50, 'Alikadam Police Station', 2, 7, NULL, 1, 1, NULL, NULL, '2018-07-09 05:53:57', '2018-07-09 05:54:57'),
(51, 'Lama police station', 2, 7, NULL, 1, NULL, NULL, NULL, '2018-07-09 05:54:34', '2018-07-09 05:54:34'),
(52, 'Naikhongchhari Police Station', 2, 7, NULL, 1, NULL, NULL, NULL, '2018-07-09 05:55:35', '2018-07-09 05:55:35'),
(53, 'Royanchari Police Station', 2, 7, NULL, 1, NULL, NULL, NULL, '2018-07-09 05:56:13', '2018-07-09 05:56:13'),
(54, 'Ruma Police Station', 2, 7, NULL, 1, NULL, NULL, NULL, '2018-07-09 05:57:07', '2018-07-09 05:57:07'),
(55, 'Sadar Police Station, Bandarban', 2, 7, NULL, 1, NULL, NULL, NULL, '2018-07-09 05:58:07', '2018-07-09 05:58:07'),
(56, 'Thanchi Police Station', 2, 7, NULL, 1, NULL, NULL, NULL, '2018-07-09 05:58:58', '2018-07-09 05:58:58'),
(57, 'Akhaura Police Station', 2, 8, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:02:30', '2018-07-09 06:02:30'),
(58, 'Ashuganj Police Station', 2, 8, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:02:59', '2018-07-09 06:02:59'),
(59, 'Bancharampur Police Station', 2, 8, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:03:20', '2018-07-09 06:03:20'),
(60, 'Bijoynagar Police Station', 2, 8, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:04:07', '2018-07-09 06:04:07'),
(61, 'Brahmanbaria Police Station', 2, 8, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:05:26', '2018-07-09 06:05:26'),
(62, 'Kasba Police Station', 2, 8, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:05:53', '2018-07-09 06:05:53'),
(63, 'Nabinagar Police Station', 2, 8, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:06:46', '2018-07-09 06:06:46'),
(64, 'Nasirnagar Police Station', 2, 8, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:07:13', '2018-07-09 06:07:13'),
(65, 'Sarail Police Station', 2, 8, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:07:31', '2018-07-09 06:07:31'),
(66, 'Chandpur Police Station', 2, 9, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:12:23', '2018-07-09 06:12:23'),
(67, 'Faridganj Police Station', 2, 9, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:12:49', '2018-07-09 06:12:49'),
(68, 'Haimchar Police Station', 2, 9, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:13:36', '2018-07-09 06:13:36'),
(69, 'Hajiganj Police Station', 2, 9, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:14:00', '2018-07-09 06:14:00'),
(70, 'Kachua Police Station, Chandpur', 2, 9, NULL, 1, 1, NULL, NULL, '2018-07-09 06:14:42', '2018-07-16 04:25:40'),
(71, 'Matlab (North) Police Station', 2, 9, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:15:17', '2018-07-09 06:15:17'),
(72, 'Matlab South Police Station', 2, 9, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:15:35', '2018-07-09 06:15:35'),
(73, 'Shahrasti Police Station', 2, 9, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:16:01', '2018-07-09 06:16:01'),
(74, 'Akbar Shah Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:21:03', '2018-07-09 06:21:03'),
(75, 'Baijid Bostami Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:21:38', '2018-07-09 06:21:38'),
(76, 'Bakuali Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:22:14', '2018-07-09 06:22:14'),
(77, 'Bandar  Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:22:56', '2018-07-09 06:22:56'),
(78, 'Chakbazar Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:23:26', '2018-07-09 06:23:26'),
(79, 'Chandgaon Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:23:55', '2018-07-09 06:23:55'),
(80, 'Double Moorning Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:24:29', '2018-07-09 06:24:29'),
(81, 'EPZ Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:24:54', '2018-07-09 06:24:54'),
(82, 'Halishahar Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:25:31', '2018-07-09 06:25:31'),
(83, 'Karnaphuli Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:26:01', '2018-07-09 06:26:01'),
(84, 'Khulsi Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:26:35', '2018-07-09 06:26:35'),
(85, 'Kotwali Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:27:04', '2018-07-09 06:27:04'),
(86, 'Pahartoli Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:27:24', '2018-07-09 06:27:24'),
(87, 'Panchlaish Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:27:55', '2018-07-09 06:27:55'),
(88, 'Potenga Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:28:30', '2018-07-09 06:28:30'),
(89, 'Sadarghat Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:28:56', '2018-07-09 06:28:56'),
(90, 'Anowara Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:30:53', '2018-07-09 06:30:53'),
(91, 'Banshkhali Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:31:07', '2018-07-09 06:31:07'),
(92, 'Boalkhali Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:31:24', '2018-07-09 06:31:24'),
(93, 'Chandanaish Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:31:37', '2018-07-09 06:31:37'),
(94, 'Fatikchhari Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:32:33', '2018-07-09 06:32:33'),
(95, 'Hathazari Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:32:46', '2018-07-09 06:32:46'),
(96, 'Lohagara Police Station, Chittagong', 2, 10, NULL, 1, 1, NULL, NULL, '2018-07-09 06:33:26', '2018-07-16 06:04:01'),
(97, 'Mirsarai Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:37:13', '2018-07-09 06:37:13'),
(98, 'Patiya Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:37:38', '2018-07-09 06:37:38'),
(99, 'Rangunia Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:38:00', '2018-07-09 06:38:00'),
(100, 'Raujan Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:47:24', '2018-07-09 06:47:24'),
(101, 'Sandwip Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:47:38', '2018-07-09 06:47:38'),
(102, 'Satkania Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:48:11', '2018-07-09 06:48:11'),
(103, 'Sitakunda Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:48:35', '2018-07-09 06:48:35'),
(104, 'Vujpur Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:48:54', '2018-07-09 06:48:54'),
(105, 'Zorargonj Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:49:10', '2018-07-09 06:49:10'),
(106, 'Bangora Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:24:10', '2018-07-15 02:24:10'),
(107, 'Barura Police Station', 2, 11, NULL, 1, 1, NULL, NULL, '2018-07-15 02:25:49', '2018-08-11 14:03:42'),
(108, 'Brahmanpara Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:28:10', '2018-07-15 02:28:10'),
(109, 'Burichong Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:28:53', '2018-07-15 02:28:53'),
(110, 'Chandina Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:29:11', '2018-07-15 02:29:11'),
(111, 'Chouddagram Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:29:49', '2018-07-15 02:29:49'),
(112, 'Daudkandi Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:30:18', '2018-07-15 02:30:18'),
(113, 'Debidwar Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:30:46', '2018-07-15 02:30:46'),
(114, 'Homna Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:31:12', '2018-07-15 02:31:12'),
(115, 'Kotwali Police Station, Comilla', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:31:55', '2018-07-15 02:31:55'),
(116, 'Laksham Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:32:20', '2018-07-15 02:32:20'),
(117, 'Meghna Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:32:38', '2018-07-15 02:32:38'),
(118, 'Mohongonj Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:32:55', '2018-07-15 02:32:55'),
(119, 'Muradnagar Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:33:17', '2018-07-15 02:33:17'),
(120, 'Nangalkot Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:33:42', '2018-07-15 02:33:42'),
(121, 'Sadar South Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:34:06', '2018-07-15 02:34:06'),
(122, 'Titas Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:34:25', '2018-07-15 02:34:25'),
(123, 'Chakoria Police Station', 2, 12, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:38:45', '2018-07-15 02:38:45'),
(124, 'Cox\'s Bazar Police Station', 2, 12, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:39:30', '2018-07-15 02:39:30'),
(125, 'Kutubdia Police Station', 2, 12, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:39:53', '2018-07-15 02:39:53'),
(126, 'Moheskhali Police Station', 2, 12, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:40:24', '2018-07-15 02:40:24'),
(127, 'Pekua Police Station', 2, 12, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:40:45', '2018-07-15 02:40:45'),
(128, 'Ramu Police Station', 2, 12, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:41:15', '2018-07-15 02:41:15'),
(129, 'Teknaf Police Station', 2, 12, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:41:33', '2018-07-15 02:41:33'),
(130, 'Ukhiya Police Station', 2, 12, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:41:54', '2018-07-15 02:41:54'),
(131, 'Chhagalnaiya Police Station', 2, 13, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:45:40', '2018-07-15 02:45:40'),
(132, 'Daganbhuiyan Police Station', 2, 13, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:46:04', '2018-07-15 02:46:04'),
(133, 'Feni Police Station', 2, 13, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:46:26', '2018-07-15 02:46:26'),
(134, 'Fulgazi Police Station', 2, 13, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:46:45', '2018-07-15 02:46:45'),
(135, 'Porshuram Police Station', 2, 13, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:49:47', '2018-07-15 02:49:47'),
(136, 'Sonagazi Police Station', 2, 13, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:50:12', '2018-07-15 02:50:12'),
(137, 'Dighinala Police Station', 2, 14, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:08:07', '2018-07-15 03:08:07'),
(138, 'Gulimara Police Station', 2, 14, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:08:45', '2018-07-15 03:08:45'),
(139, 'Khagrachari Police Station', 2, 14, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:09:07', '2018-07-15 03:09:07'),
(140, 'Laxmichari Police Station', 2, 14, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:09:42', '2018-07-15 03:09:42'),
(141, 'Mahalchari Police Station', 2, 14, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:10:05', '2018-07-15 03:10:05'),
(142, 'Manikchari Police Station', 2, 14, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:10:40', '2018-07-15 03:10:40'),
(143, 'Matiranga Police Station', 2, 14, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:11:06', '2018-07-15 03:11:06'),
(144, 'Panchari Police Station', 2, 14, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:11:37', '2018-07-15 03:11:37'),
(145, 'Ramgarh Police Station', 2, 14, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:12:03', '2018-07-15 03:12:03'),
(146, 'Chandraganj Police Station', 2, 15, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:21:11', '2018-07-15 03:21:11'),
(147, 'Kamalnagar Police Station', 2, 15, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:21:37', '2018-07-15 03:21:37'),
(148, 'Lakshmipur Police Station', 2, 15, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:22:05', '2018-07-15 03:22:05'),
(149, 'Raipur Police Station', 2, 15, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:24:04', '2018-07-15 03:24:04'),
(150, 'Ramganj Police Station', 2, 15, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:24:38', '2018-07-15 03:24:38'),
(151, 'Ramgati Police Station', 2, 15, NULL, 1, 1, NULL, NULL, '2018-07-15 03:25:41', '2018-07-15 03:35:09'),
(152, 'Begumganj Police Station', 2, 16, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:36:46', '2018-07-15 03:36:46'),
(153, 'Char Rajibpur Police Station', 2, 16, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:37:09', '2018-07-15 03:37:09'),
(154, 'Chatkhil Police Station', 2, 16, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:37:35', '2018-07-15 03:37:35'),
(155, 'Companiganj Police Station, Noakhali', 2, 16, NULL, 1, 1, NULL, NULL, '2018-07-15 03:37:59', '2018-07-17 06:07:07'),
(156, 'Hatiya Police Station', 2, 16, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:38:19', '2018-07-15 03:38:19'),
(157, 'Kabirhat Police Station', 2, 16, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:38:49', '2018-07-15 03:38:49'),
(158, 'Senbagh Police Station', 2, 16, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:39:15', '2018-07-15 03:39:15'),
(159, 'Sonaimuri Police Station', 2, 16, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:39:39', '2018-07-15 03:39:39'),
(160, 'Subarna Char Police Station', 2, 16, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:39:54', '2018-07-15 03:39:54'),
(161, 'Sudharam Police Station', 2, 16, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:40:13', '2018-07-15 03:40:13'),
(162, 'Baghaichari Police Station', 2, 17, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:43:37', '2018-07-15 03:43:37'),
(163, 'Barkal Police Station', 2, 17, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:44:04', '2018-07-15 03:44:04'),
(164, 'Belaichhari Police Station', 2, 17, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:44:28', '2018-07-15 03:44:28'),
(165, 'Chandroghona Police Station', 2, 17, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:45:00', '2018-07-15 03:45:00'),
(166, 'Juraichari Police Station', 2, 17, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:45:20', '2018-07-15 03:45:20'),
(167, 'Kaptai Police Station', 2, 17, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:45:43', '2018-07-15 03:45:43'),
(168, 'Kaukhali Police Station', 2, 17, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:46:09', '2018-07-15 03:46:09'),
(169, 'Kotwali Police Station, Rangamati', 2, 17, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:46:52', '2018-07-15 03:46:52'),
(170, 'Longadu Police Station', 2, 17, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:47:15', '2018-07-15 03:47:15'),
(171, 'Naniarchar Police Station', 2, 17, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:47:36', '2018-07-15 03:47:36'),
(172, 'Rajasthali Police Station', 2, 17, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:47:58', '2018-07-15 03:47:58'),
(173, 'Sajek Police Station', 2, 17, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:48:20', '2018-07-15 03:48:20'),
(174, 'Adabor Police Station (DMP)', 3, 18, NULL, 1, 1, NULL, NULL, '2018-07-15 03:59:30', '2018-07-15 04:00:24'),
(175, 'Airport Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:00:58', '2018-07-15 04:00:58'),
(176, 'Badda Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:01:43', '2018-07-15 04:01:43'),
(177, 'Banani Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:02:12', '2018-07-15 04:02:12'),
(178, 'Bangshal Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:02:50', '2018-07-15 04:02:50'),
(179, 'Cantonment Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:03:25', '2018-07-15 04:03:25'),
(180, 'Chak Bazar Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:03:49', '2018-07-15 04:03:49'),
(181, 'Darus Salam Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:04:28', '2018-07-15 04:04:28'),
(182, 'Daskhinkhan Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:05:01', '2018-07-15 04:05:01'),
(183, 'Demra Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:05:28', '2018-07-15 04:05:28'),
(184, 'Dhanmondi  Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:05:59', '2018-07-15 04:05:59'),
(185, 'Gendaria Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:06:24', '2018-07-15 04:06:24'),
(186, 'Gulshan Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:07:08', '2018-07-15 04:07:08'),
(187, 'Hazaribag  Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:07:35', '2018-07-15 04:07:35'),
(188, 'Jatrabari Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:08:00', '2018-07-15 04:08:00'),
(189, 'Kadomtoli Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:08:30', '2018-07-15 04:08:30'),
(190, 'Kafrul Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:08:56', '2018-07-15 04:08:56'),
(191, 'Kalabagan Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:09:26', '2018-07-15 04:09:26'),
(192, 'Kamrangirchar Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:10:04', '2018-07-15 04:10:04'),
(193, 'Khilgaon Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:10:28', '2018-07-15 04:10:28'),
(194, 'Khilkhet Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:10:59', '2018-07-15 04:10:59'),
(195, 'Kotwali Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:11:25', '2018-07-15 04:11:25'),
(196, 'Lalbag Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:12:04', '2018-07-15 04:12:04'),
(197, 'Mirpur Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:12:25', '2018-07-15 04:12:25'),
(198, 'Mohammadpur Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:13:03', '2018-07-15 04:13:03'),
(199, 'Motijheel Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:13:36', '2018-07-15 04:13:36'),
(200, 'Mugda Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:13:59', '2018-07-15 04:13:59'),
(201, 'New Market Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:14:26', '2018-07-15 04:14:26'),
(202, 'Pallabi Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:14:48', '2018-07-15 04:14:48'),
(203, 'Paltan Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:15:21', '2018-07-15 04:15:21'),
(204, 'Ramna Model Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:15:51', '2018-07-15 04:15:51'),
(205, 'Rampura  Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:16:32', '2018-07-15 04:16:32'),
(206, 'Rupnagar Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:17:01', '2018-07-15 04:17:01'),
(207, 'Sabujbag Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:17:39', '2018-07-15 04:17:39'),
(208, 'Shah Ali Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:18:17', '2018-07-15 04:18:17'),
(209, 'Shahbag  Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:18:48', '2018-07-15 04:18:48'),
(210, 'Shahjahanpur Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:19:22', '2018-07-15 04:19:22'),
(211, 'Shampur Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:19:46', '2018-07-15 04:19:46'),
(212, 'Sher-e-Bangla Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:20:21', '2018-07-15 04:20:21'),
(213, 'Sutrapur  Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:20:51', '2018-07-15 04:20:51'),
(214, 'Tejgaon I/A Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:21:22', '2018-07-15 04:21:22'),
(215, 'Tejgaon Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:21:54', '2018-07-15 04:21:54'),
(216, 'Turag Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:23:02', '2018-07-15 04:23:02'),
(217, 'Uttara (West) Police Station (DMP)', 3, 18, NULL, 1, 1, NULL, NULL, '2018-07-15 04:23:24', '2018-07-15 04:24:08'),
(218, 'Uttara Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:23:50', '2018-07-15 04:23:50'),
(219, 'Uttarkhan Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:24:54', '2018-07-15 04:24:54'),
(220, 'Vasantek Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:25:18', '2018-07-15 04:25:18'),
(221, 'Vatara Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:26:12', '2018-07-15 04:26:12'),
(222, 'Wari Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:26:48', '2018-07-15 04:26:48'),
(223, 'Ashulia Police Station', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:34:11', '2018-07-15 04:34:11'),
(224, 'Dhamrai Police Station', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:34:25', '2018-07-15 04:34:25'),
(225, 'Dohar Police Station', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:34:41', '2018-07-15 04:34:41'),
(226, 'Keraniganj Model Police Station', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:35:05', '2018-07-15 04:35:05'),
(227, 'Nawabganj Model Police Station', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:35:26', '2018-07-15 04:35:26'),
(228, 'Savar Model Police Station', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:35:44', '2018-07-15 04:35:44'),
(229, 'South Keraniganj Police Station', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:36:01', '2018-07-15 04:36:01'),
(230, 'Alfadanga Police Station', 3, 19, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:42:54', '2018-07-15 04:42:54'),
(231, 'Boalmari Police Station', 3, 19, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:43:13', '2018-07-15 04:43:13'),
(232, 'Charbhadrasan Police Station', 3, 19, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:43:53', '2018-07-15 04:43:53'),
(233, 'Kotwali Police Station, Faridpur', 3, 19, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:44:35', '2018-07-15 04:44:35'),
(234, 'Madhukhali Police Station', 3, 19, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:45:04', '2018-07-15 04:45:04'),
(235, 'Nagarkanda Police Station', 3, 19, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:45:34', '2018-07-15 04:45:34'),
(236, 'Sadarpur Police Station', 3, 19, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:46:01', '2018-07-15 04:46:01'),
(237, 'Saltha Police Station', 3, 19, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:46:36', '2018-07-15 04:46:36'),
(238, 'Vanga Police Station', 3, 19, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:46:55', '2018-07-15 04:46:55'),
(239, 'Joydebpur Police Station', 3, 20, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:00:21', '2018-07-15 23:00:21'),
(240, 'Kaliakoir Police Station', 3, 20, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:00:44', '2018-07-15 23:00:44'),
(241, 'Kaliganj Police Station, Gazipur', 3, 20, NULL, 1, 1, NULL, NULL, '2018-07-15 23:01:09', '2018-07-16 04:57:52'),
(242, 'Kapasia Police Station', 3, 20, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:01:33', '2018-07-15 23:01:33'),
(243, 'Sreepur Police Station, Gazipur', 3, 20, NULL, 1, 1, NULL, NULL, '2018-07-15 23:01:55', '2018-07-16 05:54:42'),
(244, 'Tongi Police Station', 3, 20, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:02:41', '2018-07-15 23:02:41'),
(245, 'Gopalganj Police Station', 3, 21, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:09:03', '2018-07-15 23:09:03'),
(246, 'Kasiani Police Station', 3, 21, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:10:29', '2018-07-15 23:10:29'),
(247, 'Kotalipara Police Station', 3, 21, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:11:04', '2018-07-15 23:11:04'),
(248, 'Muksudpur Police Station', 3, 21, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:11:34', '2018-07-15 23:11:34'),
(249, 'Tungipara Police Station', 3, 21, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:12:00', '2018-07-15 23:12:00'),
(250, 'Austagram Police Station', 3, 22, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:17:11', '2018-07-15 23:17:11'),
(251, 'Bajitpur Police Station', 3, 22, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:17:32', '2018-07-15 23:17:32'),
(252, 'Bhairab Police Station', 3, 22, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:18:17', '2018-07-15 23:18:17'),
(253, 'Hosainpur Police Station', 3, 22, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:18:38', '2018-07-15 23:18:38'),
(254, 'Itna Police Station', 3, 22, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:28:41', '2018-07-15 23:28:41'),
(255, 'Karimganj Police Station', 3, 22, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:29:11', '2018-07-15 23:29:11'),
(256, 'Katiadi Police Station', 3, 22, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:29:51', '2018-07-15 23:29:51'),
(257, 'Kishoreganj Police Station, Kishoreganj', 3, 22, NULL, 1, 1, NULL, NULL, '2018-07-15 23:30:30', '2018-07-17 04:45:50'),
(258, 'Kuliarchar Police Station', 3, 22, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:31:50', '2018-07-15 23:31:50'),
(259, 'Mithamoin Police Station', 3, 22, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:32:29', '2018-07-15 23:32:29'),
(260, 'Nikli Police Station', 3, 22, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:32:59', '2018-07-15 23:32:59'),
(261, 'Pakundia Police Station', 3, 22, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:34:32', '2018-07-15 23:34:32'),
(262, 'Tarail Police Station', 3, 22, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:35:16', '2018-07-15 23:35:16'),
(263, 'Dashar Police Station', 3, 23, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:39:56', '2018-07-15 23:39:56'),
(264, 'Kalkini Police Station', 3, 23, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:40:21', '2018-07-15 23:40:21'),
(265, 'Madaripur Police Station', 3, 23, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:40:51', '2018-07-15 23:40:51'),
(266, 'Rajoir Police Station', 3, 23, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:41:18', '2018-07-15 23:41:18'),
(267, 'Shibchar Police Station', 3, 23, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:41:41', '2018-07-15 23:41:41'),
(268, 'Doulatpur Police Station', 3, 24, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:45:27', '2018-07-15 23:45:27'),
(269, 'Ghior Police Station', 3, 24, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:46:00', '2018-07-15 23:46:00'),
(270, 'Harirampur  Police Station', 3, 24, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:46:39', '2018-07-15 23:46:39'),
(271, 'Manikganj Police Station', 3, 24, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:47:06', '2018-07-15 23:47:06'),
(272, 'Saturia Police Station', 3, 24, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:47:42', '2018-07-15 23:47:42'),
(273, 'Shibalaya Police Station', 3, 24, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:48:11', '2018-07-15 23:48:11'),
(274, 'Singair Police Station', 3, 24, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:49:09', '2018-07-15 23:49:09'),
(275, 'Gazaria Police Station', 3, 25, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:02:25', '2018-07-16 03:02:25'),
(276, 'Lohajang Police Station', 3, 25, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:03:07', '2018-07-16 03:03:07'),
(277, 'Munshiganj Police Station', 3, 25, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:04:16', '2018-07-16 03:04:16'),
(278, 'Serajdikhan Police Station', 3, 25, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:04:53', '2018-07-16 03:04:53'),
(279, 'Sreenagar Police Station', 3, 25, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:05:53', '2018-07-16 03:05:53'),
(280, 'Tongibari Police Station', 3, 25, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:06:29', '2018-07-16 03:06:29'),
(281, 'Belabo Police Station', 3, 27, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:09:22', '2018-07-16 03:09:22'),
(282, 'Madhabdi Police Station', 3, 27, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:09:40', '2018-07-16 03:09:40'),
(283, 'Manohardi Police Station', 3, 27, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:09:59', '2018-07-16 03:09:59'),
(284, 'Narsingdi Police Station', 3, 27, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:11:10', '2018-07-16 03:11:10'),
(285, 'Palash Police Station', 3, 27, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:11:38', '2018-07-16 03:11:38'),
(286, 'Raipura Police Station', 3, 27, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:12:13', '2018-07-16 03:12:13'),
(287, 'Shibpur Police Station', 3, 27, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:12:39', '2018-07-16 03:12:39'),
(288, 'Baliakandi Police Station', 3, 28, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:15:28', '2018-07-16 03:15:28'),
(289, 'Goalanda Ghat Police Station', 3, 28, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:15:49', '2018-07-16 03:15:49'),
(290, 'Kalukhali Police Station', 3, 28, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:16:19', '2018-07-16 03:16:19'),
(291, 'Pangsha Police Station', 3, 28, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:16:50', '2018-07-16 03:16:50'),
(292, 'Rajbari Police Station', 3, 28, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:17:10', '2018-07-16 03:17:10'),
(293, 'Bhedarganj Police Station', 3, 29, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:22:07', '2018-07-16 03:22:07'),
(294, 'Damudya Police Station', 3, 29, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:22:51', '2018-07-16 03:22:51'),
(295, 'Goshairhat Police Station', 3, 29, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:23:19', '2018-07-16 03:23:19'),
(296, 'Janjira Police Station', 3, 29, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:23:42', '2018-07-16 03:23:42'),
(297, 'Noria Police Station', 3, 29, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:24:00', '2018-07-16 03:24:00'),
(298, 'Palong Police Station', 3, 29, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:24:26', '2018-07-16 03:24:26'),
(299, 'Sakhipur Police Station, Shariatpur', 3, 29, NULL, 1, 1, NULL, NULL, '2018-07-16 03:24:45', '2018-07-16 03:34:07'),
(300, 'Basail Police Station', 3, 30, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:27:03', '2018-07-16 03:27:03'),
(301, 'Bhuapur Police Station', 3, 30, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:27:26', '2018-07-16 03:27:26'),
(302, 'Delduar Police Staton', 3, 30, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:27:57', '2018-07-16 03:27:57'),
(303, 'Dhanbari Police Station', 3, 30, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:28:35', '2018-07-16 03:28:35'),
(304, 'Ghatail Police Station', 3, 30, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:28:54', '2018-07-16 03:28:54'),
(305, 'Gopalpur Police Station', 3, 30, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:29:20', '2018-07-16 03:29:20'),
(306, 'Jamuna Bridge Police Station', 3, 30, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:29:39', '2018-07-16 03:29:39'),
(307, 'Kalihati Police Station', 3, 30, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:29:57', '2018-07-16 03:29:57'),
(308, 'Madhupur Police Station', 3, 30, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:30:23', '2018-07-16 03:30:23'),
(309, 'Mirzapur Police Station', 3, 30, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:30:54', '2018-07-16 03:30:54'),
(310, 'Nagarpur Police Station', 3, 30, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:32:00', '2018-07-16 03:32:00'),
(311, 'Sakhipur Police Station, Tangail', 3, 30, NULL, 1, 1, NULL, NULL, '2018-07-16 03:35:09', '2018-07-16 03:35:43'),
(312, 'Tangail Police Station', 3, 30, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:36:08', '2018-07-16 03:36:08'),
(313, 'Bagerhat Police Station', 4, 31, NULL, 1, 1, NULL, NULL, '2018-07-16 04:22:14', '2018-07-16 04:23:14'),
(314, 'Chitalmari Police Station', 4, 31, NULL, 1, 1, NULL, NULL, '2018-07-16 04:22:40', '2018-07-16 04:23:29'),
(315, 'Fakirhat Police Station', 4, 31, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:24:21', '2018-07-16 04:24:21'),
(316, 'Kachua Police Station, Bagerhat', 4, 31, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:26:18', '2018-07-16 04:26:18'),
(317, 'Mollahat Police Station', 4, 31, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:26:58', '2018-07-16 04:26:58'),
(318, 'Mongla Police Station', 4, 31, NULL, 1, 1, NULL, NULL, '2018-07-16 04:27:37', '2018-07-16 04:27:47'),
(319, 'Morrelganj Police Station', 4, 31, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:28:19', '2018-07-16 04:28:19'),
(320, 'Rampal Police Station', 4, 31, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:28:50', '2018-07-16 04:28:50'),
(321, 'Sarankhola Police Station', 4, 31, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:29:29', '2018-07-16 04:29:29'),
(322, 'Alamdanga Police Station', 4, 32, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:35:46', '2018-07-16 04:35:46'),
(323, 'Chuadanga Police Station', 4, 32, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:36:13', '2018-07-16 04:36:13'),
(324, 'Damurhuda Police Station', 4, 32, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:36:39', '2018-07-16 04:36:39'),
(325, 'Jiban Nagar Police Station', 4, 32, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:37:26', '2018-07-16 04:37:26'),
(326, 'Abhoynagar Police Station', 4, 33, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:43:01', '2018-07-16 04:43:01'),
(327, 'Bagharpara Police Station', 4, 33, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:43:36', '2018-07-16 04:43:36'),
(328, 'Benapol Police Station', 4, 33, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:44:24', '2018-07-16 04:44:24'),
(329, 'Chaugacha Police Station', 4, 33, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:45:23', '2018-07-16 04:45:23'),
(330, 'Jhikargacha Police Station', 4, 33, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:46:11', '2018-07-16 04:46:11'),
(331, 'Keshabpur Police Station', 4, 33, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:46:50', '2018-07-16 04:46:50'),
(332, 'Kotwali Police Station, Jashore', 4, 33, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:47:56', '2018-07-16 04:47:56'),
(333, 'Manirampur Police Station', 4, 33, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:48:29', '2018-07-16 04:48:29'),
(334, 'Sharsha Police Station', 4, 33, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:48:59', '2018-07-16 04:48:59'),
(335, 'Harinakunda Police Station', 4, 34, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:53:32', '2018-07-16 04:53:32'),
(336, 'Jhenaidah Police Station', 4, 34, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:54:23', '2018-07-16 04:54:23'),
(337, 'Kaliganj Police Station, Jhenaidah', 4, 34, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:57:12', '2018-07-16 04:57:12'),
(338, 'Kotchandpur Police Station', 4, 34, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:00:04', '2018-07-16 05:00:04'),
(339, 'Maheshpur Police Station', 4, 34, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:01:22', '2018-07-16 05:01:22'),
(340, 'Shailkupa Police Station', 4, 34, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:02:00', '2018-07-16 05:02:00'),
(341, 'Arangghata  Police Station (KMP)', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:06:58', '2018-07-16 05:06:58'),
(342, 'Doulatpur Police Station (KMP)', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:07:46', '2018-07-16 05:07:46'),
(343, 'Horintana Police Station (KMP)', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:08:23', '2018-07-16 05:08:23'),
(344, 'Khalishpur Police Station (KMP)', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:09:19', '2018-07-16 05:09:19'),
(345, 'Khan Jahan Ali  Police Station (KMP)', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:09:52', '2018-07-16 05:09:52'),
(346, 'Khulna Police Station (KMP)', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:10:18', '2018-07-16 05:10:18'),
(347, 'Labanchara Police Station (KMP)', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:10:51', '2018-07-16 05:10:51'),
(348, 'Sonadanga Police Station (KMP)', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:11:39', '2018-07-16 05:11:39'),
(349, 'Batiaghata Police Station', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:36:38', '2018-07-16 05:36:38'),
(350, 'Dacope Police Station', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:37:00', '2018-07-16 05:37:00'),
(351, 'Dighalia Police Station', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:37:19', '2018-07-16 05:37:19'),
(352, 'Dumuria Police Station', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:37:40', '2018-07-16 05:37:40'),
(353, 'Koyra Police Station', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:38:06', '2018-07-16 05:38:06'),
(354, 'Paikgacha Police Station', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:38:42', '2018-07-16 05:38:42'),
(355, 'Phultala Police Station', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:39:05', '2018-07-16 05:39:05'),
(356, 'Rupsa Police Station', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:39:46', '2018-07-16 05:39:46'),
(357, 'Terokhada Police Station', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:40:25', '2018-07-16 05:40:25'),
(358, 'Bheramara Police Station', 4, 36, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:43:46', '2018-07-16 05:43:46'),
(359, 'Daulatpur Police Station', 4, 36, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:44:13', '2018-07-16 05:44:13'),
(360, 'Islami University Police Station', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:44:53', '2018-07-16 05:44:53'),
(361, 'Khoksha Police Station', 4, 36, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:45:39', '2018-07-16 05:45:39'),
(362, 'Kumarkhali Police Station', 4, 36, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:46:07', '2018-07-16 05:46:07'),
(363, 'Kushtia Police Station', 4, 36, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:46:31', '2018-07-16 05:46:31'),
(364, 'Mirpur Police Station, Kushtia', 4, 36, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:49:14', '2018-07-16 05:49:14'),
(365, 'Magura Police Station', 4, 37, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:51:14', '2018-07-16 05:51:14'),
(366, 'Mohammadpur Police Station, Magura', 4, 37, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:52:12', '2018-07-16 05:52:12'),
(367, 'Shalikha Police Station', 4, 37, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:52:40', '2018-07-16 05:52:40'),
(368, 'Sreepur Police Station, Magura', 4, 37, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:54:06', '2018-07-16 05:54:06'),
(369, 'Gangni Police Station', 4, 38, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:56:22', '2018-07-16 05:56:22'),
(370, 'Meherpur Police Station', 4, 38, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:57:03', '2018-07-16 05:57:03'),
(371, 'Mujibnagar Police Station', 4, 38, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:57:32', '2018-07-16 05:57:32'),
(372, 'Kalia Police Station', 4, 39, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:59:54', '2018-07-16 05:59:54'),
(373, 'Lohagara Police Station, Narail', 4, 39, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:01:04', '2018-07-16 06:01:04'),
(374, 'Naragathy Police Station', 4, 39, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:02:24', '2018-07-16 06:02:24'),
(375, 'Narail Police Station', 4, 39, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:02:59', '2018-07-16 06:02:59'),
(376, 'Assasuni Police Station', 4, 40, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:31:47', '2018-07-16 06:31:47'),
(377, 'Debhata Police Station', 4, 40, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:32:54', '2018-07-16 06:32:54'),
(378, 'Kalaroa Police Station', 4, 40, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:33:20', '2018-07-16 06:33:20'),
(379, 'Kaliganj Police Station, Satkhira', 4, 40, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:34:27', '2018-07-16 06:34:27'),
(380, 'Patkelghata Police Station', 4, 40, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:35:00', '2018-07-16 06:35:00'),
(381, 'Satkhira Police Station', 4, 40, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:35:29', '2018-07-16 06:35:29'),
(382, 'Shyamnagar Police Station', 4, 40, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:35:59', '2018-07-16 06:35:59'),
(383, 'Tala Police Station', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:36:30', '2018-07-16 06:36:30'),
(384, 'Bahadurabad Police Station', 5, 41, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:45:44', '2018-07-16 06:45:44'),
(385, 'Bakshiganj Police Station', 5, 41, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:46:04', '2018-07-16 06:46:04'),
(386, 'Dewanganj Police Station', 5, 41, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:46:29', '2018-07-16 06:46:29'),
(387, 'Islampur Police Station', 5, 41, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:46:48', '2018-07-16 06:46:48'),
(388, 'Jamalpur Sadar Police Station', 5, 41, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:48:14', '2018-07-16 06:48:14'),
(389, 'Madarganj Police Station', 5, 41, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:48:49', '2018-07-16 06:48:49'),
(390, 'Melandah Police Station', 5, 41, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:51:40', '2018-07-16 06:51:40'),
(391, 'Sarishabari Police Station', 5, 41, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:52:11', '2018-07-16 06:52:11'),
(392, 'Bhaluka Police Station', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 22:56:38', '2018-07-16 22:56:38'),
(393, 'Dhobaura Police Station', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 22:57:13', '2018-07-16 22:57:13'),
(394, 'Fulbari Police Station', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 22:57:43', '2018-07-16 22:57:43'),
(395, 'Gaffargaon Police Station', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 22:58:01', '2018-07-16 22:58:01'),
(396, 'Gauripur Police Station', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 22:58:54', '2018-07-16 22:58:54'),
(397, 'Haluaghat Police Station', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 22:59:25', '2018-07-16 22:59:25'),
(398, 'Ishwarganj Police Station', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 22:59:47', '2018-07-16 22:59:47'),
(399, 'Kotwali Police Station, Mymensingh', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:00:24', '2018-07-16 23:00:24'),
(400, 'Muktagacha Police Station', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:00:52', '2018-07-16 23:00:52'),
(401, 'Nandail Police Station', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:01:32', '2018-07-16 23:01:32'),
(402, 'Pagla Police Station', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:02:29', '2018-07-16 23:02:29'),
(403, 'Phulpur Police Station', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:02:57', '2018-07-16 23:02:57'),
(404, 'Tarakanda Police Station', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:03:16', '2018-07-16 23:03:16'),
(405, 'Trishal Police Station', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:03:38', '2018-07-16 23:03:38'),
(406, 'Atpara Police Station', 5, 43, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:16:32', '2018-07-16 23:16:32'),
(407, 'Barhatta  Police Station', 5, 43, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:16:52', '2018-07-16 23:16:52'),
(408, 'Durgapur Police Station, Netrokona', 5, 43, NULL, 1, 1, NULL, NULL, '2018-07-16 23:17:10', '2018-07-17 00:39:58'),
(409, 'Kalmakanda Police Station', 5, 43, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:17:30', '2018-07-16 23:17:30'),
(410, 'Kendua Police Station', 5, 43, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:18:08', '2018-07-16 23:18:08'),
(411, 'Khaliajuri Police Station', 5, 43, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:19:11', '2018-07-16 23:19:11'),
(412, 'Madan  Police Station', 5, 43, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:19:29', '2018-07-16 23:19:29'),
(413, 'Mohanganj Police Station', 5, 43, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:20:41', '2018-07-16 23:20:41'),
(414, 'Netrokona Sadar Police Station', 5, 43, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:21:06', '2018-07-16 23:21:06'),
(415, 'Purbadhala Police Station', 5, 43, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:21:34', '2018-07-16 23:21:34'),
(416, 'Jhenaigati Police Station', 5, 44, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:23:58', '2018-07-16 23:23:58'),
(417, 'Nakla Police Station', 5, 44, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:24:15', '2018-07-16 23:24:15'),
(418, 'Nalitabari Police Station', 5, 44, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:24:35', '2018-07-16 23:24:35'),
(419, 'Sherpur Sadar Police Station', 5, 44, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:26:21', '2018-07-16 23:26:21'),
(420, 'Sreebordi Police Station', 5, 44, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:27:14', '2018-07-16 23:27:14'),
(421, 'Adamdighi Police Station', 6, 45, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:37:54', '2018-07-16 23:37:54'),
(422, 'Bogra Police Station', 6, 45, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:38:12', '2018-07-16 23:38:12'),
(423, 'Dhunat Police Station', 6, 45, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:38:33', '2018-07-16 23:38:33'),
(424, 'Dhupchanchia Police Station', 6, 45, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:39:12', '2018-07-16 23:39:12'),
(425, 'Gabtali Police Station', 6, 45, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:40:12', '2018-07-16 23:40:12'),
(426, 'Kahaloo Police Station', 6, 45, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:40:41', '2018-07-16 23:40:41'),
(427, 'Nandigram Police Station', 6, 45, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:41:06', '2018-07-16 23:41:06'),
(428, 'Sariakandi Police Station', 6, 45, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:42:11', '2018-07-16 23:42:11'),
(429, 'Shajahanpur Police Station', 6, 45, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:43:09', '2018-07-16 23:43:09'),
(430, 'Sherpur Police Station', 6, 45, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:44:41', '2018-07-16 23:44:41'),
(431, 'Shibganj Police Station, Bagura', 6, 45, NULL, 1, 1, NULL, NULL, '2018-07-16 23:45:02', '2018-07-17 03:51:44'),
(432, 'Sonatola Police Station', 6, 45, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:45:23', '2018-07-16 23:45:23'),
(433, 'Akkelpur Police Station', 6, 46, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:48:26', '2018-07-16 23:48:26'),
(434, 'Joypurhat Police Station', 6, 46, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:48:49', '2018-07-16 23:48:49'),
(435, 'kalai Police Station', 6, 46, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:49:22', '2018-07-16 23:49:22'),
(436, 'Khetlal Police Station', 6, 46, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:49:59', '2018-07-16 23:49:59'),
(437, 'Panchbibi Police Station', 6, 46, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:50:19', '2018-07-16 23:50:19'),
(438, 'Atrai Police Station', 6, 47, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:53:04', '2018-07-16 23:53:04'),
(439, 'Badalgachi Police Station', 6, 47, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:53:57', '2018-07-16 23:53:57');
INSERT INTO `police_stations` (`id`, `name`, `division_id`, `district_id`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(440, 'Dhamoirhat Police Station', 6, 47, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:54:24', '2018-07-16 23:54:24'),
(441, 'Manda Police Station', 6, 47, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:55:25', '2018-07-16 23:55:25'),
(442, 'Mohadevpur Police Station', 6, 47, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:55:50', '2018-07-16 23:55:50'),
(443, 'Naogaon Police Station', 6, 47, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:56:31', '2018-07-16 23:56:31'),
(444, 'Niamatpur Police Station', 6, 47, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:57:04', '2018-07-16 23:57:04'),
(445, 'Patnitala Police Station', 6, 47, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:57:25', '2018-07-16 23:57:25'),
(446, 'Porsha Police Station', 6, 47, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:01:10', '2018-07-17 00:01:10'),
(447, 'Raninagar Police Station', 6, 47, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:01:44', '2018-07-17 00:01:44'),
(448, 'Shapahar Police Station', 6, 47, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:02:30', '2018-07-17 00:02:30'),
(449, 'Bagatipara Police Station', 6, 48, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:04:32', '2018-07-17 00:04:32'),
(450, 'Baraigram Police Station', 6, 48, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:04:54', '2018-07-17 00:04:54'),
(451, 'Gurudaspur Police Station', 6, 48, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:05:47', '2018-07-17 00:05:47'),
(452, 'Lalpur Police Station', 6, 48, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:06:21', '2018-07-17 00:06:21'),
(453, 'Naldanga Police Station', 6, 48, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:07:07', '2018-07-17 00:07:07'),
(454, 'Natore Police Station', 6, 48, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:07:25', '2018-07-17 00:07:25'),
(455, 'Singra Police Station', 6, 48, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:08:01', '2018-07-17 00:08:01'),
(456, 'Aminpur Police Station', 6, 50, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:24:38', '2018-07-17 00:24:38'),
(457, 'Ataikula Police Station', 6, 50, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:25:01', '2018-07-17 00:25:01'),
(458, 'Atgharia Police Station', 6, 50, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:25:30', '2018-07-17 00:25:30'),
(459, 'Bera Police Station', 6, 50, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:26:01', '2018-07-17 00:26:01'),
(460, 'Bhangura Police Station', 6, 50, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:26:29', '2018-07-17 00:26:29'),
(461, 'Chatmohar Police Station', 6, 50, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:26:52', '2018-07-17 00:26:52'),
(462, 'Faridpur Police Station', 6, 50, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:27:30', '2018-07-17 00:27:30'),
(463, 'Ishwardi Police Station', 6, 50, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:27:50', '2018-07-17 00:27:50'),
(464, 'Pabna Police Station', 6, 50, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:28:05', '2018-07-17 00:28:05'),
(465, 'Santhia Police Station', 6, 50, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:28:49', '2018-07-17 00:28:49'),
(466, 'Sujanagar Police Station', 6, 50, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:29:15', '2018-07-17 00:29:15'),
(467, 'Boalia Police Station (RMP)', 6, 51, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:31:44', '2018-07-17 00:31:44'),
(468, 'Motihar Police Station (RMP)', 6, 51, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:32:10', '2018-07-17 00:32:10'),
(469, 'Rajpara Police Station (RMP)', 6, 51, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:32:37', '2018-07-17 00:32:37'),
(470, 'Shah Mokhdum Police Station (RMP)', 6, 51, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:33:09', '2018-07-17 00:33:09'),
(471, 'Bagha Police Station', 6, 51, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:37:05', '2018-07-17 00:37:05'),
(472, 'Baghmara Police Station', 6, 51, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:37:50', '2018-07-17 00:37:50'),
(473, 'Charghat Police Station', 6, 51, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:38:38', '2018-07-17 00:38:38'),
(474, 'Durgapur Police Station, Rahshahi', 6, 51, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:41:01', '2018-07-17 00:41:01'),
(475, 'Godagari Police Station', 6, 51, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:41:33', '2018-07-17 00:41:33'),
(476, 'Mohanpur Police Station', 6, 51, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:41:50', '2018-07-17 00:41:50'),
(477, 'Paba Police Station', 6, 51, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:42:25', '2018-07-17 00:42:25'),
(478, 'Puthia Police Station', 6, 51, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:42:40', '2018-07-17 00:42:40'),
(479, 'Tanore Police Station', 6, 51, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:43:12', '2018-07-17 00:43:12'),
(480, 'Belkuchi Police Station', 6, 52, NULL, 1, NULL, NULL, NULL, '2018-07-17 02:58:51', '2018-07-17 02:58:51'),
(481, 'Chowhali Police Station', 6, 52, NULL, 1, NULL, NULL, NULL, '2018-07-17 02:59:20', '2018-07-17 02:59:20'),
(482, 'Enayetpur Police Station', 6, 52, NULL, 1, NULL, NULL, NULL, '2018-07-17 02:59:46', '2018-07-17 02:59:46'),
(483, 'Jamuna Bridge West Police Station', 6, 52, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:06:40', '2018-07-17 03:06:40'),
(484, 'Kamar Khanda Police Station', 6, 52, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:07:16', '2018-07-17 03:07:16'),
(485, 'Kazipur Police Station', 6, 52, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:07:33', '2018-07-17 03:07:33'),
(486, 'Raiganj Police Station', 6, 52, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:08:02', '2018-07-17 03:08:02'),
(487, 'Salanga Police Station', 6, 52, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:08:29', '2018-07-17 03:08:29'),
(488, 'Shahjadpur Police Station', 6, 52, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:08:49', '2018-07-17 03:08:49'),
(489, 'Sirajganj Police Station', 6, 52, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:09:07', '2018-07-17 03:09:07'),
(490, 'Tarash Police Station', 6, 52, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:09:34', '2018-07-17 03:09:34'),
(491, 'Ullahpara Police Station', 6, 52, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:09:53', '2018-07-17 03:09:53'),
(492, 'Bholahat Police Station', 6, 49, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:14:16', '2018-07-17 03:14:16'),
(493, 'Chapai Nawabganj Police Station', 6, 49, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:49:46', '2018-07-17 03:49:46'),
(494, 'Gomastapur Police Station', 6, 49, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:50:17', '2018-07-17 03:50:17'),
(495, 'Nachole Police Station', 6, 49, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:50:51', '2018-07-17 03:50:51'),
(496, 'Shibganj Police Station, Chapai Nawabganj', 6, 49, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:52:22', '2018-07-17 03:52:22'),
(497, 'Biral Police Station', 7, 53, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:06:38', '2018-07-17 04:06:38'),
(498, 'Birampur Police Station', 7, 53, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:07:06', '2018-07-17 04:07:06'),
(499, 'Birganj  Police Station', 7, 53, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:07:23', '2018-07-17 04:07:23'),
(500, 'Bochaganj Police Station', 7, 53, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:07:46', '2018-07-17 04:07:46'),
(501, 'Chirirbandar Police Station', 7, 53, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:08:00', '2018-07-17 04:08:00'),
(502, 'Fulbari  Police Station', 7, 53, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:08:19', '2018-07-17 04:08:19'),
(503, 'Ghoraghat Police Station', 7, 53, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:08:37', '2018-07-17 04:08:37'),
(504, 'Hakimpur Police Station', 7, 53, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:09:03', '2018-07-17 04:09:03'),
(505, 'Kaharol Police Station', 7, 53, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:09:35', '2018-07-17 04:09:35'),
(506, 'Khanshama Police Station', 7, 53, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:10:24', '2018-07-17 04:10:24'),
(507, 'Kotwali Police Station, Dinajpur', 7, 53, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:10:51', '2018-07-17 04:10:51'),
(508, 'Nawabganj Police Station', 7, 53, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:11:50', '2018-07-17 04:11:50'),
(509, 'Parbatipur Police Station', 7, 53, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:12:07', '2018-07-17 04:12:07'),
(510, 'Fulchhari Police Station', 7, 54, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:14:57', '2018-07-17 04:14:57'),
(511, 'Gaibandha Police Station', 7, 54, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:15:13', '2018-07-17 04:15:13'),
(512, 'Gobindaganj Police Station', 7, 54, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:15:28', '2018-07-17 04:15:28'),
(513, 'Palashbari Police Station', 7, 54, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:15:43', '2018-07-17 04:15:43'),
(514, 'Sadullapur Police Station', 7, 54, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:15:58', '2018-07-17 04:15:58'),
(515, 'Shaghata Police Station', 7, 54, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:16:12', '2018-07-17 04:16:12'),
(516, 'Sundarganj Police Station', 7, 54, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:22:50', '2018-07-17 04:22:50'),
(517, 'Bhurungamari Police Station', 7, 55, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:24:42', '2018-07-17 04:24:42'),
(518, 'Charjabbar police station', 7, 55, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:24:56', '2018-07-17 04:24:56'),
(519, 'Chilmari Police Station', 7, 55, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:25:12', '2018-07-17 04:25:12'),
(520, 'Dushmara Police Station', 7, 55, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:25:29', '2018-07-17 04:25:29'),
(521, 'Kochakata Police Station', 7, 55, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:25:47', '2018-07-17 04:25:47'),
(522, 'Kurigram Police Station', 7, 55, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:26:26', '2018-07-17 04:26:26'),
(523, 'Nageswari Police Station', 7, 55, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:26:41', '2018-07-17 04:26:41'),
(524, 'Phulbari Police Station', 7, 55, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:26:51', '2018-07-17 04:26:51'),
(525, 'Rajarhat Police Station', 7, 55, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:27:09', '2018-07-17 04:27:09'),
(526, 'Rowmari Police Station', 7, 55, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:27:24', '2018-07-17 04:27:24'),
(527, 'Ulipur Police Station', 7, 55, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:27:37', '2018-07-17 04:27:37'),
(528, 'Aditmari Police Station', 7, 56, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:29:06', '2018-07-17 04:29:06'),
(529, 'Hatibanda Police Station', 7, 56, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:29:24', '2018-07-17 04:29:24'),
(530, 'Kaliganj Police Station', 7, 56, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:29:36', '2018-07-17 04:29:36'),
(531, 'Lalmonirhat Police Station', 7, 56, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:29:47', '2018-07-17 04:29:47'),
(532, 'Patgram Police Station', 7, 56, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:30:05', '2018-07-17 04:30:05'),
(533, 'Dimla Police Station', 7, 57, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:41:31', '2018-07-17 04:41:31'),
(534, 'Domar Police Station', 7, 57, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:42:02', '2018-07-17 04:42:02'),
(535, 'Jaldhaka Police Station', 7, 57, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:42:32', '2018-07-17 04:42:32'),
(536, 'Kishoreganj Police Station, Nilphamari', 7, 57, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:48:11', '2018-07-17 04:48:11'),
(537, 'Nilphamari Police Station', 7, 57, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:48:59', '2018-07-17 04:48:59'),
(538, 'Sayedpur Police Station', 7, 57, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:49:36', '2018-07-17 04:49:36'),
(539, 'Atwari Police Station', 7, 58, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:51:40', '2018-07-17 04:51:40'),
(540, 'Boda Police Station', 7, 58, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:51:58', '2018-07-17 04:51:58'),
(541, 'Debiganj Police Station', 7, 58, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:52:19', '2018-07-17 04:52:19'),
(542, 'Panchagarh Police Station', 7, 58, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:52:40', '2018-07-17 04:52:40'),
(543, 'Tetulia Police Station', 7, 58, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:52:58', '2018-07-17 04:52:58'),
(544, 'Badarganj Police Station', 7, 59, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:55:35', '2018-07-17 04:55:35'),
(545, 'Gangachara Police Station', 7, 59, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:55:50', '2018-07-17 04:55:50'),
(546, 'Kaunia Police Station', 7, 59, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:56:01', '2018-07-17 04:56:01'),
(547, 'Kotwali Police Station, Rangpur', 7, 59, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:56:34', '2018-07-17 04:56:34'),
(548, 'Mitha Pukur Police Station', 7, 59, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:56:56', '2018-07-17 04:56:56'),
(549, 'Pirgacha Police Station', 7, 59, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:57:10', '2018-07-17 04:57:10'),
(550, 'Pirganj Police Station', 7, 59, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:57:26', '2018-07-17 04:57:26'),
(551, 'Taraganj Police Station', 7, 59, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:57:40', '2018-07-17 04:57:40'),
(552, 'Baliadangi Police Station', 7, 60, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:59:28', '2018-07-17 04:59:28'),
(553, 'Haripur Police Station', 7, 60, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:59:45', '2018-07-17 04:59:45'),
(554, 'Pirgonj Police Station', 7, 60, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:00:10', '2018-07-17 05:00:10'),
(555, 'Ranisankail Police Station', 7, 60, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:00:26', '2018-07-17 05:00:26'),
(556, 'Ruhia Police Station', 7, 60, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:00:57', '2018-07-17 05:00:57'),
(557, 'Thakurgaon Police Station', 7, 60, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:01:10', '2018-07-17 05:01:10'),
(558, 'Azmiriganj Police Station', 8, 61, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:06:03', '2018-07-17 05:06:03'),
(559, 'Bahubal Police Station', 8, 61, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:06:27', '2018-07-17 05:06:27'),
(560, 'Baniachong Police Station', 8, 61, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:06:44', '2018-07-17 05:06:44'),
(561, 'Chunarughat Police Station', 8, 61, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:06:59', '2018-07-17 05:06:59'),
(562, 'Habiganj Police Station', 8, 61, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:07:12', '2018-07-17 05:07:12'),
(563, 'Lakhai Police Station', 8, 61, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:07:27', '2018-07-17 05:07:27'),
(564, 'Madhabpur Police Station', 8, 61, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:07:39', '2018-07-17 05:07:39'),
(565, 'Nabiganj Police Station', 8, 61, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:08:00', '2018-07-17 05:08:00'),
(566, 'Shayestaganj Police Station', 8, 61, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:08:13', '2018-07-17 05:08:13'),
(567, 'Barlekha Police Station', 8, 62, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:50:53', '2018-07-17 05:50:53'),
(568, 'Juri Police Station', 8, 62, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:51:12', '2018-07-17 05:51:12'),
(569, 'Kamalganj Police Station', 8, 62, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:51:26', '2018-07-17 05:51:26'),
(570, 'Kulaura Police Station', 8, 62, NULL, 1, 1, NULL, NULL, '2018-07-17 05:52:56', '2018-07-17 05:53:15'),
(571, 'Moulvibazar Police Station', 8, 62, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:53:38', '2018-07-17 05:53:38'),
(572, 'Rajnagar Police Station', 8, 62, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:53:53', '2018-07-17 05:53:53'),
(573, 'Sreemangal Police Station', 8, 62, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:54:33', '2018-07-17 05:54:33'),
(574, 'Biswamvarpur Police Station', 8, 63, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:56:56', '2018-07-17 05:56:56'),
(575, 'Chatak Police Station', 8, 63, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:57:09', '2018-07-17 05:57:09'),
(576, 'Derai Police Station', 8, 63, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:57:23', '2018-07-17 05:57:23'),
(577, 'Dharampasha Police Station', 8, 63, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:57:36', '2018-07-17 05:57:36'),
(578, 'Dowarabazar Police Station', 8, 63, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:57:46', '2018-07-17 05:57:46'),
(579, 'Jagannathpur Police Station', 8, 63, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:58:01', '2018-07-17 05:58:01'),
(580, 'Jamalganj Police Station', 8, 63, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:58:13', '2018-07-17 05:58:13'),
(581, 'Moddhonagar Police Station', 8, 63, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:58:25', '2018-07-17 05:58:25'),
(582, 'South Sunamganj  Police Station', 8, 63, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:58:39', '2018-07-17 05:58:39'),
(583, 'Sulla Police Station', 8, 63, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:58:50', '2018-07-17 05:58:50'),
(584, 'Sunamganj Police Station', 8, 63, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:59:01', '2018-07-17 05:59:01'),
(585, 'Tahirpur Police Station', 8, 63, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:59:16', '2018-07-17 05:59:16'),
(586, 'Airport Police Station (SMP)', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:02:45', '2018-07-17 06:02:45'),
(587, 'Jalalabad Police Station (SMP)', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:03:09', '2018-07-17 06:03:09'),
(588, 'Kotwali Police Station (SMP)', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:03:31', '2018-07-17 06:03:31'),
(589, 'Moglabazar Police Station (SMP)', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:03:49', '2018-07-17 06:03:49'),
(590, 'Shah Paran Police Station (SMP)', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:04:12', '2018-07-17 06:04:12'),
(591, 'South Surma  Police Station (SMP)', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:04:28', '2018-07-17 06:04:28'),
(592, 'Balaganj Police Station', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:05:55', '2018-07-17 06:05:55'),
(593, 'Beani Bazar Police Station', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:06:07', '2018-07-17 06:06:07'),
(594, 'Biswanath Police Station', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:06:19', '2018-07-17 06:06:19'),
(595, 'Companiganj Police Station, Sylhet', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:07:27', '2018-07-17 06:07:27'),
(596, 'Fenchuganj Police Station', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:07:42', '2018-07-17 06:07:42'),
(597, 'Golapganj Police Station', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:08:09', '2018-07-17 06:08:09'),
(598, 'Gowainghat Police Station', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:08:23', '2018-07-17 06:08:23'),
(599, 'Jointiapur Police Station', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:08:36', '2018-07-17 06:08:36'),
(600, 'Jokiganj Police Station', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:08:48', '2018-07-17 06:08:48'),
(601, 'Kanaighat Police Station', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:09:00', '2018-07-17 06:09:00'),
(602, 'Osmani Nagar Police Station', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:09:12', '2018-07-17 06:09:12'),
(603, 'Arai Hazar Police Station', 3, 26, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:10:27', '2018-07-17 06:10:27'),
(604, 'Bandar Police Station', 3, 26, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:10:52', '2018-07-17 06:10:52'),
(605, 'Fatulla  Police Station', 3, 26, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:11:16', '2018-07-17 06:11:16'),
(606, 'Narayanganj Police Station', 3, 26, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:11:40', '2018-07-17 06:11:40'),
(607, 'Rupganj Police Station', 3, 26, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:12:00', '2018-07-17 06:12:00'),
(608, 'Siddhirganj Police Station', 3, 26, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:12:19', '2018-07-17 06:12:19'),
(609, 'Sonargaon Police Station', 3, 26, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:12:35', '2018-07-17 06:12:35'),
(610, 'ghjh PS', 9, 65, NULL, 1, NULL, NULL, NULL, '2019-03-31 11:25:41', '2019-03-31 11:25:41');

-- --------------------------------------------------------

--
-- Table structure for table `police_stations_orig`
--

CREATE TABLE `police_stations_orig` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `division_id` int(10) UNSIGNED NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `police_stations_orig`
--

INSERT INTO `police_stations_orig` (`id`, `name`, `division_id`, `district_id`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Amtali Police Station', 1, 1, NULL, 1, NULL, NULL, NULL, '2018-07-09 02:49:04', '2018-07-09 02:49:04'),
(2, 'Bamna Police Station', 1, 1, NULL, 1, NULL, NULL, NULL, '2018-07-09 02:52:27', '2018-07-09 02:52:27'),
(3, 'Barguna Police Station', 1, 1, NULL, 1, NULL, NULL, NULL, '2018-07-09 02:52:50', '2018-07-09 02:52:50'),
(4, 'Betagi Police Station', 1, 1, NULL, 1, NULL, NULL, NULL, '2018-07-09 02:53:24', '2018-07-09 02:53:24'),
(5, 'Patharghata Police Station', 1, 1, NULL, 1, NULL, NULL, NULL, '2018-07-09 02:53:57', '2018-07-09 02:53:57'),
(6, 'Taltali Police Station', 1, 1, NULL, 1, NULL, NULL, NULL, '2018-07-09 02:54:24', '2018-07-09 02:54:24'),
(7, 'Airport Police Station (BMP)', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:05:03', '2018-07-09 03:05:03'),
(8, 'Bandar Police Station (BMP)', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:05:38', '2018-07-09 03:05:38'),
(9, 'Kawnia Police Station (BMP)', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:06:57', '2018-07-09 03:06:57'),
(10, 'Kotwali Police Station (BMP)', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:07:28', '2018-07-09 03:07:28'),
(11, 'Agailihara Police Station', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:09:26', '2018-07-09 03:09:26'),
(12, 'Babuganj Police Station', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:10:00', '2018-07-09 03:10:00'),
(13, 'Bakerganj Police Station', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:10:21', '2018-07-09 03:10:21'),
(14, 'Banaripara Police Station', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:12:15', '2018-07-09 03:12:15'),
(15, 'Gouranadi Police Station', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:13:08', '2018-07-09 03:13:08'),
(16, 'Hizla Police Station', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:13:44', '2018-07-09 03:13:44'),
(17, 'Kazirhat Police Station', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:14:20', '2018-07-09 03:14:20'),
(18, 'Mehediganj Police Station', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:14:41', '2018-07-09 03:14:41'),
(19, 'Muladi Police Station', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:15:03', '2018-07-09 03:15:03'),
(20, 'Uzirpur Police Station', 1, 2, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:15:25', '2018-07-09 03:15:25'),
(21, 'Bhola Police Station', 1, 3, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:21:05', '2018-07-09 03:21:05'),
(22, 'Burhanuddin Police Station', 1, 3, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:21:30', '2018-07-09 03:21:30'),
(23, 'Charfassion Police Station', 1, 3, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:21:48', '2018-07-09 03:21:48'),
(24, 'Daulatkhan Police Station', 1, 3, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:22:23', '2018-07-09 03:22:23'),
(25, 'Lalmohan Police Station', 1, 3, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:23:07', '2018-07-09 03:23:07'),
(26, 'Monpura Police Station', 1, 3, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:23:24', '2018-07-09 03:23:24'),
(27, 'Shashi Bhushan Police Station', 1, 3, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:23:54', '2018-07-09 03:23:54'),
(28, 'South Aaicha Police Station', 1, 3, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:24:15', '2018-07-09 03:24:15'),
(29, 'Tazumuddin Police Station', 1, 3, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:24:39', '2018-07-09 03:24:39'),
(30, 'Jhalokati Police Station', 1, 4, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:33:35', '2018-07-09 03:33:35'),
(31, 'Kathalia Police Station', 1, 4, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:33:56', '2018-07-09 03:33:56'),
(32, 'Nalchity Police Station', 1, 4, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:34:24', '2018-07-09 03:34:24'),
(33, 'Rajapur Police Station', 1, 4, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:35:01', '2018-07-09 03:35:01'),
(34, 'Bauphal Police Station', 1, 5, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:38:11', '2018-07-09 03:38:11'),
(35, 'Dashmina Police Station', 1, 5, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:38:38', '2018-07-09 03:38:38'),
(36, 'Dumki Police Station', 1, 5, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:39:14', '2018-07-09 03:39:14'),
(37, 'Galachipa  Police Station', 1, 5, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:39:47', '2018-07-09 03:39:47'),
(38, 'Kalapara Police Station', 1, 5, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:40:21', '2018-07-09 03:40:21'),
(39, 'Mirzaganj Police Station', 1, 5, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:40:59', '2018-07-09 03:40:59'),
(40, 'Mohipur Police Station', 1, 5, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:41:18', '2018-07-09 03:41:18'),
(41, 'Patuakhali Police Station', 1, 5, NULL, 1, 1, NULL, NULL, '2018-07-09 03:41:34', '2018-07-09 03:42:20'),
(42, 'Rangabali Police Station', 1, 5, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:42:56', '2018-07-09 03:42:56'),
(43, 'Bhandaria Police Station', 1, 6, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:48:31', '2018-07-09 03:48:31'),
(44, 'Indurkandi Police Station', 1, 6, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:48:48', '2018-07-09 03:48:48'),
(45, 'Kawkhali Police Station', 1, 6, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:49:43', '2018-07-09 03:49:43'),
(46, 'Matbaria Police Station', 1, 6, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:50:09', '2018-07-09 03:50:09'),
(47, 'Nazirpur Police Station', 1, 6, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:50:32', '2018-07-09 03:50:32'),
(48, 'Nesarabad Police Station', 1, 6, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:50:53', '2018-07-09 03:50:53'),
(49, 'Pirojpur Police Station', 1, 6, NULL, 1, NULL, NULL, NULL, '2018-07-09 03:51:19', '2018-07-09 03:51:19'),
(50, 'Alikadam Police Station', 2, 7, NULL, 1, 1, NULL, NULL, '2018-07-09 05:53:57', '2018-07-09 05:54:57'),
(51, 'Lama police station', 2, 7, NULL, 1, NULL, NULL, NULL, '2018-07-09 05:54:34', '2018-07-09 05:54:34'),
(52, 'Naikhongchhari Police Station', 2, 7, NULL, 1, NULL, NULL, NULL, '2018-07-09 05:55:35', '2018-07-09 05:55:35'),
(53, 'Royanchari Police Station', 2, 7, NULL, 1, NULL, NULL, NULL, '2018-07-09 05:56:13', '2018-07-09 05:56:13'),
(54, 'Ruma Police Station', 2, 7, NULL, 1, NULL, NULL, NULL, '2018-07-09 05:57:07', '2018-07-09 05:57:07'),
(55, 'Sadar Police Station, Bandarban', 2, 7, NULL, 1, NULL, NULL, NULL, '2018-07-09 05:58:07', '2018-07-09 05:58:07'),
(56, 'Thanchi Police Station', 2, 7, NULL, 1, NULL, NULL, NULL, '2018-07-09 05:58:58', '2018-07-09 05:58:58'),
(57, 'Akhaura Police Station', 2, 8, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:02:30', '2018-07-09 06:02:30'),
(58, 'Ashuganj Police Station', 2, 8, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:02:59', '2018-07-09 06:02:59'),
(59, 'Bancharampur Police Station', 2, 8, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:03:20', '2018-07-09 06:03:20'),
(60, 'Bijoynagar Police Station', 2, 8, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:04:07', '2018-07-09 06:04:07'),
(61, 'Brahmanbaria Police Station', 2, 8, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:05:26', '2018-07-09 06:05:26'),
(62, 'Kasba Police Station', 2, 8, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:05:53', '2018-07-09 06:05:53'),
(63, 'Nabinagar Police Station', 2, 8, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:06:46', '2018-07-09 06:06:46'),
(64, 'Nasirnagar Police Station', 2, 8, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:07:13', '2018-07-09 06:07:13'),
(65, 'Sarail Police Station', 2, 8, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:07:31', '2018-07-09 06:07:31'),
(66, 'Chandpur Police Station', 2, 9, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:12:23', '2018-07-09 06:12:23'),
(67, 'Faridganj Police Station', 2, 9, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:12:49', '2018-07-09 06:12:49'),
(68, 'Haimchar Police Station', 2, 9, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:13:36', '2018-07-09 06:13:36'),
(69, 'Hajiganj Police Station', 2, 9, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:14:00', '2018-07-09 06:14:00'),
(70, 'Kachua Police Station, Chandpur', 2, 9, NULL, 1, 1, NULL, NULL, '2018-07-09 06:14:42', '2018-07-16 04:25:40'),
(71, 'Matlab (North) Police Station', 2, 9, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:15:17', '2018-07-09 06:15:17'),
(72, 'Matlab South Police Station', 2, 9, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:15:35', '2018-07-09 06:15:35'),
(73, 'Shahrasti Police Station', 2, 9, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:16:01', '2018-07-09 06:16:01'),
(74, 'Akbar Shah Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:21:03', '2018-07-09 06:21:03'),
(75, 'Baijid Bostami Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:21:38', '2018-07-09 06:21:38'),
(76, 'Bakuali Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:22:14', '2018-07-09 06:22:14'),
(77, 'Bandar  Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:22:56', '2018-07-09 06:22:56'),
(78, 'Chakbazar Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:23:26', '2018-07-09 06:23:26'),
(79, 'Chandgaon Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:23:55', '2018-07-09 06:23:55'),
(80, 'Double Moorning Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:24:29', '2018-07-09 06:24:29'),
(81, 'EPZ Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:24:54', '2018-07-09 06:24:54'),
(82, 'Halishahar Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:25:31', '2018-07-09 06:25:31'),
(83, 'Karnaphuli Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:26:01', '2018-07-09 06:26:01'),
(84, 'Khulsi Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:26:35', '2018-07-09 06:26:35'),
(85, 'Kotwali Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:27:04', '2018-07-09 06:27:04'),
(86, 'Pahartoli Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:27:24', '2018-07-09 06:27:24'),
(87, 'Panchlaish Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:27:55', '2018-07-09 06:27:55'),
(88, 'Potenga Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:28:30', '2018-07-09 06:28:30'),
(89, 'Sadarghat Police Station (CMP)', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:28:56', '2018-07-09 06:28:56'),
(90, 'Anowara Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:30:53', '2018-07-09 06:30:53'),
(91, 'Banshkhali Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:31:07', '2018-07-09 06:31:07'),
(92, 'Boalkhali Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:31:24', '2018-07-09 06:31:24'),
(93, 'Chandanaish Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:31:37', '2018-07-09 06:31:37'),
(94, 'Fatikchhari Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:32:33', '2018-07-09 06:32:33'),
(95, 'Hathazari Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:32:46', '2018-07-09 06:32:46'),
(96, 'Lohagara Police Station, Chittagong', 2, 10, NULL, 1, 1, NULL, NULL, '2018-07-09 06:33:26', '2018-07-16 06:04:01'),
(97, 'Mirsarai Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:37:13', '2018-07-09 06:37:13'),
(98, 'Patiya Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:37:38', '2018-07-09 06:37:38'),
(99, 'Rangunia Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:38:00', '2018-07-09 06:38:00'),
(100, 'Raujan Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:47:24', '2018-07-09 06:47:24'),
(101, 'Sandwip Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:47:38', '2018-07-09 06:47:38'),
(102, 'Satkania Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:48:11', '2018-07-09 06:48:11'),
(103, 'Sitakunda Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:48:35', '2018-07-09 06:48:35'),
(104, 'Vujpur Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:48:54', '2018-07-09 06:48:54'),
(105, 'Zorargonj Police Station', 2, 10, NULL, 1, NULL, NULL, NULL, '2018-07-09 06:49:10', '2018-07-09 06:49:10'),
(106, 'Bangora Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:24:10', '2018-07-15 02:24:10'),
(107, 'Barura Police Station', 2, 12, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:25:49', '2018-07-15 02:25:49'),
(108, 'Brahmanpara Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:28:10', '2018-07-15 02:28:10'),
(109, 'Burichong Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:28:53', '2018-07-15 02:28:53'),
(110, 'Chandina Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:29:11', '2018-07-15 02:29:11'),
(111, 'Chouddagram Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:29:49', '2018-07-15 02:29:49'),
(112, 'Daudkandi Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:30:18', '2018-07-15 02:30:18'),
(113, 'Debidwar Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:30:46', '2018-07-15 02:30:46'),
(114, 'Homna Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:31:12', '2018-07-15 02:31:12'),
(115, 'Kotwali Police Station, Comilla', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:31:55', '2018-07-15 02:31:55'),
(116, 'Laksham Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:32:20', '2018-07-15 02:32:20'),
(117, 'Meghna Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:32:38', '2018-07-15 02:32:38'),
(118, 'Mohongonj Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:32:55', '2018-07-15 02:32:55'),
(119, 'Muradnagar Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:33:17', '2018-07-15 02:33:17'),
(120, 'Nangalkot Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:33:42', '2018-07-15 02:33:42'),
(121, 'Sadar South Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:34:06', '2018-07-15 02:34:06'),
(122, 'Titas Police Station', 2, 11, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:34:25', '2018-07-15 02:34:25'),
(123, 'Chakoria Police Station', 2, 12, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:38:45', '2018-07-15 02:38:45'),
(124, 'Cox\'s Bazar Police Station', 2, 12, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:39:30', '2018-07-15 02:39:30'),
(125, 'Kutubdia Police Station', 2, 12, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:39:53', '2018-07-15 02:39:53'),
(126, 'Moheskhali Police Station', 2, 12, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:40:24', '2018-07-15 02:40:24'),
(127, 'Pekua Police Station', 2, 12, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:40:45', '2018-07-15 02:40:45'),
(128, 'Ramu Police Station', 2, 12, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:41:15', '2018-07-15 02:41:15'),
(129, 'Teknaf Police Station', 2, 12, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:41:33', '2018-07-15 02:41:33'),
(130, 'Ukhiya Police Station', 2, 12, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:41:54', '2018-07-15 02:41:54'),
(131, 'Chhagalnaiya Police Station', 2, 13, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:45:40', '2018-07-15 02:45:40'),
(132, 'Daganbhuiyan Police Station', 2, 13, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:46:04', '2018-07-15 02:46:04'),
(133, 'Feni Police Station', 2, 13, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:46:26', '2018-07-15 02:46:26'),
(134, 'Fulgazi Police Station', 2, 13, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:46:45', '2018-07-15 02:46:45'),
(135, 'Porshuram Police Station', 2, 13, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:49:47', '2018-07-15 02:49:47'),
(136, 'Sonagazi Police Station', 2, 13, NULL, 1, NULL, NULL, NULL, '2018-07-15 02:50:12', '2018-07-15 02:50:12'),
(137, 'Dighinala Police Station', 2, 14, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:08:07', '2018-07-15 03:08:07'),
(138, 'Gulimara Police Station', 2, 14, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:08:45', '2018-07-15 03:08:45'),
(139, 'Khagrachari Police Station', 2, 14, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:09:07', '2018-07-15 03:09:07'),
(140, 'Laxmichari Police Station', 2, 14, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:09:42', '2018-07-15 03:09:42'),
(141, 'Mahalchari Police Station', 2, 14, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:10:05', '2018-07-15 03:10:05'),
(142, 'Manikchari Police Station', 2, 14, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:10:40', '2018-07-15 03:10:40'),
(143, 'Matiranga Police Station', 2, 14, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:11:06', '2018-07-15 03:11:06'),
(144, 'Panchari Police Station', 2, 14, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:11:37', '2018-07-15 03:11:37'),
(145, 'Ramgarh Police Station', 2, 14, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:12:03', '2018-07-15 03:12:03'),
(146, 'Chandraganj Police Station', 2, 15, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:21:11', '2018-07-15 03:21:11'),
(147, 'Kamalnagar Police Station', 2, 15, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:21:37', '2018-07-15 03:21:37'),
(148, 'Lakshmipur Police Station', 2, 15, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:22:05', '2018-07-15 03:22:05'),
(149, 'Raipur Police Station', 2, 15, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:24:04', '2018-07-15 03:24:04'),
(150, 'Ramganj Police Station', 2, 15, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:24:38', '2018-07-15 03:24:38'),
(151, 'Ramgati Police Station', 2, 15, NULL, 1, 1, NULL, NULL, '2018-07-15 03:25:41', '2018-07-15 03:35:09'),
(152, 'Begumganj Police Station', 2, 16, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:36:46', '2018-07-15 03:36:46'),
(153, 'Char Rajibpur Police Station', 2, 16, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:37:09', '2018-07-15 03:37:09'),
(154, 'Chatkhil Police Station', 2, 16, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:37:35', '2018-07-15 03:37:35'),
(155, 'Companiganj Police Station, Noakhali', 2, 16, NULL, 1, 1, NULL, NULL, '2018-07-15 03:37:59', '2018-07-17 06:07:07'),
(156, 'Hatiya Police Station', 2, 16, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:38:19', '2018-07-15 03:38:19'),
(157, 'Kabirhat Police Station', 2, 16, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:38:49', '2018-07-15 03:38:49'),
(158, 'Senbagh Police Station', 2, 16, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:39:15', '2018-07-15 03:39:15'),
(159, 'Sonaimuri Police Station', 2, 16, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:39:39', '2018-07-15 03:39:39'),
(160, 'Subarna Char Police Station', 2, 16, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:39:54', '2018-07-15 03:39:54'),
(161, 'Sudharam Police Station', 2, 16, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:40:13', '2018-07-15 03:40:13'),
(162, 'Baghaichari Police Station', 2, 17, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:43:37', '2018-07-15 03:43:37'),
(163, 'Barkal Police Station', 2, 17, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:44:04', '2018-07-15 03:44:04'),
(164, 'Belaichhari Police Station', 2, 17, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:44:28', '2018-07-15 03:44:28'),
(165, 'Chandroghona Police Station', 2, 17, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:45:00', '2018-07-15 03:45:00'),
(166, 'Juraichari Police Station', 2, 17, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:45:20', '2018-07-15 03:45:20'),
(167, 'Kaptai Police Station', 2, 17, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:45:43', '2018-07-15 03:45:43'),
(168, 'Kaukhali Police Station', 2, 17, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:46:09', '2018-07-15 03:46:09'),
(169, 'Kotwali Police Station, Rangamati', 2, 17, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:46:52', '2018-07-15 03:46:52'),
(170, 'Longadu Police Station', 2, 17, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:47:15', '2018-07-15 03:47:15'),
(171, 'Naniarchar Police Station', 2, 17, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:47:36', '2018-07-15 03:47:36'),
(172, 'Rajasthali Police Station', 2, 17, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:47:58', '2018-07-15 03:47:58'),
(173, 'Sajek Police Station', 2, 17, NULL, 1, NULL, NULL, NULL, '2018-07-15 03:48:20', '2018-07-15 03:48:20'),
(174, 'Adabor Police Station (DMP)', 3, 18, NULL, 1, 1, NULL, NULL, '2018-07-15 03:59:30', '2018-07-15 04:00:24'),
(175, 'Airport Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:00:58', '2018-07-15 04:00:58'),
(176, 'Badda Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:01:43', '2018-07-15 04:01:43'),
(177, 'Banani Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:02:12', '2018-07-15 04:02:12'),
(178, 'Bangshal Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:02:50', '2018-07-15 04:02:50'),
(179, 'Cantonment Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:03:25', '2018-07-15 04:03:25'),
(180, 'Chak Bazar Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:03:49', '2018-07-15 04:03:49'),
(181, 'Darus Salam Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:04:28', '2018-07-15 04:04:28'),
(182, 'Daskhinkhan Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:05:01', '2018-07-15 04:05:01'),
(183, 'Demra Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:05:28', '2018-07-15 04:05:28'),
(184, 'Dhanmondi  Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:05:59', '2018-07-15 04:05:59'),
(185, 'Gendaria Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:06:24', '2018-07-15 04:06:24'),
(186, 'Gulshan Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:07:08', '2018-07-15 04:07:08'),
(187, 'Hazaribag  Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:07:35', '2018-07-15 04:07:35'),
(188, 'Jatrabari Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:08:00', '2018-07-15 04:08:00'),
(189, 'Kadomtoli Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:08:30', '2018-07-15 04:08:30'),
(190, 'Kafrul Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:08:56', '2018-07-15 04:08:56'),
(191, 'Kalabagan Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:09:26', '2018-07-15 04:09:26'),
(192, 'Kamrangirchar Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:10:04', '2018-07-15 04:10:04'),
(193, 'Khilgaon Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:10:28', '2018-07-15 04:10:28'),
(194, 'Khilkhet Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:10:59', '2018-07-15 04:10:59'),
(195, 'Kotwali Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:11:25', '2018-07-15 04:11:25'),
(196, 'Lalbag Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:12:04', '2018-07-15 04:12:04'),
(197, 'Mirpur Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:12:25', '2018-07-15 04:12:25'),
(198, 'Mohammadpur Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:13:03', '2018-07-15 04:13:03'),
(199, 'Motijheel Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:13:36', '2018-07-15 04:13:36'),
(200, 'Mugda Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:13:59', '2018-07-15 04:13:59'),
(201, 'New Market Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:14:26', '2018-07-15 04:14:26'),
(202, 'Pallabi Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:14:48', '2018-07-15 04:14:48'),
(203, 'Paltan Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:15:21', '2018-07-15 04:15:21'),
(204, 'Ramna Model Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:15:51', '2018-07-15 04:15:51'),
(205, 'Rampura  Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:16:32', '2018-07-15 04:16:32'),
(206, 'Rupnagar Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:17:01', '2018-07-15 04:17:01'),
(207, 'Sabujbag Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:17:39', '2018-07-15 04:17:39'),
(208, 'Shah Ali Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:18:17', '2018-07-15 04:18:17'),
(209, 'Shahbag  Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:18:48', '2018-07-15 04:18:48'),
(210, 'Shahjahanpur Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:19:22', '2018-07-15 04:19:22'),
(211, 'Shampur Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:19:46', '2018-07-15 04:19:46'),
(212, 'Sher-e-Bangla Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:20:21', '2018-07-15 04:20:21'),
(213, 'Sutrapur  Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:20:51', '2018-07-15 04:20:51'),
(214, 'Tejgaon I/A Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:21:22', '2018-07-15 04:21:22'),
(215, 'Tejgaon Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:21:54', '2018-07-15 04:21:54'),
(216, 'Turag Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:23:02', '2018-07-15 04:23:02'),
(217, 'Uttara (West) Police Station (DMP)', 3, 18, NULL, 1, 1, NULL, NULL, '2018-07-15 04:23:24', '2018-07-15 04:24:08'),
(218, 'Uttara Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:23:50', '2018-07-15 04:23:50'),
(219, 'Uttarkhan Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:24:54', '2018-07-15 04:24:54'),
(220, 'Vasantek Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:25:18', '2018-07-15 04:25:18'),
(221, 'Vatara Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:26:12', '2018-07-15 04:26:12'),
(222, 'Wari Police Station (DMP)', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:26:48', '2018-07-15 04:26:48'),
(223, 'Ashulia Police Station', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:34:11', '2018-07-15 04:34:11'),
(224, 'Dhamrai Police Station', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:34:25', '2018-07-15 04:34:25'),
(225, 'Dohar Police Station', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:34:41', '2018-07-15 04:34:41'),
(226, 'Keraniganj Model Police Station', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:35:05', '2018-07-15 04:35:05'),
(227, 'Nawabganj Model Police Station', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:35:26', '2018-07-15 04:35:26'),
(228, 'Savar Model Police Station', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:35:44', '2018-07-15 04:35:44'),
(229, 'South Keraniganj Police Station', 3, 18, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:36:01', '2018-07-15 04:36:01'),
(230, 'Alfadanga Police Station', 3, 19, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:42:54', '2018-07-15 04:42:54'),
(231, 'Boalmari Police Station', 3, 19, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:43:13', '2018-07-15 04:43:13'),
(232, 'Charbhadrasan Police Station', 3, 19, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:43:53', '2018-07-15 04:43:53'),
(233, 'Kotwali Police Station, Faridpur', 3, 19, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:44:35', '2018-07-15 04:44:35'),
(234, 'Madhukhali Police Station', 3, 19, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:45:04', '2018-07-15 04:45:04'),
(235, 'Nagarkanda Police Station', 3, 19, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:45:34', '2018-07-15 04:45:34'),
(236, 'Sadarpur Police Station', 3, 19, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:46:01', '2018-07-15 04:46:01'),
(237, 'Saltha Police Station', 3, 19, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:46:36', '2018-07-15 04:46:36'),
(238, 'Vanga Police Station', 3, 19, NULL, 1, NULL, NULL, NULL, '2018-07-15 04:46:55', '2018-07-15 04:46:55'),
(239, 'Joydebpur Police Station', 3, 20, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:00:21', '2018-07-15 23:00:21'),
(240, 'Kaliakoir Police Station', 3, 20, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:00:44', '2018-07-15 23:00:44'),
(241, 'Kaliganj Police Station, Gazipur', 3, 20, NULL, 1, 1, NULL, NULL, '2018-07-15 23:01:09', '2018-07-16 04:57:52'),
(242, 'Kapasia Police Station', 3, 20, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:01:33', '2018-07-15 23:01:33'),
(243, 'Sreepur Police Station, Gazipur', 3, 20, NULL, 1, 1, NULL, NULL, '2018-07-15 23:01:55', '2018-07-16 05:54:42'),
(244, 'Tongi Police Station', 3, 20, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:02:41', '2018-07-15 23:02:41'),
(245, 'Gopalganj Police Station', 3, 21, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:09:03', '2018-07-15 23:09:03'),
(246, 'Kasiani Police Station', 3, 21, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:10:29', '2018-07-15 23:10:29'),
(247, 'Kotalipara Police Station', 3, 21, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:11:04', '2018-07-15 23:11:04'),
(248, 'Muksudpur Police Station', 3, 21, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:11:34', '2018-07-15 23:11:34'),
(249, 'Tungipara Police Station', 3, 21, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:12:00', '2018-07-15 23:12:00'),
(250, 'Austagram Police Station', 3, 22, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:17:11', '2018-07-15 23:17:11'),
(251, 'Bajitpur Police Station', 3, 22, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:17:32', '2018-07-15 23:17:32'),
(252, 'Bhairab Police Station', 3, 22, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:18:17', '2018-07-15 23:18:17'),
(253, 'Hosainpur Police Station', 3, 22, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:18:38', '2018-07-15 23:18:38'),
(254, 'Itna Police Station', 3, 22, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:28:41', '2018-07-15 23:28:41'),
(255, 'Karimganj Police Station', 3, 22, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:29:11', '2018-07-15 23:29:11'),
(256, 'Katiadi Police Station', 3, 22, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:29:51', '2018-07-15 23:29:51'),
(257, 'Kishoreganj Police Station, Kishoreganj', 3, 22, NULL, 1, 1, NULL, NULL, '2018-07-15 23:30:30', '2018-07-17 04:45:50'),
(258, 'Kuliarchar Police Station', 3, 22, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:31:50', '2018-07-15 23:31:50'),
(259, 'Mithamoin Police Station', 3, 22, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:32:29', '2018-07-15 23:32:29'),
(260, 'Nikli Police Station', 3, 22, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:32:59', '2018-07-15 23:32:59'),
(261, 'Pakundia Police Station', 3, 22, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:34:32', '2018-07-15 23:34:32'),
(262, 'Tarail Police Station', 3, 22, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:35:16', '2018-07-15 23:35:16'),
(263, 'Dashar Police Station', 3, 23, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:39:56', '2018-07-15 23:39:56'),
(264, 'Kalkini Police Station', 3, 23, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:40:21', '2018-07-15 23:40:21'),
(265, 'Madaripur Police Station', 3, 23, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:40:51', '2018-07-15 23:40:51'),
(266, 'Rajoir Police Station', 3, 23, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:41:18', '2018-07-15 23:41:18'),
(267, 'Shibchar Police Station', 3, 23, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:41:41', '2018-07-15 23:41:41'),
(268, 'Doulatpur Police Station', 3, 24, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:45:27', '2018-07-15 23:45:27'),
(269, 'Ghior Police Station', 3, 24, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:46:00', '2018-07-15 23:46:00'),
(270, 'Harirampur  Police Station', 3, 24, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:46:39', '2018-07-15 23:46:39'),
(271, 'Manikganj Police Station', 3, 24, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:47:06', '2018-07-15 23:47:06'),
(272, 'Saturia Police Station', 3, 24, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:47:42', '2018-07-15 23:47:42'),
(273, 'Shibalaya Police Station', 3, 24, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:48:11', '2018-07-15 23:48:11'),
(274, 'Singair Police Station', 3, 24, NULL, 1, NULL, NULL, NULL, '2018-07-15 23:49:09', '2018-07-15 23:49:09'),
(275, 'Gazaria Police Station', 3, 25, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:02:25', '2018-07-16 03:02:25'),
(276, 'Lohajang Police Station', 3, 25, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:03:07', '2018-07-16 03:03:07'),
(277, 'Munshiganj Police Station', 3, 25, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:04:16', '2018-07-16 03:04:16'),
(278, 'Serajdikhan Police Station', 3, 25, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:04:53', '2018-07-16 03:04:53'),
(279, 'Sreenagar Police Station', 3, 25, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:05:53', '2018-07-16 03:05:53'),
(280, 'Tongibari Police Station', 3, 25, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:06:29', '2018-07-16 03:06:29'),
(281, 'Belabo Police Station', 3, 27, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:09:22', '2018-07-16 03:09:22'),
(282, 'Madhabdi Police Station', 3, 27, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:09:40', '2018-07-16 03:09:40'),
(283, 'Manohardi Police Station', 3, 27, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:09:59', '2018-07-16 03:09:59'),
(284, 'Narsingdi Police Station', 3, 27, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:11:10', '2018-07-16 03:11:10'),
(285, 'Palash Police Station', 3, 27, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:11:38', '2018-07-16 03:11:38'),
(286, 'Raipura Police Station', 3, 27, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:12:13', '2018-07-16 03:12:13'),
(287, 'Shibpur Police Station', 3, 27, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:12:39', '2018-07-16 03:12:39'),
(288, 'Baliakandi Police Station', 3, 28, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:15:28', '2018-07-16 03:15:28'),
(289, 'Goalanda Ghat Police Station', 3, 28, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:15:49', '2018-07-16 03:15:49'),
(290, 'Kalukhali Police Station', 3, 28, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:16:19', '2018-07-16 03:16:19'),
(291, 'Pangsha Police Station', 3, 28, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:16:50', '2018-07-16 03:16:50'),
(292, 'Rajbari Police Station', 3, 28, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:17:10', '2018-07-16 03:17:10'),
(293, 'Bhedarganj Police Station', 3, 29, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:22:07', '2018-07-16 03:22:07'),
(294, 'Damudya Police Station', 3, 29, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:22:51', '2018-07-16 03:22:51'),
(295, 'Goshairhat Police Station', 3, 29, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:23:19', '2018-07-16 03:23:19'),
(296, 'Janjira Police Station', 3, 29, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:23:42', '2018-07-16 03:23:42'),
(297, 'Noria Police Station', 3, 29, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:24:00', '2018-07-16 03:24:00'),
(298, 'Palong Police Station', 3, 29, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:24:26', '2018-07-16 03:24:26'),
(299, 'Sakhipur Police Station, Shariatpur', 3, 29, NULL, 1, 1, NULL, NULL, '2018-07-16 03:24:45', '2018-07-16 03:34:07'),
(300, 'Basail Police Station', 3, 30, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:27:03', '2018-07-16 03:27:03'),
(301, 'Bhuapur Police Station', 3, 30, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:27:26', '2018-07-16 03:27:26'),
(302, 'Delduar Police Staton', 3, 30, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:27:57', '2018-07-16 03:27:57'),
(303, 'Dhanbari Police Station', 3, 30, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:28:35', '2018-07-16 03:28:35'),
(304, 'Ghatail Police Station', 3, 30, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:28:54', '2018-07-16 03:28:54'),
(305, 'Gopalpur Police Station', 3, 30, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:29:20', '2018-07-16 03:29:20'),
(306, 'Jamuna Bridge Police Station', 3, 30, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:29:39', '2018-07-16 03:29:39'),
(307, 'Kalihati Police Station', 3, 30, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:29:57', '2018-07-16 03:29:57'),
(308, 'Madhupur Police Station', 3, 30, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:30:23', '2018-07-16 03:30:23'),
(309, 'Mirzapur Police Station', 3, 30, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:30:54', '2018-07-16 03:30:54'),
(310, 'Nagarpur Police Station', 3, 30, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:32:00', '2018-07-16 03:32:00'),
(311, 'Sakhipur Police Station, Tangail', 3, 30, NULL, 1, 1, NULL, NULL, '2018-07-16 03:35:09', '2018-07-16 03:35:43'),
(312, 'Tangail Police Station', 3, 30, NULL, 1, NULL, NULL, NULL, '2018-07-16 03:36:08', '2018-07-16 03:36:08'),
(313, 'Bagerhat Police Station', 4, 31, NULL, 1, 1, NULL, NULL, '2018-07-16 04:22:14', '2018-07-16 04:23:14'),
(314, 'Chitalmari Police Station', 4, 31, NULL, 1, 1, NULL, NULL, '2018-07-16 04:22:40', '2018-07-16 04:23:29'),
(315, 'Fakirhat Police Station', 4, 31, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:24:21', '2018-07-16 04:24:21'),
(316, 'Kachua Police Station, Bagerhat', 4, 31, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:26:18', '2018-07-16 04:26:18'),
(317, 'Mollahat Police Station', 4, 31, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:26:58', '2018-07-16 04:26:58'),
(318, 'Mongla Police Station', 4, 31, NULL, 1, 1, NULL, NULL, '2018-07-16 04:27:37', '2018-07-16 04:27:47'),
(319, 'Morrelganj Police Station', 4, 31, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:28:19', '2018-07-16 04:28:19'),
(320, 'Rampal Police Station', 4, 31, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:28:50', '2018-07-16 04:28:50'),
(321, 'Sarankhola Police Station', 4, 31, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:29:29', '2018-07-16 04:29:29'),
(322, 'Alamdanga Police Station', 4, 32, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:35:46', '2018-07-16 04:35:46'),
(323, 'Chuadanga Police Station', 4, 32, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:36:13', '2018-07-16 04:36:13'),
(324, 'Damurhuda Police Station', 4, 32, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:36:39', '2018-07-16 04:36:39'),
(325, 'Jiban Nagar Police Station', 4, 32, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:37:26', '2018-07-16 04:37:26'),
(326, 'Abhoynagar Police Station', 4, 33, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:43:01', '2018-07-16 04:43:01'),
(327, 'Bagharpara Police Station', 4, 33, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:43:36', '2018-07-16 04:43:36'),
(328, 'Benapol Police Station', 4, 33, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:44:24', '2018-07-16 04:44:24'),
(329, 'Chaugacha Police Station', 4, 33, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:45:23', '2018-07-16 04:45:23'),
(330, 'Jhikargacha Police Station', 4, 33, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:46:11', '2018-07-16 04:46:11'),
(331, 'Keshabpur Police Station', 4, 33, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:46:50', '2018-07-16 04:46:50'),
(332, 'Kotwali Police Station, Jashore', 4, 33, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:47:56', '2018-07-16 04:47:56'),
(333, 'Manirampur Police Station', 4, 33, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:48:29', '2018-07-16 04:48:29'),
(334, 'Sharsha Police Station', 4, 33, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:48:59', '2018-07-16 04:48:59'),
(335, 'Harinakunda Police Station', 4, 34, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:53:32', '2018-07-16 04:53:32'),
(336, 'Jhenaidah Police Station', 4, 34, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:54:23', '2018-07-16 04:54:23'),
(337, 'Kaliganj Police Station, Jhenaidah', 4, 34, NULL, 1, NULL, NULL, NULL, '2018-07-16 04:57:12', '2018-07-16 04:57:12'),
(338, 'Kotchandpur Police Station', 4, 34, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:00:04', '2018-07-16 05:00:04'),
(339, 'Maheshpur Police Station', 4, 34, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:01:22', '2018-07-16 05:01:22'),
(340, 'Shailkupa Police Station', 4, 34, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:02:00', '2018-07-16 05:02:00'),
(341, 'Arangghata  Police Station (KMP)', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:06:58', '2018-07-16 05:06:58'),
(342, 'Doulatpur Police Station (KMP)', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:07:46', '2018-07-16 05:07:46'),
(343, 'Horintana Police Station (KMP)', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:08:23', '2018-07-16 05:08:23'),
(344, 'Khalishpur Police Station (KMP)', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:09:19', '2018-07-16 05:09:19'),
(345, 'Khan Jahan Ali  Police Station (KMP)', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:09:52', '2018-07-16 05:09:52'),
(346, 'Khulna Police Station (KMP)', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:10:18', '2018-07-16 05:10:18'),
(347, 'Labanchara Police Station (KMP)', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:10:51', '2018-07-16 05:10:51'),
(348, 'Sonadanga Police Station (KMP)', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:11:39', '2018-07-16 05:11:39'),
(349, 'Batiaghata Police Station', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:36:38', '2018-07-16 05:36:38'),
(350, 'Dacope Police Station', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:37:00', '2018-07-16 05:37:00'),
(351, 'Dighalia Police Station', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:37:19', '2018-07-16 05:37:19'),
(352, 'Dumuria Police Station', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:37:40', '2018-07-16 05:37:40'),
(353, 'Koyra Police Station', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:38:06', '2018-07-16 05:38:06'),
(354, 'Paikgacha Police Station', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:38:42', '2018-07-16 05:38:42'),
(355, 'Phultala Police Station', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:39:05', '2018-07-16 05:39:05'),
(356, 'Rupsa Police Station', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:39:46', '2018-07-16 05:39:46'),
(357, 'Terokhada Police Station', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:40:25', '2018-07-16 05:40:25'),
(358, 'Bheramara Police Station', 4, 36, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:43:46', '2018-07-16 05:43:46'),
(359, 'Daulatpur Police Station', 4, 36, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:44:13', '2018-07-16 05:44:13'),
(360, 'Islami University Police Station', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:44:53', '2018-07-16 05:44:53'),
(361, 'Khoksha Police Station', 4, 36, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:45:39', '2018-07-16 05:45:39'),
(362, 'Kumarkhali Police Station', 4, 36, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:46:07', '2018-07-16 05:46:07'),
(363, 'Kushtia Police Station', 4, 36, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:46:31', '2018-07-16 05:46:31'),
(364, 'Mirpur Police Station, Kushtia', 4, 36, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:49:14', '2018-07-16 05:49:14'),
(365, 'Magura Police Station', 4, 37, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:51:14', '2018-07-16 05:51:14'),
(366, 'Mohammadpur Police Station, Magura', 4, 37, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:52:12', '2018-07-16 05:52:12'),
(367, 'Shalikha Police Station', 4, 37, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:52:40', '2018-07-16 05:52:40'),
(368, 'Sreepur Police Station, Magura', 4, 37, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:54:06', '2018-07-16 05:54:06'),
(369, 'Gangni Police Station', 4, 38, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:56:22', '2018-07-16 05:56:22'),
(370, 'Meherpur Police Station', 4, 38, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:57:03', '2018-07-16 05:57:03'),
(371, 'Mujibnagar Police Station', 4, 38, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:57:32', '2018-07-16 05:57:32'),
(372, 'Kalia Police Station', 4, 39, NULL, 1, NULL, NULL, NULL, '2018-07-16 05:59:54', '2018-07-16 05:59:54'),
(373, 'Lohagara Police Station, Narail', 4, 39, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:01:04', '2018-07-16 06:01:04'),
(374, 'Naragathy Police Station', 4, 39, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:02:24', '2018-07-16 06:02:24'),
(375, 'Narail Police Station', 4, 39, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:02:59', '2018-07-16 06:02:59'),
(376, 'Assasuni Police Station', 4, 40, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:31:47', '2018-07-16 06:31:47'),
(377, 'Debhata Police Station', 4, 40, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:32:54', '2018-07-16 06:32:54'),
(378, 'Kalaroa Police Station', 4, 40, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:33:20', '2018-07-16 06:33:20'),
(379, 'Kaliganj Police Station, Satkhira', 4, 40, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:34:27', '2018-07-16 06:34:27'),
(380, 'Patkelghata Police Station', 4, 40, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:35:00', '2018-07-16 06:35:00'),
(381, 'Satkhira Police Station', 4, 40, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:35:29', '2018-07-16 06:35:29'),
(382, 'Shyamnagar Police Station', 4, 40, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:35:59', '2018-07-16 06:35:59'),
(383, 'Tala Police Station', 4, 35, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:36:30', '2018-07-16 06:36:30'),
(384, 'Bahadurabad Police Station', 5, 41, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:45:44', '2018-07-16 06:45:44'),
(385, 'Bakshiganj Police Station', 5, 41, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:46:04', '2018-07-16 06:46:04'),
(386, 'Dewanganj Police Station', 5, 41, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:46:29', '2018-07-16 06:46:29'),
(387, 'Islampur Police Station', 5, 41, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:46:48', '2018-07-16 06:46:48'),
(388, 'Jamalpur Sadar Police Station', 5, 41, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:48:14', '2018-07-16 06:48:14'),
(389, 'Madarganj Police Station', 5, 41, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:48:49', '2018-07-16 06:48:49'),
(390, 'Melandah Police Station', 5, 41, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:51:40', '2018-07-16 06:51:40'),
(391, 'Sarishabari Police Station', 5, 41, NULL, 1, NULL, NULL, NULL, '2018-07-16 06:52:11', '2018-07-16 06:52:11'),
(392, 'Bhaluka Police Station', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 22:56:38', '2018-07-16 22:56:38'),
(393, 'Dhobaura Police Station', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 22:57:13', '2018-07-16 22:57:13'),
(394, 'Fulbari Police Station', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 22:57:43', '2018-07-16 22:57:43'),
(395, 'Gaffargaon Police Station', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 22:58:01', '2018-07-16 22:58:01'),
(396, 'Gauripur Police Station', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 22:58:54', '2018-07-16 22:58:54'),
(397, 'Haluaghat Police Station', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 22:59:25', '2018-07-16 22:59:25'),
(398, 'Ishwarganj Police Station', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 22:59:47', '2018-07-16 22:59:47'),
(399, 'Kotwali Police Station, Mymensingh', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:00:24', '2018-07-16 23:00:24'),
(400, 'Muktagacha Police Station', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:00:52', '2018-07-16 23:00:52'),
(401, 'Nandail Police Station', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:01:32', '2018-07-16 23:01:32'),
(402, 'Pagla Police Station', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:02:29', '2018-07-16 23:02:29'),
(403, 'Phulpur Police Station', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:02:57', '2018-07-16 23:02:57'),
(404, 'Tarakanda Police Station', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:03:16', '2018-07-16 23:03:16'),
(405, 'Trishal Police Station', 5, 42, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:03:38', '2018-07-16 23:03:38'),
(406, 'Atpara Police Station', 5, 43, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:16:32', '2018-07-16 23:16:32'),
(407, 'Barhatta  Police Station', 5, 43, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:16:52', '2018-07-16 23:16:52'),
(408, 'Durgapur Police Station, Netrokona', 5, 43, NULL, 1, 1, NULL, NULL, '2018-07-16 23:17:10', '2018-07-17 00:39:58'),
(409, 'Kalmakanda Police Station', 5, 43, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:17:30', '2018-07-16 23:17:30'),
(410, 'Kendua Police Station', 5, 43, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:18:08', '2018-07-16 23:18:08'),
(411, 'Khaliajuri Police Station', 5, 43, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:19:11', '2018-07-16 23:19:11'),
(412, 'Madan  Police Station', 5, 43, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:19:29', '2018-07-16 23:19:29'),
(413, 'Mohanganj Police Station', 5, 43, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:20:41', '2018-07-16 23:20:41'),
(414, 'Netrokona Sadar Police Station', 5, 43, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:21:06', '2018-07-16 23:21:06'),
(415, 'Purbadhala Police Station', 5, 43, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:21:34', '2018-07-16 23:21:34'),
(416, 'Jhenaigati Police Station', 5, 44, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:23:58', '2018-07-16 23:23:58'),
(417, 'Nakla Police Station', 5, 44, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:24:15', '2018-07-16 23:24:15'),
(418, 'Nalitabari Police Station', 5, 44, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:24:35', '2018-07-16 23:24:35'),
(419, 'Sherpur Sadar Police Station', 5, 44, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:26:21', '2018-07-16 23:26:21'),
(420, 'Sreebordi Police Station', 5, 44, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:27:14', '2018-07-16 23:27:14'),
(421, 'Adamdighi Police Station', 6, 45, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:37:54', '2018-07-16 23:37:54'),
(422, 'Bogra Police Station', 6, 45, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:38:12', '2018-07-16 23:38:12'),
(423, 'Dhunat Police Station', 6, 45, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:38:33', '2018-07-16 23:38:33'),
(424, 'Dhupchanchia Police Station', 6, 45, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:39:12', '2018-07-16 23:39:12'),
(425, 'Gabtali Police Station', 6, 45, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:40:12', '2018-07-16 23:40:12'),
(426, 'Kahaloo Police Station', 6, 45, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:40:41', '2018-07-16 23:40:41'),
(427, 'Nandigram Police Station', 6, 45, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:41:06', '2018-07-16 23:41:06'),
(428, 'Sariakandi Police Station', 6, 45, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:42:11', '2018-07-16 23:42:11'),
(429, 'Shajahanpur Police Station', 6, 45, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:43:09', '2018-07-16 23:43:09'),
(430, 'Sherpur Police Station', 6, 45, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:44:41', '2018-07-16 23:44:41'),
(431, 'Shibganj Police Station, Bagura', 6, 45, NULL, 1, 1, NULL, NULL, '2018-07-16 23:45:02', '2018-07-17 03:51:44'),
(432, 'Sonatola Police Station', 6, 45, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:45:23', '2018-07-16 23:45:23'),
(433, 'Akkelpur Police Station', 6, 46, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:48:26', '2018-07-16 23:48:26'),
(434, 'Joypurhat Police Station', 6, 46, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:48:49', '2018-07-16 23:48:49'),
(435, 'kalai Police Station', 6, 46, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:49:22', '2018-07-16 23:49:22'),
(436, 'Khetlal Police Station', 6, 46, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:49:59', '2018-07-16 23:49:59'),
(437, 'Panchbibi Police Station', 6, 46, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:50:19', '2018-07-16 23:50:19'),
(438, 'Atrai Police Station', 6, 47, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:53:04', '2018-07-16 23:53:04'),
(439, 'Badalgachi Police Station', 6, 47, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:53:57', '2018-07-16 23:53:57');
INSERT INTO `police_stations_orig` (`id`, `name`, `division_id`, `district_id`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(440, 'Dhamoirhat Police Station', 6, 47, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:54:24', '2018-07-16 23:54:24'),
(441, 'Manda Police Station', 6, 47, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:55:25', '2018-07-16 23:55:25'),
(442, 'Mohadevpur Police Station', 6, 47, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:55:50', '2018-07-16 23:55:50'),
(443, 'Naogaon Police Station', 6, 47, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:56:31', '2018-07-16 23:56:31'),
(444, 'Niamatpur Police Station', 6, 47, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:57:04', '2018-07-16 23:57:04'),
(445, 'Patnitala Police Station', 6, 47, NULL, 1, NULL, NULL, NULL, '2018-07-16 23:57:25', '2018-07-16 23:57:25'),
(446, 'Porsha Police Station', 6, 47, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:01:10', '2018-07-17 00:01:10'),
(447, 'Raninagar Police Station', 6, 47, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:01:44', '2018-07-17 00:01:44'),
(448, 'Shapahar Police Station', 6, 47, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:02:30', '2018-07-17 00:02:30'),
(449, 'Bagatipara Police Station', 6, 48, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:04:32', '2018-07-17 00:04:32'),
(450, 'Baraigram Police Station', 6, 48, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:04:54', '2018-07-17 00:04:54'),
(451, 'Gurudaspur Police Station', 6, 48, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:05:47', '2018-07-17 00:05:47'),
(452, 'Lalpur Police Station', 6, 48, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:06:21', '2018-07-17 00:06:21'),
(453, 'Naldanga Police Station', 6, 48, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:07:07', '2018-07-17 00:07:07'),
(454, 'Natore Police Station', 6, 48, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:07:25', '2018-07-17 00:07:25'),
(455, 'Singra Police Station', 6, 48, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:08:01', '2018-07-17 00:08:01'),
(456, 'Aminpur Police Station', 6, 50, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:24:38', '2018-07-17 00:24:38'),
(457, 'Ataikula Police Station', 6, 50, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:25:01', '2018-07-17 00:25:01'),
(458, 'Atgharia Police Station', 6, 50, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:25:30', '2018-07-17 00:25:30'),
(459, 'Bera Police Station', 6, 50, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:26:01', '2018-07-17 00:26:01'),
(460, 'Bhangura Police Station', 6, 50, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:26:29', '2018-07-17 00:26:29'),
(461, 'Chatmohar Police Station', 6, 50, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:26:52', '2018-07-17 00:26:52'),
(462, 'Faridpur Police Station', 6, 50, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:27:30', '2018-07-17 00:27:30'),
(463, 'Ishwardi Police Station', 6, 50, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:27:50', '2018-07-17 00:27:50'),
(464, 'Pabna Police Station', 6, 50, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:28:05', '2018-07-17 00:28:05'),
(465, 'Santhia Police Station', 6, 50, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:28:49', '2018-07-17 00:28:49'),
(466, 'Sujanagar Police Station', 6, 50, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:29:15', '2018-07-17 00:29:15'),
(467, 'Boalia Police Station (RMP)', 6, 51, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:31:44', '2018-07-17 00:31:44'),
(468, 'Motihar Police Station (RMP)', 6, 51, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:32:10', '2018-07-17 00:32:10'),
(469, 'Rajpara Police Station (RMP)', 6, 51, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:32:37', '2018-07-17 00:32:37'),
(470, 'Shah Mokhdum Police Station (RMP)', 6, 51, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:33:09', '2018-07-17 00:33:09'),
(471, 'Bagha Police Station', 6, 51, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:37:05', '2018-07-17 00:37:05'),
(472, 'Baghmara Police Station', 6, 51, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:37:50', '2018-07-17 00:37:50'),
(473, 'Charghat Police Station', 6, 51, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:38:38', '2018-07-17 00:38:38'),
(474, 'Durgapur Police Station, Rahshahi', 6, 51, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:41:01', '2018-07-17 00:41:01'),
(475, 'Godagari Police Station', 6, 51, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:41:33', '2018-07-17 00:41:33'),
(476, 'Mohanpur Police Station', 6, 51, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:41:50', '2018-07-17 00:41:50'),
(477, 'Paba Police Station', 6, 51, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:42:25', '2018-07-17 00:42:25'),
(478, 'Puthia Police Station', 6, 51, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:42:40', '2018-07-17 00:42:40'),
(479, 'Tanore Police Station', 6, 51, NULL, 1, NULL, NULL, NULL, '2018-07-17 00:43:12', '2018-07-17 00:43:12'),
(480, 'Belkuchi Police Station', 6, 52, NULL, 1, NULL, NULL, NULL, '2018-07-17 02:58:51', '2018-07-17 02:58:51'),
(481, 'Chowhali Police Station', 6, 52, NULL, 1, NULL, NULL, NULL, '2018-07-17 02:59:20', '2018-07-17 02:59:20'),
(482, 'Enayetpur Police Station', 6, 52, NULL, 1, NULL, NULL, NULL, '2018-07-17 02:59:46', '2018-07-17 02:59:46'),
(483, 'Jamuna Bridge West Police Station', 6, 52, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:06:40', '2018-07-17 03:06:40'),
(484, 'Kamar Khanda Police Station', 6, 52, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:07:16', '2018-07-17 03:07:16'),
(485, 'Kazipur Police Station', 6, 52, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:07:33', '2018-07-17 03:07:33'),
(486, 'Raiganj Police Station', 6, 52, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:08:02', '2018-07-17 03:08:02'),
(487, 'Salanga Police Station', 6, 52, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:08:29', '2018-07-17 03:08:29'),
(488, 'Shahjadpur Police Station', 6, 52, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:08:49', '2018-07-17 03:08:49'),
(489, 'Sirajganj Police Station', 6, 52, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:09:07', '2018-07-17 03:09:07'),
(490, 'Tarash Police Station', 6, 52, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:09:34', '2018-07-17 03:09:34'),
(491, 'Ullahpara Police Station', 6, 52, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:09:53', '2018-07-17 03:09:53'),
(492, 'Bholahat Police Station', 6, 49, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:14:16', '2018-07-17 03:14:16'),
(493, 'Chapai Nawabganj Police Station', 6, 49, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:49:46', '2018-07-17 03:49:46'),
(494, 'Gomastapur Police Station', 6, 49, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:50:17', '2018-07-17 03:50:17'),
(495, 'Nachole Police Station', 6, 49, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:50:51', '2018-07-17 03:50:51'),
(496, 'Shibganj Police Station, Chapai Nawabganj', 6, 49, NULL, 1, NULL, NULL, NULL, '2018-07-17 03:52:22', '2018-07-17 03:52:22'),
(497, 'Biral Police Station', 7, 53, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:06:38', '2018-07-17 04:06:38'),
(498, 'Birampur Police Station', 7, 53, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:07:06', '2018-07-17 04:07:06'),
(499, 'Birganj  Police Station', 7, 53, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:07:23', '2018-07-17 04:07:23'),
(500, 'Bochaganj Police Station', 7, 53, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:07:46', '2018-07-17 04:07:46'),
(501, 'Chirirbandar Police Station', 7, 53, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:08:00', '2018-07-17 04:08:00'),
(502, 'Fulbari  Police Station', 7, 53, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:08:19', '2018-07-17 04:08:19'),
(503, 'Ghoraghat Police Station', 7, 53, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:08:37', '2018-07-17 04:08:37'),
(504, 'Hakimpur Police Station', 7, 53, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:09:03', '2018-07-17 04:09:03'),
(505, 'Kaharol Police Station', 7, 53, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:09:35', '2018-07-17 04:09:35'),
(506, 'Khanshama Police Station', 7, 53, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:10:24', '2018-07-17 04:10:24'),
(507, 'Kotwali Police Station, Dinajpur', 7, 53, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:10:51', '2018-07-17 04:10:51'),
(508, 'Nawabganj Police Station', 7, 53, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:11:50', '2018-07-17 04:11:50'),
(509, 'Parbatipur Police Station', 7, 53, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:12:07', '2018-07-17 04:12:07'),
(510, 'Fulchhari Police Station', 7, 54, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:14:57', '2018-07-17 04:14:57'),
(511, 'Gaibandha Police Station', 7, 54, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:15:13', '2018-07-17 04:15:13'),
(512, 'Gobindaganj Police Station', 7, 54, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:15:28', '2018-07-17 04:15:28'),
(513, 'Palashbari Police Station', 7, 54, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:15:43', '2018-07-17 04:15:43'),
(514, 'Sadullapur Police Station', 7, 54, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:15:58', '2018-07-17 04:15:58'),
(515, 'Shaghata Police Station', 7, 54, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:16:12', '2018-07-17 04:16:12'),
(516, 'Sundarganj Police Station', 7, 54, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:22:50', '2018-07-17 04:22:50'),
(517, 'Bhurungamari Police Station', 7, 55, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:24:42', '2018-07-17 04:24:42'),
(518, 'Charjabbar police station', 7, 55, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:24:56', '2018-07-17 04:24:56'),
(519, 'Chilmari Police Station', 7, 55, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:25:12', '2018-07-17 04:25:12'),
(520, 'Dushmara Police Station', 7, 55, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:25:29', '2018-07-17 04:25:29'),
(521, 'Kochakata Police Station', 7, 55, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:25:47', '2018-07-17 04:25:47'),
(522, 'Kurigram Police Station', 7, 55, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:26:26', '2018-07-17 04:26:26'),
(523, 'Nageswari Police Station', 7, 55, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:26:41', '2018-07-17 04:26:41'),
(524, 'Phulbari Police Station', 7, 55, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:26:51', '2018-07-17 04:26:51'),
(525, 'Rajarhat Police Station', 7, 55, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:27:09', '2018-07-17 04:27:09'),
(526, 'Rowmari Police Station', 7, 55, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:27:24', '2018-07-17 04:27:24'),
(527, 'Ulipur Police Station', 7, 55, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:27:37', '2018-07-17 04:27:37'),
(528, 'Aditmari Police Station', 7, 56, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:29:06', '2018-07-17 04:29:06'),
(529, 'Hatibanda Police Station', 7, 56, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:29:24', '2018-07-17 04:29:24'),
(530, 'Kaliganj Police Station', 7, 56, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:29:36', '2018-07-17 04:29:36'),
(531, 'Lalmonirhat Police Station', 7, 56, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:29:47', '2018-07-17 04:29:47'),
(532, 'Patgram Police Station', 7, 56, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:30:05', '2018-07-17 04:30:05'),
(533, 'Dimla Police Station', 7, 57, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:41:31', '2018-07-17 04:41:31'),
(534, 'Domar Police Station', 7, 57, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:42:02', '2018-07-17 04:42:02'),
(535, 'Jaldhaka Police Station', 7, 57, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:42:32', '2018-07-17 04:42:32'),
(536, 'Kishoreganj Police Station, Nilphamari', 7, 57, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:48:11', '2018-07-17 04:48:11'),
(537, 'Nilphamari Police Station', 7, 57, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:48:59', '2018-07-17 04:48:59'),
(538, 'Sayedpur Police Station', 7, 57, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:49:36', '2018-07-17 04:49:36'),
(539, 'Atwari Police Station', 7, 58, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:51:40', '2018-07-17 04:51:40'),
(540, 'Boda Police Station', 7, 58, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:51:58', '2018-07-17 04:51:58'),
(541, 'Debiganj Police Station', 7, 58, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:52:19', '2018-07-17 04:52:19'),
(542, 'Panchagarh Police Station', 7, 58, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:52:40', '2018-07-17 04:52:40'),
(543, 'Tetulia Police Station', 7, 58, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:52:58', '2018-07-17 04:52:58'),
(544, 'Badarganj Police Station', 7, 59, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:55:35', '2018-07-17 04:55:35'),
(545, 'Gangachara Police Station', 7, 59, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:55:50', '2018-07-17 04:55:50'),
(546, 'Kaunia Police Station', 7, 59, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:56:01', '2018-07-17 04:56:01'),
(547, 'Kotwali Police Station, Rangpur', 7, 59, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:56:34', '2018-07-17 04:56:34'),
(548, 'Mitha Pukur Police Station', 7, 59, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:56:56', '2018-07-17 04:56:56'),
(549, 'Pirgacha Police Station', 7, 59, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:57:10', '2018-07-17 04:57:10'),
(550, 'Pirganj Police Station', 7, 59, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:57:26', '2018-07-17 04:57:26'),
(551, 'Taraganj Police Station', 7, 59, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:57:40', '2018-07-17 04:57:40'),
(552, 'Baliadangi Police Station', 7, 60, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:59:28', '2018-07-17 04:59:28'),
(553, 'Haripur Police Station', 7, 60, NULL, 1, NULL, NULL, NULL, '2018-07-17 04:59:45', '2018-07-17 04:59:45'),
(554, 'Pirgonj Police Station', 7, 60, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:00:10', '2018-07-17 05:00:10'),
(555, 'Ranisankail Police Station', 7, 60, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:00:26', '2018-07-17 05:00:26'),
(556, 'Ruhia Police Station', 7, 60, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:00:57', '2018-07-17 05:00:57'),
(557, 'Thakurgaon Police Station', 7, 60, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:01:10', '2018-07-17 05:01:10'),
(558, 'Azmiriganj Police Station', 8, 61, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:06:03', '2018-07-17 05:06:03'),
(559, 'Bahubal Police Station', 8, 61, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:06:27', '2018-07-17 05:06:27'),
(560, 'Baniachong Police Station', 8, 61, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:06:44', '2018-07-17 05:06:44'),
(561, 'Chunarughat Police Station', 8, 61, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:06:59', '2018-07-17 05:06:59'),
(562, 'Habiganj Police Station', 8, 61, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:07:12', '2018-07-17 05:07:12'),
(563, 'Lakhai Police Station', 8, 61, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:07:27', '2018-07-17 05:07:27'),
(564, 'Madhabpur Police Station', 8, 61, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:07:39', '2018-07-17 05:07:39'),
(565, 'Nabiganj Police Station', 8, 61, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:08:00', '2018-07-17 05:08:00'),
(566, 'Shayestaganj Police Station', 8, 61, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:08:13', '2018-07-17 05:08:13'),
(567, 'Barlekha Police Station', 8, 62, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:50:53', '2018-07-17 05:50:53'),
(568, 'Juri Police Station', 8, 62, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:51:12', '2018-07-17 05:51:12'),
(569, 'Kamalganj Police Station', 8, 62, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:51:26', '2018-07-17 05:51:26'),
(570, 'Kulaura Police Station', 8, 62, NULL, 1, 1, NULL, NULL, '2018-07-17 05:52:56', '2018-07-17 05:53:15'),
(571, 'Moulvibazar Police Station', 8, 62, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:53:38', '2018-07-17 05:53:38'),
(572, 'Rajnagar Police Station', 8, 62, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:53:53', '2018-07-17 05:53:53'),
(573, 'Sreemangal Police Station', 8, 62, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:54:33', '2018-07-17 05:54:33'),
(574, 'Biswamvarpur Police Station', 8, 63, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:56:56', '2018-07-17 05:56:56'),
(575, 'Chatak Police Station', 8, 63, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:57:09', '2018-07-17 05:57:09'),
(576, 'Derai Police Station', 8, 63, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:57:23', '2018-07-17 05:57:23'),
(577, 'Dharampasha Police Station', 8, 63, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:57:36', '2018-07-17 05:57:36'),
(578, 'Dowarabazar Police Station', 8, 63, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:57:46', '2018-07-17 05:57:46'),
(579, 'Jagannathpur Police Station', 8, 63, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:58:01', '2018-07-17 05:58:01'),
(580, 'Jamalganj Police Station', 8, 63, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:58:13', '2018-07-17 05:58:13'),
(581, 'Moddhonagar Police Station', 8, 63, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:58:25', '2018-07-17 05:58:25'),
(582, 'South Sunamganj  Police Station', 8, 63, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:58:39', '2018-07-17 05:58:39'),
(583, 'Sulla Police Station', 8, 63, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:58:50', '2018-07-17 05:58:50'),
(584, 'Sunamganj Police Station', 8, 63, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:59:01', '2018-07-17 05:59:01'),
(585, 'Tahirpur Police Station', 8, 63, NULL, 1, NULL, NULL, NULL, '2018-07-17 05:59:16', '2018-07-17 05:59:16'),
(586, 'Airport Police Station (SMP)', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:02:45', '2018-07-17 06:02:45'),
(587, 'Jalalabad Police Station (SMP)', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:03:09', '2018-07-17 06:03:09'),
(588, 'Kotwali Police Station (SMP)', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:03:31', '2018-07-17 06:03:31'),
(589, 'Moglabazar Police Station (SMP)', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:03:49', '2018-07-17 06:03:49'),
(590, 'Shah Paran Police Station (SMP)', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:04:12', '2018-07-17 06:04:12'),
(591, 'South Surma  Police Station (SMP)', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:04:28', '2018-07-17 06:04:28'),
(592, 'Balaganj Police Station', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:05:55', '2018-07-17 06:05:55'),
(593, 'Beani Bazar Police Station', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:06:07', '2018-07-17 06:06:07'),
(594, 'Biswanath Police Station', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:06:19', '2018-07-17 06:06:19'),
(595, 'Companiganj Police Station, Sylhet', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:07:27', '2018-07-17 06:07:27'),
(596, 'Fenchuganj Police Station', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:07:42', '2018-07-17 06:07:42'),
(597, 'Golapganj Police Station', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:08:09', '2018-07-17 06:08:09'),
(598, 'Gowainghat Police Station', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:08:23', '2018-07-17 06:08:23'),
(599, 'Jointiapur Police Station', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:08:36', '2018-07-17 06:08:36'),
(600, 'Jokiganj Police Station', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:08:48', '2018-07-17 06:08:48'),
(601, 'Kanaighat Police Station', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:09:00', '2018-07-17 06:09:00'),
(602, 'Osmani Nagar Police Station', 8, 64, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:09:12', '2018-07-17 06:09:12'),
(603, 'Arai Hazar Police Station', 3, 26, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:10:27', '2018-07-17 06:10:27'),
(604, 'Bandar Police Station', 3, 26, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:10:52', '2018-07-17 06:10:52'),
(605, 'Fatulla  Police Station', 3, 26, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:11:16', '2018-07-17 06:11:16'),
(606, 'Narayanganj Police Station', 3, 26, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:11:40', '2018-07-17 06:11:40'),
(607, 'Rupganj Police Station', 3, 26, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:12:00', '2018-07-17 06:12:00'),
(608, 'Siddhirganj Police Station', 3, 26, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:12:19', '2018-07-17 06:12:19'),
(609, 'Sonargaon Police Station', 3, 26, NULL, 1, NULL, NULL, NULL, '2018-07-17 06:12:35', '2018-07-17 06:12:35');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `previous_price` double(8,2) DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `price`, `previous_price`, `status`, `remarks`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'TARTAR SAUCE', 1, 30.00, 34.50, 'Active', 'After 25 % discount', 1, 1, NULL, NULL, '2021-02-28 05:38:05', '2021-03-23 06:00:26'),
(2, 'SECRET RECIPE FRIED RICE WITH SATAY', 2, 511.75, NULL, 'Active', 'Better', 1, NULL, NULL, NULL, '2021-02-28 05:39:48', '2021-02-28 05:39:48'),
(3, 'BLUEBERRY CHEESE-SLICE', 23, 299.00, NULL, 'Active', 'good', 1, NULL, NULL, NULL, '2021-02-28 05:46:30', '2021-02-28 05:46:30'),
(4, 'BLUEBERRY CHEESE-WHOLE (1.2 KG)', 23, 2990.00, NULL, 'Active', 'best', 1, NULL, NULL, NULL, '2021-02-28 05:50:13', '2021-02-28 05:50:13'),
(5, 'rrrr', 17, 300.00, 330.00, 'Active', '', 1, NULL, NULL, NULL, '2021-03-14 09:02:35', '2021-03-14 09:02:35');

-- --------------------------------------------------------

--
-- Table structure for table `selects`
--

CREATE TABLE `selects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `selects`
--

INSERT INTO `selects` (`id`, `name`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Mail and Order Subject', 'Active', 1, NULL, NULL, NULL, '2020-09-08 05:27:50', '2020-09-08 05:27:50'),
(2, 'Payment Method', 'Active', 1, 1, NULL, NULL, '2020-09-08 05:30:32', '2020-09-17 05:16:13'),
(3, 'Query Type', 'Active', 1, 1, NULL, NULL, '2020-09-17 05:25:56', '2021-03-04 09:32:41'),
(4, 'Order Y/N', 'Active', 1, 1, NULL, NULL, '2020-09-17 05:32:48', '2021-03-04 09:34:04'),
(5, 'Call Remarks', 'Active', 1, 1, NULL, NULL, '2020-09-17 05:38:45', '2021-03-04 09:39:46');

-- --------------------------------------------------------

--
-- Table structure for table `sms_sends`
--

CREATE TABLE `sms_sends` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sms_sends`
--

INSERT INTO `sms_sends` (`id`, `phone_number`, `message`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '01795947421', 'Ticket ID: 1,   Warranty Code:  VEL190512001 , Product Serial : EGL109A547', 'Active', 7, NULL, NULL, NULL, '2019-05-13 07:35:44', '2019-05-13 07:35:44'),
(2, '01844665061', 'Ticket ID: 2,  Warranty Code:  VEL190512002  Product Serial: FCF114A017\r\n', 'Active', 7, NULL, NULL, NULL, '2019-05-13 07:43:59', '2019-05-13 07:43:59'),
(3, '01844666256', 'Ticket ID: 3 , Warranty Code, VEL190512003,  Product Serial, FCF114B113\r\n\r\n', 'Active', 7, NULL, NULL, NULL, '2019-05-13 07:51:02', '2019-05-13 07:51:02');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `customer_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `division_id` int(10) UNSIGNED DEFAULT NULL,
  `district_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_area` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_time` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ticket_status_id` int(10) UNSIGNED NOT NULL,
  `ticket_type_id` int(10) UNSIGNED NOT NULL,
  `assigned_id` int(10) UNSIGNED NOT NULL,
  `cc_to` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_to_id` int(10) UNSIGNED DEFAULT NULL,
  `sv_assigned_id` int(10) UNSIGNED DEFAULT NULL,
  `db_assigned_id` int(10) UNSIGNED DEFAULT NULL,
  `product_model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_detail` varchar(3000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_assigned` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `client_discount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` double(8,2) UNSIGNED DEFAULT NULL,
  `gift` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_status` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `online_payment` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `subject`, `customer_name`, `phone_number`, `division_id`, `district_id`, `customer_address`, `customer_area`, `delivery_status`, `delivery_time`, `ticket_status_id`, `ticket_type_id`, `assigned_id`, `cc_to`, `cc_to_id`, `sv_assigned_id`, `db_assigned_id`, `product_model`, `product_detail`, `area_assigned`, `remarks`, `client_discount`, `total_price`, `gift`, `payment_method`, `payment_status`, `online_payment`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(9, 'Emergency Order', 'sd', '01712345678', NULL, NULL, 'ds', NULL, 'Order confirmed', '5:30 pm, 11/03/2021', 1, 1, 1, '1', 1, NULL, NULL, NULL, '[{\"Id\":1,\"Name\":\"TARTAR SAUCE\",\"Qty\":\"1\",\"Price\":34.5,\"Subtotal\":34.5},{\"Id\":3,\"Name\":\"BLUEBERRY CHEESE-SLICE\",\"Qty\":\"1\",\"Price\":299,\"Subtotal\":299},{\"Id\":4,\"Name\":\"BLUEBERRY CHEESE-WHOLE (1.2 KG)\",\"Qty\":\"1\",\"Price\":2990,\"Subtotal\":2990}]', NULL, 'ddddddddd', NULL, 3323.50, NULL, 'bKash', NULL, NULL, 'Active', 1, NULL, NULL, NULL, '2021-03-09 07:08:35', '2021-03-09 07:08:35'),
(10, 'Emergency Order', 'nnn', '01758214966', NULL, NULL, 'aaa', NULL, 'Order confirmed', '6:30 PM, 11/03/2021', 1, 1, 1, '1', 1, NULL, NULL, NULL, '[{\"Id\":1,\"Name\":\"TARTAR SAUCE\",\"Qty\":\"1\",\"Price\":34.5,\"Subtotal\":34.5},{\"Id\":3,\"Name\":\"BLUEBERRY CHEESE-SLICE\",\"Qty\":\"2\",\"Price\":299,\"Subtotal\":598},{\"Id\":4,\"Name\":\"BLUEBERRY CHEESE-WHOLE (1.2 KG)\",\"Qty\":\"3\",\"Price\":2990,\"Subtotal\":8970}]', NULL, 'gfjhfgjh', NULL, 9602.50, NULL, 'bKash', NULL, NULL, 'Active', 1, NULL, NULL, NULL, '2021-03-11 06:51:15', '2021-03-11 06:51:15');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_details`
--

CREATE TABLE `ticket_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticket_id` int(10) UNSIGNED DEFAULT NULL,
  `ticket_status_id` int(10) UNSIGNED NOT NULL,
  `remarks` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `app_user` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ticket_details`
--

INSERT INTO `ticket_details` (`id`, `ticket_id`, `ticket_status_id`, `remarks`, `app_user`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Remmmmm', NULL, 'Active', 1, NULL, NULL, NULL, '2020-09-15 07:58:26', '2020-09-15 07:58:26'),
(2, 2, 1, 'hhhhh', NULL, 'Active', 1, NULL, NULL, NULL, '2020-09-15 09:41:25', '2020-09-15 09:41:25'),
(3, 3, 1, 'ggggghhh', NULL, 'Active', 1, NULL, NULL, NULL, '2020-09-15 11:06:03', '2020-09-15 11:06:03'),
(4, 4, 1, 'uyiu', NULL, 'Active', 1, NULL, NULL, NULL, '2020-09-15 11:08:07', '2020-09-15 11:08:07'),
(5, 1, 1, 'ghjgh', NULL, 'Active', 1, NULL, NULL, NULL, '2020-09-16 06:56:35', '2020-09-16 06:56:35'),
(6, 2, 1, 'dfy', NULL, 'Active', 1, NULL, NULL, NULL, '2020-09-16 13:49:26', '2020-09-16 13:49:26'),
(7, 3, 1, 'fghfgh', NULL, 'Active', 1, NULL, NULL, NULL, '2020-09-16 13:51:48', '2020-09-16 13:51:48'),
(8, 4, 1, 'fghgf', NULL, 'Active', 1, NULL, NULL, NULL, '2020-09-16 14:03:56', '2020-09-16 14:03:56'),
(9, 5, 1, 'fghfdh', NULL, 'Active', 1, NULL, NULL, NULL, '2020-09-16 15:00:41', '2020-09-16 15:00:41'),
(10, 6, 1, 'Test', NULL, 'Active', 1, NULL, NULL, NULL, '2020-09-17 06:09:42', '2020-09-17 06:09:42'),
(11, 7, 1, 'Testing', NULL, 'Active', 1, NULL, NULL, NULL, '2020-09-17 06:23:26', '2020-09-17 06:23:26'),
(12, 8, 1, 'N/A', NULL, 'Active', 1, NULL, NULL, NULL, '2020-09-17 07:45:46', '2020-09-17 07:45:46'),
(13, 6, 2, 'Assign to: MD Tarajul Islam (Cycle Rider) DOHS Mirpur Outlet', 29, 'Active', 1, NULL, NULL, NULL, '2020-09-23 05:46:57', '2020-09-23 05:46:57'),
(14, 9, 1, 'ddddddddd', NULL, 'Active', 1, NULL, NULL, NULL, '2021-03-09 07:08:35', '2021-03-09 07:08:35'),
(15, 10, 1, 'gfjhfgjh', NULL, 'Active', 1, NULL, NULL, NULL, '2021-03-11 06:51:15', '2021-03-11 06:51:15');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_statuses`
--

CREATE TABLE `ticket_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ticket_statuses`
--

INSERT INTO `ticket_statuses` (`id`, `name`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'New', 'Active', 1, 1, NULL, NULL, '2019-05-27 02:58:13', '2021-03-11 06:30:11'),
(2, 'Feedback Given', 'Active', 1, NULL, NULL, NULL, '2019-05-27 02:58:36', '2019-05-27 02:58:36'),
(3, 'Closed', 'Active', 1, NULL, NULL, NULL, '2019-05-27 02:58:52', '2019-05-27 02:58:52'),
(4, 'Decision Pending', 'Active', 1, NULL, NULL, NULL, '2019-05-27 02:59:04', '2019-05-27 02:59:04'),
(5, 'Cancelled', 'Active', 1, NULL, NULL, NULL, '2019-05-27 02:59:19', '2019-05-27 02:59:19'),
(6, 'Payment', 'Active', 1, NULL, NULL, NULL, '2019-09-22 11:43:16', '2019-09-22 11:43:16');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_types`
--

CREATE TABLE `ticket_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ticket_types`
--

INSERT INTO `ticket_types` (`id`, `name`, `address`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Gulshan 2 Flagship', 'Road # 55, House # 12/B, Ground Floor, Gulshan 2 North Avenue', 'Active', 1, NULL, NULL, NULL, '2021-02-28 06:42:18', '2021-02-28 06:42:18'),
(2, 'Gulshan 2 Circle', 'Babon Market, Ground Floor, Gulshan 2 Circle', 'Active', 1, NULL, NULL, NULL, '2021-02-28 06:42:26', '2021-02-28 06:42:26'),
(3, 'Gulshan 1 Flagship', 'BTI Land Mark, Ground Floor, Road # 28, Gulshan Avenue, Gulshan 1', 'Active', 1, NULL, NULL, NULL, '2021-02-28 06:42:31', '2021-02-28 06:42:31'),
(4, 'Gulshan 1 Express', 'Sayham Tower, Ground Floor, House # 34 Road # 136, SE© 1, Gulshan 1', 'Active', 1, NULL, NULL, NULL, '2021-02-28 06:42:36', '2021-02-28 06:42:36'),
(5, 'Khilgoan Standar Outlet', 'Manama M. W. Heights Ground Floor, 25/B W Malibagh, Dhaka 1219', 'Active', 1, NULL, NULL, NULL, '2021-02-28 06:42:45', '2021-02-28 06:42:45'),
(6, 'Shantinagar Standar Outlet', 'Green Peace Apartment, 41 Chamelibagh, Ground Floor, Dhaka, 1217', 'Active', 1, NULL, NULL, NULL, '2021-02-28 06:42:54', '2021-02-28 06:42:54'),
(7, 'Wari Standar Outlet', '41 AK Famous Tower, Rankin St, Dhaka 1203', 'Active', 1, NULL, NULL, NULL, '2021-02-28 06:54:52', '2021-02-28 06:54:52'),
(8, 'Dhanmondi Flagship', '181/1 (old), 54 (new), Road no. 20 (old 10/A (new), Ground Floor, Dhaka 1205', 'Active', 1, NULL, NULL, NULL, '2021-02-28 06:54:58', '2021-02-28 06:54:58'),
(9, 'SKS Tower Standar Outlet', 'Level 3, Shop 20, SKS Tower, Mohakhali, Dhaka', 'Active', 1, NULL, NULL, NULL, '2021-02-28 06:55:04', '2021-02-28 06:55:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `ticket_type_id` int(10) UNSIGNED DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `depot_app_user` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `status`, `role`, `ticket_type_id`, `phone_number`, `address`, `depot_app_user`, `zone`, `secret`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Mohsin', 'mohsin@myolbd.com', '$2y$10$NDZls3b0kANz8505n5FzGu3bUReNuRgdGQ5GGNPbBqTZt2FBpiFnu', 'J51YpUfPF4RyErVRb8aQuyaT26qxzxbxABqfzsfNgeBQVvObKG1G7zFOYLYE', 'Active', 'ticket_admin', NULL, '01758214966', '', NULL, NULL, 'NjU0MzIx', NULL, 1, NULL, NULL, '2021-01-24 06:38:31', '2021-03-23 07:10:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_users`
--
ALTER TABLE `app_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crms`
--
ALTER TABLE `crms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_statuses`
--
ALTER TABLE `delivery_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts_orig`
--
ALTER TABLE `districts_orig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions_orig`
--
ALTER TABLE `divisions_orig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `police_stations`
--
ALTER TABLE `police_stations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `police_stations_orig`
--
ALTER TABLE `police_stations_orig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selects`
--
ALTER TABLE `selects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_sends`
--
ALTER TABLE `sms_sends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_details`
--
ALTER TABLE `ticket_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_statuses`
--
ALTER TABLE `ticket_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_types`
--
ALTER TABLE `ticket_types`
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
-- AUTO_INCREMENT for table `app_users`
--
ALTER TABLE `app_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `crms`
--
ALTER TABLE `crms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `delivery_statuses`
--
ALTER TABLE `delivery_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `districts_orig`
--
ALTER TABLE `districts_orig`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `divisions_orig`
--
ALTER TABLE `divisions_orig`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `police_stations`
--
ALTER TABLE `police_stations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=611;

--
-- AUTO_INCREMENT for table `police_stations_orig`
--
ALTER TABLE `police_stations_orig`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=610;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `selects`
--
ALTER TABLE `selects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sms_sends`
--
ALTER TABLE `sms_sends`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ticket_details`
--
ALTER TABLE `ticket_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ticket_statuses`
--
ALTER TABLE `ticket_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ticket_types`
--
ALTER TABLE `ticket_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
