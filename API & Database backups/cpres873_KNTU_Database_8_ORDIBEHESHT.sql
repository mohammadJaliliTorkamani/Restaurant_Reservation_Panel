-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 27, 2020 at 09:21 AM
-- Server version: 5.6.47
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cpres873_KNTU_Database`
--

-- --------------------------------------------------------

--
-- Table structure for table `ActivationCode`
--

CREATE TABLE `ActivationCode` (
  `id` int(11) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `pusheID` text NOT NULL,
  `activationCode` varchar(6) NOT NULL,
  `DateTime` varchar(19) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Address`
--

CREATE TABLE `Address` (
  `id` int(11) NOT NULL,
  `country` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `state` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `city` text CHARACTER SET utf8,
  `street1` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `street2` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `alley1` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `alley2` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `block` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `floor` int(11) NOT NULL,
  `unit` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `orientation` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `x` double NOT NULL DEFAULT '0',
  `y` double NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Address`
--

INSERT INTO `Address` (`id`, `country`, `state`, `city`, `street1`, `street2`, `alley1`, `alley2`, `block`, `floor`, `unit`, `orientation`, `x`, `y`) VALUES
(1, 'ایران', 'تهران', 'تهران', 'اقدسیه', NULL, NULL, NULL, 'سه', 5, '6', NULL, 35.7277418, 51.4926946),
(2, 'ایران', 'تهران', 'تهران', 'خیابان الهیه', NULL, NULL, NULL, 'مجتمع تجاری سانا', 12, 'اول', NULL, 35.7277418, 51.4926946),
(3, 'ایران', 'تهران', 'تهران', 'خیابان ظفر', NULL, NULL, NULL, 'مجتمع تجاری ساناز', 11, 'دوم', NULL, 15.25, 16.45822),
(15, 'ایران', 'تهران', 'تهران', 'شهرک غرب', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0),
(14, 'ایران', 'تهران', 'تهران', 'خیابان نیاوران', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0),
(13, 'ایران', 'تهران', 'تهران', 'درکه', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0),
(12, 'ایران', 'تهران', 'تهران', 'خیابان سعادت آباد', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0),
(11, 'ایران', 'تهران', 'تهران', 'خیابان ونک', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0),
(10, 'ایران', 'تهران', 'تهران', 'بلوار مرزداران', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0),
(9, 'ایران', 'تهران', 'تهران', 'خیابان ولیعصر', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0),
(8, 'ایران', 'تهران', 'تهران', 'خیابان سهروردی شمالی', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0),
(7, 'ایران', 'تهران', 'تهران', 'بزرگراه حقانی', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0),
(6, 'ایران', 'تهران', 'تهران', 'بلوار فردوس شرق', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0),
(5, 'ایران', 'تهران', 'تهران', 'خیابان سبزه میدان', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0),
(4, 'ایران', 'تهران', 'تهران', 'بزرگراه شیخ فضل الله نوری', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0),
(16, 'ایران', 'تهران', 'تهران', 'بلوار نلسون ماندلا', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0),
(88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', 1, '9', NULL, 35.653976981382, 51.443451568367),
(17, 'ایران', 'تهران', 'تهران', 'زعفرانیه', 'بالاتر از میدان الف', NULL, NULL, NULL, 1, '1', '1', 35.653976981382, 51.443451568367),
(87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14', 1, '5', NULL, 35.669333059727, 51.440654495576),
(89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', 22, '35', NULL, 35.696479861583, 51.406594843855),
(90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 4, '66', NULL, 35.656297108892, 51.441075593441);

-- --------------------------------------------------------

--
-- Table structure for table `App`
--

CREATE TABLE `App` (
  `id` int(11) NOT NULL,
  `main_color` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `App`
--

INSERT INTO `App` (`id`, `main_color`) VALUES
(1, '#4a90e2');

-- --------------------------------------------------------

--
-- Table structure for table `CashCharge`
--

CREATE TABLE `CashCharge` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '-1',
  `user_role` varchar(10) DEFAULT NULL,
  `amount` float NOT NULL DEFAULT '0',
  `new_inventory` float NOT NULL DEFAULT '0',
  `bank_issue_tracking_no` text,
  `creation_time` varchar(19) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CashCharge`
--

INSERT INTO `CashCharge` (`id`, `user_id`, `user_role`, `amount`, `new_inventory`, `bank_issue_tracking_no`, `creation_time`) VALUES
(6, 63, 'normal', 1000, 1000, '411069090072', '1399/02/02 12:13:36');

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `color` varchar(9) DEFAULT '#000000',
  `logos_id` int(11) NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`id`, `name`, `color`, `logos_id`) VALUES
(1, 'پیش غذا', '#efa923', 17),
(5, 'غذای ایرانی', '#be7212', 14),
(3, 'شوید پلو', '#f76476', 16),
(4, 'چلو ماهی', '#bd4805', 16),
(2, 'چلو جوجه', '#863D09', 2),
(6, 'چلو کباب', '#4eb09b', 16),
(22, 'نوشیدنی', '#efa923', 164),
(501, 'پیش غذا', '#efa923', 17),
(502, 'پیتزا', '#be7212', 14),
(503, 'پاستا', '#f76476', 16),
(504, 'سالاد', '#bd4805', 16),
(505, 'غذای اصلی', '#863D09', 2),
(506, 'کافه', '#4eb09b', 16),
(507, 'نوشیدنی', '#efa923', 164);

-- --------------------------------------------------------

--
-- Table structure for table `Chair`
--

CREATE TABLE `Chair` (
  `id` int(11) NOT NULL,
  `deskID` int(11) NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Chair`
--

INSERT INTO `Chair` (`id`, `deskID`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 2),
(7, 3),
(8, 3),
(9, 3),
(10, 4),
(11, 4),
(12, 4),
(13, 5),
(14, 5),
(15, 5),
(16, 6),
(17, 6),
(18, 6),
(19, 7),
(20, 7),
(21, 7),
(22, 7);

-- --------------------------------------------------------

--
-- Table structure for table `Deliver`
--

CREATE TABLE `Deliver` (
  `id` int(11) NOT NULL,
  `deliverer_id` int(11) NOT NULL DEFAULT '-1',
  `order_id` int(11) NOT NULL DEFAULT '-1',
  `destination_address_id` int(11) NOT NULL DEFAULT '-1',
  `status` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Deliver`
--

INSERT INTO `Deliver` (`id`, `deliverer_id`, `order_id`, `destination_address_id`, `status`) VALUES
(23, 1, 26, 90, 'JUST ORDER'),
(22, 1, 24, 89, 'JUST ORDER');

-- --------------------------------------------------------

--
-- Table structure for table `DelivererUser`
--

CREATE TABLE `DelivererUser` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `phone1` varchar(15) DEFAULT NULL,
  `phone2` varchar(15) DEFAULT NULL,
  `home_address_id` int(11) NOT NULL DEFAULT '-1',
  `current_address_id` int(11) NOT NULL DEFAULT '-1',
  `ssn` varchar(10) DEFAULT NULL,
  `birth_date` varchar(10) DEFAULT NULL,
  `photo_id` int(11) NOT NULL DEFAULT '-1',
  `password` varchar(100) DEFAULT NULL,
  `token_id` int(11) NOT NULL DEFAULT '-1',
  `creation_time` varchar(19) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` int(11) NOT NULL DEFAULT '1',
  `deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Desk`
--

CREATE TABLE `Desk` (
  `id` int(11) NOT NULL,
  `top_chair_id` int(11) NOT NULL DEFAULT '-1',
  `bottom_chair_id` int(11) NOT NULL DEFAULT '-1',
  `start_chair_id` int(11) NOT NULL DEFAULT '-1',
  `end_chair_id` int(11) NOT NULL DEFAULT '-1',
  `row_index` int(11) NOT NULL DEFAULT '-1',
  `column_index` int(11) NOT NULL DEFAULT '-1',
  `gravity_direction` int(11) NOT NULL DEFAULT '0',
  `previous_desk_id` int(11) NOT NULL DEFAULT '-1',
  `next_desk_id` int(11) NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Desk`
--

INSERT INTO `Desk` (`id`, `top_chair_id`, `bottom_chair_id`, `start_chair_id`, `end_chair_id`, `row_index`, `column_index`, `gravity_direction`, `previous_desk_id`, `next_desk_id`) VALUES
(3, 7, 8, 9, 10, 0, 3, 2, -1, -1),
(4, 11, -1, 12, 13, 2, 0, 2, -1, 5),
(2, 4, 5, 6, -1, 0, 1, 2, 1, -1),
(1, 1, 2, -1, 3, 0, 0, 1, -1, 2),
(5, -1, 14, 15, 16, 3, 0, 2, 4, -1),
(6, 17, 18, 19, 20, 2, 2, 3, -1, -1),
(7, 21, 22, -1, 23, 4, 2, 1, -1, 8),
(8, 24, 25, 26, -1, 4, 3, 2, 7, -1);

-- --------------------------------------------------------

--
-- Table structure for table `Discount`
--

CREATE TABLE `Discount` (
  `id` int(11) NOT NULL,
  `code` varchar(16) NOT NULL,
  `percentage` int(3) NOT NULL,
  `used_times` int(11) NOT NULL,
  `max_usage` int(11) NOT NULL,
  `minimum_acceptable_price` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL DEFAULT '-1',
  `is_valid` int(1) NOT NULL,
  `creation_time` varchar(19) NOT NULL,
  `delete_time` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Discount`
--

INSERT INTO `Discount` (`id`, `code`, `percentage`, `used_times`, `max_usage`, `minimum_acceptable_price`, `restaurant_id`, `is_valid`, `creation_time`, `delete_time`) VALUES
(18, 'ABCDE', 34, 1, 3000, 20000, 2, 0, '1398/07/10 18:13:02', '1398/07/12 13:30:39'),
(23, 'Kimia', 12, 2, 12, 12000, 2, 1, '1398/07/12 13:31:00', '1398/07/12 13:31:09'),
(24, 'khhg87', 87, 1, 87, 87, 2, 1, '1398/07/12 13:52:03', ''),
(25, 'testdiscount', 30, 0, 1000, 16000, 1, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `FAQ`
--

CREATE TABLE `FAQ` (
  `id` int(11) NOT NULL,
  `question` text CHARACTER SET utf8,
  `answer` text CHARACTER SET utf8,
  `image_id` int(11) NOT NULL DEFAULT '-1',
  `priority` int(11) NOT NULL DEFAULT '1',
  `shown` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FAQ`
--

INSERT INTO `FAQ` (`id`, `question`, `answer`, `image_id`, `priority`, `shown`) VALUES
(1, 'لکسین چیست ؟', ' لکسین یک سرویس نرم افزاری زیبا با رابط کاربری روان و منحصر به فرد و با استاندارد های طراحی بین المللی است که تجربه سفارش میز و غذای موردعلاقه در رستوران مورد علاقه تان رابرای شما به ارمغان می آورد.', 1, 1, 1),
(2, 'مدت زمان ساخت لکسین چقدر بوده است؟', 'لکسین از ماه آذر سال ۱۳۹۷ به مدت ۱۱ ماه توسط تیم آبان رایا داده تولید و سرانجام پس از طی مراحل فنی ، مدیریتی و تبلیغاتی به بهره برداری رسید.\r\n', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Food`
--

CREATE TABLE `Food` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `restaurant_id` int(11) NOT NULL DEFAULT '-1',
  `calories` float NOT NULL,
  `cook_time_minutes` int(11) NOT NULL DEFAULT '0',
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `price` float NOT NULL DEFAULT '0',
  `like_number` int(11) NOT NULL DEFAULT '0',
  `pictures_id` int(11) DEFAULT '-1',
  `valid_to_cook` int(11) NOT NULL DEFAULT '1',
  `deleted` int(11) NOT NULL DEFAULT '0',
  `creation_time` varchar(19) DEFAULT NULL,
  `accessbility_modification_time` varchar(19) DEFAULT NULL,
  `delete_time` varchar(19) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Food`
--

INSERT INTO `Food` (`id`, `name`, `restaurant_id`, `calories`, `cook_time_minutes`, `description`, `price`, `like_number`, `pictures_id`, `valid_to_cook`, `deleted`, `creation_time`, `accessbility_modification_time`, `delete_time`) VALUES
(123, 'مارگاریتا', 1, 450, 0, 'عالی', 0, 0, 170, 0, 1, '1398/08/09 13:55:14', '1398/08/09 13:55:14', '1398/08/09 14:08:23'),
(124, 'لابوسالا', 1, 430, 0, 'پیتزاییی لذیذ\n', 0, 0, 171, 0, 1, '1398/08/09 13:57:44', '1398/08/09 13:57:44', '1398/08/09 14:09:28'),
(125, 'هیرویکا', 1, 380, 0, 'خوشمزه و با کیفیت', 0, 0, 172, 0, 1, '1398/08/09 13:59:31', '1398/08/09 13:59:31', '1398/08/09 14:10:55'),
(126, 'بیف', 1, 290, 15, 'خوشمزه و با کیفیت', 56000, 0, 173, 1, 0, '1398/08/09 14:00:50', '1398/08/09 14:00:50', NULL),
(127, 'بلونز', 1, 247, 13, 'خوشمزه و با کیفیت', 75000, 0, 174, 1, 0, '1398/08/09 14:01:32', '1398/08/09 14:01:32', NULL),
(128, 'بروسکتا', 1, 170, 12, 'خوشمزه و با کیفیت', 34000, 0, 175, 1, 0, '1398/08/09 14:02:14', '1398/08/09 14:02:14', NULL),
(129, 'فرانکو', 1, 123, 10, 'خوشمزه و با کیفیت', 33000, 0, 176, 1, 0, '1398/08/09 14:03:16', '1398/08/09 14:03:16', NULL),
(130, 'ریزوفیلتو', 1, 210, 12, 'خوشمزه و با کیفیت', 43000, 0, 177, 1, 0, '1398/08/09 14:05:02', '1398/08/09 14:05:02', NULL),
(131, 'پریما', 1, 188, 14, 'خوشمزه و با کیفیت', 31000, 0, 178, 1, 0, '1398/08/09 14:06:01', '1398/08/09 14:06:01', NULL),
(132, 'استیک', 1, 287, 17, 'خوشمزه و با کیفیت', 280000, 0, 179, 1, 0, '1398/08/09 14:07:11', '1398/08/09 14:07:11', NULL),
(133, 'مارگاریتا', 1, 290, 13, 'خوشمزه و با کیفیت\n', 43000, 0, 180, 1, 0, '1398/08/09 14:09:18', '1398/08/09 14:09:18', NULL),
(134, 'لابوسا', 1, 160, 21, 'خوشمزه و با کیفیت', 54000, 0, 181, 1, 0, '1398/08/09 14:10:47', '1398/08/09 14:10:47', NULL),
(135, 'هیرویکا', 1, 210, 19, 'خوشمزه و با کیفیت\n', 29000, 0, 182, 1, 0, '1398/08/09 14:12:20', '1398/08/09 14:12:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `FoodOrder`
--

CREATE TABLE `FoodOrder` (
  `id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL DEFAULT '-1',
  `count_number` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '-1',
  `price` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FoodOrder`
--

INSERT INTO `FoodOrder` (`id`, `food_id`, `count_number`, `order_id`, `price`) VALUES
(59, 133, 2, 34, 86000),
(58, 129, 3, 33, 99000),
(57, 127, 2, 33, 150000),
(56, 134, 1, 32, 54000),
(55, 133, 2, 32, 86000),
(54, 129, 2, 31, 66000),
(53, 127, 1, 31, 75000),
(52, 129, 3, 30, 99000),
(51, 127, 2, 30, 150000),
(50, 129, 2, 29, 66000),
(49, 127, 1, 29, 75000),
(48, 134, 2, 28, 108000),
(47, 133, 1, 28, 43000),
(46, 133, 3, 27, 129000),
(45, 126, 3, 26, 168000),
(44, 126, 2, 25, 112000),
(43, 133, 2, 24, 86000);

-- --------------------------------------------------------

--
-- Table structure for table `Gallery`
--

CREATE TABLE `Gallery` (
  `id` int(11) NOT NULL,
  `one` text,
  `two` text,
  `three` text,
  `four` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Gallery`
--

INSERT INTO `Gallery` (`id`, `one`, `two`, `three`, `four`) VALUES
(1, 'https://aban.dev/logos/food/IMG_0225.jpg', NULL, NULL, NULL),
(2, 'https://aban.dev/kntu_project/assets/logos/white/chicken_white.svg', 'https://aban.dev/kntu_project/assets/logos/black/chicken.svg', NULL, NULL),
(3, 'https://aban.dev/logos/food/IMG_0226.jpg', NULL, NULL, NULL),
(4, 'https://tripbama.com/%D8%AA%D8%B1%DB%8C%D9%BE-%D8%A8%D8%A7%D9%85%D8%A7/%D8%AA%D8%B5%D9%88%DB%8C%D8%B1/%D8%B9%DA%A9%D8%B3/Image/64a5981c6efa4527d4bb4b6774f4d634-%D8%B1%D8%B3%D8%AA%D9%88%D8%B1%D8%A7%D9%86-%D9%87%D8%A7%DB%8C-%D8%B1%D8%A7%D9%87-%DA%86%D9%88%D8%A8%DB%8C_4', 'https://aban.dev/restaurants/pamoola.jpg', NULL, NULL),
(5, 'https://2.fidilio.com/storage/Images/903fca01-a91b-41d9-bd3d-6f3424945ede.jpg', 'https://aban.dev/restaurants/tehran_nayeb.jpeg', NULL, NULL),
(6, 'https://photos.wikimapia.org/p/00/00/19/29/92_big.jpg', 'https://aban.dev/restaurants/nayeb.jpg', NULL, NULL),
(7, 'https://aban.dev/logos/food/IMG_0229.jpg', NULL, NULL, NULL),
(8, 'https://aban.dev/kntu_project/assets/logos/white/birthday-cake_white.svg', 'https://aban.dev/kntu_project/assets/logos/black/birthday-cake.svg', NULL, NULL),
(9, 'https://aban.dev/kntu_project/assets/logos/white/coffee-cup_white.svg', 'https://aban.dev/kntu_project/assets/logos/black/coffee-cup.svg', NULL, NULL),
(10, 'https://aban.dev/kntu_project/assets/logos/white/fruit_white.svg', 'https://aban.dev/kntu_project/assets/logos/black/fruit.svg', NULL, NULL),
(11, 'https://aban.dev/kntu_project/assets/logos/white/hamburger_white.svg', 'https://aban.dev/kntu_project/assets/logos/black/hamburger.svg', NULL, NULL),
(12, 'https://aban.dev/kntu_project/assets/logos/white/ice-cream_white.svg', 'https://aban.dev/kntu_project/assets/logos/black/ice-cream.svg', NULL, NULL),
(13, 'https://aban.dev/kntu_project/assets/logos/white/lemonade_white.svg', 'https://aban.dev/kntu_project/assets/logos/black/lemonade.svg', NULL, NULL),
(14, 'https://aban.dev/kntu_project/assets/logos/white/meat_white.svg', 'https://aban.dev/kntu_project/assets/logos/black/meat.svg', NULL, NULL),
(15, 'https://aban.dev/kntu_project/assets/logos/white/pizza_white.svg', 'https://aban.dev/kntu_project/assets/logos/black/pizza.svg', NULL, NULL),
(16, 'https://aban.dev/kntu_project/assets/logos/white/serving-dish_white.svg', 'https://aban.dev/kntu_project/assets/logos/black/serving-dish.svg', NULL, NULL),
(17, 'https://aban.dev/kntu_project/assets/logos/white/spaguetti_white.svg', 'https://aban.dev/kntu_project/assets/logos/black/spaguetti.svg', NULL, NULL),
(18, 'https://aban.dev/logos/food/IMG_0230.jpg', '', NULL, NULL),
(19, 'https://lh3.googleusercontent.com/proxy/w9gm7Sq8OdnkkRZNNShn7NCyi7-Ch-1qRGGaxHY_NBKYm00KTVSAiPDhuPHSSUqvqa5JOTnlqwF7NwKZiSNLzhtEqveYNHg6d7C3e4HHyTCau3RDzUJn', 'https://aban.dev/restaurants/gardan6.jpg', NULL, NULL),
(20, 'https://www.nabro.ir/wp-content/uploads/2019/11/IMG_20191104_121050_559-500x470.jpg', 'https://aban.dev/restaurants/moslem3.jpg', NULL, NULL),
(21, 'https://www.nabro.ir/wp-content/uploads/2019/11/IMG_5634-780x470.jpg', 'https://aban.dev/restaurants/senso3.jpg', NULL, NULL),
(22, 'https://images.kojaro.com/2017/4/ba28613e-254b-41f0-b257-3d9c18583a78-840x560.gif', 'https://aban.dev/restaurants/rahechubi3.jpg', NULL, NULL),
(23, 'https://safarzon.com/mag/wp-content/uploads/2018/10/alborz5.jpg', 'https://aban.dev/restaurants/alborz5.jpg', NULL, NULL),
(24, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ17HrtvublegSnGvHY9vZ3lB0GIOFSl56rNqyp5T4WhZuIWNN-&usqp=CAU', 'https://aban.dev/restaurants/nayeb1.jpg', NULL, NULL),
(25, 'https://2.fidilio.com/storage/images/10f6538f-a562-41a4-b622-084a6d1d3d45_0.jpg', 'https://aban.dev/restaurants/gennaro_kourosh.jpg', NULL, NULL),
(26, 'https://last-cdn.com/2018/05/20/gHEADzO1cc3numyr73gSkChdu8lHZZN1Ks7HhcX6.jpeg', 'https://aban.dev/restaurants/alighapou2.jpg', NULL, NULL),
(27, 'https://www.iranbomgardi.com/file/ImageResize?width=700&height=400&fileName=File_201513153929.jpg', 'https://aban.dev/restaurants/narenjestan.jpg', NULL, NULL),
(28, 'https://2.fidilio.com/storage/wall/346d925a-a961-4019-bef7-d1822a778075.jpg', 'https://aban.dev/restaurants/spu1.jpg', NULL, NULL),
(29, 'https://pishnahad.com/wp-content/uploads/2019/10/5-17.jpg', 'https://aban.dev/restaurants/mestooran.jpg', NULL, NULL),
(30, 'https://cdn.smarttiz.com/Image/News/Roohi-5_981101124117553.jpg', 'https://aban.dev/restaurants/roohi.jpg', NULL, NULL),
(31, 'https://aban.dev/restaurants/gilane-restaurant.jpg', 'https://aban.dev/restaurants/gilane-restaurant.jpg', NULL, NULL),
(32, NULL, NULL, NULL, NULL),
(77, 'address of default food', NULL, NULL, NULL),
(78, 'https://aban.dev/logos/food/zereshkpolo.jpg', '', NULL, NULL),
(79, 'https://aban.dev/logos/food/soopeshir.jpg', '', NULL, NULL),
(80, 'https://aban.dev/logos/food/soopejo.jpg', '', NULL, NULL),
(81, 'https://aban.dev/logos/food/soltani.jpg', '', NULL, NULL),
(82, 'https://aban.dev/logos/food/shishlik.jpg', '', NULL, NULL),
(83, 'https://aban.dev/logos/food/parvarde.jpg', '', NULL, NULL),
(84, 'https://aban.dev/logos/food/nooshabe.jpg', '', NULL, NULL),
(85, 'https://aban.dev/logos/food/moosir.jpg', '', NULL, NULL),
(86, 'https://aban.dev/logos/food/loghmeh.jpg', '', NULL, NULL),
(87, 'https://aban.dev/logos/food/barg.jpg', '', NULL, NULL),
(88, 'https://aban.dev/logos/food/jooje.jpg', '', NULL, NULL),
(89, 'https://aban.dev/logos/food/dessert.jpg', NULL, NULL, NULL),
(90, 'https://aban.dev/logos/food/baghalipolo.jpeg', NULL, NULL, NULL),
(91, 'https://aban.dev/logos/food/salad.jpg', NULL, NULL, NULL),
(92, 'https://aban.dev/logos/food/mahi.jpg', NULL, NULL, NULL),
(184, 'https://2.fidilio.com/storage/images/b9f6898b-e816-48e2-bdfc-796c04fc437c_1.jpg', 'https://aban.dev/restaurants/gennaro-restaurant-kourosh-mall-1_original__2x_.jpg', NULL, NULL),
(182, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTOoJD6H0F9afyqcQ4dw4YTkYpQIvOR54aAXAN-ZIlCPxDzVQFp&usqp=CAU', NULL, NULL, NULL),
(181, 'https://kalleh.com/book/wp-content/uploads/sites/2/2018/09/pizza-makhsoos.jpg', NULL, NULL, NULL),
(180, 'https://hamdore.com/wp-content/uploads/2018/01/pitza-margarita.jpg', NULL, NULL, NULL),
(179, 'https://www.sooran.com/public/images/upload/32450', NULL, NULL, NULL),
(178, 'https://nimfaseleh.com/wp-content/uploads/2019/10/pasta.jpg', NULL, NULL, NULL),
(177, 'https://chishi.ir/wp-content/uploads/2019/11/pasta.jpg', NULL, NULL, NULL),
(176, 'https://gennaro-restaurant.com/wp-content/uploads/2018/05/franco2.jpg', NULL, NULL, NULL),
(175, 'https://portal.hoonel.com/files/image.php?src=https://portal.hoonel.com/uploads/posts/2018-11/1542137168_1542137127.jpg&q=80&w=810', NULL, NULL, NULL),
(174, 'https://ghazaland.com/wp-content/uploads/2018/12/pasta-ba-sos-blonz2.jpg', NULL, NULL, NULL),
(173, 'https://i.pinimg.com/originals/ea/68/9a/ea689aaaeb0384f2424bd2b271cf0cdb.jpg', NULL, NULL, NULL),
(172, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTOoJD6H0F9afyqcQ4dw4YTkYpQIvOR54aAXAN-ZIlCPxDzVQFp&usqp=CAU', NULL, NULL, NULL),
(171, 'https://kalleh.com/book/wp-content/uploads/sites/2/2018/09/pizza-makhsoos.jpg', NULL, NULL, NULL),
(170, 'https://hamdore.com/wp-content/uploads/2018/01/pitza-margarita.jpg', NULL, NULL, NULL),
(169, 'https://aban.dev/logos/food/chenjeh.jpg', NULL, NULL, NULL),
(168, 'https://aban.dev/logos/food/barg.jpg', NULL, NULL, NULL),
(167, 'https://aban.dev/logos/food/loghmeh.jpg', NULL, NULL, NULL),
(162, 'https://aban.dev/logos/food/38AtDtb64FRegt48cc4D.jpg', NULL, NULL, NULL),
(163, 'https://aban.dev/logos/food/38AtDtb64FRegt48cc4D.jpg', NULL, NULL, NULL),
(164, 'https://aban.dev/kntu_project/assets/logos/white/drink_white.svg', 'https://aban.dev/kntu_project/assets/logos/black/drink.svg', NULL, NULL),
(165, 'https://aban.dev/logos/food/coka small.jpeg', NULL, NULL, NULL),
(166, 'https://aban.dev/logos/food/fanta small.jpeg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `LexinOrder`
--

CREATE TABLE `LexinOrder` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL DEFAULT '-1',
  `discount_id` int(11) NOT NULL DEFAULT '-1',
  `pay_mode` varchar(10) DEFAULT NULL,
  `total_price` float NOT NULL DEFAULT '0',
  `qr_code_issue_tracking_no` text,
  `status` varchar(10) DEFAULT 'In Queue',
  `to_deliver_time` varchar(19) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `orderer_normal_user_id` int(11) NOT NULL DEFAULT '-1',
  `user_deliver_ack` int(11) NOT NULL DEFAULT '0',
  `staff_deliver_ack` int(11) NOT NULL DEFAULT '0',
  `status_fill_date_time` varchar(19) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LexinOrder`
--

INSERT INTO `LexinOrder` (`id`, `restaurant_id`, `discount_id`, `pay_mode`, `total_price`, `qr_code_issue_tracking_no`, `status`, `to_deliver_time`, `type`, `orderer_normal_user_id`, `user_deliver_ack`, `staff_deliver_ack`, `status_fill_date_time`) VALUES
(34, 1, 0, 'in_app', 86000, '63NU139902071705', 'In Queue', '1399/02/07 18:10', 'serve', 63, 0, 0, NULL),
(33, 1, 0, 'in_app', 249000, '63NU139902071617', 'In Queue', '1399/02/07 17:25', 'serve', 63, 0, 0, NULL),
(32, 1, 0, 'in_app', 140000, '63NU139902071328', 'In Queue', '1399/02/07 14:35', 'serve', 63, 0, 0, NULL),
(31, 1, 0, 'in_app', 141000, '63NU139902071229', 'In Queue', '1399/02/07 13:40', 'serve', 63, 0, 0, NULL),
(30, 1, 0, 'in_app', 249000, '63NU139902071152', 'In Queue', '1399/02/07 12:54', 'serve', 63, 0, 0, NULL),
(29, 1, 0, 'in_app', 141000, '63NU139902071143', 'In Queue', '1399/02/07 12:45', 'serve', 63, 0, 0, NULL),
(28, 1, 0, 'in_app', 151000, '63NU139902071133', 'In Queue', '1399/02/07 12:06', 'serve', 63, 0, 0, NULL),
(27, 1, 0, 'in_app', 129000, '63NU139902071132', 'In Queue', '1399/02/07 12:03', 'serve', 63, 0, 0, NULL),
(26, 1, 0, 'in_app', 168000, '63NU13990203115929', 'In Queue', '1399/02/03 11:59', 'delivery', 63, 0, 0, NULL),
(25, 1, 0, 'in_app', 112000, '63NU139902031155', 'In Queue', '1399/02/25 12:23', 'serve', 63, 0, 0, NULL),
(24, 1, 0, 'in_app', 86000, '63NU13990202191702', 'In Queue', '1399/02/02 19:17', 'delivery', 63, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `LexinTable`
--

CREATE TABLE `LexinTable` (
  `id` int(11) NOT NULL,
  `label` varchar(10) NOT NULL,
  `price` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `roof` int(11) NOT NULL,
  `is_valid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `LexinTable`
--

INSERT INTO `LexinTable` (`id`, `label`, `price`, `restaurant_id`, `roof`, `is_valid`) VALUES
(1, 'الف', 0, 1, 1, 1),
(2, 'ب', 0, 1, 1, 1),
(3, 'پ', 0, 1, 1, 1),
(4, 'ت', 0, 1, 2, 1),
(5, 'ث', 0, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `LexinTableOrder`
--

CREATE TABLE `LexinTableOrder` (
  `id` int(11) NOT NULL,
  `lexin_table_id` int(11) NOT NULL DEFAULT '-1',
  `order_id` int(11) NOT NULL DEFAULT '-1',
  `start_time` varchar(19) DEFAULT NULL,
  `end_time` varchar(19) DEFAULT NULL,
  `completed` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LexinTableOrder`
--

INSERT INTO `LexinTableOrder` (`id`, `lexin_table_id`, `order_id`, `start_time`, `end_time`, `completed`) VALUES
(28, 1, 25, '1399/02/25 12:23', '1399/02/25 13:23', 0),
(29, 2, 27, '1399/02/07 12:03', '1399/02/07 13:03', 0),
(30, 1, 28, '1399/02/07 12:06', '1399/02/07 13:06', 0),
(31, 3, 29, '1399/02/07 12:45', '1399/02/07 13:45', 0),
(32, 4, 30, '1399/02/07 12:54', '1399/02/07 13:54', 0),
(33, 2, 31, '1399/02/07 13:40', '1399/02/07 14:40', 0),
(34, 1, 32, '1399/02/07 14:35', '1399/02/07 15:35', 0),
(35, 2, 33, '1399/02/07 17:25', '1399/02/07 18:25', 0),
(36, 4, 34, '1399/02/07 18:10', '1399/02/07 19:10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `LogCat`
--

CREATE TABLE `LogCat` (
  `id` int(11) NOT NULL,
  `feature` text CHARACTER SET utf8 NOT NULL,
  `version_code` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LogCat`
--

INSERT INTO `LogCat` (`id`, `feature`, `version_code`) VALUES
(1, 'رزرو کردن غذا در رستوران', 1),
(2, 'تحویل غذا در محل دلخواه روی نقشه', 1),
(3, 'یادآوری قبل از سرو غذا در رستوران', 1),
(4, 'تکمیل ورژن یک به همراه تمام ویژگی های پیش بینی شده', 1);

-- --------------------------------------------------------

--
-- Table structure for table `LogOut`
--

CREATE TABLE `LogOut` (
  `id` int(11) NOT NULL,
  `token_id` int(11) NOT NULL DEFAULT '-1',
  `date_time` varchar(19) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LogOut`
--

INSERT INTO `LogOut` (`id`, `token_id`, `date_time`) VALUES
(36, 99, '1399/02/07 16:11:36'),
(35, 96, '1399/02/03 17:16:48'),
(34, 95, '1399/02/03 12:01:30'),
(33, 94, '1399/02/03 11:48:31'),
(32, 90, '1399/02/03 09:58:13');

-- --------------------------------------------------------

--
-- Table structure for table `Material`
--

CREATE TABLE `Material` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Material`
--

INSERT INTO `Material` (`id`, `name`) VALUES
(1, 'Banana');

-- --------------------------------------------------------

--
-- Table structure for table `Meal`
--

CREATE TABLE `Meal` (
  `id` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `logos_id` int(11) DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `NormalUser`
--

CREATE TABLE `NormalUser` (
  `id` int(11) NOT NULL,
  `name` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `gender` int(11) NOT NULL DEFAULT '1',
  `email` varchar(100) DEFAULT NULL,
  `address_id` int(11) NOT NULL DEFAULT '-1',
  `creation_time` varchar(19) DEFAULT NULL,
  `register_time` varchar(19) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `cash` float NOT NULL DEFAULT '0',
  `pusheID` varchar(15) NOT NULL,
  `photo_id` int(11) DEFAULT '-1',
  `deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `NormalUser`
--

INSERT INTO `NormalUser` (`id`, `name`, `last_name`, `phone`, `gender`, `email`, `address_id`, `creation_time`, `register_time`, `password`, `cash`, `pusheID`, `photo_id`, `deleted`) VALUES
(66, NULL, NULL, NULL, 1, NULL, -1, '1399/02/03 09:58:13', NULL, 'dddddddd', 0, '', -1, 0),
(63, 'محمد', 'جلیلی', '00989128346921', 0, NULL, -1, '1399/02/02 12:09:25', '1399/02/02 12:11:48', 'ffffffff', 1265000, '', -1, 0),
(67, 'ببی', 'تلب', '00989386423621', 1, NULL, -1, NULL, '1399/02/03 13:50:06', 'cccccccc', 0, 'pid_15e9-c29d-3', -1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Off`
--

CREATE TABLE `Off` (
  `id` int(11) NOT NULL,
  `percentage` float NOT NULL DEFAULT '0',
  `is_valid` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Off`
--

INSERT INTO `Off` (`id`, `percentage`, `is_valid`) VALUES
(11, 5, 1),
(10, 15, 1),
(9, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `PanelAlarm`
--

CREATE TABLE `PanelAlarm` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL DEFAULT '-1',
  `message` text NOT NULL,
  `is_valid` int(11) NOT NULL,
  `date_time` varchar(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PanelAlarm`
--

INSERT INTO `PanelAlarm` (`id`, `restaurant_id`, `message`, `is_valid`, `date_time`) VALUES
(3, 1, 'یک هشدار آزمایشی روی رستوران نادر', 1, '1398/07/07 18:03');

-- --------------------------------------------------------

--
-- Table structure for table `PanelMessage`
--

CREATE TABLE `PanelMessage` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL DEFAULT '-1',
  `message` text NOT NULL,
  `is_valid` int(11) NOT NULL,
  `date_time` varchar(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PanelMessage`
--

INSERT INTO `PanelMessage` (`id`, `restaurant_id`, `message`, `is_valid`, `date_time`) VALUES
(1, 1, 'یک پیام آزمایشی روی رستوران نادر', 1, '1398/07/11 15:15');

-- --------------------------------------------------------

--
-- Table structure for table `PopularFood`
--

CREATE TABLE `PopularFood` (
  `id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL DEFAULT '-1',
  `priority` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PopularFood`
--

INSERT INTO `PopularFood` (`id`, `food_id`, `priority`) VALUES
(18, 128, 1),
(19, 130, 1),
(20, 132, 1);

-- --------------------------------------------------------

--
-- Table structure for table `QrCode`
--

CREATE TABLE `QrCode` (
  `id` int(11) NOT NULL,
  `decrypted_qr_code` text,
  `restaurant_id` int(11) NOT NULL DEFAULT '-1',
  `valid` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `QrCode`
--

INSERT INTO `QrCode` (`id`, `decrypted_qr_code`, `restaurant_id`, `valid`) VALUES
(1, 'genaro', 2, 1),
(2, 'gennaro', 1, 1),
(3, 'nayeb', 3, 1),
(4, 'gardoon_milad', 4, 1),
(5, 'moslem', 5, 1),
(6, 'senso', 6, 1),
(7, 'rah_e_choobi', 7, 1),
(8, 'alborz_e_tehran', 8, 1),
(9, 'nayeb', 9, 1),
(10, 'zhooaani', 10, 1),
(11, 'ali_ghapoo', 11, 1),
(12, 'narenjestan', 12, 1),
(13, 'spu', 13, 1),
(14, 'mestooran', 14, 1),
(15, 'roohi', 15, 1),
(16, 'gilane', 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `RelCategoryRestaurant`
--

CREATE TABLE `RelCategoryRestaurant` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL DEFAULT '-1',
  `category_id` int(11) NOT NULL DEFAULT '-1',
  `is_valid` int(11) NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `RelCategoryRestaurant`
--

INSERT INTO `RelCategoryRestaurant` (`id`, `restaurant_id`, `category_id`, `is_valid`) VALUES
(21, 1, 502, 1),
(22, 1, 503, 1),
(23, 1, 504, 1),
(24, 1, 505, 1),
(25, 1, 506, 1),
(26, 1, 507, 1),
(27, 1, 501, -1);

-- --------------------------------------------------------

--
-- Table structure for table `RelDeskLexinTable`
--

CREATE TABLE `RelDeskLexinTable` (
  `id` int(11) NOT NULL,
  `desk_id` int(11) NOT NULL,
  `lexin_table_id` int(11) DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `RelDeskLexinTable`
--

INSERT INTO `RelDeskLexinTable` (`id`, `desk_id`, `lexin_table_id`) VALUES
(5, 1, 1),
(6, 2, 1),
(7, 3, 2),
(9, 4, 3),
(10, 5, 3),
(11, 6, 4),
(12, 7, 5),
(13, 8, 5),
(14, 1, 9),
(15, 2, 9),
(16, 3, 10),
(17, 4, 10),
(18, 5, 11),
(19, 6, 12),
(20, 7, 12),
(21, 8, 13);

-- --------------------------------------------------------

--
-- Table structure for table `RelFoodCategory`
--

CREATE TABLE `RelFoodCategory` (
  `id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL DEFAULT '-1',
  `category_id` int(11) NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `RelFoodCategory`
--

INSERT INTO `RelFoodCategory` (`id`, `food_id`, `category_id`) VALUES
(106, 100, 2),
(107, 101, 2),
(108, 102, 2),
(109, 103, 2),
(110, 104, 5),
(111, 105, 2),
(112, 106, 2),
(113, 107, 2),
(114, 108, 2),
(115, 109, 2),
(116, 110, 2),
(117, 111, 2),
(118, 112, 2),
(119, 113, 2),
(120, 114, 2),
(121, 115, 2),
(122, 116, 5),
(123, 117, 5),
(124, 118, 22),
(125, 119, 22),
(126, 120, 5),
(127, 121, 5),
(128, 122, 5),
(129, 123, 502),
(130, 124, 502),
(131, 125, 502),
(132, 126, 505),
(133, 127, 503),
(134, 128, 505),
(135, 129, 503),
(136, 130, 503),
(137, 131, 503),
(138, 132, 505),
(139, 133, 502),
(140, 134, 502),
(141, 135, 502);

-- --------------------------------------------------------

--
-- Table structure for table `RelFoodMaterial`
--

CREATE TABLE `RelFoodMaterial` (
  `id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL DEFAULT '-1',
  `material_id` int(11) NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `RelFoodMeal`
--

CREATE TABLE `RelFoodMeal` (
  `id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL DEFAULT '-1',
  `meal_id` int(11) NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `RelFoodOff`
--

CREATE TABLE `RelFoodOff` (
  `id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL DEFAULT '-1',
  `off_id` int(11) NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `RelFoodOff`
--

INSERT INTO `RelFoodOff` (`id`, `food_id`, `off_id`) VALUES
(31, 129, 11),
(32, 131, 10),
(33, 132, 9);

-- --------------------------------------------------------

--
-- Table structure for table `RelMealRestaurant`
--

CREATE TABLE `RelMealRestaurant` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL DEFAULT '-1',
  `meal_id` int(11) NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `RelMealRestaurant`
--

INSERT INTO `RelMealRestaurant` (`id`, `restaurant_id`, `meal_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `RelNormalUserDiscount`
--

CREATE TABLE `RelNormalUserDiscount` (
  `id` int(11) NOT NULL,
  `normal_user_id` int(11) NOT NULL,
  `discount_id` int(11) NOT NULL,
  `time_stamp` varchar(19) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `RelNormalUserDiscount`
--

INSERT INTO `RelNormalUserDiscount` (`id`, `normal_user_id`, `discount_id`, `time_stamp`) VALUES
(45, 63, 0, '1399/02/07 17:05'),
(44, 63, 0, '1399/02/07 16:17'),
(43, 63, 0, '1399/02/07 13:28'),
(42, 63, 0, '1399/02/07 12:29'),
(41, 63, 0, '1399/02/07 11:52'),
(40, 63, 0, '1399/02/07 11:43'),
(39, 63, 0, '1399/02/07 11:33'),
(38, 63, 0, '1399/02/07 11:32'),
(37, 63, 0, NULL),
(36, 63, 0, '1399/02/03 11:55'),
(35, 63, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `RelNormalUserReview`
--

CREATE TABLE `RelNormalUserReview` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL DEFAULT '-1',
  `review_id` int(11) NOT NULL DEFAULT '-1',
  `normal_user_id` int(11) NOT NULL DEFAULT '-1',
  `value` int(11) NOT NULL DEFAULT '-1',
  `time_stamp` varchar(19) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `RelNormalUserReview`
--

INSERT INTO `RelNormalUserReview` (`id`, `restaurant_id`, `review_id`, `normal_user_id`, `value`, `time_stamp`) VALUES
(1, 1, 1, 26, 80, '1398/04/15 15:14:24'),
(2, 1, 2, 26, 60, '1398/04/15 15:14:25'),
(3, 1, 3, 26, 55, '1398/04/15 15:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `RelRestaurantDeliverer`
--

CREATE TABLE `RelRestaurantDeliverer` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) DEFAULT '-1',
  `deliverer_id` int(11) NOT NULL DEFAULT '-1',
  `user_satisfaction_grade` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Restaurant`
--

CREATE TABLE `Restaurant` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8,
  `address_id` int(11) NOT NULL DEFAULT '-1',
  `type_id` int(11) DEFAULT '-1',
  `owner_id` int(11) NOT NULL DEFAULT '-1',
  `phone` varchar(15) DEFAULT NULL,
  `site` varchar(100) DEFAULT NULL,
  `class` varchar(10) NOT NULL,
  `columns_of_table` int(11) NOT NULL DEFAULT '5',
  `pictures_id` int(11) DEFAULT '-1',
  `legitimated` int(11) NOT NULL DEFAULT '1',
  `active` int(11) NOT NULL DEFAULT '1',
  `creationTime` varchar(19) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Restaurant`
--

INSERT INTO `Restaurant` (`id`, `name`, `address_id`, `type_id`, `owner_id`, `phone`, `site`, `class`, `columns_of_table`, `pictures_id`, `legitimated`, `active`, `creationTime`, `deleted`) VALUES
(2, 'رستوران نایب', 2, 1, 1, '021 - 77920244', 'www.aban.dev', 'B', 4, 5, 1, 0, '1398/05/17 17:12', 0),
(1, 'جنارو', 17, 1, 1, '021 - 42245632', 'wwww.gennaro-restaurant.com', 'A', 6, 184, 1, 1, NULL, 0),
(3, 'رستوران نایب', 3, 2, 1, '021 - 22668800', 'in queue', 'C', 6, 6, 1, 0, NULL, 0),
(4, 'رستوران گردون میلاد', 4, 3, 1, NULL, NULL, 'C', 5, 19, 1, 0, NULL, 0),
(5, 'رستوران مسلم', 5, 2, 1, NULL, NULL, 'B', 5, 20, 1, 0, NULL, 0),
(6, 'فست فود سنتو', 6, 1, 1, NULL, NULL, 'A', 5, 21, 1, 0, NULL, 0),
(7, 'رستوران راه چوبی', 7, 2, 1, NULL, NULL, 'B', 5, 22, 1, 0, NULL, 0),
(8, 'رستوران البرز تهران', 7, 2, 1, NULL, NULL, 'A', 5, 23, 1, 0, NULL, 0),
(9, 'رستوران پدر خوب', 9, 2, 1, NULL, NULL, 'C', 5, 24, 1, 0, NULL, 0),
(10, 'فست فود ژوانی', 10, 1, 1, NULL, NULL, 'C', 5, 25, 1, 0, NULL, 0),
(11, 'رستوران عالی قاپو', 11, 2, 1, NULL, NULL, 'A', 5, 26, 1, 0, NULL, 0),
(12, 'رستوران نارنجستان', 12, 2, 1, NULL, NULL, 'B', 5, 27, 1, 0, NULL, 0),
(13, 'رستوران اس پی یو', 13, 2, 1, NULL, NULL, 'C', 5, 28, 1, 0, NULL, 0),
(14, 'رستوران مستوران', 14, 2, 1, NULL, NULL, 'B', 5, 29, 1, 0, NULL, 0),
(15, 'رستوران روحی', 15, 2, 1, NULL, NULL, 'A', 5, 30, 1, 0, NULL, 0),
(17, 'رستوران گیلانه', 16, 0, 1, NULL, NULL, 'C', 5, 31, 1, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `RestaurantType`
--

CREATE TABLE `RestaurantType` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `RestaurantType`
--

INSERT INTO `RestaurantType` (`id`, `name`) VALUES
(1, 'رستوران فست فود'),
(2, 'رستوران سنتی'),
(3, 'کافه - رستوران');

-- --------------------------------------------------------

--
-- Table structure for table `Review`
--

CREATE TABLE `Review` (
  `id` int(11) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `image` text CHARACTER SET utf8
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Review`
--

INSERT INTO `Review` (`id`, `title`, `image`) VALUES
(1, 'پارکینگ', 'https://aban.dev/logos/ReviewsImage/easter-egg.svg'),
(2, 'محیط', 'https://aban.dev/logos/ReviewsImage/easter-egg.svg'),
(3, 'کیفیت غذا', 'https://aban.dev/logos/ReviewsImage/easter-egg.svg');

-- --------------------------------------------------------

--
-- Table structure for table `StaffUser`
--

CREATE TABLE `StaffUser` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `last_name` varchar(60) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '1',
  `email` varchar(100) DEFAULT NULL,
  `token_id` int(11) NOT NULL DEFAULT '-1',
  `photo_id` int(11) DEFAULT '-1',
  `password` varchar(100) DEFAULT NULL,
  `buiness_license_no` varchar(200) DEFAULT NULL,
  `ssn` varchar(10) DEFAULT NULL,
  `birthdate` varchar(10) DEFAULT NULL,
  `restaurant_id` int(11) NOT NULL DEFAULT '-1',
  `deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Token`
--

CREATE TABLE `Token` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '-1',
  `user_role` varchar(10) DEFAULT NULL,
  `value` text,
  `expire_time` varchar(19) DEFAULT NULL,
  `last_login_time` varchar(19) DEFAULT NULL,
  `shared_key` text,
  `deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Token`
--

INSERT INTO `Token` (`id`, `user_id`, `user_role`, `value`, `expire_time`, `last_login_time`, `shared_key`, `deleted`) VALUES
(100, 63, 'normal', 'c59a6943ebee6a378929954c6d7d012a', '2297/10/20', '1399/02/07 16:17:12', '4', 0),
(99, 63, 'normal', '493a0856d531ce01f2b0c2e61156e4ab', '2297/10/20', '1399/02/07 13:21:33', '1', 1),
(98, 63, 'normal', 'e2fa1dbaa6aa717cc2cf97c49413a3dd', '2297/10/20', '1399/02/07 16:17:12', '8', 0),
(97, 63, 'normal', 'd45cc5cb02a09e4dcca608f0d68c0da6', '2297/10/20', '1399/02/07 16:17:12', '1', 0),
(96, 67, 'normal', 'f3af7aa4191d9407ff269526f86b2ca8', '2297/10/20', '1399/02/03 13:50:07', '1', 1),
(95, 63, 'normal', '0ff8f5b7d51a3262b6a13b789c3573d3', '2297/10/20', '1399/02/03 11:48:46', '12', 1),
(94, 63, 'normal', '30f4e3021c8fbab037a72d43063221c0', '2297/10/20', '1399/02/03 11:44:12', '3', 1),
(93, 63, 'normal', '8787319ddf808e413f8b2ca637abff38', '2297/10/20', '1399/02/07 16:17:12', '10', 0),
(92, 63, 'normal', 'ad4cf402ba86fd80db37ee8023b98c1e', '2297/10/20', '1399/02/07 16:17:12', '5', 0),
(91, 63, 'normal', 'd39e755c57c62a80eaeaf67bd7d056d8', '2297/10/20', '1399/02/07 16:17:12', '12', 0),
(90, 63, 'normal', '46f9fde53a9e26ae32d5c7fc2a0bdcc3', '2297/10/20', '1399/02/02 19:00:58', '9', 1),
(89, 63, 'normal', '191216d3b8a015baa13a65b7d0675863', '2297/10/20', '1399/02/07 16:17:12', '12', 0),
(88, 63, 'normal', '6d12a27941e33374662487fc7387eeef', '2297/10/20', '1399/02/07 16:17:12', '8', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ActivationCode`
--
ALTER TABLE `ActivationCode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Address`
--
ALTER TABLE `Address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `App`
--
ALTER TABLE `App`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `CashCharge`
--
ALTER TABLE `CashCharge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Chair`
--
ALTER TABLE `Chair`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Deliver`
--
ALTER TABLE `Deliver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `DelivererUser`
--
ALTER TABLE `DelivererUser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Desk`
--
ALTER TABLE `Desk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Discount`
--
ALTER TABLE `Discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `FAQ`
--
ALTER TABLE `FAQ`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Food`
--
ALTER TABLE `Food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `FoodOrder`
--
ALTER TABLE `FoodOrder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Gallery`
--
ALTER TABLE `Gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `LexinOrder`
--
ALTER TABLE `LexinOrder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `LexinTable`
--
ALTER TABLE `LexinTable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `LexinTableOrder`
--
ALTER TABLE `LexinTableOrder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `LogCat`
--
ALTER TABLE `LogCat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `LogOut`
--
ALTER TABLE `LogOut`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Material`
--
ALTER TABLE `Material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Meal`
--
ALTER TABLE `Meal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `NormalUser`
--
ALTER TABLE `NormalUser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Off`
--
ALTER TABLE `Off`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `PanelAlarm`
--
ALTER TABLE `PanelAlarm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `PanelMessage`
--
ALTER TABLE `PanelMessage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `PopularFood`
--
ALTER TABLE `PopularFood`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `QrCode`
--
ALTER TABLE `QrCode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `RelCategoryRestaurant`
--
ALTER TABLE `RelCategoryRestaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `RelDeskLexinTable`
--
ALTER TABLE `RelDeskLexinTable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `RelFoodCategory`
--
ALTER TABLE `RelFoodCategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `RelFoodMaterial`
--
ALTER TABLE `RelFoodMaterial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `RelFoodMeal`
--
ALTER TABLE `RelFoodMeal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `RelFoodOff`
--
ALTER TABLE `RelFoodOff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `RelMealRestaurant`
--
ALTER TABLE `RelMealRestaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `RelNormalUserDiscount`
--
ALTER TABLE `RelNormalUserDiscount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `RelNormalUserReview`
--
ALTER TABLE `RelNormalUserReview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `RelRestaurantDeliverer`
--
ALTER TABLE `RelRestaurantDeliverer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Restaurant`
--
ALTER TABLE `Restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `RestaurantType`
--
ALTER TABLE `RestaurantType`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Review`
--
ALTER TABLE `Review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `StaffUser`
--
ALTER TABLE `StaffUser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Token`
--
ALTER TABLE `Token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ActivationCode`
--
ALTER TABLE `ActivationCode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `Address`
--
ALTER TABLE `Address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `App`
--
ALTER TABLE `App`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `CashCharge`
--
ALTER TABLE `CashCharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Category`
--
ALTER TABLE `Category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=508;

--
-- AUTO_INCREMENT for table `Chair`
--
ALTER TABLE `Chair`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `Deliver`
--
ALTER TABLE `Deliver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `DelivererUser`
--
ALTER TABLE `DelivererUser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Desk`
--
ALTER TABLE `Desk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `Discount`
--
ALTER TABLE `Discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `FAQ`
--
ALTER TABLE `FAQ`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Food`
--
ALTER TABLE `Food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `FoodOrder`
--
ALTER TABLE `FoodOrder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `Gallery`
--
ALTER TABLE `Gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `LexinOrder`
--
ALTER TABLE `LexinOrder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `LexinTable`
--
ALTER TABLE `LexinTable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `LexinTableOrder`
--
ALTER TABLE `LexinTableOrder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `LogCat`
--
ALTER TABLE `LogCat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `LogOut`
--
ALTER TABLE `LogOut`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `Material`
--
ALTER TABLE `Material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Meal`
--
ALTER TABLE `Meal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `NormalUser`
--
ALTER TABLE `NormalUser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `Off`
--
ALTER TABLE `Off`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `PanelAlarm`
--
ALTER TABLE `PanelAlarm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `PanelMessage`
--
ALTER TABLE `PanelMessage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `PopularFood`
--
ALTER TABLE `PopularFood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `QrCode`
--
ALTER TABLE `QrCode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `RelCategoryRestaurant`
--
ALTER TABLE `RelCategoryRestaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `RelDeskLexinTable`
--
ALTER TABLE `RelDeskLexinTable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `RelFoodCategory`
--
ALTER TABLE `RelFoodCategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `RelFoodMaterial`
--
ALTER TABLE `RelFoodMaterial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `RelFoodMeal`
--
ALTER TABLE `RelFoodMeal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `RelFoodOff`
--
ALTER TABLE `RelFoodOff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `RelMealRestaurant`
--
ALTER TABLE `RelMealRestaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `RelNormalUserDiscount`
--
ALTER TABLE `RelNormalUserDiscount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `RelNormalUserReview`
--
ALTER TABLE `RelNormalUserReview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `RelRestaurantDeliverer`
--
ALTER TABLE `RelRestaurantDeliverer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Restaurant`
--
ALTER TABLE `Restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `RestaurantType`
--
ALTER TABLE `RestaurantType`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Review`
--
ALTER TABLE `Review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `StaffUser`
--
ALTER TABLE `StaffUser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Token`
--
ALTER TABLE `Token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
