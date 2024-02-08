-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 25, 2023 at 09:24 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `climate_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add my user', 6, 'add_myuser'),
(22, 'Can change my user', 6, 'change_myuser'),
(23, 'Can delete my user', 6, 'delete_myuser'),
(24, 'Can view my user', 6, 'view_myuser'),
(25, 'Can add image_c', 7, 'add_image_c'),
(26, 'Can change image_c', 7, 'change_image_c'),
(27, 'Can delete image_c', 7, 'delete_image_c'),
(28, 'Can view image_c', 7, 'view_image_c'),
(29, 'Can add profile', 8, 'add_profile'),
(30, 'Can change profile', 8, 'change_profile'),
(31, 'Can delete profile', 8, 'delete_profile'),
(32, 'Can view profile', 8, 'view_profile');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session'),
(6, 'userapp', 'myuser'),
(7, 'userapp', 'image_c'),
(8, 'userapp', 'profile');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'userapp', '0001_initial', '2023-02-24 06:16:23.680596'),
(2, 'contenttypes', '0001_initial', '2023-02-24 06:16:38.190752'),
(3, 'admin', '0001_initial', '2023-02-24 06:16:38.428558'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-02-24 06:16:38.431859'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-02-24 06:16:38.436387'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-02-24 06:16:38.539651'),
(7, 'auth', '0001_initial', '2023-02-24 06:16:39.025996'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-02-24 06:16:39.088260'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-02-24 06:16:39.093223'),
(10, 'auth', '0004_alter_user_username_opts', '2023-02-24 06:16:39.099314'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-02-24 06:16:39.106357'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-02-24 06:16:39.108546'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-02-24 06:16:39.113627'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-02-24 06:16:39.120591'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-02-24 06:16:39.125972'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-02-24 06:16:39.168642'),
(17, 'auth', '0011_update_proxy_permissions', '2023-02-24 06:16:39.175638'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-02-24 06:16:39.179638'),
(19, 'sessions', '0001_initial', '2023-02-24 06:16:39.278803'),
(20, 'userapp', '0002_image_c_video_alter_image_c_image', '2023-02-24 10:27:07.740797'),
(21, 'userapp', '0003_image_c_status', '2023-02-24 11:10:19.036500'),
(22, 'userapp', '0004_image_c_vid', '2023-02-24 11:19:37.596317');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forget_password`
--

DROP TABLE IF EXISTS `forget_password`;
CREATE TABLE IF NOT EXISTS `forget_password` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `forget_token` varchar(1000) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forget_password`
--

INSERT INTO `forget_password` (`id`, `forget_token`, `user_id`) VALUES
(1, '8c970ad3-2e38-4368-98ce-9c1164cd28cd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `image_convert`
--

DROP TABLE IF EXISTS `image_convert`;
CREATE TABLE IF NOT EXISTS `image_convert` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `vid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image_convert`
--

INSERT INTO `image_convert` (`id`, `image`, `video`, `status`, `vid`) VALUES
(1, 'image/fog3.jpg', NULL, NULL, NULL),
(2, 'image_convert/fog3.jpg', NULL, NULL, NULL),
(3, 'image_convert/fog3_RUIhEuT.jpg', NULL, NULL, NULL),
(4, 'image_convert/fog3_RUIhEuT_mRpyeuf.jpg', NULL, NULL, NULL),
(5, 'image_convert/fog2.jpg', NULL, NULL, NULL),
(6, 'image_convert/fog2_QeHATzb.jpg', NULL, NULL, NULL),
(7, 'image_convert/fog2_U7zw0YX.jpg', NULL, NULL, NULL),
(8, 'image_convert/fog2_5jMwd6w.jpg', NULL, NULL, NULL),
(9, 'image_convert/fog2_fUrxNNp.jpg', NULL, NULL, NULL),
(10, 'image_convert/fog2_4P69sb1.jpg', NULL, NULL, NULL),
(11, 'image_convert/fog2_rMGw2Mo.jpg', NULL, NULL, NULL),
(12, 'image_convert/fog4.jpg', NULL, NULL, NULL),
(13, 'image_convert/fog5.jpg', NULL, NULL, NULL),
(14, 'image_convert/fog6.jpg', NULL, NULL, NULL),
(15, 'image_convert/fog7.jpg', NULL, NULL, NULL),
(16, 'image_convert/test.mp4', NULL, NULL, NULL),
(17, 'image_convert/fog2_TFbqlDi.jpg', NULL, NULL, NULL),
(18, '', 'test.jpg', NULL, NULL),
(19, '', 'test.jpg', NULL, NULL),
(20, '', 'test738.jpg', NULL, NULL),
(21, '', 'test543.jpg', NULL, NULL),
(22, '', 'test672.jpg', NULL, NULL),
(23, '', 'test12540.jpg', 'video', NULL),
(24, '', 'Camera_Recording_-_15_February_2023_TcG1AR6756.jpg', 'video', NULL),
(25, '', 'Camera_Recording_-_15_February_2023_TcG1AR6159.jpg', 'video', 'image_convert/Camera_Recording_-_15_February_2023_TcG1AR6.mp4'),
(26, '', NULL, NULL, 'image_convert/test12.mp4'),
(27, '', NULL, NULL, 'image_convert/test12_KJcMSF7.mp4'),
(28, '', 'test12771.jpg', 'video', 'image_convert/test12_ixn9svn.mp4'),
(29, '', 'test12797.jpg', 'video', 'image_convert/test12_UT9KibZ.mp4'),
(30, '', 'test12806.jpg', 'video', 'image_convert/test12_ysMYPEs.mp4'),
(31, '', 'test12452.jpg', 'video', 'image_convert/test12_rycd0Fa.mp4'),
(32, 'image_convert/fog2_gebxAZz.jpg', NULL, 'image', ''),
(33, '', 'test12277.jpg', 'video', 'image_convert/test12_cl7zws0.mp4'),
(34, 'image_convert/fog3_CKipmEu.jpg', NULL, 'image', ''),
(35, '', 'Pexels Videos 1405527780.jpg', 'video', 'image_convert/Pexels_Videos_1405527.mp4'),
(36, 'image_convert/snow.jpg', NULL, 'image', ''),
(37, 'image_convert/rain.jpg', NULL, 'image', ''),
(38, 'image_convert/rain2.jpg', NULL, 'image', ''),
(39, 'image_convert/rain3.jpg', NULL, 'image', ''),
(40, 'image_convert/snow2.jpg', NULL, 'image', ''),
(41, 'image_convert/rain3_xdA3yMC.jpg', NULL, 'image', ''),
(42, '', 'Pexels Videos 1405527850.jpg', 'video', 'image_convert/Pexels_Videos_1405527_AYF7CS7.mp4'),
(43, 'image_convert/snow_qRgy7nc.jpg', NULL, 'image', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `Full Name` varchar(100) NOT NULL,
  `Contact` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Profile Picture` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `password`, `last_login`, `email`, `Full Name`, `Contact`, `City`, `Profile Picture`, `is_active`, `is_admin`) VALUES
(1, 'pbkdf2_sha256$390000$klY3zAkphp7Uc3Iqz00Fo7$FgrtLlimDNDncaiq7makFHPgm3xfzyPieXNpCGGZVHQ=', '2023-02-25 09:20:39.461787', 'harshavardhan.hv12@gmail.com', 'harsha vardhan', '+919618294480', 'hyderabad', 'images/test4.jpg', 1, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
