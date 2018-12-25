-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 04, 2017 at 06:29 PM
-- Server version: 5.6.37
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `condoa2u_cloud9`
--

-- --------------------------------------------------------

--
-- Table structure for table `c9_comment_suggestion`
--

CREATE TABLE `c9_comment_suggestion` (
  `id` bigint(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `comment_suggestion` varchar(200) DEFAULT NULL,
  `voice` varchar(100) DEFAULT NULL,
  `rating` varchar(5) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c9_comment_suggestion`
--

INSERT INTO `c9_comment_suggestion` (`id`, `user_id`, `name`, `email`, `comment_suggestion`, `voice`, `rating`, `created_at`) VALUES
(1, NULL, 'testing', 'testing@lueinfoservices.com', 'test comment', '2e5aab25be5c5f1d6d14298cef0ae94c.mp3', '3.5', '2017-09-22 10:40:26'),
(2, NULL, 'testing', 'testing@lueinfoservices.com', 'test comment', '82d1badf9b0d54bdbda1780e2931d1a1.mp3', '3.5', '2017-09-22 10:59:56'),
(3, NULL, 'testing', 'testing@lueinfoservices.com', 'test comment', '18d7a61516af91f9d41e66c3a6fa7aff.mp3', '3.5', '2017-09-22 12:01:13'),
(4, NULL, 'Daniel Phan', 'danielpv2@gmail.com', '', NULL, '4.0', '2017-10-02 07:40:18');

-- --------------------------------------------------------

--
-- Table structure for table `c9_event`
--

CREATE TABLE `c9_event` (
  `event_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `image` varchar(100) DEFAULT NULL,
  `event_purpose` varchar(255) DEFAULT NULL,
  `event_date` date NOT NULL,
  `from_time` time NOT NULL,
  `to_time` time NOT NULL,
  `targeted_paxs` varchar(50) DEFAULT NULL,
  `posted_by` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c9_event`
--

INSERT INTO `c9_event` (`event_id`, `title`, `description`, `image`, `event_purpose`, `event_date`, `from_time`, `to_time`, `targeted_paxs`, `posted_by`, `status`, `created_at`) VALUES
(1, 'Food Mega at Merdeka Square', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor i', '2017-09-28', '02:00:00', '05:00:00', '100', 'Lue Infoservices', 1, '2017-09-28 06:18:22'),
(2, 'Collaboration & Launching', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor i', '2017-09-28', '02:00:00', '05:00:00', '100', 'Lue Infoservices', 1, '2017-09-27 22:18:22'),
(3, 'Ladies Night Party', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor i', '2017-09-28', '02:00:00', '05:00:00', '100', 'Lue Infoservices', 1, '2017-09-27 22:18:22'),
(4, 'Buffet Birthday Party', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor i', '2017-09-28', '02:00:00', '05:00:00', '100', 'Lue Infoservices', 1, '2017-09-27 22:18:22'),
(5, 'Food Mega at Merdeka Square', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor i', '2017-09-28', '02:00:00', '05:00:00', '100', 'Lue Infoservices', 1, '2017-09-27 22:18:22'),
(6, 'Food Mega at Merdeka Square', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor i', '2017-09-28', '02:00:00', '05:00:00', '100', 'Lue Infoservices', 1, '2017-09-27 22:18:22'),
(7, 'Food Mega at Merdeka Square', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor i', '2017-09-28', '02:00:00', '05:00:00', '100', 'Lue Infoservices', 1, '2017-09-27 22:18:22'),
(8, 'Food Mega at Merdeka Square', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor i', '2017-09-28', '02:00:00', '05:00:00', '100', 'Lue Infoservices', 1, '2017-09-27 22:18:22'),
(9, 'Food Mega at Merdeka Square', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor i', '2017-09-28', '02:00:00', '05:00:00', '100', 'Lue Infoservices', 1, '2017-09-27 22:18:22'),
(10, 'Food Mega at Merdeka Square', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor i', '2017-09-28', '02:00:00', '05:00:00', '100', 'Lue Infoservices', 1, '2017-09-27 22:18:22');

-- --------------------------------------------------------

--
-- Table structure for table `c9_introducer`
--

CREATE TABLE `c9_introducer` (
  `introducer_id` bigint(20) NOT NULL,
  `introducer_name` varchar(50) DEFAULT NULL,
  `introducer_phone` varchar(100) DEFAULT NULL,
  `qr_code` varchar(50) DEFAULT NULL,
  `qr_image` varchar(50) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c9_introducer`
--

INSERT INTO `c9_introducer` (`introducer_id`, `introducer_name`, `introducer_phone`, `qr_code`, `qr_image`, `is_active`, `created_at`) VALUES
(1, 'test', '89445456758', 'u9N8ycWf', '1271ee8b97d71f6420955fe54f263a477.png', 0, '2017-09-02 07:12:50'),
(2, 'test', '89445556456758', 'ch0ZsULK', '2660a324315d2c38e07f682e4fa0f33d3.png', 0, '2017-09-02 07:16:14'),
(3, 'test', '89456758', 'zAa50WOm', '38441233d019f6a0b85a1f3440b60cf40.png', 0, '2017-09-02 07:19:24'),
(4, 'test', '89424556758', 'PedO7YMG', '46c161163101358a3b9a686bcec9a0053.png', 0, '2017-09-02 07:20:10'),
(5, 'test', '89758', 'nPwhoUjp', '58fcae76cdad12474251df1534543e0a0.png', 0, '2017-09-02 07:24:16'),
(6, 'test', '8973565558', '5xbfHo46daz8WwtThLCY', '670f7195bcac90df24f6ecfdcb5bfdde3.png', 0, '2017-09-02 07:32:36'),
(7, 'test', '89735558', 'YN5TnuFaMVXgIGPsmAzk', '72cbb91631b2093eac5051c652ff250f0.png', 0, '2017-09-02 07:54:55'),
(8, 'test', '8973565555', 'ahQTytjWxJ1dV7INlDSm', '8b1ee8ee419afb405ce6fc6adf8de8dcd.png', 0, '2017-09-02 07:57:17'),
(9, 'test', '89745890', 'N6aML4iQoYKlfXAWjZ8C', '94dfb2f509cce31b2054f30da5fd33e9a.png', 0, '2017-09-02 08:37:25'),
(10, 'test', '8974547890', 'Rg12hOsyceCb5IxTJomn', '10885e601e738be2727569688813491a65.png', 0, '2017-09-02 08:41:46'),
(11, 'test', '8973565525', '3wWdKyzqJkahIlvVmB0A', '111dd5a096e78d0a0470518dac8dc18a91.png', 0, '2017-09-02 08:42:07'),
(12, 'Avikal', '9870754033', 'g7jUV3Z84OtDeMn9Nokh', '1223bf4d6762aa8a24b0af0a23a99ee93e.png', 0, '2017-09-02 08:58:49'),
(13, 'Samrat', '9074120825', 'QupgyZR6j8L0VdIAob2n', '130f2a93a589066789b999ab762626690c.png', 0, '2017-09-02 09:01:00'),
(14, 'Ramesh', '8521477800', 'cmZ8hBUlpt24rSPnofO6', '14515aafe81afccbf815a48c2e62e77061.png', 0, '2017-09-02 09:07:20'),
(15, 'Vijya', '9000000000', 'hsEBkpPiTJ9e6CIKqNdz', '158aa59c5db78abe48802ac4ab17020357.png', 0, '2017-09-02 09:09:44'),
(16, 'test', '588636556', 'CdcPx8yJ6AHosLmv42OQ', '16977e42d936e1e87456c9dfb1d2affdc2.png', 0, '2017-09-02 09:16:16'),
(17, 'test', '89745657890', '32Pm95LOnezRoIkqAhDl', '177266d549f480f0ccbccb295e9544ca8e.png', 0, '2017-09-02 10:40:40'),
(18, 'test', '89757890', 'UL7Z5HDTKcBSyx0e6hIG', '18aa50c9d5c128463b9679f11349bf26ab.png', 0, '2017-09-02 10:42:02'),
(19, 'Ram', '85478088788', 'ud1XI7YWvVU9RTbnQBPe', '19a9774cb3f0c95ca6078bfc95e02713fb.png', 0, '2017-09-02 11:37:17'),
(20, 'Rohan', '8521477750', 'baIpB5VCE0xAtJ1zdZmF', '20d64cd237278af857ec24a6d83e679fd9.png', 0, '2017-09-02 11:40:22'),
(21, 'Raju', '8080808080', 'rRSeq0WwLAOhn3uQsU5b', '2119181a110bdcb3270b97ce8c09966cc9.png', 0, '2017-09-02 11:41:28'),
(22, 'avi', '8804286695', 'SdIfvjxpY3WQ9iuTH6R8', '22493bbf1816be52a465b4d0a6f9cc6f8d.png', 0, '2017-09-06 09:32:03'),
(23, 'RamRaj', '8080821368', 'oPMqZNUVTdRpYAbvuCwf', '23435ec710298d74805ea98cd7adc4f56f.png', 0, '2017-09-08 12:02:44'),
(24, 'Ravish', '1234567890', 'zunV8lFAvLbrTSf7QkdJ', '24092a7dca0ad7273d2b355cbd461e2ce9.png', 0, '2017-09-12 09:51:52'),
(25, 'Avikal', '58858855', 'wfrDiLPMSuBgqmXkcQdK', '255dde223a2213e54106e50dd5a6236c5f.png', 0, '2017-09-12 09:56:17'),
(26, 'Raj', '123456789', '4xBIAOj8ZlUvqFWEi2yH', '260a59595526b20089774873f2b001522d.png', 0, '2017-09-12 10:12:15'),
(27, 'test12', '111111', NULL, NULL, 0, '2017-09-14 12:05:07'),
(28, 'test12', '222222', 'o25PdtkAujfTOMmizKlx', '28a24ec3f7097171f75a1e04873d94bd1c.png', 0, '2017-09-14 12:09:15'),
(29, 'Avikal', '9031387366', 'kh2YBzi6fSaclrANsPKO', '296e52133aad79401512a0c032f390ddad.png', 0, '2017-09-15 04:55:34'),
(30, 'utam', '9835384111', 'LdPUw0auSV69XZ4zl5sy', '30d616af7b6e2c283a55fbc86b967f5173.png', 0, '2017-09-19 06:46:40'),
(31, 'Rani', '9866885889', 'o4YSxQAy50MzghCK1rwB', '3110ff2408dbd5e782901ca6a037c8eb53.png', 0, '2017-09-21 07:23:35'),
(32, 'Daniel Phan', '0123799335', 'QoVIjW3U8f4nTLt7B1pA', '32f263568474bba4f8290b74cc99d42c3a.png', 0, '2017-10-02 07:22:25'),
(33, 'Daniel Phan', '01237993354', 'cdPwiWgAUVCOaJtRQENf', '336b68c2086f4ab08745ffd09e211d5794.png', 0, '2017-10-02 07:22:47'),
(34, 'Whang lee', '8574525896', 'FlXc5LDrnHMCkQ7oYJu8', '34e538eb363fd2a16ba35046148b8af8c7.png', 0, '2017-10-04 06:40:51');

-- --------------------------------------------------------

--
-- Table structure for table `c9_menu`
--

CREATE TABLE `c9_menu` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `special_price` varchar(30) DEFAULT NULL,
  `description` text,
  `image` varchar(500) DEFAULT NULL,
  `calories` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c9_menu`
--

INSERT INTO `c9_menu` (`item_id`, `item_name`, `price`, `special_price`, `description`, `image`, `calories`, `updated_at`, `created_at`, `is_active`) VALUES
(1, 'Spicy Chicken Roast', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'chken.jpg', '480', '2017-09-13 06:28:13', '2017-09-08 11:38:54', 1),
(2, 'Italian buity bufe', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'ital.jpg', '120', '2017-09-08 12:01:07', '2017-09-08 11:51:39', 1),
(3, 'Late night cold cake', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'cake.jpg', '257', '2017-09-08 12:01:17', '2017-09-08 11:52:30', 1),
(4, 'Indian nada cary', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'cary.jpg', '158', '2017-09-08 12:01:27', '2017-09-08 11:52:58', 1),
(5, 'tset', '20.50', '18.34', 'lfgl', 'jk.jpg', '456', '2017-09-13 04:57:13', '2017-09-13 04:57:13', 0),
(6, 'Spicy Sea Food', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'chken.jpg', '480', '2017-09-18 07:22:47', '2017-09-08 03:38:54', 1),
(7, 'Italian buity bufe', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'ital.jpg', '120', '2017-09-08 04:01:07', '2017-09-08 03:51:39', 1),
(8, 'Late night cold cake', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'cake.jpg', '257', '2017-09-08 04:01:17', '2017-09-08 03:52:30', 1),
(9, 'Indian nada cary', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'cary.jpg', '158', '2017-09-08 04:01:27', '2017-09-08 03:52:58', 1),
(10, 'Spicy Fish Biryani', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'chken.jpg', '480', '2017-09-18 07:11:18', '2017-09-08 03:38:54', 1),
(11, 'Italian buity bufe', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'ital.jpg', '120', '2017-09-08 04:01:07', '2017-09-08 03:51:39', 1),
(12, 'Late night cold cake', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'cake.jpg', '257', '2017-09-08 04:01:17', '2017-09-08 03:52:30', 1),
(13, 'Indian nada cary', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'cary.jpg', '158', '2017-09-08 04:01:27', '2017-09-08 03:52:58', 1),
(14, 'Spicy Mutton Biryani', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'chken.jpg', '480', '2017-09-18 07:11:51', '2017-09-08 03:38:54', 1),
(15, 'Italian buity bufe', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'ital.jpg', '120', '2017-09-08 04:01:07', '2017-09-08 03:51:39', 1),
(16, 'Late night cold cake', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'cake.jpg', '257', '2017-09-08 04:01:17', '2017-09-08 03:52:30', 1),
(17, 'Indian nada cary', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'cary.jpg', '158', '2017-09-08 04:01:27', '2017-09-08 03:52:58', 1),
(18, 'Spicy Chicken Biryani', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'chken.jpg', '480', '2017-09-18 07:12:14', '2017-09-08 03:38:54', 1),
(19, 'Italian buity bufe', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'ital.jpg', '120', '2017-09-08 04:01:07', '2017-09-08 03:51:39', 1),
(20, 'Late night cold cake', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'cake.jpg', '257', '2017-09-08 04:01:17', '2017-09-08 03:52:30', 1),
(21, 'Indian nada cary', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'cary.jpg', '158', '2017-09-08 04:01:27', '2017-09-08 03:52:58', 1),
(22, 'Spicy Burger', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'chken.jpg', '480', '2017-09-18 07:13:30', '2017-09-08 03:38:54', 1),
(23, 'Italian buity bufe', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'ital.jpg', '120', '2017-09-08 04:01:07', '2017-09-08 03:51:39', 1),
(24, 'Late night cold cake', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'cake.jpg', '257', '2017-09-08 04:01:17', '2017-09-08 03:52:30', 1),
(25, 'Indian nada cary', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'cary.jpg', '158', '2017-09-08 04:01:27', '2017-09-08 03:52:58', 1),
(26, 'Spicy Dal Fry', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'chken.jpg', '480', '2017-09-18 07:18:32', '2017-09-08 03:38:54', 1),
(27, 'Italian buity bufe', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'ital.jpg', '120', '2017-09-08 04:01:07', '2017-09-08 03:51:39', 1),
(28, 'Late night cold cake', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'cake.jpg', '257', '2017-09-08 04:01:17', '2017-09-08 03:52:30', 1),
(29, 'Indian nada cary', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'cary.jpg', '158', '2017-09-08 04:01:27', '2017-09-08 03:52:58', 1),
(30, 'Spicy Chana ', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'chken.jpg', '480', '2017-09-18 07:15:02', '2017-09-08 03:38:54', 1),
(31, 'Italian buity bufe', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'ital.jpg', '120', '2017-09-08 04:01:07', '2017-09-08 03:51:39', 1),
(32, 'Late night cold cake', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'cake.jpg', '257', '2017-09-08 04:01:17', '2017-09-08 03:52:30', 1),
(33, 'Indian nada cary', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'cary.jpg', '158', '2017-09-08 04:01:27', '2017-09-08 03:52:58', 1),
(34, 'Spicy noodles soup', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'chken.jpg', '480', '2017-09-18 07:15:57', '2017-09-08 03:38:54', 1),
(35, 'Italian buity bufe', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'ital.jpg', '120', '2017-09-08 04:01:07', '2017-09-08 03:51:39', 1),
(36, 'Late night cold cake', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'cake.jpg', '257', '2017-09-08 04:01:17', '2017-09-08 03:52:30', 1),
(37, 'Indian nada cary', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'cary.jpg', '158', '2017-09-08 04:01:27', '2017-09-08 03:52:58', 1),
(38, 'spicy noodles', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'chken.jpg', '480', '2017-09-18 07:16:19', '2017-09-08 03:38:54', 1),
(39, 'Italian buity bufe', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'ital.jpg', '120', '2017-09-08 04:01:07', '2017-09-08 03:51:39', 1),
(40, 'Late night cold cake', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'cake.jpg', '257', '2017-09-08 04:01:17', '2017-09-08 03:52:30', 1),
(41, 'Indian nada cary', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'cary.jpg', '158', '2017-09-08 04:01:27', '2017-09-08 03:52:58', 1),
(42, 'spicy dal tadka', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'chken.jpg', '480', '2017-09-18 07:16:50', '2017-09-08 03:38:54', 1),
(43, 'Italian buity bufe', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'ital.jpg', '120', '2017-09-08 04:01:07', '2017-09-08 03:51:39', 1),
(44, 'Late night cold cake', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'cake.jpg', '257', '2017-09-08 04:01:17', '2017-09-08 03:52:30', 1),
(45, 'Indian nada cary', '45.90', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'cary.jpg', '158', '2017-09-08 04:01:27', '2017-09-08 03:52:58', 1),
(46, 'Italian buity bufe', '24', '34', 'Lorem ipsum dolor sit amet, consectetur adipiscing ', 'cary.jpg', '355', '2017-10-03 09:29:59', '2017-10-03 09:28:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `c9_news_buletin`
--

CREATE TABLE `c9_news_buletin` (
  `post_id` bigint(20) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `image` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c9_news_buletin`
--

INSERT INTO `c9_news_buletin` (`post_id`, `title`, `description`, `image`, `updated_at`, `created_at`) VALUES
(1, 'Newly renovated Cloud 9 Subang Jaya branch will be fully operational soon.', 'Newly renovated Cloud 9 Subang Jaya branch will be fully operational soon.', 'slide1.jpg', '2017-09-04 06:29:56', '2017-09-04 06:29:56'),
(2, 'Speacial Guest appearce - Gordon Ramsey cooking at Cloud9!', 'Speacial Guest appearce - Gordon Ramsey cooking at Cloud9!', 'slide2.jpg', '2017-09-04 06:33:21', '2017-09-04 06:33:09'),
(3, 'Get RM5 off your parking fee during lunch hour at our selected outlets.', 'Get RM5 off your parking fee during lunch hour at our selected outlets.', 'slide3.jpg', '2017-09-04 06:35:38', '2017-09-04 06:35:38');

-- --------------------------------------------------------

--
-- Table structure for table `c9_news_buletin_slideshow`
--

CREATE TABLE `c9_news_buletin_slideshow` (
  `item_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `sort_order` tinyint(6) NOT NULL DEFAULT '0',
  `status` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `c9_news_buletin_slideshow`
--

INSERT INTO `c9_news_buletin_slideshow` (`item_id`, `title`, `image`, `sort_order`, `status`) VALUES
(1, NULL, 'slide1.jpg', 0, 1),
(2, NULL, 'slide2.jpg', 1, 1),
(3, NULL, 'slide3.jpg', 2, 1),
(4, NULL, 'slide4.jpg', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `c9_paid_item`
--

CREATE TABLE `c9_paid_item` (
  `order_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `serial_number` varchar(10) NOT NULL DEFAULT 'CN12312312',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c9_paid_item`
--

INSERT INTO `c9_paid_item` (`order_id`, `user_id`, `item_id`, `serial_number`, `created_at`) VALUES
(1, 6, 2, 'CN12312312', '2017-09-15 11:34:49'),
(2, 6, 1, 'CN12312312', '2017-09-15 11:34:49'),
(3, 6, 4, 'CN12312312', '2017-09-15 11:35:41'),
(4, 6, 3, 'CN12312312', '2017-09-15 11:35:41');

-- --------------------------------------------------------

--
-- Table structure for table `c9_special_promotion`
--

CREATE TABLE `c9_special_promotion` (
  `promotion_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c9_special_promotion`
--

INSERT INTO `c9_special_promotion` (`promotion_id`, `item_id`, `updated_at`, `created_at`) VALUES
(1, 1, '2017-09-08 12:28:34', '2017-09-08 12:28:34'),
(2, 2, '2017-09-08 12:28:55', '2017-09-08 12:28:55'),
(3, 3, '2017-09-08 12:29:12', '2017-09-08 12:29:12'),
(6, 4, '2017-09-11 05:41:40', '2017-09-11 05:41:40'),
(7, 3, '2017-09-12 10:14:54', '2017-09-12 10:14:54'),
(8, 2, '2017-09-12 10:15:24', '2017-09-12 10:15:24'),
(9, 3, '2017-09-19 07:55:32', '2017-09-19 07:55:32'),
(10, 4, '2017-09-19 07:56:04', '2017-09-19 07:55:32'),
(12, 6, '2017-09-27 10:37:53', '2017-09-27 10:37:53'),
(13, 32, '2017-09-27 10:38:17', '2017-09-27 10:38:17'),
(14, 33, '2017-09-27 10:42:11', '2017-09-27 10:42:11'),
(15, 38, '2017-09-27 10:42:11', '2017-09-27 10:42:11'),
(16, 22, '2017-09-28 04:43:34', '2017-09-28 04:43:34'),
(17, 26, '2017-09-28 04:43:49', '2017-09-28 04:43:49'),
(18, 38, '2017-09-28 04:44:02', '2017-09-28 04:44:02'),
(19, 40, '2017-09-28 04:44:10', '2017-09-28 04:44:10'),
(20, 28, '2017-10-03 04:55:47', '2017-10-03 04:55:47'),
(21, 26, '2017-10-03 04:55:47', '2017-10-03 04:55:47'),
(22, 15, '2017-10-03 04:56:26', '2017-10-03 04:56:26'),
(23, 22, '2017-10-03 04:56:26', '2017-10-03 04:56:26'),
(24, 18, '2017-10-04 06:37:56', '2017-10-04 06:37:56'),
(25, 38, '2017-10-04 06:38:07', '2017-10-04 06:38:07'),
(26, 20, '2017-10-04 06:38:24', '2017-10-04 06:38:24'),
(27, 6, '2017-10-04 06:38:24', '2017-10-04 06:38:24');

-- --------------------------------------------------------

--
-- Table structure for table `c9_table_reservation`
--

CREATE TABLE `c9_table_reservation` (
  `reservation_id` bigint(20) NOT NULL,
  `table_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `no_of_people` int(11) DEFAULT NULL,
  `customer_type` enum('smoking','none-smoking','','') DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c9_table_reservation`
--

INSERT INTO `c9_table_reservation` (`reservation_id`, `table_id`, `name`, `email`, `mobile`, `no_of_people`, `customer_type`, `date`, `time`, `created_at`) VALUES
(1, 0, 'test', 'test@lueinfoservices.com', '36757686', 5, 'smoking', '2017-09-21', '12:00:00', '2017-09-21 06:30:40'),
(2, 0, 'test', 'test@lueinfoservices.com', '36757686', 5, 'smoking', '2017-09-21', '12:30:00', '2017-09-21 06:31:59'),
(3, 0, '5', 'vbnmk', '9486956688', 0, '', '2022-09-17', '01:45:00', '2017-09-21 07:16:41'),
(4, 0, '5', 'danielpv2@gmail.com', '0123799335', 0, 'smoking', '2014-10-17', '15:31:00', '2017-10-02 07:32:18'),
(5, 0, '5', 'danielpv2@gmail.com', '0123799335', 0, '', '2006-10-17', '06:30:00', '2017-10-04 06:32:40'),
(6, 0, '5', 'jvjcjvjc', '85589658', 0, '', '2012-10-17', '12:03:00', '2017-10-04 06:33:34'),
(7, 0, '5', 'dndndn', '466464644', 0, '', '2019-10-17', '03:12:00', '2017-10-04 06:43:08'),
(8, 0, 'test', 'test@lueinfoservices.com', '36757686', 5, 'smoking', '2017-09-21', '12:30:00', '2017-10-04 06:50:45'),
(9, 0, '5', 'dndndndn', '4646578784', 0, '', '2020-10-17', '03:23:00', '2017-10-04 06:53:16'),
(10, 0, '6', 'xjjddjdj', '464646', 0, '', '2019-10-17', '03:25:00', '2017-10-04 06:55:17'),
(11, 0, '8', 'jcjcjvjv', '689898686', 0, '', '2004-10-17', '12:34:00', '2017-10-04 07:04:27'),
(12, 0, '5', 'danielpv2@gmail.com', '0123799335', 0, '', '2006-10-17', '06:30:00', '2017-10-04 07:07:33'),
(13, 0, '3', 'Danielpv2@gmail.com', '0123799335', 0, '', '2005-10-17', '06:30:00', '2017-10-04 08:21:42');

-- --------------------------------------------------------

--
-- Table structure for table `c9_user`
--

CREATE TABLE `c9_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `salt` varchar(30) DEFAULT NULL,
  `verification_code` varchar(30) DEFAULT NULL,
  `registration_token` varchar(500) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `home_phone` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `photo` varchar(50) DEFAULT 'user-icon.png',
  `login_status` char(1) DEFAULT 'N',
  `location` varchar(30) DEFAULT NULL,
  `is_blocked` tinyint(4) DEFAULT '0' COMMENT '1-Blocked, 0-Unblocked',
  `is_active` tinyint(4) DEFAULT '0' COMMENT '1-Verified, 0-Unverified'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c9_user`
--

INSERT INTO `c9_user` (`user_id`, `user_name`, `mobile`, `email`, `password`, `salt`, `verification_code`, `registration_token`, `gender`, `home_phone`, `state`, `updated_at`, `created_at`, `photo`, `login_status`, `location`, `is_blocked`, `is_active`) VALUES
(2, 'jun', '25282887567', 'vijya@lueinfoservices.cim', 'f8ef9131a951af5e1a6d168688155642', 'babd616d5', 'a33dae', NULL, NULL, NULL, NULL, '2017-08-30 09:36:21', '2017-08-30 07:36:52', 'user-icon.png', 'N', NULL, 0, 0),
(3, 'avikal', '8804286695', 'avikal@gmail.com', 'b445ad1f8e30482709ae01915e0c5b9b', '4438854f9', '47930c', NULL, NULL, NULL, NULL, '2017-08-30 09:36:26', '2017-08-30 07:48:44', 'user-icon.png', 'N', NULL, 0, 0),
(4, 'Samrat', '8527265715', 'jharitesh6@gmail.com', 'ba499063e631eb3a939938272e3db6b9', '65ae7f51a', 'b8872e', 'TOKEN100', NULL, NULL, NULL, '2017-08-30 10:42:39', '2017-08-30 08:51:09', 'user-icon.png', 'N', NULL, 0, 0),
(6, 'Ritesh', '64565465', 'test@lueinfoservices.com', '45cb52bdb145bf116907eec2064bf69f', 'a3eb9a7aa', '527ad9', NULL, 'Male', 'Patuaha', 'Bihar', '2017-09-12 10:11:38', '2017-08-30 09:08:56', '6_b7b4f5dfb6aa0e3af6ba24cc19c6fd80.jpg', 'Y', NULL, 0, 1),
(7, 'fghjhj', '89059078586', 'shashisagar125@gmail.com', '26f084a1864fdfdc92049a6a3aa494b3', 'fe3cc77a7', '4fe6e5', 'TOKEN100', NULL, NULL, NULL, '2017-08-30 09:43:49', '2017-08-30 09:20:35', 'user-icon.png', 'N', NULL, 0, 0),
(20, 'avikalprakash', '8804286695', 'avikalprakash@gmail.com', '857546ab2100468285a2c6f3ac09fb38', '50f15b8e0', 'fefc5a', NULL, NULL, NULL, NULL, '2017-09-06 09:31:46', '2017-09-06 09:31:20', 'user-icon.png', 'Y', NULL, 0, 0),
(21, 'test', '556564565465', 'omprakash@lueinfoservices.com', '17506391e9f3b16587ed9bbc7d5fa668', '4ba7a6b68', 'cb9f3f', 'TOKEN100', 'male', '565656566', 'bihar', '2017-09-19 07:09:19', '2017-09-14 11:45:11', '21_f3130ec1429cea5f84e0b20364ff552a.jpg', 'Y', NULL, 0, 1),
(22, 'rj123', '7982038746', 'ritesh@lueinfoservices.com', '3984cb502d5f25511cc386b57bf78422', 'e6d11c955', '62eaab', 'TOKEN100', NULL, NULL, NULL, '2017-09-28 05:28:42', '2017-09-19 06:44:49', 'user-icon.png', 'Y', NULL, 0, 0),
(23, 'danielpv2', '0123799335', 'danielpv2@gmail.com', '29a90b39d3b5fbdbe55493cb6bff3fa9', '7e2629407', '1b8717', NULL, 'Male', '0356231111', 'Selangor', '2017-10-02 07:44:48', '2017-09-28 05:13:08', '23_c4a6ee0124f83172625c8c2122a24e1d.jpg', 'Y', NULL, 0, 1),
(24, 'mercuryz', '018312260', 'daniel@shopeera2u.com', 'f2007f664e4f62c6871912b3b673a3e2', '4948b6c21', '0a73cf', 'TOKEN100', NULL, NULL, NULL, '2017-10-02 07:15:02', '2017-09-28 05:24:53', 'user-icon.png', 'N', NULL, 0, 0),
(39, 'mercury', '0183122660', 'daniel@dbconcepts2u.com', 'e7f0855fc3563c6b2fc68bfb28f4d357', 'b00fa6fcc', '0716a7', NULL, 'Male', '0356312222', 'Selangor', '2017-10-02 07:46:38', '2017-10-02 07:18:29', '39_051004c1f1e1521b3a0d0181cbb631ff.jpg', 'Y', NULL, 0, 1),
(40, 'nvmcn', '5576767', 'hxhxhcjc63@gmail.com', 'a37728a522f714f1bc46862d9ff2e795', '5adbd9ca9', 'd48041', NULL, NULL, NULL, NULL, '2017-10-03 11:39:36', '2017-10-03 11:39:35', 'user-icon.png', 'N', NULL, 0, 0),
(41, 'gigjg', '653565', 'jgjviv58@hnao.com', '43b28f6054b7ff3fe176420798397dea', '841f3f943', '2f59bd', NULL, NULL, NULL, NULL, '2017-10-03 11:41:21', '2017-10-03 11:41:20', 'user-icon.png', 'N', NULL, 0, 0),
(42, 'jfjchc', '356868', 'dhchcjc', 'b123714ffe36808f6a4dd8e68c29e6ff', 'a521a9aa0', NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-03 11:45:24', 'user-icon.png', 'N', NULL, 0, 0),
(45, 'jfjchcugugig', '35686866535', 'dhchcfxgchjc@65gmail.com', '90d69e61cb2de2d4923bd801071e8104', '1c483d91d', '7b1df5', NULL, NULL, NULL, NULL, '2017-10-03 11:45:51', '2017-10-03 11:45:51', 'user-icon.png', 'N', NULL, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `c9_comment_suggestion`
--
ALTER TABLE `c9_comment_suggestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c9_event`
--
ALTER TABLE `c9_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `c9_introducer`
--
ALTER TABLE `c9_introducer`
  ADD PRIMARY KEY (`introducer_id`),
  ADD UNIQUE KEY `qr_code` (`qr_code`);

--
-- Indexes for table `c9_menu`
--
ALTER TABLE `c9_menu`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `c9_news_buletin`
--
ALTER TABLE `c9_news_buletin`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `c9_news_buletin_slideshow`
--
ALTER TABLE `c9_news_buletin_slideshow`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `c9_paid_item`
--
ALTER TABLE `c9_paid_item`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FK_USER_ID` (`user_id`),
  ADD KEY `FK_ITEM_ID_PAID` (`item_id`);

--
-- Indexes for table `c9_special_promotion`
--
ALTER TABLE `c9_special_promotion`
  ADD PRIMARY KEY (`promotion_id`),
  ADD KEY `FK_ITEM_ID` (`item_id`) USING BTREE;

--
-- Indexes for table `c9_table_reservation`
--
ALTER TABLE `c9_table_reservation`
  ADD PRIMARY KEY (`reservation_id`);

--
-- Indexes for table `c9_user`
--
ALTER TABLE `c9_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `c9_comment_suggestion`
--
ALTER TABLE `c9_comment_suggestion`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `c9_event`
--
ALTER TABLE `c9_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `c9_introducer`
--
ALTER TABLE `c9_introducer`
  MODIFY `introducer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `c9_menu`
--
ALTER TABLE `c9_menu`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `c9_news_buletin`
--
ALTER TABLE `c9_news_buletin`
  MODIFY `post_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `c9_news_buletin_slideshow`
--
ALTER TABLE `c9_news_buletin_slideshow`
  MODIFY `item_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `c9_paid_item`
--
ALTER TABLE `c9_paid_item`
  MODIFY `order_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `c9_special_promotion`
--
ALTER TABLE `c9_special_promotion`
  MODIFY `promotion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `c9_table_reservation`
--
ALTER TABLE `c9_table_reservation`
  MODIFY `reservation_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `c9_user`
--
ALTER TABLE `c9_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `c9_paid_item`
--
ALTER TABLE `c9_paid_item`
  ADD CONSTRAINT `FK_ITEM_ID_PAID` FOREIGN KEY (`item_id`) REFERENCES `c9_menu` (`item_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `c9_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `c9_special_promotion`
--
ALTER TABLE `c9_special_promotion`
  ADD CONSTRAINT `fk_item_id` FOREIGN KEY (`item_id`) REFERENCES `c9_menu` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
