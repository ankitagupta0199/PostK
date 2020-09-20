-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 04, 2019 at 01:23 PM
-- Server version: 5.7.26-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `postkrdedjango`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add user', 2, 'add_user'),
(6, 'Can change user', 2, 'change_user'),
(7, 'Can delete user', 2, 'delete_user'),
(8, 'Can view user', 2, 'view_user'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add register', 7, 'add_register'),
(26, 'Can change register', 7, 'change_register'),
(27, 'Can delete register', 7, 'delete_register'),
(28, 'Can view register', 7, 'view_register'),
(29, 'Can add addcat', 8, 'add_addcat'),
(30, 'Can change addcat', 8, 'change_addcat'),
(31, 'Can delete addcat', 8, 'delete_addcat'),
(32, 'Can view addcat', 8, 'view_addcat'),
(33, 'Can add addsubcat', 9, 'add_addsubcat'),
(34, 'Can change addsubcat', 9, 'change_addsubcat'),
(35, 'Can delete addsubcat', 9, 'delete_addsubcat'),
(36, 'Can view addsubcat', 9, 'view_addsubcat'),
(37, 'Can add addpost', 10, 'add_addpost'),
(38, 'Can change addpost', 10, 'change_addpost'),
(39, 'Can delete addpost', 10, 'delete_addpost'),
(40, 'Can view addpost', 10, 'view_addpost'),
(41, 'Can add payment', 11, 'add_payment'),
(42, 'Can change payment', 11, 'change_payment'),
(43, 'Can delete payment', 11, 'delete_payment'),
(44, 'Can view payment', 11, 'view_payment'),
(45, 'Can add city', 12, 'add_city'),
(46, 'Can change city', 12, 'change_city'),
(47, 'Can delete city', 12, 'delete_city'),
(48, 'Can view city', 12, 'view_city'),
(49, 'Can add state', 13, 'add_state'),
(50, 'Can change state', 13, 'change_state'),
(51, 'Can delete state', 13, 'delete_state'),
(52, 'Can view state', 13, 'view_state'),
(53, 'Can add bidding', 14, 'add_bidding'),
(54, 'Can change bidding', 14, 'change_bidding'),
(55, 'Can delete bidding', 14, 'delete_bidding'),
(56, 'Can view bidding', 14, 'view_bidding');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(2, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'myadmin', 'addcat'),
(9, 'myadmin', 'addsubcat'),
(12, 'myapp', 'city'),
(7, 'myapp', 'register'),
(13, 'myapp', 'state'),
(6, 'sessions', 'session'),
(10, 'user', 'addpost'),
(14, 'user', 'bidding'),
(11, 'user', 'payment');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-04-11 08:44:49.376826'),
(2, 'auth', '0001_initial', '2019-04-11 08:44:57.716159'),
(3, 'admin', '0001_initial', '2019-04-11 08:44:59.951096'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-04-11 08:45:00.024574'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-04-11 08:45:00.074121'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-04-11 08:45:01.155722'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-04-11 08:45:01.279227'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-04-11 08:45:01.412066'),
(9, 'auth', '0004_alter_user_username_opts', '2019-04-11 08:45:01.466464'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-04-11 08:45:02.036063'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-04-11 08:45:02.076775'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-04-11 08:45:02.123991'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-04-11 08:45:02.239964'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-04-11 08:45:02.352341'),
(15, 'myadmin', '0001_initial', '2019-04-11 08:45:02.664512'),
(16, 'myadmin', '0002_addsubcat', '2019-04-11 08:45:02.978365'),
(17, 'myapp', '0001_initial', '2019-04-11 08:45:03.286916'),
(18, 'sessions', '0001_initial', '2019-04-11 08:45:03.813095'),
(19, 'user', '0001_initial', '2019-04-15 09:50:41.346572'),
(20, 'user', '0002_payment', '2019-04-19 10:07:45.597894'),
(21, 'myapp', '0002_city_state', '2019-04-22 09:56:48.028951'),
(22, 'user', '0003_bidding', '2019-04-24 10:07:34.857633');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2jraxgnnxfsufn75ae0pmmaev7hgrum1', 'N2EyZmM2MTgwOTVjMGZhOTAwNzhiZGY0MDM2MzAzZTk2MjhiNmVlMjp7InN1bm0iOm51bGwsImFkc2lkIjoiMiIsInNyb2xlIjpudWxsfQ==', '2019-05-04 09:01:27.677571'),
('barsfucqgdb8tdfgv9f325ehdojdjy2p', 'ZTdjZTIxNjliNDQwODdjYjQ2OTliMDIzYTZkMGE0YTMzYzBiNDUyNTp7InNyb2xlIjpudWxsLCJzdW5tIjpudWxsfQ==', '2019-05-04 09:52:01.883179'),
('ecq9no848zm7la7ejy85t56o6cwuy3vc', 'ZTdjZTIxNjliNDQwODdjYjQ2OTliMDIzYTZkMGE0YTMzYzBiNDUyNTp7InNyb2xlIjpudWxsLCJzdW5tIjpudWxsfQ==', '2019-05-09 09:05:30.887815'),
('eu4nevgdqcbcey7fp4ey45ffz8az5uzy', 'NGQ0NWUwMTY3ZTJmNGRmNWIwNjJjYjRkNWVhNTE0N2RhOGNiMjAzOTp7InNyb2xlIjoidXNlciIsInN1bm0iOiJwaHBiYXRjaDM0QGdtYWlsLmNvbSJ9', '2019-05-08 09:38:58.892003'),
('gl77xcunh4rgn8rurntenn36hyhvqdo9', 'N2I4MGQ3YTE0YzFhZGM4ZWFmY2RhMGE2OTEzZGFiMmE5ZGRkYjM3Mzp7InN1bm0iOm51bGwsInNyb2xlIjpudWxsfQ==', '2019-04-29 08:10:36.249560'),
('kswroftbrlpv5n4jjk67b1tcb3t4snqt', 'ZTdjZTIxNjliNDQwODdjYjQ2OTliMDIzYTZkMGE0YTMzYzBiNDUyNTp7InNyb2xlIjpudWxsLCJzdW5tIjpudWxsfQ==', '2019-04-27 10:11:06.825383'),
('mpatacbkhk1f5u2cjec2cu7mqcvt5586', 'NTg2NTZiZGJlNzA4YTcyODE5NTg3ZmVhOWM5MGEwYzkwMzUyYmYzYjp7InN1bm0iOiJwaHBiYXRjaDM0QGdtYWlsLmNvbSIsInNyb2xlIjoidXNlciJ9', '2019-05-09 09:06:22.231383'),
('to79b6sk76poeme7qf92aogaypc6bynd', 'ZWMyMzU0MWZmMTE0YzJkMDZkNDFlMWQ4NWJhZDc0N2M0MWYxNTUyZDp7InNyb2xlIjpudWxsLCJ0ZXN0Y29va2llIjoid29ya2VkIiwic3VubSI6bnVsbH0=', '2019-05-04 09:43:06.495499'),
('ubjig57bqe83mviffpoz999mi2aq4tfb', 'ZTdjZTIxNjliNDQwODdjYjQ2OTliMDIzYTZkMGE0YTMzYzBiNDUyNTp7InNyb2xlIjpudWxsLCJzdW5tIjpudWxsfQ==', '2019-05-04 09:51:31.664365');

-- --------------------------------------------------------

--
-- Table structure for table `myadmin_addcat`
--

CREATE TABLE `myadmin_addcat` (
  `catid` int(11) NOT NULL,
  `catnm` varchar(50) NOT NULL,
  `caticon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myadmin_addcat`
--

INSERT INTO `myadmin_addcat` (`catid`, `catnm`, `caticon`) VALUES
(1, 'Vehicles', 'v_XqsRnCR.png'),
(2, 'Pets', 'picon.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `myadmin_addsubcat`
--

CREATE TABLE `myadmin_addsubcat` (
  `subcatid` int(11) NOT NULL,
  `subcatnm` varchar(50) NOT NULL,
  `catnm` varchar(50) NOT NULL,
  `subcaticon` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myadmin_addsubcat`
--

INSERT INTO `myadmin_addsubcat` (`subcatid`, `subcatnm`, `catnm`, `subcaticon`) VALUES
(1, 'Bike', 'Vehicles', 'v_sflsdUC.png'),
(2, 'Dogs', 'Pets', 'pet.png'),
(3, 'Cats', 'Pets', 'cat_RR0WlfI.png');

-- --------------------------------------------------------

--
-- Table structure for table `myapp_city`
--

CREATE TABLE `myapp_city` (
  `cid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `cnm` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myapp_city`
--

INSERT INTO `myapp_city` (`cid`, `sid`, `cnm`) VALUES
(1, 1, 'Indore'),
(2, 1, 'Bhopal'),
(3, 1, 'Ujjain'),
(4, 1, 'Jabalpur'),
(5, 2, 'Mumbai'),
(6, 2, 'Pune'),
(7, 2, 'Nasik'),
(8, 3, 'Jaipur'),
(9, 3, 'Udaipur'),
(10, 4, 'Allahbad');

-- --------------------------------------------------------

--
-- Table structure for table `myapp_register`
--

CREATE TABLE `myapp_register` (
  `regid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `city` varchar(10) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myapp_register`
--

INSERT INTO `myapp_register` (`regid`, `name`, `email`, `password`, `address`, `city`, `mobile`, `dob`, `gender`, `role`, `status`) VALUES
(1, 'vilekhada', 'adawadkarvilekh@gmail.com', '123', 'rambagh indore mp', 'Indore', '9111117109', '1994-03-10', 'male', 'user', 1),
(2, 'admin', 'admin@gmail.com', '12345', '', '', '', '', '', 'admin', 1),
(3, 'phpbatch34', 'phpbatch34@gmail.com', '123', 'indore mp', 'Indore', '9111117107', '2019-04-24', 'male', 'user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `myapp_state`
--

CREATE TABLE `myapp_state` (
  `sid` int(11) NOT NULL,
  `snm` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myapp_state`
--

INSERT INTO `myapp_state` (`sid`, `snm`) VALUES
(1, 'MP'),
(2, 'MH'),
(3, 'RJ'),
(4, 'UP'),
(5, 'Bihar');

-- --------------------------------------------------------

--
-- Table structure for table `user_addpost`
--

CREATE TABLE `user_addpost` (
  `adsid` int(11) NOT NULL,
  `uid` varchar(100) NOT NULL,
  `adstitle` varchar(100) NOT NULL,
  `adssubcat` varchar(50) NOT NULL,
  `adsdescription` varchar(100) NOT NULL,
  `adsprice` varchar(100) NOT NULL,
  `file1` varchar(100) NOT NULL,
  `file2` varchar(100) NOT NULL,
  `file3` varchar(100) NOT NULL,
  `file4` varchar(100) NOT NULL,
  `adscity` varchar(50) NOT NULL,
  `bstatus` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_addpost`
--

INSERT INTO `user_addpost` (`adsid`, `uid`, `adstitle`, `adssubcat`, `adsdescription`, `adsprice`, `file1`, `file2`, `file3`, `file4`, `adscity`, `bstatus`, `status`) VALUES
(1, 'adawadkarvilekh@gmail.com', 'want to sell a bike', 'Bike', 'bike in good condition', '2000', 'img3.jpeg', 'img1.jpeg', 'logo.png', 'logo.png', 'Indore', 1, 1),
(2, 'adawadkarvilekh@gmail.com', 'sell dog', 'Dogs', 'good breed available', '500', 'pet_lKutuIS.png', 'picon_jzImrkc.jpeg', 'logo.png', 'logo.png', 'Indore', 0, 1),
(3, 'adawadkarvilekh@gmail.com', 'good breed dog for sell', 'Dogs', 'selling at fair price', '2000', 'img3_Uz9saWA.jpeg', 'logo.png', 'img_GofACkM.png', 'logo.png', 'Ujjain', 0, 1),
(4, 'adawadkarvilekh@gmail.com', 'sell dog', 'Dogs', 'good breed dog', '500', 'pet_gGyHXHT.png', 'logo.png', 'logo.png', 'logo.png', 'Indore', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_bidding`
--

CREATE TABLE `user_bidding` (
  `bidid` int(11) NOT NULL,
  `uid` varchar(100) NOT NULL,
  `adsid` int(11) NOT NULL,
  `nprice` varchar(50) NOT NULL,
  `btime` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_payment`
--

CREATE TABLE `user_payment` (
  `txnid` int(11) NOT NULL,
  `uid` varchar(100) NOT NULL,
  `adsid` varchar(100) NOT NULL,
  `adsprice` varchar(100) NOT NULL,
  `ptime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_payment`
--

INSERT INTO `user_payment` (`txnid`, `uid`, `adsid`, `adsprice`, `ptime`) VALUES
(1, 'adawadkarvilekh@gmail.com', '2', '500', '19/04/2019,10:09:07,Friday');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `myadmin_addcat`
--
ALTER TABLE `myadmin_addcat`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `myadmin_addsubcat`
--
ALTER TABLE `myadmin_addsubcat`
  ADD PRIMARY KEY (`subcatid`);

--
-- Indexes for table `myapp_city`
--
ALTER TABLE `myapp_city`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `myapp_register`
--
ALTER TABLE `myapp_register`
  ADD PRIMARY KEY (`regid`);

--
-- Indexes for table `myapp_state`
--
ALTER TABLE `myapp_state`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `user_addpost`
--
ALTER TABLE `user_addpost`
  ADD PRIMARY KEY (`adsid`);

--
-- Indexes for table `user_bidding`
--
ALTER TABLE `user_bidding`
  ADD PRIMARY KEY (`bidid`);

--
-- Indexes for table `user_payment`
--
ALTER TABLE `user_payment`
  ADD PRIMARY KEY (`txnid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `myadmin_addcat`
--
ALTER TABLE `myadmin_addcat`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `myadmin_addsubcat`
--
ALTER TABLE `myadmin_addsubcat`
  MODIFY `subcatid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `myapp_city`
--
ALTER TABLE `myapp_city`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `myapp_register`
--
ALTER TABLE `myapp_register`
  MODIFY `regid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `myapp_state`
--
ALTER TABLE `myapp_state`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_addpost`
--
ALTER TABLE `user_addpost`
  MODIFY `adsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_bidding`
--
ALTER TABLE `user_bidding`
  MODIFY `bidid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_payment`
--
ALTER TABLE `user_payment`
  MODIFY `txnid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
