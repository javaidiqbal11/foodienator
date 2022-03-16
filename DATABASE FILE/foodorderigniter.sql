-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2022 at 06:09 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorderigniter`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `email`, `date`) VALUES
(1, 'admin', '$2y$10$mI/hpZ59vGgjs/lPTQWLJu.I82O93AEJ3gwFycAjuibOjAGi9dcTm', 'admin123@gmail.com', '2022-03-09 16:24:50'),
(2, 'driver', 'driver', 'driver123@gmail.com', '2022-03-09 17:00:07');

-- --------------------------------------------------------

--
-- Table structure for table `dishesh`
--

CREATE TABLE `dishesh` (
  `d_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dishesh`
--

INSERT INTO `dishesh` (`d_id`, `r_id`, `name`, `about`, `price`, `img`) VALUES
(1, 0, 'Best Services worldwide', 'This is the best service which is facilitating peoples to deliver their parcels all over the globe instantly. Get the chance for winning prize bonds as well here.', 6, 'pic1.jpg'),
(2, 1, 'Flowers Parcel', 'This is the best service which is facilitating peoples to deliver their parcels all over the globe instantly. Get the chance for winning prize bonds as well here.', 9, 'pic2.jpg'),
(3, 3, 'Garments Parcels', 'This is the best service which is facilitating peoples to deliver their parcels all over the globe instantly. Get the chance for winning prize bonds as well here.', 4, 'pic3.jpg'),
(4, 2, 'Furniture Parcels', 'This is the best service which is facilitating peoples to deliver their parcels all over the globe instantly. Get the chance for winning prize bonds as well here.', 4, 'pic4.jpg'),
(5, 3, 'Electronics', 'This is the best service which is facilitating peoples to deliver their parcels all over the globe instantly. Get the chance for winning prize bonds as well here.', 10, 'pic5.jpg'),
(6, 1, 'Home Appliances', 'This is the best service which is facilitating peoples to deliver their parcels all over the globe instantly. Get the chance for winning prize bonds as well here.', 9, 'pic6.jpg'),
(7, 1, 'Home Decore', 'This is the best service which is facilitating peoples to deliver their parcels all over the globe instantly. Get the chance for winning prize bonds as well here.', 9, 'pic7.jpg'),
(8, 2, 'Office Products', 'This is the best service which is facilitating peoples to deliver their parcels all over the globe instantly. Get the chance for winning prize bonds as well here.', 11, 'pic8.jpg'),
(9, 3, 'Cleanliness Parcels', 'This is the best service which is facilitating peoples to deliver their parcels all over the globe instantly. Get the chance for winning prize bonds as well here.', 4, 'pic9.jpeg'),
(10, 6, 'Gifts', 'This is the best service which is facilitating peoples to deliver their parcels all over the globe instantly. Get the chance for winning prize bonds as well here.', 12, 'pic10.jpg'),
(11, 6, 'Fruits', 'This is the best service which is facilitating peoples to deliver their parcels all over the globe instantly. Get the chance for winning prize bonds as well here.', 7, 'curywurst.jpg'),
(12, 6, 'Steak au poivre', 'Steak au poivre or pepper steak is a French dish that consists of a steak, traditionally a filet mignon, coated with coarsely cracked peppercorns and then cooked. a steak that has had coarsely ground black pepper pressed into it before cooking, is served ', 10, 'stkkk.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `franchises`
--

CREATE TABLE `franchises` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `o_hr` varchar(50) NOT NULL,
  `c_hr` varchar(50) NOT NULL,
  `add` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `r_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `o_hr` varchar(255) NOT NULL,
  `c_hr` varchar(255) NOT NULL,
  `o_days` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`r_id`, `c_id`, `name`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `img`) VALUES
(1, 5, 'Giulia Store', 'gr69stro@gmail.com', '1-555-555-5555', 'giuliarestroo.com', '9am', '7pm', 'mon-fri selected', '1259  Wood Street t', 'hlmg.jpg'),
(2, 3, 'Vernice Store', 'vernic@gmail.com', '1-567-567-8888', 'foodvernick.com', '10am', '7pm', 'mon-sat', '1812  Fleming Street', 'TOWNSEND.jpg'),
(3, 4, 'Townsend Store', 'townsend@gmail.com', '1-333-222-7474', 'townsend.com', '8am', '8pm', 'mon-sat', '528  Veltri Drive', 'vrfnb.jpg'),
(4, 5, 'Artisan Store', 'grilltisan@gmail.com', '1-222-333-7878', 'artisanbargr.com', '11am', '8pm', 'mon-fri', '1659  Ritter Avenue', 'treehouserestr.jpg'),
(5, 6, 'Highland Store', 'contact@hlrt.com', '11555578522', 'highlandrestro.com', '9am', '8pm', '24hr-x7', '1547  Birch  Street', 'home-slide.jpg'),
(6, 6, 'Alchemist', 'alchems@gmail.com', '12454850000', 'alchemist.food', '10am', '8pm', 'mon-sat', '60  Trehafod Road', 'vrfnb.jpg'),
(7, 7, 'Treehouse Store', 'treehsr@gmail.com', '12457854101', 'treehouserestr.com', '8am', '7pm', 'mon-sat', '2902 Benson Park Drive', 'TOWNSEND.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`) VALUES
(2, 'First Order'),
(3, 'Fast Delivery'),
(4, 'Urgent'),
(5, 'Remotely'),
(6, 'Slowly'),
(7, 'Surprisingly');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`) VALUES
(20, 'leahp', 'Leah', 'Powell', 'leahp@gmail.com', '6540215700', '$2y$10$qUdthXhirk4/A./n2M3g1.cLMzG32i6zpHk5TsZSfq5D/JpnvidB6', '1114  Anmoore Road'),
(21, 'julie', 'Julie', 'Turner', 'julie@gmail.com', '6201254700', '$2y$10$lVo7.B89NHzx3UN/XHBmGOFoKIni95HaXNve2lciGPmNlBNhIz00S', '175  Gladwell Street'),
(22, 'robert', 'Robert', 'Garcia', 'robertgr@gmail.com', '8542124540', '$2y$10$K7cwOrUSXWWyzqM1PaIrSewLr.6xdFySk4DPWFENdAfNUFWB9BIRW', '2325  Brooke Street'),
(23, 'caroline', 'Caroline', 'Silva', 'carolinsi@gmail.com', '8540222320', '$2y$10$C2y0mZ.niJ1TfozEp15iG.ZLPJ23SHp9swR7sMzkZyF6JYRajFKDi', '1836  Rainbow Drive'),
(24, 'walker', 'John', 'Walker', 'john@gmail.com', '6012225470', '$2y$10$pl0kXL/4376t7les3MR5EeKVVZrGxTDzhNjCmqyzkjheeQs5zEJwG', '3791  Barnes Avenue'),
(25, 'jason', 'Jason', 'Anderson', 'jason@gmail.com', '8541212140', '$2y$10$kDGpBxWSICET3rzxvrGgXe.8mZB.04d.IqIz0DNQC.MCdd9kcIlv2', '4417  Clark Street'),
(26, 'plyler', 'Anastasia', 'Plyler', 'anastasia@gmail.com', '1245552120', '$2y$10$IpzK223xfacfCETSRR5uT.jNN/ClIP3r/vGInZQK9445UiPoz5RgW', '4685  Poling Farm Road'),
(27, 'michael', 'Michael', 'Holland', 'michael@gmail.com', '0540001470', '$2y$10$ihOEGdI6OCrQkBv1.I100uLe3rVtbJ6G1LcICuzJrCR7McLjTD71y', '79  Main St'),
(28, 'paige', 'Paige', 'Richardson', 'paigeri@gmail.com', '0254580002', '$2y$10$S87MjBD29LIXmtegDjxa7uiGNKqUiLoMiecJ9vIRxUU9fCtdnfavO', '110  Manor Way'),
(29, 'douglas', 'Eva', 'Douglas', 'evadoug@gmail.com', '3145800010', '$2y$10$KeoGCID6Z1Byt84B.lzSz.KB1uVYtTCz.DUGym4HuJeiQTg4MpT5S', '25 Ocean Street'),
(30, 'jayden', 'Jayden', 'Swadling', 'jayden@gmail.com', '3145210020', '$2y$10$G5tjFx15o76k78fAPudvUOovE.ubzQjkH51HcvF2zBukNTkV0t25G', '53 Ocean Street'),
(31, 'jessica', 'Jessica', 'Callum', 'jessum@gmail.com', '4521020010', '$2y$10$ZbHU6iGGm4Aeq/.cRWYp2eadhHK0h4sg6c4LIHbqdf1jnd1pybVC.', '73 Ocean Street'),
(32, 'carter', 'Brian', 'Carter', 'brianc@gmail.com', '6470002696', '$2y$10$bg1XbJ97GXaoHnG4OMkrDex5ybLWGEueKjFvUzvH1/kBtjR4NIp36', '2415  Walkers Ridge Way'),
(33, 'henry', 'Henry', 'Clark', 'henryc@gmail.com', '5402225000', '$2y$10$yKsf5a6TcTBHEflcfJDKnOu6Hfsw1QNok58uvrj7YWemzM2yMLNZC', '3017  Middleville Road'),
(35, 'abcde', 'a', 'b', 'abc@gmail.com', '8545457777', '$2y$10$2GBOvvpDI75yCa4KwHfQDum4mEb1pYXJKyJ66.pLaN35KDmOX/Z92', 'Lahore'),
(36, 'users', 'User', 'Test', 'user@gmail.com', '8545457777', '$2y$10$fluHNYkrA1Z2Wvi1qxI.x.VIR5//Hxl2WAOl5SaVYSjE76xWenwAu', 'United Arab Emirates');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `o_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `d_name` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `price` float NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `success-date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `r_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`o_id`, `u_id`, `d_id`, `d_name`, `quantity`, `price`, `status`, `date`, `success-date`, `r_id`) VALUES
(18, 18, 9, 'Maltesers Tiramisu', 1, 4, 'closed', '2021-05-16 18:01:05', '2021-05-16 16:02:09', 3),
(20, 19, 10, 'Arancini', 1, 12, NULL, '2021-05-17 12:01:04', '2021-05-17 06:16:04', 6),
(21, 21, 18, 'Chimichanga', 1, 9, 'in process', '2021-05-17 13:38:29', '2021-05-17 12:21:29', 2),
(22, 23, 16, 'Sesame Chicken', 3, 33, 'closed', '2021-05-17 14:19:58', '2021-05-17 12:30:47', 4),
(23, 24, 1, 'Grilled Cheese Sandwich', 2, 12, NULL, '2021-05-17 14:30:02', '2021-05-17 08:45:02', 1),
(24, 24, 20, 'Chop Suey', 1, 8, 'closed', '2021-05-17 14:30:02', '2021-05-17 14:32:49', 2),
(25, 31, 7, 'Spaghetti Carbonara', 1, 9, NULL, '2021-05-17 14:38:44', '2021-05-17 08:53:44', 1),
(27, 32, 21, 'PoBoy', 2, 10, 'in process', '2021-05-17 15:55:55', '2021-05-17 13:57:23', 5),
(28, 34, 8, 'Toasted Ravioli', 4, 44, 'rejected', '2021-05-17 16:22:34', '2021-05-17 14:31:36', 2),
(29, 34, 21, 'PoBoy', 2, 10, 'closed', '2021-05-17 16:22:34', '2021-05-17 14:32:07', 5),
(30, 34, 11, 'Currywurst', 7, 49, 'closed', '2021-05-17 16:22:34', '2021-05-17 14:32:42', 6),
(32, 34, 22, 'Reuben Sandwich', 3, 24, 'closed', '2021-05-17 16:31:02', '2021-05-17 14:32:38', 7),
(33, 36, 2, 'Turkey Fajitas', 1, 9, NULL, '2022-03-09 15:19:17', '2022-03-09 10:19:17', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `dishesh`
--
ALTER TABLE `dishesh`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dishesh`
--
ALTER TABLE `dishesh`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
