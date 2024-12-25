-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 25, 2024 lúc 02:58 PM
-- Phiên bản máy phục vụ: 5.7.31
-- Phiên bản PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--

--
CREATE DATABASE IF NOT EXISTS `database` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `database`;
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about`
--

DROP TABLE IF EXISTS `about`;
CREATE TABLE IF NOT EXISTS `about` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `about`
--

INSERT INTO `about` (`id`, `title`, `content`, `image`) VALUES
(10, 'About Us', '<div id=\"pgc-w5d0dcc3394ac1-0-0\" class=\"panel-grid-cell\">\r\n<div id=\"panel-w5d0dcc3394ac1-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\">\r\n<div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\r\n<div class=\"siteorigin-widget-tinymce textwidget\">\r\n<p class=\"text_all_p_tag_css\">Welcome to our project! We are a dedicated team of three passionate individuals: Pham Minh Tu, Nguyen Van Chi, and Mai Dinh Tuan Dat, currently working on an exciting software technology project. Our work is being guided by the experienced Dr. Dao Duy Tuan, whose expertise has been invaluable in shaping our approach.</p>\r\n<p class=\"text_all_p_tag_css\">Our project aims to provide up-to-date and accurate real estate information about the city of Da Nang to the local community. With a growing demand for transparent and accessible property data, we are developing a platform to help residents easily access details about real estate opportunities, trends, and available properties within Da Nang.</p>\r\n<div id=\"pgc-w5d0dcc3394ac1-0-0\" class=\"panel-grid-cell\">\r\n<div id=\"panel-w5d0dcc3394ac1-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\">\r\n<div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\r\n<div class=\"siteorigin-widget-tinymce textwidget\">\r\n<p class=\"text_all_p_tag_css\">Our team is committed to pushing the boundaries of technology to provide a seamless user experience. As we continue to expand and improve this platform, we plan to introduce even more features to benefit both potential property buyers and sellers in Da Nang, helping them make informed decisions in the real estate market.</p>\r\n<p class=\"text_all_p_tag_css\">Thank you for visiting, and we hope our project can contribute to enhancing the real estate landscape of Da Nang for everyone. Stay tuned as we develop and refine this platform with your needs in mind!</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'condos-pool.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `auser` varchar(50) NOT NULL,
  `aemail` varchar(50) NOT NULL,
  `apass` varchar(50) NOT NULL,
  `adob` date NOT NULL,
  `aphone` varchar(15) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`aid`, `auser`, `aemail`, `apass`, `adob`, `aphone`) VALUES
(2, 'disha', 'disha@gmail.com', 'disha', '1999-02-02', '9689689698'),
(6, 'final', 'final@gmail.com', 'final', '2020-04-29', '7979656578'),
(7, 'test', 'test@gmail.com', 'test', '2020-04-29', '8997979765'),
(8, 'check', 'check@gmail.com', 'check', '2020-04-29', '8979785688'),
(9, 'admin', 'admin@gmail.com', 'admin', '1999-12-06', '9878786545');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `cid` int(50) NOT NULL AUTO_INCREMENT,
  `cname` varchar(100) NOT NULL,
  `sid` int(50) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `city`
--

INSERT INTO `city` (`cid`, `cname`, `sid`) VALUES
(9, 'navi mumbai', 3),
(10, 'vapi', 2),
(11, 'valsad', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `cid` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(250) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`cid`, `name`, `email`, `phone`, `subject`, `message`) VALUES
(2, 'demo', 'demo@gmail.com', '9765989689', 'demo', 'demo'),
(4, 'test', 'test@gmail.com', '7976976979', 'test', 'test'),
(5, 'final', 'final@gmail.com', '7697967967', 'final', 'final'),
(6, 'disha', 'disha@gmail.com', '7898797696', 'demo', 'demo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `fdescription` varchar(300) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`fid`, `uid`, `fdescription`, `status`, `date`) VALUES
(1, 26, 'fdg', 0, '2024-12-24 02:42:59'),
(2, 24, 'test', 0, '2024-12-25 07:02:48'),
(3, 24, 'test', 0, '2024-12-25 07:02:57'),
(4, 24, 'rrr', 0, '2024-12-25 07:03:10'),
(5, 24, 'rrr', 0, '2024-12-25 07:12:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `property`
--

DROP TABLE IF EXISTS `property`;
CREATE TABLE IF NOT EXISTS `property` (
  `pid` int(50) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `pcontent` longtext NOT NULL,
  `type` varchar(100) NOT NULL,
  `bhk` varchar(50) NOT NULL,
  `stype` varchar(100) NOT NULL,
  `bedroom` int(50) NOT NULL,
  `bathroom` int(50) NOT NULL,
  `balcony` int(50) NOT NULL,
  `kitchen` int(50) NOT NULL,
  `hall` int(50) NOT NULL,
  `floor` varchar(50) NOT NULL,
  `size` int(50) NOT NULL,
  `price` int(50) NOT NULL,
  `location` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `feature` longtext NOT NULL,
  `pimage` varchar(300) NOT NULL,
  `pimage1` varchar(300) NOT NULL,
  `pimage2` varchar(300) NOT NULL,
  `pimage3` varchar(300) NOT NULL,
  `pimage4` varchar(300) NOT NULL,
  `uid` int(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `mapimage` varchar(300) NOT NULL,
  `topmapimage` varchar(300) NOT NULL,
  `groundmapimage` varchar(300) NOT NULL,
  `totalfloor` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `property`
--

INSERT INTO `property` (`pid`, `title`, `pcontent`, `type`, `bhk`, `stype`, `bedroom`, `bathroom`, `balcony`, `kitchen`, `hall`, `floor`, `size`, `price`, `location`, `city`, `state`, `feature`, `pimage`, `pimage1`, `pimage2`, `pimage3`, `pimage4`, `uid`, `status`, `mapimage`, `topmapimage`, `groundmapimage`, `totalfloor`, `date`) VALUES
(11, 'Ground floor of a house for rent in An Thuong', '<p>Fully furnished office space in a prime business district;</p>', 'office', '2 BHK', 'sale', 1, 2, 3, 1, 1, 'Ground Floor', 200, 80000, 'An Thuong', 'Da Nang', 'My An, Da Nang', '<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>No</li>\r\n													\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n													</ul>\r\n													</div>\r\n													<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Office</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n													\r\n													</ul>\r\n													</div>\r\n													<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>No</li>\r\n													</ul>\r\n													</div>', '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 15, 'sold out', '', '', '', '', '2020-04-03 00:28:14'),
(13, 'Cozy Studio Apartment in Han River View', '1 Bedroom Condo for rent in Phuoc Ninh, Da Nang\r\nApartment for rent in the heart of Da Nang city, 500m from Han river\r\nLocated near the Dragon Bridge and Han River Bridge. Suitable for stay and working in Da Nang\r\nDesigned by Studio style, fully equipped, ready to move in.', 'apartment', '2 BHK', 'sale', 3, 2, 2, 1, 1, '4th Floor', 300, 30000, 'Han River ', 'Da Nang', 'Hai Chau', '<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>No</li>\r\n													\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n													</ul>\r\n													</div>\r\n													<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n													\r\n													</ul>\r\n													</div>\r\n													<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>No</li>\r\n													</ul>\r\n													</div>', 'a1.jpg', 'a2.jpg', 'a3.jpg', 'a4.jpg', 'a5.jpg', 16, 'available', '', '', '', '', '2020-04-03 00:28:14'),
(14, 'Spacious Family House in Ngu Hanh Son', '<p>Comfortable 4-bedroom house with a garden and garage;</p>', 'house', '3 BHK', 'rent', 3, 2, 2, 1, 1, '2nd Floor', 200, 100000, 'Khue My', 'Da Nang ', 'Ngu Hanh Son', '<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>No</li>\r\n													\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n													</ul>\r\n													</div>\r\n													<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>House</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n													\r\n													</ul>\r\n													</div>\r\n													<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>No</li>\r\n													</ul>\r\n													</div>', 'a.jpg', 'b.jpg', 'c.jpg', 'd.jpg', 'e.jpg', 15, 'available', '', '', '', '', '2020-04-03 00:40:48'),
(15, 'Short-term Rental Studio Apartment ', '<p>Modern studio apartment, perfect for travelers;</p>', 'Apartments', '2 BHK', 'rent', 2, 2, 1, 1, 1, '2nd Floor', 1500, 4150, 'My An', 'Da Nang ', 'Da Nang', '<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>No</li>\r\n													\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n													</ul>\r\n													</div>\r\n													<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n													\r\n													</ul>\r\n													</div>\r\n													<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>No</li>\r\n													</ul>\r\n													</div>', 'f1.jpg', 'f2.jpg', 'f3.jpg', 'f4.jpg', 'f5.jpg', 15, 'available', '', '', '', '', '2020-04-03 14:45:49'),
(17, 'Townhouse Near City Center', '<p>Modern townhouse, convenient location, close to amenities.</p>', 'townhouse', '2 BHK', 'rent', 2, 2, 1, 1, 1, '2nd Floor', 1500, 1550000, 'Hai Chau', 'Da Nang', 'Da Nang', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Temple : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>No</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'b1.jpg', 'b2.jpg', 'b3.jpg', 'b4.jpg', 'b5.jpg', 21, 'available', 'mb.jpg', '', '', '', '2020-04-03 17:47:40'),
(18, 'Luxurious Beachfront Villa with Ocean View', '<p>Elegant villa, prime location, stunning ocean view.</p>', 'villa', '2 BHK', 'sale', 3, 3, 2, 1, 2, '1st Floor', 300, 300000, 'Le Manh Trinh', 'Da Nang', 'Ngu Hanh Son', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Temple : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'e1.jpg', 'e2.jpg', 'e3.jpg', 'e4.jpg', 'e5.jpg', 21, 'available', '', '', '', '', '2020-04-03 17:54:06'),
(19, 'Modern Beachfront Condominium', '<p>Luxurious beachfront condominium with stunning ocean views and resort-style amenities.;</p>', 'condominium', '2 BHK', 'sale', 2, 2, 1, 1, 1, '3rd Floor', 1250, 142000, 'Non Nuoc Beach', 'Da Nang ', 'Da Nang ', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Condominium</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Temple : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'c1.jpg', 'c2.jpg', 'c3.jpg', 'c4.jpg', 'c5.jpg', 15, 'available', 'house-floor-plan.png', '', '', '', '2020-04-03 20:12:38'),
(20, 'Spacious Family Home in a Quiet Neighborhood', '<p>Comfortable 4-bedroom house in a peaceful residential area.</p>', 'house', '1,2 BHK', 'rent', 2, 2, 1, 1, 1, '2th Floor', 200, 30000, 'Hoa Khanh, Da Nang', 'Da Nang ', 'Hoa Khanh ', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>3 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>8 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Temple : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>No</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'd1.jpg', 'd2.jpg', 'd3.jpg', 'd4.jpg', 'd5.jpg', 15, 'available', 'floor.jpg', 'basement.jpg', 'ground.jpg', '12 Floor', '2020-04-03 20:30:34'),
(22, 'DaNang Penthouse Sea View', '<p>Exclusive penthouse with breathtaking city views and top-notch amenities.</p>', 'penthouse', '3 BHK', 'sale', 3, 2, 1, 1, 1, 'Full Floor', 1950, 450000, 'Phuoc My ', 'Da Nang', 'Son Tra', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Penthouse</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Temple : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'p1.jpg', 'p2.jpg', 'p3.jpg', 'p4.jpg', 'p5.jpg', 16, 'sold out', 'm13.jpg', 't13.jpg', 'g13.jpg', '2 Floor', '2020-04-04 01:38:36'),
(23, 'Dat', '<p>chip&nbsp;</p>', 'appartment', '1 BHK', 'rent', 3, 3, 3, 3, 3, '3rd Floor', 6547, 37567, 'Da Nang', 'Da Nang', 'Lien Chieu', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Temple : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', '3YNwheq.jpg', '56277_1920x1200-435922.jpg', '84323_1920x1080-2122592.jpg', '84323_1920x1080-2122592.jpg', '56277_1920x1200-435922.jpg', 26, 'available', '84323_1920x1080-2122592.jpg', '84323_1920x1080-2122592.jpg', '84323_1920x1080-2122592.jpg', '4 Floor', '2024-12-24 09:06:51'),
(24, 'NhÃ  nguyÃªn cÄƒn ', '<p>kh&ocirc;ng b&aacute;n&nbsp;</p>', 'house', '3 BHK', 'rent', 1, 3, 1, 3, 1, '1st Floor', 200, 33000, 'Bach Khoa', 'Da Nang', 'Lien Chieu', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Temple : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'bkdn.jpg', 'punpun.webp', '3YNwheq.jpg', 'wp2436094.webp', '56277_1920x1200-435922.jpg', 14, 'available', 'bkdn.jpg', '84323_1920x1080-2122592.jpg', 'Hoa-Dao-Vector-0048.jpg', '1 Floor', '2024-12-24 21:15:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `state`
--

DROP TABLE IF EXISTS `state`;
CREATE TABLE IF NOT EXISTS `state` (
  `sid` int(50) NOT NULL AUTO_INCREMENT,
  `sname` varchar(100) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `state`
--

INSERT INTO `state` (`sid`, `sname`) VALUES
(2, 'gujarat'),
(3, 'goa'),
(4, 'maharashtra'),
(7, 'bihar'),
(9, 'chhattisgarh'),
(10, 'uttar pardesh'),
(15, 'rajasthan');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `uid` int(50) NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) NOT NULL,
  `uemail` varchar(100) NOT NULL,
  `uphone` varchar(20) NOT NULL,
  `upass` varchar(50) NOT NULL,
  `utype` varchar(50) NOT NULL,
  `uimage` varchar(300) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`uid`, `uname`, `uemail`, `uphone`, `upass`, `utype`, `uimage`) VALUES
(14, 'admin', 'admin@gmail.com', '9876543210', 'admin', 'user', '3.jpg'),
(15, 'aryan', 'aryan@gmail.com', '9878678678', 'aryan', 'agent', '2.jpg'),
(16, 'demo', 'demo@gmail.com', '7976976979', 'demo', 'user', '1.jpg'),
(21, 'disha', 'disha@gmail.com', '7976956956', 'disha', 'agent', '2.jpg'),
(22, 'disha', 'disha1@gmail.com', '8997897869', 'disha', 'agent', '1.jpg'),
(23, 'testing', 'testing@gmail.com', '9869596597', 'testing', 'builder', '1.jpg'),
(24, 'some', 'some@gmail.com', '9689698697', 'some', 'builder', '3.jpg'),
(25, 'test', 'test12@gmail.com', '9798678969', 'test', 'builder', 'avatar-3.jpg'),
(26, 'test', 'maidinhtuandat@gmail.com', '0868468043', 'dat123', 'user', '466979631_2094251210978129_8634182344286039751_n.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
