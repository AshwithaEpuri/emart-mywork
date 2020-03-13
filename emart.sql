-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2020 at 01:32 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emart`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill_details_table`
--

CREATE TABLE `bill_details_table` (
  `bill_details_id` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill_details_table`
--

INSERT INTO `bill_details_table` (`bill_details_id`, `bill_id`, `item_id`) VALUES
(754, 641, 501),
(755, 642, 505);

-- --------------------------------------------------------

--
-- Table structure for table `bill_table`
--

CREATE TABLE `bill_table` (
  `bill_id` int(20) NOT NULL,
  `buyer_id` int(30) NOT NULL,
  `bill_type` varchar(50) NOT NULL,
  `bill_date` date NOT NULL,
  `bill_remark` varchar(25) NOT NULL,
  `bill_amount` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill_table`
--

INSERT INTO `bill_table` (`bill_id`, `buyer_id`, `bill_type`, `bill_date`, `bill_remark`, `bill_amount`) VALUES
(641, 201, 'Debit', '2020-03-13', 'paid', 25000),
(642, 201, 'Debit', '2020-03-13', 'paid', 25000);

-- --------------------------------------------------------

--
-- Table structure for table `buyers_signup_table`
--

CREATE TABLE `buyers_signup_table` (
  `buyer_id` int(30) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyers_signup_table`
--

INSERT INTO `buyers_signup_table` (`buyer_id`, `username`, `password`, `email`, `mobile`, `date`) VALUES
(201, 'Ashwitha', '1234', 'ashwitha@gmail.com', 163258741, '2020-01-15'),
(202, 'Sana', '1234', 'sana@gmail.com', 195623412, '2019-08-06'),
(203, 'Navya', '1234', 'navya@gmail.com', 9652058528, '2020-03-11'),
(204, 'abc', 'abc', 'ABC@GMAIL.COM', 8639207332, '2020-03-11'),
(205, 'abc', 'abc', 'ABC@GMAIL.COM', 8639207332, '2020-03-11');

-- --------------------------------------------------------

--
-- Table structure for table `category_table`
--

CREATE TABLE `category_table` (
  `category_id` int(20) NOT NULL,
  `category_name` varchar(30) NOT NULL,
  `category_brief` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_table`
--

INSERT INTO `category_table` (`category_id`, `category_name`, `category_brief`) VALUES
(301, 'Electronics', 'good'),
(302, 'Clothes', 'good'),
(303, 'Mobile', 'Varieties of mobiles like Samusung,vivo etc.');

-- --------------------------------------------------------

--
-- Table structure for table `item_table`
--

CREATE TABLE `item_table` (
  `item_id` int(20) NOT NULL,
  `item_name` varchar(30) NOT NULL,
  `item_image` varchar(400) NOT NULL,
  `item_price` int(200) NOT NULL,
  `item_stock` int(100) NOT NULL,
  `item_description` varchar(100) NOT NULL,
  `subcategory_id` int(20) NOT NULL,
  `item_remark` varchar(50) NOT NULL,
  `seller_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_table`
--

INSERT INTO `item_table` (`item_id`, `item_name`, `item_image`, `item_price`, `item_stock`, `item_description`, `subcategory_id`, `item_remark`, `seller_id`) VALUES
(501, 'Sony', 'https://static.toiimg.com/photo/54149286/Sony-BRAVIA-KLV-40R352D-40-inch-LED-Full-HD-TV.jpg', 25000, 5, 'sony', 401, 'no', 101),
(502, 'Jeans', 'https://5.imimg.com/data5/VB/KU/MY-30778083/designer-mens-jeans-500x500.jpg', 6000, 5, 'jeans ', 402, 'no', 102),
(503, 'samsung 6.2kg', 'https://ksassets.timeincuk.net/wp/uploads/sites/54/2014/11/WW9000-Hero-1280-1.jpg', 30000, 2, 'LG 6Kg ', 404, 'good', 101),
(504, 'Bosch 6kg', 'https://ksassets.timeincuk.net/wp/uploads/sites/54/2016/03/samsung-ww80k6414qw-6.jpg', 35000, 2, 'Bosch 7kg', 404, 'good', 101),
(505, 'MI LED TV 4A', 'https://images.unsplash.com/photo-1461151304267-38535e780c79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=890&q=80', 25000, 2, 'MI LED TV', 401, 'good', 101),
(506, 'LG LED TV 4', 'https://images.assetsdelivery.com/compings_v2/alexandrbognat/alexandrbognat1606/alexandrbognat160600019.jpg', 30000, 2, 'LG Electronics', 401, 'good', 101),
(507, 'Redmi note8', 'https://1.bp.blogspot.com/-6kEMrigfxWE/XTyIRZA5wCI/AAAAAAAABUA/0g-RSz4N4eA-gX6oK7u7YKC4VeUpvT3UgCLcBGAs/s1600/tinh-khuong-szsINGSdrBs-unsplash.jpg', 12000, 2, 'Redmi Phones', 405, 'good', 101),
(508, 'vivo Y 83', 'https://images.unsplash.com/photo-1553034197-73b37e54f5e9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 20000, 2, 'vivo', 405, 'good', 102),
(509, 'Full Sleeve Blazer', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRy5N0K4N8KylI8uWCkD-SozJlHRgKaYkN_om-677_LkAlkNqOz', 12000, 2, 'Blazers', 402, 'good', 102),
(510, 'Bandhani Sarees', 'https://images-na.ssl-images-amazon.com/images/I/91-NNTAE%2BeL.png', 2000, 3, 'Sarees', 406, 'good', 102),
(511, 'Adidas Shoe', 'https://images.unsplash.com/photo-1460353581641-37baddab0fa2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 3000, 2, 'shoes', 402, 'good', 102),
(512, 'Batas shirts', 'https://ik.imagekit.io/overdose/3wisemen//wysiwyg/Navigation-Blocks/Shirts_SeptemberNEW.png', 4000, 2, 'Shirts', 402, 'good', 102);

-- --------------------------------------------------------

--
-- Table structure for table `seller_signup_table`
--

CREATE TABLE `seller_signup_table` (
  `seller_id` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `company` varchar(40) NOT NULL,
  `brief` varchar(40) NOT NULL,
  `gst` int(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` int(10) NOT NULL,
  `website` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller_signup_table`
--

INSERT INTO `seller_signup_table` (`seller_id`, `username`, `password`, `company`, `brief`, `gst`, `address`, `email`, `contact`, `website`) VALUES
(101, 'Gayathri', '1234', 'abc', 'very good prodcts', 6, 'chennai', 'gayathri@gmail.com', 196633225, 'www.abc.com'),
(102, 'Shanthi', '1234', 'cba', 'Best Products', 5, 'chennai', 'shanthi@gmail.com', 196655223, 'www.cba.com');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory_table`
--

CREATE TABLE `subcategory_table` (
  `subcategory_id` int(20) NOT NULL,
  `subcategory_name` varchar(30) NOT NULL,
  `category_id` int(20) NOT NULL,
  `subcategory_brief` varchar(30) NOT NULL,
  `subcategory_gst` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategory_table`
--

INSERT INTO `subcategory_table` (`subcategory_id`, `subcategory_name`, `category_id`, `subcategory_brief`, `subcategory_gst`) VALUES
(401, 'TV', 301, 'gd', 4),
(402, 'Men\'s Wear', 302, 'gd', 4),
(403, 'Winter Wear', 302, 'Winter wear to product cold', 2),
(404, 'Washing Machine', 301, 'A washing machine is a machine', 2),
(405, 'Smart phones', 303, 'Smart phones to pick photes', 2),
(406, 'Women\'s wear', 302, 'sarees like cotton,slik', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill_details_table`
--
ALTER TABLE `bill_details_table`
  ADD PRIMARY KEY (`bill_details_id`),
  ADD KEY `bill_id` (`bill_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `bill_table`
--
ALTER TABLE `bill_table`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `buyer_id` (`buyer_id`);

--
-- Indexes for table `buyers_signup_table`
--
ALTER TABLE `buyers_signup_table`
  ADD PRIMARY KEY (`buyer_id`);

--
-- Indexes for table `category_table`
--
ALTER TABLE `category_table`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `item_table`
--
ALTER TABLE `item_table`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `subcategory_id` (`subcategory_id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `seller_signup_table`
--
ALTER TABLE `seller_signup_table`
  ADD PRIMARY KEY (`seller_id`);

--
-- Indexes for table `subcategory_table`
--
ALTER TABLE `subcategory_table`
  ADD PRIMARY KEY (`subcategory_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill_details_table`
--
ALTER TABLE `bill_details_table`
  MODIFY `bill_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=756;

--
-- AUTO_INCREMENT for table `bill_table`
--
ALTER TABLE `bill_table`
  MODIFY `bill_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=643;

--
-- AUTO_INCREMENT for table `buyers_signup_table`
--
ALTER TABLE `buyers_signup_table`
  MODIFY `buyer_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `category_table`
--
ALTER TABLE `category_table`
  MODIFY `category_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT for table `item_table`
--
ALTER TABLE `item_table`
  MODIFY `item_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=516;

--
-- AUTO_INCREMENT for table `seller_signup_table`
--
ALTER TABLE `seller_signup_table`
  MODIFY `seller_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `subcategory_table`
--
ALTER TABLE `subcategory_table`
  MODIFY `subcategory_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=407;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill_details_table`
--
ALTER TABLE `bill_details_table`
  ADD CONSTRAINT `bill_details_table_ibfk_1` FOREIGN KEY (`bill_id`) REFERENCES `bill_table` (`bill_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bill_details_table_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `item_table` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bill_table`
--
ALTER TABLE `bill_table`
  ADD CONSTRAINT `bill_table_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `buyers_signup_table` (`buyer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item_table`
--
ALTER TABLE `item_table`
  ADD CONSTRAINT `item_table_ibfk_1` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategory_table` (`subcategory_id`),
  ADD CONSTRAINT `item_table_ibfk_2` FOREIGN KEY (`seller_id`) REFERENCES `seller_signup_table` (`seller_id`);

--
-- Constraints for table `subcategory_table`
--
ALTER TABLE `subcategory_table`
  ADD CONSTRAINT `subcategory_table_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_table` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
