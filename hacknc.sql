-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2016 at 09:39 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hacknc`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `merchant_id` varchar(50) NOT NULL,
  `product_cost` decimal(10,0) NOT NULL,
  `image_url` varchar(1000) NOT NULL,
  `expiry_date` date NOT NULL,
  `discount` decimal(10,0) NOT NULL,
  `lat` varchar(50) NOT NULL COMMENT 'latitude',
  `lng` varchar(50) NOT NULL,
  `merchant_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `merchant_id`, `product_cost`, `image_url`, `expiry_date`, `discount`, `lat`, `lng`, `merchant_name`) VALUES
(1, '57cf75cea73e494d8675ec49', '6', 'https://www.dunkindonuts.com/content/dunkindonuts/en/menu/beverages/icedbeverages/coffee0/iced_coffee/_jcr_content/block/image.img.jpg/1443411579820.jpg', '2016-12-31', '10', '35.909', '-79.046', 'Dunkin'),
(2, '57cf75cea73e494d8675ec49', '5', 'http://67.media.tumblr.com/b065227bc85f890539e80179e97ea416/tumblr_inline_ndib2s00281sddugn.jpg', '2017-10-27', '25', '35.909', '-79.046', 'Dunkin'),
(3, '57cf75cea73e494d8675ec49', '15', 'http://www.allcateringmenuprices.com/wp-content/uploads/2015/10/dunkin-donuts-catering-menu-prices-e1445718664559.jpg', '2017-10-12', '15', '35.909', '-79.046', 'Dunkin'),
(4, '57cf75cea73e494d8675ec4a', '110', 'http://ep.yimg.com/ay/yhst-46908357234968/student-study-desk-with-side-drawers-white-1.jpg', '2016-12-31', '30', '35.909', '-79.046', 'Pastimes Antiques'),
(5, '57cf75cea73e494d8675ec4a', '55', 'https://ak1.ostkcdn.com/images/products/10359797/P17467721.jpg', '2016-12-31', '30', '35.909', '-79.046', 'Pastimes Antiques'),
(6, '57cf75cea73e494d8675ec4a', '215', 'http://dreamtechmodels.com/wp-content/uploads/2016/09/office-desk-with-bookcase-and-shelving-home-design-ideas-in-oak-office-bookcase-oak-bookcases-a-great-item-to-add-to-your-office.jpg', '2016-11-26', '25', '35.909', '-79.046', 'Pastimes Antiques'),
(7, '57cf75cea73e494d8675ec4b', '18', 'http://cdn1.tmbi.com/TOH/Images/Photos/37/300x300/exps39334_SCSC2049313C09_14_1bC.jpg', '2016-11-11', '15', '35.909', '-79.046', 'Ithaca Farmers'' Market'),
(8, '57cf75cea73e494d8675ec4b', '35', 'http://2.bp.blogspot.com/-khJsnVcaxdQ/Ti7-T2wYcZI/AAAAAAAAAfk/uoKkPDlCdEY/s1600/IMG_1134.JPG', '2016-11-26', '20', '35.909', '-79.046', 'Ithaca Farmers'' Market'),
(9, '57cf75cea73e494d8675ec58', '49', 'http://www.adazing.com/wp-content/uploads/2013/03/LOTR111.jpg', '2016-11-15', '55', '35.909', '-79.046', 'The Bookery'),
(10, '57cf75cea73e494d8675ec58', '35', 'http://ecx.images-amazon.com/images/I/51oHUvYzbsL.jpg', '2016-11-11', '35', '35.909', '-79.046', 'The Bookery'),
(11, '57cf75cea73e494d8675ec58', '55', 'http://static.fnac-static.com/multimedia/Images/FR/NR/78/6a/66/6711928/1540-1.jpg', '2016-11-15', '47', '35.909', '-79.046', 'The Bookery');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `password`, `address`) VALUES
(1, 'vinayak', 'ECC0CA2BD63858D4881AC1676408E088E42B62F0', 'grove crest ln charlotte 28262'),
(2, 'sridevi', '8363E6BA31850AE08BC1970073559EBC6EAF6D4B', 'kittenset dr charlotte 28262'),
(3, 'sushma', '86B12D137B0113CB1E33A59DA1B6971D2C11C559', 'university terrace drive 28269'),
(4, 'himanshu', 'C016F85C06C121220804903DB934442950EE1C74', 'kittanset dr charlotte 28262');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
